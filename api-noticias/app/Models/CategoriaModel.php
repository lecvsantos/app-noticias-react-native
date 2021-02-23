<?php

namespace App\Models;

use CodeIgniter\Model;

class CategoriaModel extends Model
{
    protected $table = 'categoria';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['nome'];

    protected $useTimestamps = true;
    protected $createdField = 'dt_criacao';
    protected $updatedField = 'dt_alteracao';
    protected $deletedField = 'dt_exclusao';

    protected $validationRules = [
        'nome' => 'required|min_length[3]',
    ];

    protected $validationMessages = [
        'nome' => [
            'required' => 'Preencha o nome da categoria',
            'min_length' => 'O nome da categoria deve ter pelo o menos 3 caracteres',
        ],
    ];
    protected $skipValidation = false;

}
