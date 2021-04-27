<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Namas extends Model
{
    protected $table = 'namai';
    protected $fillable=['plotas','kambariai','kaina','apdaila','kryptis'];
}
