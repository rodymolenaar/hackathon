<?php

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

    $places = [
        (object) [
            'title' => 'McDonalds',
            'description' => 'Stationsstraat 55',
            'type' => 'restaurant'
        ],
        (object) [
            'title' => 'Mockamore',
            'description' => 'De Diagonaal 3',
            'type' => 'coffee'
        ],
        (object) [
            'title' => 'Pull & Bear',
            'description' => 'Citadel 27',
            'type' => 'clothing'
        ]
    ];

    return view('index')->with(compact('places'));
});
