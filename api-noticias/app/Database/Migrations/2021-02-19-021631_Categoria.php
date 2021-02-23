<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Categoria extends Migration
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
            'nome' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
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
        $this->forge->createTable('categoria');
    }

    public function down()
    {
        $this->forge->dropTable('categoria');
    }
}
