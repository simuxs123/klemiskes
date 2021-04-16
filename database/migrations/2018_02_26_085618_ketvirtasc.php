<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Ketvirtasc extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ketvirtasc', function (Blueprint $table) {
            $table->increments('id');
            $table->string('namo_id');
            $table->string('auksto_id');
            $table->string('buto_id');
            $table->string('image')->nullable();
            $table->string('kambariai');
            $table->string('cords');
            $table->string('plotas');
            $table->string('kryptis');
            $table->string('kaina');
            $table->string('apdaila');
            $table->integer('statusas');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ketvirtasc');
    }
}
