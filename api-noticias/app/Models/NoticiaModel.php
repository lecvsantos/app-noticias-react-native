<?php

namespace App\Models;

use CodeIgniter\Model;

class NoticiaModel extends Model
{
    protected $table = 'noticia';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['titulo', 'descricao', 'categoria_id', 'imagem', 'autor'];

    protected $useTimestamps = true;
    protected $createdField = 'dt_criacao';
    protected $updatedField = 'dt_alteracao';
    protected $deletedField = 'dt_exclusao';

    protected $validationRules = [
        'titulo' => 'required|min_length[3]',
        'descricao' => 'required|min_length[20]',
        'categoria_id' => 'required|integer',
        'imagem' => 'required|min_length[20]',
        'autor' => 'required|min_length[3]',
    ];

    protected $validationMessages = [
        'titulo' => [
            'required' => 'Preencha o título da notícia',
            'min_length' => 'O título da notícia deve ter pelo o menos 3 caracteres',
        ],
        'descricao' => [
            'required' => 'Preencha a descrição da notícia',
            'min_length' => 'A descrição da notícia deve ter pelo o menos 20 caracteres',
        ],
        'categoria_id' => [
            'required' => 'Preencha a categoria da notícia',
            'int' => 'Preencha a categoria da notícia',
        ],
        'imagem' => [
            'required' => 'Informe a imagem da notícia',
            'url' => 'Informe a url da imagem',
        ],
        'autor' => [
            'required' => 'Informe o autor da notícia',
            'url' => 'Informe pelo o menos 3 caracteres',
        ],
    ];
    
    protected $skipValidation = false;

    public function listarNoticias($id = null)
    {
        $perPage = 5;
        $listaNoticias = $this->join('categoria as c', 'c.id = noticia.categoria_id')
            ->select([
                'noticia.id',
                'noticia.titulo',
                'noticia.descricao',
                'noticia.categoria_id',
                'noticia.autor',
                'noticia.imagem',
                'c.nome as nome_categoria',
                'noticia.dt_criacao',
                'noticia.dt_alteracao',
            ]);

        if (!empty($id)) {
            $listaNoticias->where('noticia.id', $id);
            $listaNoticias = $listaNoticias->first();

            return $listaNoticias;
        } else {
            $listaNoticias = $listaNoticias->paginate($perPage);
            $pager = $this->pager;

            return [
                'items' => $listaNoticias,
                'paginate' => [
                    'total' => $pager->getTotal(),
                    'nextPage' => $pager->getNextPageURI(),
                    'previousPage' => $pager->getPreviousPageURI(),
                    'firstPage' => $pager->getFirstPage(),
                    'lastPage' => $pager->getLastPage(),
                    'currentPage' => $pager->getCurrentPage(),
                    'perPage' => $perPage,
                ],
            ];
        }

    }
}
