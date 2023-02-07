<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\QueryController;
use App\Http\Controllers\KonsumenController;
use App\Http\Controllers\TransaksiController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/query1', [QueryController::class, 'query1'])->name('query1');
Route::get('/query2', [QueryController::class, 'query2'])->name('query2');
Route::get('/query3', [QueryController::class, 'query3'])->name('query3');
Route::get('/query4', [QueryController::class, 'query4'])->name('query4');
Route::get('/query5', [QueryController::class, 'query5'])->name('query5');
Route::get('/query6', [QueryController::class, 'query6'])->name('query6');
Route::get('/query7', [QueryController::class, 'query7'])->name('query7');

Route::prefix('konsumen')->group(function () {
    Route::get('/', [KonsumenController::class, 'index']);
    Route::post('/add',[KonsumenController::class,'add'])->name('konsumen.add');
    Route::post('/update/{id}',[KonsumenController::class,'update'])->name('konsumen.update');;
    Route::get('/delete/{id}',[KonsumenController::class,'delete'])->name('konsumen.delete');;
});

Route::prefix('transaksi')->group(function () {
    Route::get('/', [TransaksiController::class, 'index']);
    Route::post('/add',[TransaksiController::class,'add'])->name('transaksi.add');
    Route::post('/edit/{id}',[TransaksiController::class,'update'])->name('transaksi.update');;
    Route::get('/delete/{id}',[TransaksiController::class,'delete'])->name('transaksi.delete');;
});
