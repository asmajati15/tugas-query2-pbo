<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class TransactionController extends Controller
{
    public function query1(){
        $konsumen = DB::select('SELECT * FROM konsumen WHERE jumlah_transaksi>=10');
        return view('query/query1', ['konsumen' => $konsumen]);
    }
    
    public function query2(){
        $konsumen = DB::select('SELECT DISTINCT toko FROM transaksi');
        return view('query/query2', ['konsumen' => $konsumen]);
    }
    
    public function query3(){
        $konsumen = DB::select('SELECT * FROM konsumen');
        return view('query/query3', ['konsumen' => $konsumen]);
    }
    
    public function query4(){
        $konsumen = DB::select('SELECT * FROM konsumen');
        return view('query/query4', ['konsumen' => $konsumen]);
    }
    
    public function query5(){
        $konsumen = DB::select('SELECT * FROM konsumen');
        return view('query/query5', ['konsumen' => $konsumen]);
    }
    
    public function query6(){
        $konsumen = DB::select('SELECT * FROM transaksi WHERE YEAR(tanggal)=2022');
        return view('query/query6', ['konsumen' => $konsumen]);
    }
    
    public function query7(){
        $konsumen = DB::select('SELECT * FROM konsumen');
        return view('query/query7', ['konsumen' => $konsumen]);
    }
}
