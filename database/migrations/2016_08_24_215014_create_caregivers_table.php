<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCaregiversTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('caregivers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')
                ->references('id')->on('users');
            $table->string('first_name', 50);
            $table->string('last_name', 50);
            $table->string('cpf', 11);
            $table->string('uf', 2);
            $table->string('city', 30);
            $table->string('neighborhood', 30);
            $table->string('address', 30);
            $table->string('zipcode', 9);
            $table->boolean('paid')->default(false);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('caregivers');
    }
}
