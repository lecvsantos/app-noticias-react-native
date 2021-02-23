<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class NoticiaSeeder extends Seeder
{
    public function run()
    {
        $data = [];
        for ($i = 1; $i <= 20; $i++) {
            $data[] = [
                'titulo' => static::faker()->text(45),
                'descricao' => static::faker()->text(700),
                'categoria_id' => mt_rand(1, 3),
                'autor' => static::faker()->name,
                'imagem' => 'https://picsum.photos/id/' . $i . '/536/354',
                'dt_criacao' => date('Y-m-d H:i:s'),
            ];
        }

        $this->db->table('noticia')->emptyTable();
        $this->db->table('noticia')->insertBatch($data);
    }
}
