<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransaksiController extends Controller
{
    public function index() {
        $transaksi = DB::table('transaksi')->join('konsumen', 'transaksi.kd_konsumen', '=', 'konsumen.kd_konsumen')->get();
        return view('all.transaksi', ['transaksi' => $transaksi]);
    }
    
    public function add(Request $request)
    {
    	DB::table('transaksi')->insert([
			'kd_konsumen' => $request->kd_konsumen,
			'nama_barang' => $request->nama_barang,
			'jenis_barang' => $request->jenis_barang,
			'harga' => $request->harga,
			'tanggal' => $request->tanggal,
			'toko' => $request->toko,
		]);
		return redirect()->back()->with('success', 'Data berhasil ditambahkan!');
 
    }

    public function update(Request $request, $id)
    {
        DB::table('transaksi')->where('kd_transaksi', $id)->update([
            'kd_konsumen' => $request->kd_konsumen,
			'nama_barang' => $request->nama_barang,
			'jenis_barang' => $request->jenis_barang,
			'harga' => $request->harga,
			'tanggal' => $request->tanggal,
			'toko' => $request->toko,
        ]);

        return redirect()->back()->with('success', 'Data berhasil dirubah!');
    }

    public function delete($id)
    {
        DB::table('transaksi')->where('kd_transaksi', $id)->delete();

        return redirect()->back()->with('success', 'Data berhasil dihapus!');
    }
}
