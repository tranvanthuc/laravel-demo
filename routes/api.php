<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1', 'namespace' => 'V1'] , function() {
    require __DIR__ . '/API/version1.php';
});

Route::group(['prefix' => 'v2', 'namespace' => 'V2'] , function() {
    require __DIR__ . '/API/version2.php';
});
