<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class CategoriaSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'nome' => 'Esportes',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'nome' => 'Fofoca',
				'dt_criacao' => date('Y-m-d H:i:s'),
			],[
				'nome' => 'Geral',
				'dt_criacao' => date('Y-m-d H:i:s'),
			]
		];
		
		$this->db->table('categoria')->emptyTable();
		$this->db->table('categoria')->insertBatch($data);
	}
}
