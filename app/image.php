<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class image extends Model
{
        protected $fillable = [
        'image', 'post_id', 'firstname',
    ];
}
