<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KonsumenController extends Controller
{
    public function index() {
        $konsumen = DB::table('konsumen')->get();
        return view('all.konsumen', ['konsumen' => $konsumen]);
    }

    public function add(Request $request)
    {
    	DB::table('konsumen')->insert([
			'nama' => $request->nama,

		]);
		return redirect()->back()->with('success', 'Data berhasil ditambahkan!');
 
    }

    public function update(Request $request, $id)
    {
        DB::table('konsumen')->where('kd_konsumen', $id)->update([
            'nama' => $request->nama,
        ]);

        return redirect()->back()->with('success', 'Data berhasil dirubah!');
    }

    public function delete($id)
    {
        DB::table('konsumen')->where('kd_konsumen', $id)->delete();

        return redirect()->back()->with('success', 'Data berhasil dihapus!');
    }
}
