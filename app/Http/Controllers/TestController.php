<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Test;

class TestController extends Controller
{
    public function index() {

        $data = Test::all();

        return view('tests.test', compact('data'));
    }
}
