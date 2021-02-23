<?php

namespace App\Controllers;

use App\Models\CategoriaModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;

class Categoria extends ResourceController
{
    use ResponseTrait;

    // lista as categorias
    public function index()
    {
        $categoriaModel = new CategoriaModel();
        $listaCategoria = $categoriaModel->findAll();
        return $this->respond($listaCategoria);
    }

    // busca uma categoria por id
    public function show($id = null)
    {
        $categoriaModel = new CategoriaModel();
        $categoria = $categoriaModel->find($id);
        if ($categoria) {
            return $this->respond($categoria);
        }
        return $this->failNotFound('Nenhuma categoria encontrada com o id: ' . $id);
    }

    // insere uma categoria
    public function create()
    {
        $categoriaModel = new CategoriaModel();
        $data = $this->request->getJSON();
        $insert = $categoriaModel->insert($data);
        if (!empty($insert)) {
            $response = [
                'status' => 201,
                'error' => null,
                'messages' => [
                    'success' => 'Categoria salva com sucesso',
                ],
                'categoria' => $categoriaModel->find($insert),
            ];
            return $this->respondCreated($response);
        }

        return $this->fail($categoriaModel->errors());
    }

    // atualiza a categoria
    public function update($id = null)
    {
        $categoriaModel = new CategoriaModel();
        $data = $this->request->getJSON();
        $categoria = $categoriaModel->find($id);
        if ($categoria) {
            if ($categoriaModel->update($id, $data)) {
                $response = [
                    'status' => 200,
                    'error' => null,
                    'messages' => [
                        'success' => 'Categoria altereda com sucesso',
                    ],
                    'categoria' => $categoriaModel->find($id),
                ];
                return $this->respond($response);
            } 
            return $this->fail($categoriaModel->errors());
        }
        return $this->failNotFound('Nenhuma categoria encontrada com o id: ' . $id);
    }

    // deleta a categoria
    public function delete($id = null)
    {
        $categoriaModel = new CategoriaModel();
        $data = $categoriaModel->find($id);

        if ($data) {
            $categoriaModel->delete($id);
            $response = [
                'status' => 200,
                'error' => null,
                'messages' => [
                    'success' => 'Categoria excluída com sucesso',
                ],
            ];
            return $this->respondDeleted($response);
        }

        return $this->failNotFound('Nenhuma categoria encontrada com o id: ' . $id);
    }
}