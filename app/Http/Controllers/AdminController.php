<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kotedzai;
use App\Pirmasa;
use App\Pirmasb;
use App\Pirmasc;
use App\Antrasa;
use App\Antrasb;
use App\Antrasc;
use App\Treciasa;
use App\Treciasb;
use App\Treciasc;
use App\Ketvirtasa;
use App\Ketvirtasb;
use App\Ketvirtasc;
use Auth;
use App\User;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
    	if(Auth::check()) {
            return view('admin.admin');
        }else{
            return redirect('/login');
        }
    }

    //control panel visi kotedzai

    public function editkotedzai()
    {
    	$kotedzai = Kotedzai::all();

        

    	return view('admin.cpkotedzai', compact('kotedzai'));
    }

    public function updatekotedzai(Request $request, $id)
    {
        $kotedzas = Kotedzai::find($id);
        // dd($kotedzas);

        $kotedzas->plotas = $request->plotas;
        $kotedzas->kambariai = $request->kambariai;
        $kotedzas->kaina = $request->kaina;
        $kotedzas->apdaila = $request->apdaila;
        $kotedzas->save();

        return redirect()->back();

        
    }

    //control panel kotedzu keitimas i parduotus

    public function kotedzasp(Request $request)
    {
         $parduotas = Kotedzai::find( $request->kotedzas);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel kotedzu keitimas i rezervuotus

    public function kotedzasr(Request $request)
    {
         $rez = Kotedzai::find( $request->kotedzas);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel kotedzu keitimas i laisvus

    public function kotedzasl(Request $request)
    {
         $laisvas = Kotedzai::find( $request->kotedzas);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel visi pirmo daugiabucio butai

    public function editpirmas()
    {
        
    	$pirmo1 = Pirmasa::all();

    	$pirmo2 = Pirmasb::all();

    	$pirmo3 = Pirmasc::all();

    	return view('admin.cppirmas', compact('pirmo1', 'pirmo2', 'pirmo3'));
    }

    public function updatepirmasa(Request $request, $id)
    {
        $pirmasa = Pirmasa::find($id);
        // dd($kotedzas);

        $pirmasa->plotas = $request->plotas;
        $pirmasa->kambariai = $request->kambariai;
        $pirmasa->kaina = $request->kaina;
        $pirmasa->apdaila = $request->apdaila;
        $pirmasa->kryptis = $request->kryptis;
        $pirmasa->save();

        return redirect()->back();
    }

    public function updatepirmasb(Request $request, $id)
    {
        $pirmasb = Pirmasb::find($id);
        // dd($kotedzas);

        $pirmasb->plotas = $request->plotas;
        $pirmasb->kambariai = $request->kambariai;
        $pirmasb->kaina = $request->kaina;
        $pirmasb->apdaila = $request->apdaila;
        $pirmasb->kryptis = $request->kryptis;
        $pirmasb->save();

        return redirect()->back();
    }

    public function updatepirmasc(Request $request, $id)
    {
        $pirmasc = Pirmasc::find($id);
        // dd($kotedzas);

        $pirmasc->plotas = $request->plotas;
        $pirmasc->kambariai = $request->kambariai;
        $pirmasc->kaina = $request->kaina;
        $pirmasc->apdaila = $request->apdaila;
        $pirmasc->kryptis = $request->kryptis;
        $pirmasc->save();

        return redirect()->back();
    }

    //control panel 1 daugiabucio 1 auksto keitimas i parduotus

    public function pirmasap(Request $request)
    {
         $parduotas = Pirmasa::find( $request->pirmasa);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 1 daugiabucio 1 auksto keitimas i rezervuotus

    public function pirmasar(Request $request)
    {
         $rez = Pirmasa::find( $request->pirmasa);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 1 daugiabucio 1 auksto keitimas i laisvus

    public function pirmasal(Request $request)
    {
         $laisvas = Pirmasa::find( $request->pirmasa);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 1 daugiabucio 2 auksto keitimas i parduotus

    public function pirmasbp(Request $request)
    {
         $parduotas = Pirmasb::find($request->pirmasb);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 1 daugiabucio 2 auksto keitimas i rezervuotus

    public function pirmasbr(Request $request)
    {
         $rez = Pirmasb::find( $request->pirmasb);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 1 daugiabucio 2 auksto keitimas i laisvus

    public function pirmasbl(Request $request)
    {
         $laisvas = Pirmasb::find( $request->pirmasb);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 1 daugiabucio 3 auksto keitimas i parduotus

    public function pirmascp(Request $request)
    {
         $parduotas = Pirmasc::find( $request->pirmasc);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

     //control panel 1 daugiabucio 3 auksto keitimas i rezervuotus

    public function pirmascr(Request $request)
    {
         $rez = Pirmasc::find( $request->pirmasc);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

     //control panel 1 daugiabucio 3 auksto keitimas i laisvus

    public function pirmascl(Request $request)
    {
         $laisvas = Pirmasc::find( $request->pirmasc);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel visi 2 daugiabucio butai

    public function editantras()
    {
    	$antro1 = Antrasa::all();

    	$antro2 = Antrasb::all();

    	$antro3 = Antrasc::all();

    	return view('admin.cpantras', compact('antro1', 'antro2', 'antro3'));
    }

    public function updateantrasa(Request $request, $id)
    {
        $antrasa = Antrasa::find($id);
        // dd($kotedzas);

        $antrasa->plotas = $request->plotas;
        $antrasa->kambariai = $request->kambariai;
        $antrasa->kaina = $request->kaina;
        $antrasa->apdaila = $request->apdaila;
        $antrasa->kryptis = $request->kryptis;
        $antrasa->save();

        return redirect()->back();
    }

    public function updateantrasb(Request $request, $id)
    {
        $antrasb = Antrasb::find($id);
        // dd($kotedzas);

        $antrasb->plotas = $request->plotas;
        $antrasb->kambariai = $request->kambariai;
        $antrasb->kaina = $request->kaina;
        $antrasb->apdaila = $request->apdaila;
        $antrasb->kryptis = $request->kryptis;
        $antrasb->save();

        return redirect()->back();
    }

    public function updateantrasc(Request $request, $id)
    {
        $antrasc = Antrasc::find($id);
        // dd($kotedzas);

        $antrasc->plotas = $request->plotas;
        $antrasc->kambariai = $request->kambariai;
        $antrasc->kaina = $request->kaina;
        $antrasc->apdaila = $request->apdaila;
        $antrasc->kryptis = $request->kryptis;
        $antrasc->save();

        return redirect()->back();
    }

     //control panel 2 daugiabucio 1 auksto keitimas i parduotus

    public function antrasap(Request $request)
    {
         $parduotas = Antrasa::find( $request->antrasa);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 1 auksto keitimas i rezervuotus

    public function antrasar(Request $request)
    {
         $rez = Antrasa::find( $request->antrasa);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 1 auksto keitimas i laisvus

    public function antrasal(Request $request)
    {
         $laisvas = Antrasa::find( $request->antrasa);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 2 auksto keitimas i parduotus

    public function antrasbp(Request $request)
    {
         $parduotas = Antrasb::find( $request->antrasb);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 2 auksto keitimas i rezervuotus

    public function antrasbr(Request $request)
    {
         $rez = Antrasb::find( $request->antrasb);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 2 auksto keitimas i laisvus

    public function antrasbl(Request $request)
    {
         $laisvas = Antrasb::find( $request->antrasb);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 3 auksto keitimas i parduotus

    public function antrascp(Request $request)
    {
         $parduotas = Antrasc::find( $request->antrasc);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 3 auksto keitimas i rezervuotus

    public function antrascr(Request $request)
    {
         $rez = Antrasc::find( $request->antrasc);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 2 daugiabucio 3 auksto keitimas i laisvus

    public function antrascl(Request $request)
    {
         $laisvas = Antrasc::find( $request->antrasc);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel visi 3 daugiabucio butai

    public function edittrecias()
    {
    	$trecio1 = Treciasa::all();

    	$trecio2 = Treciasb::all();

    	$trecio3 = Treciasc::all();

    	return view('admin.cptrecias', compact('trecio1', 'trecio2', 'trecio3'));
    }

    public function updatetreciasa(Request $request, $id)
    {
        $treciasa = Treciasa::find($id);
        // dd($kotedzas);

        $treciasa->plotas = $request->plotas;
        $treciasa->kambariai = $request->kambariai;
        $treciasa->kaina = $request->kaina;
        $treciasa->apdaila = $request->apdaila;
        $treciasa->kryptis = $request->kryptis;
        $treciasa->save();

        return redirect()->back();
    }

    public function updatetreciasb(Request $request, $id)
    {
        $treciasb = Treciasb::find($id);
        // dd($kotedzas);

        $treciasb->plotas = $request->plotas;
        $treciasb->kambariai = $request->kambariai;
        $treciasb->kaina = $request->kaina;
        $treciasb->apdaila = $request->apdaila;
        $treciasb->kryptis = $request->kryptis;
        $treciasb->save();

        return redirect()->back();
    }

    public function updatetreciasc(Request $request, $id)
    {
        $treciasc = Treciasc::find($id);
        // dd($kotedzas);

        $treciasc->plotas = $request->plotas;
        $treciasc->kambariai = $request->kambariai;
        $treciasc->kaina = $request->kaina;
        $treciasc->apdaila = $request->apdaila;
        $treciasc->kryptis = $request->kryptis;
        $treciasc->save();

        return redirect()->back();
    }

    //control panel 3 daugiabucio 1 auksto keitimas i parduotus

    public function treciasap(Request $request)
    {
         $parduotas = Treciasa::find( $request->treciasa);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 1 auksto keitimas i rezervuotus

    public function treciasar(Request $request)
    {
         $rez = Treciasa::find( $request->treciasa);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 1 auksto keitimas i laisvus

    public function treciasal(Request $request)
    {
         $laisvas = Treciasa::find( $request->treciasa);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 2 auksto keitimas i parduotus

    public function treciasbp(Request $request)
    {
         $parduotas = Treciasb::find( $request->treciasb);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 2 auksto keitimas i rezervuotus

    public function treciasbr(Request $request)
    {
         $rez = Treciasb::find( $request->treciasb);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 2 auksto keitimas i laisvus

    public function treciasbl(Request $request)
    {
         $laisvas = Treciasb::find( $request->treciasb);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 3 auksto keitimas i parduotus

    public function treciascp(Request $request)
    {
         $parduotas = Treciasc::find( $request->treciasc);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 3 auksto keitimas i rezervuotus

    public function treciascr(Request $request)
    {
         $rez = Treciasc::find( $request->treciasc);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 3 daugiabucio 3 auksto keitimas i laisvus

    public function treciascl(Request $request)
    {
         $laisvas = Treciasc::find( $request->treciasc);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel ketvirto daugiabucio visi butai

    public function editketvirtas()
    {
    	$ketvirto1 = Ketvirtasa::all();

    	$ketvirto2 = Ketvirtasb::all();

    	$ketvirto3 = Ketvirtasc::all();

    	return view('admin.cpketvirtas', compact('ketvirto1', 'ketvirto2', 'ketvirto3'));
    }

    public function updateketvirtasa(Request $request, $id)
    {
        $ketvirtasa = Ketvirtasa::find($id);
        // dd($kotedzas);

        $ketvirtasa->plotas = $request->plotas;
        $ketvirtasa->kambariai = $request->kambariai;
        $ketvirtasa->kaina = $request->kaina;
        $ketvirtasa->apdaila = $request->apdaila;
        $ketvirtasa->kryptis = $request->kryptis;
        $ketvirtasa->save();

        return redirect()->back();
    }

    public function updateketvirtasb(Request $request, $id)
    {
        $ketvirtasb = Ketvirtasb::find($id);
        // dd($kotedzas);

        $ketvirtasb->plotas = $request->plotas;
        $ketvirtasb->kambariai = $request->kambariai;
        $ketvirtasb->kaina = $request->kaina;
        $ketvirtasb->apdaila = $request->apdaila;
        $ketvirtasb->kryptis = $request->kryptis;
        $ketvirtasb->save();

        return redirect()->back();
    }

    public function updateketvirtasc(Request $request, $id)
    {
        $ketvirtasc = Ketvirtasc::find($id);
        // dd($kotedzas);

        $ketvirtasc->plotas = $request->plotas;
        $ketvirtasc->kambariai = $request->kambariai;
        $ketvirtasc->kaina = $request->kaina;
        $ketvirtasc->apdaila = $request->apdaila;
        $ketvirtasc->kryptis = $request->kryptis;
        $ketvirtasc->save();

        return redirect()->back();
    }

    //control panel 4 daugiabucio 1 auksto keitimas i parduotus

    public function ketvirtasap(Request $request)
    {
         $parduotas = Ketvirtasa::find( $request->ketvirtasa);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 1 auksto keitimas i rezervuotus

    public function ketvirtasar(Request $request)
    {
         $rez = Ketvirtasa::find( $request->ketvirtasa);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 1 auksto keitimas i laisvus

    public function ketvirtasal(Request $request)
    {
         $laisvas = Ketvirtasa::find( $request->ketvirtasa);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 2 auksto keitimas i parduotus

    public function ketvirtasbp(Request $request)
    {
         $parduotas = Ketvirtasb::find( $request->ketvirtasb);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 2 auksto keitimas i rezervuotus

    public function ketvirtasbr(Request $request)
    {
         $rez = Ketvirtasb::find( $request->ketvirtasb);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 2 auksto keitimas i laisvus

    public function ketvirtasbl(Request $request)
    {
         $laisvas = Ketvirtasb::find( $request->ketvirtasb);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 3 auksto keitimas i parduotus

    public function ketvirtascp(Request $request)
    {
         $parduotas = Ketvirtasc::find( $request->ketvirtasc);

         // dd($parduotas);

         $parduotas->statusas = 1;

    	// dd($kotedzas);

    	$parduotas->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 3 auksto keitimas i rezervuotus

    public function ketvirtascr(Request $request)
    {
         $rez = Ketvirtasc::find( $request->ketvirtasc);

         // dd($rez);

         $rez->statusas = 2;

    	// dd($kotedzas);

    	$rez->save();
    	// dd($sold);

    	return redirect()->back();

    }

    //control panel 4 daugiabucio 3 auksto keitimas i laisvus

    public function ketvirtascl(Request $request)
    {
         $laisvas = Ketvirtasc::find( $request->ketvirtasc);

         // dd($laisvas);

         $laisvas->statusas = 0;

    	// dd($laisvas->statusas);

    	$laisvas->save();
    	// dd($sold);

    	return redirect()->back();

    }
}
