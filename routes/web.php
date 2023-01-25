<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TransactionController;

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

Route::get('/query1', [TransactionController::class, 'query1'])->name('query1');
Route::get('/query2', [TransactionController::class, 'query2'])->name('query2');
Route::get('/query3', [TransactionController::class, 'query3'])->name('query3');
Route::get('/query4', [TransactionController::class, 'query4'])->name('query4');
Route::get('/query5', [TransactionController::class, 'query5'])->name('query5');
Route::get('/query6', [TransactionController::class, 'query6'])->name('query6');
Route::get('/query7', [TransactionController::class, 'query7'])->name('query7');