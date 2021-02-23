

### API REST desenvolvida com Codeigniter 4 e MySql

### APP desenvolvido com React Native utilizando o Expo

O app se comunica com a api para listar e visualizar notícias

O app conta com funcionalidade de infinite scroll para a paginação das noticias e 'pull to refresh' para atualizar a listagem de notícias

### Instalando a api

Após clonar o reposítorio no seu computador, faça a instalação da api rodando os seguintes comandos no seu terminal

`cd api-noticias`
`composer update`

Para configurar o banco de dados, importe o arquivo .sql disponibilizado no repositório na sua instalação MySql, acesse o arquivo **app/Config/Database.php** e edite para configurar o banco de dados. Algo parecido como:

`public $default = [
		'DSN'      => '',
		'hostname' => 'localhost',
		'username' => 'root',
		'password' => '',
		'database' => 'noticias_91_seguros',
		'DBDriver' => 'MySQLi',
		...
];`

Ou poderá ser configurado pelo arquivo **.env** do seu projeto. Para isso edite as seguintes linhas, ficando algo parecido como:

`database.default.hostname = localhost
database.default.database = noticias_91_seguros
database.default.username = root
database.default.password = ''
database.default.DBDriver = MySQLi`

Após a instalação e configuração do banco de dados o projeto já pode ser iniciado, para isso rode o comando no seu terminal

`php spark serve`

O projeto será iniciado e pode ser acessado através de **http://localhost:8080**

Para realizar alguns testes na api, baixe e importe a collection do postman por aqui **https://documenter.getpostman.com/view/2905290/TWDZHbhT**

### Instalando o APP

Primeiro de tudo devemos instalar o **Expo CLI** caso ainda não esteja instalado. Para isso rode o seguinte comando em seu terminal:

`npm install --global expo-cli`

Após a instalação do Expo CLI, rode os seguintes comandos no seu terminal para instalar as dependencias do app

`cd app-noticias`
`npm install`

Após a instalação das dependencias do projeto, podemos iniciar app através do seguinte comando:

`expo start`

Com isso será aberto o Metro Bundler no seu navegador e agora é só escolher em qual simulador o app deve ser aberto (Android, iOS ou web).

Obs1: Caso seja necessário editar o **endpoint da** **api**, vá até o arquivo **src/services/api.js** e edite a seguinte linha para o endpoint em que sua api foi iniciada:

`baseURL: 'http://localhost:8080'`

Obs2: Caso seja necessário rodar o app direto no celular, será necessário alterar o endpoint para o caminho completo da api, passando o ip da rede local do seu computador. Ex: http://192.168.0.21/app-noticias-react-native/api-noticias/public. Substituindo **192.168.0.21** por seu **IP** da rede local.