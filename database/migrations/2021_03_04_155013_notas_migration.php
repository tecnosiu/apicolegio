<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class NotasMigration extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
            Schema::create('notas', function (Blueprint $table) {
            $table->increments('id');
            $table->biginteger('grado');
            $table->char('seccion');
            $table->string('asignatura');
            $table->string('profesor');
            $table->biginteger('nota');
            $table->timestamps();

            $table->biginteger('student_id')->unsigned();
            $table->foreign('student_id')->references('id')->on('students');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        chema::dropIfExists('notas');
    }
}
