<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
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
use App\Kotedzai;


class ViewController extends Controller
{
    public function index()
    {
    	return view('layouts.main');
    }

    public function apieprojekta()
    {
        return view('layouts.apieprojekta');
    }

    public function pirmasd()
    {
    	return view('layouts.pirmasd');
    }

    public function antrasd()
    {
    	return view('layouts.antrasd');
    }

    public function treciasd()
    {
    	return view('layouts.treciasd');
    }

    public function ketvirtasd()
    {
    	return view('layouts.ketvirtasd');
    }

    public function kotedzas()
    {
        $kotedzas = Kotedzai::all()->first();

        $kotedzai = Kotedzai::all();

        // dd($kotedzai);

    	return view('layouts.kotedzas', compact('kotedzas', 'kotedzai'));
    }

    public function kotedzasjson()
    {
        $kotedzas = DB::table('kotedzai')->get();
        // dd($pirmasa);

        return response()->json($kotedzas);
    }

    public function kotedzushow($id)
    {
        $kotedzas = Kotedzai::find($id);

        return view('layouts.kotedzoview', compact('kotedzas'));

    }

    public function pirmasa()
    {
        $pirmasa = DB::table('pirmasa')->get();
        // dd($pirmasa);

        return response()->json($pirmasa);
    }

    public function pirmasashow($id)
    {
        $butas = Pirmasa::find($id);

        return view('layouts.butas', compact('butas'));

    }

    public function pirmopirmas()
    {
        $pirmasa = Pirmasa::all()->first();

        $pa = Pirmasa::all();
        // dd($magija);
    	return view('1namas.pirmopirmas', compact('pirmasa', 'pa'));
    }

    public function pirmasb()
    {
        $pirmasb = DB::table('pirmasb')->get();
        // dd($data);

        return response()->json($pirmasb);
    }

    public function pirmasbshow($id)
    {
        $butas = Pirmasb::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function pirmoantras()
    {
        $pirmasb = Pirmasb::all()->first();

        $pb =Pirmasb::all();

    	return view('1namas.pirmoantras', compact('pirmasb', 'pb'));
    }

    public function pirmasc()
    {
        $pirmasc = DB::table('pirmasc')->get();
        // dd($data);

        return response()->json($pirmasc);
    }

    public function pirmascshow($id)
    {
        $butas = Pirmasc::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function pirmotrecias()
    {
        $pirmasc = Pirmasc::all()->first();

        $pc=Pirmasc::all();

    	return view('1namas.pirmotrecias', compact('pirmasc', 'pc'));
    }

    public function antrasa()
    {
        $antrasa = DB::table('antrasa')->get();
        // dd($data);

        return response()->json($antrasa);
    }

    public function antrasashow($id)
    {
        $butas = Antrasa::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function antropirmas()
    {
        $antrasa = Antrasa::all()->first();
        $aa=Antrasa::all();
    	return view('2namas.antropirmas', compact('antrasa', 'aa'));
    }

    public function antrasb()
    {
        $antrasb = DB::table('antrasb')->get();
        // dd($data);

        return response()->json($antrasb);
    }

    public function antrasbshow($id)
    {
        $butas = Antrasb::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function antroantras()
    {
        $antrasb = Antrasb::all()->first();

        $ab=Antrasb::all();

    	return view('2namas.antroantras', compact('antrasb', 'ab'));
    }

    public function antrasc()
    {
        $antrasc = DB::table('antrasc')->get();
        // dd($antrasc);

        return response()->json($antrasc);
    }

    public function antrascshow($id)
    {
        $butas = Antrasc::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function antrotrecias()
    {
        $antrasc = Antrasc::all()->first();

        $ac=Antrasc::all();

    	return view('2namas.antrotrecias', compact('antrasc', 'ac'));
    }

    public function treciasa()
    {
        $treciasa = DB::table('treciasa')->get();
        // dd($data);

        return response()->json($treciasa);
    }

    public function treciasashow($id)
    {
        $butas = Treciasa::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function treciopirmas()
    {
        $treciasa = Treciasa::all()->first();

        $ta=Treciasa::all();

    	return view('3namas.treciopirmas', compact('treciasa', 'ta'));
    }

    public function treciasb()
    {
        $treciasb = DB::table('treciasb')->get();
        // dd($data);

        return response()->json($treciasb);
    }

    public function treciasbshow($id)
    {
        $butas = Treciasb::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function trecioantras()
    {
        $treciasb = Treciasb::all()->first();

        $tb=Treciasb::all();

    	return view('3namas.trecioantras', compact('treciasb', 'tb'));
    }

    public function treciasc()
    {
        $treciasc = DB::table('treciasc')->get();
        // dd($data);

        return response()->json($treciasc);
    }

    public function treciascshow($id)
    {
        $butas = Treciasc::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function treciotrecias()
    {
        $treciasc = Treciasc::all()->first();

        $tc=Treciasc::all();

    	return view('3namas.treciotrecias', compact('treciasc', 'tc'));
    }

    public function ketvirtasa()
    {
        $ketvirtasa = DB::table('ketvirtasa')->get();
        // dd($data);

        return response()->json($ketvirtasa);
    }

    public function ketvirtasashow($id)
    {
        $butas = Ketvirtasa::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function ketvirtopirmas()
    {
        $ketvirtasa = Ketvirtasa::all()->first();

        $ka=Ketvirtasa::all();

    	return view('4namas.ketvirtopirmas', compact('ketvirtasa', 'ka'));
    }

    public function ketvirtasb()
    {
        $ketvirtasb = DB::table('ketvirtasb')->get();
        // dd($data);

        return response()->json($ketvirtasb);
    }

    public function ketvirtasbshow($id)
    {
        $butas = Ketvirtasb::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function ketvirtoantras()
    {
        $ketvirtasb = Ketvirtasb::all()->first();

        $kb=Ketvirtasb::all();

    	return view('4namas.ketvirtoantras', compact('ketvirtasb', 'kb'));
    }

    public function ketvirtasc()
    {
        $ketvirtasc = DB::table('ketvirtasc')->get();
        // dd($data);

        return response()->json($ketvirtasc);
    }

    public function ketvirtascshow($id)
    {
        $butas = Ketvirtasc::find($id);
        
        return view('layouts.butas', compact('butas'));

    }

    public function ketvirtotrecias()
    {
        $ketvirtasc = Ketvirtasc::all()->first();

        $kc=Ketvirtasc::all();

    	return view('4namas.ketvirtotrecias', compact('ketvirtasc', 'kc'));
    }

    

    public function vieta()
    {
        return view('layouts.vieta');
    }
}
