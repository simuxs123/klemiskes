<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Butai;

class ButaiController extends Controller
{
    public function index()
    {
    	$butai = Butai::first();

    	

    	// dd($butai);

    	return view('layouts.butas', compact('butai'));
    }
}
