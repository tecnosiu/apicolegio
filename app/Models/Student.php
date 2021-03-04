<?php

namespace App\Models;

use App\Model\Nota;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $table = 'students';

    protected $fillable = ['nombre', 'curso'];

    public function notas()
    {
        // 1 estudiante tiene muchas notas.
        
        return $this->hasMany('App\Model\Nota');
    }
}
