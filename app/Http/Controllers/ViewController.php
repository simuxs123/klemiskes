<?php

namespace App\Http\Controllers;

use App\Namas;
use Illuminate\Http\Request;


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
        $butai=Namas::select('namo_id','auksto_id')->where('namo_id', 1)->distinct()->get();
    	return view('layouts.pirmasd',compact('butai'));
    }

    public function antrasd()
    {
        $butai=Namas::select('namo_id','auksto_id')->where('namo_id', 2)->distinct()->get();
    	return view('layouts.antrasd',compact('butai'));
    }

    public function treciasd()
    {
        $butai=Namas::select('namo_id','auksto_id')->where('namo_id', 3)->distinct()->get();
    	return view('layouts.treciasd',compact('butai'));
    }

    public function ketvirtasd()
    {
        $butai=Namas::select('namo_id','auksto_id')->where('namo_id', 4)->distinct()->get();
    	return view('layouts.ketvirtasd',compact('butai'));
    }

    public function pirmas()  //padaryti 4 dinamiskai su namo id, neiseina per ajax id nusiust
    {
        $butai=Namas::where('namo_id', 1)->get();
        $countStatusa=$butai->countBy('statusas');
        $combine=$butai->add($countStatusa);
        return response()->json($combine);
    }
    public function antras()
    {
        $butai=Namas::where('namo_id', 2)->get();
        $countStatusa=$butai->countBy('statusas');
        $combine=$butai->add($countStatusa);
        return response()->json($combine);
    }
    public function trecias()
    {
        $butai=Namas::where('namo_id', 3)->get();
        $countStatusa=$butai->countBy('statusas');
        $combine=$butai->add($countStatusa);
        return response()->json($combine);
    }
    public function ketvirtas()
    {
        $butai=Namas::where('namo_id', 4)->get();
        $countStatusa=$butai->countBy('statusas');
        $combine=$butai->add($countStatusa);
        return response()->json($combine);
    }


    public function butashow($namas,$aukstas,$butas)
    {
        $butas=Namas::where('namo_id',$namas)->where('auksto_id',$aukstas)->where('buto_id',$butas)->first();
        return view('layouts.butas', compact('butas'));

    }

    public function butai($namas,$aukstas)
    {
        $butai = Namas::where('namo_id',$namas)->where('auksto_id',$aukstas)->get();
        if($namas==1 ){
            $klase='pirmas';
            $popUp='p';
        } else if($namas==2){
            $klase="antras";
            $popUp='a';
        } else if($namas==3){
            $klase="trecias";
            $popUp='t';
        } else{
            $klase="ketvirtas";
            $popUp='k';
        }
        if($aukstas==1){
//            $klase.="a";
            $popUp.='a';
        } else if($aukstas==2){
//            $klase.="b";
            $popUp.='b';
        } else {
//            $klase.="c";
            $popUp.='c';
        }

    	return view('namas.butai', compact('butai'),compact(['klase','popUp']));
    }

    public function filtras(Request $request)
    {

        $plotaiIntArr = collect($request->plotas)->map(function ($item) {
            return intval($item);
        })->all();
        $aukstaiIntArr = collect($request->aukstas)->map(function ($item) {
        return intval($item);
        })->all();

        $filtras=Namas::whereBetween('plotas',$plotaiIntArr);
        if($request->has('aukstas')){
            $filtras=$filtras->whereIn('auksto_id', $aukstaiIntArr);
        }

        return response()->json($filtras->get());

    }
    

    public function vieta()
    {
        return view('layouts.vieta');
    }
}
