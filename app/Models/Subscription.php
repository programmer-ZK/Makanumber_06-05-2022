<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    use HasFactory;
    
        protected $table = 'subscription';
         
    protected $fillable = [
        'user_id',
        'pkg_name',
        'price',
        'days',
        'status',
        
    ];
    
    public $timestamps = false;
}
