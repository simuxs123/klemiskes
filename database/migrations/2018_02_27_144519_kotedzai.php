<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Kotedzai extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kotedzai', function (Blueprint $table) {
            $table->increments('id');
            $table->string('kotedzo_id');
            $table->string('image')->nullable();
            $table->string('image2')->nullable();
            $table->string('cords');
            $table->string('kambariai');
            $table->string('plotas');
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
        Schema::dropIfExists('kotedzai');
    }
}
