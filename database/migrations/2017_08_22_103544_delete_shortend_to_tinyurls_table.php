<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DeleteShortendToTinyurlsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tiny_urls', function (Blueprint $table) {
            $table->dropColumn('shortend');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tiny_urls', function (Blueprint $table) {
            $table->dropColumn('shortend');
        });
    }
}
