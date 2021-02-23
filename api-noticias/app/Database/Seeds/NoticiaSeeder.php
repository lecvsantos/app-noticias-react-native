<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class NoticiaSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 1,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/1/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 1,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/2/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 2,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/3/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 3,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/4/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 3,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/5/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 1,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/6/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 2,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/7/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 3,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/8/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 2,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/9/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 3,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/10/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 2,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/11/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 1,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/12/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 1,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/13/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 1,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/14/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'titulo' => static::faker()->text(45),
				'descricao' => static::faker()->text(700),
				'categoria_id' => 3,
				'autor' => static::faker()->name,
				'imagem' => 'https://picsum.photos/id/15/536/354',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],
		];
		
		$this->db->table('noticia')->emptyTable();
		$this->db->table('noticia')->insertBatch($data);
	}
}
