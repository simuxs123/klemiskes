<?php

namespace App\Mail;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Query extends Mailable
{
    use Queueable, SerializesModels;
    

    public $magija;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($magija)
    {
        $this->magija = $magija;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $test = $this->magija;
        // dd($test);
        // $data = [
        //     'name' => $request->name,
        //     'email' => $request->email,
        //     'asd' => $request->query
        // ];
        // dd($request);
        return $this->from($test['email'])->markdown('email.success')->with('test', $test);
    }
}
