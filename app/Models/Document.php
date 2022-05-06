<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    use HasFactory;
    
      protected $table = 'documents';
         
    protected $fillable = [
        'user_id',
        'letter',
        'funds',
        'home_sale',
        
    ];
    
    public $timestamps = false;
}
