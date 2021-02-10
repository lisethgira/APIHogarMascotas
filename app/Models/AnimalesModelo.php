<?php namespace App\Models;

use CodeIgniter\Model;

class AnimalesModelo extends Model
{
    protected $table      = 'animales';
    protected $primaryKey = 'idAnimal';
    protected $allowedFields =['idAnimal','nombre','edad','tipo','descripcion','comida'];
}