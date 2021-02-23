-- -------------------------------------------------------------
-- TablePlus 3.12.4(360)
--
-- https://tableplus.com/
--
-- Database: noticias_91_seguros
-- Generation Time: 2021-02-23 10:52:07.9860
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE IF NOT EXISTS noticias_91_seguros;
USE noticias_91_seguros;

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dt_criacao` datetime NOT NULL,
  `dt_alteracao` datetime DEFAULT NULL,
  `dt_exclusao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` text NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `autor` text NOT NULL,
  `dt_criacao` datetime NOT NULL,
  `dt_alteracao` datetime DEFAULT NULL,
  `dt_exclusao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `categoria` (`id`, `nome`, `dt_criacao`, `dt_alteracao`, `dt_exclusao`) VALUES
('1', 'Esportes', '2021-02-23 10:20:39', NULL, NULL),
('2', 'Fofoca', '2021-02-23 10:20:39', NULL, NULL),
('3', 'Geral', '2021-02-23 10:20:39', NULL, NULL);

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
('41', '2021-02-19-021619', 'App\\Database\\Migrations\\Noticia', 'default', 'App', '1614086420', '1'),
('42', '2021-02-19-021631', 'App\\Database\\Migrations\\Categoria', 'default', 'App', '1614086420', '1');

INSERT INTO `noticia` (`id`, `titulo`, `descricao`, `imagem`, `categoria_id`, `autor`, `dt_criacao`, `dt_alteracao`, `dt_exclusao`) VALUES
('1', 'Provident voluptas voluptate illum.', 'Eos totam aut omnis quisquam voluptatem. Ea voluptatem vitae omnis alias dolore velit. Minus natus autem ea aliquam blanditiis dolore magnam odit. Ut illum veritatis quis ullam ut quia. Id maiores dolores quasi sed optio magnam quidem iure. Quia fuga ut ab consequatur. Inventore alias nobis et architecto ullam. Id saepe minima soluta dolores cupiditate impedit earum. Eos eveniet officiis qui nesciunt vitae sit ratione. In voluptas iste soluta deserunt ea voluptatem. Voluptas id odit distinctio impedit voluptas. Excepturi animi velit nobis iure dicta repellat non. Corporis qui aut praesentium corrupti est voluptatem ut.', 'https://picsum.photos/id/1/536/354', '3', 'Dr. Gussie Ferry', '2021-02-23 10:20:39', NULL, NULL),
('2', 'Recusandae in voluptatibus nihil.', 'Quibusdam iste veritatis fuga hic. Omnis dolores numquam illum quis iste perspiciatis amet. Porro iste iure qui deleniti enim. Aut aut deleniti recusandae dolorem culpa eius dolore. Fugit iure praesentium laudantium. Expedita animi tempore aut et sunt. Dolorem placeat eos vel reprehenderit cupiditate dolorem eveniet. Quaerat quis aut et quibusdam ipsa ullam. Ratione quis soluta necessitatibus eius ut qui. Illo assumenda nihil eius. Ipsa voluptates temporibus rerum. Ut a occaecati placeat delectus est omnis officiis. Eligendi repellendus saepe in ut molestiae voluptas consequatur. Qui culpa quia sed quis cum sit. Perspiciatis voluptatibus ad nesciunt minus.', 'https://picsum.photos/id/2/536/354', '1', 'Deanna Ledner', '2021-02-23 10:20:39', NULL, NULL),
('3', 'Aut dignissimos iste nihil praesentium vero.', 'In qui nesciunt modi doloremque. Et occaecati commodi laudantium sunt aliquid minus tenetur et. Eveniet nulla culpa rerum non dolores dolores. Mollitia fugiat iure voluptatem mollitia et tempore qui voluptate. Rem voluptate omnis quis quod est ut voluptatem. Magni autem sint esse laborum dolorem. Quod aut saepe aut est culpa nisi. Ab dolorem veniam sunt ut laborum. Molestiae nesciunt et dolores autem earum. Beatae enim incidunt et rerum ad ab nostrum deserunt. Architecto illum id sunt est omnis. Neque praesentium consequuntur consequatur qui. Quidem id sit vel. Autem illum aut a dolores incidunt recusandae est quidem.', 'https://picsum.photos/id/3/536/354', '1', 'Mathew Turner IV', '2021-02-23 10:20:39', NULL, NULL),
('4', 'Omnis sint quae est cum excepturi quasi.', 'Qui quae qui et delectus qui dignissimos non. Tempore placeat deleniti omnis nam aliquam maiores voluptatem. Est in commodi vero exercitationem quis consequatur aut quos. Iste aut consectetur non dolores nam eius aperiam. Id consequatur ducimus repudiandae vel in voluptas velit. Autem nemo numquam culpa provident laboriosam rerum voluptatem. Illo adipisci ut fugiat dolor temporibus quae perspiciatis perspiciatis. Ut neque sit aperiam nihil quis blanditiis. Unde eos quibusdam impedit similique at aut rerum. Reiciendis sapiente consectetur et quaerat et.', 'https://picsum.photos/id/4/536/354', '1', 'Karianne Zboncak', '2021-02-23 10:20:39', NULL, NULL),
('5', 'Sed ducimus vel aspernatur ut.', 'Incidunt velit in temporibus corrupti maiores ea ipsa dicta. Repellat quasi perferendis voluptatem eos pariatur officia nemo quod. Quisquam quam a incidunt eius excepturi molestias debitis tempora. Sunt optio et quis minima saepe voluptatem. Minus maiores itaque quam et. Nihil sequi est aut quaerat tempora perferendis nihil. Velit fugiat repellendus sit consequatur. Quam excepturi sit quia est. Saepe hic dicta iure vitae vitae eligendi facilis. Qui ad officiis voluptas unde expedita. Voluptatem et laborum dolor nemo. Ut quod qui et voluptatem. Totam omnis explicabo facilis fugit sed est occaecati.', 'https://picsum.photos/id/5/536/354', '1', 'Mr. Sigurd Schamberger', '2021-02-23 10:20:39', NULL, NULL),
('6', 'Labore voluptas mollitia vel aut.', 'Id facilis labore consectetur vero et dolore. Laudantium reiciendis repellat praesentium delectus. Dignissimos officiis eum aliquam non quia dolore vitae. Ut ullam non autem molestiae vitae quaerat. Ex ullam ut qui officia nulla et quia ut. Exercitationem aut sequi officiis consequatur. Ut aperiam veritatis quo aliquam. Quidem possimus corporis et voluptatem in laboriosam. Dolore repudiandae velit aut doloremque molestias. Suscipit dignissimos fugit vitae et et. Ipsa quis vero sed aliquam suscipit. Esse non illum ut consequuntur saepe. Voluptatem cupiditate id maiores veniam velit velit. Rerum quia voluptate quae sit laudantium voluptatibus.', 'https://picsum.photos/id/6/536/354', '2', 'Leopoldo Prohaska III', '2021-02-23 10:20:39', NULL, NULL),
('7', 'Perspiciatis similique et eveniet.', 'Quisquam tempore labore repudiandae nulla maxime eum. Optio provident hic ipsam ipsum vero sint voluptates. Ipsum hic voluptatum illum facilis deserunt iure. Optio magnam corporis iusto est id ad iure. Et in enim eligendi et ducimus. Consequuntur voluptatem occaecati ab aut porro et. Voluptatibus non illum accusamus repellat. Eveniet in magnam aut mollitia dicta. Reiciendis doloribus sit et et vero impedit. Ducimus voluptatem neque autem hic quae itaque et. Ea similique exercitationem in. Magni qui eos dolores quidem et consectetur fugiat sapiente. Autem rerum eum ratione cumque ipsum occaecati sit. Dolor sit aperiam sed eos dicta cupiditate. Ipsa et molestias aliquam est aperiam quis.', 'https://picsum.photos/id/7/536/354', '3', 'Rashawn Breitenberg MD', '2021-02-23 10:20:39', NULL, NULL),
('8', 'Quidem aut pariatur corporis.', 'Totam tenetur similique corrupti autem hic. Non earum voluptates dolore consequatur facilis vitae asperiores. Sunt quis omnis sed est ratione. Et eos tenetur consequatur voluptatem. Et voluptatem sed facere ut placeat. Reprehenderit quis fuga rerum cumque impedit. Aut quod tempore dicta inventore molestias perspiciatis. Nostrum iste quo ut. Aut sed minus modi blanditiis consequatur ipsa ratione. Molestiae sunt quo deleniti praesentium. Voluptatem tempora quam ullam accusantium molestias distinctio accusantium eum.', 'https://picsum.photos/id/8/536/354', '3', 'Damian Bechtelar', '2021-02-23 10:20:39', NULL, NULL),
('9', 'Aut maiores sapiente eveniet amet.', 'Voluptatem aspernatur sit provident facilis. Est voluptas saepe nobis. Nemo ducimus sunt modi dolorem magni. Voluptatem in id recusandae odit aliquid. Repudiandae porro quos sed autem sit et rem. Similique ut excepturi quia vel praesentium ut. Sunt fugiat placeat non dolorum quisquam ut odit. Ut iste iste quia autem assumenda. Non autem aut natus possimus quia consequatur iste aut. Aspernatur esse ut qui ut ut est nam. Voluptas possimus quae qui alias eligendi. Corrupti sit libero vitae autem.', 'https://picsum.photos/id/9/536/354', '1', 'Santiago Effertz Sr.', '2021-02-23 10:20:39', NULL, NULL),
('10', 'Aspernatur quo ducimus perferendis.', 'Fugiat sapiente dolores ipsam id maxime quidem sint sequi. Et eos saepe nihil ut. Itaque harum itaque rerum autem cum dolor. Tenetur et nisi eos minima voluptas fuga. Qui est rem non maxime voluptatem. Voluptatibus ducimus blanditiis at quos voluptas. Nemo officiis perspiciatis inventore aperiam sit voluptas earum. Inventore sint qui sapiente rerum tempora cupiditate culpa. Et facilis qui esse molestiae hic incidunt. At aut consequuntur perferendis incidunt deleniti. Est nisi sapiente ut. Et officia et magnam aliquam sed beatae nostrum. Repellat harum sed deserunt veritatis dolores ipsam. Et omnis eaque et accusantium.', 'https://picsum.photos/id/10/536/354', '3', 'Dr. Henry Waters', '2021-02-23 10:20:39', NULL, NULL),
('11', 'Perspiciatis est voluptas odio ut.', 'Mollitia commodi enim doloremque blanditiis dolorem harum. Iste dolores voluptatem quas vel. Velit fugit temporibus quis et nulla consequuntur omnis. Voluptatibus eum earum nisi commodi ut ut deserunt aspernatur. Voluptas quidem itaque minus dolorem sint. At aut quae quia nulla vel minus. Voluptatem labore distinctio omnis et magni porro recusandae. Harum aut ad cumque quis est ullam. Nihil quia officiis accusantium quidem. Aut doloribus nihil dolorum molestiae aut quaerat. Quo eos maiores ut perspiciatis blanditiis. Modi culpa sit quasi ea velit. Quibusdam et aut et iusto explicabo inventore.', 'https://picsum.photos/id/11/536/354', '1', 'Mr. Marcel Reichel', '2021-02-23 10:20:39', NULL, NULL),
('12', 'Magni eveniet odio totam velit tempore.', 'Cumque distinctio sed aliquid non et minima eos aliquam. Sed ipsa sed error doloribus perspiciatis esse. Et minima tempore saepe voluptatem excepturi laboriosam. Autem tenetur aut suscipit voluptatum consequatur fuga et autem. Et fugiat quos autem dolorum officiis. Unde est quos repellendus quia. Porro esse sint aliquid voluptates illo. Error provident voluptatem dignissimos tempore. Vitae velit ut at nihil. Harum reprehenderit non sunt quidem debitis laboriosam. Tenetur inventore aut consequuntur nisi quod tempora. Assumenda quae eum cupiditate impedit incidunt. Expedita quo voluptas et quo sed nisi. Voluptate dolores odio nisi debitis rerum sit.', 'https://picsum.photos/id/12/536/354', '3', 'Tanya Corwin', '2021-02-23 10:20:39', NULL, NULL),
('13', 'Assumenda earum quia earum dolores.', 'Qui eveniet eum fugit tempora. Similique a architecto modi iure facere omnis. Animi odit et vitae est labore voluptas ea dicta. Dignissimos omnis nemo totam aut. Et natus est sint qui. Nisi voluptates et quam quasi quo ut iste. Itaque explicabo nesciunt optio porro exercitationem similique exercitationem. Illum blanditiis provident quod deserunt. Velit eos amet magni atque. Dolorem eos nam sed ullam natus. Dolorem quasi accusamus numquam at autem aut quo. Nulla amet illum occaecati quia assumenda ipsum praesentium. Recusandae vitae quos id sed.', 'https://picsum.photos/id/13/536/354', '3', 'Edwardo Haag', '2021-02-23 10:20:39', NULL, NULL),
('14', 'Itaque ea tenetur deserunt.', 'Et ullam et vitae et quo et voluptas. Tempora maiores sint et recusandae vitae voluptatem non ut. Id modi omnis optio velit doloribus sapiente. Suscipit ut quo mollitia illum. Consequuntur doloribus iure maxime voluptate dolorem. Tempora et et mollitia. Nam exercitationem nemo quia accusantium. Nulla vero reprehenderit sunt. Ut qui incidunt reiciendis quis qui odio et. Id autem reprehenderit voluptatem et quia esse. A et modi tenetur ex iste maxime ut. Veniam facere hic aut quod. Voluptas molestiae vel velit voluptatem voluptatum inventore. Voluptas consequuntur rerum eveniet sed sunt nihil rerum. Ducimus omnis ut quis rerum sit maiores.', 'https://picsum.photos/id/14/536/354', '1', 'Alexandria Armstrong', '2021-02-23 10:20:39', NULL, NULL),
('15', 'Ex dolorem accusamus ullam veniam.', 'Iure et delectus tempora deserunt. Eum voluptate magnam et dolorum odio. Distinctio suscipit blanditiis dolore id a. Debitis ratione eum necessitatibus veniam quam. Consectetur tempora quo vero ut. Cupiditate vel aut est. Quia doloremque qui maiores laudantium animi fugiat ad. Voluptate nostrum recusandae non delectus. Omnis officia quasi deleniti illo deserunt ut sapiente. Soluta cum provident repellat magni. Molestias laborum quis officia architecto ipsam. Incidunt et saepe consectetur iste voluptate consectetur corrupti ea. Labore qui voluptate dolores excepturi. Dolor vel qui nihil impedit quo rem.', 'https://picsum.photos/id/15/536/354', '2', 'Ona Strosin', '2021-02-23 10:20:39', NULL, NULL),
('16', 'Modi necessitatibus sed fuga voluptates.', 'Dolor autem dolores eum ipsam eos. Quis magni velit dignissimos qui vitae magni debitis. Iusto architecto qui sed veniam modi dolores. Ipsum inventore distinctio velit aliquid quo et natus aut. Esse officiis excepturi repudiandae qui optio voluptatem. Magnam qui perspiciatis sed dignissimos omnis et. Est modi hic cum amet. Ea laudantium corporis animi consequuntur illo qui aut. Ducimus maxime eveniet sed omnis et. Corrupti est qui et voluptatem. Aperiam iusto neque qui eum soluta. Sit qui est dignissimos rerum. Quia iste et eos enim molestias esse. Pariatur officiis velit mollitia molestiae earum sunt eligendi. Et dolor aut in.', 'https://picsum.photos/id/16/536/354', '3', 'Terrence Raynor', '2021-02-23 10:20:39', NULL, NULL),
('17', 'Sed laborum placeat consequuntur harum et.', 'Velit quisquam corporis voluptas dolore. Qui quos doloribus blanditiis blanditiis. Modi sint cupiditate dicta repellat atque. Voluptas et odio sit et. Est laboriosam architecto pariatur ducimus vero molestias eligendi veritatis. Itaque dolor voluptas veniam blanditiis exercitationem autem. Quo eaque laboriosam voluptatibus temporibus aliquid. Eos unde provident labore. Maxime sapiente vitae omnis. Ipsum voluptas distinctio ducimus. Nesciunt aut necessitatibus perferendis. Ipsa enim eligendi et modi voluptates. Minus velit laborum repellat ea est. Tempore omnis quo sed dolor maxime voluptatum accusantium. Non dolor cum placeat non rem voluptas voluptatem.', 'https://picsum.photos/id/17/536/354', '3', 'Grover Bode I', '2021-02-23 10:20:39', NULL, NULL),
('18', 'Aut vel est vel eos.', 'Sunt aut aliquam fuga delectus adipisci. Dolor amet et ut officia vel atque nam. Temporibus repellat praesentium soluta rem minima. Esse aut eum sint. Et error expedita ullam provident doloribus. Dolorem nulla dolores quia sit qui cumque saepe. Soluta natus fugit aut est. Ut est voluptate dolores ad dicta earum expedita necessitatibus. Cum asperiores sed quia nobis in. At maxime at ut modi dignissimos quia. Ut eius illo dicta quia ullam. Ut ut aut tempora quia nihil eaque. Quia nostrum adipisci debitis perspiciatis soluta ea eos. Aut dolores accusantium quo facilis occaecati. Ut nesciunt perferendis expedita ut dolores sed. Velit enim cumque aut illo.', 'https://picsum.photos/id/18/536/354', '3', 'Manuel Metz', '2021-02-23 10:20:39', NULL, NULL),
('19', 'Atque reiciendis sequi quo sit sapiente.', 'Voluptas provident dolorem porro architecto molestiae ut. Harum nihil hic molestiae enim error ullam. Rerum sed id inventore cupiditate. Iusto sed explicabo nemo sapiente voluptate. Et nisi aut aut. Eius voluptas harum facere. Aut dolores ut quasi laborum modi corporis quis consequatur. Officiis fugit velit molestiae eum. Eaque cupiditate quia facere aut dolorem et doloremque. Soluta ea voluptates quis. Aut et dolor incidunt sit. Fuga minus consequatur veritatis accusamus incidunt atque dolores consequuntur. Quibusdam quidem dolor accusantium tempore cupiditate quibusdam. Et quos qui dignissimos sed quidem magni et.', 'https://picsum.photos/id/19/536/354', '3', 'Janae Crist', '2021-02-23 10:20:39', NULL, NULL),
('20', 'Consequuntur autem et ducimus qui.', 'Quis inventore laboriosam ut alias praesentium. Est esse ut autem eos. Deleniti ut repellat dolores facere veritatis. Expedita earum et sit doloribus. Laboriosam impedit qui molestiae unde. Recusandae eaque velit incidunt aliquam. Voluptatem autem sunt reprehenderit officia. Nihil iure nam nemo reprehenderit. Officiis fuga eaque voluptas dolore omnis possimus. Earum voluptates unde at sapiente dolorem fuga nam. Deleniti eos id iusto voluptatem enim. Corporis non unde vero et. Voluptatem veritatis omnis expedita possimus assumenda. Repellat rerum eaque autem voluptas et rerum quam.', 'https://picsum.photos/id/20/536/354', '3', 'Mustafa Hayes', '2021-02-23 10:20:39', NULL, NULL);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;