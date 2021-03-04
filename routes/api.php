<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

//Obtener Todos los estudiantes registrados
Route::get('students', 'App\Http\Controllers\ApiController@getAllStudents');
//Buscar un estudiante
Route::get('students/{id}', 'App\Http\Controllers\ApiController@getStudent');
//Crear un estudiante
Route::post('students', 'App\Http\Controllers\ApiController@createStudent');
//Actualizar un estudiante
Route::put('students/{id}', 'App\Http\Controllers\ApiController@updateStudent');
//Borrar un estudiante
Route::delete('students/{id}','App\Http\Controllers\ApiController@deleteStudent');
//Obtener Todas las notas
Route::get('notas', 'App\Http\Controllers\ApiController@getAllNotas');
//Registar una nota
Route::post('notas', 'App\Http\Controllers\ApiController@createNota');
//Actualizar una nota
Route::put('notas/{id}', 'App\Http\Controllers\ApiController@updateNota');
//Borrar una nota
Route::delete('notas/{id}','App\Http\Controllers\ApiController@deleteNota');
//Devolver las calificaciones de un alumno en particular
Route::get('notas_estudiante/{id}','App\Http\Controllers\ApiController@index');