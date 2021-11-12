<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Encore\Admin\Traits\DefaultDatetimeFormat;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable =[
        'name',
        'img_url',
    ];

    // use DefaultDatetimeFormat;
    // use ModelTree;
    // //table name
    // protected $table = 'categories';

    // public function getList(){
    //     return $this->get();
    // }
}



