<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Musicas extends Model
{
    use HasFactory;
    protected $primaryKey="id";
    protected $table="musicas";

    public $timestamps = false;

    protected $fillable=[
        'id',
        'musica',
        'nome',
    ];
}
