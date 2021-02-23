<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Noticia extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'titulo' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
				'null' => false,
            ],
            'descricao' => [
                'type' => 'TEXT',
                'null' => false,
            ],
            'imagem' => [
                'type' => 'TEXT',
                'null' => false,
            ],
			'categoria_id' => [
                'type' => 'INT',
                'null' => false,
            ],
            'autor' => [
                'type' => 'TEXT',
                'null' => false,
            ],
			'dt_criacao' => [
                'type' => 'DATETIME',
                'null' => false,
            ],
			'dt_alteracao' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
			'dt_exclusao' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('noticia');

		// $seeder = \Config\Database::seeder();
		// $seeder->call('NoticiaSeeder');
    }

    public function down()
    {
		$this->forge->dropTable('noticia');
    }
}
