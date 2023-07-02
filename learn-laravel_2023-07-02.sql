# ************************************************************
# Sequel Ace SQL dump
# Version 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.33)
# Database: learn-laravel
# Generation Time: 2023-07-02 14:32:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contact_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_forms`;

CREATE TABLE `contact_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  `gender` tinyint(1) NOT NULL,
  `age` tinyint NOT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contact_forms` WRITE;
/*!40000 ALTER TABLE `contact_forms` DISABLE KEYS */;

INSERT INTO `contact_forms` (`id`, `name`, `title`, `email`, `url`, `gender`, `age`, `contact`, `created_at`, `updated_at`)
VALUES
	(1,'hoang','laravel','test@gmail.com','https://code2gio.com/',0,3,'test','2023-07-02 13:13:41','2023-07-02 13:13:41'),
	(2,'nga','react','test@gmail.com','https://hoang.code2gio.com/',1,2,'test','2023-07-02 13:19:45','2023-07-02 13:19:45');

/*!40000 ALTER TABLE `contact_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table hellos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hellos`;

CREATE TABLE `hellos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(5,'2023_07_01_113734_create_posts_table',1),
	(6,'2023_07_01_114003_create_hellos_table',1),
	(7,'2023_07_01_122202_create_products_table',1),
	(8,'2023_07_02_060522_create_contact_forms_table',2),
	(11,'2023_07_02_061604_add_title_to_contact_forms_table',3),
	(12,'2023_07_02_083856_create_tests_table',4);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `category`, `description`, `price`, `created_at`, `updated_at`)
VALUES
	(1,'qui','asperiores','Vero omnis sunt est pariatur est. Asperiores libero porro numquam rerum ea temporibus rerum. Reprehenderit culpa est autem est dolores aut. Repudiandae soluta aut necessitatibus perspiciatis.',43.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(2,'iusto','molestiae','Eos ducimus ipsam dolorem molestiae architecto quis. Omnis repellendus quae inventore aut id ut placeat. Natus reiciendis ut totam sint. Labore perferendis sit similique molestiae.',88.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(3,'quisquam','temporibus','Delectus repudiandae veritatis dolor aut culpa eius. Reiciendis nihil qui voluptatem rem inventore rerum. Velit et ipsum inventore reiciendis. Alias sed magni magni alias enim velit.',28.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(4,'similique','quia','Eaque praesentium possimus nulla fugiat at et magnam vel. Magni rerum totam vel sed et minima iste labore. Ut sapiente et velit facere est natus.',42.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(5,'nesciunt','cupiditate','Odit quis non qui vel aut odio. Nobis molestiae consectetur qui dolores corporis pariatur. Accusantium non velit ducimus non.',71.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(6,'non','aperiam','Repudiandae dolorem odit rerum atque voluptas. Rerum et fugiat consequatur. Inventore rerum occaecati ut. Eligendi voluptatem rerum modi quis labore in.',75.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(7,'illo','natus','Nisi perferendis voluptatibus deleniti reiciendis iure hic. Ut nisi et quas saepe. Ex omnis quis voluptate.',82.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(8,'hic','natus','Aliquam sed voluptas culpa. Qui numquam aut exercitationem et minima soluta similique. Sint autem quo quae quo fugiat nisi. Fugiat et at odit dignissimos repellat et.',34.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(9,'praesentium','neque','In sapiente ut quia sit nam voluptatum rerum. Repellat culpa quae vel dolores hic unde. Ut vel qui inventore. In id quia tenetur pariatur atque omnis.',22.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(10,'sed','ullam','Autem nam consequatur labore tenetur quia aut dicta. Sint hic aut non eaque. Eligendi fugit ipsam adipisci iste voluptas corporis eligendi.',91.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(11,'magnam','provident','Repellat quia error hic esse ut dolorem molestiae. Ullam saepe doloremque sint minima.',41.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(12,'numquam','qui','Minima occaecati porro error ipsam odio. Facere suscipit nobis sit velit amet et. Soluta necessitatibus repellat rerum iusto est ut sunt.',75.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(13,'maiores','harum','Et illo nemo aut assumenda. Aut et autem accusantium. Tempora dolores est id perspiciatis repudiandae pariatur rerum.',33.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(14,'laboriosam','est','Et ut in earum maxime quia voluptatibus consectetur. Numquam atque sed architecto. Dicta quia qui impedit harum omnis vero.',64.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(15,'provident','in','Voluptatibus eaque accusamus asperiores non fugiat fugiat esse. Alias et adipisci et harum enim sint. Qui natus aperiam alias quidem eaque magnam numquam. Eum inventore iure occaecati enim dolor.',61.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(16,'saepe','suscipit','Adipisci rerum numquam quibusdam cum. Non aut eos molestiae ut dolor architecto omnis. Occaecati aperiam eligendi impedit quod qui sint iste.',60.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(17,'officiis','esse','Sequi ut autem possimus eos adipisci. Sequi laborum beatae incidunt adipisci consequatur. Doloribus quia atque molestiae aut iusto ut quibusdam. Quaerat eveniet recusandae sunt tempora rerum porro.',12.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(18,'aliquam','voluptas','Optio assumenda quibusdam sit quidem consequatur illo. Quod esse esse esse corporis ratione nihil et. Debitis distinctio officia facilis odit porro facere aperiam.',86.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(19,'nostrum','velit','Aut dolore reiciendis voluptatem. Officia praesentium repellendus dolor illum qui. Similique incidunt sint voluptas veniam corporis. Similique illo quis fuga molestias est harum enim laboriosam.',87.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(20,'iure','commodi','Quia et adipisci eum neque consequatur tenetur. Velit occaecati sint sapiente sit et non. Dicta corporis corrupti dicta aut qui. Quaerat culpa maxime officiis qui aut consequatur.',10.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(21,'hic','porro','Ut pariatur at sunt tenetur labore voluptatum. Iusto mollitia tempore ut id aut. Quae inventore officia qui natus. Sed eos facere ratione non quia reiciendis.',42.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(22,'repudiandae','quae','Vitae enim asperiores deleniti recusandae deserunt non itaque. Ipsum qui officia sequi. Deleniti molestiae rerum aliquid quia.',6.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(23,'nobis','qui','Aliquam quia reprehenderit est sapiente. Id nemo quae molestiae voluptates sint doloribus. Aut modi quidem voluptate sit.',83.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(24,'voluptatum','et','Nostrum et modi atque et. Aut quisquam officia aut nulla suscipit voluptas laboriosam aut. Sit ratione veniam nihil sunt omnis deserunt quae.',67.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(25,'temporibus','omnis','Rerum eveniet quam corporis sapiente non commodi omnis adipisci. Nam at ut vitae doloribus vel. Molestiae animi est earum sit quae alias. Voluptatum eligendi dolores consequatur excepturi.',36.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(26,'dicta','dolore','Distinctio culpa et enim aut est repellat rerum non. Voluptatum et omnis animi quia enim sint. Beatae quis ut perferendis officiis qui. Et aspernatur nihil voluptatem.',0.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(27,'praesentium','pariatur','Vel odit dicta asperiores molestiae. Ipsam accusamus culpa quod occaecati eos aut ratione officiis.',99.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(28,'doloremque','quos','Quo voluptates debitis et beatae. Voluptatem eaque ex quia repudiandae. Quam reiciendis porro suscipit quo inventore sed. Consequuntur natus officia eos consequatur aut.',24.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(29,'fugiat','quia','Nobis et et recusandae molestiae nam. Voluptas consequatur voluptas ut aliquid sequi fuga. Odit occaecati quo rerum quod totam dignissimos.',11.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(30,'quia','ea','Cum et maxime quo. Sed iure eum quia. Eos omnis saepe modi nam saepe maxime nesciunt. Molestiae facere sed pariatur mollitia ipsum omnis qui.',65.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(31,'sed','cum','Aperiam eligendi eos rem laudantium harum in excepturi. Nihil officia sint vel officia. Nostrum hic blanditiis voluptatem est doloribus sapiente et. Saepe dolor quis nihil omnis.',60.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(32,'pariatur','ad','Nisi exercitationem qui sit sint et aliquam nostrum maiores. Laboriosam in illo odit repudiandae tempore ducimus consequatur. Est nobis quam vel ut quos.',75.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(33,'sed','sunt','Sint et rerum tempora nam. Cum nisi adipisci quod hic. Reiciendis est quisquam eaque mollitia. Qui cumque suscipit ut pariatur odio. Reprehenderit accusamus quo quaerat natus voluptas odit.',29.00,'2023-07-01 13:26:34','2023-07-01 13:26:34'),
	(34,'porro','incidunt','Deserunt repellendus placeat est et dolores et aut veritatis. Sed reprehenderit et reprehenderit voluptate amet ipsa. Illum qui consectetur atque sit. Modi non aut quaerat pariatur.',77.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(35,'doloremque','asperiores','Totam fugit dolor enim excepturi pariatur id. Natus molestiae soluta corrupti cupiditate aut quis. Qui saepe harum minima itaque beatae vel laudantium. Qui soluta tempora est totam unde.',31.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(36,'nostrum','nam','Labore consequatur minus facere quo. Eligendi corrupti facere earum et quaerat. Vitae reprehenderit assumenda inventore aliquam ut itaque et.',0.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(37,'minus','voluptatum','Nihil quia voluptatem nesciunt ab in vel et sed. Eius quam deleniti saepe. Repellendus asperiores reiciendis recusandae et dolore. Laboriosam ut reiciendis quo explicabo aliquid rerum eligendi.',73.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(38,'ipsum','sunt','Nostrum velit minus pariatur voluptatem. Non quo similique eum doloremque voluptatem non nemo minima.',50.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(39,'dolor','at','Rerum fugiat culpa vel vitae laborum voluptatem voluptatem. Ut nesciunt ullam aut fuga porro. Pariatur ab voluptatem qui voluptas eligendi excepturi. Quae mollitia et molestiae impedit quam.',40.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(40,'tempora','ea','Minus est aut sint eum voluptas sequi ipsum mollitia. Voluptates rerum accusantium iusto tempore aut porro a. Impedit ut magnam sapiente a iure.',69.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(41,'est','quasi','Beatae quis enim natus ut dolore enim ut. Delectus enim placeat quia voluptas. Non voluptatem nobis deserunt deleniti ea ea modi doloribus. Sunt iusto tempora quia et natus.',91.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(42,'praesentium','harum','Earum fuga aperiam dolores voluptates rerum beatae. In dicta provident tempora. Accusantium ut sed minima et minima. Quia est sit fugit animi.',49.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(43,'soluta','exercitationem','Aut facere voluptatem facere quisquam officia. Placeat non deserunt ut omnis et est magnam. Non voluptatibus quis vero eveniet. At quos voluptas et perspiciatis aut ipsam.',97.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(44,'sunt','ex','Doloremque est consequatur dolorem ex fugit sequi temporibus maxime. Velit sequi laudantium ratione consequuntur illum. Est voluptas in earum quidem velit ullam.',97.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(45,'et','officia','Velit et omnis exercitationem tempore aut omnis. Inventore delectus nulla eos.',5.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(46,'occaecati','iste','Est quo autem omnis nostrum pariatur quasi qui. Eligendi ut modi dolorum esse quia. Saepe non quasi ipsa molestiae aut.',35.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(47,'velit','sed','Fugiat quos reprehenderit aliquam atque sunt iste. Sapiente quo et est soluta. Voluptates sed rerum deleniti adipisci.',0.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(48,'ut','laudantium','Nihil eius quo aut. Adipisci voluptas explicabo est dicta id voluptatibus non. Vero accusantium iste maxime eum. Aut qui perferendis nemo voluptatem sed minus eligendi.',91.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(49,'iure','velit','Debitis voluptatem atque odit ut et doloremque. Tempore accusantium quas ut dolorum sed. Sed consequuntur qui commodi qui voluptas velit quam. Ad quia consequuntur quia sint sed quasi.',79.00,'2023-07-01 13:26:35','2023-07-01 13:26:35'),
	(50,'magni','perspiciatis','Ut totam velit vero maiores. Ratione velit et ullam non. Atque ipsum aliquid voluptas optio sint. Dolorem maiores optio iusto.',8.00,'2023-07-01 13:26:35','2023-07-01 13:26:35');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'hoang','hoang@nal.vn',NULL,'$2y$10$ZYpG3A/wJyra4yAMpRzSPenFFQiZiMFM8zobv1naDzTyv4LGi3QJy','wr7Egdxdgjbaljs0322i5SPPXqVUlu0Jl07ITyrDI5JWePEKOIX0NezK8a4f','2023-07-02 09:15:59','2023-07-02 09:15:59');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
