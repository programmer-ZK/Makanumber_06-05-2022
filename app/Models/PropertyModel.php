<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PropertyModel extends Model
{
    use HasFactory;
     protected $table = 're_properties';
         
    protected $fillable = [
        'name',
        'content',
        'location',
        'images',
        'project_id',
        'number_bedroom',
        'number_bathroom',
        'number_floor',
        'maidroom',
        'parking_space',
        'covered_parking',
        'furnished',
        'developer',
        'year_built',
        'square',
        'price',
        'price_unit',
        'is_featured',
        'status',
        'type',
        'description',
        'currency_id',
        'city_id',
        'preriod',
        'author_id',
        'author_type',
        'moderation_status',
        'expire_date',
        'auto_renew',
        'never_expired',
        'latitude',
        'longitude',
    ];

}
