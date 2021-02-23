<?php

namespace App\Controllers;

use App\Models\NoticiaModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;

class Noticia extends ResourceController
{
    use ResponseTrait;

    // lista as notícias
    public function index()
    {
        $noticiaModel = new NoticiaModel();
        $listaNoticias = $noticiaModel->listarNoticias();
        return $this->respond($listaNoticias);
    }

    // busca uma notícia por id
    public function show($id = null)
    {
        $noticiaModel = new NoticiaModel();
        $noticia = $noticiaModel->listarNoticias($id);
        if ($noticia) {
            return $this->respond($noticia);
        }
        return $this->failNotFound('Nenhuma notícia encontrada com o id: ' . $id);
    }

    // insere uma noticia
    public function create()
    {
        
        $noticiaModel = new NoticiaModel();
        $data = $this->request->getJSON();
        $insert = $noticiaModel->insert($data);
        if (!empty($insert)) {
            $response = [
                'status' => 201,
                'error' => null,
                'messages' => [
                    'success' => 'Notícia salva com sucesso',
                ],
                'noticia' => $noticiaModel->find($insert),
            ];
            return $this->respondCreated($response);
        }

        return $this->fail($noticiaModel->errors());
    }

    // atualiza a notícia
    public function update($id = null)
    {
        $noticiaModel = new NoticiaModel();
        $data = $this->request->getJSON();
        $noticia = $noticiaModel->find($id);
        if ($noticia) {
            if ($noticiaModel->update($id, $data)) {
                $response = [
                    'status' => 200,
                    'error' => null,
                    'messages' => [
                        'success' => 'Notícia altereda com sucesso',
                    ],
                    'noticia' => $noticiaModel->find($id),
                ];
                return $this->respond($response);
            } 
            return $this->fail($noticiaModel->errors());
        }
        return $this->failNotFound('Nenhuma notícia encontrada com o id: ' . $id);
    }

    // deleta a notícia
    public function delete($id = null)
    {
        $noticiaModel = new NoticiaModel();
        $data = $noticiaModel->find($id);

        if ($data) {
            $noticiaModel->delete($id);
            $response = [
                'status' => 200,
                'error' => null,
                'messages' => [
                    'success' => 'Notícia excluída com sucesso',
                ],
            ];
            return $this->respondDeleted($response);
        }

        return $this->failNotFound('Nenhuma notícia encontrada com o id: ' . $id);
    }
}
