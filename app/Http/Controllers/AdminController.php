<?php

namespace App\Http\Controllers;

use App\Namas;
use Illuminate\Http\Request;
use App\User;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return redirect()->route('admin-namas', ['id' => 1]);
    }


    //control panel visi daugiabucio butai dinamiskai

    public function editNamoButai($id) //???
    {
        $namas = Namas::where('namo_id', $id)->get();
        return view('admin.namu-info', compact('namas'));
    }

    //control panel visu daugiabuciu duomenu update dinamiskai

    public function update(Request $request, $namasId, $butasId)
    {
        Namas::where('namo_id', $namasId)->where('buto_id', $butasId)->update(
            ['plotas' => request('plotas'),
                'kambariai' => request('kambariai'),
                'kaina' => request('kaina'),
                'apdaila' => request('apdaila'),
                'kryptis' => request('kryptis')
            ]);
        return redirect()->back();
    }


    //control panel visu daugiabuciu butu statuso keitimas dinamiskai

    public function updateStatus(Request $request)
    {
        $parduotas = Namas::where('namo_id', $request->namasId)->where('buto_id', $request->butasId)->first();
        switch ($request->pavadinimas) {
            case 'parduotas':
                $parduotas->statusas = 1;
                break;
            case 'rezervuotas':
                $parduotas->statusas = 2;
                break;
            case 'laisvas':
                $parduotas->statusas = 0;
                break;
        }
        $parduotas->save();
        return redirect()->back();

    }
}


