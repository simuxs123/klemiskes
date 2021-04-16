<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateButaisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('butais', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('namas');
            $table->integer('aukstas');
            $table->integer('kambariai');
            $table->integer('plotas');
            $table->string('kryptis');
            $table->string('image')->nullable();
            $table->string('statusas');
            $table->integer('kaina');
            $table->string('apdaila');
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
        Schema::dropIfExists('butais');
    }
}
