<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class QueryController extends Controller
{
    public function query1(){
        $konsumen = DB::select('SELECT * FROM konsumen WHERE jumlah_transaksi>=15');
        return view('query/query1', ['konsumen' => $konsumen]);
    }

    public function query2(){
        $konsumen = DB::select('SELECT transaksi.toko,SUM(konsumen.jumlah_transaksi) AS jumlah_transaksi FROM `transaksi` 
        INNER JOIN konsumen ON transaksi.kd_konsumen = konsumen.kd_konsumen group by toko ORDER BY jumlah_transaksi DESC;');
        return view('query/query2', ['konsumen' => $konsumen]);
    }

    public function query3(){
        $konsumen = DB::select('SELECT konsumen.nama, SUM(transaksi.harga) AS jumlah_transaksi_konsumen FROM `konsumen` 
        INNER JOIN transaksi ON konsumen.kd_konsumen = transaksi.kd_konsumen  group by konsumen.nama HAVING SUM(transaksi.harga)>10000000;');
        return view('query/query3', ['konsumen' => $konsumen]);
    }

    public function query4(){
        $konsumen = DB::select('SELECT nama_barang,COUNT(nama_barang) AS jumlah_transaksi_per_barang 
        FROM `transaksi` GROUP BY nama_barang HAVING COUNT(nama_barang) > 10;');
        return view('query/query4', ['konsumen' => $konsumen]);
    }

    public function query5(){
        $konsumen = DB::select('SELECT jenis_barang,COUNT(jenis_barang) AS jumlah_transaksi_per_jenis_barang 
        FROM `transaksi` GROUP BY jenis_barang ORDER BY COUNT(jenis_barang) DESC;');
        return view('query/query5', ['konsumen' => $konsumen]);
    }

    public function query6(){
        $konsumen = DB::select('SELECT * FROM transaksi WHERE YEAR(tanggal)=2022');
        return view('query/query6', ['konsumen' => $konsumen]);
    }

    public function query7(){
        $konsumen = DB::select('SELECT konsumen.nama,COUNT(konsumen.nama) AS jumlah_transaksi_2022 FROM transaksi 
        INNER JOIN konsumen ON transaksi.kd_konsumen = konsumen.kd_konsumen WHERE YEAR(transaksi.tanggal) = 2022 
        GROUP BY(konsumen.nama) ORDER BY jumlah_transaksi_2022 DESC;');
        return view('query/query7', ['konsumen' => $konsumen]);
    }
}

