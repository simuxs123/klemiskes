<?php

namespace App\Http\Controllers;

use App;
use Illuminate\Http\Request;
use App\Mail\Query;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use App\Mail;
use Session;

class MailController extends Controller
{
	 protected $rules =
        [
            'name' => 'required|max:100|regex:/^[a-z ,.\'-]+$/i',
            'email' => 'required|email|max:255',
            'telnumber' => 'required|max:50',
            'question' => 'max:2000'
        ];

    public function kontaktai()
    {
        return view('layouts.kontaktai');
    }    


    public function sendmail(Request $request)
    {

    	$validator = Validator::make(Input::all(), $this->rules);
        if ($validator->fails()) {
            return Response::json(array('errors' => $validator->getMessageBag()->toArray()));
        } else {
            $data = $request->all();
            $mail = App\Mail::create([
                'name' => $data['name'],
                'tel' => $data['telnumber'],
                'email' => $data['email'],
                'text' => $data['question'],
            ]);
            $magija = array(
            'name' => $request->name,
            'tel' => $request->telnumber,
            'email' => $request->email,
            'text' => $request->question,
            );
            // dd($mail);
            $emailTo = Config::get('mail.from.address');
            \Mail::to($emailTo)->send(new Query($magija));
            return response()->json($magija);
        } 

        Session::flash('success', 'ačiū už jūsų užklausą, pasistengsime atsakyti kuo greičiau');           

    }
}
