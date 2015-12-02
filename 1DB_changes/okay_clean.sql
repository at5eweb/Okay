# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.39
# Server OS:                    Win64
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2015-11-27 11:15:52
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table okaycms-git.s_banners
DROP TABLE IF EXISTS `s_banners`;
CREATE TABLE IF NOT EXISTS `s_banners` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `position` int(4) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `show_all_pages` tinyint(1) NOT NULL DEFAULT '0',
  `categories` varchar(200) NOT NULL DEFAULT '0',
  `pages` varchar(200) NOT NULL DEFAULT '0',
  `brands` varchar(200) NOT NULL DEFAULT '0',
  `products` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `visible` (`visible`),
  KEY `show_all_pages` (`show_all_pages`),
  KEY `category` (`categories`),
  KEY `pages` (`pages`),
  KEY `brands` (`brands`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_banners: 1 rows
DELETE FROM `s_banners`;
/*!40000 ALTER TABLE `s_banners` DISABLE KEYS */;
INSERT INTO `s_banners` (`id`, `name`, `description`, `position`, `visible`, `show_all_pages`, `categories`, `pages`, `brands`, `products`) VALUES
	(1, 'Главный баннер', '', 1, 1, 0, '0', '1', '0', '0');
/*!40000 ALTER TABLE `s_banners` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_banners_images
DROP TABLE IF EXISTS `s_banners_images`;
CREATE TABLE IF NOT EXISTS `s_banners_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `visible` (`visible`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_banners_images: 2 rows
DELETE FROM `s_banners_images`;
/*!40000 ALTER TABLE `s_banners_images` DISABLE KEYS */;
INSERT INTO `s_banners_images` (`id`, `banner_id`, `name`, `alt`, `title`, `description`, `url`, `image`, `position`, `visible`) VALUES
	(1, 1, '1', '', '', '', '', 'slide_1.jpg', 1, 1),
	(2, 1, '2', '', '', '', '', 'slide_2.jpg', 2, 1);
/*!40000 ALTER TABLE `s_banners_images` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_blog
DROP TABLE IF EXISTS `s_blog`;
CREATE TABLE IF NOT EXISTS `s_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `url` varchar(255) NOT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `annotation` text NOT NULL,
  `text` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(255) NOT NULL DEFAULT '',
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enabled` (`visible`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_blog: 1 rows
DELETE FROM `s_blog`;
/*!40000 ALTER TABLE `s_blog` DISABLE KEYS */;
INSERT INTO `s_blog` (`id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `image`, `last_modify`) VALUES
	(1, 'Преимущества OkayCMS', 'preimuschestva-okaycms', 'Преимущества OkayCMS', 'Преимущества OkayCMS', '', '', '<h2>Удобная панель управления</h2><p>- Удобный функционал для работы с категориями и товарами, возможность добавления изображений к товару перетягиванием мыши, разработана форма для легкого и быстрого добавления новых товаров.</p><p>- Быстрый экспорт товаров в ЯндексМаркет с возможностью гибкой настройки выгрузки.</p><p>- Мультиязычность. Возможность создать сайт сразу на нескольких языках с удобной системой перевода.</p><p>- Удобная работа с заказами, возможность присваивать различные статусы, метки и комментарии к заказам.</p><p>- Импорт/экспорт товаров в CSV формате</p><p>- Мультивалютность сайта. Задавать стоимость товара можно в разных валютах, а на сайте выводить в одной валюте</p><p>- Опционно для товаров, которых нет в наличии выводится надпись &laquo;Под заказ&raquo; или &laquo;Нет в наличии&raquo;</p><h2>SEO-оптимизация</h2><p>- Практичная, с точки зрения юзабилити, структура клиентского шаблона с учетом всех необходимых элементов для лучшего взаимодействия пользователей с сайтом.</p><p>- ЧПУ. Понятный для человека URL, формирующийся автоматически из названия, с возможностью ручного редактирования.</p><p>- Автоматическая генерация метатегов (title, description и keywords) для каждой страницы сайта с возможностью дальнейшего редактирования.</p><p>- Автоматическая генерация карты сайта (Sitemap.XML) со всеми необходимыми настройками (LastMod, Priority, Frequency). Обновляется автоматически.</p><p>- Микроразметка хлебных крошек для формирования расширенных сниппетов в поисковой выдаче.</p><p>- Оптимизированный SEO-фильтр для автоматического формирования уникальных страниц для низкочастотных запросов категорий и свойств или брендов товаров.</p><p>- Возможность автоматической генерации мета-тегов и описаний для товаров из определенной категории</p><p>- Автоматические генерируемые метатеги &nbsp;Alt и Title для изображений товаров</p><h2>Маркетинговые инструменты</h2><p>- Генерация акционных промо-кодов с возможностью задать различные условия</p><p>- Добавление и редактирование триггеров на фото товаров для привлечения внимания клиентов (Хиты продаж, Новинки, Акция итд)</p><p>- Встроенный функционал заказ обратного звонка с отображением всех заявок в админ. панели</p><p>- Сравнение товаров</p><p>- Добавление и просмотр избранных товаров для пользователя</p><p>- Практичная система управления баннерами, позволяющая задавать вывод определенных баннеров для разных страниц сайта.</p><p>- &nbsp;Форма подписки на e-mail рассылку для сбора email клиентской базы сайта.</p><p>- Рейтинг товаров</p><h2>Лёгкое изменение дизайна</h2><p>- Использование шаблонизатора Smarty</p><p>- Простая структура шаблонов</p><p>- Редактор шаблонов с подсветкой синтаксиса прямо в панели управления</p><p>- Полностью открытый исходный код</p>', 1, '2015-11-20 00:00:00', '3.png', '2015-11-19 14:14:31');
/*!40000 ALTER TABLE `s_blog` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_brands
DROP TABLE IF EXISTS `s_brands`;
CREATE TABLE IF NOT EXISTS `s_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `annotation` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_brands: 8 rows
DELETE FROM `s_brands`;
/*!40000 ALTER TABLE `s_brands` DISABLE KEYS */;
INSERT INTO `s_brands` (`id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `description`, `image`, `last_modify`) VALUES
	(1, 'Bosch', 'bosch', 'Bosch', 'Bosch', 'Bosch', '', '', 'bosch_new.jpg', '2015-11-24 13:15:15'),
	(2, 'Linksys', 'linksys', 'Linksys', 'Linksys', 'Linksys', '', '', 'linksys.png', '2015-11-16 13:10:20'),
	(3, 'Porsche Design', 'porschedesign', 'Porsche Design', 'Porsche Design', 'Porsche Design', '', '', 'porsche-design.jpg', '2015-11-20 13:09:36'),
	(4, 'Nokia', 'nokia', 'Nokia', 'Nokia', 'Nokia', '', '', 'nokia.jpg', '2015-11-16 13:10:30'),
	(5, 'Connect', 'connect', 'Connect', 'Connect', 'Connect', '<p>1 ajshfdjaks hdkladsfhkfdshlk asdhfklasj hflkasjdhf klasjdhf klashdfkashdf kashdfhkjfdjh sdaklsjdfh sadlkhf kashdf ahsdflk jashdfkl hsadlkfha slkdjhffdsahasdfh askdfh asdf asdf asdf</p>', '<p>2 ajshfdjaks hdkladsfhkfdshlk asdhfklasj hflkasjdhf klasjdhf klashdfkashdf kashdfhkjfdjh sdaklsjdfh sadlkhf kashdf ahsdflk jashdfkl hsadlkfha slkdjhffdsahasdfh askdfh asdf asdf asdf</p>', 'connect_1.jpg', '2015-11-24 13:42:11'),
	(6, 'Jabra', 'jabra', 'Jabra', 'Jabra', 'Jabra', '', '', 'jabra.jpg', '2015-11-16 13:10:11'),
	(7, 'Panasonic', 'panasonic', 'Panasonic', 'Panasonic', 'Panasonic', '', '', 'panasonic_new.jpg', '2015-11-16 13:12:54'),
	(8, 'Siemens', 'siemens', 'Siemens', 'Siemens', 'Siemens', '', '', 'siemens.jpg', '2015-11-16 13:10:53');
/*!40000 ALTER TABLE `s_brands` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_callbacks
DROP TABLE IF EXISTS `s_callbacks`;
CREATE TABLE IF NOT EXISTS `s_callbacks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_callbacks: 1 rows
DELETE FROM `s_callbacks`;
/*!40000 ALTER TABLE `s_callbacks` DISABLE KEYS */;
INSERT INTO `s_callbacks` (`id`, `date`, `name`, `phone`, `message`, `processed`) VALUES
	(1, '2015-11-19 11:18:53', 'Shut', '+30591234567', 'Don\'t worry be happy', 0);
/*!40000 ALTER TABLE `s_callbacks` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_categories
DROP TABLE IF EXISTS `s_categories`;
CREATE TABLE IF NOT EXISTS `s_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `yandex_name` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `annotation` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `external_id` varchar(36) NOT NULL,
  `level_depth` tinyint(1) NOT NULL DEFAULT '1',
  `auto_meta_title` varchar(255) NOT NULL,
  `auto_meta_keywords` varchar(255) NOT NULL,
  `auto_meta_desc` varchar(255) NOT NULL,
  `auto_body` text NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `parent_id` (`parent_id`),
  KEY `position` (`position`),
  KEY `visible` (`visible`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_categories: 24 rows
DELETE FROM `s_categories`;
/*!40000 ALTER TABLE `s_categories` DISABLE KEYS */;
INSERT INTO `s_categories` (`id`, `parent_id`, `name`, `yandex_name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `description`, `url`, `image`, `position`, `visible`, `external_id`, `level_depth`, `auto_meta_title`, `auto_meta_keywords`, `auto_meta_desc`, `auto_body`, `last_modify`) VALUES
	(1, 0, 'Бытовая техника для кухни', '', 'Бытовая техника для кухни', 'Бытовая техника для кухни', 'Бытовая техника для кухни', '', '', 'kitchen-appliances', '', 1, 1, '', 1, '', '', '', '', '2015-11-24 13:03:26'),
	(2, 0, 'Мебель и интерьер', '', 'Мебель и интерьер', 'Мебель и интерьер', 'Мебель и интерьер', '', '', 'furniture-and-interior', '', 2, 1, '', 1, '', '', '', '', '2015-11-16 12:33:04'),
	(3, 0, 'Строительные инструменты', '', 'Строительные инструменты', 'Строительные инструменты', 'Строительные инструменты', '', '', 'construction-tools', '', 3, 1, '', 1, '', '', '', '', '2015-11-16 12:33:43'),
	(4, 0, 'Телефония', '', 'Телефония', 'Телефония', 'Телефония', '', '', 'telephony', '', 4, 1, '', 1, '', '', '', '', '2015-11-16 12:35:07'),
	(5, 0, 'Маленькая', '', 'Маленькая', 'Маленькая', 'Маленькая', '', '', 'small', '', 5, 1, '', 1, '', '', '', '', '2015-11-16 12:35:28'),
	(6, 0, 'С переводом', '', 'С переводом', 'С переводом', 'С переводом', '', '', 'translated', '', 6, 1, '', 1, '', '', '', '', '2015-11-16 12:35:53'),
	(7, 0, 'Большая', '', 'Большая', 'Большая', 'Большая', '', '', 'big', '', 7, 1, '', 1, '', '', '', '', '2015-11-16 12:36:07'),
	(8, 0, 'Большие цены', '', 'Большие цены', 'Большие цены', 'Большие цены', '', '', 'big-prices', '', 8, 1, '', 1, '', '', '', '', '2015-11-16 12:36:51'),
	(9, 0, 'Нецелые цены', '', 'Нецелые цены', 'Нецелые цены', 'Нецелые цены', '', '', 'non-integer-prices', '', 9, 1, '', 1, '', '', '', '', '2015-11-16 12:37:55'),
	(10, 0, 'Три уровня вложенности', '', 'Три уровня вложенности', 'Три уровня вложенности', 'Три уровня вложенности', '', '', 'three-levels-of-nesting', '', 10, 1, '', 1, '', '', '', '', '2015-11-16 12:44:09'),
	(11, 10, 'второй уровень', '', 'второй уровень', 'второй уровень', 'второй уровень', '', '', 'second-level', '', 11, 1, '', 2, '', '', '', '', '2015-11-16 12:45:28'),
	(12, 11, 'третий уровень', '', 'третий уровень', 'третий уровень', 'третий уровень', '', '', 'third-level', '', 12, 1, '', 3, '', '', '', '', '2015-11-16 12:45:55'),
	(13, 0, 'Четыре уровня вложенности', '', 'Четыре уровня вложенности', 'Четыре уровня вложенности', 'Четыре уровня вложенности', '', '', 'four-levels-of-nesting', '', 13, 1, '', 1, '', '', '', '', '2015-11-16 12:46:18'),
	(14, 13, 'второй уровень вложенности', '', 'второй уровень вложенности', 'второй уровень вложенности', 'второй уровень вложенности', '', '', 'second-level-of-nesting', '', 14, 1, '', 2, '', '', '', '', '2015-11-16 12:46:56'),
	(15, 14, 'третий уровень вложенности', '', 'третий уровень вложенности', 'третий уровень вложенности', 'третий уровень вложенности', '', '', 'third-level-of-nesting', '', 15, 1, '', 3, '', '', '', '', '2015-11-16 12:47:25'),
	(16, 15, 'четвёртый уровень вложенности', '', 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', '', '', 'fourth-level-of-nesting', '', 16, 1, '', 4, '', '', '', '', '2015-11-16 12:48:20'),
	(17, 0, 'Пять уровней вложенности', '', 'Пять уровней вложенности', 'Пять уровней вложенности', 'Пять уровней вложенности', '', '', 'five-levels-of-nesting', '', 17, 1, '', 1, '', '', '', '', '2015-11-16 12:53:00'),
	(18, 17, 'Второй уровень вложенности', '', 'Второй уровень вложенности', 'Второй уровень вложенности', 'Второй уровень вложенности', '', '', 'vtoroj-uroven-vlozhennosti_2', '', 18, 1, '', 2, '', '', '', '', '2015-11-16 12:47:08'),
	(19, 18, 'Третий уровень вложенности', '', 'Третий уровень вложенности', 'Третий уровень вложенности', 'Третий уровень вложенности', '', '', 'tretij-uroven-vlozhennosti_2', '', 19, 1, '', 3, '', '', '', '', '2015-11-16 12:47:42'),
	(20, 19, 'Четвёртый уровень вложенности', '', 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', '', '', 'chetvertyj-uroven-vlozhennosti_2', '', 20, 1, '', 4, '', '', '', '', '2015-11-16 12:49:00'),
	(21, 20, 'Пятый уровень вложенности', '', 'Пятый уровень вложенности', 'Пятый уровень вложенности', 'Пятый уровень вложенности', '', '', 'fifth-level-of-nesting', '', 21, 1, '', 5, '', '', '', '', '2015-11-16 12:53:26'),
	(22, 0, 'Женская одежда', '', 'Женская одежда', 'Женская одежда', 'Женская одежда', '', '', 'womens-clothing', '', 22, 1, '', 1, '', '', '', '', '2015-11-16 12:53:45'),
	(23, 22, 'Нижнее бельё', '', 'Нижнее бельё', 'Нижнее бельё', 'Нижнее бельё', '', '', 'underwear', '', 23, 1, '', 2, '', '', '', '', '2015-11-24 13:20:32'),
	(24, 0, 'Детские товары', '', 'Детские товары', 'Детские товары', 'Детские товары', '', '', 'baby-products', '', 24, 1, '', 1, '', '', '', '', '2015-11-24 10:13:04');
/*!40000 ALTER TABLE `s_categories` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_categories_features
DROP TABLE IF EXISTS `s_categories_features`;
CREATE TABLE IF NOT EXISTS `s_categories_features` (
  `category_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`feature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_categories_features: 3 rows
DELETE FROM `s_categories_features`;
/*!40000 ALTER TABLE `s_categories_features` DISABLE KEYS */;
INSERT INTO `s_categories_features` (`category_id`, `feature_id`) VALUES
	(24, 1),
	(24, 2),
	(24, 3);
/*!40000 ALTER TABLE `s_categories_features` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_comments
DROP TABLE IF EXISTS `s_comments`;
CREATE TABLE IF NOT EXISTS `s_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `type` enum('product','blog') NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_id` (`object_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_comments: 1 rows
DELETE FROM `s_comments`;
/*!40000 ALTER TABLE `s_comments` DISABLE KEYS */;
INSERT INTO `s_comments` (`id`, `date`, `ip`, `object_id`, `name`, `text`, `type`, `approved`) VALUES
	(1, '2015-11-16 16:29:00', '178.215.175.49', 1, 'Сергей', 'Пользуюсь уже два года. Никаких замечаний.', 'product', 0);
/*!40000 ALTER TABLE `s_comments` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_coupons
DROP TABLE IF EXISTS `s_coupons`;
CREATE TABLE IF NOT EXISTS `s_coupons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(256) NOT NULL,
  `expire` timestamp NULL DEFAULT NULL,
  `type` enum('absolute','percentage') NOT NULL DEFAULT 'absolute',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `min_order_price` decimal(10,2) DEFAULT NULL,
  `single` int(1) NOT NULL DEFAULT '0',
  `usages` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_coupons: 1 rows
DELETE FROM `s_coupons`;
/*!40000 ALTER TABLE `s_coupons` DISABLE KEYS */;
INSERT INTO `s_coupons` (`id`, `code`, `expire`, `type`, `value`, `min_order_price`, `single`, `usages`) VALUES
	(1, 'OKAYCMS', NULL, 'percentage', 10.00, 0.00, 0, 0);
/*!40000 ALTER TABLE `s_coupons` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_currencies
DROP TABLE IF EXISTS `s_currencies`;
CREATE TABLE IF NOT EXISTS `s_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `sign` varchar(20) NOT NULL,
  `code` char(3) NOT NULL DEFAULT '',
  `rate_from` decimal(10,2) NOT NULL DEFAULT '1.00',
  `rate_to` decimal(10,2) NOT NULL DEFAULT '1.00',
  `cents` int(1) NOT NULL DEFAULT '2',
  `position` int(11) NOT NULL,
  `enabled` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_currencies: 3 rows
DELETE FROM `s_currencies`;
/*!40000 ALTER TABLE `s_currencies` DISABLE KEYS */;
INSERT INTO `s_currencies` (`id`, `name`, `sign`, `code`, `rate_from`, `rate_to`, `cents`, `position`, `enabled`) VALUES
	(2, 'рубли', 'руб', 'RUR', 8.13, 8.13, 0, 1, 1),
	(1, 'доллары', '$', 'USD', 1.00, 65.00, 2, 2, 1),
	(3, 'вебмани wmz', 'wmz', 'WMZ', 0.15, 8.13, 2, 3, 1);
/*!40000 ALTER TABLE `s_currencies` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_delivery
DROP TABLE IF EXISTS `s_delivery`;
CREATE TABLE IF NOT EXISTS `s_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `free_from` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `separate_payment` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_delivery: 2 rows
DELETE FROM `s_delivery`;
/*!40000 ALTER TABLE `s_delivery` DISABLE KEYS */;
INSERT INTO `s_delivery` (`id`, `name`, `description`, `free_from`, `price`, `enabled`, `position`, `separate_payment`) VALUES
	(1, 'Курьерская доставка по Москве ru', '<p><span>Курьерская доставка осуществляется на следующий день после оформления заказа, если товар есть в наличии. Курьерская доставка осуществляется в пределах Томска и Северска ежедневно с 10.00 до 21.00. Заказ на сумму свыше 300 рублей доставляется бесплатно.&nbsp;<br /><br />Стоимость бесплатной доставки раcсчитывается от суммы заказа с учтенной скидкой. В случае если сумма заказа после применения скидки менее 300р, осуществляется платная доставка.&nbsp;<br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</span></p>', 10833.55, 260.00, 1, 2, NULL),
	(2, 'Самовывоз', '<p>Удобный, бесплатный и быстрый способ получения заказа.</p><p>Адрес офиса: Адрес офиса: Москва, ул. Арбат, 1/3, офис 419</p>', 0.00, 0.00, 1, 3, NULL);
/*!40000 ALTER TABLE `s_delivery` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_delivery_payment
DROP TABLE IF EXISTS `s_delivery_payment`;
CREATE TABLE IF NOT EXISTS `s_delivery_payment` (
  `delivery_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  PRIMARY KEY (`delivery_id`,`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связка способом оплаты и способов доставки';

# Dumping data for table okaycms-git.s_delivery_payment: 20 rows
DELETE FROM `s_delivery_payment`;
/*!40000 ALTER TABLE `s_delivery_payment` DISABLE KEYS */;
INSERT INTO `s_delivery_payment` (`delivery_id`, `payment_method_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4);
/*!40000 ALTER TABLE `s_delivery_payment` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_features
DROP TABLE IF EXISTS `s_features`;
CREATE TABLE IF NOT EXISTS `s_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `in_filter` tinyint(1) DEFAULT NULL,
  `yandex` int(1) NOT NULL DEFAULT '1',
  `auto_name_id` varchar(64) NOT NULL DEFAULT '',
  `auto_value_id` varchar(64) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `in_filter` (`in_filter`),
  KEY `yandex` (`yandex`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_features: 3 rows
DELETE FROM `s_features`;
/*!40000 ALTER TABLE `s_features` DISABLE KEYS */;
INSERT INTO `s_features` (`id`, `name`, `position`, `in_filter`, `yandex`, `auto_name_id`, `auto_value_id`, `url`) VALUES
	(1, 'Возраст', 1, 1, 1, '', '', 'age'),
	(2, 'Материал', 2, 1, 1, '', '', 'material'),
	(3, 'Камера', 3, 1, 1, '', '', 'camera');
/*!40000 ALTER TABLE `s_features` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_feedbacks
DROP TABLE IF EXISTS `s_feedbacks`;
CREATE TABLE IF NOT EXISTS `s_feedbacks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_feedbacks: 0 rows
DELETE FROM `s_feedbacks`;
/*!40000 ALTER TABLE `s_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_feedbacks` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_groups
DROP TABLE IF EXISTS `s_groups`;
CREATE TABLE IF NOT EXISTS `s_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_groups: 1 rows
DELETE FROM `s_groups`;
/*!40000 ALTER TABLE `s_groups` DISABLE KEYS */;
INSERT INTO `s_groups` (`id`, `name`, `discount`) VALUES
	(1, 'Постоянный покупатель', 2.00);
/*!40000 ALTER TABLE `s_groups` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_images
DROP TABLE IF EXISTS `s_images`;
CREATE TABLE IF NOT EXISTS `s_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filename` (`filename`),
  KEY `product_id` (`product_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_images: 266 rows
DELETE FROM `s_images`;
/*!40000 ALTER TABLE `s_images` DISABLE KEYS */;
INSERT INTO `s_images` (`id`, `name`, `product_id`, `filename`, `position`) VALUES
	(1, '', 1, '92-162.jpg', 1),
	(2, '', 1, '92-163.jpg', 2),
	(3, '', 2, '93-164.jpg', 3),
	(4, '', 3, '98-179.jpg', 4),
	(5, '', 4, '99-180.jpg', 5),
	(6, '', 5, '100-181.jpg', 6),
	(7, '', 6, '101-182.jpg', 7),
	(8, '', 6, '101-183.jpg', 8),
	(9, '', 6, '101-184.jpg', 9),
	(10, '', 6, '101-185.jpg', 10),
	(11, '', 7, '102-186.jpg', 11),
	(12, '', 8, '103-187.jpg', 12),
	(13, '', 9, '104-188.jpg', 13),
	(14, '', 10, '105-189.jpg', 14),
	(15, '', 11, '106-190.jpg', 15),
	(16, '', 11, '106-191.jpg', 16),
	(17, '', 11, '106-192.jpg', 17),
	(18, '', 11, '106-195.jpg', 18),
	(19, '', 11, '106-193.jpg', 19),
	(20, '', 12, '107-196.jpg', 20),
	(21, '', 12, '107-197.jpg', 21),
	(22, '', 13, '108-198.jpg', 22),
	(23, '', 13, '108-199.jpg', 23),
	(24, '', 13, '108-200.jpg', 24),
	(25, '', 14, '109-201.jpg', 25),
	(26, '', 15, '110-202.jpg', 26),
	(27, '', 15, '110-203.jpg', 27),
	(28, '', 16, '111-204.jpg', 28),
	(29, '', 17, '14-27.jpg', 29),
	(30, '', 18, '15-28.jpg', 0),
	(31, '', 18, '15-29.jpg', 1),
	(32, '', 19, '24-50.jpg', 0),
	(33, '', 19, '24-51.jpg', 1),
	(34, '', 19, '24-52.jpg', 2),
	(35, '', 19, '24-53.jpg', 3),
	(36, '', 19, '24-54.jpg', 4),
	(37, '', 20, '36-81.jpg', 0),
	(38, '', 21, '43-94.jpg', 0),
	(39, '', 22, '41-92.jpg', 0),
	(40, '', 23, '61-112.jpg', 40),
	(41, '', 24, '71-125.jpg', 41),
	(42, '', 25, '80-142.jpg', 42),
	(43, '', 25, '80-143.jpg', 43),
	(44, '', 26, '72-126.jpg', 44),
	(45, '', 26, '72-127.jpg', 45),
	(46, '', 26, '72-128.jpg', 46),
	(47, '', 26, '72-129.jpg', 47),
	(48, '', 27, '3-5.jpg', 48),
	(49, '', 28, '8-18.jpg', 49),
	(50, '', 28, '8-19.jpg', 50),
	(51, '', 29, '16-30.jpg', 51),
	(52, '', 30, '17-31.jpg', 52),
	(53, '', 30, '17-32.jpg', 53),
	(54, '', 30, '17-33.jpg', 54),
	(55, '', 30, '17-34.jpg', 55),
	(56, '', 30, '17-35.jpg', 56),
	(57, '', 31, '10-21.jpg', 57),
	(58, '', 31, '10-22.jpg', 58),
	(59, '', 32, '6-13.jpg', 59),
	(60, '', 33, '27-59.jpg', 60),
	(61, '', 33, '27-60.jpg', 61),
	(62, '', 33, '27-61.jpg', 62),
	(63, '', 33, '27-62.jpg', 63),
	(64, '', 33, '27-63.jpg', 64),
	(65, '', 34, '35-80.jpg', 65),
	(66, '', 35, '40-88.jpg', 66),
	(67, '', 35, '40-89.jpg', 67),
	(68, '', 35, '40-90.jpg', 68),
	(69, '', 35, '40-91.jpg', 69),
	(70, '', 36, '42-93.jpg', 70),
	(71, '', 37, '49-101.jpg', 71),
	(72, '', 38, '47-98.jpg', 72),
	(73, '', 39, '53-105.jpg', 73),
	(74, '', 40, '65-116.jpg', 74),
	(75, '', 41, '62-113.jpg', 75),
	(76, '', 42, '60-111.jpg', 76),
	(77, '', 43, '63-114.jpg', 77),
	(78, '', 44, '58-110.jpg', 78),
	(79, '', 45, '54-106.jpg', 79),
	(80, '', 46, '77-137.jpg', 80),
	(81, '', 47, '81-144.jpg', 81),
	(82, '', 48, '86-151.jpg', 82),
	(83, '', 49, '73-130.jpg', 83),
	(84, '', 49, '73-131.jpg', 84),
	(85, '', 49, '73-132.jpg', 85),
	(86, '', 49, '73-133.jpg', 86),
	(87, '', 50, '84-148.jpg', 87),
	(88, '', 50, '84-149.jpg', 88),
	(89, '', 51, '85-150.jpg', 89),
	(90, '', 52, '79-141.jpg', 90),
	(91, '', 53, '75-135.jpg', 91),
	(92, '', 54, '19-40.jpg', 92),
	(93, '', 54, '19-41.jpg', 93),
	(94, '', 55, '1-2.jpg', 94),
	(95, '', 56, '13-26.jpg', 95),
	(96, '', 57, '33-78.jpg', 96),
	(97, '', 58, '39-87.jpg', 97),
	(98, '', 59, '46-97.jpg', 98),
	(99, '', 60, '67-118.jpg', 99),
	(100, '', 60, '67-119.jpg', 100),
	(101, '', 60, '67-120.jpg', 101),
	(102, '', 60, '67-121.jpg', 102),
	(103, '', 61, '68-122.jpg', 103),
	(104, '', 62, '69-123.jpg', 104),
	(105, '', 63, '76-136.jpg', 105),
	(106, '', 64, '9-20.jpg', 106),
	(107, '', 65, '20-38.jpg', 107),
	(108, '', 65, '20-39.jpg', 108),
	(109, '', 66, '4-6.jpg', 109),
	(110, '', 66, '4-7.jpg', 110),
	(111, '', 66, '4-8.jpg', 111),
	(112, '', 66, '4-9.jpg', 112),
	(113, '', 66, '4-10.jpg', 113),
	(114, '', 67, '2-3.jpg', 114),
	(115, '', 67, '2-4.jpg', 115),
	(116, '', 68, '29-67.jpg', 116),
	(117, '', 68, '29-68.jpg', 117),
	(118, '', 68, '29-69.jpg', 118),
	(119, '', 69, '26-58.jpg', 119),
	(120, '', 70, '37-82.jpg', 120),
	(121, '', 70, '37-83.jpg', 121),
	(122, '', 70, '37-84.jpg', 122),
	(123, '', 70, '37-85.jpg', 123),
	(124, '', 71, '48-99.jpg', 124),
	(125, '', 71, '48-100.jpg', 125),
	(126, '', 72, '25-56.jpg', 126),
	(127, '', 72, '25-57.jpg', 127),
	(128, '', 73, '22-46.jpg', 128),
	(129, '', 74, '38-86.jpg', 129),
	(130, '', 75, '52-104.jpg', 130),
	(131, '', 76, '55-107.jpg', 131),
	(132, '', 77, '57-109.jpg', 132),
	(133, '', 78, '82-145.jpg', 133),
	(134, '', 78, '82-146.jpg', 134),
	(135, '', 79, '89-154.jpg', 135),
	(136, '', 80, '91-156.jpg', 136),
	(137, '', 80, '91-157.jpg', 137),
	(138, '', 80, '91-158.jpg', 138),
	(139, '', 80, '91-159.jpg', 139),
	(140, '', 80, '91-160.jpg', 140),
	(141, '', 81, '5-12.jpg', 141),
	(142, '', 82, '7-14.jpg', 142),
	(143, '', 82, '7-15.jpg', 143),
	(144, '', 82, '7-16.jpg', 144),
	(145, '', 82, '7-17.jpg', 145),
	(146, '', 83, '11-23.jpg', 146),
	(147, '', 83, '11-24.jpg', 147),
	(148, '', 84, '12-25.jpg', 148),
	(149, '', 85, '18-37.jpg', 149),
	(150, '', 86, '21-42.jpg', 150),
	(151, '', 86, '21-43.jpg', 151),
	(152, '', 86, '21-44.jpg', 152),
	(153, '', 86, '21-45.jpg', 153),
	(154, '', 87, '34-79.jpg', 154),
	(155, '', 88, '31-73.jpg', 155),
	(156, '', 89, '28-65.jpg', 156),
	(157, '', 89, '28-66.jpg', 157),
	(158, '', 90, '30-70.jpg', 158),
	(159, '', 90, '30-71.jpg', 159),
	(160, '', 90, '30-72.jpg', 160),
	(161, '', 91, '44-95.jpg', 161),
	(162, '', 92, '45-96.jpg', 162),
	(163, '', 93, '50-102.jpg', 163),
	(164, '', 94, '51-103.jpg', 164),
	(165, '', 95, '56-108.jpg', 165),
	(166, '', 96, '64-115.jpg', 166),
	(167, '', 97, '66-117.jpg', 167),
	(168, '', 98, '70-124.jpg', 168),
	(169, '', 99, '74-134.jpg', 169),
	(170, '', 100, '78-138.jpg', 170),
	(171, '', 100, '78-139.jpg', 171),
	(172, '', 100, '78-140.jpg', 172),
	(173, '', 101, '88-153.jpg', 173),
	(174, '', 102, '83-147.jpg', 174),
	(175, '', 103, '87-152.jpg', 175),
	(176, '', 104, '90-155.jpg', 176),
	(177, '', 105, '115-208.jpg', 177),
	(178, '', 105, '115-209.jpg', 178),
	(179, '', 106, '116-210.jpg', 179),
	(180, '', 107, '117-211.jpg', 180),
	(181, '', 108, '114-207.jpg', 181),
	(182, '', 109, '112-205.jpg', 182),
	(183, '', 110, '113-206.jpg', 183),
	(184, '', 111, '126-221.jpg', 184),
	(185, '', 112, '124-218.jpg', 185),
	(186, '', 112, '124-219.jpg', 186),
	(187, '', 113, '125-220.jpg', 187),
	(188, '', 114, '120-214.jpg', 188),
	(189, '', 115, '121-215.jpg', 189),
	(190, '', 116, '122-216.jpg', 190),
	(191, '', 117, '123-217.jpg', 191),
	(192, '', 118, '118-212.jpg', 192),
	(193, '', 119, '119-213.jpg', 193),
	(194, '', 120, '136-236.jpg', 194),
	(195, '', 120, '136-237.jpg', 195),
	(196, '', 120, '136-238.jpg', 196),
	(197, '', 120, '136-239.jpg', 197),
	(198, '', 120, '136-240.jpg', 198),
	(199, '', 121, '137-242.jpg', 199),
	(200, '', 121, '137-243.jpg', 200),
	(201, '', 121, '137-244.jpg', 201),
	(202, '', 121, '137-245.jpg', 202),
	(203, '', 121, '137-246.jpg', 203),
	(204, '', 122, '134-232.jpg', 204),
	(205, '', 122, '134-233.jpg', 205),
	(206, '', 122, '134-234.jpg', 206),
	(207, '', 123, '135-235.jpg', 207),
	(208, '', 124, '131-229.jpg', 208),
	(209, '', 125, '132-230.jpg', 209),
	(210, '', 126, '133-231.jpg', 210),
	(211, '', 127, '129-227.jpg', 211),
	(212, '', 128, '130-228.jpg', 212),
	(213, '', 129, '127-222.jpg', 213),
	(214, '', 129, '127-223.jpg', 214),
	(215, '', 129, '127-224.jpg', 215),
	(216, '', 130, '128-225.jpg', 216),
	(217, '', 130, '128-226.jpg', 217),
	(218, '', 131, '143-260.jpg', 218),
	(219, '', 131, '143-261.jpg', 219),
	(220, '', 131, '143-262.jpg', 220),
	(221, '', 131, '143-263.jpg', 221),
	(222, '', 132, '144-264.jpg', 222),
	(223, '', 132, '144-265.jpg', 223),
	(224, '', 132, '144-266.jpg', 224),
	(225, '', 132, '144-267.jpg', 225),
	(226, '', 133, '145-268.jpg', 226),
	(227, '', 133, '145-269.jpg', 227),
	(228, '', 133, '145-270.jpg', 228),
	(229, '', 133, '145-271.jpg', 229),
	(230, '', 134, '146-272.jpg', 230),
	(231, '', 134, '146-273.jpg', 231),
	(232, '', 134, '146-274.jpg', 232),
	(233, '', 134, '146-275.jpg', 233),
	(234, '', 135, '147-276.jpg', 234),
	(235, '', 135, '147-277.jpg', 235),
	(236, '', 135, '147-278.jpg', 236),
	(237, '', 136, '148-279.jpg', 237),
	(238, '', 136, '148-280.jpg', 238),
	(239, '', 136, '148-281.jpg', 239),
	(240, '', 136, '148-282.jpg', 240),
	(241, '', 136, '148-283.jpg', 241),
	(242, '', 137, '149-284.jpg', 242),
	(243, '', 137, '149-285.jpg', 243),
	(244, '', 137, '149-286.jpg', 244),
	(245, '', 138, '150-287.jpg', 0),
	(246, '', 139, '151-288.jpg', 246),
	(247, '', 140, '152-289.jpg', 247),
	(248, '', 141, '153-290.jpg', 0),
	(249, '', 142, '97-174.jpg', 249),
	(250, '', 142, '97-175.jpg', 250),
	(251, '', 142, '97-177.jpg', 251),
	(252, '', 142, '97-178.jpg', 252),
	(253, '', 143, '96-173.jpg', 253),
	(254, '', 144, '95-172.jpg', 254),
	(255, '', 145, '23-47.jpg', 0),
	(256, '', 145, '23-48.jpg', 1),
	(257, '', 145, '23-49.jpg', 2),
	(258, '', 146, '32-74.jpg', 0),
	(259, '', 146, '32-75.jpg', 1),
	(260, '', 146, '32-76.jpg', 2),
	(261, '', 146, '32-77.jpg', 3),
	(262, '', 147, '94-165.jpg', 0),
	(263, '', 147, '94-166.jpg', 1),
	(264, '', 147, '94-167.jpg', 2),
	(265, '', 147, '94-169.jpg', 3),
	(266, '', 147, '94-170.jpg', 4);
/*!40000 ALTER TABLE `s_images` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_labels
DROP TABLE IF EXISTS `s_labels`;
CREATE TABLE IF NOT EXISTS `s_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(6) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_labels: 2 rows
DELETE FROM `s_labels`;
/*!40000 ALTER TABLE `s_labels` DISABLE KEYS */;
INSERT INTO `s_labels` (`id`, `name`, `color`, `position`) VALUES
	(1, 'перезвонить', 'ff00ff', 4),
	(2, 'ожидается товар', '00d5fa', 5);
/*!40000 ALTER TABLE `s_labels` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_languages
DROP TABLE IF EXISTS `s_languages`;
CREATE TABLE IF NOT EXISTS `s_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(10) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_languages: 3 rows
DELETE FROM `s_languages`;
/*!40000 ALTER TABLE `s_languages` DISABLE KEYS */;
INSERT INTO `s_languages` (`id`, `name`, `label`, `is_default`, `enabled`, `position`) VALUES
	(1, 'Русский', 'ru', 0, 1, 1),
	(2, 'Английский', 'en', 0, 1, 2),
	(3, 'Украинский', 'uk', 0, 0, 3);
/*!40000 ALTER TABLE `s_languages` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_banners_images
DROP TABLE IF EXISTS `s_lang_banners_images`;
CREATE TABLE IF NOT EXISTS `s_lang_banners_images` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `banner_image_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`,`banner_image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_banners_images: 6 rows
DELETE FROM `s_lang_banners_images`;
/*!40000 ALTER TABLE `s_lang_banners_images` DISABLE KEYS */;
INSERT INTO `s_lang_banners_images` (`lang_id`, `lang_label`, `banner_image_id`, `name`, `alt`, `title`, `description`, `url`) VALUES
	(1, '', 1, '1', '', '', '', ''),
	(2, '', 1, '1', '', '', '', ''),
	(3, '', 1, '1', '', '', '', ''),
	(1, '', 2, '2', '', '', '', ''),
	(2, '', 2, '2', '', '', '', ''),
	(3, '', 2, '2', '', '', '', '');
/*!40000 ALTER TABLE `s_lang_banners_images` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_blog
DROP TABLE IF EXISTS `s_lang_blog`;
CREATE TABLE IF NOT EXISTS `s_lang_blog` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `annotation` text NOT NULL,
  `text` text NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_blog: 3 rows
DELETE FROM `s_lang_blog`;
/*!40000 ALTER TABLE `s_lang_blog` DISABLE KEYS */;
INSERT INTO `s_lang_blog` (`lang_id`, `lang_label`, `blog_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`) VALUES
	(1, 'ru', 1, 'Преимущества OkayCMS', 'Преимущества OkayCMS', 'Преимущества OkayCMS', '', '', '<h2>Удобная панель управления</h2><p>- Удобный функционал для работы с категориями и товарами, возможность добавления изображений к товару перетягиванием мыши, разработана форма для легкого и быстрого добавления новых товаров.</p><p>- Быстрый экспорт товаров в ЯндексМаркет с возможностью гибкой настройки выгрузки.</p><p>- Мультиязычность. Возможность создать сайт сразу на нескольких языках с удобной системой перевода.</p><p>- Удобная работа с заказами, возможность присваивать различные статусы, метки и комментарии к заказам.</p><p>- Импорт/экспорт товаров в CSV формате</p><p>- Мультивалютность сайта. Задавать стоимость товара можно в разных валютах, а на сайте выводить в одной валюте</p><p>- Опционно для товаров, которых нет в наличии выводится надпись &laquo;Под заказ&raquo; или &laquo;Нет в наличии&raquo;</p><h2>SEO-оптимизация</h2><p>- Практичная, с точки зрения юзабилити, структура клиентского шаблона с учетом всех необходимых элементов для лучшего взаимодействия пользователей с сайтом.</p><p>- ЧПУ. Понятный для человека URL, формирующийся автоматически из названия, с возможностью ручного редактирования.</p><p>- Автоматическая генерация метатегов (title, description и keywords) для каждой страницы сайта с возможностью дальнейшего редактирования.</p><p>- Автоматическая генерация карты сайта (Sitemap.XML) со всеми необходимыми настройками (LastMod, Priority, Frequency). Обновляется автоматически.</p><p>- Микроразметка хлебных крошек для формирования расширенных сниппетов в поисковой выдаче.</p><p>- Оптимизированный SEO-фильтр для автоматического формирования уникальных страниц для низкочастотных запросов категорий и свойств или брендов товаров.</p><p>- Возможность автоматической генерации мета-тегов и описаний для товаров из определенной категории</p><p>- Автоматические генерируемые метатеги &nbsp;Alt и Title для изображений товаров</p><h2>Маркетинговые инструменты</h2><p>- Генерация акционных промо-кодов с возможностью задать различные условия</p><p>- Добавление и редактирование триггеров на фото товаров для привлечения внимания клиентов (Хиты продаж, Новинки, Акция итд)</p><p>- Встроенный функционал заказ обратного звонка с отображением всех заявок в админ. панели</p><p>- Сравнение товаров</p><p>- Добавление и просмотр избранных товаров для пользователя</p><p>- Практичная система управления баннерами, позволяющая задавать вывод определенных баннеров для разных страниц сайта.</p><p>- &nbsp;Форма подписки на e-mail рассылку для сбора email клиентской базы сайта.</p><p>- Рейтинг товаров</p><h2>Лёгкое изменение дизайна</h2><p>- Использование шаблонизатора Smarty</p><p>- Простая структура шаблонов</p><p>- Редактор шаблонов с подсветкой синтаксиса прямо в панели управления</p><p>- Полностью открытый исходный код</p>'),
	(2, 'en', 1, 'Advantages of OkayCMS', 'Advantages of OkayCMS', 'Advantages of OkayCMS', '', '', '<h2>Удобная панель управления</h2><p>- Удобный функционал для работы с категориями и товарами, возможность добавления изображений к товару перетягиванием мыши, разработана форма для легкого и быстрого добавления новых товаров.</p><p>- Быстрый экспорт товаров в ЯндексМаркет с возможностью гибкой настройки выгрузки.</p><p>- Мультиязычность. Возможность создать сайт сразу на нескольких языках с удобной системой перевода.</p><p>- Удобная работа с заказами, возможность присваивать различные статусы, метки и комментарии к заказам.</p><p>- Импорт/экспорт товаров в CSV формате</p><p>- Мультивалютность сайта. Задавать стоимость товара можно в разных валютах, а на сайте выводить в одной валюте</p><p>- Опционно для товаров, которых нет в наличии выводится надпись &laquo;Под заказ&raquo; или &laquo;Нет в наличии&raquo;</p><h2>SEO-оптимизация</h2><p>- Практичная, с точки зрения юзабилити, структура клиентского шаблона с учетом всех необходимых элементов для лучшего взаимодействия пользователей с сайтом.</p><p>- ЧПУ. Понятный для человека URL, формирующийся автоматически из названия, с возможностью ручного редактирования.</p><p>- Автоматическая генерация метатегов (title, description и keywords) для каждой страницы сайта с возможностью дальнейшего редактирования.</p><p>- Автоматическая генерация карты сайта (Sitemap.XML) со всеми необходимыми настройками (LastMod, Priority, Frequency). Обновляется автоматически.</p><p>- Микроразметка хлебных крошек для формирования расширенных сниппетов в поисковой выдаче.</p><p>- Оптимизированный SEO-фильтр для автоматического формирования уникальных страниц для низкочастотных запросов категорий и свойств или брендов товаров.</p><p>- Возможность автоматической генерации мета-тегов и описаний для товаров из определенной категории</p><p>- Автоматические генерируемые метатеги &nbsp;Alt и Title для изображений товаров</p><h2>Маркетинговые инструменты</h2><p>- Генерация акционных промо-кодов с возможностью задать различные условия</p><p>- Добавление и редактирование триггеров на фото товаров для привлечения внимания клиентов (Хиты продаж, Новинки, Акция итд)</p><p>- Встроенный функционал заказ обратного звонка с отображением всех заявок в админ. панели</p><p>- Сравнение товаров</p><p>- Добавление и просмотр избранных товаров для пользователя</p><p>- Практичная система управления баннерами, позволяющая задавать вывод определенных баннеров для разных страниц сайта.</p><p>- &nbsp;Форма подписки на e-mail рассылку для сбора email клиентской базы сайта.</p><p>- Рейтинг товаров</p><h2>Лёгкое изменение дизайна</h2><p>- Использование шаблонизатора Smarty</p><p>- Простая структура шаблонов</p><p>- Редактор шаблонов с подсветкой синтаксиса прямо в панели управления</p><p>- Полностью открытый исходный код</p>'),
	(3, 'uk', 1, 'Что нового в этой версии OkayCMS uk', 'Что нового в этой версии OkayCMS uk', 'Что нового в этой версии OkayCMS uk', '', '', '<p>&nbsp;</p><div><p>Сортировка товаров и других списков перетаскиванием, в том числе перетаскивание в другую категорию или бренд<br />Указание "бесконечного" количество товара на складе<br />Акционная цена (указание старой цены товара)<br />Авторесайз изображений imagick<br />Поддержка jpg, png и gif, в том сисле с анимацией и прозрачностью<br />Водяной знак для изображений<br />Модерация комментариев к товарам</p><h2>Снаружи</h2><p>Аяксовая корзина<br />Фильтр товаров по характеристикам с учетом существования товаров<br />Сортировка товаров по цене и названию</p><h2>Заказы</h2><p>Полное редактирование заказов<br />Примечания администратора к заказам<br />Возможность не включать в заказ стоимость доставки<br />Статистика заказов по дням</p><h2>Блог</h2><p>Блог вместо статей и новостей<br />Комментарии к записям в блоге<br />Модерация комментариев к записям в блоге</p><h2>Импорт</h2><p>Импорт характеристик товаров<br />Импорт изображений с другого сервера<br />Снято ограничение на объем импортируемого файла (теперь ограничение только в настройках сервера)</p><h2>Экспорт</h2><p>Экспорт характеристик товаров<br />Снято ограничение на объем экспорта</p><h2>Редактирование шаблонов</h2><p>Сохранение изменений без перезагрузки страницы<br />Размер изображений задаётся на месте их вывода в шаблоне</p><h2>Валюты</h2><p>Указание формата валют и возможность округления до рублей</p><h2>1C</h2><p>Синхронизация с 1С (товары и заказы)</p></div><p>&nbsp;</p>');
/*!40000 ALTER TABLE `s_lang_blog` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_brands
DROP TABLE IF EXISTS `s_lang_brands`;
CREATE TABLE IF NOT EXISTS `s_lang_brands` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `annotation` text NOT NULL,
  `description` text NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_brands: 24 rows
DELETE FROM `s_lang_brands`;
/*!40000 ALTER TABLE `s_lang_brands` DISABLE KEYS */;
INSERT INTO `s_lang_brands` (`lang_id`, `lang_label`, `brand_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `description`) VALUES
	(1, '', 8, 'Siemens', 'Siemens', 'Siemens', 'Siemens', '', ''),
	(2, '', 8, 'Siemens', 'Siemens', 'Siemens', 'Siemens', '', ''),
	(3, '', 8, 'Siemens', 'Siemens', 'Siemens', 'Siemens', '', ''),
	(2, '', 4, 'Nokia', 'Nokia', 'Nokia', 'Nokia', '', ''),
	(3, '', 4, 'Nokia', 'Nokia', 'Nokia', 'Nokia', '', ''),
	(1, '', 5, 'Connect', 'Connect', 'Connect', 'Connect', '<p>1 ajshfdjaks hdkladsfhkfdshlk asdhfklasj hflkasjdhf klasjdhf klashdfkashdf kashdfhkjfdjh sdaklsjdfh sadlkhf kashdf ahsdflk jashdfkl hsadlkfha slkdjhffdsahasdfh askdfh asdf asdf asdf</p>', '<p>2 ajshfdjaks hdkladsfhkfdshlk asdhfklasj hflkasjdhf klasjdhf klashdfkashdf kashdfhkjfdjh sdaklsjdfh sadlkhf kashdf ahsdflk jashdfkl hsadlkfha slkdjhffdsahasdfh askdfh asdf asdf asdf</p>'),
	(2, '', 5, 'Connect', 'Connect', 'Connect', 'Connect', '', ''),
	(3, '', 5, 'Connect', 'Connect', 'Connect', 'Connect', '', ''),
	(1, '', 6, 'Jabra', 'Jabra', 'Jabra', 'Jabra', '', ''),
	(2, '', 6, 'Jabra', 'Jabra', 'Jabra', 'Jabra', '', ''),
	(3, '', 6, 'Jabra', 'Jabra', 'Jabra', 'Jabra', '', ''),
	(1, '', 7, 'Panasonic', 'Panasonic', 'Panasonic', 'Panasonic', '', ''),
	(2, '', 7, 'Panasonic', 'Panasonic', 'Panasonic', 'Panasonic', '', ''),
	(3, '', 7, 'Panasonic', 'Panasonic', 'Panasonic', 'Panasonic', '', ''),
	(3, '', 1, 'Bosch', 'Bosch', 'Bosch', 'Bosch', '', ''),
	(1, '', 2, 'Linksys', 'Linksys', 'Linksys', 'Linksys', '', ''),
	(2, '', 2, 'Linksys', 'Linksys', 'Linksys', 'Linksys', '', ''),
	(3, '', 2, 'Linksys', 'Linksys', 'Linksys', 'Linksys', '', ''),
	(1, '', 3, 'Porsche Design', 'Porsche Design', 'Porsche Design', 'Porsche Design', '', ''),
	(2, '', 3, 'Porsche Design', 'Porsche Design', 'Porsche Design', 'Porsche Design', '', ''),
	(3, '', 3, 'Porsche Design', 'Porsche Design', 'Porsche Design', 'Porsche Design', '', ''),
	(1, '', 4, 'Nokia', 'Nokia', 'Nokia', 'Nokia', '', ''),
	(1, '', 1, 'Bosch', 'Bosch', 'Bosch', 'Bosch', '', ''),
	(2, '', 1, 'Bosch', 'Bosch', 'Bosch', 'Bosch', '', '');
/*!40000 ALTER TABLE `s_lang_brands` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_categories
DROP TABLE IF EXISTS `s_lang_categories`;
CREATE TABLE IF NOT EXISTS `s_lang_categories` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `annotation` text NOT NULL,
  `description` text NOT NULL,
  `auto_meta_title` varchar(255) NOT NULL,
  `auto_meta_keywords` varchar(255) NOT NULL,
  `auto_meta_desc` varchar(255) NOT NULL,
  `auto_body` text NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_categories: 72 rows
DELETE FROM `s_lang_categories`;
/*!40000 ALTER TABLE `s_lang_categories` DISABLE KEYS */;
INSERT INTO `s_lang_categories` (`lang_id`, `lang_label`, `category_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `description`, `auto_meta_title`, `auto_meta_keywords`, `auto_meta_desc`, `auto_body`) VALUES
	(1, '', 3, 'Строительные инструменты', 'Строительные инструменты', 'Строительные инструменты', 'Строительные инструменты', '', '', '', '', '', ''),
	(3, '', 2, 'Мебель и интерьер', 'Мебель и интерьер', 'Мебель и интерьер', 'Мебель и интерьер', '', '', '', '', '', ''),
	(2, '', 2, 'Furniture and interior', 'Furniture and interior', 'Furniture and interior', 'Furniture and interior', '', '', '', '', '', ''),
	(1, '', 2, 'Мебель и интерьер', 'Мебель и интерьер', 'Мебель и интерьер', 'Мебель и интерьер', '', '', '', '', '', ''),
	(3, '', 1, 'Бытовая техника для кухни', 'Бытовая техника для кухни', 'Бытовая техника для кухни', 'Бытовая техника для кухни', '', '', '', '', '', ''),
	(2, '', 1, 'Kitchen appliances', 'Kitchen appliances', 'Kitchen appliances', 'Kitchen appliances', '', '', '', '', '', ''),
	(1, '', 1, 'Бытовая техника для кухни', 'Бытовая техника для кухни', 'Бытовая техника для кухни', 'Бытовая техника для кухни', '', '', '', '', '', ''),
	(2, '', 3, 'Construction tools', 'Construction tools', 'Construction tools', 'Construction tools', '', '', '', '', '', ''),
	(3, '', 3, 'Строительные инструменты', 'Строительные инструменты', 'Строительные инструменты', 'Строительные инструменты', '', '', '', '', '', ''),
	(1, '', 4, 'Телефония', 'Телефония', 'Телефония', 'Телефония', '', '', '', '', '', ''),
	(2, '', 4, 'Telephony', 'Telephony', 'Telephony', 'Telephony', '', '', '', '', '', ''),
	(3, '', 4, 'Телефония', 'Телефония', 'Телефония', 'Телефония', '', '', '', '', '', ''),
	(1, '', 5, 'Маленькая', 'Маленькая', 'Маленькая', 'Маленькая', '', '', '', '', '', ''),
	(2, '', 5, 'Small', 'Small', 'Small', 'Small', '', '', '', '', '', ''),
	(3, '', 5, 'Маленькая', 'Маленькая', 'Маленькая', 'Маленькая', '', '', '', '', '', ''),
	(1, '', 6, 'С переводом', 'С переводом', 'С переводом', 'С переводом', '', '', '', '', '', ''),
	(2, '', 6, 'Translated', 'Translated', 'Translated', 'Translated', '', '', '', '', '', ''),
	(3, '', 6, 'С переводом', 'С переводом', 'С переводом', 'С переводом', '', '', '', '', '', ''),
	(1, '', 7, 'Большая', 'Большая', 'Большая', 'Большая', '', '', '', '', '', ''),
	(2, '', 7, 'Big', 'Big', 'Big', 'Big', '', '', '', '', '', ''),
	(3, '', 7, 'Большая', 'Большая', 'Большая', 'Большая', '', '', '', '', '', ''),
	(1, '', 8, 'Большие цены', 'Большие цены', 'Большие цены', 'Большие цены', '', '', '', '', '', ''),
	(2, '', 8, 'Big prices', 'Big prices', 'Big prices', 'Big prices', '', '', '', '', '', ''),
	(3, '', 8, 'Большие цены', 'Большие цены', 'Большие цены', 'Большие цены', '', '', '', '', '', ''),
	(1, '', 9, 'Нецелые цены', 'Нецелые цены', 'Нецелые цены', 'Нецелые цены', '', '', '', '', '', ''),
	(2, '', 9, 'Non-integer prices', 'Non-integer prices', 'Non-integer prices', 'Non-integer prices', '', '', '', '', '', ''),
	(3, '', 9, 'Нецелые цены', 'Нецелые цены', 'Нецелые цены', 'Нецелые цены', '', '', '', '', '', ''),
	(1, '', 10, 'Три уровня вложенности', 'Три уровня вложенности', 'Три уровня вложенности', 'Три уровня вложенности', '', '', '', '', '', ''),
	(2, '', 10, 'Three levels of nesting', 'Three levels of nesting', 'Three levels of nesting', 'Three levels of nesting', '', '', '', '', '', ''),
	(3, '', 10, 'Три уровня вложенности', 'Три уровня вложенности', 'Три уровня вложенности', 'Три уровня вложенности', '', '', '', '', '', ''),
	(1, '', 11, 'второй уровень', 'второй уровень', 'второй уровень', 'второй уровень', '', '', '', '', '', ''),
	(2, '', 11, 'Second level', 'Second level', 'Second level', 'Second level', '', '', '', '', '', ''),
	(3, '', 11, 'второй уровень', 'второй уровень', 'второй уровень', 'второй уровень', '', '', '', '', '', ''),
	(1, '', 12, 'третий уровень', 'третий уровень', 'третий уровень', 'третий уровень', '', '', '', '', '', ''),
	(2, '', 12, 'Third level', 'Third level', 'Third level', 'Third level', '', '', '', '', '', ''),
	(3, '', 12, 'третий уровень', 'третий уровень', 'третий уровень', 'третий уровень', '', '', '', '', '', ''),
	(1, '', 13, 'Четыре уровня вложенности', 'Четыре уровня вложенности', 'Четыре уровня вложенности', 'Четыре уровня вложенности', '', '', '', '', '', ''),
	(2, '', 13, 'Four levels of nesting', 'Four levels of nesting', 'Four levels of nesting', 'Four levels of nesting', '', '', '', '', '', ''),
	(3, '', 13, 'Четыре уровня вложенности', 'Четыре уровня вложенности', 'Четыре уровня вложенности', 'Четыре уровня вложенности', '', '', '', '', '', ''),
	(1, '', 14, 'второй уровень вложенности', 'второй уровень вложенности', 'второй уровень вложенности', 'второй уровень вложенности', '', '', '', '', '', ''),
	(2, '', 14, 'second level of nesting', 'second level of nesting', 'second level of nesting', 'Second level of nesting', '', '', '', '', '', ''),
	(3, '', 14, 'второй уровень вложенности', 'второй уровень вложенности', 'второй уровень вложенности', 'второй уровень вложенности', '', '', '', '', '', ''),
	(1, '', 15, 'третий уровень вложенности', 'третий уровень вложенности', 'третий уровень вложенности', 'третий уровень вложенности', '', '', '', '', '', ''),
	(2, '', 15, 'third level of nesting', 'third level of nesting', 'third level of nesting', 'third level of nesting', '', '', '', '', '', ''),
	(3, '', 15, 'третий уровень вложенности', 'третий уровень вложенности', 'третий уровень вложенности', 'третий уровень вложенности', '', '', '', '', '', ''),
	(1, '', 16, 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', '', '', '', '', '', ''),
	(2, '', 16, 'fourth level of nesting', 'fourth level of nesting', 'fourth level of nesting', 'fourth level of nesting', '', '', '', '', '', ''),
	(3, '', 16, 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', 'четвёртый уровень вложенности', '', '', '', '', '', ''),
	(1, '', 17, 'Пять уровней вложенности', 'Пять уровней вложенности', 'Пять уровней вложенности', 'Пять уровней вложенности', '', '', '', '', '', ''),
	(2, '', 17, 'Five levels of nesting', 'Five levels of nesting', 'Five levels of nesting', 'Five levels of nesting', '', '', '', '', '', ''),
	(3, '', 17, 'Пять уровней вложенности', 'Пять уровней вложенности', 'Пять уровней вложенности', 'Пять уровней вложенности', '', '', '', '', '', ''),
	(1, '', 18, 'Второй уровень вложенности', 'Второй уровень вложенности', 'Второй уровень вложенности', 'Второй уровень вложенности', '', '', '', '', '', ''),
	(2, '', 18, 'Second level of nesting', 'Second level of nesting', 'Second level of nesting', 'Second level of nesting', '', '', '', '', '', ''),
	(3, '', 18, 'Второй уровень вложенности', 'Второй уровень вложенности', 'Второй уровень вложенности', 'Второй уровень вложенности', '', '', '', '', '', ''),
	(1, '', 19, 'Третий уровень вложенности', 'Третий уровень вложенности', 'Третий уровень вложенности', 'Третий уровень вложенности', '', '', '', '', '', ''),
	(2, '', 19, 'Third level of nesting', 'Third level of nesting', 'Third level of nesting', 'Third level of nesting', '', '', '', '', '', ''),
	(3, '', 19, 'Третий уровень вложенности', 'Третий уровень вложенности', 'Третий уровень вложенности', 'Третий уровень вложенности', '', '', '', '', '', ''),
	(1, '', 20, 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', '', '', '', '', '', ''),
	(2, '', 20, 'Fourth level of nesting', 'Fourth level of nesting', 'Fourth level of nesting', 'Fourth level of nesting', '', '', '', '', '', ''),
	(3, '', 20, 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', 'Четвёртый уровень вложенности', '', '', '', '', '', ''),
	(1, '', 21, 'Пятый уровень вложенности', 'Пятый уровень вложенности', 'Пятый уровень вложенности', 'Пятый уровень вложенности', '', '', '', '', '', ''),
	(2, '', 21, 'Fifth level of nesting', 'Fifth level of nesting', 'Fifth level of nesting', 'Fifth level of nesting', '', '', '', '', '', ''),
	(3, '', 21, 'Пятый уровень вложенности', 'Пятый уровень вложенности', 'Пятый уровень вложенности', 'Пятый уровень вложенности', '', '', '', '', '', ''),
	(1, '', 22, 'Женская одежда', 'Женская одежда', 'Женская одежда', 'Женская одежда', '', '', '', '', '', ''),
	(2, '', 22, 'Women\'s clothing', 'Women\'s clothing', 'Women\'s clothing', 'Women\'s clothing', '', '', '', '', '', ''),
	(3, '', 22, 'Женская одежда', 'Женская одежда', 'Женская одежда', 'Женская одежда', '', '', '', '', '', ''),
	(1, '', 23, 'Нижнее бельё', 'Нижнее бельё', 'Нижнее бельё', 'Нижнее бельё', '', '', '', '', '', ''),
	(2, '', 23, 'Underwear', 'Underwear', 'Underwear', 'Underwear', '', '', '', '', '', ''),
	(3, '', 23, 'Нижнее бельё', 'Нижнее бельё', 'Нижнее бельё', 'Нижнее бельё', '', '', '', '', '', ''),
	(1, '', 24, 'Детские товары', 'Детские товары', 'Детские товары', 'Детские товары', '', '', '', '', '', ''),
	(2, '', 24, 'Baby products', 'Baby products', 'Baby products', 'Baby products', '', '', '', '', '', ''),
	(3, '', 24, 'Детские товары', 'Детские товары', 'Детские товары', 'Детские товары', '', '', '', '', '', '');
/*!40000 ALTER TABLE `s_lang_categories` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_currencies
DROP TABLE IF EXISTS `s_lang_currencies`;
CREATE TABLE IF NOT EXISTS `s_lang_currencies` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sign` varchar(20) NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_currencies: 9 rows
DELETE FROM `s_lang_currencies`;
/*!40000 ALTER TABLE `s_lang_currencies` DISABLE KEYS */;
INSERT INTO `s_lang_currencies` (`lang_id`, `lang_label`, `currency_id`, `name`, `sign`) VALUES
	(1, 'ru', 2, 'рубли', 'руб'),
	(1, 'ru', 1, 'доллары', '$'),
	(1, 'ru', 3, 'вебмани wmz', 'wmz'),
	(2, 'en', 2, 'rubles', 'rub'),
	(2, 'en', 1, 'dollars', '$'),
	(2, 'en', 3, 'вебмани wmz en', 'wmz'),
	(3, 'uk', 2, 'рубли uk', 'руб'),
	(3, 'uk', 1, 'доллары uk', '$'),
	(3, 'uk', 3, 'вебмани wmz uk', 'wmz');
/*!40000 ALTER TABLE `s_lang_currencies` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_delivery
DROP TABLE IF EXISTS `s_lang_delivery`;
CREATE TABLE IF NOT EXISTS `s_lang_delivery` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`delivery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_delivery: 6 rows
DELETE FROM `s_lang_delivery`;
/*!40000 ALTER TABLE `s_lang_delivery` DISABLE KEYS */;
INSERT INTO `s_lang_delivery` (`lang_id`, `lang_label`, `delivery_id`, `name`, `description`) VALUES
	(1, 'ru', 1, 'Курьерская доставка по Москве ru', '<p><span>Курьерская доставка осуществляется на следующий день после оформления заказа, если товар есть в наличии. Курьерская доставка осуществляется в пределах Томска и Северска ежедневно с 10.00 до 21.00. Заказ на сумму свыше 300 рублей доставляется бесплатно.&nbsp;<br /><br />Стоимость бесплатной доставки раcсчитывается от суммы заказа с учтенной скидкой. В случае если сумма заказа после применения скидки менее 300р, осуществляется платная доставка.&nbsp;<br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</span></p>'),
	(1, 'ru', 2, 'Самовывоз', '<p>Удобный, бесплатный и быстрый способ получения заказа.</p><p>Адрес офиса: Адрес офиса: Москва, ул. Арбат, 1/3, офис 419</p>'),
	(2, 'en', 1, 'Курьерская доставка по Москве en', '<p><span>Курьерская доставка осуществляется на следующий день после оформления заказа, если товар есть в наличии. Курьерская доставка осуществляется в пределах Томска и Северска ежедневно с 10.00 до 21.00. Заказ на сумму свыше 300 рублей доставляется бесплатно.&nbsp;<br /><br />Стоимость бесплатной доставки раcсчитывается от суммы заказа с учтенной скидкой. В случае если сумма заказа после применения скидки менее 300р, осуществляется платная доставка.&nbsp;<br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</span></p>'),
	(2, 'en', 2, 'Самовывоз', '<p>Удобный, бесплатный и быстрый способ получения заказа.</p><p>Адрес офиса: Адрес офиса: Москва, ул. Арбат, 1/3, офис 419</p>'),
	(3, 'uk', 1, 'Курьерская доставка по Москве uk', '<p><span>Курьерская доставка осуществляется на следующий день после оформления заказа, если товар есть в наличии. Курьерская доставка осуществляется в пределах Томска и Северска ежедневно с 10.00 до 21.00. Заказ на сумму свыше 300 рублей доставляется бесплатно.&nbsp;<br /><br />Стоимость бесплатной доставки раcсчитывается от суммы заказа с учтенной скидкой. В случае если сумма заказа после применения скидки менее 300р, осуществляется платная доставка.&nbsp;<br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</span></p>'),
	(3, 'uk', 2, 'Самовывоз', '<p>Удобный, бесплатный и быстрый способ получения заказа.</p><p>Адрес офиса: Адрес офиса: Москва, ул. Арбат, 1/3, офис 419</p>');
/*!40000 ALTER TABLE `s_lang_delivery` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_features
DROP TABLE IF EXISTS `s_lang_features`;
CREATE TABLE IF NOT EXISTS `s_lang_features` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`feature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_features: 9 rows
DELETE FROM `s_lang_features`;
/*!40000 ALTER TABLE `s_lang_features` DISABLE KEYS */;
INSERT INTO `s_lang_features` (`lang_id`, `lang_label`, `feature_id`, `name`) VALUES
	(3, '', 1, 'Возраст'),
	(1, '', 2, 'Материал'),
	(2, '', 2, 'Material'),
	(3, '', 2, 'Материал'),
	(1, '', 3, 'Камера'),
	(2, '', 3, 'Camera'),
	(3, '', 3, 'Камера'),
	(1, '', 1, 'Возраст'),
	(2, '', 1, 'Age');
/*!40000 ALTER TABLE `s_lang_features` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_pages
DROP TABLE IF EXISTS `s_lang_pages`;
CREATE TABLE IF NOT EXISTS `s_lang_pages` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `body` longtext NOT NULL,
  `header` varchar(1024) NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_pages: 24 rows
DELETE FROM `s_lang_pages`;
/*!40000 ALTER TABLE `s_lang_pages` DISABLE KEYS */;
INSERT INTO `s_lang_pages` (`lang_id`, `lang_label`, `page_id`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `header`) VALUES
	(1, 'ru', 3, 'Доставка', 'Доставка', 'Доставка', 'Доставка', '<h2>Курьерская доставка по&nbsp;Москве</h2><p>Курьерская доставка осуществляется на следующий день после оформления заказа<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>если товар есть в&nbsp;наличии. Курьерская доставка осуществляется в&nbsp;пределах Томска и&nbsp;Северска ежедневно с&nbsp;10.00 до&nbsp;21.00. Заказ на&nbsp;сумму свыше 300 рублей доставляется бесплатно. <br /><br />Стоимость бесплатной доставки раcсчитывается от&nbsp;суммы заказа с&nbsp;учтенной скидкой. В&nbsp;случае если сумма заказа после применения скидки менее 300р<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>осуществляется платная доставка. <br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</p><h2>Самовывоз</h2><p>Удобный<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>бесплатный и быстрый способ получения заказа.<br />Адрес офиса: Москва<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>ул. Арбат<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>1/3<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>офис 419.</p><h2>Доставка с&nbsp;помощью предприятия<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo;</h2><p>Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo; в&nbsp;Вашем городе. Для получения необходимо предъявить паспорт и&nbsp;номер грузовой декларации<span style="margin-right: 0.3em;"> </span><span style="margin-left: -0.3em;">(</span>сообщит наш менеджер после отправки). Посылку желательно получить в&nbsp;течение 24 часов с&nbsp;момента прихода груза<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>иначе компания<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.</p><h2>Наложенным платежом</h2><p>При доставке заказа наложенным платежом с помощью<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Почты России&raquo;, вы&nbsp;сможете оплатить заказ непосредственно в&nbsp;момент получения товаров.</p>', 'Способы доставки'),
	(1, 'ru', 2, 'Оплата', 'Оплата', 'Оплата', 'Оплата', '<h2><span>Наличными курьеру</span></h2><p>Вы можете оплатить заказ курьеру в рублях непосредственно в момент доставки. Курьерская доставка осуществляется по Москве на следующий день после принятия заказа.</p><h2>Яндекс.Деньги</h2><p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет</span>.</p><h2>Банковская карта</h2><p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p><h2>Через терминал</h2><p><span>Оплатите наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</span></p><h2>Со счета мобильного телефона</h2><p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги.</span></p><h2>Webmoney</h2><p>После оформления заказа вы сможете перейти на сайт webmoney для оплаты заказа, где сможете оплатить заказ в автоматическом режиме, а так же проверить наш сертификат продавца.</p><h2>Квитанция</h2><p><span>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</span></p><h2>Робокасса</h2><p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p><h2>PayPal</h2><p><span>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</span></p><h2>Оплата через Интеркассу</h2><p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p><h2>Оплата картой через Liqpay.com</h2><p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p><h2>Оплата через Pay2Pay</h2><p><span>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</span></p><h2>Оплатить через QIWI</h2><p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p><h2><span style="font-size: 20px;">Наличными в офисе Автолюкса</span></h2><p>При доставке заказа системой Автолюкс, вы сможете оплатить заказ в их офисе непосредственно в момент получения товаров.</p>', 'Способы оплаты'),
	(1, 'ru', 1, 'Главная', 'Хиты продаж', 'Этот магазин является демонстрацией скрипта интернет-магазина  Okay . Все материалы на этом сайте присутствуют исключительно в демострационных целях.', 'Хиты продаж', '<p>Этот магазин является демонстрацией скрипта интернет-магазина <a href="http://okay-cms.com">Okay</a>. Все материалы на этом сайте присутствуют исключительно в демострационных целях.</p>', 'О магазине'),
	(1, 'ru', 4, 'Блог', 'Блог', '', 'Блог', '', 'Блог'),
	(1, 'ru', 5, '', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 'Страница не найдена'),
	(1, 'ru', 6, 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p>Москва, ул. Арбатецкая,&nbsp; дом 2c3.</p><p><a href="https://maps.yandex.ua/213/moscow/?um=vCDuUwJDQl85sAd1Lkm9gIjgoKMho6oE&amp;ll=37.645371%2C55.735740&amp;spn=0.010085%2C0.003845&amp;z=13&amp;l=map&amp;ncrnd=909&amp;text=%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%2C%20%D1%83%D0%BB.%20%D0%90%D1%80%D0%B1%D0%B0%D1%82%D0%B5%D1%86%D0%BA%D0%B0%D1%8F%2C%20%20%D0%B4%D0%BE%D0%BC%202c3.&amp;sll=37.632916%2C55.729438&amp;sspn=0.163422%2C0.049113&amp;ol=geo&amp;ouri=ymapsbm1%3A%2F%2Fgeo%3Fll%3D37.661%252C55.727%26spn%3D0.001%252C0.001%26text%3D%25D0%25A0%25D0%25BE%25D1%2581%25D1%2581%25D0%25B8%25D1%258F%252C%2520%25D0%259C%25D0%25BE%25D1%2581%25D0%25BA%25D0%25B2%25D0%25B0%252C%2520%25D0%2590%25D1%2580%25D0%25B1%25D0%25B0%25D1%2582%25D0%25B5%25D1%2586%25D0%25BA%25D0%25B0%25D1%258F%2520%25D1%2583%25D0%25BB%25D0%25B8%25D1%2586%25D0%25B0%252C%25202%25D1%25813">Посмотреть на&nbsp;Яндекс.Картах</a></p><p>Телефон 777-15-51</p>', 'Контакты'),
	(1, 'ru', 7, 'Все товары', 'Все товары', '', 'Все товары', '', 'Все товары'),
	(2, 'en', 3, 'Delivery', 'Delivery', 'Delivery', 'Delivery', '<h2>Shipping within Moscow</h2><p><span class="translation-chunk" data-align="0:34">Courier delivery is made</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="35:52">the next day</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="53:76">after ordering</span><span class="translation-chunk">, </span><span class="translation-chunk" data-align="78:103">if the item is in stock</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="105:139">Courier delivery is made</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="140:157">within the Tomsk</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="158:168">and Seversk</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="169:180">daily from</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="181:189">10.00 to</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="190:195">21.00</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="197:211">For orders</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="212:221">more than 300</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="222:251">rubles delivered free of charge</span><span class="translation-chunk">.</span><br /><br /><span class="translation-chunk" data-align="0:9">Cost</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="10:44">free delivery is calculated</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="45:47">from</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="48:60">the total order</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="61:62">with</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="72:79">the discount</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="63:71">taken into account</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="81:107">If the order amount</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="108:131">after applying the discount</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="132:137">less than</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="138:142">300 r</span><span class="translation-chunk">, </span><span class="translation-chunk" data-align="144:158">is</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="159:175">a paid service</span><span class="translation-chunk">.</span></p><p><span class="translation-chunk" data-align="0:11">For orders</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="12:21">less than 300</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="22:28">rubles</span><span class="translation-chunk">, </span><span class="translation-chunk" data-align="30:59">the <span>delivery </span>cost is</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="60:69">50 rubles</span><span class="translation-chunk">.</span></p><h2>Store pickup</h2><p><span class="translation-chunk" data-align="0:7">Convenient</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="7:19">, free</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="20:21">and</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="22:54">fast way of receiving your order.</span><span class="translation-chunk"> </span></p><p><span class="translation-chunk"></span><span class="translation-chunk" data-align="55:67">Office address:</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="68:75">Moscow,</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="80:85">Arbat</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="76:79">str.</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="85:90">, 1/3</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="90:96">, office</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="97:100">419</span><span class="translation-chunk">.</span></p><h2><span class="translation-chunk" data-align="19:32">"</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="32:45">Autotrading" delivery</span></h2><p><span class="translation-chunk" data-align="0:24">A convenient and fast way</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="25:33">of delivery</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="34:43">in large</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="44:57">cities of Russia</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="59:79">Parcel is delivered</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="80:86">to the office</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="87:101">"autotrading"</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="102:117">in Your city.</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="118:131">To receive</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="132:161">you must present your passport</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="162:163">and</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="164:189">number of the cargo declaration</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="190:198">(</span><span class="translation-chunk" data-align="199:211">our manager will inform You</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="212:226">after sending</span><span class="translation-chunk">). </span><span class="translation-chunk" data-align="229:236">The parcel</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="237:256">it is advisable to get</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="257:258">in</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="259:269">within 24</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="270:285">hours after</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="286:299">arrival of the goods</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="299:315">, or the company</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="316:330">"Autotrading"</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="331:351">may charge You an</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="352:373">additional fee</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="374:386">for storage.</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="387:400">The delivery time</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="401:402">and</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="403:412">the cost</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="413:433">You can calculate</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="434:451">on the company\'s website</span><span class="translation-chunk">.</span></p><h2>C.O.D (Cash On Delivery)</h2><p><span class="translation-chunk" data-align="0:19">On delivery order</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="20:39">cash on delivery</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="40:49">through</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="50:63">"mail of Russia</span><span class="translation-chunk">", </span><span class="translation-chunk" data-align="66:76">you will be able</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="77:91">to pay for the order</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="92:116">at the time</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="117:134">goods are received</span><span class="translation-chunk">.</span></p>', 'Delivery'),
	(2, 'en', 2, 'Payment', 'Payment', 'Payment', 'Payment', '<h2>Cash</h2><p><span class="translation-chunk" data-align="0:2">You</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="3:24">can pay</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="25:32">the courier</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="42:57">directly</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="33:41">in rubles</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="58:75">at the time of delivery</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="77:111">The Express delivery</span><span class="translation-chunk">&nbsp;within</span><span class="translation-chunk" data-align="112:121">&nbsp;Moscow</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="122:139">next day</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="140:145">after</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="146:161">order acceptance</span><span class="translation-chunk">.</span></p><h2>Yandex.Money</h2><p><span class="translation-chunk" data-align="0:7">Yandex.</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="7:15">Money &mdash;</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="16:45">affordable and secure way</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="46:63">to pay for goods</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="64:88">and services via the Internet.</span></p><h2>Bank&nbsp;<span>account</span></h2><p><span class="translation-chunk" data-align="0:24">Pay with your credit card</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="25:44">Visa or MasterCard</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="45:65">via Yandex</span><span class="translation-chunk">.</span><span class="translation-chunk" data-align="66:72">Money</span><span class="translation-chunk">.</span></p><h2><span>Terminal</span></h2><p><span class="translation-chunk" data-align="0:8">Pay</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="9:18">by cash</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="19:51">through numerous of terminals in</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="52:71">any city of Russia</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="73:90">You can pay</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="91:115">with a credit card through</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="116:122">many</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="123:132">ATMs</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="134:151">To do this, find&nbsp;<span>Yandex logo in the menu of</span></span><span class="translation-chunk" data-align="159:168">&nbsp;terminal</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="169:172">or</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="173:198">ATM, </span><span class="translation-chunk" data-align="199:208">and enter&nbsp;</span><span class="translation-chunk" data-align="209:220">the payment code</span><span class="translation-chunk">.</span></p><h2><span>Phone bill</span></h2><p><span class="translation-chunk" data-align="0:6">Payment</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="7:9">with</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="10:35">mobile phone account</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="36:56">via Yandex</span><span class="translation-chunk">.</span><span class="translation-chunk" data-align="57:63">Money</span><span class="translation-chunk">.</span></p><h2>Webmoney</h2><p><span class="translation-chunk" data-align="0:23">After ordering,</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="24:42">you can go</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="43:50">to the </span><span class="translation-chunk" data-align="51:59">webmoney&nbsp;<span class="translation-chunk" data-align="43:50">website</span></span><span class="translation-chunk">&nbsp;</span><span class="translation-chunk" data-align="60:77">for payment</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="77:105">where you can pay for your order</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="106:129">in automatic mode</span><span class="translation-chunk"></span><span class="translation-chunk" data-align="129:139">, as well as</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="140:164">to verify our <span>seller\'s&nbsp;</span>certificate</span><span class="translation-chunk" data-align="165:173">&nbsp;</span><span class="translation-chunk">.</span></p><h2><span>Receipt</span></h2><p>You can print a receipt and pay it at any Bank.</p><h2>Robokassa</h2><p><span>ROBOKASSA &ndash;&nbsp;<span class="translation-chunk" data-align="0:22">the service for</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="23:38">accepting payments</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="39:47">on the website</span><span class="translation-chunk">, </span><span class="translation-chunk" data-align="49:68">online store and</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="69:86">social networks.</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="87:116">Payments are accepted</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="117:143">with minimal commissions.</span></span></p><p><span><span class="translation-chunk" data-align="117:143"></span></span><span style="font-size: 20px;">PayPal</span></p><p><span class="translation-chunk" data-align="0:18">Make purchases</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="19:28">safely</span><span class="translation-chunk">, </span><span class="translation-chunk" data-align="30:54">without disclosing information</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="55:78">about your credit card</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="80:86">PayPal</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="87:94">will protect</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="95:104">you if</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="105:123">problems occur</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="124:135">with purchase.</span></p><h2><span>Payment via Interkassa</span></h2><p><span class="translation-chunk" data-align="0:3">This</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="4:27">easy to use</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="28:34">service</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="34:58">that you connect t,</span><span class="translation-chunk">&nbsp;</span><span class="translation-chunk" data-align="59:77">will allow online</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="77:87">shopping</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="88:98">websites</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="99:126">and other trading platforms</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="127:150">to take all possible</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="151:163">forms of payment</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="164:165">in</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="166:193">maximum short terms.</span></p><h2><span class="translation-chunk" data-align="0:13">Card payment</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="14:19">via&nbsp;</span>Liqpay.com</h2><p><span class="translation-chunk" data-align="0:15">Due to its</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="16:26">openness</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="27:44">and universality</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="45:51">LiqPAY</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="52:64">rapidly</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="65:78">integrates</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="79:89">with many</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="90:126">payment systems and platforms and</span><span class="translation-chunk" data-align="127:148">&nbsp;becomes the standard</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="149:168">payment transactions.</span></p><h2><span>Payment via</span><span style="font-size: 20px;">&nbsp;Pay2Pay</span></h2><p><span class="translation-chunk" data-align="0:23">Universal payment</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="24:30">service</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="31:38">Pay2Pay</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="39:56">is intended to facilitate</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="57:80">and simplify</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="81:88">the process</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="89:119">of electronic payment acceptance on</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="120:131">Your website</span><span class="translation-chunk">. </span><span class="translation-chunk" data-align="133:143">We are open</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="144:160">to everything new</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="161:162">and</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="163:180">modern</span><span class="translation-chunk">.</span></p><h2><span>Payment via</span><span style="font-size: 20px;">&nbsp;QIWI</span></h2><p><span>QIWI &mdash;&nbsp;<span class="translation-chunk" data-align="0:14">convenient service</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="15:25">to pay for</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="26:44">everyday services</span><span class="translation-chunk">.</span></span></p><h2><span style="font-size: 20px;">Cash at autolux office</span></h2><p><span class="translation-chunk" data-align="0:19">Upon delivery of</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="20:28">the system</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="29:37">Autolux</span><span class="translation-chunk">, </span><span class="translation-chunk" data-align="39:49">you will be able</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="50:64">to pay for the order</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="65:75">in their office</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="76:91">immediately</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="92:110">upon receipt</span><span class="translation-chunk"> </span><span class="translation-chunk" data-align="111:118">of goods</span><span class="translation-chunk">.</span></p>', 'Payment'),
	(2, 'en', 1, 'Home', 'Bestsellers', 'This store is a demonstration of the script online store Okay . All materials on this site are present only in demostratsionnyh purposes.', 'Bestsellers', '<p>This store is a demonstration of the script online store Okay . All materials on this site are present only in demostratsionnyh purposes.</p>', 'About us'),
	(2, 'en', 4, 'Blog', 'Blog', '', 'Blog', '', 'Blog'),
	(2, 'en', 5, 'Page not found', 'Page not found', 'Page not found', 'Page not found', '<p>Page not found</p>', 'Page not found'),
	(2, 'en', 6, 'Contacts', 'Contacts', 'Contacts', 'Contacts', '<p><span class="translation-chunk" data-align="0:7">Moscow,</span><span class="translation-chunk" data-align="8:25">&nbsp;</span><span class="translation-chunk"><span id="result_box" class="short_text" lang="en"><span class="hps">Arbatetskaya</span></span> street</span><span class="translation-chunk" data-align="26:31"></span><span class="translation-chunk"></span><span class="translation-chunk" data-align="31:37">, house&nbsp;2c3</span><span class="translation-chunk" data-align="38:41"></span><span class="translation-chunk">.</span></p><p><a href="https://maps.yandex.ua/213/moscow/?um=vCDuUwJDQl85sAd1Lkm9gIjgoKMho6oE&amp;ll=37.645371%2C55.735740&amp;spn=0.010085%2C0.003845&amp;z=13&amp;l=map&amp;ncrnd=909&amp;text=%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%2C%20%D1%83%D0%BB.%20%D0%90%D1%80%D0%B1%D0%B0%D1%82%D0%B5%D1%86%D0%BA%D0%B0%D1%8F%2C%20%20%D0%B4%D0%BE%D0%BC%202c3.&amp;sll=37.632916%2C55.729438&amp;sspn=0.163422%2C0.049113&amp;ol=geo&amp;ouri=ymapsbm1%3A%2F%2Fgeo%3Fll%3D37.661%252C55.727%26spn%3D0.001%252C0.001%26text%3D%25D0%25A0%25D0%25BE%25D1%2581%25D1%2581%25D0%25B8%25D1%258F%252C%2520%25D0%259C%25D0%25BE%25D1%2581%25D0%25BA%25D0%25B2%25D0%25B0%252C%2520%25D0%2590%25D1%2580%25D0%25B1%25D0%25B0%25D1%2582%25D0%25B5%25D1%2586%25D0%25BA%25D0%25B0%25D1%258F%2520%25D1%2583%25D0%25BB%25D0%25B8%25D1%2586%25D0%25B0%252C%25202%25D1%25813"><span class="translation-chunk" data-align="0:20">View on Yandex</span><span class="translation-chunk">.</span><span class="translation-chunk" data-align="21:27">Maps</span></a></p><p>Phone 777-15-51</p>', 'Contacts'),
	(2, 'en', 7, 'All goods', 'All goods', '', 'All goods', '', 'All goods'),
	(3, 'uk', 3, 'Доставка', 'Доставка', 'Доставка', 'Доставка', '<h2>Курьерская доставка по&nbsp;Москве</h2><p>Курьерская доставка осуществляется на следующий день после оформления заказа<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>если товар есть в&nbsp;наличии. Курьерская доставка осуществляется в&nbsp;пределах Томска и&nbsp;Северска ежедневно с&nbsp;10.00 до&nbsp;21.00. Заказ на&nbsp;сумму свыше 300 рублей доставляется бесплатно. <br /><br />Стоимость бесплатной доставки раcсчитывается от&nbsp;суммы заказа с&nbsp;учтенной скидкой. В&nbsp;случае если сумма заказа после применения скидки менее 300р<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>осуществляется платная доставка. <br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</p><h2>Самовывоз</h2><p>Удобный<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>бесплатный и быстрый способ получения заказа.<br />Адрес офиса: Москва<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>ул. Арбат<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>1/3<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>офис 419.</p><h2>Доставка с&nbsp;помощью предприятия<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo;</h2><p>Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo; в&nbsp;Вашем городе. Для получения необходимо предъявить паспорт и&nbsp;номер грузовой декларации<span style="margin-right: 0.3em;"> </span><span style="margin-left: -0.3em;">(</span>сообщит наш менеджер после отправки). Посылку желательно получить в&nbsp;течение 24 часов с&nbsp;момента прихода груза<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>иначе компания<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.</p><h2>Наложенным платежом</h2><p>При доставке заказа наложенным платежом с помощью<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Почты России&raquo;, вы&nbsp;сможете оплатить заказ непосредственно в&nbsp;момент получения товаров.</p>', 'Способы доставки'),
	(3, 'uk', 2, 'Оплата', 'Оплата', 'Оплата', 'Оплата', '<h2><span>Наличными курьеру</span></h2><p>Вы можете оплатить заказ курьеру в гривнах непосредственно в момент доставки. Курьерская доставка осуществляется по Москве на следующий день после принятия заказа.</p><h2>Яндекс.Деньги</h2><p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет</span>.</p><h2>Банковская карта</h2><p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p><h2>Через терминал</h2><p><span>Оплатита наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</span></p><h2>Со счета мобильного телефона</h2><p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги.</span></p><h2>Webmoney</h2><p>После оформления заказа вы сможете перейти на сайт webmoney для оплаты заказа, где сможете оплатить заказ в автоматическом режиме, а так же проверить наш сертификат продавца.</p><h2>Квитанция</h2><p><span>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</span></p><h2>Робокасса</h2><p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p><h2>PayPal</h2><p><span>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</span></p><h2>Оплата через Интеркассу</h2><p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p><h2>Оплата картой через Liqpay.com</h2><p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p><h2>Оплата через Pay2Pay</h2><p><span>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</span></p><h2>Оплатить через QIWI</h2><p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p><h2><span style="font-size: 20px;">Наличными в офисе Автолюкса</span></h2><p>При доставке заказа системой Автолюкс, вы сможете оплатить заказ в их офисе непосредственно в момент получения товаров.</p>', 'Способы оплаты'),
	(3, 'uk', 1, 'Главная', 'Хиты продаж', 'Этот магазин является демонстрацией скрипта интернет-магазина  Okay . Все материалы на этом сайте присутствуют исключительно в демострационных целях.', 'Хиты продаж', '<p>Этот магазин является демонстрацией скрипта интернет-магазина <a href="http://okay-cms.com">Okay</a>. Все материалы на этом сайте присутствуют исключительно в демострационных целях.</p>', 'О магазине uk'),
	(3, 'uk', 4, 'Блог', 'Блог', '', 'Блог', '', 'Блог'),
	(3, 'uk', 5, '', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 'Страница не найдена'),
	(3, 'uk', 6, 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p>Москва, ул. Арбатецкая,&nbsp; дом 2c3.</p><p><a href="https://maps.yandex.ua/213/moscow/?um=vCDuUwJDQl85sAd1Lkm9gIjgoKMho6oE&amp;ll=37.645371%2C55.735740&amp;spn=0.010085%2C0.003845&amp;z=13&amp;l=map&amp;ncrnd=909&amp;text=%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%2C%20%D1%83%D0%BB.%20%D0%90%D1%80%D0%B1%D0%B0%D1%82%D0%B5%D1%86%D0%BA%D0%B0%D1%8F%2C%20%20%D0%B4%D0%BE%D0%BC%202c3.&amp;sll=37.632916%2C55.729438&amp;sspn=0.163422%2C0.049113&amp;ol=geo&amp;ouri=ymapsbm1%3A%2F%2Fgeo%3Fll%3D37.661%252C55.727%26spn%3D0.001%252C0.001%26text%3D%25D0%25A0%25D0%25BE%25D1%2581%25D1%2581%25D0%25B8%25D1%258F%252C%2520%25D0%259C%25D0%25BE%25D1%2581%25D0%25BA%25D0%25B2%25D0%25B0%252C%2520%25D0%2590%25D1%2580%25D0%25B1%25D0%25B0%25D1%2582%25D0%25B5%25D1%2586%25D0%25BA%25D0%25B0%25D1%258F%2520%25D1%2583%25D0%25BB%25D0%25B8%25D1%2586%25D0%25B0%252C%25202%25D1%25813">Посмотреть на&nbsp;Яндекс.Картах</a></p><p>Телефон 777-15-51</p>', 'Контакты'),
	(3, 'uk', 7, 'Все товары', 'Все товары', '', 'Все товары', '', 'Все товары'),
	(1, '', 8, 'Бренды', 'Бренды', '', 'Бренды', '', 'Бренды'),
	(2, '', 8, 'Brands', 'Brands', '', 'Brands', '', 'Brands'),
	(3, '', 8, 'Бренды', 'Бренды', '', 'Бренды', '', 'Бренды');
/*!40000 ALTER TABLE `s_lang_pages` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_payment_methods
DROP TABLE IF EXISTS `s_lang_payment_methods`;
CREATE TABLE IF NOT EXISTS `s_lang_payment_methods` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_payment_methods: 36 rows
DELETE FROM `s_lang_payment_methods`;
/*!40000 ALTER TABLE `s_lang_payment_methods` DISABLE KEYS */;
INSERT INTO `s_lang_payment_methods` (`lang_id`, `lang_label`, `payment_id`, `name`, `description`) VALUES
	(1, 'ru', 1, 'Квитанция', '<p>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</p>'),
	(1, 'ru', 2, 'Webmoney wmz', '<p><span></span></p><div><p>Оплата через платежную систему&nbsp;<a href="http://www.webmoney.ru">WebMoney</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату. Сразу после оформления заказа вы будете перенаправлены на специальную страницу системы WebMoney, где сможете произвести платеж в титульных знаках WMZ.</p></div><p>&nbsp;</p>'),
	(1, 'ru', 3, 'Робокасса', '<p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p>'),
	(1, 'ru', 4, 'PayPal', '<p>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</p>'),
	(1, 'ru', 5, 'Оплата через Интеркассу', '<p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p>'),
	(1, 'ru', 6, 'Оплата картой через Liqpay.com', '<p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p>'),
	(1, 'ru', 7, 'Оплата через Pay2Pay', '<p>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</p>'),
	(1, 'ru', 8, 'Оплатить через QIWI', '<p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p>'),
	(1, 'ru', 9, 'Яндекс.Деньги ru', '<p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет.</span></p>'),
	(1, 'ru', 10, 'Банковская карта', '<p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p>'),
	(1, 'ru', 11, 'Через терминал', '<p>Оплатита наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</p>'),
	(1, 'ru', 12, 'Со счета мобильного телефона', '<p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги</span></p>'),
	(2, 'en', 1, 'Квитанция', '<p>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</p>'),
	(2, 'en', 2, 'Webmoney wmz', '<p><span></span></p><div><p>Оплата через платежную систему&nbsp;<a href="http://www.webmoney.ru">WebMoney</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату. Сразу после оформления заказа вы будете перенаправлены на специальную страницу системы WebMoney, где сможете произвести платеж в титульных знаках WMZ.</p></div><p>&nbsp;</p>'),
	(2, 'en', 3, 'Робокасса', '<p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p>'),
	(2, 'en', 4, 'PayPal', '<p>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</p>'),
	(2, 'en', 5, 'Оплата через Интеркассу', '<p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p>'),
	(2, 'en', 6, 'Оплата картой через Liqpay.com', '<p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p>'),
	(2, 'en', 7, 'Оплата через Pay2Pay', '<p>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</p>'),
	(2, 'en', 8, 'Оплатить через QIWI', '<p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p>'),
	(2, 'en', 9, 'Яндекс.Деньги en', '<p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет.</span></p>'),
	(2, 'en', 10, 'Банковская карта', '<p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p>'),
	(2, 'en', 11, 'Через терминал', '<p>Оплатита наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</p>'),
	(2, 'en', 12, 'Со счета мобильного телефона', '<p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги</span></p>'),
	(3, 'uk', 1, 'Квитанция', '<p>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</p>'),
	(3, 'uk', 2, 'Webmoney wmz', '<p><span></span></p><div><p>Оплата через платежную систему&nbsp;<a href="http://www.webmoney.ru">WebMoney</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату. Сразу после оформления заказа вы будете перенаправлены на специальную страницу системы WebMoney, где сможете произвести платеж в титульных знаках WMZ.</p></div><p>&nbsp;</p>'),
	(3, 'uk', 3, 'Робокасса', '<p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p>'),
	(3, 'uk', 4, 'PayPal', '<p>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</p>'),
	(3, 'uk', 5, 'Оплата через Интеркассу', '<p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p>'),
	(3, 'uk', 6, 'Оплата картой через Liqpay.com', '<p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p>'),
	(3, 'uk', 7, 'Оплата через Pay2Pay', '<p>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</p>'),
	(3, 'uk', 8, 'Оплатить через QIWI', '<p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p>'),
	(3, 'uk', 9, 'Яндекс.Деньги uk', '<p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет.</span></p>'),
	(3, 'uk', 10, 'Банковская карта', '<p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p>'),
	(3, 'uk', 11, 'Через терминал', '<p>Оплатита наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</p>'),
	(3, 'uk', 12, 'Со счета мобильного телефона', '<p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги</span></p>');
/*!40000 ALTER TABLE `s_lang_payment_methods` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_products
DROP TABLE IF EXISTS `s_lang_products`;
CREATE TABLE IF NOT EXISTS `s_lang_products` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `annotation` text NOT NULL,
  `body` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_products: 441 rows
DELETE FROM `s_lang_products`;
/*!40000 ALTER TABLE `s_lang_products` DISABLE KEYS */;
INSERT INTO `s_lang_products` (`lang_id`, `lang_label`, `product_id`, `name`, `annotation`, `body`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(3, '', 73, 'Автокресло Maxi-Cosi Priori SPS', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг).</p>', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг). Автокресло Priori легко устанавливается и закрепляется ремнями безопасности с креплением в 2-х или 3-х точках на любом пассажирском месте во всех типах автомобилей. Съемные чехлы можно стирать. Цвета: Bjorn, Enzo, Indigo, Prado, Solar, Stratos, Florian, Horizon, Roseline.</p>', 'Автокресло Maxi-Cosi Priori SPS', '', ''),
	(1, '', 74, 'Стульчик для кормления Cam Smarty S332-C27', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', 'Стульчик для кормления Cam Smarty S332-C27', '', ''),
	(2, '', 74, 'Стульчик для кормления Cam Smarty S332-C27', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', 'Стульчик для кормления Cam Smarty S332-C27', '', ''),
	(3, '', 72, 'Коляска Hauck Condor', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком.</p>', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком. Пятиточечный ремень безопасности. Съемный поручень. Тканевые части коляски можно стирать. Дождевик. Вес 10 кг.</p>', 'Коляска Hauck Condor', '', ''),
	(1, '', 73, 'Автокресло Maxi-Cosi Priori SPS', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг).</p>', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг). Автокресло Priori легко устанавливается и закрепляется ремнями безопасности с креплением в 2-х или 3-х точках на любом пассажирском месте во всех типах автомобилей. Съемные чехлы можно стирать. Цвета: Bjorn, Enzo, Indigo, Prado, Solar, Stratos, Florian, Horizon, Roseline.</p>', 'Автокресло Maxi-Cosi Priori SPS', '', ''),
	(2, '', 73, 'Автокресло Maxi-Cosi Priori SPS', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг).</p>', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг). Автокресло Priori легко устанавливается и закрепляется ремнями безопасности с креплением в 2-х или 3-х точках на любом пассажирском месте во всех типах автомобилей. Съемные чехлы можно стирать. Цвета: Bjorn, Enzo, Indigo, Prado, Solar, Stratos, Florian, Horizon, Roseline.</p>', 'Автокресло Maxi-Cosi Priori SPS', '', ''),
	(3, '', 71, 'Директорское кресло VIP класса Status Extra', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса.</p>', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса. Широкое мягкое сиденье и высокая спинка с механизмом трансформации. Удобные мягкие кожаные подлокотники . Элегантная металическая крестовина с деревянными накладками,точенный из масива чехол пневмо-целиндра. Кресло комплектуется механизмом ТРАНСФОРМАЦИИ который обеспечивает разложение кресла практически в горизонтальное положение. Обивка кресла натуральная кожа высшего качества LUX 100%. выделки Extra - мягкая и эластичная.</p>', 'Директорское кресло VIP класса Status Extra', '', ''),
	(1, '', 72, 'Коляска Hauck Condor', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком.</p>', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком. Пятиточечный ремень безопасности. Съемный поручень. Тканевые части коляски можно стирать. Дождевик. Вес 10 кг.</p>', 'Коляска Hauck Condor', '', ''),
	(2, '', 72, 'Коляска Hauck Condor', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком.</p>', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком. Пятиточечный ремень безопасности. Съемный поручень. Тканевые части коляски можно стирать. Дождевик. Вес 10 кг.</p>', 'Коляска Hauck Condor', '', ''),
	(2, '', 71, 'Директорское кресло VIP класса Status Extra', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса.</p>', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса. Широкое мягкое сиденье и высокая спинка с механизмом трансформации. Удобные мягкие кожаные подлокотники . Элегантная металическая крестовина с деревянными накладками,точенный из масива чехол пневмо-целиндра. Кресло комплектуется механизмом ТРАНСФОРМАЦИИ который обеспечивает разложение кресла практически в горизонтальное положение. Обивка кресла натуральная кожа высшего качества LUX 100%. выделки Extra - мягкая и эластичная.</p>', 'Директорское кресло VIP класса Status Extra', '', ''),
	(3, '', 70, 'Стульчик для кормления Peg-Perego Tatamia', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения.</p>', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения. Пятиточечные ремни безопасности. Имеет 9 положений сидения по высоте. Может использоваться как шезлонг или расслабляющее кресло-качалка. Цвета: Cacao, Fiordilatte, Paloma, Arancio.</p>', 'Стульчик для кормления Peg-Perego Tatamia', '', ''),
	(1, '', 71, 'Директорское кресло VIP класса Status Extra', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса.</p>', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса. Широкое мягкое сиденье и высокая спинка с механизмом трансформации. Удобные мягкие кожаные подлокотники . Элегантная металическая крестовина с деревянными накладками,точенный из масива чехол пневмо-целиндра. Кресло комплектуется механизмом ТРАНСФОРМАЦИИ который обеспечивает разложение кресла практически в горизонтальное положение. Обивка кресла натуральная кожа высшего качества LUX 100%. выделки Extra - мягкая и эластичная.</p>', 'Директорское кресло VIP класса Status Extra', '', ''),
	(1, '', 69, 'Детская кроватка Красная Звезда Елизавета С-550', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик.</p>', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик. Вместительный ящик для детских принадлежностей. Две съёмные планки. Силиконовая накладка на боковине. 4 съемных колеса со стопорами. Материал - массив березы. Отсутствуют острые углы. Древесина обработана экологически чистым лаком. Размер кровати: 156х77х113 см.</p>', 'Детская кроватка Красная Звезда Елизавета С-550', '', ''),
	(2, '', 69, 'Детская кроватка Красная Звезда Елизавета С-550', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик.</p>', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик. Вместительный ящик для детских принадлежностей. Две съёмные планки. Силиконовая накладка на боковине. 4 съемных колеса со стопорами. Материал - массив березы. Отсутствуют острые углы. Древесина обработана экологически чистым лаком. Размер кровати: 156х77х113 см.</p>', 'Детская кроватка Красная Звезда Елизавета С-550', '', ''),
	(3, '', 69, 'Детская кроватка Красная Звезда Елизавета С-550', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик.</p>', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик. Вместительный ящик для детских принадлежностей. Две съёмные планки. Силиконовая накладка на боковине. 4 съемных колеса со стопорами. Материал - массив березы. Отсутствуют острые углы. Древесина обработана экологически чистым лаком. Размер кровати: 156х77х113 см.</p>', 'Детская кроватка Красная Звезда Елизавета С-550', '', ''),
	(1, '', 70, 'Стульчик для кормления Peg-Perego Tatamia', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения.</p>', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения. Пятиточечные ремни безопасности. Имеет 9 положений сидения по высоте. Может использоваться как шезлонг или расслабляющее кресло-качалка. Цвета: Cacao, Fiordilatte, Paloma, Arancio.</p>', 'Стульчик для кормления Peg-Perego Tatamia', '', ''),
	(2, '', 70, 'Стульчик для кормления Peg-Perego Tatamia', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения.</p>', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения. Пятиточечные ремни безопасности. Имеет 9 положений сидения по высоте. Может использоваться как шезлонг или расслабляющее кресло-качалка. Цвета: Cacao, Fiordilatte, Paloma, Arancio.</p>', 'Стульчик для кормления Peg-Perego Tatamia', '', ''),
	(2, '', 68, 'Манеж-кровать Capella C1', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать.</p>', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать. Кольца-держатели, с помощью которых ребенок сможет подтянуться и встать на ножки. Боковой лаз на молнии. Центральная ножка манежа обеспечивает дополнительную устойчивость.</p>', 'Манеж-кровать Capella C1', '', ''),
	(3, '', 68, 'Манеж-кровать Capella C1', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать.</p>', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать. Кольца-держатели, с помощью которых ребенок сможет подтянуться и встать на ножки. Боковой лаз на молнии. Центральная ножка манежа обеспечивает дополнительную устойчивость.</p>', 'Манеж-кровать Capella C1', '', ''),
	(3, '', 67, 'Погружной блендер Philips HR1377', '<p>Основные характеристики</p><p>Тип погружной</p><p>Мощность 700 Вт</p>', '<p>Основные характеристики:</p><p>Тип погружной</p><p>Мощность 700 Вт</p><p>Управление механическое, число скоростей: 5, плавная регулировка скорости</p><p>Особенности:</p><p>Материал корпуса металл</p><p>Материал погружной части металл</p><p>Отверстие для ингредиентов есть</p><p>Сетевой шнур длина 1.30 м</p><p>Функциональные возможности:</p><p>Дополнительные режимы турборежим</p><p>Измельчитель есть, объем 1.5 л</p><p>Мерный стакан есть, объем 1 л</p><p>Венчик для взбивания есть</p><p>Дополнительная информация диск для нарезки тонкими/средними ломтиками; диск для шинковки/нарезки</p>', 'Погружной блендер Philips HR1377', '', ''),
	(1, '', 68, 'Манеж-кровать Capella C1', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать.</p>', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать. Кольца-держатели, с помощью которых ребенок сможет подтянуться и встать на ножки. Боковой лаз на молнии. Центральная ножка манежа обеспечивает дополнительную устойчивость.</p>', 'Манеж-кровать Capella C1', '', ''),
	(2, '', 67, 'Погружной блендер Philips HR1377', '<p>Основные характеристики</p><p>Тип погружной</p><p>Мощность 700 Вт</p>', '<p>Основные характеристики:</p><p>Тип погружной</p><p>Мощность 700 Вт</p><p>Управление механическое, число скоростей: 5, плавная регулировка скорости</p><p>Особенности:</p><p>Материал корпуса металл</p><p>Материал погружной части металл</p><p>Отверстие для ингредиентов есть</p><p>Сетевой шнур длина 1.30 м</p><p>Функциональные возможности:</p><p>Дополнительные режимы турборежим</p><p>Измельчитель есть, объем 1.5 л</p><p>Мерный стакан есть, объем 1 л</p><p>Венчик для взбивания есть</p><p>Дополнительная информация диск для нарезки тонкими/средними ломтиками; диск для шинковки/нарезки</p>', 'Погружной блендер Philips HR1377', '', ''),
	(1, '', 67, 'Погружной блендер Philips HR1377', '<p>Основные характеристики</p><p>Тип погружной</p><p>Мощность 700 Вт</p>', '<p>Основные характеристики:</p><p>Тип погружной</p><p>Мощность 700 Вт</p><p>Управление механическое, число скоростей: 5, плавная регулировка скорости</p><p>Особенности:</p><p>Материал корпуса металл</p><p>Материал погружной части металл</p><p>Отверстие для ингредиентов есть</p><p>Сетевой шнур длина 1.30 м</p><p>Функциональные возможности:</p><p>Дополнительные режимы турборежим</p><p>Измельчитель есть, объем 1.5 л</p><p>Мерный стакан есть, объем 1 л</p><p>Венчик для взбивания есть</p><p>Дополнительная информация диск для нарезки тонкими/средними ломтиками; диск для шинковки/нарезки</p>', 'Погружной блендер Philips HR1377', '', ''),
	(2, '', 66, 'Микроволновая печь BORK W531', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление.</p>', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление. 4 комбинированных режима.</p><p>Автоматическое приготовление и разогрев.</p><p>Программы разморозки по весу и времени.</p><p>Возможность приготовления на вертеле.</p><p>Режим последовательного приготовления.</p><p>Функция быстрого и отложенного старта.</p><p>Режим экспресс приготовления для работы при максимальной мощности за 30 секунд.</p><p>Блокировка от детей.</p><p>Внутреннее покрытие из нержавеющей стали.</p><p>Диаметр поворотного стола: 31.50 см.</p><p>LCD-дисплей.</p><p>Часы.</p>', 'Микроволновая печь BORK W531', '', ''),
	(3, '', 66, 'Микроволновая печь BORK W531', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление.</p>', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление. 4 комбинированных режима.</p><p>Автоматическое приготовление и разогрев.</p><p>Программы разморозки по весу и времени.</p><p>Возможность приготовления на вертеле.</p><p>Режим последовательного приготовления.</p><p>Функция быстрого и отложенного старта.</p><p>Режим экспресс приготовления для работы при максимальной мощности за 30 секунд.</p><p>Блокировка от детей.</p><p>Внутреннее покрытие из нержавеющей стали.</p><p>Диаметр поворотного стола: 31.50 см.</p><p>LCD-дисплей.</p><p>Часы.</p>', 'Микроволновая печь BORK W531', '', ''),
	(1, '', 65, 'Вытяжка Elica ONICE IX + NOCE F90', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', 'Вытяжка Elica ONICE IX + NOCE F90', '', ''),
	(2, '', 65, 'Вытяжка Elica ONICE IX + NOCE F90', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', 'Вытяжка Elica ONICE IX + NOCE F90', '', ''),
	(3, '', 65, 'Вытяжка Elica ONICE IX + NOCE F90', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', 'Вытяжка Elica ONICE IX + NOCE F90', '', ''),
	(1, '', 66, 'Микроволновая печь BORK W531', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление.</p>', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление. 4 комбинированных режима.</p><p>Автоматическое приготовление и разогрев.</p><p>Программы разморозки по весу и времени.</p><p>Возможность приготовления на вертеле.</p><p>Режим последовательного приготовления.</p><p>Функция быстрого и отложенного старта.</p><p>Режим экспресс приготовления для работы при максимальной мощности за 30 секунд.</p><p>Блокировка от детей.</p><p>Внутреннее покрытие из нержавеющей стали.</p><p>Диаметр поворотного стола: 31.50 см.</p><p>LCD-дисплей.</p><p>Часы.</p>', 'Микроволновая печь BORK W531', '', ''),
	(2, '', 64, 'Холодильник ARDO GO 2210 BH HOMEPUB', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p>', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p><p>Дозатор для пива:</p><p>Дверцы помимо обычных полок содержат специальные ниши, в которых находится система подачи пива.</p><p>Причем это не уменьшает полезное пространство для хранения продуктов!</p><p>Потребление электроэнергии (кВт/24ч) 0,70</p><p>Электронный модуль управления</p><p>1 компрессор</p><p>Автоматическое размораживание холодильного отделения</p><p>Ручное размораживание морозильного отделения</p><p>Антибактериальное покрытие</p><p>Поддержание температуры в случае отключения (ч) 18ч.</p><p>Кнопка быстрого замораживания</p><p>Индикатор критической температуры</p><p>Полки из сверхпрочного закаленного стекла</p><p>Полка для бутылок</p><p>Класс A+</p><p>Inox - нержавеющая сталь</p><p>Размеры в см:В185,5хШ60хГ67,2</p><p>Как обеспечить себя баллонами для Home Pub?</p><p>1. Вы покупаете Home Pub с заправленным баллоном. Home Pub, баллон и газ – продаются, как отдельные позиции. Кроме того, в любой момент Вы можете приобрести дополнительно заправленные баллоны.</p><p>2. Когда баллон (а это приблизительно 30 бочонков по 5л) у Вас опустошится, обратитесь в магазин, который торгует продукцией ARDO по предварительному заказу;</p><p>3. Вы сдаете пустой баллон, получаете полный и оплачиваете только заправку. Фирма-производитель оставляет за собой право на внесение изменений в конструкцию и комплектацию приборов.</p>', 'Холодильник ARDO GO 2210 BH HOMEPUB', '', ''),
	(3, '', 64, 'Холодильник ARDO GO 2210 BH HOMEPUB', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p>', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p><p>Дозатор для пива:</p><p>Дверцы помимо обычных полок содержат специальные ниши, в которых находится система подачи пива.</p><p>Причем это не уменьшает полезное пространство для хранения продуктов!</p><p>Потребление электроэнергии (кВт/24ч) 0,70</p><p>Электронный модуль управления</p><p>1 компрессор</p><p>Автоматическое размораживание холодильного отделения</p><p>Ручное размораживание морозильного отделения</p><p>Антибактериальное покрытие</p><p>Поддержание температуры в случае отключения (ч) 18ч.</p><p>Кнопка быстрого замораживания</p><p>Индикатор критической температуры</p><p>Полки из сверхпрочного закаленного стекла</p><p>Полка для бутылок</p><p>Класс A+</p><p>Inox - нержавеющая сталь</p><p>Размеры в см:В185,5хШ60хГ67,2</p><p>Как обеспечить себя баллонами для Home Pub?</p><p>1. Вы покупаете Home Pub с заправленным баллоном. Home Pub, баллон и газ – продаются, как отдельные позиции. Кроме того, в любой момент Вы можете приобрести дополнительно заправленные баллоны.</p><p>2. Когда баллон (а это приблизительно 30 бочонков по 5л) у Вас опустошится, обратитесь в магазин, который торгует продукцией ARDO по предварительному заказу;</p><p>3. Вы сдаете пустой баллон, получаете полный и оплачиваете только заправку. Фирма-производитель оставляет за собой право на внесение изменений в конструкцию и комплектацию приборов.</p>', 'Холодильник ARDO GO 2210 BH HOMEPUB', '', ''),
	(2, '', 63, 'Проводная стерео гарнитура Sony Ericsson HPM-20', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', 'Проводная стерео гарнитура Sony Ericsson HPM-20', '', ''),
	(3, '', 63, 'Проводная стерео гарнитура Sony Ericsson HPM-20', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', 'Проводная стерео гарнитура Sony Ericsson HPM-20', '', ''),
	(1, '', 64, 'Холодильник ARDO GO 2210 BH HOMEPUB', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p>', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p><p>Дозатор для пива:</p><p>Дверцы помимо обычных полок содержат специальные ниши, в которых находится система подачи пива.</p><p>Причем это не уменьшает полезное пространство для хранения продуктов!</p><p>Потребление электроэнергии (кВт/24ч) 0,70</p><p>Электронный модуль управления</p><p>1 компрессор</p><p>Автоматическое размораживание холодильного отделения</p><p>Ручное размораживание морозильного отделения</p><p>Антибактериальное покрытие</p><p>Поддержание температуры в случае отключения (ч) 18ч.</p><p>Кнопка быстрого замораживания</p><p>Индикатор критической температуры</p><p>Полки из сверхпрочного закаленного стекла</p><p>Полка для бутылок</p><p>Класс A+</p><p>Inox - нержавеющая сталь</p><p>Размеры в см:В185,5хШ60хГ67,2</p><p>Как обеспечить себя баллонами для Home Pub?</p><p>1. Вы покупаете Home Pub с заправленным баллоном. Home Pub, баллон и газ – продаются, как отдельные позиции. Кроме того, в любой момент Вы можете приобрести дополнительно заправленные баллоны.</p><p>2. Когда баллон (а это приблизительно 30 бочонков по 5л) у Вас опустошится, обратитесь в магазин, который торгует продукцией ARDO по предварительному заказу;</p><p>3. Вы сдаете пустой баллон, получаете полный и оплачиваете только заправку. Фирма-производитель оставляет за собой право на внесение изменений в конструкцию и комплектацию приборов.</p>', 'Холодильник ARDO GO 2210 BH HOMEPUB', '', ''),
	(2, '', 62, 'Электрический фрезер Bosch GOF 900 CE', '<p>Электрический фрезер мощностью 900 Вт.</p>', '<p>Электрический фрезер мощностью 900 Вт. Константная электроника для обеспечения постоянной производительности. Точная регулировка глубины захода с точностью до 1/10 мм с функцией погружения. Регулировка числа оборотов. Система SDS.</p>', 'Электрический фрезер Bosch GOF 900 CE', '', ''),
	(3, '', 62, 'Электрический фрезер Bosch GOF 900 CE', '<p>Электрический фрезер мощностью 900 Вт.</p>', '<p>Электрический фрезер мощностью 900 Вт. Константная электроника для обеспечения постоянной производительности. Точная регулировка глубины захода с точностью до 1/10 мм с функцией погружения. Регулировка числа оборотов. Система SDS.</p>', 'Электрический фрезер Bosch GOF 900 CE', '', ''),
	(1, '', 63, 'Проводная стерео гарнитура Sony Ericsson HPM-20', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', 'Проводная стерео гарнитура Sony Ericsson HPM-20', '', ''),
	(3, '', 61, 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения.</p>', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения. В качестве рабочего инструмента используется алмазный отрезной диск с наружным диаметром 250 мм, посадочным диаметром 25,4 мм и шириной 2,4 мм. Станок предназначен для эксплуатации в районах умеренного климата, исполнения У, при температуре окружающего воздуха от плюс 35°С до минус 15°С. Режим работы станка повторно-кратковременный - 15/5мин. (15 мин. - работа, 5 мин. - пауза) Мощность - 1200 Вт.</p>', 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '', ''),
	(1, '', 62, 'Электрический фрезер Bosch GOF 900 CE', '<p>Электрический фрезер мощностью 900 Вт.</p>', '<p>Электрический фрезер мощностью 900 Вт. Константная электроника для обеспечения постоянной производительности. Точная регулировка глубины захода с точностью до 1/10 мм с функцией погружения. Регулировка числа оборотов. Система SDS.</p>', 'Электрический фрезер Bosch GOF 900 CE', '', ''),
	(2, '', 61, 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения.</p>', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения. В качестве рабочего инструмента используется алмазный отрезной диск с наружным диаметром 250 мм, посадочным диаметром 25,4 мм и шириной 2,4 мм. Станок предназначен для эксплуатации в районах умеренного климата, исполнения У, при температуре окружающего воздуха от плюс 35°С до минус 15°С. Режим работы станка повторно-кратковременный - 15/5мин. (15 мин. - работа, 5 мин. - пауза) Мощность - 1200 Вт.</p>', 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '', ''),
	(1, '', 61, 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения.</p>', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения. В качестве рабочего инструмента используется алмазный отрезной диск с наружным диаметром 250 мм, посадочным диаметром 25,4 мм и шириной 2,4 мм. Станок предназначен для эксплуатации в районах умеренного климата, исполнения У, при температуре окружающего воздуха от плюс 35°С до минус 15°С. Режим работы станка повторно-кратковременный - 15/5мин. (15 мин. - работа, 5 мин. - пауза) Мощность - 1200 Вт.</p>', 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '', ''),
	(3, '', 60, 'Аккумуляторный степлер Bosch PTK 3,6 V', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В.</p>', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В. PowerLight - при помощи встроенного светодиода рабочая поверхность заготовки будет всегда освещённой. Безопасное остриё - выполнение удара только в рабочем положении. Фронтальное расположение острия степлера для крепления близко к кромке, механическая установка силы удара с помощью регулировочного колёсика в зависимости от обрабатываемого материала. Эргономичная рукоятка с мягкой накладкой для неутомительной работы. Указатель количества скоб.</p>', 'Аккумуляторный степлер Bosch PTK 3,6 V', '', ''),
	(2, '', 60, 'Аккумуляторный степлер Bosch PTK 3,6 V', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В.</p>', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В. PowerLight - при помощи встроенного светодиода рабочая поверхность заготовки будет всегда освещённой. Безопасное остриё - выполнение удара только в рабочем положении. Фронтальное расположение острия степлера для крепления близко к кромке, механическая установка силы удара с помощью регулировочного колёсика в зависимости от обрабатываемого материала. Эргономичная рукоятка с мягкой накладкой для неутомительной работы. Указатель количества скоб.</p>', 'Аккумуляторный степлер Bosch PTK 3,6 V', '', ''),
	(3, '', 59, 'Стол складной и 4 стула Tramp TRF-005', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p>', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p><p>Материал стола: алюминий</p><p>Материал столешницы: МДФ</p><p>Толщина трубки: 1 мм, диаметр: 25 мм</p><p>Стул: алюминий, полиэстер</p><p>Размеры стула: 36 х 28 х 38,5 см</p><p>Цвет стула: черный</p><p>Допустимая нагрузка на стол: 30 кг</p><p>Допустимая нагрузка на табуретку: 150 кг</p><p>Вес набора мебели: 7 кг</p><p>Оптимальный размер столешницы и дополнительные крепления с обратной стороны увеличивают прочность стола. Комплект собирается в чемоданчик. Имеет дополнительный чехол для транспортировки, что позволит избежать появления лишних царапин и дольше сохранит приглядный вид мебели.</p>', 'Стол складной и 4 стула Tramp TRF-005', '', ''),
	(1, '', 60, 'Аккумуляторный степлер Bosch PTK 3,6 V', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В.</p>', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В. PowerLight - при помощи встроенного светодиода рабочая поверхность заготовки будет всегда освещённой. Безопасное остриё - выполнение удара только в рабочем положении. Фронтальное расположение острия степлера для крепления близко к кромке, механическая установка силы удара с помощью регулировочного колёсика в зависимости от обрабатываемого материала. Эргономичная рукоятка с мягкой накладкой для неутомительной работы. Указатель количества скоб.</p>', 'Аккумуляторный степлер Bosch PTK 3,6 V', '', ''),
	(2, '', 59, 'Стол складной и 4 стула Tramp TRF-005', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p>', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p><p>Материал стола: алюминий</p><p>Материал столешницы: МДФ</p><p>Толщина трубки: 1 мм, диаметр: 25 мм</p><p>Стул: алюминий, полиэстер</p><p>Размеры стула: 36 х 28 х 38,5 см</p><p>Цвет стула: черный</p><p>Допустимая нагрузка на стол: 30 кг</p><p>Допустимая нагрузка на табуретку: 150 кг</p><p>Вес набора мебели: 7 кг</p><p>Оптимальный размер столешницы и дополнительные крепления с обратной стороны увеличивают прочность стола. Комплект собирается в чемоданчик. Имеет дополнительный чехол для транспортировки, что позволит избежать появления лишних царапин и дольше сохранит приглядный вид мебели.</p>', 'Стол складной и 4 стула Tramp TRF-005', '', ''),
	(1, '', 59, 'Стол складной и 4 стула Tramp TRF-005', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p>', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p><p>Материал стола: алюминий</p><p>Материал столешницы: МДФ</p><p>Толщина трубки: 1 мм, диаметр: 25 мм</p><p>Стул: алюминий, полиэстер</p><p>Размеры стула: 36 х 28 х 38,5 см</p><p>Цвет стула: черный</p><p>Допустимая нагрузка на стол: 30 кг</p><p>Допустимая нагрузка на табуретку: 150 кг</p><p>Вес набора мебели: 7 кг</p><p>Оптимальный размер столешницы и дополнительные крепления с обратной стороны увеличивают прочность стола. Комплект собирается в чемоданчик. Имеет дополнительный чехол для транспортировки, что позволит избежать появления лишних царапин и дольше сохранит приглядный вид мебели.</p>', 'Стол складной и 4 стула Tramp TRF-005', '', ''),
	(2, '', 58, 'Рюкзак-кенгуру GLOBEX КЕНГА', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед.</p>', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед. Жесткое основание подголовника поддержит и защитит головку ребенка. Благодаря специальным застежкам рюкзачок растет вместе с ребенком. Широкие ремни с прокладкой. Упаковка - прочная яркая коробка с ручкой.</p>', 'Рюкзак-кенгуру GLOBEX КЕНГА', '', ''),
	(3, '', 58, 'Рюкзак-кенгуру GLOBEX КЕНГА', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед.</p>', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед. Жесткое основание подголовника поддержит и защитит головку ребенка. Благодаря специальным застежкам рюкзачок растет вместе с ребенком. Широкие ремни с прокладкой. Упаковка - прочная яркая коробка с ручкой.</p>', 'Рюкзак-кенгуру GLOBEX КЕНГА', '', ''),
	(1, '', 58, 'Рюкзак-кенгуру GLOBEX КЕНГА', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед.</p>', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед. Жесткое основание подголовника поддержит и защитит головку ребенка. Благодаря специальным застежкам рюкзачок растет вместе с ребенком. Широкие ремни с прокладкой. Упаковка - прочная яркая коробка с ручкой.</p>', 'Рюкзак-кенгуру GLOBEX КЕНГА', '', ''),
	(3, '', 57, 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p>', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p><p>Ткань:</p><p>Высококачественный поплин, 100% хлопок безупречной выделки</p><p>Наполнитель:</p><p>Бортик: Поролон + Синтепон</p><p>Одеяло и подушка: Шерсть</p><p>Декор:</p><p>Вышивка на бортике и пододеяльнике</p><p>в комплект входит стойка к балдахину</p><p>отделка ручной работы шитьём, мягкими бантами и вышитой аппликацией</p><p>деликатные швы, рассчитанные на прикосновение к нежной коже ребёнка бельё полностью безопасно и гипоаллергенно</p><p>Страна происхождения - Россия</p>', 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '', ''),
	(2, '', 57, 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p>', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p><p>Ткань:</p><p>Высококачественный поплин, 100% хлопок безупречной выделки</p><p>Наполнитель:</p><p>Бортик: Поролон + Синтепон</p><p>Одеяло и подушка: Шерсть</p><p>Декор:</p><p>Вышивка на бортике и пододеяльнике</p><p>в комплект входит стойка к балдахину</p><p>отделка ручной работы шитьём, мягкими бантами и вышитой аппликацией</p><p>деликатные швы, рассчитанные на прикосновение к нежной коже ребёнка бельё полностью безопасно и гипоаллергенно</p><p>Страна происхождения - Россия</p>', 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '', ''),
	(1, '', 57, 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p>', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p><p>Ткань:</p><p>Высококачественный поплин, 100% хлопок безупречной выделки</p><p>Наполнитель:</p><p>Бортик: Поролон + Синтепон</p><p>Одеяло и подушка: Шерсть</p><p>Декор:</p><p>Вышивка на бортике и пододеяльнике</p><p>в комплект входит стойка к балдахину</p><p>отделка ручной работы шитьём, мягкими бантами и вышитой аппликацией</p><p>деликатные швы, рассчитанные на прикосновение к нежной коже ребёнка бельё полностью безопасно и гипоаллергенно</p><p>Страна происхождения - Россия</p>', 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '', ''),
	(2, '', 56, 'Посудомоечная машина Siemens SN 26 T 552 EU', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч.</p>', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч. Электронные индикаторы наличия соли и ополаскивателя. Переставляемый по высоте верхний короб. Датчик загрузки. Автоматическая функция «3 в 1». Электроника регенерирования. Tехнология попеременной подачи воды. Cистема защиты стеклянной посуды. Tеплообменник. Mеханическая блокировка от детей. Защита от протечек. Проточный водонагреватель, совмещенный с помпой. Цвет: серебристый.</p>', 'Посудомоечная машина Siemens SN 26 T 552 EU', '', ''),
	(3, '', 56, 'Посудомоечная машина Siemens SN 26 T 552 EU', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч.</p>', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч. Электронные индикаторы наличия соли и ополаскивателя. Переставляемый по высоте верхний короб. Датчик загрузки. Автоматическая функция «3 в 1». Электроника регенерирования. Tехнология попеременной подачи воды. Cистема защиты стеклянной посуды. Tеплообменник. Mеханическая блокировка от детей. Защита от протечек. Проточный водонагреватель, совмещенный с помпой. Цвет: серебристый.</p>', 'Посудомоечная машина Siemens SN 26 T 552 EU', '', ''),
	(1, '', 56, 'Посудомоечная машина Siemens SN 26 T 552 EU', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч.</p>', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч. Электронные индикаторы наличия соли и ополаскивателя. Переставляемый по высоте верхний короб. Датчик загрузки. Автоматическая функция «3 в 1». Электроника регенерирования. Tехнология попеременной подачи воды. Cистема защиты стеклянной посуды. Tеплообменник. Mеханическая блокировка от детей. Защита от протечек. Проточный водонагреватель, совмещенный с помпой. Цвет: серебристый.</p>', 'Посудомоечная машина Siemens SN 26 T 552 EU', '', ''),
	(3, '', 55, 'Аэрогриль VES 797', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p>', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p><p>Содержит галогенный нагревательный элемент, сокращающий срок приготовления пищи в несколько раз. Аэрогриль ves 797 имеет корпус, изготовленный из термостойкого стекла. База аэрогриля – с металлическим основанием. Таймер аэрогриля рассчитан на 60 минут.</p><p>Мощность аэрогриля ves 797 составляет 1350 Вт. В нем предусмотрена функция автоматической чистки и мойки. Гарантийный срок службы аэрогриля ves 797 – 1 год.</p><p>Набор аксессуаров аэрогриля: расширительное кольцо, двойная решетка, подставка под крышку, пароварка.</p>', 'Аэрогриль VES 797', '', ''),
	(2, '', 55, 'Аэрогриль VES 797', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p>', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p><p>Содержит галогенный нагревательный элемент, сокращающий срок приготовления пищи в несколько раз. Аэрогриль ves 797 имеет корпус, изготовленный из термостойкого стекла. База аэрогриля – с металлическим основанием. Таймер аэрогриля рассчитан на 60 минут.</p><p>Мощность аэрогриля ves 797 составляет 1350 Вт. В нем предусмотрена функция автоматической чистки и мойки. Гарантийный срок службы аэрогриля ves 797 – 1 год.</p><p>Набор аксессуаров аэрогриля: расширительное кольцо, двойная решетка, подставка под крышку, пароварка.</p>', 'Аэрогриль VES 797', '', ''),
	(2, '', 54, 'Газовая плита Ardo D662 RNS', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p>', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p><p>Высота, cм 85</p><p>Ширина, см 60</p><p>Глубина, cм 60</p><p>Количество конфорок (газ+электро) 4+0</p><p>Газ-контроль конфорок есть</p><p>Газ-контроль духовки и гриля есть</p><p>Тип решеток чугун</p><p>Гриль газовый</p><p>Вертел есть</p><p>Электроподжиг автоматический</p><p>Подсветка есть</p><p>Термостат есть</p><p>Двойное стекло дверей духовки есть</p><p>Объем духовки, л 56</p>', 'Газовая плита Ardo D662 RNS', '', ''),
	(3, '', 54, 'Газовая плита Ardo D662 RNS', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p>', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p><p>Высота, cм 85</p><p>Ширина, см 60</p><p>Глубина, cм 60</p><p>Количество конфорок (газ+электро) 4+0</p><p>Газ-контроль конфорок есть</p><p>Газ-контроль духовки и гриля есть</p><p>Тип решеток чугун</p><p>Гриль газовый</p><p>Вертел есть</p><p>Электроподжиг автоматический</p><p>Подсветка есть</p><p>Термостат есть</p><p>Двойное стекло дверей духовки есть</p><p>Объем духовки, л 56</p>', 'Газовая плита Ardo D662 RNS', '', ''),
	(1, '', 55, 'Аэрогриль VES 797', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p>', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p><p>Содержит галогенный нагревательный элемент, сокращающий срок приготовления пищи в несколько раз. Аэрогриль ves 797 имеет корпус, изготовленный из термостойкого стекла. База аэрогриля – с металлическим основанием. Таймер аэрогриля рассчитан на 60 минут.</p><p>Мощность аэрогриля ves 797 составляет 1350 Вт. В нем предусмотрена функция автоматической чистки и мойки. Гарантийный срок службы аэрогриля ves 797 – 1 год.</p><p>Набор аксессуаров аэрогриля: расширительное кольцо, двойная решетка, подставка под крышку, пароварка.</p>', 'Аэрогриль VES 797', '', ''),
	(1, '', 54, 'Газовая плита Ardo D662 RNS', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p>', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p><p>Высота, cм 85</p><p>Ширина, см 60</p><p>Глубина, cм 60</p><p>Количество конфорок (газ+электро) 4+0</p><p>Газ-контроль конфорок есть</p><p>Газ-контроль духовки и гриля есть</p><p>Тип решеток чугун</p><p>Гриль газовый</p><p>Вертел есть</p><p>Электроподжиг автоматический</p><p>Подсветка есть</p><p>Термостат есть</p><p>Двойное стекло дверей духовки есть</p><p>Объем духовки, л 56</p>', 'Газовая плита Ardo D662 RNS', '', ''),
	(2, '', 53, 'Bluetooth гарнитура Plantronics Voyager 835', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях.</p>', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях. Технология Multipoint позволяет использовать данную гарнитуру для работы сразу с двумя Bluetooth устройствами. Работает до 5 часов в режиме разговора и до 7 дней в режиме ожидания. В комплекте с гарнитурой поставляется зарядное устройство от сети, а также уникальное автомобильное зарядное устройство.</p>', 'Bluetooth гарнитура Plantronics Voyager 835', '', ''),
	(3, '', 53, 'Bluetooth гарнитура Plantronics Voyager 835', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях.</p>', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях. Технология Multipoint позволяет использовать данную гарнитуру для работы сразу с двумя Bluetooth устройствами. Работает до 5 часов в режиме разговора и до 7 дней в режиме ожидания. В комплекте с гарнитурой поставляется зарядное устройство от сети, а также уникальное автомобильное зарядное устройство.</p>', 'Bluetooth гарнитура Plantronics Voyager 835', '', ''),
	(2, '', 27, 'Кофеварка эспрессо KENWOOD ES 471', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p>', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p><p>Индикатор уровня воды</p><p>Резервуар для воды Съёмный</p><p>Давление (бар) 15</p><p>Объём резервуара д/воды 1.5 л</p><p>Потребляемая мощность 1050 Вт</p><p>Дополнительные параметры:</p><p>Используемый кофемолотый / чалды</p><p>Нагреватель TermoGen.</p><p>Система подогрева чашек.</p><p>Подходит для использования фильтров ESE.</p><p>Профессиональный наконечник для вспенивания молока.</p><p>Возможность приготовления капуччино ручное приготовление</p><p>Индикатор контроля температуры.</p><p>Регулятор пара с покрытием SureGrip.</p><p>Съёмный лоток для капель.</p><p>Отсек для хранения шнура.</p>', 'Кофеварка эспрессо KENWOOD ES 471', '', ''),
	(3, '', 27, 'Кофеварка эспрессо KENWOOD ES 471', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p>', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p><p>Индикатор уровня воды</p><p>Резервуар для воды Съёмный</p><p>Давление (бар) 15</p><p>Объём резервуара д/воды 1.5 л</p><p>Потребляемая мощность 1050 Вт</p><p>Дополнительные параметры:</p><p>Используемый кофемолотый / чалды</p><p>Нагреватель TermoGen.</p><p>Система подогрева чашек.</p><p>Подходит для использования фильтров ESE.</p><p>Профессиональный наконечник для вспенивания молока.</p><p>Возможность приготовления капуччино ручное приготовление</p><p>Индикатор контроля температуры.</p><p>Регулятор пара с покрытием SureGrip.</p><p>Съёмный лоток для капель.</p><p>Отсек для хранения шнура.</p>', 'Кофеварка эспрессо KENWOOD ES 471', '', ''),
	(1, '', 28, 'Тостер KRUPS FEM2 ToastExpert', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', 'Тостер KRUPS FEM2 ToastExpert', '', ''),
	(2, '', 28, 'Тостер KRUPS FEM2 ToastExpert', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', 'Тостер KRUPS FEM2 ToastExpert', '', ''),
	(3, '', 28, 'Тостер KRUPS FEM2 ToastExpert', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', 'Тостер KRUPS FEM2 ToastExpert', '', ''),
	(1, '', 29, 'Сушилка для овощей и фруктов Energy EN-660', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества.</p>', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества. 4 съемных поддона, принудительная вентиляция, регулируемый термостат (60°- 75° С). Корпус изготовлен из пластика ABS, что позволяет защитить продукты от разрушительного воздействия солнечного света.</p>', 'Сушилка для овощей и фруктов Energy EN-660', '', ''),
	(2, '', 29, 'Сушилка для овощей и фруктов Energy EN-660', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества.</p>', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества. 4 съемных поддона, принудительная вентиляция, регулируемый термостат (60°- 75° С). Корпус изготовлен из пластика ABS, что позволяет защитить продукты от разрушительного воздействия солнечного света.</p>', 'Сушилка для овощей и фруктов Energy EN-660', '', ''),
	(3, '', 29, 'Сушилка для овощей и фруктов Energy EN-660', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества.</p>', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества. 4 съемных поддона, принудительная вентиляция, регулируемый термостат (60°- 75° С). Корпус изготовлен из пластика ABS, что позволяет защитить продукты от разрушительного воздействия солнечного света.</p>', 'Сушилка для овощей и фруктов Energy EN-660', '', ''),
	(1, '', 30, 'Электрический чайник Stadler Form SFK.808', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище.</p>', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище. Мощность 2200 Вт обеспечит быстрое закипание, а центральный контакт - поворот на 360 градусов и удобную эксплуатацию. Чайник оснащен съемным фильтром-сеткой, для безопасного использования предусмотрена блокировка крышки. Основание, ручка и крышка чайника изготовлены из прочного пластика. Электрический шнур убирается в специальный отсек.</p>', 'Электрический чайник Stadler Form SFK.808', '', ''),
	(2, '', 30, 'Электрический чайник Stadler Form SFK.808', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище.</p>', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище. Мощность 2200 Вт обеспечит быстрое закипание, а центральный контакт - поворот на 360 градусов и удобную эксплуатацию. Чайник оснащен съемным фильтром-сеткой, для безопасного использования предусмотрена блокировка крышки. Основание, ручка и крышка чайника изготовлены из прочного пластика. Электрический шнур убирается в специальный отсек.</p>', 'Электрический чайник Stadler Form SFK.808', '', ''),
	(3, '', 30, 'Электрический чайник Stadler Form SFK.808', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище.</p>', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище. Мощность 2200 Вт обеспечит быстрое закипание, а центральный контакт - поворот на 360 градусов и удобную эксплуатацию. Чайник оснащен съемным фильтром-сеткой, для безопасного использования предусмотрена блокировка крышки. Основание, ручка и крышка чайника изготовлены из прочного пластика. Электрический шнур убирается в специальный отсек.</p>', 'Электрический чайник Stadler Form SFK.808', '', ''),
	(1, '', 31, 'Сэндвичница Eta 3151', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница.</p>', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница. Панели с качественным противопригарным покрытием просто и быстро заменяются, температура автоматически регулируется термостатом. Световая сигнализация для удобства приготовления (красный световой индикатор загорается при подключении к сети, зеленый - при достижении необходимой температуры). Для безопасного использования корпус в теплоизоляционной обшивке, ручки прибора с фиксатором также изолированы и устойчивы к нагреву. Цвет корпуса - черный со вставками из нержавеющей стали.</p>', 'Сэндвичница Eta 3151', '', ''),
	(2, '', 31, 'Сэндвичница Eta 3151', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница.</p>', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница. Панели с качественным противопригарным покрытием просто и быстро заменяются, температура автоматически регулируется термостатом. Световая сигнализация для удобства приготовления (красный световой индикатор загорается при подключении к сети, зеленый - при достижении необходимой температуры). Для безопасного использования корпус в теплоизоляционной обшивке, ручки прибора с фиксатором также изолированы и устойчивы к нагреву. Цвет корпуса - черный со вставками из нержавеющей стали.</p>', 'Сэндвичница Eta 3151', '', ''),
	(3, '', 31, 'Сэндвичница Eta 3151', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница.</p>', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница. Панели с качественным противопригарным покрытием просто и быстро заменяются, температура автоматически регулируется термостатом. Световая сигнализация для удобства приготовления (красный световой индикатор загорается при подключении к сети, зеленый - при достижении необходимой температуры). Для безопасного использования корпус в теплоизоляционной обшивке, ручки прибора с фиксатором также изолированы и устойчивы к нагреву. Цвет корпуса - черный со вставками из нержавеющей стали.</p>', 'Сэндвичница Eta 3151', '', ''),
	(1, '', 32, 'Пароварка BORK FS ECP 98100 BK', '<p>Общие характеристики</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p>', '<p>Общие характеристики:</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p><p>Функции:</p><p>Автоприготовление есть, рецептов - 6</p><p>Термостат есть</p><p>Отсрочка старта есть</p><p>Конструкция</p><p>Материал корпуса пластик</p><p>Материал паровых корзин прозрачный пластик</p><p>Объем резервуара для воды 1.5 л</p><p>Чаша для риса есть, на 1.9 л</p><p>Индикатор уровня воды есть</p><p>Съемные решетки есть</p><p>Дисплей есть</p><p>Долив воды во время приготовления есть</p><p>Особенности:</p><p>Габариты (ШхВхГ) 35x41x25 см</p><p>Вес 2.68 кг</p><p>Длина сетевого шнура 1 м</p>', 'Пароварка BORK FS ECP 98100 BK', '', ''),
	(2, '', 32, 'Пароварка BORK FS ECP 98100 BK', '<p>Общие характеристики</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p>', '<p>Общие характеристики:</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p><p>Функции:</p><p>Автоприготовление есть, рецептов - 6</p><p>Термостат есть</p><p>Отсрочка старта есть</p><p>Конструкция</p><p>Материал корпуса пластик</p><p>Материал паровых корзин прозрачный пластик</p><p>Объем резервуара для воды 1.5 л</p><p>Чаша для риса есть, на 1.9 л</p><p>Индикатор уровня воды есть</p><p>Съемные решетки есть</p><p>Дисплей есть</p><p>Долив воды во время приготовления есть</p><p>Особенности:</p><p>Габариты (ШхВхГ) 35x41x25 см</p><p>Вес 2.68 кг</p><p>Длина сетевого шнура 1 м</p>', 'Пароварка BORK FS ECP 98100 BK', '', ''),
	(3, '', 32, 'Пароварка BORK FS ECP 98100 BK', '<p>Общие характеристики</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p>', '<p>Общие характеристики:</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p><p>Функции:</p><p>Автоприготовление есть, рецептов - 6</p><p>Термостат есть</p><p>Отсрочка старта есть</p><p>Конструкция</p><p>Материал корпуса пластик</p><p>Материал паровых корзин прозрачный пластик</p><p>Объем резервуара для воды 1.5 л</p><p>Чаша для риса есть, на 1.9 л</p><p>Индикатор уровня воды есть</p><p>Съемные решетки есть</p><p>Дисплей есть</p><p>Долив воды во время приготовления есть</p><p>Особенности:</p><p>Габариты (ШхВхГ) 35x41x25 см</p><p>Вес 2.68 кг</p><p>Длина сетевого шнура 1 м</p>', 'Пароварка BORK FS ECP 98100 BK', '', ''),
	(1, '', 33, 'Детская кроватка-трансформер Гандылян Тереза', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального</p>', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального столика. Он оснащен тремя объемными выдвижными ящиками с открытыми полочками для мелочей. Ложе может устанавливать на одном из двух уровнях. Два выдвижных ящика для белья. Цвет: натуральный, вишня, орех, махагон, белый, слоновая кость. Размеры кроватки: 67 x 129 х 101 см. Размеры комода: 49.5 x 70 x 70.5 см.</p>', 'Детская кроватка-трансформер Гандылян Тереза', '', ''),
	(2, '', 33, 'Детская кроватка-трансформер Гандылян Тереза', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального</p>', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального столика. Он оснащен тремя объемными выдвижными ящиками с открытыми полочками для мелочей. Ложе может устанавливать на одном из двух уровнях. Два выдвижных ящика для белья. Цвет: натуральный, вишня, орех, махагон, белый, слоновая кость. Размеры кроватки: 67 x 129 х 101 см. Размеры комода: 49.5 x 70 x 70.5 см.</p>', 'Детская кроватка-трансформер Гандылян Тереза', '', ''),
	(3, '', 33, 'Детская кроватка-трансформер Гандылян Тереза', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального</p>', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального столика. Он оснащен тремя объемными выдвижными ящиками с открытыми полочками для мелочей. Ложе может устанавливать на одном из двух уровнях. Два выдвижных ящика для белья. Цвет: натуральный, вишня, орех, махагон, белый, слоновая кость. Размеры кроватки: 67 x 129 х 101 см. Размеры комода: 49.5 x 70 x 70.5 см.</p>', 'Детская кроватка-трансформер Гандылян Тереза', '', ''),
	(1, '', 34, 'Термометр для ванной и помещений Philips AVENT SCH55020', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p>', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p><p>Быстрый и надежный способ измерения температуры</p><p>• Для измерения температуры воды в ванне и воздуха в спальне.</p><p>Безопасен для игры</p><p>• Соответствует стандартам для игрушек и стандартам безопасности</p><p>• Не тонет в воде</p><p>Технические характеристики</p><p>Диапазон температур для работы 10 - 45 °C</p><p>Точность +/-1 °C</p><p>Питание</p><p>Совместим с EN 71, ASTM F963-96a Technical</p><p>Тип элемента питания LR44</p><p>Количество батарей 2</p><p>Съемный/ сменный Да</p><p>Аксессуары</p><p>Руководство пользователя Да</p><p>Страна-бренд: Голландия</p><p>Производитель: Польша, Китай, Турция, Индия, Венгрия, Филипины</p>', 'Термометр для ванной и помещений Philips AVENT SCH55020', '', ''),
	(2, '', 34, 'Термометр для ванной и помещений Philips AVENT SCH55020', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p>', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p><p>Быстрый и надежный способ измерения температуры</p><p>• Для измерения температуры воды в ванне и воздуха в спальне.</p><p>Безопасен для игры</p><p>• Соответствует стандартам для игрушек и стандартам безопасности</p><p>• Не тонет в воде</p><p>Технические характеристики</p><p>Диапазон температур для работы 10 - 45 °C</p><p>Точность +/-1 °C</p><p>Питание</p><p>Совместим с EN 71, ASTM F963-96a Technical</p><p>Тип элемента питания LR44</p><p>Количество батарей 2</p><p>Съемный/ сменный Да</p><p>Аксессуары</p><p>Руководство пользователя Да</p><p>Страна-бренд: Голландия</p><p>Производитель: Польша, Китай, Турция, Индия, Венгрия, Филипины</p>', 'Термометр для ванной и помещений Philips AVENT SCH55020', '', ''),
	(3, '', 34, 'Термометр для ванной и помещений Philips AVENT SCH55020', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p>', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p><p>Быстрый и надежный способ измерения температуры</p><p>• Для измерения температуры воды в ванне и воздуха в спальне.</p><p>Безопасен для игры</p><p>• Соответствует стандартам для игрушек и стандартам безопасности</p><p>• Не тонет в воде</p><p>Технические характеристики</p><p>Диапазон температур для работы 10 - 45 °C</p><p>Точность +/-1 °C</p><p>Питание</p><p>Совместим с EN 71, ASTM F963-96a Technical</p><p>Тип элемента питания LR44</p><p>Количество батарей 2</p><p>Съемный/ сменный Да</p><p>Аксессуары</p><p>Руководство пользователя Да</p><p>Страна-бренд: Голландия</p><p>Производитель: Польша, Китай, Турция, Индия, Венгрия, Филипины</p>', 'Термометр для ванной и помещений Philips AVENT SCH55020', '', ''),
	(1, '', 35, 'Ходунки Chicco Dance 79091', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера.</p>', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера. Три звуковых режима: 5 веселых мелодий, 5 звуков инструментов, 5 звукоподражательных функций. Высокая спинка стульчика для поддержания спины ребенка в ровном состоянии. 6 фиксаторов, которые останавливают ходунки при столкновении с порогом. Сиденье имеет 3 положения высоты. Съемный чехол легко стирается. Размер: 79х66х47 см.</p>', 'Ходунки Chicco Dance 79091', '', ''),
	(2, '', 35, 'Ходунки Chicco Dance 79091', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера.</p>', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера. Три звуковых режима: 5 веселых мелодий, 5 звуков инструментов, 5 звукоподражательных функций. Высокая спинка стульчика для поддержания спины ребенка в ровном состоянии. 6 фиксаторов, которые останавливают ходунки при столкновении с порогом. Сиденье имеет 3 положения высоты. Съемный чехол легко стирается. Размер: 79х66х47 см.</p>', 'Ходунки Chicco Dance 79091', '', ''),
	(3, '', 35, 'Ходунки Chicco Dance 79091', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера.</p>', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера. Три звуковых режима: 5 веселых мелодий, 5 звуков инструментов, 5 звукоподражательных функций. Высокая спинка стульчика для поддержания спины ребенка в ровном состоянии. 6 фиксаторов, которые останавливают ходунки при столкновении с порогом. Сиденье имеет 3 положения высоты. Съемный чехол легко стирается. Размер: 79х66х47 см.</p>', 'Ходунки Chicco Dance 79091', '', ''),
	(1, '', 36, 'Печь для бани Термофор Калина', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения.</p>', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения. Оригинальный лабиринтный газоход обеспечивает мощный скоростной нагрев парилки объемом до 24 кубических метров и качественный прогрев каменной закладки массой около 100 килограммов. Встроенный теплообменник позволяет нагревать воду в выносном баке, размещенном в смежном помещении.</p>', 'Печь для бани Термофор Калина', '', ''),
	(2, '', 36, 'Печь для бани Термофор Калина', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения.</p>', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения. Оригинальный лабиринтный газоход обеспечивает мощный скоростной нагрев парилки объемом до 24 кубических метров и качественный прогрев каменной закладки массой около 100 килограммов. Встроенный теплообменник позволяет нагревать воду в выносном баке, размещенном в смежном помещении.</p>', 'Печь для бани Термофор Калина', '', ''),
	(3, '', 36, 'Печь для бани Термофор Калина', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения.</p>', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения. Оригинальный лабиринтный газоход обеспечивает мощный скоростной нагрев парилки объемом до 24 кубических метров и качественный прогрев каменной закладки массой около 100 килограммов. Встроенный теплообменник позволяет нагревать воду в выносном баке, размещенном в смежном помещении.</p>', 'Печь для бани Термофор Калина', '', ''),
	(1, '', 37, 'Шезлонг Canadian Camper 68014', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p>', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p><p>Сетчатая структура стойкого к ультрафиолетовому излучению материал кресла – HD TEXTILENE - обеспечит максимальный комфорт даже в летнюю жару. Также этот материал почти не впитывает влагу и моментально сохнет.</p><p>Пластмас, из которого сделаны подлокотники кресла, не только придает «шарм» креслу, но и обеспечивает приятные тактильные ощущения. Прочный стальной каркас кресла выдерживает нагрузку до 120 кг.</p><p>Меняется положение при помощи тела человека , в подлокотниках есть два фиксатора для наиболее удобного принятия положения.</p><p>Транспортировочное положение , положение для хранения , минимум занимаемой площади</p>', 'Шезлонг Canadian Camper 68014', '', ''),
	(2, '', 37, 'Шезлонг Canadian Camper 68014', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p>', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p><p>Сетчатая структура стойкого к ультрафиолетовому излучению материал кресла – HD TEXTILENE - обеспечит максимальный комфорт даже в летнюю жару. Также этот материал почти не впитывает влагу и моментально сохнет.</p><p>Пластмас, из которого сделаны подлокотники кресла, не только придает «шарм» креслу, но и обеспечивает приятные тактильные ощущения. Прочный стальной каркас кресла выдерживает нагрузку до 120 кг.</p><p>Меняется положение при помощи тела человека , в подлокотниках есть два фиксатора для наиболее удобного принятия положения.</p><p>Транспортировочное положение , положение для хранения , минимум занимаемой площади</p>', 'Шезлонг Canadian Camper 68014', '', ''),
	(3, '', 37, 'Шезлонг Canadian Camper 68014', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p>', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p><p>Сетчатая структура стойкого к ультрафиолетовому излучению материал кресла – HD TEXTILENE - обеспечит максимальный комфорт даже в летнюю жару. Также этот материал почти не впитывает влагу и моментально сохнет.</p><p>Пластмас, из которого сделаны подлокотники кресла, не только придает «шарм» креслу, но и обеспечивает приятные тактильные ощущения. Прочный стальной каркас кресла выдерживает нагрузку до 120 кг.</p><p>Меняется положение при помощи тела человека , в подлокотниках есть два фиксатора для наиболее удобного принятия положения.</p><p>Транспортировочное положение , положение для хранения , минимум занимаемой площади</p>', 'Шезлонг Canadian Camper 68014', '', ''),
	(1, '', 38, 'Светильник на зеркало K-26 MARTA тюльпан', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', 'Светильник на зеркало K-26 MARTA тюльпан', '', ''),
	(2, '', 38, 'Светильник на зеркало K-26 MARTA тюльпан', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', 'Светильник на зеркало K-26 MARTA тюльпан', '', ''),
	(3, '', 38, 'Светильник на зеркало K-26 MARTA тюльпан', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', 'Светильник на зеркало K-26 MARTA тюльпан', '', ''),
	(1, '', 39, 'Бетономешалка Power Tec BWE180/140', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', 'Бетономешалка Power Tec BWE180/140', '', ''),
	(2, '', 39, 'Бетономешалка Power Tec BWE180/140', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', 'Бетономешалка Power Tec BWE180/140', '', ''),
	(3, '', 39, 'Бетономешалка Power Tec BWE180/140', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', 'Бетономешалка Power Tec BWE180/140', '', ''),
	(1, '', 40, 'Пылесос промышленный FA-SA DOMINO 78 inox', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки</p>', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки, поплавковый клапан, полностью снимаемая верхняя часть, защита от статического электричества, силовой кабель 7 м, легко снимается основа (во время очистки фильтра), всасывающая система с байпасным охлаждением, ударопрочная тележка устойчивая к воздействию химикатов и высоких температур.</p>', 'Пылесос промышленный FA-SA DOMINO 78 inox', '', ''),
	(2, '', 40, 'Пылесос промышленный FA-SA DOMINO 78 inox', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки</p>', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки, поплавковый клапан, полностью снимаемая верхняя часть, защита от статического электричества, силовой кабель 7 м, легко снимается основа (во время очистки фильтра), всасывающая система с байпасным охлаждением, ударопрочная тележка устойчивая к воздействию химикатов и высоких температур.</p>', 'Пылесос промышленный FA-SA DOMINO 78 inox', '', ''),
	(3, '', 40, 'Пылесос промышленный FA-SA DOMINO 78 inox', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки</p>', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки, поплавковый клапан, полностью снимаемая верхняя часть, защита от статического электричества, силовой кабель 7 м, легко снимается основа (во время очистки фильтра), всасывающая система с байпасным охлаждением, ударопрочная тележка устойчивая к воздействию химикатов и высоких температур.</p>', 'Пылесос промышленный FA-SA DOMINO 78 inox', '', ''),
	(1, '', 41, 'Бензорез Stihl TS 700', '<p>Ручной бензорез для пиления металла, бетона и асфальта.</p>', '<p>Ручной бензорез для пиления металла, бетона и асфальта. Мощность: 5 кВт. Трехступенчатая фильтрующая система. Система ElastoStart+ и антивибрационная система. Полуавтоматическое натяжение ремня.</p>', 'Бензорез Stihl TS 700', '', ''),
	(2, '', 41, 'Бензорез Stihl TS 700', '<p>Ручной бензорез для пиления металла, бетона и асфальта.</p>', '<p>Ручной бензорез для пиления металла, бетона и асфальта. Мощность: 5 кВт. Трехступенчатая фильтрующая система. Система ElastoStart+ и антивибрационная система. Полуавтоматическое натяжение ремня.</p>', 'Бензорез Stihl TS 700', '', ''),
	(3, '', 41, 'Бензорез Stihl TS 700', '<p>Ручной бензорез для пиления металла, бетона и асфальта.</p>', '<p>Ручной бензорез для пиления металла, бетона и асфальта. Мощность: 5 кВт. Трехступенчатая фильтрующая система. Система ElastoStart+ и антивибрационная система. Полуавтоматическое натяжение ремня.</p>', 'Бензорез Stihl TS 700', '', ''),
	(1, '', 42, 'Сварочный генератор EUROPOWER EP-200X2', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390.</p>', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390. Предназначен для использования в качестве автономного источника питания и для ручной дуговой сварки постоянным током. Возможность работы в двух режимах - сварочного аппарата и электростанции. Максимальный сварочный ток: 200 A. Номинальный сварочный ток: 140 A. Мощность однофазного (230В) тока, кВт: 4. Диаметр электрода: до 4 мм (включительно). Расход: 2.7 л/ч. Объем бака: 6.5 л. Стартер: ручной. Уровень шума: 74 дБ.</p>', 'Сварочный генератор EUROPOWER EP-200X2', '', ''),
	(2, '', 42, 'Сварочный генератор EUROPOWER EP-200X2', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390.</p>', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390. Предназначен для использования в качестве автономного источника питания и для ручной дуговой сварки постоянным током. Возможность работы в двух режимах - сварочного аппарата и электростанции. Максимальный сварочный ток: 200 A. Номинальный сварочный ток: 140 A. Мощность однофазного (230В) тока, кВт: 4. Диаметр электрода: до 4 мм (включительно). Расход: 2.7 л/ч. Объем бака: 6.5 л. Стартер: ручной. Уровень шума: 74 дБ.</p>', 'Сварочный генератор EUROPOWER EP-200X2', '', ''),
	(3, '', 42, 'Сварочный генератор EUROPOWER EP-200X2', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390.</p>', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390. Предназначен для использования в качестве автономного источника питания и для ручной дуговой сварки постоянным током. Возможность работы в двух режимах - сварочного аппарата и электростанции. Максимальный сварочный ток: 200 A. Номинальный сварочный ток: 140 A. Мощность однофазного (230В) тока, кВт: 4. Диаметр электрода: до 4 мм (включительно). Расход: 2.7 л/ч. Объем бака: 6.5 л. Стартер: ручной. Уровень шума: 74 дБ.</p>', 'Сварочный генератор EUROPOWER EP-200X2', '', ''),
	(1, '', 43, 'Ручная циркулярная пила Metabo KS 54', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением.</p>', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением. Механизм изменения угла наклона пропила в пределах 0 - 45 градусов. Механический тормоз, защита от перегрузки. Новый тип более быстроходных тонких пильных дисков, хорошо видна линия резания, эргономический дизайн.</p>', 'Ручная циркулярная пила Metabo KS 54', '', ''),
	(2, '', 43, 'Ручная циркулярная пила Metabo KS 54', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением.</p>', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением. Механизм изменения угла наклона пропила в пределах 0 - 45 градусов. Механический тормоз, защита от перегрузки. Новый тип более быстроходных тонких пильных дисков, хорошо видна линия резания, эргономический дизайн.</p>', 'Ручная циркулярная пила Metabo KS 54', '', ''),
	(3, '', 43, 'Ручная циркулярная пила Metabo KS 54', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением.</p>', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением. Механизм изменения угла наклона пропила в пределах 0 - 45 градусов. Механический тормоз, защита от перегрузки. Новый тип более быстроходных тонких пильных дисков, хорошо видна линия резания, эргономический дизайн.</p>', 'Ручная циркулярная пила Metabo KS 54', '', ''),
	(1, '', 44, 'Маятниковый лобзик с электроникой Metabo STEB 135', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм.</p>', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм. Легкая и быстрая замена пильного диска, низко расположенный опорный ролик пильного полотна, быстрая фиксация направляющей панели для наклонного распила. Оптимальное удобство обращения благодаря эргономичному дизайну, прорезиненная рукоятка-скоба, устройство воздуходува, обеспечивающее просматриваемость области резания.</p>', 'Маятниковый лобзик с электроникой Metabo STEB 135', '', ''),
	(2, '', 44, 'Маятниковый лобзик с электроникой Metabo STEB 135', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм.</p>', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм. Легкая и быстрая замена пильного диска, низко расположенный опорный ролик пильного полотна, быстрая фиксация направляющей панели для наклонного распила. Оптимальное удобство обращения благодаря эргономичному дизайну, прорезиненная рукоятка-скоба, устройство воздуходува, обеспечивающее просматриваемость области резания.</p>', 'Маятниковый лобзик с электроникой Metabo STEB 135', '', ''),
	(3, '', 44, 'Маятниковый лобзик с электроникой Metabo STEB 135', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм.</p>', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм. Легкая и быстрая замена пильного диска, низко расположенный опорный ролик пильного полотна, быстрая фиксация направляющей панели для наклонного распила. Оптимальное удобство обращения благодаря эргономичному дизайну, прорезиненная рукоятка-скоба, устройство воздуходува, обеспечивающее просматриваемость области резания.</p>', 'Маятниковый лобзик с электроникой Metabo STEB 135', '', ''),
	(1, '', 45, 'Виброплита Сплитстоун VS-244', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка.</p>', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка. Идеальна при ремонте дорог, благоустройстве территории, устройстве фундаментов и инженерных сетей. Производительность виброплиты, м2/час 140. Эксплуатационная масса: 90 кг.</p>', 'Виброплита Сплитстоун VS-244', '', ''),
	(2, '', 45, 'Виброплита Сплитстоун VS-244', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка.</p>', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка. Идеальна при ремонте дорог, благоустройстве территории, устройстве фундаментов и инженерных сетей. Производительность виброплиты, м2/час 140. Эксплуатационная масса: 90 кг.</p>', 'Виброплита Сплитстоун VS-244', '', ''),
	(3, '', 45, 'Виброплита Сплитстоун VS-244', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка.</p>', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка. Идеальна при ремонте дорог, благоустройстве территории, устройстве фундаментов и инженерных сетей. Производительность виброплиты, м2/час 140. Эксплуатационная масса: 90 кг.</p>', 'Виброплита Сплитстоун VS-244', '', ''),
	(1, '', 46, 'Автомобильная громкая связь NEON BTHF009Dsp', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова.</p>', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова. Переключение между функциями осуществляется при помощи многофункциональной клавиши, размещенной на лицевой панели. Версия BLUETOOTH: 2.0. Поддержка профилей: Наушники и Handsfree. Рабочее расстояние: 10 м (класс 2). Экран LCD отображает номер звонящего из 12 цифр. Шумоподавления и устранение эха.</p>', 'Автомобильная громкая связь NEON BTHF009Dsp', '', ''),
	(2, '', 46, 'Автомобильная громкая связь NEON BTHF009Dsp', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова.</p>', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова. Переключение между функциями осуществляется при помощи многофункциональной клавиши, размещенной на лицевой панели. Версия BLUETOOTH: 2.0. Поддержка профилей: Наушники и Handsfree. Рабочее расстояние: 10 м (класс 2). Экран LCD отображает номер звонящего из 12 цифр. Шумоподавления и устранение эха.</p>', 'Автомобильная громкая связь NEON BTHF009Dsp', '', ''),
	(3, '', 46, 'Автомобильная громкая связь NEON BTHF009Dsp', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова.</p>', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова. Переключение между функциями осуществляется при помощи многофункциональной клавиши, размещенной на лицевой панели. Версия BLUETOOTH: 2.0. Поддержка профилей: Наушники и Handsfree. Рабочее расстояние: 10 м (класс 2). Экран LCD отображает номер звонящего из 12 цифр. Шумоподавления и устранение эха.</p>', 'Автомобильная громкая связь NEON BTHF009Dsp', '', ''),
	(1, '', 47, 'Радиотелефон DECT Siemens Gigaset S675', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями.</p>', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями. Конференц-связь, автодозвон, автоответчик на 40 минут с дистанционным управлением с другого телефона, блокировка клавиатуры, идентификатор на 30 номеров, ответ поднятием трубки с базы, разъём для гарнитуры, уведомление о пропущенных вызовах с помощью SMS, экономичный режим, SMS. Стандарты DECT/GAP. Радиус действия в помещении до 50 метров, на открытой местности до 300. Возможно подключение до 6 трубок к одной базе и 4 баз к одной трубке.</p>', 'Радиотелефон DECT Siemens Gigaset S675', '', ''),
	(2, '', 47, 'Радиотелефон DECT Siemens Gigaset S675', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями.</p>', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями. Конференц-связь, автодозвон, автоответчик на 40 минут с дистанционным управлением с другого телефона, блокировка клавиатуры, идентификатор на 30 номеров, ответ поднятием трубки с базы, разъём для гарнитуры, уведомление о пропущенных вызовах с помощью SMS, экономичный режим, SMS. Стандарты DECT/GAP. Радиус действия в помещении до 50 метров, на открытой местности до 300. Возможно подключение до 6 трубок к одной базе и 4 баз к одной трубке.</p>', 'Радиотелефон DECT Siemens Gigaset S675', '', ''),
	(3, '', 47, 'Радиотелефон DECT Siemens Gigaset S675', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями.</p>', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями. Конференц-связь, автодозвон, автоответчик на 40 минут с дистанционным управлением с другого телефона, блокировка клавиатуры, идентификатор на 30 номеров, ответ поднятием трубки с базы, разъём для гарнитуры, уведомление о пропущенных вызовах с помощью SMS, экономичный режим, SMS. Стандарты DECT/GAP. Радиус действия в помещении до 50 метров, на открытой местности до 300. Возможно подключение до 6 трубок к одной базе и 4 баз к одной трубке.</p>', 'Радиотелефон DECT Siemens Gigaset S675', '', ''),
	(1, '', 48, 'Проводной телефон TeXet TX-223 Кабинет', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', 'Проводной телефон TeXet TX-223 Кабинет', '', ''),
	(2, '', 48, 'Проводной телефон TeXet TX-223 Кабинет', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', 'Проводной телефон TeXet TX-223 Кабинет', '', ''),
	(3, '', 48, 'Проводной телефон TeXet TX-223 Кабинет', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', 'Проводной телефон TeXet TX-223 Кабинет', '', ''),
	(1, '', 49, 'Мобильный телефон LG KG810', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену.</p>', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену. Этот имиджевый аксессуар обладает достаточной мультимедийной мощью. Сенсорные клавиши. TFT дисплей, отображающий 262000 цветов. 64-х голосная полифония. Встроенная 1.3 мегапиксельная камера. Прием и отправка SMS, EMS, MMS, E-mail. МР3/AAC/MP4 плеер. FM-радио. Bluetooth.</p>', 'Мобильный телефон LG KG810', '', ''),
	(2, '', 49, 'Мобильный телефон LG KG810', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену.</p>', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену. Этот имиджевый аксессуар обладает достаточной мультимедийной мощью. Сенсорные клавиши. TFT дисплей, отображающий 262000 цветов. 64-х голосная полифония. Встроенная 1.3 мегапиксельная камера. Прием и отправка SMS, EMS, MMS, E-mail. МР3/AAC/MP4 плеер. FM-радио. Bluetooth.</p>', 'Мобильный телефон LG KG810', '', ''),
	(3, '', 49, 'Мобильный телефон LG KG810', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену.</p>', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену. Этот имиджевый аксессуар обладает достаточной мультимедийной мощью. Сенсорные клавиши. TFT дисплей, отображающий 262000 цветов. 64-х голосная полифония. Встроенная 1.3 мегапиксельная камера. Прием и отправка SMS, EMS, MMS, E-mail. МР3/AAC/MP4 плеер. FM-радио. Bluetooth.</p>', 'Мобильный телефон LG KG810', '', ''),
	(1, '', 50, 'Цифровой системный телефон LG-Nortel LDP-7016D', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', 'Цифровой системный телефон LG-Nortel LDP-7016D', '', ''),
	(2, '', 50, 'Цифровой системный телефон LG-Nortel LDP-7016D', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', 'Цифровой системный телефон LG-Nortel LDP-7016D', '', ''),
	(3, '', 50, 'Цифровой системный телефон LG-Nortel LDP-7016D', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', 'Цифровой системный телефон LG-Nortel LDP-7016D', '', ''),
	(1, '', 51, 'Цифровая системная консоль PANASONIC KX-T7440', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', 'Цифровая системная консоль PANASONIC KX-T7440', '', ''),
	(2, '', 51, 'Цифровая системная консоль PANASONIC KX-T7440', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', 'Цифровая системная консоль PANASONIC KX-T7440', '', ''),
	(3, '', 51, 'Цифровая системная консоль PANASONIC KX-T7440', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', 'Цифровая системная консоль PANASONIC KX-T7440', '', ''),
	(1, '', 52, 'Радиостанция Motorola TLKR-T4', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий).</p>', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий). Бесплатные звонки. 8 каналов. Сканирование/мониторинг. ЖК-дисплей. Клипса на ремень и петля для ношения. Блокировка клавиатуры. Индикатор заряда батареи. Мощность передатчика 0.5 Вт. 1 мелодия вызова. Звуки клавиатуры.</p>', 'Радиостанция Motorola TLKR-T4', '', ''),
	(2, '', 52, 'Радиостанция Motorola TLKR-T4', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий).</p>', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий). Бесплатные звонки. 8 каналов. Сканирование/мониторинг. ЖК-дисплей. Клипса на ремень и петля для ношения. Блокировка клавиатуры. Индикатор заряда батареи. Мощность передатчика 0.5 Вт. 1 мелодия вызова. Звуки клавиатуры.</p>', 'Радиостанция Motorola TLKR-T4', '', ''),
	(3, '', 52, 'Радиостанция Motorola TLKR-T4', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий).</p>', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий). Бесплатные звонки. 8 каналов. Сканирование/мониторинг. ЖК-дисплей. Клипса на ремень и петля для ношения. Блокировка клавиатуры. Индикатор заряда батареи. Мощность передатчика 0.5 Вт. 1 мелодия вызова. Звуки клавиатуры.</p>', 'Радиостанция Motorola TLKR-T4', '', ''),
	(1, '', 53, 'Bluetooth гарнитура Plantronics Voyager 835', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях.</p>', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях. Технология Multipoint позволяет использовать данную гарнитуру для работы сразу с двумя Bluetooth устройствами. Работает до 5 часов в режиме разговора и до 7 дней в режиме ожидания. В комплекте с гарнитурой поставляется зарядное устройство от сети, а также уникальное автомобильное зарядное устройство.</p>', 'Bluetooth гарнитура Plantronics Voyager 835', '', ''),
	(2, '', 2, 'Аппарат для пончиков Daewoo DI 8102', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы.</p>', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы. Индикатор включения и готовности. Антипригарное покрытие. Регулировка температуры.</p>', 'Аппарат для пончиков Daewoo DI 8102', '', ''),
	(3, '', 2, 'Аппарат для пончиков Daewoo DI 8102', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы.</p>', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы. Индикатор включения и готовности. Антипригарное покрытие. Регулировка температуры.</p>', 'Аппарат для пончиков Daewoo DI 8102', '', ''),
	(1, '', 3, 'Гладильная доска Metalnova Domino Plus', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений.</p>', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений. Имеет твердую гладильную платформу из огнеупорного материала, на которую одевается влагоустойчивый и жаропрочный чехол. Ножки выполнены из хромированного металла. Рабочая поверхность: 114x36 см. Подставка для утюга. Вес:7 кг.</p>', 'Гладильная доска Metalnova Domino Plus', '', ''),
	(2, '', 3, 'Гладильная доска Metalnova Domino Plus', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений.</p>', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений. Имеет твердую гладильную платформу из огнеупорного материала, на которую одевается влагоустойчивый и жаропрочный чехол. Ножки выполнены из хромированного металла. Рабочая поверхность: 114x36 см. Подставка для утюга. Вес:7 кг.</p>', 'Гладильная доска Metalnova Domino Plus', '', ''),
	(3, '', 3, 'Гладильная доска Metalnova Domino Plus', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений.</p>', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений. Имеет твердую гладильную платформу из огнеупорного материала, на которую одевается влагоустойчивый и жаропрочный чехол. Ножки выполнены из хромированного металла. Рабочая поверхность: 114x36 см. Подставка для утюга. Вес:7 кг.</p>', 'Гладильная доска Metalnova Domino Plus', '', ''),
	(1, '', 4, 'Лампы АРО Голден S', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме.</p>', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме. Размеры: Большой лампы (L): Высота - 143 см; Диаметр - 29 см Средней лампы (M): Высота - 115 см; Диаметр - 29 см Маленькой лампы (S): Высота - 83 см; Диаметр - 26 см Страна-производитель: Индонезия</p>', 'Лампы АРО Голден S', '', ''),
	(2, '', 4, 'Лампы АРО Голден S', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме.</p>', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме. Размеры: Большой лампы (L): Высота - 143 см; Диаметр - 29 см Средней лампы (M): Высота - 115 см; Диаметр - 29 см Маленькой лампы (S): Высота - 83 см; Диаметр - 26 см Страна-производитель: Индонезия</p>', 'Лампы АРО Голден S', '', ''),
	(3, '', 4, 'Лампы АРО Голден S', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме.</p>', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме. Размеры: Большой лампы (L): Высота - 143 см; Диаметр - 29 см Средней лампы (M): Высота - 115 см; Диаметр - 29 см Маленькой лампы (S): Высота - 83 см; Диаметр - 26 см Страна-производитель: Индонезия</p>', 'Лампы АРО Голден S', '', ''),
	(1, '', 5, 'Детектор проводки Bosch PDO Multi', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom».</p>', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom». Дисплей с высоким разрешением. Однозначное запрещение/разрешение сверления с помощью светодиодного индикатора. Автоматическая калибровка.</p>', 'Детектор проводки Bosch PDO Multi', '', ''),
	(2, '', 5, 'Детектор проводки Bosch PDO Multi', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom».</p>', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom». Дисплей с высоким разрешением. Однозначное запрещение/разрешение сверления с помощью светодиодного индикатора. Автоматическая калибровка.</p>', 'Детектор проводки Bosch PDO Multi', '', ''),
	(3, '', 5, 'Детектор проводки Bosch PDO Multi', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom».</p>', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom». Дисплей с высоким разрешением. Однозначное запрещение/разрешение сверления с помощью светодиодного индикатора. Автоматическая калибровка.</p>', 'Детектор проводки Bosch PDO Multi', '', ''),
	(1, '', 6, 'Оптический нивелир Bosch GOL 20 D Professional', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м.</p>', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м. Оптимально подходит для использования вне помещений благодаря прочному корпусу с защитой от пыли и брызг IP 54. Светосильный объектив для чёткого захвата цели. Пентапризма для удобства считывания показаний сферического уровня. Коллиматор для грубого выравнивания. Вертикальное изображение. Большая кнопка фокусировки для простого выравнивания.Бесконечный микрометренный привод (измерение в гонах) с проскальзывающей муфтой.</p>', 'Оптический нивелир Bosch GOL 20 D Professional', '', ''),
	(2, '', 6, 'Оптический нивелир Bosch GOL 20 D Professional', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м.</p>', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м. Оптимально подходит для использования вне помещений благодаря прочному корпусу с защитой от пыли и брызг IP 54. Светосильный объектив для чёткого захвата цели. Пентапризма для удобства считывания показаний сферического уровня. Коллиматор для грубого выравнивания. Вертикальное изображение. Большая кнопка фокусировки для простого выравнивания.Бесконечный микрометренный привод (измерение в гонах) с проскальзывающей муфтой.</p>', 'Оптический нивелир Bosch GOL 20 D Professional', '', ''),
	(3, '', 6, 'Оптический нивелир Bosch GOL 20 D Professional', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м.</p>', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м. Оптимально подходит для использования вне помещений благодаря прочному корпусу с защитой от пыли и брызг IP 54. Светосильный объектив для чёткого захвата цели. Пентапризма для удобства считывания показаний сферического уровня. Коллиматор для грубого выравнивания. Вертикальное изображение. Большая кнопка фокусировки для простого выравнивания.Бесконечный микрометренный привод (измерение в гонах) с проскальзывающей муфтой.</p>', 'Оптический нивелир Bosch GOL 20 D Professional', '', ''),
	(1, '', 7, 'Краскораспылитель Bosch PFS 105 E', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов.</p>', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов. Потребляемая мощность 350 Вт. Система плавной регулировки расхода краски. Сопло для распыления краски с 3 положениями. Рукоятка с мягкой накладкой. Длина шланга: 3.4 м.</p>', 'Краскораспылитель Bosch PFS 105 E', '', ''),
	(2, '', 7, 'Краскораспылитель Bosch PFS 105 E', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов.</p>', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов. Потребляемая мощность 350 Вт. Система плавной регулировки расхода краски. Сопло для распыления краски с 3 положениями. Рукоятка с мягкой накладкой. Длина шланга: 3.4 м.</p>', 'Краскораспылитель Bosch PFS 105 E', '', ''),
	(3, '', 7, 'Краскораспылитель Bosch PFS 105 E', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов.</p>', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов. Потребляемая мощность 350 Вт. Система плавной регулировки расхода краски. Сопло для распыления краски с 3 положениями. Рукоятка с мягкой накладкой. Длина шланга: 3.4 м.</p>', 'Краскораспылитель Bosch PFS 105 E', '', ''),
	(1, '', 8, 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '<p>Изящная, узкая конструкция для оптимального удобства в обращении.</p>', '<p>Изящная, узкая конструкция для оптимального удобства в обращении. Используется для внутренних вырезов. Свободная работа по разметке и шаблону. Фиксируемая матрица для прямых прорезов, замена пуансона и матрицы без инструмента (система SDS). Легкосменные режущие инструменты.</p>', 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '', ''),
	(2, '', 8, 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '<p>Изящная, узкая конструкция для оптимального удобства в обращении.</p>', '<p>Изящная, узкая конструкция для оптимального удобства в обращении. Используется для внутренних вырезов. Свободная работа по разметке и шаблону. Фиксируемая матрица для прямых прорезов, замена пуансона и матрицы без инструмента (система SDS). Легкосменные режущие инструменты.</p>', 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '', ''),
	(3, '', 8, 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '<p>Изящная, узкая конструкция для оптимального удобства в обращении.</p>', '<p>Изящная, узкая конструкция для оптимального удобства в обращении. Используется для внутренних вырезов. Свободная работа по разметке и шаблону. Фиксируемая матрица для прямых прорезов, замена пуансона и матрицы без инструмента (система SDS). Легкосменные режущие инструменты.</p>', 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '', ''),
	(1, '', 9, 'Перфоратор AEG PN 11 E', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса.</p>', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса. Высокая энергия удара позволяет без труда и быстро разрушать конструкции из бетона. Анти вибрационная система AVS. Прорезиненная накладка Softgrip на рукоятках. Сила удара 27.0 Дж. Комплектуется кейсом.</p>', 'Перфоратор AEG PN 11 E', '', ''),
	(2, '', 9, 'Перфоратор AEG PN 11 E', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса.</p>', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса. Высокая энергия удара позволяет без труда и быстро разрушать конструкции из бетона. Анти вибрационная система AVS. Прорезиненная накладка Softgrip на рукоятках. Сила удара 27.0 Дж. Комплектуется кейсом.</p>', 'Перфоратор AEG PN 11 E', '', ''),
	(3, '', 9, 'Перфоратор AEG PN 11 E', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса.</p>', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса. Высокая энергия удара позволяет без труда и быстро разрушать конструкции из бетона. Анти вибрационная система AVS. Прорезиненная накладка Softgrip на рукоятках. Сила удара 27.0 Дж. Комплектуется кейсом.</p>', 'Перфоратор AEG PN 11 E', '', ''),
	(1, '', 10, 'VoIP-телефон Linksys SPA962', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых.</p>', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых. Стильный дизайн и высокая функциональность аппарата делают его использование чрезвычайно эффективным в гибкой среде IP-телефонии, IP УАТС или крупных IP call-центрах. Комплектация аппарата включает в себя: поддержку 6 активных каналов, dual switched Ethernet ports, поддержку 802.3 c питанием от свитча (PoE -Power of the Ethernet, это означает, что телефон питается от сети Ethernet), цветной дисплей с высоким разрешением, динамик, и 2.5 мм разъем для гарнитуры. Каждый канал телефонного аппарата может быть настроен на работу либо с несколькими различными номерами, либо с одним, но многоканальным номером.</p>', 'VoIP-телефон Linksys SPA962', '', ''),
	(2, '', 10, 'VoIP-телефон Linksys SPA962', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых.</p>', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых. Стильный дизайн и высокая функциональность аппарата делают его использование чрезвычайно эффективным в гибкой среде IP-телефонии, IP УАТС или крупных IP call-центрах. Комплектация аппарата включает в себя: поддержку 6 активных каналов, dual switched Ethernet ports, поддержку 802.3 c питанием от свитча (PoE -Power of the Ethernet, это означает, что телефон питается от сети Ethernet), цветной дисплей с высоким разрешением, динамик, и 2.5 мм разъем для гарнитуры. Каждый канал телефонного аппарата может быть настроен на работу либо с несколькими различными номерами, либо с одним, но многоканальным номером.</p>', 'VoIP-телефон Linksys SPA962', '', ''),
	(3, '', 10, 'VoIP-телефон Linksys SPA962', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых.</p>', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых. Стильный дизайн и высокая функциональность аппарата делают его использование чрезвычайно эффективным в гибкой среде IP-телефонии, IP УАТС или крупных IP call-центрах. Комплектация аппарата включает в себя: поддержку 6 активных каналов, dual switched Ethernet ports, поддержку 802.3 c питанием от свитча (PoE -Power of the Ethernet, это означает, что телефон питается от сети Ethernet), цветной дисплей с высоким разрешением, динамик, и 2.5 мм разъем для гарнитуры. Каждый канал телефонного аппарата может быть настроен на работу либо с несколькими различными номерами, либо с одним, но многоканальным номером.</p>', 'VoIP-телефон Linksys SPA962', '', ''),
	(1, '', 11, 'Мобильный телефон Porsche Design P\'9521', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны.</p>', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны. Сеть: GSM / EDGE (850 / 900 / 1800 / 1900 МГц). Камера: 3.2 мегапикселя, автофокус, вспышка. Дисплей: AMOLED, 2.2 дюйма, 320 х 240 точек. USB 1.1. Bluetooth 1.2, A2DP, AVRCP. Считыватель отпечатков пальцев.</p>', 'Мобильный телефон Porsche Design P\'9521', '', ''),
	(2, '', 11, 'Мобильный телефон Porsche Design P\'9521', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны.</p>', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны. Сеть: GSM / EDGE (850 / 900 / 1800 / 1900 МГц). Камера: 3.2 мегапикселя, автофокус, вспышка. Дисплей: AMOLED, 2.2 дюйма, 320 х 240 точек. USB 1.1. Bluetooth 1.2, A2DP, AVRCP. Считыватель отпечатков пальцев.</p>', 'Мобильный телефон Porsche Design P\'9521', '', ''),
	(3, '', 11, 'Мобильный телефон Porsche Design P\'9521', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны.</p>', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны. Сеть: GSM / EDGE (850 / 900 / 1800 / 1900 МГц). Камера: 3.2 мегапикселя, автофокус, вспышка. Дисплей: AMOLED, 2.2 дюйма, 320 х 240 точек. USB 1.1. Bluetooth 1.2, A2DP, AVRCP. Считыватель отпечатков пальцев.</p>', 'Мобильный телефон Porsche Design P\'9521', '', ''),
	(1, '', 12, 'Автомобильная громкая связь Nokia CK-300', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки.</p>', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки. Встроенная функция DSP. Индикатор питания на внешнем устройстве ввода. Активация голосовых команд (требует поддержки телефоном). Переадресация вызова с телефона на автомобильный комплект. Повтор последнего набранного номера. Отключение микрофона. Воспроизведение МР3-файлов из памяти мобильного устройства или совместимого музыкального плеера. Подключение к автомагнитоле для лучшего качества звука (требуется магнитола с разъемом AUX и адаптер кабеля).</p>', 'Автомобильная громкая связь Nokia CK-300', '', ''),
	(2, '', 12, 'Автомобильная громкая связь Nokia CK-300', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки.</p>', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки. Встроенная функция DSP. Индикатор питания на внешнем устройстве ввода. Активация голосовых команд (требует поддержки телефоном). Переадресация вызова с телефона на автомобильный комплект. Повтор последнего набранного номера. Отключение микрофона. Воспроизведение МР3-файлов из памяти мобильного устройства или совместимого музыкального плеера. Подключение к автомагнитоле для лучшего качества звука (требуется магнитола с разъемом AUX и адаптер кабеля).</p>', 'Автомобильная громкая связь Nokia CK-300', '', ''),
	(3, '', 12, 'Автомобильная громкая связь Nokia CK-300', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки.</p>', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки. Встроенная функция DSP. Индикатор питания на внешнем устройстве ввода. Активация голосовых команд (требует поддержки телефоном). Переадресация вызова с телефона на автомобильный комплект. Повтор последнего набранного номера. Отключение микрофона. Воспроизведение МР3-файлов из памяти мобильного устройства или совместимого музыкального плеера. Подключение к автомагнитоле для лучшего качества звука (требуется магнитола с разъемом AUX и адаптер кабеля).</p>', 'Автомобильная громкая связь Nokia CK-300', '', ''),
	(1, '', 13, 'Радиостанция JJ-Connect HE-400', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км.</p>', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км. Работает на частотах 433.075 - 434.775. Яркий и информативный дисплей с подсветкой, отображает всю необходимую информацию, предусмотрен также тональный вызов, индикатор заряда батарей и регулировка громкости. В качестве дополнительной полезной функции имеется встроенный электронный компас, что пригодится в походе, в лесу, на охоте или рыбалке. Цвет - черно-серебристый.</p>', 'Радиостанция JJ-Connect HE-400', '', ''),
	(2, '', 13, 'Радиостанция JJ-Connect HE-400', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км.</p>', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км. Работает на частотах 433.075 - 434.775. Яркий и информативный дисплей с подсветкой, отображает всю необходимую информацию, предусмотрен также тональный вызов, индикатор заряда батарей и регулировка громкости. В качестве дополнительной полезной функции имеется встроенный электронный компас, что пригодится в походе, в лесу, на охоте или рыбалке. Цвет - черно-серебристый.</p>', 'Радиостанция JJ-Connect HE-400', '', ''),
	(3, '', 13, 'Радиостанция JJ-Connect HE-400', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км.</p>', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км. Работает на частотах 433.075 - 434.775. Яркий и информативный дисплей с подсветкой, отображает всю необходимую информацию, предусмотрен также тональный вызов, индикатор заряда батарей и регулировка громкости. В качестве дополнительной полезной функции имеется встроенный электронный компас, что пригодится в походе, в лесу, на охоте или рыбалке. Цвет - черно-серебристый.</p>', 'Радиостанция JJ-Connect HE-400', '', ''),
	(1, '', 14, 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80</p>', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80 Способ питания: собственный аккумулятор Дальность действия (макс.): 10 м Время работы в режиме ожидания до (ч): 8 Время работы в режиме разговора до (м): 480 Способ зарядки аккумулятора: от внешнего USB-порта, Сетевое зарядное устройство 220В Время зарядки: 120 мин Передача данных: Bluetooth Версия Bluetooth протокола: 2.0 Поддерживаемые профили Bluetooth: A2DP, AVRCP, EDR, Handsfree, Headset Поддержка Bluetooth стерео: ДаФункциональность Функция Multipoint: Да Функции гарнитуры: автоматическая подстройка громкости, ответ/окончание разговора, повтор последнего номера, шумоподавление, эхоподавление Индикатор разряда аккумулятора: Да Световой индикатор вызова: ДаКомплектация - Гарнитура Bluetooth стерео Jabra BT650 Halo - Чехол - Кабель USB - 3.5 мм кабель - Краткое руководство пользователя - Зарядное устройство</p>', 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '', ''),
	(2, '', 14, 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80</p>', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80 Способ питания: собственный аккумулятор Дальность действия (макс.): 10 м Время работы в режиме ожидания до (ч): 8 Время работы в режиме разговора до (м): 480 Способ зарядки аккумулятора: от внешнего USB-порта, Сетевое зарядное устройство 220В Время зарядки: 120 мин Передача данных: Bluetooth Версия Bluetooth протокола: 2.0 Поддерживаемые профили Bluetooth: A2DP, AVRCP, EDR, Handsfree, Headset Поддержка Bluetooth стерео: ДаФункциональность Функция Multipoint: Да Функции гарнитуры: автоматическая подстройка громкости, ответ/окончание разговора, повтор последнего номера, шумоподавление, эхоподавление Индикатор разряда аккумулятора: Да Световой индикатор вызова: ДаКомплектация - Гарнитура Bluetooth стерео Jabra BT650 Halo - Чехол - Кабель USB - 3.5 мм кабель - Краткое руководство пользователя - Зарядное устройство</p>', 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '', ''),
	(3, '', 14, 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80</p>', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80 Способ питания: собственный аккумулятор Дальность действия (макс.): 10 м Время работы в режиме ожидания до (ч): 8 Время работы в режиме разговора до (м): 480 Способ зарядки аккумулятора: от внешнего USB-порта, Сетевое зарядное устройство 220В Время зарядки: 120 мин Передача данных: Bluetooth Версия Bluetooth протокола: 2.0 Поддерживаемые профили Bluetooth: A2DP, AVRCP, EDR, Handsfree, Headset Поддержка Bluetooth стерео: ДаФункциональность Функция Multipoint: Да Функции гарнитуры: автоматическая подстройка громкости, ответ/окончание разговора, повтор последнего номера, шумоподавление, эхоподавление Индикатор разряда аккумулятора: Да Световой индикатор вызова: ДаКомплектация - Гарнитура Bluetooth стерео Jabra BT650 Halo - Чехол - Кабель USB - 3.5 мм кабель - Краткое руководство пользователя - Зарядное устройство</p>', 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '', ''),
	(1, '', 15, 'Микросотовый телефон DECT Panasonic KX-TCA275', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона.</p>', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона. Каждый микросотовый телефон DECT может быть зарегистрирован на нескольких АТС, что позволяет использовать один и тот же номер в разных офисах. Когда Вы находитесь в другом офисе, трубка автоматически регистрируется в местной DECT сети, и Вы можете принимать звонки на свой обычный внутренний номер. Цветной графический ЖК-дисплей с подсветкой и с поддержкой кириллицы. Работа с АТС Panasonic серий KX-TDA/TDE/NCP. Поддержка CTI приложений (доступность данной функции зависит от версии KX-TDA0141/0158). Поддержка функций АТС. Разъём для подключения гарнитуры. Полифонический звонок (10 мелодий). Клавиатура с подсветкой и символами кириллицы. Спикерфон. Программируемые кнопоки. Виброзвонок. Режим на совещание. Записная книжка на 200 записей. Размер: 123х45х23 мм. Вес: 115 г.</p>', 'Микросотовый телефон DECT Panasonic KX-TCA275', '', ''),
	(2, '', 15, 'Микросотовый телефон DECT Panasonic KX-TCA275', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона.</p>', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона. Каждый микросотовый телефон DECT может быть зарегистрирован на нескольких АТС, что позволяет использовать один и тот же номер в разных офисах. Когда Вы находитесь в другом офисе, трубка автоматически регистрируется в местной DECT сети, и Вы можете принимать звонки на свой обычный внутренний номер. Цветной графический ЖК-дисплей с подсветкой и с поддержкой кириллицы. Работа с АТС Panasonic серий KX-TDA/TDE/NCP. Поддержка CTI приложений (доступность данной функции зависит от версии KX-TDA0141/0158). Поддержка функций АТС. Разъём для подключения гарнитуры. Полифонический звонок (10 мелодий). Клавиатура с подсветкой и символами кириллицы. Спикерфон. Программируемые кнопоки. Виброзвонок. Режим на совещание. Записная книжка на 200 записей. Размер: 123х45х23 мм. Вес: 115 г.</p>', 'Микросотовый телефон DECT Panasonic KX-TCA275', '', ''),
	(3, '', 15, 'Микросотовый телефон DECT Panasonic KX-TCA275', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона.</p>', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона. Каждый микросотовый телефон DECT может быть зарегистрирован на нескольких АТС, что позволяет использовать один и тот же номер в разных офисах. Когда Вы находитесь в другом офисе, трубка автоматически регистрируется в местной DECT сети, и Вы можете принимать звонки на свой обычный внутренний номер. Цветной графический ЖК-дисплей с подсветкой и с поддержкой кириллицы. Работа с АТС Panasonic серий KX-TDA/TDE/NCP. Поддержка CTI приложений (доступность данной функции зависит от версии KX-TDA0141/0158). Поддержка функций АТС. Разъём для подключения гарнитуры. Полифонический звонок (10 мелодий). Клавиатура с подсветкой и символами кириллицы. Спикерфон. Программируемые кнопоки. Виброзвонок. Режим на совещание. Записная книжка на 200 записей. Размер: 123х45х23 мм. Вес: 115 г.</p>', 'Микросотовый телефон DECT Panasonic KX-TCA275', '', ''),
	(1, '', 16, 'Радиотелефон DECT Siemens Gigaset SL785', '<p>Стильный и удобный телефон в металлическом корпусе.</p>', '<p>Стильный и удобный телефон в металлическом корпусе. Встроенный автоответчик с записью на 45 минут. Гарнитура с Bluetooh® и дуплексный режим hands-free. Большой цветной TFT-дисплей с инновационным интерфейсом. Технология ECO Mode Plus с режимом нулевой передачи. Адресная книга на 500 записей. Возможность обмена данными из адресной книги через Bluetooth® с мобильными телефонами. Индикация номера. Синхронизация с компьютером через Bluethooth®/USB. Возможна регистрация до 6 трубок.</p>', 'Радиотелефон DECT Siemens Gigaset SL785', '', ''),
	(2, '', 16, 'Радиотелефон DECT Siemens Gigaset SL785', '<p>Стильный и удобный телефон в металлическом корпусе.</p>', '<p>Стильный и удобный телефон в металлическом корпусе. Встроенный автоответчик с записью на 45 минут. Гарнитура с Bluetooh® и дуплексный режим hands-free. Большой цветной TFT-дисплей с инновационным интерфейсом. Технология ECO Mode Plus с режимом нулевой передачи. Адресная книга на 500 записей. Возможность обмена данными из адресной книги через Bluetooth® с мобильными телефонами. Индикация номера. Синхронизация с компьютером через Bluethooth®/USB. Возможна регистрация до 6 трубок.</p>', 'Радиотелефон DECT Siemens Gigaset SL785', '', ''),
	(3, '', 16, 'Радиотелефон DECT Siemens Gigaset SL785', '<p>Стильный и удобный телефон в металлическом корпусе.</p>', '<p>Стильный и удобный телефон в металлическом корпусе. Встроенный автоответчик с записью на 45 минут. Гарнитура с Bluetooh® и дуплексный режим hands-free. Большой цветной TFT-дисплей с инновационным интерфейсом. Технология ECO Mode Plus с режимом нулевой передачи. Адресная книга на 500 записей. Возможность обмена данными из адресной книги через Bluetooth® с мобильными телефонами. Индикация номера. Синхронизация с компьютером через Bluethooth®/USB. Возможна регистрация до 6 трубок.</p>', 'Радиотелефон DECT Siemens Gigaset SL785', '', ''),
	(1, '', 17, 'Миксер Vitesse VS-240', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p>', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p><p>Возможности использования</p><p>Турборежим: Нет</p><p>Импульсный режим: Да</p><p>Вращение чаши: Нет</p><p>Насадки</p><p>Количество насадок: 2</p><p>Универсальный измельчитель: Нет</p><p>Венчик для взбивания: Да</p><p>Насадка для приготовления пюре: Нет</p><p>Крюки для замешивания теста: Да</p><p>Насадка-блендер: Нет</p><p>Конструкция</p><p>Материал корпуса: Пластик</p><p>Приспособление для хранения насадок: Нет</p><p>Кнопка отсоединения насадок: Да</p><p>Прорезиненная ручка: Нет</p><p>Защитная крышка на чашу: Нет</p><p>Приспособление для намотки шнура: Да</p>', 'Миксер Vitesse VS-240', '', ''),
	(2, '', 17, 'Миксер Vitesse VS-240', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p>', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p><p>Возможности использования</p><p>Турборежим: Нет</p><p>Импульсный режим: Да</p><p>Вращение чаши: Нет</p><p>Насадки</p><p>Количество насадок: 2</p><p>Универсальный измельчитель: Нет</p><p>Венчик для взбивания: Да</p><p>Насадка для приготовления пюре: Нет</p><p>Крюки для замешивания теста: Да</p><p>Насадка-блендер: Нет</p><p>Конструкция</p><p>Материал корпуса: Пластик</p><p>Приспособление для хранения насадок: Нет</p><p>Кнопка отсоединения насадок: Да</p><p>Прорезиненная ручка: Нет</p><p>Защитная крышка на чашу: Нет</p><p>Приспособление для намотки шнура: Да</p>', 'Миксер Vitesse VS-240', '', ''),
	(3, '', 17, 'Миксер Vitesse VS-240', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p>', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p><p>Возможности использования</p><p>Турборежим: Нет</p><p>Импульсный режим: Да</p><p>Вращение чаши: Нет</p><p>Насадки</p><p>Количество насадок: 2</p><p>Универсальный измельчитель: Нет</p><p>Венчик для взбивания: Да</p><p>Насадка для приготовления пюре: Нет</p><p>Крюки для замешивания теста: Да</p><p>Насадка-блендер: Нет</p><p>Конструкция</p><p>Материал корпуса: Пластик</p><p>Приспособление для хранения насадок: Нет</p><p>Кнопка отсоединения насадок: Да</p><p>Прорезиненная ручка: Нет</p><p>Защитная крышка на чашу: Нет</p><p>Приспособление для намотки шнура: Да</p>', 'Миксер Vitesse VS-240', '', ''),
	(1, '', 18, 'Духовой шкаф Gorenje BO87KR', '<p>Независимый встраиваемый духовой шкаф шириной 60 см и объемом 64 литра. Электронный сенсорный программный модуль с температурным зондом. Светодиодная подсветка MoodLite с выбором 7 цветов.</p>', '<p>Независимый встраиваемый духовой шкаф шириной 60 см и объемом 64 литра. Электронный сенсорный программный модуль с температурным зондом. Светодиодная подсветка MoodLite с выбором 7 цветов. Часы. Будильник. 8 программ, установленные производителем по типу продукта. Возможность создания 3 собственных программ. Звуковой сигнал. Сплошное застекление дверцы духовки. Откидные верхние нагреватели. Блокировка от детей. Температурный сенсор. Защитное отключение.</p>', 'Духовой шкаф Gorenje BO87KR', '', ''),
	(2, '', 18, 'Gorenje BO87KR oven', '<p>Built oven width 60 cm and a volume of 64 liters. Electronic sensor module with a temperature probe. MoodLite led lighting with 7 colors.</p>', '<p><span>Built oven width 60 cm and a volume of 64 liters. Electronic sensor module with a temperature probe. MoodLite led lighting with 7 colors.</span>&nbsp;<span style="font-size: 13px;">Timer. Alarm clock. 8 programmes set by the manufacturer by product type. The ability to create three own programs. Beep. Continuous glazing of the oven door. Flip top heaters. Child lock. Temperature sensor. Safety shutdown.</span></p>', 'Gorenje BO87KR oven', 'Gorenje BO87KR oven, С переводом', 'Built oven width 60 cm and a volume of 64 liters. Electronic sensor module with a temperature probe. MoodLite led lighting with 7 colors.'),
	(3, '', 18, 'Духовой шкаф Gorenje BO87KR', '<p>Независимый встраиваемый духовой шкаф шириной 60 см и объемом 64 литра. Электронный сенсорный программный модуль с температурным зондом. Светодиодная подсветка MoodLite с выбором 7 цветов.</p>', '<p>Независимый встраиваемый духовой шкаф шириной 60 см и объемом 64 литра. Электронный сенсорный программный модуль с температурным зондом. Светодиодная подсветка MoodLite с выбором 7 цветов. Часы. Будильник. 8 программ, установленные производителем по типу продукта. Возможность создания 3 собственных программ. Звуковой сигнал. Сплошное застекление дверцы духовки. Откидные верхние нагреватели. Блокировка от детей. Температурный сенсор. Защитное отключение.</p>', 'Духовой шкаф Gorenje BO87KR', '', ''),
	(1, '', 19, 'Универсальная коляска LONEX Classic Retro', '<p>Универсальная коляска с люлькой из натуральной лозы для детей до 6 месяцев.</p>', '<p>Универсальная коляска с люлькой из натуральной лозы для детей до 6 месяцев. Коляска состоит из съемной люльки и прогулочного блока. Ресорная амортизация на 4-х колесах. Колеса на выбор: диаметр 40 см - резиновые повышенной износостойкости не надувные, диаметр 36 см - надувные. Диски хромированные. Прогулочный блок устанавливается на шасси в двух направлениях - лицом к себе или от себя. Спинка регулируется в 4-х положениях до горизонтального. Имеются пятиточечные ремни безопасности с мягкими накладками и ограничительный бампер. Регулируемая подножка. В комплект входит утепленный чехол на ножки, корзина для покупок, сумка для мамы, дождевик. Большой выбор цветов.</p>', 'Универсальная коляска LONEX Classic Retro', '', ''),
	(2, '', 19, 'Stroller LONEX Classic Retro', '<p><span style="font-size: 13px;">Universal stroller made of natural vine for babies under 6 month.</span></p>', '<p><span>Universal stroller made of natural vine for babies under 6 month.&nbsp;</span><span style="font-size: 13px;">The stroller has a removable bassinet and the stroller seat. Depreciation on 4 wheels. Wheels option: diameter 40 cm - not inflatable, diameter 36 cm - inflatable. Chrome disks. The seat unit can be installed in two directions. The backrest is adjustable in 4 positions to horizontal. There are five-point safety harness with soft lining and restrictive bumper. Adjustable footrest. The kit includes an insulated cover on foot, shopping basket, bag for mom, raincoat. Great range of colors.</span></p>', 'Stroller LONEX Classic Retro', 'Stroller LONEX Classic Retro, С переводом', 'Universal stroller made of natural vine for babies under 6 month.'),
	(3, '', 19, 'Универсальная коляска LONEX Classic Retro', '<p>Универсальная коляска с люлькой из натуральной лозы для детей до 6 месяцев.</p>', '<p>Универсальная коляска с люлькой из натуральной лозы для детей до 6 месяцев. Коляска состоит из съемной люльки и прогулочного блока. Ресорная амортизация на 4-х колесах. Колеса на выбор: диаметр 40 см - резиновые повышенной износостойкости не надувные, диаметр 36 см - надувные. Диски хромированные. Прогулочный блок устанавливается на шасси в двух направлениях - лицом к себе или от себя. Спинка регулируется в 4-х положениях до горизонтального. Имеются пятиточечные ремни безопасности с мягкими накладками и ограничительный бампер. Регулируемая подножка. В комплект входит утепленный чехол на ножки, корзина для покупок, сумка для мамы, дождевик. Большой выбор цветов.</p>', 'Универсальная коляска LONEX Classic Retro', '', ''),
	(1, '', 20, 'Видеоняня Motorola MBP 35', '<p>Цифровая видео-радионяня с большим 3.5 дюймовым LCD дисплеем. Режим ночного видения. Режим сна для сохранения заряда.</p>', '<p>Цифровая видео-радионяня с большим 3.5 дюймовым LCD дисплеем. Режим ночного видения. Режим сна для сохранения заряда. Большая зона приема с предупреждением о выходе из зоны приема. Позволяет присматривать за ребенком на расстоянии до 150 метров. Чистый звук с индикатором громкости. Цифровой термометр. Высокочувствительный микрофон. Связь в обе стороны. Пять колыбельных. Заряжаемый аккумулятор./p></p>', 'Видеоняня Motorola MBP 35', '', ''),
	(2, '', 20, 'Motorola MBP 35 Remote Wireless Video Baby Monitor', '<p>Digital video baby monitor with a large 3.5 inch LCD display. Night Vision mode. Sleep mode for battery saving.</p>', '<p><span>Digital video baby monitor with a large 3.5 inch LCD display. Night Vision mode. Sleep mode for battery saving.&nbsp;</span>A large reception area with a warning. It allows you to look after your baby at a distance of 150 meters. Clear sound with the volume indicator. Digital thermometer. Highly sensitive microphone. Communication in both directions. Five lullabies. Rechargeable battery.</p>', 'Motorola MBP 35 Remote Wireless Video Baby Monitor', 'Motorola MBP 35 Remote Wireless Video Baby Monitor, С переводом', 'Digital video baby monitor with a large 3.5 inch LCD display. Night Vision mode. Sleep mode for battery saving.'),
	(3, '', 20, 'Видеоняня Motorola MBP 35', '<p>Цифровая видео-радионяня с большим 3.5 дюймовым LCD дисплеем. Режим ночного видения. Режим сна для сохранения заряда.</p>', '<p>Цифровая видео-радионяня с большим 3.5 дюймовым LCD дисплеем. Режим ночного видения. Режим сна для сохранения заряда. Большая зона приема с предупреждением о выходе из зоны приема. Позволяет присматривать за ребенком на расстоянии до 150 метров. Чистый звук с индикатором громкости. Цифровой термометр. Высокочувствительный микрофон. Связь в обе стороны. Пять колыбельных. Заряжаемый аккумулятор./p></p>', 'Видеоняня Motorola MBP 35', '', ''),
	(1, '', 21, 'Электрокамин Dimplex Mozart', '<p>Электрический очаг с порталами в сборе эффектом пламени Optiflame. Регулируемая мощность обогрева 1-2 кВт. Возможность работы без обогрева. Цвет портала - белый.</p>', '<p>Электрический очаг с порталами в сборе эффектом пламени Optiflame. Регулируемая мощность обогрева 1-2 кВт. Возможность работы без обогрева. Цвет портала - белый.</p>', 'Электрокамин Dimplex Mozart', '', ''),
	(2, '', 21, 'Electric fireplace Dimplex Mozart', '<p><span>Electric fireplace with portals assembly flame effect Optiflame. Adjustable heat output of 1-2 kW. Ability to work without heating. Portal\'s color - white.</span></p>', '<p>Electric fireplace with portals assembly flame effect Optiflame. Adjustable heat output of 1-2 kW. Ability to work without heating. Portal\'s color - white.</p>', 'Electric fireplace Dimplex Mozart', 'Electric fireplace Dimplex Mozart, С переводом', 'Electric fireplace with portals assembly flame effect Optiflame. Adjustable heat output of 1-2 kW. Ability to work without heating. Portal\'s color - white.'),
	(3, '', 21, 'Электрокамин Dimplex Mozart', '<p>Электрический очаг с порталами в сборе эффектом пламени Optiflame. Регулируемая мощность обогрева 1-2 кВт. Возможность работы без обогрева. Цвет портала - белый.</p>', '<p>Электрический очаг с порталами в сборе эффектом пламени Optiflame. Регулируемая мощность обогрева 1-2 кВт. Возможность работы без обогрева. Цвет портала - белый.</p>', 'Электрокамин Dimplex Mozart', '', ''),
	(1, '', 22, 'Гладильная доска Gimi Temper Drop', '<p>Гладильная доска имеет специальное место для утюга. Ножки из крашеной стальной трубки (диаметром 22 и 32 мм) овальной в сечении, что даёт дополнительную устойчивость.</p>', '<p>Гладильная доска имеет специальное место для утюга. Ножки из крашеной стальной трубки (диаметром 22 и 32 мм) овальной в сечении, что даёт дополнительную устойчивость. Держатель для электрического кабеля от утюга. Чехол гладильной доски из 100 % хлопка с подкладкой из мягкого нетканого материала. Поверхность гладильной доски выполнена в виде сетки, что позволяет свободно пропускать пар от утюга. Форма стола скошенная для удобного разглаживания белья в труднодоступных местах. Гладильная доска легко складывается, занимает мало места в сложенном состоянии. Большая рабочая поверхность гладильной доски позволяет гладить не только рубашки, мужские брюки, но и постельное бельё. Высота гладильной доски может свободно регулироваться. Устойчива и прочна.</p>', 'Гладильная доска Gimi Temper Drop', '', ''),
	(2, '', 22, 'Ironing board Gimi Temper Drop', '<p>Ironing board has a special base-place for the iron. Painted steel tube (diameter 22 and 32 mm) oval in cross-section, which gives additional stability.</p>', '<p>Ironing board has a special base-place for the iron. Painted steel tube (diameter 22 and 32 mm) oval in cross-section, which gives additional stability.</p><p>&nbsp;<span style="font-size: 13px;">Holder for electric cable from the iron. 100% cotton board cover, lined with soft fleece. The surface of the ironing board is formed as a mesh, allowing free flowing of the iron&rsquo;s steam. Form table beveled for easy smoothing underwear in tight spaces. Ironing board easily folded, takes up little space when folded. Large working surface of the ironing board allows not only to iron shirts, men\'s trousers, but also bedding. The height of the ironing board can be freely adjusted. Solid and durable.</span></p>', 'Ironing board Gimi Temper Drop', 'Ironing board Gimi Temper Drop, С переводом', 'Ironing board has a special base-place for the iron. Painted steel tube (diameter 22 and 32 mm) oval in cross-section, which gives additional stability.'),
	(3, '', 22, 'Гладильная доска Gimi Temper Drop', '<p>Гладильная доска имеет специальное место для утюга. Ножки из крашеной стальной трубки (диаметром 22 и 32 мм) овальной в сечении, что даёт дополнительную устойчивость.</p>', '<p>Гладильная доска имеет специальное место для утюга. Ножки из крашеной стальной трубки (диаметром 22 и 32 мм) овальной в сечении, что даёт дополнительную устойчивость. Держатель для электрического кабеля от утюга. Чехол гладильной доски из 100 % хлопка с подкладкой из мягкого нетканого материала. Поверхность гладильной доски выполнена в виде сетки, что позволяет свободно пропускать пар от утюга. Форма стола скошенная для удобного разглаживания белья в труднодоступных местах. Гладильная доска легко складывается, занимает мало места в сложенном состоянии. Большая рабочая поверхность гладильной доски позволяет гладить не только рубашки, мужские брюки, но и постельное бельё. Высота гладильной доски может свободно регулироваться. Устойчива и прочна.</p>', 'Гладильная доска Gimi Temper Drop', '', ''),
	(1, '', 23, 'Бензопила цепная Stihl MS 660', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна.</p>', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна. Превосходно подходит для эффективной рубки толстомерного леса. Боковое устройство натяжения цепи, компенсатор, замок для бака, не требующий инструмента, декомпрессионный клапан.</p>', 'Бензопила цепная Stihl MS 660', '', ''),
	(2, '', 23, 'Бензопила цепная Stihl MS 660', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна.</p>', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна. Превосходно подходит для эффективной рубки толстомерного леса. Боковое устройство натяжения цепи, компенсатор, замок для бака, не требующий инструмента, декомпрессионный клапан.</p>', 'Бензопила цепная Stihl MS 660', '', ''),
	(3, '', 23, 'Бензопила цепная Stihl MS 660', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна.</p>', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна. Превосходно подходит для эффективной рубки толстомерного леса. Боковое устройство натяжения цепи, компенсатор, замок для бака, не требующий инструмента, декомпрессионный клапан.</p>', 'Бензопила цепная Stihl MS 660', '', ''),
	(1, '', 24, 'Электрорубанок Metabo Ho Е 0983', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки.</p>', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки. Пониженное число оборотов для уменьшение шума на холостом ходу, полноволновая электроника для равномерного строгания, надежный прочный рубанок с длинной подошвой для широкого спектра применения. Твердосплавные ножи, легкая замена ножа благодаря кассетной системе, бесступенчатая регулировка глубины строгания и глубины фальца, плоско-фрезерованная подошва рубанка из алюминиевого литья под давлением.</p>', 'Электрорубанок Metabo Ho Е 0983', '', ''),
	(2, '', 24, 'Электрорубанок Metabo Ho Е 0983', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки.</p>', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки. Пониженное число оборотов для уменьшение шума на холостом ходу, полноволновая электроника для равномерного строгания, надежный прочный рубанок с длинной подошвой для широкого спектра применения. Твердосплавные ножи, легкая замена ножа благодаря кассетной системе, бесступенчатая регулировка глубины строгания и глубины фальца, плоско-фрезерованная подошва рубанка из алюминиевого литья под давлением.</p>', 'Электрорубанок Metabo Ho Е 0983', '', ''),
	(3, '', 24, 'Электрорубанок Metabo Ho Е 0983', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки.</p>', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки. Пониженное число оборотов для уменьшение шума на холостом ходу, полноволновая электроника для равномерного строгания, надежный прочный рубанок с длинной подошвой для широкого спектра применения. Твердосплавные ножи, легкая замена ножа благодаря кассетной системе, бесступенчатая регулировка глубины строгания и глубины фальца, плоско-фрезерованная подошва рубанка из алюминиевого литья под давлением.</p>', 'Электрорубанок Metabo Ho Е 0983', '', ''),
	(1, '', 25, 'Радиотелефон Dect Panasonic KX-TG8286', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м.</p>', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м. Цифровой автоответчик, на 40 минут. Память последних 10 набранных номеров. Полифонические мелодии 20. Автодозвон, будильник, блокировка клавиатуры от случайного нажатия, разъем для гарнитуры. Ночной режим, избирательный звонок, тип дополнительных трубок KX-TGA828. Дисплей на базовом блоке, на трубке (цветной). Подсветка кнопок на трубке. Возможность настенного крепления. Наборное поле на базе. АОН/Caller ID, журнал на 50 номеров. Громкая связь (спикерфон). Внутренняя связь (интерком) между несколькими трубками. Конференц-связь (между базой, трубкой/трубками и внешним абонентом).</p>', 'Радиотелефон Dect Panasonic KX-TG8286', '', ''),
	(2, '', 25, 'Радиотелефон Dect Panasonic KX-TG8286', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м.</p>', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м. Цифровой автоответчик, на 40 минут. Память последних 10 набранных номеров. Полифонические мелодии 20. Автодозвон, будильник, блокировка клавиатуры от случайного нажатия, разъем для гарнитуры. Ночной режим, избирательный звонок, тип дополнительных трубок KX-TGA828. Дисплей на базовом блоке, на трубке (цветной). Подсветка кнопок на трубке. Возможность настенного крепления. Наборное поле на базе. АОН/Caller ID, журнал на 50 номеров. Громкая связь (спикерфон). Внутренняя связь (интерком) между несколькими трубками. Конференц-связь (между базой, трубкой/трубками и внешним абонентом).</p>', 'Радиотелефон Dect Panasonic KX-TG8286', '', ''),
	(3, '', 25, 'Радиотелефон Dect Panasonic KX-TG8286', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м.</p>', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м. Цифровой автоответчик, на 40 минут. Память последних 10 набранных номеров. Полифонические мелодии 20. Автодозвон, будильник, блокировка клавиатуры от случайного нажатия, разъем для гарнитуры. Ночной режим, избирательный звонок, тип дополнительных трубок KX-TGA828. Дисплей на базовом блоке, на трубке (цветной). Подсветка кнопок на трубке. Возможность настенного крепления. Наборное поле на базе. АОН/Caller ID, журнал на 50 номеров. Громкая связь (спикерфон). Внутренняя связь (интерком) между несколькими трубками. Конференц-связь (между базой, трубкой/трубками и внешним абонентом).</p>', 'Радиотелефон Dect Panasonic KX-TG8286', '', ''),
	(1, '', 26, 'Мобильный телефон HTC Sensation XE', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов.</p>', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов. Встроенная память телефона 4 Гб. Слот для карт памяти формата microSD, microSDНС. Интерфейсы: Вluetooth, USB, Wi-Fi. Встроенный приемник GPS. Встроена 8-ми мегапиксельная камера с автофокусом, светодиодной вспышкой и функцией записи видео. Аудио разъем 3.5 мм. Аккумулятор емкостью 1730 мАч обеспечивает работу до 9 часов в режиме разговора, до 540 часов в режиме ожидания.</p>', 'Мобильный телефон HTC Sensation XE', '', ''),
	(2, '', 26, 'Мобильный телефон HTC Sensation XE', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов.</p>', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов. Встроенная память телефона 4 Гб. Слот для карт памяти формата microSD, microSDНС. Интерфейсы: Вluetooth, USB, Wi-Fi. Встроенный приемник GPS. Встроена 8-ми мегапиксельная камера с автофокусом, светодиодной вспышкой и функцией записи видео. Аудио разъем 3.5 мм. Аккумулятор емкостью 1730 мАч обеспечивает работу до 9 часов в режиме разговора, до 540 часов в режиме ожидания.</p>', 'Мобильный телефон HTC Sensation XE', '', ''),
	(3, '', 26, 'Мобильный телефон HTC Sensation XE', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов.</p>', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов. Встроенная память телефона 4 Гб. Слот для карт памяти формата microSD, microSDНС. Интерфейсы: Вluetooth, USB, Wi-Fi. Встроенный приемник GPS. Встроена 8-ми мегапиксельная камера с автофокусом, светодиодной вспышкой и функцией записи видео. Аудио разъем 3.5 мм. Аккумулятор емкостью 1730 мАч обеспечивает работу до 9 часов в режиме разговора, до 540 часов в режиме ожидания.</p>', 'Мобильный телефон HTC Sensation XE', '', ''),
	(1, '', 27, 'Кофеварка эспрессо KENWOOD ES 471', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p>', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p><p>Индикатор уровня воды</p><p>Резервуар для воды Съёмный</p><p>Давление (бар) 15</p><p>Объём резервуара д/воды 1.5 л</p><p>Потребляемая мощность 1050 Вт</p><p>Дополнительные параметры:</p><p>Используемый кофемолотый / чалды</p><p>Нагреватель TermoGen.</p><p>Система подогрева чашек.</p><p>Подходит для использования фильтров ESE.</p><p>Профессиональный наконечник для вспенивания молока.</p><p>Возможность приготовления капуччино ручное приготовление</p><p>Индикатор контроля температуры.</p><p>Регулятор пара с покрытием SureGrip.</p><p>Съёмный лоток для капель.</p><p>Отсек для хранения шнура.</p>', 'Кофеварка эспрессо KENWOOD ES 471', '', ''),
	(1, '', 1, 'Блинница Ariete Baby 181', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', 'Блинница Ariete Baby 181', '', ''),
	(2, '', 1, 'Блинница Ariete Baby 181', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', 'Блинница Ariete Baby 181', '', ''),
	(3, '', 1, 'Блинница Ariete Baby 181', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', 'Блинница Ariete Baby 181', '', ''),
	(1, '', 2, 'Аппарат для пончиков Daewoo DI 8102', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы.</p>', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы. Индикатор включения и готовности. Антипригарное покрытие. Регулировка температуры.</p>', 'Аппарат для пончиков Daewoo DI 8102', '', ''),
	(3, '', 74, 'Стульчик для кормления Cam Smarty S332-C27', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', 'Стульчик для кормления Cam Smarty S332-C27', '', ''),
	(1, '', 75, 'Мотобур STIHL BT 360', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', 'Мотобур STIHL BT 360', '', ''),
	(2, '', 75, 'Мотобур STIHL BT 360', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', 'Мотобур STIHL BT 360', '', ''),
	(3, '', 75, 'Мотобур STIHL BT 360', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', 'Мотобур STIHL BT 360', '', ''),
	(1, '', 76, 'Гайковерт Bosch GDS 12 V', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара</p>', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара, компактная и эргономичная форма, встроенная подсветка с 3 светодиодами для освещения рабочей зоны, металлический корпус редуктора для высочайшей точности и долгого срока службы, 2 аккумулятора NiMH емкостью 2,6 Ач, зажим для переноски на ремне, петля на руку, реверс, безопасная работа без обратного удара, управляющая электроника, рукоятка с мягкой накладкой.</p>', 'Гайковерт Bosch GDS 12 V', '', ''),
	(2, '', 76, 'Гайковерт Bosch GDS 12 V', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара</p>', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара, компактная и эргономичная форма, встроенная подсветка с 3 светодиодами для освещения рабочей зоны, металлический корпус редуктора для высочайшей точности и долгого срока службы, 2 аккумулятора NiMH емкостью 2,6 Ач, зажим для переноски на ремне, петля на руку, реверс, безопасная работа без обратного удара, управляющая электроника, рукоятка с мягкой накладкой.</p>', 'Гайковерт Bosch GDS 12 V', '', ''),
	(3, '', 76, 'Гайковерт Bosch GDS 12 V', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара</p>', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара, компактная и эргономичная форма, встроенная подсветка с 3 светодиодами для освещения рабочей зоны, металлический корпус редуктора для высочайшей точности и долгого срока службы, 2 аккумулятора NiMH емкостью 2,6 Ач, зажим для переноски на ремне, петля на руку, реверс, безопасная работа без обратного удара, управляющая электроника, рукоятка с мягкой накладкой.</p>', 'Гайковерт Bosch GDS 12 V', '', ''),
	(1, '', 77, 'Компрессор Remeza СБ4С270.АВ670', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', 'Компрессор Remeza СБ4С270.АВ670', '', ''),
	(2, '', 77, 'Компрессор Remeza СБ4С270.АВ670', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', 'Компрессор Remeza СБ4С270.АВ670', '', ''),
	(3, '', 77, 'Компрессор Remeza СБ4С270.АВ670', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', 'Компрессор Remeza СБ4С270.АВ670', '', ''),
	(1, '', 78, 'Радиотелефон Dect Panasonic KX-TCD815', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB).</p>', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB). Автоматический определитель номера: АОН, Caller ID (журнал на 50 вызовов). Проговаривание голосом номера. Большой графический цветной дисплей - 65000 цветов. 6 обычных + 14 полифонических мелодий звонка. Загрузка мелодий с любого аудио-устройства через кабель. Меню и телефонный справочник на русском языке (200 номеров). Возможность присваивания до 3-х номеров телефонов и картинки для одной записи. Редактирование записей с помощью ПК. Функция Нянька. Спикерфон (громкая связь) на трубке. Дата, часы, будильник. Повторный набор последних 5-ти набранных номеров. Подключение гарнитуры. Ночной режим. Кнопка Flash для переадресация на мини-АТС. Подключение до 6-ти трубок на одну базу. Подключение одной трубки на 4 базы. Конференц-связь. Внутренняя связь между трубками. Переадресация внешнего звонка между трубками. Подключение к видеодомофонной системе.</p>', 'Радиотелефон Dect Panasonic KX-TCD815', '', ''),
	(2, '', 78, 'Радиотелефон Dect Panasonic KX-TCD815', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB).</p>', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB). Автоматический определитель номера: АОН, Caller ID (журнал на 50 вызовов). Проговаривание голосом номера. Большой графический цветной дисплей - 65000 цветов. 6 обычных + 14 полифонических мелодий звонка. Загрузка мелодий с любого аудио-устройства через кабель. Меню и телефонный справочник на русском языке (200 номеров). Возможность присваивания до 3-х номеров телефонов и картинки для одной записи. Редактирование записей с помощью ПК. Функция Нянька. Спикерфон (громкая связь) на трубке. Дата, часы, будильник. Повторный набор последних 5-ти набранных номеров. Подключение гарнитуры. Ночной режим. Кнопка Flash для переадресация на мини-АТС. Подключение до 6-ти трубок на одну базу. Подключение одной трубки на 4 базы. Конференц-связь. Внутренняя связь между трубками. Переадресация внешнего звонка между трубками. Подключение к видеодомофонной системе.</p>', 'Радиотелефон Dect Panasonic KX-TCD815', '', ''),
	(3, '', 78, 'Радиотелефон Dect Panasonic KX-TCD815', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB).</p>', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB). Автоматический определитель номера: АОН, Caller ID (журнал на 50 вызовов). Проговаривание голосом номера. Большой графический цветной дисплей - 65000 цветов. 6 обычных + 14 полифонических мелодий звонка. Загрузка мелодий с любого аудио-устройства через кабель. Меню и телефонный справочник на русском языке (200 номеров). Возможность присваивания до 3-х номеров телефонов и картинки для одной записи. Редактирование записей с помощью ПК. Функция Нянька. Спикерфон (громкая связь) на трубке. Дата, часы, будильник. Повторный набор последних 5-ти набранных номеров. Подключение гарнитуры. Ночной режим. Кнопка Flash для переадресация на мини-АТС. Подключение до 6-ти трубок на одну базу. Подключение одной трубки на 4 базы. Конференц-связь. Внутренняя связь между трубками. Переадресация внешнего звонка между трубками. Подключение к видеодомофонной системе.</p>', 'Радиотелефон Dect Panasonic KX-TCD815', '', ''),
	(1, '', 79, 'Факсимильный аппарат Panasonic KX-FC258RU', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса.</p>', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса. Цифровой дуплексный спикерфон. Цифровой автоответчик. Время записи - 15 минут. Скорость модема - до 9,6 Кбит/с. Кнопка навигации. Автоподатчик на 10 листов. Лоток на 20 листов. Отложенная передача. Прием при отсутствии бумаги (до 28 страниц). Набор 100 номеров из памяти. Функция копирования с возможностью масштабирования.</p>', 'Факсимильный аппарат Panasonic KX-FC258RU', '', ''),
	(2, '', 79, 'Факсимильный аппарат Panasonic KX-FC258RU', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса.</p>', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса. Цифровой дуплексный спикерфон. Цифровой автоответчик. Время записи - 15 минут. Скорость модема - до 9,6 Кбит/с. Кнопка навигации. Автоподатчик на 10 листов. Лоток на 20 листов. Отложенная передача. Прием при отсутствии бумаги (до 28 страниц). Набор 100 номеров из памяти. Функция копирования с возможностью масштабирования.</p>', 'Факсимильный аппарат Panasonic KX-FC258RU', '', ''),
	(3, '', 79, 'Факсимильный аппарат Panasonic KX-FC258RU', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса.</p>', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса. Цифровой дуплексный спикерфон. Цифровой автоответчик. Время записи - 15 минут. Скорость модема - до 9,6 Кбит/с. Кнопка навигации. Автоподатчик на 10 листов. Лоток на 20 листов. Отложенная передача. Прием при отсутствии бумаги (до 28 страниц). Набор 100 номеров из памяти. Функция копирования с возможностью масштабирования.</p>', 'Факсимильный аппарат Panasonic KX-FC258RU', '', ''),
	(1, '', 80, 'Коммуникатор ASUS MyPal A639', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер).</p>', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер). Встроенный GPS-приемник SiRF Star III, внешняя поворотная антенна, разъем для подключения дополнительной антенны. Экран 3.5” c разрешением 240х320 точек, 64 тысячи цветов.</p>', 'Коммуникатор ASUS MyPal A639', '', ''),
	(2, '', 80, 'Коммуникатор ASUS MyPal A639', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер).</p>', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер). Встроенный GPS-приемник SiRF Star III, внешняя поворотная антенна, разъем для подключения дополнительной антенны. Экран 3.5” c разрешением 240х320 точек, 64 тысячи цветов.</p>', 'Коммуникатор ASUS MyPal A639', '', ''),
	(3, '', 80, 'Коммуникатор ASUS MyPal A639', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер).</p>', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер). Встроенный GPS-приемник SiRF Star III, внешняя поворотная антенна, разъем для подключения дополнительной антенны. Экран 3.5” c разрешением 240х320 точек, 64 тысячи цветов.</p>', 'Коммуникатор ASUS MyPal A639', '', ''),
	(1, '', 81, 'Миксер Philips HR1565', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p>', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p><p>Свободные руки при смешивании Вращающаяся чаша емкостью 3 л Подставка миксера</p><p>Идеальное тесто и десерты за несколько минут Мощный (350 Ватт) мотор Различные скоростные режимы и турборежим</p><p>Идеально взбивает и смешивает Насадки для взбивания и для теста в комплекте</p><p>Быстрая и простая чистка Удобная лопаточка</p><p>Удобство хранения Зажим для шнура</p><p>Общие характеристики Режимы скоростей: 3 Кнопка включения турборежима Зажим для шнура</p><p>Технические характеристики Мощность: 350 Вт Напряжение: 230-240 В Частота: 50/60 Гц Длина шнура: 1,50 м</p><p>Характеристики дизайна Материал, из которого изготовлен корпус: ABS Материал насадок для взбивания/для теста: Из нержавеющей стали</p><p>Принадлежности Насадки для взбивания Насадки для теста</p><p>Дата выпуска 2008-05-21</p>', 'Миксер Philips HR1565', '', ''),
	(2, '', 81, 'Миксер Philips HR1565', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p>', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p><p>Свободные руки при смешивании Вращающаяся чаша емкостью 3 л Подставка миксера</p><p>Идеальное тесто и десерты за несколько минут Мощный (350 Ватт) мотор Различные скоростные режимы и турборежим</p><p>Идеально взбивает и смешивает Насадки для взбивания и для теста в комплекте</p><p>Быстрая и простая чистка Удобная лопаточка</p><p>Удобство хранения Зажим для шнура</p><p>Общие характеристики Режимы скоростей: 3 Кнопка включения турборежима Зажим для шнура</p><p>Технические характеристики Мощность: 350 Вт Напряжение: 230-240 В Частота: 50/60 Гц Длина шнура: 1,50 м</p><p>Характеристики дизайна Материал, из которого изготовлен корпус: ABS Материал насадок для взбивания/для теста: Из нержавеющей стали</p><p>Принадлежности Насадки для взбивания Насадки для теста</p><p>Дата выпуска 2008-05-21</p>', 'Миксер Philips HR1565', '', ''),
	(3, '', 81, 'Миксер Philips HR1565', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p>', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p><p>Свободные руки при смешивании Вращающаяся чаша емкостью 3 л Подставка миксера</p><p>Идеальное тесто и десерты за несколько минут Мощный (350 Ватт) мотор Различные скоростные режимы и турборежим</p><p>Идеально взбивает и смешивает Насадки для взбивания и для теста в комплекте</p><p>Быстрая и простая чистка Удобная лопаточка</p><p>Удобство хранения Зажим для шнура</p><p>Общие характеристики Режимы скоростей: 3 Кнопка включения турборежима Зажим для шнура</p><p>Технические характеристики Мощность: 350 Вт Напряжение: 230-240 В Частота: 50/60 Гц Длина шнура: 1,50 м</p><p>Характеристики дизайна Материал, из которого изготовлен корпус: ABS Материал насадок для взбивания/для теста: Из нержавеющей стали</p><p>Принадлежности Насадки для взбивания Насадки для теста</p><p>Дата выпуска 2008-05-21</p>', 'Миксер Philips HR1565', '', ''),
	(1, '', 82, 'Универсальная соковыжималка Philips HR186630', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p>', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Технические характеристики</p><p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Особенности</p><p>Материал корпуса алюминий</p><p>Материал сетки центрифуги нерж. сталь</p><p>Круглая горловина есть</p><p>Размер горловины 74 мм</p><p>Комплектация щеточка для чистки</p><p>Прорезиненные ножки есть</p><p>Отсек для сетевого шнура длина 1.2 м</p><p>Управление</p><p>Количество скоростей 2</p>', 'Универсальная соковыжималка Philips HR186630', '', ''),
	(2, '', 82, 'Универсальная соковыжималка Philips HR186630', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p>', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Технические характеристики</p><p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Особенности</p><p>Материал корпуса алюминий</p><p>Материал сетки центрифуги нерж. сталь</p><p>Круглая горловина есть</p><p>Размер горловины 74 мм</p><p>Комплектация щеточка для чистки</p><p>Прорезиненные ножки есть</p><p>Отсек для сетевого шнура длина 1.2 м</p><p>Управление</p><p>Количество скоростей 2</p>', 'Универсальная соковыжималка Philips HR186630', '', ''),
	(3, '', 82, 'Универсальная соковыжималка Philips HR186630', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p>', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Технические характеристики</p><p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Особенности</p><p>Материал корпуса алюминий</p><p>Материал сетки центрифуги нерж. сталь</p><p>Круглая горловина есть</p><p>Размер горловины 74 мм</p><p>Комплектация щеточка для чистки</p><p>Прорезиненные ножки есть</p><p>Отсек для сетевого шнура длина 1.2 м</p><p>Управление</p><p>Количество скоростей 2</p>', 'Универсальная соковыжималка Philips HR186630', '', ''),
	(1, '', 83, 'Чаеварка-чайник BOSCH TTA 2009', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p>', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p><p>Чайник из полупрозрачного пластика со шкалой уровня воды</p><p>Стеклянный заварник с крышкой</p><p>Ситечко для заварки из нержавеющей стали</p><p>Круговой светоиндикатор «Улыбка»</p><p>Крышка для чайника в комплекте</p><p>Скрытый нагревательный элемент, дно из нержавеющей стали</p><p>Автоматическое переключение на режим подогрева</p><p>Цоколь с центральным контактом позволяет устанавливать чайник в любом положении</p><p>Клавиша переключения режимов кипячения и нагрева</p><p>Клавиша «включения/отключения» прибора</p><p>Намотка кабеля в цоколе</p>', 'Чаеварка-чайник BOSCH TTA 2009', '', ''),
	(2, '', 83, 'Чаеварка-чайник BOSCH TTA 2009', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p>', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p><p>Чайник из полупрозрачного пластика со шкалой уровня воды</p><p>Стеклянный заварник с крышкой</p><p>Ситечко для заварки из нержавеющей стали</p><p>Круговой светоиндикатор «Улыбка»</p><p>Крышка для чайника в комплекте</p><p>Скрытый нагревательный элемент, дно из нержавеющей стали</p><p>Автоматическое переключение на режим подогрева</p><p>Цоколь с центральным контактом позволяет устанавливать чайник в любом положении</p><p>Клавиша переключения режимов кипячения и нагрева</p><p>Клавиша «включения/отключения» прибора</p><p>Намотка кабеля в цоколе</p>', 'Чаеварка-чайник BOSCH TTA 2009', '', ''),
	(3, '', 83, 'Чаеварка-чайник BOSCH TTA 2009', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p>', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p><p>Чайник из полупрозрачного пластика со шкалой уровня воды</p><p>Стеклянный заварник с крышкой</p><p>Ситечко для заварки из нержавеющей стали</p><p>Круговой светоиндикатор «Улыбка»</p><p>Крышка для чайника в комплекте</p><p>Скрытый нагревательный элемент, дно из нержавеющей стали</p><p>Автоматическое переключение на режим подогрева</p><p>Цоколь с центральным контактом позволяет устанавливать чайник в любом положении</p><p>Клавиша переключения режимов кипячения и нагрева</p><p>Клавиша «включения/отключения» прибора</p><p>Намотка кабеля в цоколе</p>', 'Чаеварка-чайник BOSCH TTA 2009', '', ''),
	(1, '', 84, 'Мясорубка AEG FW 5549', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть</p>', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть, 3 в комплектеНасадка-терка нетНасадка для шинковки нетНасадка для приготовления колбас естьПрочие насадки для кеббе, для нарезки печеньяОсобенностиМатериал лотка металлМатериал корпуса металлПрорезиненные ножки естьОтсек для хранения шнура естьДополнительная информация максимальная мощность 1000 Вт</p>', 'Мясорубка AEG FW 5549', '', ''),
	(2, '', 84, 'Мясорубка AEG FW 5549', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть</p>', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть, 3 в комплектеНасадка-терка нетНасадка для шинковки нетНасадка для приготовления колбас естьПрочие насадки для кеббе, для нарезки печеньяОсобенностиМатериал лотка металлМатериал корпуса металлПрорезиненные ножки естьОтсек для хранения шнура естьДополнительная информация максимальная мощность 1000 Вт</p>', 'Мясорубка AEG FW 5549', '', ''),
	(3, '', 84, 'Мясорубка AEG FW 5549', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть</p>', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть, 3 в комплектеНасадка-терка нетНасадка для шинковки нетНасадка для приготовления колбас естьПрочие насадки для кеббе, для нарезки печеньяОсобенностиМатериал лотка металлМатериал корпуса металлПрорезиненные ножки естьОтсек для хранения шнура естьДополнительная информация максимальная мощность 1000 Вт</p>', 'Мясорубка AEG FW 5549', '', ''),
	(1, '', 85, 'Хлебопечка Tefal Dual Home Baker OW4002', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', 'Хлебопечка Tefal Dual Home Baker OW4002', '', ''),
	(2, '', 85, 'Хлебопечка Tefal Dual Home Baker OW4002', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', 'Хлебопечка Tefal Dual Home Baker OW4002', '', ''),
	(3, '', 85, 'Хлебопечка Tefal Dual Home Baker OW4002', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', 'Хлебопечка Tefal Dual Home Baker OW4002', '', ''),
	(1, '', 86, 'Детское автокресло Bebe Confort Iseos Safe Side TT', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку.</p>', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку. Установка в автомобиле: по ходу движения с помощью штатного 3-точечного ремня безопасности. В кресле используется двойная система Modulo Safe, позволяющая плавно изменять ширину (от 40 до 55 см) и наклон кресла, внутренние 5-точечные ремни безопасности регулируются по росту ребенка. Прочный корпус на широкой платформе разработан с учетом геометрии салонов современных автомобилей. Усиленная боковая защита Safe Side. Защитные накладки на ремнях двух размеров, в зависимости от возраста ребенка. Система Легкая посадка, фиксирующая внутренние ремни по сторонам, на боковинах и не мешающие посадке ребенка. Высококачественное, мягкое, дышащее покрытие (снимается и стирается). Система Total Tension обеспечивает правильную установку с меньшими усилиями. Вес автокресла: 9 кг.</p>', 'Детское автокресло Bebe Confort Iseos Safe Side TT', '', ''),
	(2, '', 86, 'Детское автокресло Bebe Confort Iseos Safe Side TT', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку.</p>', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку. Установка в автомобиле: по ходу движения с помощью штатного 3-точечного ремня безопасности. В кресле используется двойная система Modulo Safe, позволяющая плавно изменять ширину (от 40 до 55 см) и наклон кресла, внутренние 5-точечные ремни безопасности регулируются по росту ребенка. Прочный корпус на широкой платформе разработан с учетом геометрии салонов современных автомобилей. Усиленная боковая защита Safe Side. Защитные накладки на ремнях двух размеров, в зависимости от возраста ребенка. Система Легкая посадка, фиксирующая внутренние ремни по сторонам, на боковинах и не мешающие посадке ребенка. Высококачественное, мягкое, дышащее покрытие (снимается и стирается). Система Total Tension обеспечивает правильную установку с меньшими усилиями. Вес автокресла: 9 кг.</p>', 'Детское автокресло Bebe Confort Iseos Safe Side TT', '', ''),
	(3, '', 86, 'Детское автокресло Bebe Confort Iseos Safe Side TT', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку.</p>', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку. Установка в автомобиле: по ходу движения с помощью штатного 3-точечного ремня безопасности. В кресле используется двойная система Modulo Safe, позволяющая плавно изменять ширину (от 40 до 55 см) и наклон кресла, внутренние 5-точечные ремни безопасности регулируются по росту ребенка. Прочный корпус на широкой платформе разработан с учетом геометрии салонов современных автомобилей. Усиленная боковая защита Safe Side. Защитные накладки на ремнях двух размеров, в зависимости от возраста ребенка. Система Легкая посадка, фиксирующая внутренние ремни по сторонам, на боковинах и не мешающие посадке ребенка. Высококачественное, мягкое, дышащее покрытие (снимается и стирается). Система Total Tension обеспечивает правильную установку с меньшими усилиями. Вес автокресла: 9 кг.</p>', 'Детское автокресло Bebe Confort Iseos Safe Side TT', '', ''),
	(1, '', 87, 'BABYONO 238 Набор посуды для кормления', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p>', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p><p>В набор входит</p><p>* тарелка с подогревом и присоской</p><p>* кружка-непроливайка</p><p>* столовые приборы</p><p>Производство: BabyOno, Польша</p>', 'BABYONO 238 Набор посуды для кормления', '', ''),
	(2, '', 87, 'BABYONO 238 Набор посуды для кормления', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p>', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p><p>В набор входит</p><p>* тарелка с подогревом и присоской</p><p>* кружка-непроливайка</p><p>* столовые приборы</p><p>Производство: BabyOno, Польша</p>', 'BABYONO 238 Набор посуды для кормления', '', ''),
	(3, '', 87, 'BABYONO 238 Набор посуды для кормления', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p>', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p><p>В набор входит</p><p>* тарелка с подогревом и присоской</p><p>* кружка-непроливайка</p><p>* столовые приборы</p><p>Производство: BabyOno, Польша</p>', 'BABYONO 238 Набор посуды для кормления', '', ''),
	(1, '', 88, 'Пеленальный столик Baby Prestige Simplicity', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', 'Пеленальный столик Baby Prestige Simplicity', '', ''),
	(2, '', 88, 'Пеленальный столик Baby Prestige Simplicity', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', 'Пеленальный столик Baby Prestige Simplicity', '', ''),
	(3, '', 88, 'Пеленальный столик Baby Prestige Simplicity', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', 'Пеленальный столик Baby Prestige Simplicity', '', ''),
	(1, '', 89, 'Кровать BERTONI CLASSIC', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', 'Кровать BERTONI CLASSIC', '', ''),
	(2, '', 89, 'Кровать BERTONI CLASSIC', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', 'Кровать BERTONI CLASSIC', '', ''),
	(3, '', 89, 'Кровать BERTONI CLASSIC', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', 'Кровать BERTONI CLASSIC', '', ''),
	(1, '', 90, 'Манеж BERTONI ARENA 2+ уровня', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', 'Манеж BERTONI ARENA 2+ уровня', '', ''),
	(2, '', 90, 'Манеж BERTONI ARENA 2+ уровня', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', 'Манеж BERTONI ARENA 2+ уровня', '', ''),
	(3, '', 90, 'Манеж BERTONI ARENA 2+ уровня', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', 'Манеж BERTONI ARENA 2+ уровня', '', ''),
	(1, '', 91, 'Ортопедический матрас Барро Элит 501 160 x 200', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', 'Ортопедический матрас Барро Элит 501 160 x 200', '', ''),
	(2, '', 91, 'Ортопедический матрас Барро Элит 501 160 x 200', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', 'Ортопедический матрас Барро Элит 501 160 x 200', '', ''),
	(3, '', 91, 'Ортопедический матрас Барро Элит 501 160 x 200', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', 'Ортопедический матрас Барро Элит 501 160 x 200', '', ''),
	(1, '', 92, 'Сейф взломостойкий Valberg ASK-46', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе.</p>', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе. Сертификация по I классу защиты от взлома. Корпус сейфа имеет трехслойную конструкцию: внешняя стенка, бетон, внутренняя стенка. Стенки сейфа выполнены из стального листа толщиной от 1 до 3 мм. Ключевой 8-сувальдный замок Mauer (Германия). Замок защищен от высверливания специальной твердосплавной пластиной. Сейф оснащен 3-сторонней ригельной системой запирания с тремя никелированными вращающимися ригелями, диаметром 25 мм и одним пассивным ригелем.</p>', 'Сейф взломостойкий Valberg ASK-46', '', ''),
	(2, '', 92, 'Сейф взломостойкий Valberg ASK-46', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе.</p>', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе. Сертификация по I классу защиты от взлома. Корпус сейфа имеет трехслойную конструкцию: внешняя стенка, бетон, внутренняя стенка. Стенки сейфа выполнены из стального листа толщиной от 1 до 3 мм. Ключевой 8-сувальдный замок Mauer (Германия). Замок защищен от высверливания специальной твердосплавной пластиной. Сейф оснащен 3-сторонней ригельной системой запирания с тремя никелированными вращающимися ригелями, диаметром 25 мм и одним пассивным ригелем.</p>', 'Сейф взломостойкий Valberg ASK-46', '', ''),
	(3, '', 92, 'Сейф взломостойкий Valberg ASK-46', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе.</p>', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе. Сертификация по I классу защиты от взлома. Корпус сейфа имеет трехслойную конструкцию: внешняя стенка, бетон, внутренняя стенка. Стенки сейфа выполнены из стального листа толщиной от 1 до 3 мм. Ключевой 8-сувальдный замок Mauer (Германия). Замок защищен от высверливания специальной твердосплавной пластиной. Сейф оснащен 3-сторонней ригельной системой запирания с тремя никелированными вращающимися ригелями, диаметром 25 мм и одним пассивным ригелем.</p>', 'Сейф взломостойкий Valberg ASK-46', '', ''),
	(1, '', 93, 'Каминный набор №859 кованый (Аксессуары для каминов)', '<p>Размер см: 24х28х64 (Ш х Д х В)</p>', '<p>Размер см: 24х28х64 (Ш х Д х В)</p><p>Цвет: Старое золото</p><p>Пр-во: Польша</p>', 'Каминный набор №859 кованый (Аксессуары для каминов)', '', ''),
	(2, '', 93, 'Каминный набор №859 кованый (Аксессуары для каминов)', '<p>Размер см: 24х28х64 (Ш х Д х В)</p>', '<p>Размер см: 24х28х64 (Ш х Д х В)</p><p>Цвет: Старое золото</p><p>Пр-во: Польша</p>', 'Каминный набор №859 кованый (Аксессуары для каминов)', '', ''),
	(3, '', 93, 'Каминный набор №859 кованый (Аксессуары для каминов)', '<p>Размер см: 24х28х64 (Ш х Д х В)</p>', '<p>Размер см: 24х28х64 (Ш х Д х В)</p><p>Цвет: Старое золото</p><p>Пр-во: Польша</p>', 'Каминный набор №859 кованый (Аксессуары для каминов)', '', ''),
	(1, '', 94, 'Бензобур Pacme EL-ED1700', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', 'Бензобур Pacme EL-ED1700', '', ''),
	(2, '', 94, 'Бензобур Pacme EL-ED1700', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', 'Бензобур Pacme EL-ED1700', '', ''),
	(3, '', 94, 'Бензобур Pacme EL-ED1700', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', 'Бензобур Pacme EL-ED1700', '', ''),
	(1, '', 95, 'Миксер электрический Graphite 58G782', '<p>Миксер электрический в чемоданчике с мешалкой.</p>', '<p>Миксер электрический в чемоданчике с мешалкой. Мощность 1200 Вт. Патрон M14. Скорость I: 0-580, II: 0-760 об/мин.</p>', 'Миксер электрический Graphite 58G782', '', ''),
	(2, '', 95, 'Миксер электрический Graphite 58G782', '<p>Миксер электрический в чемоданчике с мешалкой.</p>', '<p>Миксер электрический в чемоданчике с мешалкой. Мощность 1200 Вт. Патрон M14. Скорость I: 0-580, II: 0-760 об/мин.</p>', 'Миксер электрический Graphite 58G782', '', ''),
	(3, '', 95, 'Миксер электрический Graphite 58G782', '<p>Миксер электрический в чемоданчике с мешалкой.</p>', '<p>Миксер электрический в чемоданчике с мешалкой. Мощность 1200 Вт. Патрон M14. Скорость I: 0-580, II: 0-760 об/мин.</p>', 'Миксер электрический Graphite 58G782', '', ''),
	(1, '', 96, 'Пневмогайковерт Force 82565', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', 'Пневмогайковерт Force 82565', '', ''),
	(2, '', 96, 'Пневмогайковерт Force 82565', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', 'Пневмогайковерт Force 82565', '', ''),
	(3, '', 96, 'Пневмогайковерт Force 82565', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', 'Пневмогайковерт Force 82565', '', ''),
	(1, '', 97, 'Скобозабиватель Metabo Ta E 2019', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo.</p>', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo. Подходит также для работы со скобами из плоской проволоки. Энергия удара может плавно регулироваться электронным образом. Возможность дополнительного добивания (для скоб и гвоздей). Выступ с выемкой для точного позиционирования. Защита от случайного срабатывания удара.</p>', 'Скобозабиватель Metabo Ta E 2019', '', ''),
	(2, '', 97, 'Скобозабиватель Metabo Ta E 2019', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo.</p>', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo. Подходит также для работы со скобами из плоской проволоки. Энергия удара может плавно регулироваться электронным образом. Возможность дополнительного добивания (для скоб и гвоздей). Выступ с выемкой для точного позиционирования. Защита от случайного срабатывания удара.</p>', 'Скобозабиватель Metabo Ta E 2019', '', ''),
	(3, '', 97, 'Скобозабиватель Metabo Ta E 2019', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo.</p>', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo. Подходит также для работы со скобами из плоской проволоки. Энергия удара может плавно регулироваться электронным образом. Возможность дополнительного добивания (для скоб и гвоздей). Выступ с выемкой для точного позиционирования. Защита от случайного срабатывания удара.</p>', 'Скобозабиватель Metabo Ta E 2019', '', ''),
	(1, '', 98, 'Ленточная шлифовальная машина Dewalt DW432', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов.</p>', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов. Конструкция подошвы из трех роликов обеспечивает лучший контакт шлифленты с обрабатываемой поверхностью. Эффективная система пылеудаления со встроенным пылесборником и возможностью подключения внешнего пылесоса. Две рукоятки для лучшего баланса и контроля.</p>', 'Ленточная шлифовальная машина Dewalt DW432', '', ''),
	(2, '', 98, 'Ленточная шлифовальная машина Dewalt DW432', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов.</p>', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов. Конструкция подошвы из трех роликов обеспечивает лучший контакт шлифленты с обрабатываемой поверхностью. Эффективная система пылеудаления со встроенным пылесборником и возможностью подключения внешнего пылесоса. Две рукоятки для лучшего баланса и контроля.</p>', 'Ленточная шлифовальная машина Dewalt DW432', '', ''),
	(3, '', 98, 'Ленточная шлифовальная машина Dewalt DW432', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов.</p>', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов. Конструкция подошвы из трех роликов обеспечивает лучший контакт шлифленты с обрабатываемой поверхностью. Эффективная система пылеудаления со встроенным пылесборником и возможностью подключения внешнего пылесоса. Две рукоятки для лучшего баланса и контроля.</p>', 'Ленточная шлифовальная машина Dewalt DW432', '', ''),
	(1, '', 99, 'Bluetooth гарнитура Nokia BH-903', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку.</p>', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку. С беспроводной гарнитурой Вы можете: получить отличное качество звука благодаря цифровой обработке сигнала; наслаждаться встроенным FM-радио; управлять музыкой благодаря медиа-клавишам; автоматически переключаться между музыкой и вызовами; слушать музыку или радио и разговаривать до 9 часов после 20 минут зарядки; управлять вызовами; совершать вызовы с гарнитуры через быстрый набор номера на вашем мобильном устройстве.</p>', 'Bluetooth гарнитура Nokia BH-903', '', ''),
	(2, '', 99, 'Bluetooth гарнитура Nokia BH-903', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку.</p>', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку. С беспроводной гарнитурой Вы можете: получить отличное качество звука благодаря цифровой обработке сигнала; наслаждаться встроенным FM-радио; управлять музыкой благодаря медиа-клавишам; автоматически переключаться между музыкой и вызовами; слушать музыку или радио и разговаривать до 9 часов после 20 минут зарядки; управлять вызовами; совершать вызовы с гарнитуры через быстрый набор номера на вашем мобильном устройстве.</p>', 'Bluetooth гарнитура Nokia BH-903', '', ''),
	(3, '', 99, 'Bluetooth гарнитура Nokia BH-903', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку.</p>', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку. С беспроводной гарнитурой Вы можете: получить отличное качество звука благодаря цифровой обработке сигнала; наслаждаться встроенным FM-радио; управлять музыкой благодаря медиа-клавишам; автоматически переключаться между музыкой и вызовами; слушать музыку или радио и разговаривать до 9 часов после 20 минут зарядки; управлять вызовами; совершать вызовы с гарнитуры через быстрый набор номера на вашем мобильном устройстве.</p>', 'Bluetooth гарнитура Nokia BH-903', '', ''),
	(1, '', 100, 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '', ''),
	(2, '', 100, 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '', ''),
	(3, '', 100, 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '', ''),
	(1, '', 101, 'Проводной телефон LG GS-475 RUS WA', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', 'Проводной телефон LG GS-475 RUS WA', '', ''),
	(2, '', 101, 'Проводной телефон LG GS-475 RUS WA', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', 'Проводной телефон LG GS-475 RUS WA', '', ''),
	(3, '', 101, 'Проводной телефон LG GS-475 RUS WA', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', 'Проводной телефон LG GS-475 RUS WA', '', ''),
	(1, '', 102, 'IP-телефон D-link DPH-400S', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования.</p>', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования. При этом голос преобразуется в IP-пакеты и передается по сети. Голос и данные могут одновременно передаваться по одному и тому же каналу связи. Телефон снабжен дополнительным разъемом RJ-45 для подключения к порту Ethernet компьютера или локальной сети (через коммутатор или концентратор Fast Ethernet). Это позволяет разговаривать по IP-телефону во время просмотра Web-страниц, отправки почтовых сообщений и выполнения других сетевых задач. Также DPH-400S можно использовать в локальных сетях с поддержкой Ethernet и протокола IP.</p>', 'IP-телефон D-link DPH-400S', '', ''),
	(2, '', 102, 'IP-телефон D-link DPH-400S', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования.</p>', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования. При этом голос преобразуется в IP-пакеты и передается по сети. Голос и данные могут одновременно передаваться по одному и тому же каналу связи. Телефон снабжен дополнительным разъемом RJ-45 для подключения к порту Ethernet компьютера или локальной сети (через коммутатор или концентратор Fast Ethernet). Это позволяет разговаривать по IP-телефону во время просмотра Web-страниц, отправки почтовых сообщений и выполнения других сетевых задач. Также DPH-400S можно использовать в локальных сетях с поддержкой Ethernet и протокола IP.</p>', 'IP-телефон D-link DPH-400S', '', ''),
	(3, '', 102, 'IP-телефон D-link DPH-400S', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования.</p>', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования. При этом голос преобразуется в IP-пакеты и передается по сети. Голос и данные могут одновременно передаваться по одному и тому же каналу связи. Телефон снабжен дополнительным разъемом RJ-45 для подключения к порту Ethernet компьютера или локальной сети (через коммутатор или концентратор Fast Ethernet). Это позволяет разговаривать по IP-телефону во время просмотра Web-страниц, отправки почтовых сообщений и выполнения других сетевых задач. Также DPH-400S можно использовать в локальных сетях с поддержкой Ethernet и протокола IP.</p>', 'IP-телефон D-link DPH-400S', '', ''),
	(1, '', 103, 'Проводной телефон PANASONIC KX-TS2365RUB', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время.</p>', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время. Есть кнопка пауза, ограничение и блокировка вызова, возможность регулировать громкость звонка и динамика, мелодия в режиме удержания соединения, выключение микрофона. Возможна установка на стене. Цвет модели - черный.</p>', 'Проводной телефон PANASONIC KX-TS2365RUB', '', ''),
	(2, '', 103, 'Проводной телефон PANASONIC KX-TS2365RUB', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время.</p>', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время. Есть кнопка пауза, ограничение и блокировка вызова, возможность регулировать громкость звонка и динамика, мелодия в режиме удержания соединения, выключение микрофона. Возможна установка на стене. Цвет модели - черный.</p>', 'Проводной телефон PANASONIC KX-TS2365RUB', '', ''),
	(3, '', 103, 'Проводной телефон PANASONIC KX-TS2365RUB', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время.</p>', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время. Есть кнопка пауза, ограничение и блокировка вызова, возможность регулировать громкость звонка и динамика, мелодия в режиме удержания соединения, выключение микрофона. Возможна установка на стене. Цвет модели - черный.</p>', 'Проводной телефон PANASONIC KX-TS2365RUB', '', ''),
	(1, '', 104, 'Факсимильный аппарат Sharp UX-73', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц.</p>', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц. Факс, копир и телефон, собранные вместе в компактном корпусе. Печать на термобумаге. Скорость модема - до 9,6 Кбит/с. Автоподатчик на 10 листов. Автоматический набор 40 номеров. Автоматическая обрезка бумаги.</p>', 'Факсимильный аппарат Sharp UX-73', '', ''),
	(2, '', 104, 'Факсимильный аппарат Sharp UX-73', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц.</p>', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц. Факс, копир и телефон, собранные вместе в компактном корпусе. Печать на термобумаге. Скорость модема - до 9,6 Кбит/с. Автоподатчик на 10 листов. Автоматический набор 40 номеров. Автоматическая обрезка бумаги.</p>', 'Факсимильный аппарат Sharp UX-73', '', ''),
	(3, '', 104, 'Факсимильный аппарат Sharp UX-73', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц.</p>', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц. Факс, копир и телефон, собранные вместе в компактном корпусе. Печать на термобумаге. Скорость модема - до 9,6 Кбит/с. Автоподатчик на 10 листов. Автоматический набор 40 номеров. Автоматическая обрезка бумаги.</p>', 'Факсимильный аппарат Sharp UX-73', '', ''),
	(1, '', 105, 'Напольные весы Beurer BG55', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела.</p>', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела. Атлетический режим. Литиевая батарея в комплекте. Технология Tap-on. Платформа из безопасного прочного стекла.</p>', 'Напольные весы Beurer BG55', '', ''),
	(2, '', 105, 'Напольные весы Beurer BG55', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела.</p>', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела. Атлетический режим. Литиевая батарея в комплекте. Технология Tap-on. Платформа из безопасного прочного стекла.</p>', 'Напольные весы Beurer BG55', '', ''),
	(3, '', 105, 'Напольные весы Beurer BG55', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела.</p>', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела. Атлетический режим. Литиевая батарея в комплекте. Технология Tap-on. Платформа из безопасного прочного стекла.</p>', 'Напольные весы Beurer BG55', '', ''),
	(1, '', 106, 'Напольные весы Beurer GS21 Mauritius', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината).</p>', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината). Максимальная нагрузка 180 кг. Погрешность измерения 0.1 кг. Автоматическое отключение. Перенастройка единицы измерения: kg (кг)/lb (фунты)/st (стоуны). Размеры (ШхВxД): 33x2.0x32 см.</p>', 'Напольные весы Beurer GS21 Mauritius', '', ''),
	(2, '', 106, 'Напольные весы Beurer GS21 Mauritius', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината).</p>', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината). Максимальная нагрузка 180 кг. Погрешность измерения 0.1 кг. Автоматическое отключение. Перенастройка единицы измерения: kg (кг)/lb (фунты)/st (стоуны). Размеры (ШхВxД): 33x2.0x32 см.</p>', 'Напольные весы Beurer GS21 Mauritius', '', ''),
	(3, '', 106, 'Напольные весы Beurer GS21 Mauritius', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината).</p>', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината). Максимальная нагрузка 180 кг. Погрешность измерения 0.1 кг. Автоматическое отключение. Перенастройка единицы измерения: kg (кг)/lb (фунты)/st (стоуны). Размеры (ШхВxД): 33x2.0x32 см.</p>', 'Напольные весы Beurer GS21 Mauritius', '', ''),
	(1, '', 107, 'Электронные напольные весы BOSCH PPW 3300', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', 'Электронные напольные весы BOSCH PPW 3300', '', ''),
	(2, '', 107, 'Электронные напольные весы BOSCH PPW 3300', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', 'Электронные напольные весы BOSCH PPW 3300', '', ''),
	(3, '', 107, 'Электронные напольные весы BOSCH PPW 3300', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', 'Электронные напольные весы BOSCH PPW 3300', '', ''),
	(1, '', 108, 'Электробритва PHILIPS RQ 1095', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок.</p>', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок. Индикатор необходимости замены бритвенного блока. Быстрая зарядка. Дорожная блокировка. Индикация очистки. Полированный стальной корпус. Отсутствие вибраций. Антикоррозийное покрытие головок. Можно мыть под водой и бриться с пеной. Система Flex & Pivot: три гибкие головки, вращающиеся в разных направления. Система Lift & Cut.</p>', 'Электробритва PHILIPS RQ 1095', '', ''),
	(2, '', 108, 'Электробритва PHILIPS RQ 1095', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок.</p>', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок. Индикатор необходимости замены бритвенного блока. Быстрая зарядка. Дорожная блокировка. Индикация очистки. Полированный стальной корпус. Отсутствие вибраций. Антикоррозийное покрытие головок. Можно мыть под водой и бриться с пеной. Система Flex & Pivot: три гибкие головки, вращающиеся в разных направления. Система Lift & Cut.</p>', 'Электробритва PHILIPS RQ 1095', '', ''),
	(3, '', 108, 'Электробритва PHILIPS RQ 1095', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок.</p>', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок. Индикатор необходимости замены бритвенного блока. Быстрая зарядка. Дорожная блокировка. Индикация очистки. Полированный стальной корпус. Отсутствие вибраций. Антикоррозийное покрытие головок. Можно мыть под водой и бриться с пеной. Система Flex & Pivot: три гибкие головки, вращающиеся в разных направления. Система Lift & Cut.</p>', 'Электробритва PHILIPS RQ 1095', '', ''),
	(1, '', 109, 'Гидромассажная ванна для ног BEURER FB25', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы.</p>', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы. 16 встроенных магнитов. Вибрационный массаж, вихревой массаж. Дополнительная функция: поддержание температуры воды.</p>', 'Гидромассажная ванна для ног BEURER FB25', '', ''),
	(2, '', 109, 'Гидромассажная ванна для ног BEURER FB25', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы.</p>', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы. 16 встроенных магнитов. Вибрационный массаж, вихревой массаж. Дополнительная функция: поддержание температуры воды.</p>', 'Гидромассажная ванна для ног BEURER FB25', '', ''),
	(3, '', 109, 'Гидромассажная ванна для ног BEURER FB25', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы.</p>', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы. 16 встроенных магнитов. Вибрационный массаж, вихревой массаж. Дополнительная функция: поддержание температуры воды.</p>', 'Гидромассажная ванна для ног BEURER FB25', '', ''),
	(1, '', 110, 'Фен-расческа Braun Steam & Style ASS 1000', '<p>Мощный стайлер с управлямой подачей пара.</p>', '<p>Мощный стайлер с управлямой подачей пара. Мягкая укладка и длительный результат. Идеален для укладки влажных волос и корректировки прически на сухих волосах, для создания локонов и волн, создания объема. 3 ступени мощности потока воздуха. Насадка для создания крупных локонов и волн. Насадка для мелкой и средней завивки. Насадка для подъема волос и создания объема от самых корней. Цвет сиреневый матовый.</p>', 'Фен-расческа Braun Steam & Style ASS 1000', '', ''),
	(2, '', 110, 'Фен-расческа Braun Steam & Style ASS 1000', '<p>Мощный стайлер с управлямой подачей пара.</p>', '<p>Мощный стайлер с управлямой подачей пара. Мягкая укладка и длительный результат. Идеален для укладки влажных волос и корректировки прически на сухих волосах, для создания локонов и волн, создания объема. 3 ступени мощности потока воздуха. Насадка для создания крупных локонов и волн. Насадка для мелкой и средней завивки. Насадка для подъема волос и создания объема от самых корней. Цвет сиреневый матовый.</p>', 'Фен-расческа Braun Steam & Style ASS 1000', '', ''),
	(3, '', 110, 'Фен-расческа Braun Steam & Style ASS 1000', '<p>Мощный стайлер с управлямой подачей пара.</p>', '<p>Мощный стайлер с управлямой подачей пара. Мягкая укладка и длительный результат. Идеален для укладки влажных волос и корректировки прически на сухих волосах, для создания локонов и волн, создания объема. 3 ступени мощности потока воздуха. Насадка для создания крупных локонов и волн. Насадка для мелкой и средней завивки. Насадка для подъема волос и создания объема от самых корней. Цвет сиреневый матовый.</p>', 'Фен-расческа Braun Steam & Style ASS 1000', '', ''),
	(1, '', 111, 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока.</p>', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока. Независимая регулировка нагрева и воздушного потока. Подача холодного воздуха. Ионизация. Срок службы: 2000 часов. Вес без кабеля: 540 гр. Гибкий кабель 3 м с устройством Rotocord (вращение шнура вокруг своей оси).</p>', 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '', ''),
	(2, '', 111, 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока.</p>', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока. Независимая регулировка нагрева и воздушного потока. Подача холодного воздуха. Ионизация. Срок службы: 2000 часов. Вес без кабеля: 540 гр. Гибкий кабель 3 м с устройством Rotocord (вращение шнура вокруг своей оси).</p>', 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '', ''),
	(3, '', 111, 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока.</p>', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока. Независимая регулировка нагрева и воздушного потока. Подача холодного воздуха. Ионизация. Срок службы: 2000 часов. Вес без кабеля: 540 гр. Гибкий кабель 3 м с устройством Rotocord (вращение шнура вокруг своей оси).</p>', 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '', ''),
	(1, '', 112, 'Электробигуди Remington KF40E', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования.</p>', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования. Имеют восковую середину и бархатное покрытие. 4 штуки диаметром 20 мм, 10 штук диаметром 22 мм, 6 штук диаметром 25 мм. Время нагрева - 10 минут. Подставка для нагревания и зажимы для волос в комплекте. Два варианта цвета.</p>', 'Электробигуди Remington KF40E', '', ''),
	(2, '', 112, 'Электробигуди Remington KF40E', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования.</p>', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования. Имеют восковую середину и бархатное покрытие. 4 штуки диаметром 20 мм, 10 штук диаметром 22 мм, 6 штук диаметром 25 мм. Время нагрева - 10 минут. Подставка для нагревания и зажимы для волос в комплекте. Два варианта цвета.</p>', 'Электробигуди Remington KF40E', '', ''),
	(3, '', 112, 'Электробигуди Remington KF40E', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования.</p>', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования. Имеют восковую середину и бархатное покрытие. 4 штуки диаметром 20 мм, 10 штук диаметром 22 мм, 6 штук диаметром 25 мм. Время нагрева - 10 минут. Подставка для нагревания и зажимы для волос в комплекте. Два варианта цвета.</p>', 'Электробигуди Remington KF40E', '', ''),
	(1, '', 113, 'Электробигуди Philips HP4611', '<p>12 бигуди в комплекте для создания блестящих локонов.</p>', '<p>12 бигуди в комплекте для создания блестящих локонов. 4 бигуди с керамическим покрытием для создания объемных локонов. Индикатор готовности к работе. 12 металлических зажимов, 4 зажима-краба. Система SalonRollers Pro нагревает все бигуди одновременно, обеспечивая быстрый и равномерный нагрев.</p>', 'Электробигуди Philips HP4611', '', ''),
	(2, '', 113, 'Электробигуди Philips HP4611', '<p>12 бигуди в комплекте для создания блестящих локонов.</p>', '<p>12 бигуди в комплекте для создания блестящих локонов. 4 бигуди с керамическим покрытием для создания объемных локонов. Индикатор готовности к работе. 12 металлических зажимов, 4 зажима-краба. Система SalonRollers Pro нагревает все бигуди одновременно, обеспечивая быстрый и равномерный нагрев.</p>', 'Электробигуди Philips HP4611', '', ''),
	(3, '', 113, 'Электробигуди Philips HP4611', '<p>12 бигуди в комплекте для создания блестящих локонов.</p>', '<p>12 бигуди в комплекте для создания блестящих локонов. 4 бигуди с керамическим покрытием для создания объемных локонов. Индикатор готовности к работе. 12 металлических зажимов, 4 зажима-краба. Система SalonRollers Pro нагревает все бигуди одновременно, обеспечивая быстрый и равномерный нагрев.</p>', 'Электробигуди Philips HP4611', '', ''),
	(1, '', 114, 'Щипцы Moser SalonStyle 4463-0050', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт.</p>', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт. Ударопрочный корпус из термопластика. Подкругленный корпус для завивки волос. Плавающие пластины. Керамико-турмалиновое покрытие пластин. 6 температурных режимов (от 130 до 230 гр). LED-индикаторы работы. Автоотключение через 30 мин. Шнур питания с вращающимся шарниром и петлей для подвешивания. Защита от перегрева.</p>', 'Щипцы Moser SalonStyle 4463-0050', '', ''),
	(2, '', 114, 'Щипцы Moser SalonStyle 4463-0050', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт.</p>', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт. Ударопрочный корпус из термопластика. Подкругленный корпус для завивки волос. Плавающие пластины. Керамико-турмалиновое покрытие пластин. 6 температурных режимов (от 130 до 230 гр). LED-индикаторы работы. Автоотключение через 30 мин. Шнур питания с вращающимся шарниром и петлей для подвешивания. Защита от перегрева.</p>', 'Щипцы Moser SalonStyle 4463-0050', '', ''),
	(3, '', 114, 'Щипцы Moser SalonStyle 4463-0050', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт.</p>', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт. Ударопрочный корпус из термопластика. Подкругленный корпус для завивки волос. Плавающие пластины. Керамико-турмалиновое покрытие пластин. 6 температурных режимов (от 130 до 230 гр). LED-индикаторы работы. Автоотключение через 30 мин. Шнур питания с вращающимся шарниром и петлей для подвешивания. Защита от перегрева.</p>', 'Щипцы Moser SalonStyle 4463-0050', '', ''),
	(1, '', 115, 'Выпрямитель для волос Braun ES2', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева.</p>', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева. Индивидуальные настройки режима укладки. Защита от перегрева. Максимальная температура нагрева 200 С. Мощность 140 Вт.</p>', 'Выпрямитель для волос Braun ES2', '', ''),
	(2, '', 115, 'Выпрямитель для волос Braun ES2', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева.</p>', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева. Индивидуальные настройки режима укладки. Защита от перегрева. Максимальная температура нагрева 200 С. Мощность 140 Вт.</p>', 'Выпрямитель для волос Braun ES2', '', ''),
	(3, '', 115, 'Выпрямитель для волос Braun ES2', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева.</p>', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева. Индивидуальные настройки режима укладки. Защита от перегрева. Максимальная температура нагрева 200 С. Мощность 140 Вт.</p>', 'Выпрямитель для волос Braun ES2', '', ''),
	(1, '', 116, 'Стайлер Braun Satin Hair 5 ESW', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы.</p>', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы. Точная регулировка температуры для бережной укладки (от 130°C до 200°C с шагом в 5°C). Формирователь локонов. Температурный дисплей. Автоматическое отключение через 30 минут.</p>', 'Стайлер Braun Satin Hair 5 ESW', '', ''),
	(2, '', 116, 'Стайлер Braun Satin Hair 5 ESW', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы.</p>', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы. Точная регулировка температуры для бережной укладки (от 130°C до 200°C с шагом в 5°C). Формирователь локонов. Температурный дисплей. Автоматическое отключение через 30 минут.</p>', 'Стайлер Braun Satin Hair 5 ESW', '', ''),
	(3, '', 116, 'Стайлер Braun Satin Hair 5 ESW', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы.</p>', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы. Точная регулировка температуры для бережной укладки (от 130°C до 200°C с шагом в 5°C). Формирователь локонов. Температурный дисплей. Автоматическое отключение через 30 минут.</p>', 'Стайлер Braun Satin Hair 5 ESW', '', ''),
	(1, '', 117, 'Плойка Valera DIGICURL 641.19', '<p>Плойка с цифровым управлением для завивки волос.</p>', '<p>Плойка с цифровым управлением для завивки волос. Диаметр: 19 мм. Керамический слой. Антибактериальное действие NANO-SILVER. Цифровой дисплей. Максимальная температура 190°C. Гибкий поворотный кабель 3 м. Пластиковый наконечник.</p>', 'Плойка Valera DIGICURL 641.19', '', ''),
	(2, '', 117, 'Плойка Valera DIGICURL 641.19', '<p>Плойка с цифровым управлением для завивки волос.</p>', '<p>Плойка с цифровым управлением для завивки волос. Диаметр: 19 мм. Керамический слой. Антибактериальное действие NANO-SILVER. Цифровой дисплей. Максимальная температура 190°C. Гибкий поворотный кабель 3 м. Пластиковый наконечник.</p>', 'Плойка Valera DIGICURL 641.19', '', ''),
	(3, '', 117, 'Плойка Valera DIGICURL 641.19', '<p>Плойка с цифровым управлением для завивки волос.</p>', '<p>Плойка с цифровым управлением для завивки волос. Диаметр: 19 мм. Керамический слой. Антибактериальное действие NANO-SILVER. Цифровой дисплей. Максимальная температура 190°C. Гибкий поворотный кабель 3 м. Пластиковый наконечник.</p>', 'Плойка Valera DIGICURL 641.19', '', ''),
	(1, '', 118, 'Сауна для лица Panasonic EH 2513', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', 'Сауна для лица Panasonic EH 2513', '', ''),
	(2, '', 118, 'Сауна для лица Panasonic EH 2513', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', 'Сауна для лица Panasonic EH 2513', '', ''),
	(3, '', 118, 'Сауна для лица Panasonic EH 2513', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', 'Сауна для лица Panasonic EH 2513', '', ''),
	(1, '', 119, 'Сауна для лица Panasonic EH 2424', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова.</p>', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова. Очищение и увлажнение глубоких слоев эпидермиса с помощью наночастиц ионизированного пара. Непрерывная работа при однократном заполнении резервуара водой – 12 ми</p>', 'Сауна для лица Panasonic EH 2424', '', ''),
	(2, '', 119, 'Сауна для лица Panasonic EH 2424', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова.</p>', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова. Очищение и увлажнение глубоких слоев эпидермиса с помощью наночастиц ионизированного пара. Непрерывная работа при однократном заполнении резервуара водой – 12 ми</p>', 'Сауна для лица Panasonic EH 2424', '', ''),
	(3, '', 119, 'Сауна для лица Panasonic EH 2424', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова.</p>', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова. Очищение и увлажнение глубоких слоев эпидермиса с помощью наночастиц ионизированного пара. Непрерывная работа при однократном заполнении резервуара водой – 12 ми</p>', 'Сауна для лица Panasonic EH 2424', '', ''),
	(1, '', 120, 'Цифровая фотокамера Olympus PEN E-P3', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма.</p>', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма. Live MOS сенсор с разрешением 12.3 Мегапикселей. FAST автофокус (Frequency Acceleration Sensor Technology). Full HD-видео со стерео звуком, регулируемой глубиной резкости и художественными фильтрами. Графический процессор TruePic VI. Цвета: черный, белый, серебристый.</p>', 'Цифровая фотокамера Olympus PEN E-P3', '', ''),
	(2, '', 120, 'Цифровая фотокамера Olympus PEN E-P3', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма.</p>', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма. Live MOS сенсор с разрешением 12.3 Мегапикселей. FAST автофокус (Frequency Acceleration Sensor Technology). Full HD-видео со стерео звуком, регулируемой глубиной резкости и художественными фильтрами. Графический процессор TruePic VI. Цвета: черный, белый, серебристый.</p>', 'Цифровая фотокамера Olympus PEN E-P3', '', ''),
	(3, '', 120, 'Цифровая фотокамера Olympus PEN E-P3', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма.</p>', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма. Live MOS сенсор с разрешением 12.3 Мегапикселей. FAST автофокус (Frequency Acceleration Sensor Technology). Full HD-видео со стерео звуком, регулируемой глубиной резкости и художественными фильтрами. Графический процессор TruePic VI. Цвета: черный, белый, серебристый.</p>', 'Цифровая фотокамера Olympus PEN E-P3', '', ''),
	(1, '', 121, 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение.</p>', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение. (Эквивалент формата 35 мм для пленочных фотокамер: 28 – 140 мм). Встроенный проектор позволяет проецировать избранные фотографии или видеоклипы. Поддержка ярких (до 14 люмен) проекций качества VGA на экране размером от 26 до 240 см (от 5 до 47 дюймов). Проецирование изображений с ПК или карты памяти. Гибридное VR (смещение объектива и электронное подавление вибраций). Сенсорный ЖК экран с диагональю 7,6 см (3 дюйма), разрешением 460 тыс. точек. Яркие видеоклипы высокой четкости в формате 720р HD. 17 сюжетных режимов. Варианты расцветок - желтый, сиреневый, черный, серый.</p>', 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '', ''),
	(2, '', 121, 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение.</p>', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение. (Эквивалент формата 35 мм для пленочных фотокамер: 28 – 140 мм). Встроенный проектор позволяет проецировать избранные фотографии или видеоклипы. Поддержка ярких (до 14 люмен) проекций качества VGA на экране размером от 26 до 240 см (от 5 до 47 дюймов). Проецирование изображений с ПК или карты памяти. Гибридное VR (смещение объектива и электронное подавление вибраций). Сенсорный ЖК экран с диагональю 7,6 см (3 дюйма), разрешением 460 тыс. точек. Яркие видеоклипы высокой четкости в формате 720р HD. 17 сюжетных режимов. Варианты расцветок - желтый, сиреневый, черный, серый.</p>', 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '', ''),
	(3, '', 121, 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение.</p>', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение. (Эквивалент формата 35 мм для пленочных фотокамер: 28 – 140 мм). Встроенный проектор позволяет проецировать избранные фотографии или видеоклипы. Поддержка ярких (до 14 люмен) проекций качества VGA на экране размером от 26 до 240 см (от 5 до 47 дюймов). Проецирование изображений с ПК или карты памяти. Гибридное VR (смещение объектива и электронное подавление вибраций). Сенсорный ЖК экран с диагональю 7,6 см (3 дюйма), разрешением 460 тыс. точек. Яркие видеоклипы высокой четкости в формате 720р HD. 17 сюжетных режимов. Варианты расцветок - желтый, сиреневый, черный, серый.</p>', 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '', ''),
	(1, '', 122, 'Штатив Hama Traveller Mini H-4048', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', 'Штатив Hama Traveller Mini H-4048', '', ''),
	(2, '', 122, 'Штатив Hama Traveller Mini H-4048', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', 'Штатив Hama Traveller Mini H-4048', '', ''),
	(3, '', 122, 'Штатив Hama Traveller Mini H-4048', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', 'Штатив Hama Traveller Mini H-4048', '', ''),
	(1, '', 123, 'Штатив Rekam RT-L38', '<p>Напольный штатив для фото- и видеокамер.</p>', '<p>Напольный штатив для фото- и видеокамер. Корпус выполнен из металла серебристого цвета, ручка для переноса, механический подъемник, крюк для сумки, панорамная 3-D головка.</p>', 'Штатив Rekam RT-L38', '', ''),
	(2, '', 123, 'Штатив Rekam RT-L38', '<p>Напольный штатив для фото- и видеокамер.</p>', '<p>Напольный штатив для фото- и видеокамер. Корпус выполнен из металла серебристого цвета, ручка для переноса, механический подъемник, крюк для сумки, панорамная 3-D головка.</p>', 'Штатив Rekam RT-L38', '', ''),
	(3, '', 123, 'Штатив Rekam RT-L38', '<p>Напольный штатив для фото- и видеокамер.</p>', '<p>Напольный штатив для фото- и видеокамер. Корпус выполнен из металла серебристого цвета, ручка для переноса, механический подъемник, крюк для сумки, панорамная 3-D головка.</p>', 'Штатив Rekam RT-L38', '', ''),
	(1, '', 124, 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности.</p>', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности. Изготовлен на основе профессиональной оптики, с использованием асферического элемента. Подходит для съёмки без штатива при различном освещении. Минимальное расстояние фокусировки объектива составляет всего 25 см при любом увеличении, обеспечивая возможность макросъёмки.</p>', 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '', ''),
	(2, '', 124, 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности.</p>', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности. Изготовлен на основе профессиональной оптики, с использованием асферического элемента. Подходит для съёмки без штатива при различном освещении. Минимальное расстояние фокусировки объектива составляет всего 25 см при любом увеличении, обеспечивая возможность макросъёмки.</p>', 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '', ''),
	(3, '', 124, 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности.</p>', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности. Изготовлен на основе профессиональной оптики, с использованием асферического элемента. Подходит для съёмки без штатива при различном освещении. Минимальное расстояние фокусировки объектива составляет всего 25 см при любом увеличении, обеспечивая возможность макросъёмки.</p>', 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '', ''),
	(1, '', 125, 'Объектив Canon EF 50 mm f1.8 II', '<p>Стандартный объектив с постоянным фокусным расстоянием.</p>', '<p>Стандартный объектив с постоянным фокусным расстоянием. Компактный и легкий, обеспечивает отличное качество изображения при светосиле, превосходящей возможности любого объектива с переменным фокусным расстоянием. Классическая оптическая схема. Система автофокусировки базируется на встроенном микромоторе.</p>', 'Объектив Canon EF 50 mm f1.8 II', '', ''),
	(2, '', 125, 'Объектив Canon EF 50 mm f1.8 II', '<p>Стандартный объектив с постоянным фокусным расстоянием.</p>', '<p>Стандартный объектив с постоянным фокусным расстоянием. Компактный и легкий, обеспечивает отличное качество изображения при светосиле, превосходящей возможности любого объектива с переменным фокусным расстоянием. Классическая оптическая схема. Система автофокусировки базируется на встроенном микромоторе.</p>', 'Объектив Canon EF 50 mm f1.8 II', '', ''),
	(3, '', 125, 'Объектив Canon EF 50 mm f1.8 II', '<p>Стандартный объектив с постоянным фокусным расстоянием.</p>', '<p>Стандартный объектив с постоянным фокусным расстоянием. Компактный и легкий, обеспечивает отличное качество изображения при светосиле, превосходящей возможности любого объектива с переменным фокусным расстоянием. Классическая оптическая схема. Система автофокусировки базируется на встроенном микромоторе.</p>', 'Объектив Canon EF 50 mm f1.8 II', '', ''),
	(1, '', 126, 'Объектив Canon EF 70-200 f 4L USM', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе.</p>', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе. Диафрагма объектива с круглым отверстием позволяет получать привлекательный эффект размытого фона. Оптическая схема объектива включает 13 линз в 16 группах. В числе элементов имеются две линзы из низкодисперсионного стекла UD и одна флюоритовая. Такая конструкция обеспечивает превосходное качество изображения с минимальным уровнем аберраций при любом значении фокусного расстояния. Многослойное просветление Super Spectra. Фокусировка осуществляется при помощи кольцевого ультразвукового мотора USM.</p>', 'Объектив Canon EF 70-200 f 4L USM', '', ''),
	(2, '', 126, 'Объектив Canon EF 70-200 f 4L USM', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе.</p>', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе. Диафрагма объектива с круглым отверстием позволяет получать привлекательный эффект размытого фона. Оптическая схема объектива включает 13 линз в 16 группах. В числе элементов имеются две линзы из низкодисперсионного стекла UD и одна флюоритовая. Такая конструкция обеспечивает превосходное качество изображения с минимальным уровнем аберраций при любом значении фокусного расстояния. Многослойное просветление Super Spectra. Фокусировка осуществляется при помощи кольцевого ультразвукового мотора USM.</p>', 'Объектив Canon EF 70-200 f 4L USM', '', ''),
	(3, '', 126, 'Объектив Canon EF 70-200 f 4L USM', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе.</p>', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе. Диафрагма объектива с круглым отверстием позволяет получать привлекательный эффект размытого фона. Оптическая схема объектива включает 13 линз в 16 группах. В числе элементов имеются две линзы из низкодисперсионного стекла UD и одна флюоритовая. Такая конструкция обеспечивает превосходное качество изображения с минимальным уровнем аберраций при любом значении фокусного расстояния. Многослойное просветление Super Spectra. Фокусировка осуществляется при помощи кольцевого ультразвукового мотора USM.</p>', 'Объектив Canon EF 70-200 f 4L USM', '', ''),
	(1, '', 127, 'Вспышка Canon Speedlite 580EX II', '<p>Вспышка для любых погодных условий.</p>', '<p>Вспышка для любых погодных условий. Управление с помощью меню фотокамеры. Надёжная конструкция защищает детали вспышки от попадания пыли и влаги при съёмке с выносной колодкой. Бесшумный и быстрый перезаряд.</p>', 'Вспышка Canon Speedlite 580EX II', '', ''),
	(2, '', 127, 'Вспышка Canon Speedlite 580EX II', '<p>Вспышка для любых погодных условий.</p>', '<p>Вспышка для любых погодных условий. Управление с помощью меню фотокамеры. Надёжная конструкция защищает детали вспышки от попадания пыли и влаги при съёмке с выносной колодкой. Бесшумный и быстрый перезаряд.</p>', 'Вспышка Canon Speedlite 580EX II', '', ''),
	(3, '', 127, 'Вспышка Canon Speedlite 580EX II', '<p>Вспышка для любых погодных условий.</p>', '<p>Вспышка для любых погодных условий. Управление с помощью меню фотокамеры. Надёжная конструкция защищает детали вспышки от попадания пыли и влаги при съёмке с выносной колодкой. Бесшумный и быстрый перезаряд.</p>', 'Вспышка Canon Speedlite 580EX II', '', ''),
	(1, '', 128, 'Вспышка Nikon Speedlight SB-900', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами.</p>', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами. Три шаблона освещения: центрально-взвешенный, равномерный и стандартный. Набор усовершенствованных функций. Система термальной защиты, автоматическое определение фильтра.</p>', 'Вспышка Nikon Speedlight SB-900', '', ''),
	(2, '', 128, 'Вспышка Nikon Speedlight SB-900', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами.</p>', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами. Три шаблона освещения: центрально-взвешенный, равномерный и стандартный. Набор усовершенствованных функций. Система термальной защиты, автоматическое определение фильтра.</p>', 'Вспышка Nikon Speedlight SB-900', '', ''),
	(3, '', 128, 'Вспышка Nikon Speedlight SB-900', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами.</p>', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами. Три шаблона освещения: центрально-взвешенный, равномерный и стандартный. Набор усовершенствованных функций. Система термальной защиты, автоматическое определение фильтра.</p>', 'Вспышка Nikon Speedlight SB-900', '', ''),
	(1, '', 129, 'Цифровая фоторамка Sony DPF-A710', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий.</p>', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий. Встроенная память 128 МБ позволяет хранить до 200 фотографий. Большой выбор настроек слайд-шоу, разные варианты оформления часов и календаря, функции поиска фотографий по папкам, событиям и тегам пользователя. Интеллектуальный сенсор поворачивает изображение при изменении положения рамки. Оснащена пультом дистанционного управления.</p>', 'Цифровая фоторамка Sony DPF-A710', '', ''),
	(2, '', 129, 'Цифровая фоторамка Sony DPF-A710', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий.</p>', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий. Встроенная память 128 МБ позволяет хранить до 200 фотографий. Большой выбор настроек слайд-шоу, разные варианты оформления часов и календаря, функции поиска фотографий по папкам, событиям и тегам пользователя. Интеллектуальный сенсор поворачивает изображение при изменении положения рамки. Оснащена пультом дистанционного управления.</p>', 'Цифровая фоторамка Sony DPF-A710', '', ''),
	(3, '', 129, 'Цифровая фоторамка Sony DPF-A710', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий.</p>', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий. Встроенная память 128 МБ позволяет хранить до 200 фотографий. Большой выбор настроек слайд-шоу, разные варианты оформления часов и календаря, функции поиска фотографий по папкам, событиям и тегам пользователя. Интеллектуальный сенсор поворачивает изображение при изменении положения рамки. Оснащена пультом дистанционного управления.</p>', 'Цифровая фоторамка Sony DPF-A710', '', ''),
	(1, '', 130, 'Цифровая фоторамка Transcend PF705', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9.</p>', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9. Поддержка USB флэш-накопителей и карт памяти SD/SDHC/MMC/MS Полная совместимость с интерфейсом Hi-Speed USB 2.0 и обратная совместимость с USB 1.1. Прямое подключение к ПК с помощью USB для простого обмена файлами. Выбор различных фотографий для создания слайдшоу. Возможность просмотра изображений в режиме слайд-шоу, в режиме пиктограмм, в обычномрежиме, а также возможность увеличения изображения. Функция напоминаний о важных датах/событиях. Функции календаря и часов. Автоматическое выключение и таймер для перехода в неактивный режим. Возможность выбора цветовых режимов. Цвета: белый, черный.</p>', 'Цифровая фоторамка Transcend PF705', '', ''),
	(2, '', 130, 'Цифровая фоторамка Transcend PF705', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9.</p>', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9. Поддержка USB флэш-накопителей и карт памяти SD/SDHC/MMC/MS Полная совместимость с интерфейсом Hi-Speed USB 2.0 и обратная совместимость с USB 1.1. Прямое подключение к ПК с помощью USB для простого обмена файлами. Выбор различных фотографий для создания слайдшоу. Возможность просмотра изображений в режиме слайд-шоу, в режиме пиктограмм, в обычномрежиме, а также возможность увеличения изображения. Функция напоминаний о важных датах/событиях. Функции календаря и часов. Автоматическое выключение и таймер для перехода в неактивный режим. Возможность выбора цветовых режимов. Цвета: белый, черный.</p>', 'Цифровая фоторамка Transcend PF705', '', ''),
	(3, '', 130, 'Цифровая фоторамка Transcend PF705', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9.</p>', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9. Поддержка USB флэш-накопителей и карт памяти SD/SDHC/MMC/MS Полная совместимость с интерфейсом Hi-Speed USB 2.0 и обратная совместимость с USB 1.1. Прямое подключение к ПК с помощью USB для простого обмена файлами. Выбор различных фотографий для создания слайдшоу. Возможность просмотра изображений в режиме слайд-шоу, в режиме пиктограмм, в обычномрежиме, а также возможность увеличения изображения. Функция напоминаний о важных датах/событиях. Функции календаря и часов. Автоматическое выключение и таймер для перехода в неактивный режим. Возможность выбора цветовых режимов. Цвета: белый, черный.</p>', 'Цифровая фоторамка Transcend PF705', '', ''),
	(1, '', 131, 'Коктейльное платье Tulpan', '<p>97% полиэстер, 5% эластан</p>', '<p>97% полиэстер, 5% эластан</p>', 'Коктейльное платье Tulpan', '', ''),
	(2, '', 131, 'Коктейльное платье Tulpan', '<p>97% полиэстер, 5% эластан</p>', '<p>97% полиэстер, 5% эластан</p>', 'Коктейльное платье Tulpan', '', ''),
	(3, '', 131, 'Коктейльное платье Tulpan', '<p>97% полиэстер, 5% эластан</p>', '<p>97% полиэстер, 5% эластан</p>', 'Коктейльное платье Tulpan', '', ''),
	(1, '', 132, 'Коктейльное платье Strass Buck', '<p>95% полиэстер, 5% спандекс</p>', '<p>95% полиэстер, 5% спандекс</p>', 'Коктейльное платье Strass Buck', '', ''),
	(2, '', 132, 'Коктейльное платье Strass Buck', '<p>95% полиэстер, 5% спандекс</p>', '<p>95% полиэстер, 5% спандекс</p>', 'Коктейльное платье Strass Buck', '', ''),
	(3, '', 132, 'Коктейльное платье Strass Buck', '<p>95% полиэстер, 5% спандекс</p>', '<p>95% полиэстер, 5% спандекс</p>', 'Коктейльное платье Strass Buck', '', ''),
	(1, '', 133, 'Платье Зебра с оригинальным ремнем', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p>', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p><p>Оригинальный ремень и необычная расцветка покажут Вашу индивидуальность и стиль.</p><p>Параметры модели: рост 176см, ОГ - 88см, ОТ -65 см, ОБ-94 см.</p>', 'Платье Зебра с оригинальным ремнем', '', ''),
	(2, '', 133, 'Платье Зебра с оригинальным ремнем', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p>', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p><p>Оригинальный ремень и необычная расцветка покажут Вашу индивидуальность и стиль.</p><p>Параметры модели: рост 176см, ОГ - 88см, ОТ -65 см, ОБ-94 см.</p>', 'Платье Зебра с оригинальным ремнем', '', ''),
	(3, '', 133, 'Платье Зебра с оригинальным ремнем', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p>', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p><p>Оригинальный ремень и необычная расцветка покажут Вашу индивидуальность и стиль.</p><p>Параметры модели: рост 176см, ОГ - 88см, ОТ -65 см, ОБ-94 см.</p>', 'Платье Зебра с оригинальным ремнем', '', ''),
	(1, '', 134, 'Вязаное платье с нарядным воротничком', '<p>Это отличное вязаное платье с шикарным воротником</p>', '<p>Это отличное вязаное платье с шикарным воротником</p><p>А сборка в области талии подчеркнёт все прелести вашей фигуры.</p>', 'Вязаное платье с нарядным воротничком', '', ''),
	(2, '', 134, 'Вязаное платье с нарядным воротничком', '<p>Это отличное вязаное платье с шикарным воротником</p>', '<p>Это отличное вязаное платье с шикарным воротником</p><p>А сборка в области талии подчеркнёт все прелести вашей фигуры.</p>', 'Вязаное платье с нарядным воротничком', '', ''),
	(3, '', 134, 'Вязаное платье с нарядным воротничком', '<p>Это отличное вязаное платье с шикарным воротником</p>', '<p>Это отличное вязаное платье с шикарным воротником</p><p>А сборка в области талии подчеркнёт все прелести вашей фигуры.</p>', 'Вязаное платье с нарядным воротничком', '', ''),
	(1, '', 135, 'Комбинезон Redial под джинс 2', '<p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', '<p>60% хлопок, 35% полиэстер, 5% спандекс</p><p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', 'Комбинезон Redial под джинс 2', '', ''),
	(2, '', 135, 'Комбинезон Redial под джинс 2', '<p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', '<p>60% хлопок, 35% полиэстер, 5% спандекс</p><p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', 'Комбинезон Redial под джинс 2', '', ''),
	(3, '', 135, 'Комбинезон Redial под джинс 2', '<p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', '<p>60% хлопок, 35% полиэстер, 5% спандекс</p><p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', 'Комбинезон Redial под джинс 2', '', ''),
	(1, '', 136, 'Велюровый спортивный костюм с юбкой', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', 'Велюровый спортивный костюм с юбкой', '', ''),
	(2, '', 136, 'Велюровый спортивный костюм с юбкой', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', 'Велюровый спортивный костюм с юбкой', '', ''),
	(3, '', 136, 'Велюровый спортивный костюм с юбкой', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', 'Велюровый спортивный костюм с юбкой', '', ''),
	(1, '', 137, 'Спортивный костюм HOOD', '<p>100% хлопок</p>', '<p>100% хлопок</p>', 'Спортивный костюм HOOD', '', ''),
	(2, '', 137, 'Спортивный костюм HOOD', '<p>100% хлопок</p>', '<p>100% хлопок</p>', 'Спортивный костюм HOOD', '', ''),
	(3, '', 137, 'Спортивный костюм HOOD', '<p>100% хлопок</p>', '<p>100% хлопок</p>', 'Спортивный костюм HOOD', '', ''),
	(1, '', 138, 'Бюстгальтер Velmont 3404', '<p>Бюстгальтер Velmont 3404 &ndash; эффектный бюстгальтер. Тонкие, регулируемые лямки,</p>', '<p>Бюстгальтер Velmont 3404 &ndash; эффектный бюстгальтер. Тонкие, регулируемые лямки, удобная чашка, кружевная отделка, Ваша грудь будет сексуально выглядеть в этом бюстгальтере. Удобен в носке и подходит как на каждый день, так и под вечернее платье.</p>', 'Бюстгальтер Velmont 3404', 'Бюстгальтер Velmont 3404, Нижнее бельё', 'Бюстгальтер Velmont 3404 &ndash; эффектный бюстгальтер. Тонкие, регулируемые лямки,'),
	(2, '', 138, 'Бюстгальтер Velmont 3404', '<p>Бюстгальтер Velmont 3404 – эффектный бюстгальтер. Тонкие, регулируемые лямки,</p>', '<p>Бюстгальтер Velmont 3404 – эффектный бюстгальтер. Тонкие, регулируемые лямки, удобная чашка, кружевная отделка, Ваша грудь будет сексуально выглядеть в этом бюстгальтере. Удобен в носке и подходит как на каждый день, так и под вечернее платье.</p>', 'Бюстгальтер Velmont 3404', '', ''),
	(3, '', 138, 'Бюстгальтер Velmont 3404', '<p>Бюстгальтер Velmont 3404 – эффектный бюстгальтер. Тонкие, регулируемые лямки,</p>', '<p>Бюстгальтер Velmont 3404 – эффектный бюстгальтер. Тонкие, регулируемые лямки, удобная чашка, кружевная отделка, Ваша грудь будет сексуально выглядеть в этом бюстгальтере. Удобен в носке и подходит как на каждый день, так и под вечернее платье.</p>', 'Бюстгальтер Velmont 3404', '', ''),
	(1, '', 139, 'Бюстгальтер Velmont 4702', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках. Черный атлас, удобная чашка, бюстгальтер привлекает внимание эффектной простотой. Идеально поддержит Вашу грудь, удобен в носке на каждый день.</p>', 'Бюстгальтер Velmont 4702', '', ''),
	(2, '', 139, 'Бюстгальтер Velmont 4702', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках. Черный атлас, удобная чашка, бюстгальтер привлекает внимание эффектной простотой. Идеально поддержит Вашу грудь, удобен в носке на каждый день.</p>', 'Бюстгальтер Velmont 4702', '', ''),
	(3, '', 139, 'Бюстгальтер Velmont 4702', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках. Черный атлас, удобная чашка, бюстгальтер привлекает внимание эффектной простотой. Идеально поддержит Вашу грудь, удобен в носке на каждый день.</p>', 'Бюстгальтер Velmont 4702', '', ''),
	(1, '', 140, 'Бюстгальтер Velmont 5104', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки.</p>', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки. Бюстгальтер на регулируемых тонких лямках, глубокая удобная чашка, идеально поддерживающая грудь. Удобен в носке на каждый день, идеально подходит для открытых сарафанов и прозрачных топов.</p>', 'Бюстгальтер Velmont 5104', '', ''),
	(2, '', 140, 'Бюстгальтер Velmont 5104', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки.</p>', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки. Бюстгальтер на регулируемых тонких лямках, глубокая удобная чашка, идеально поддерживающая грудь. Удобен в носке на каждый день, идеально подходит для открытых сарафанов и прозрачных топов.</p>', 'Бюстгальтер Velmont 5104', '', ''),
	(3, '', 140, 'Бюстгальтер Velmont 5104', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки.</p>', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки. Бюстгальтер на регулируемых тонких лямках, глубокая удобная чашка, идеально поддерживающая грудь. Удобен в носке на каждый день, идеально подходит для открытых сарафанов и прозрачных топов.</p>', 'Бюстгальтер Velmont 5104', '', ''),
	(1, '', 141, 'Бюстгальтер Velmont 3804', '<p>Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках. Легкая отделка кружевом, четный цвет, он привлекает внимание классической простотой. Удобная, мягкая чашечка идеально поддержит Вашу грудь. Бюстгальтер подходит к носке на каждый день.</p>', 'Бюстгальтер Velmont 3804', 'Бюстгальтер Velmont 3804, Нижнее бельё', 'Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках.'),
	(2, '', 141, 'Бюстгальтер Velmont 3804', '<p>Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках. Легкая отделка кружевом, четный цвет, он привлекает внимание классической простотой. Удобная, мягкая чашечка идеально поддержит Вашу грудь. Бюстгальтер подходит к носке на каждый день.</p>', 'Бюстгальтер Velmont 3804', '', ''),
	(3, '', 141, 'Бюстгальтер Velmont 3804', '<p>Бюстгальтер Velmont 3804 – удобный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 3804 – удобный бюстгальтер на регулируемых тонких лямках. Легкая отделка кружевом, четный цвет, он привлекает внимание классической простотой. Удобная, мягкая чашечка идеально поддержит Вашу грудь. Бюстгальтер подходит к носке на каждый день.</p>', 'Бюстгальтер Velmont 3804', '', ''),
	(1, '', 142, 'Стульчик для кормления Peg-Perego Prima Pappa Best', '<p>Стульчик раcсчитан на малыша до трех лет.</p>', '<p>Стульчик раcсчитан на малыша до трех лет. Моющееся сидение изготовлено из кожа заменителя, корпус пластмассовый, регулируемая подножка, стопора на колесах, большая устойчивость. Пятиточечные ремни безопасности и анатомическая вставка для разделения ног удерживают ребенка в надежном и безопасном положении.</p>', 'Стульчик для кормления Peg-Perego Prima Pappa Best', '', ''),
	(2, '', 142, 'Стульчик для кормления Peg-Perego Prima Pappa Best', '<p>Стульчик раcсчитан на малыша до трех лет.</p>', '<p>Стульчик раcсчитан на малыша до трех лет. Моющееся сидение изготовлено из кожа заменителя, корпус пластмассовый, регулируемая подножка, стопора на колесах, большая устойчивость. Пятиточечные ремни безопасности и анатомическая вставка для разделения ног удерживают ребенка в надежном и безопасном положении.</p>', 'Стульчик для кормления Peg-Perego Prima Pappa Best', '', ''),
	(3, '', 142, 'Стульчик для кормления Peg-Perego Prima Pappa Best', '<p>Стульчик раcсчитан на малыша до трех лет.</p>', '<p>Стульчик раcсчитан на малыша до трех лет. Моющееся сидение изготовлено из кожа заменителя, корпус пластмассовый, регулируемая подножка, стопора на колесах, большая устойчивость. Пятиточечные ремни безопасности и анатомическая вставка для разделения ног удерживают ребенка в надежном и безопасном положении.</p>', 'Стульчик для кормления Peg-Perego Prima Pappa Best', '', ''),
	(1, '', 143, 'Цифровой видеомонитор Philips AVENT SCD60000', '<p>Автоматический выбор канала для конфиденциального соединения.</p>', '<p>Автоматический выбор канала для конфиденциального соединения. Система инфракрасного ночного видения для круглосуточного наблюдения. Успокаивающие колыбельные и ночник. Высокое разрешение, цветной экран 61 мм. Беспроводной портативный родительский блок. Цифровое подтверждение сигнала и световая индикация уровня звука. Автоматическое включение экрана с регуляторами яркости и звука. Родительский блок на аккумуляторах. Диапазон действия: 150 м. Клипса для крепления к поясу.</p>', 'Цифровой видеомонитор Philips AVENT SCD60000', '', ''),
	(2, '', 143, 'Цифровой видеомонитор Philips AVENT SCD60000', '<p>Автоматический выбор канала для конфиденциального соединения.</p>', '<p>Автоматический выбор канала для конфиденциального соединения. Система инфракрасного ночного видения для круглосуточного наблюдения. Успокаивающие колыбельные и ночник. Высокое разрешение, цветной экран 61 мм. Беспроводной портативный родительский блок. Цифровое подтверждение сигнала и световая индикация уровня звука. Автоматическое включение экрана с регуляторами яркости и звука. Родительский блок на аккумуляторах. Диапазон действия: 150 м. Клипса для крепления к поясу.</p>', 'Цифровой видеомонитор Philips AVENT SCD60000', '', ''),
	(3, '', 143, 'Цифровой видеомонитор Philips AVENT SCD60000', '<p>Автоматический выбор канала для конфиденциального соединения.</p>', '<p>Автоматический выбор канала для конфиденциального соединения. Система инфракрасного ночного видения для круглосуточного наблюдения. Успокаивающие колыбельные и ночник. Высокое разрешение, цветной экран 61 мм. Беспроводной портативный родительский блок. Цифровое подтверждение сигнала и световая индикация уровня звука. Автоматическое включение экрана с регуляторами яркости и звука. Родительский блок на аккумуляторах. Диапазон действия: 150 м. Клипса для крепления к поясу.</p>', 'Цифровой видеомонитор Philips AVENT SCD60000', '', ''),
	(1, '', 144, 'Детские качели GRACO Sweetpeace', '<p>Детские качели для детей с рождения.</p>', '<p>Детские качели для детей с рождения. Качели копируют движение при укачивании ребёнка на руках (в трёх разных направлениях), три положения спинки, 6 скоростей, съёмное сидение, набор различных мелодий и возможность подключения МР3 плеера, две скорости вибрации, ремни безопасности, регулируемый капор.</p>', 'Детские качели GRACO Sweetpeace', '', ''),
	(2, '', 144, 'Детские качели GRACO Sweetpeace', '<p>Детские качели для детей с рождения.</p>', '<p>Детские качели для детей с рождения. Качели копируют движение при укачивании ребёнка на руках (в трёх разных направлениях), три положения спинки, 6 скоростей, съёмное сидение, набор различных мелодий и возможность подключения МР3 плеера, две скорости вибрации, ремни безопасности, регулируемый капор.</p>', 'Детские качели GRACO Sweetpeace', '', ''),
	(3, '', 144, 'Детские качели GRACO Sweetpeace', '<p>Детские качели для детей с рождения.</p>', '<p>Детские качели для детей с рождения. Качели копируют движение при укачивании ребёнка на руках (в трёх разных направлениях), три положения спинки, 6 скоростей, съёмное сидение, набор различных мелодий и возможность подключения МР3 плеера, две скорости вибрации, ремни безопасности, регулируемый капор.</p>', 'Детские качели GRACO Sweetpeace', '', ''),
	(1, '', 145, 'Детские качели GRACO Swing\'n\'bounce', '<p>Уникальная модель 2-в-1: качели + кресло качалка.</p>', '<p>Уникальная модель 2-в-1: качели + кресло качалка. 6 скоростей для использования в качестве качелей. 2 скорости для спокойного покачивания в кресле качалке. 3 положения наклона кресла. Снимаемый подголовник. Движущаяся карусель с 3 плюшевыми игрушками. Электронный блок с музыкой, звуками природы, таймер для автоматического отключения. Цвета: deimos, venus, greta.</p>', 'Детские качели GRACO Swing\'n\'bounce', '', ''),
	(2, '', 145, 'Детские качели GRACO Swing\'n\'bounce', '<p>Уникальная модель 2-в-1: качели + кресло качалка.</p>', '<p>Уникальная модель 2-в-1: качели + кресло качалка. 6 скоростей для использования в качестве качелей. 2 скорости для спокойного покачивания в кресле качалке. 3 положения наклона кресла. Снимаемый подголовник. Движущаяся карусель с 3 плюшевыми игрушками. Электронный блок с музыкой, звуками природы, таймер для автоматического отключения. Цвета: deimos, venus, greta.</p>', 'Детские качели GRACO Swing\'n\'bounce', '', ''),
	(3, '', 145, 'Детские качели GRACO Swing\'n\'bounce', '<p>Уникальная модель 2-в-1: качели + кресло качалка.</p>', '<p>Уникальная модель 2-в-1: качели + кресло качалка. 6 скоростей для использования в качестве качелей. 2 скорости для спокойного покачивания в кресле качалке. 3 положения наклона кресла. Снимаемый подголовник. Движущаяся карусель с 3 плюшевыми игрушками. Электронный блок с музыкой, звуками природы, таймер для автоматического отключения. Цвета: deimos, venus, greta.</p>', 'Детские качели GRACO Swing\'n\'bounce', '', ''),
	(1, '', 146, 'Пеленальный столик Cam Nuvola', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', 'Пеленальный столик Cam Nuvola', '', ''),
	(2, '', 146, 'Пеленальный столик Cam Nuvola', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', 'Пеленальный столик Cam Nuvola', '', ''),
	(3, '', 146, 'Пеленальный столик Cam Nuvola', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', 'Пеленальный столик Cam Nuvola', '', ''),
	(1, '', 147, 'Автокресло Bebe Confort Opal', '<p>Автокресло с поворотным сиденьем для более продолжительного использования.</p>', '<p>Автокресло с поворотным сиденьем для более продолжительного использования. Переустановка положений происходит одним движением руки, вращением автокресла на своем основании. Сиденье подходит для двух групп: 0+ - спиной к дороге и 1 - лицом к дороге. Боковая защита Safe Side предохраняет голову малыша при боковых столкновениях. Внутренние 5-точечные ремни безопасности быстро и удобно регулируются по росту ребенка. Размеры: ширина регулируется от 40 до 50 см. Высота регулируется от 60 до 76 см. Варианты цвета: Total Black, Intense Red, Deep Blue, Brown Earth, Steel Gray, Marble Pink, Dark Olive.</p>', 'Автокресло Bebe Confort Opal', '', ''),
	(2, '', 147, 'Автокресло Bebe Confort Opal', '<p>Автокресло с поворотным сиденьем для более продолжительного использования.</p>', '<p>Автокресло с поворотным сиденьем для более продолжительного использования. Переустановка положений происходит одним движением руки, вращением автокресла на своем основании. Сиденье подходит для двух групп: 0+ - спиной к дороге и 1 - лицом к дороге. Боковая защита Safe Side предохраняет голову малыша при боковых столкновениях. Внутренние 5-точечные ремни безопасности быстро и удобно регулируются по росту ребенка. Размеры: ширина регулируется от 40 до 50 см. Высота регулируется от 60 до 76 см. Варианты цвета: Total Black, Intense Red, Deep Blue, Brown Earth, Steel Gray, Marble Pink, Dark Olive.</p>', 'Автокресло Bebe Confort Opal', '', ''),
	(3, '', 147, 'Автокресло Bebe Confort Opal', '<p>Автокресло с поворотным сиденьем для более продолжительного использования.</p>', '<p>Автокресло с поворотным сиденьем для более продолжительного использования. Переустановка положений происходит одним движением руки, вращением автокресла на своем основании. Сиденье подходит для двух групп: 0+ - спиной к дороге и 1 - лицом к дороге. Боковая защита Safe Side предохраняет голову малыша при боковых столкновениях. Внутренние 5-точечные ремни безопасности быстро и удобно регулируются по росту ребенка. Размеры: ширина регулируется от 40 до 50 см. Высота регулируется от 60 до 76 см. Варианты цвета: Total Black, Intense Red, Deep Blue, Brown Earth, Steel Gray, Marble Pink, Dark Olive.</p>', 'Автокресло Bebe Confort Opal', '', '');
/*!40000 ALTER TABLE `s_lang_products` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_lang_variants
DROP TABLE IF EXISTS `s_lang_variants`;
CREATE TABLE IF NOT EXISTS `s_lang_variants` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `lang_id` (`lang_id`,`variant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_lang_variants: 453 rows
DELETE FROM `s_lang_variants`;
/*!40000 ALTER TABLE `s_lang_variants` DISABLE KEYS */;
INSERT INTO `s_lang_variants` (`lang_id`, `lang_label`, `variant_id`, `name`) VALUES
	(1, '', 49, ''),
	(3, '', 48, ''),
	(3, '', 47, ''),
	(3, '', 46, ''),
	(3, '', 45, ''),
	(3, '', 44, ''),
	(3, '', 43, ''),
	(3, '', 42, ''),
	(3, '', 41, ''),
	(3, '', 40, ''),
	(3, '', 39, ''),
	(3, '', 38, ''),
	(3, '', 37, ''),
	(3, '', 36, ''),
	(3, '', 35, ''),
	(3, '', 34, ''),
	(3, '', 33, ''),
	(3, '', 32, ''),
	(3, '', 31, ''),
	(3, '', 30, ''),
	(3, '', 29, ''),
	(3, '', 28, ''),
	(3, '', 27, ''),
	(3, '', 26, ''),
	(3, '', 25, ''),
	(3, '', 24, ''),
	(3, '', 23, ''),
	(3, '', 22, ''),
	(3, '', 21, ''),
	(3, '', 20, ''),
	(3, '', 19, ''),
	(3, '', 18, ''),
	(3, '', 17, ''),
	(3, '', 16, ''),
	(3, '', 15, ''),
	(3, '', 14, ''),
	(3, '', 13, ''),
	(3, '', 12, ''),
	(3, '', 11, ''),
	(3, '', 10, ''),
	(3, '', 9, ''),
	(3, '', 8, ''),
	(3, '', 7, ''),
	(3, '', 6, ''),
	(3, '', 5, ''),
	(3, '', 4, ''),
	(3, '', 3, ''),
	(3, '', 2, ''),
	(3, '', 1, ''),
	(2, '', 48, ''),
	(2, '', 47, ''),
	(2, '', 46, ''),
	(2, '', 45, ''),
	(2, '', 44, ''),
	(2, '', 43, ''),
	(2, '', 42, ''),
	(2, '', 41, ''),
	(2, '', 40, ''),
	(2, '', 39, ''),
	(2, '', 38, ''),
	(2, '', 37, ''),
	(2, '', 36, ''),
	(2, '', 35, ''),
	(2, '', 34, ''),
	(2, '', 33, ''),
	(2, '', 32, ''),
	(2, '', 31, ''),
	(2, '', 30, ''),
	(2, '', 29, ''),
	(2, '', 28, ''),
	(2, '', 27, ''),
	(2, '', 26, ''),
	(2, '', 25, ''),
	(2, '', 24, ''),
	(2, '', 23, ''),
	(2, '', 22, ''),
	(2, '', 21, ''),
	(2, '', 20, ''),
	(2, '', 19, ''),
	(2, '', 18, ''),
	(2, '', 17, ''),
	(2, '', 16, ''),
	(2, '', 15, ''),
	(2, '', 14, ''),
	(2, '', 13, ''),
	(2, '', 12, ''),
	(2, '', 11, ''),
	(2, '', 10, ''),
	(2, '', 9, ''),
	(2, '', 8, ''),
	(2, '', 7, ''),
	(2, '', 6, ''),
	(2, '', 5, ''),
	(2, '', 4, ''),
	(2, '', 3, ''),
	(2, '', 2, ''),
	(2, '', 1, ''),
	(1, '', 48, ''),
	(1, '', 47, ''),
	(1, '', 46, ''),
	(1, '', 45, ''),
	(1, '', 44, ''),
	(1, '', 43, ''),
	(1, '', 42, ''),
	(1, '', 41, ''),
	(1, '', 40, ''),
	(1, '', 39, ''),
	(1, '', 38, ''),
	(1, '', 37, ''),
	(1, '', 36, ''),
	(1, '', 35, ''),
	(1, '', 34, ''),
	(1, '', 33, ''),
	(1, '', 32, ''),
	(1, '', 31, ''),
	(1, '', 30, ''),
	(1, '', 29, ''),
	(1, '', 28, ''),
	(1, '', 27, ''),
	(1, '', 26, ''),
	(1, '', 25, ''),
	(1, '', 24, ''),
	(1, '', 23, ''),
	(1, '', 22, ''),
	(1, '', 21, ''),
	(1, '', 20, ''),
	(1, '', 19, ''),
	(1, '', 18, ''),
	(1, '', 17, ''),
	(1, '', 16, ''),
	(1, '', 15, ''),
	(1, '', 14, ''),
	(1, '', 13, ''),
	(1, '', 12, ''),
	(1, '', 11, ''),
	(1, '', 10, ''),
	(1, '', 9, ''),
	(1, '', 8, ''),
	(1, '', 7, ''),
	(1, '', 6, ''),
	(1, '', 5, ''),
	(1, '', 4, ''),
	(1, '', 3, ''),
	(1, '', 2, ''),
	(1, '', 1, ''),
	(3, '', 49, ''),
	(2, '', 49, ''),
	(2, '', 50, ''),
	(1, '', 50, ''),
	(3, '', 50, ''),
	(1, '', 51, ''),
	(2, '', 51, ''),
	(3, '', 51, ''),
	(1, '', 52, ''),
	(2, '', 52, ''),
	(3, '', 52, ''),
	(1, '', 53, ''),
	(2, '', 53, ''),
	(3, '', 53, ''),
	(1, '', 54, ''),
	(2, '', 54, ''),
	(3, '', 54, ''),
	(1, '', 55, ''),
	(2, '', 55, ''),
	(3, '', 55, ''),
	(1, '', 56, ''),
	(2, '', 56, ''),
	(3, '', 56, ''),
	(1, '', 57, ''),
	(2, '', 57, ''),
	(3, '', 57, ''),
	(1, '', 58, ''),
	(2, '', 58, ''),
	(3, '', 58, ''),
	(1, '', 59, ''),
	(2, '', 59, ''),
	(3, '', 59, ''),
	(1, '', 60, ''),
	(2, '', 60, ''),
	(3, '', 60, ''),
	(1, '', 61, ''),
	(2, '', 61, ''),
	(3, '', 61, ''),
	(1, '', 62, ''),
	(2, '', 62, ''),
	(3, '', 62, ''),
	(1, '', 63, ''),
	(2, '', 63, ''),
	(3, '', 63, ''),
	(1, '', 64, ''),
	(2, '', 64, ''),
	(3, '', 64, ''),
	(1, '', 65, ''),
	(2, '', 65, ''),
	(3, '', 65, ''),
	(1, '', 66, ''),
	(2, '', 66, ''),
	(3, '', 66, ''),
	(1, '', 67, ''),
	(2, '', 67, ''),
	(3, '', 67, ''),
	(1, '', 68, ''),
	(2, '', 68, ''),
	(3, '', 68, ''),
	(1, '', 69, ''),
	(2, '', 69, ''),
	(3, '', 69, ''),
	(1, '', 70, ''),
	(2, '', 70, ''),
	(3, '', 70, ''),
	(1, '', 71, ''),
	(2, '', 71, ''),
	(3, '', 71, ''),
	(1, '', 72, ''),
	(2, '', 72, ''),
	(3, '', 72, ''),
	(1, '', 73, ''),
	(2, '', 73, ''),
	(3, '', 73, ''),
	(1, '', 74, ''),
	(2, '', 74, ''),
	(3, '', 74, ''),
	(1, '', 75, ''),
	(2, '', 75, ''),
	(3, '', 75, ''),
	(1, '', 76, ''),
	(2, '', 76, ''),
	(3, '', 76, ''),
	(1, '', 77, ''),
	(2, '', 77, ''),
	(3, '', 77, ''),
	(1, '', 78, ''),
	(2, '', 78, ''),
	(3, '', 78, ''),
	(1, '', 79, ''),
	(2, '', 79, ''),
	(3, '', 79, ''),
	(1, '', 80, ''),
	(2, '', 80, ''),
	(3, '', 80, ''),
	(1, '', 81, ''),
	(2, '', 81, ''),
	(3, '', 81, ''),
	(1, '', 82, ''),
	(2, '', 82, ''),
	(3, '', 82, ''),
	(1, '', 83, ''),
	(2, '', 83, ''),
	(3, '', 83, ''),
	(1, '', 84, ''),
	(2, '', 84, ''),
	(3, '', 84, ''),
	(1, '', 85, ''),
	(2, '', 85, ''),
	(3, '', 85, ''),
	(1, '', 86, ''),
	(2, '', 86, ''),
	(3, '', 86, ''),
	(1, '', 87, ''),
	(2, '', 87, ''),
	(3, '', 87, ''),
	(1, '', 88, ''),
	(2, '', 88, ''),
	(3, '', 88, ''),
	(1, '', 89, ''),
	(2, '', 89, ''),
	(3, '', 89, ''),
	(1, '', 90, ''),
	(2, '', 90, ''),
	(3, '', 90, ''),
	(1, '', 91, ''),
	(2, '', 91, ''),
	(3, '', 91, ''),
	(1, '', 92, ''),
	(2, '', 92, ''),
	(3, '', 92, ''),
	(1, '', 93, ''),
	(2, '', 93, ''),
	(3, '', 93, ''),
	(1, '', 94, ''),
	(2, '', 94, ''),
	(3, '', 94, ''),
	(1, '', 95, ''),
	(2, '', 95, ''),
	(3, '', 95, ''),
	(1, '', 96, ''),
	(2, '', 96, ''),
	(3, '', 96, ''),
	(1, '', 97, ''),
	(2, '', 97, ''),
	(3, '', 97, ''),
	(1, '', 98, ''),
	(2, '', 98, ''),
	(3, '', 98, ''),
	(1, '', 99, ''),
	(2, '', 99, ''),
	(3, '', 99, ''),
	(1, '', 100, ''),
	(2, '', 100, ''),
	(3, '', 100, ''),
	(1, '', 101, ''),
	(2, '', 101, ''),
	(3, '', 101, ''),
	(1, '', 102, ''),
	(2, '', 102, ''),
	(3, '', 102, ''),
	(1, '', 103, ''),
	(2, '', 103, ''),
	(3, '', 103, ''),
	(1, '', 104, ''),
	(2, '', 104, ''),
	(3, '', 104, ''),
	(1, '', 105, ''),
	(2, '', 105, ''),
	(3, '', 105, ''),
	(1, '', 106, ''),
	(2, '', 106, ''),
	(3, '', 106, ''),
	(1, '', 107, ''),
	(2, '', 107, ''),
	(3, '', 107, ''),
	(1, '', 108, ''),
	(2, '', 108, ''),
	(3, '', 108, ''),
	(1, '', 109, ''),
	(2, '', 109, ''),
	(3, '', 109, ''),
	(1, '', 110, ''),
	(2, '', 110, ''),
	(3, '', 110, ''),
	(1, '', 111, ''),
	(2, '', 111, ''),
	(3, '', 111, ''),
	(1, '', 112, ''),
	(2, '', 112, ''),
	(3, '', 112, ''),
	(1, '', 113, ''),
	(2, '', 113, ''),
	(3, '', 113, ''),
	(1, '', 114, ''),
	(2, '', 114, ''),
	(3, '', 114, ''),
	(1, '', 115, ''),
	(2, '', 115, ''),
	(3, '', 115, ''),
	(1, '', 116, ''),
	(2, '', 116, ''),
	(3, '', 116, ''),
	(1, '', 117, ''),
	(2, '', 117, ''),
	(3, '', 117, ''),
	(1, '', 118, ''),
	(2, '', 118, ''),
	(3, '', 118, ''),
	(1, '', 119, ''),
	(2, '', 119, ''),
	(3, '', 119, ''),
	(1, '', 120, ''),
	(2, '', 120, ''),
	(3, '', 120, ''),
	(1, '', 121, ''),
	(2, '', 121, ''),
	(3, '', 121, ''),
	(1, '', 122, ''),
	(2, '', 122, ''),
	(3, '', 122, ''),
	(1, '', 123, ''),
	(2, '', 123, ''),
	(3, '', 123, ''),
	(1, '', 124, ''),
	(2, '', 124, ''),
	(3, '', 124, ''),
	(1, '', 125, ''),
	(2, '', 125, ''),
	(3, '', 125, ''),
	(1, '', 126, ''),
	(2, '', 126, ''),
	(3, '', 126, ''),
	(1, '', 127, ''),
	(2, '', 127, ''),
	(3, '', 127, ''),
	(1, '', 128, ''),
	(2, '', 128, ''),
	(3, '', 128, ''),
	(1, '', 129, ''),
	(2, '', 129, ''),
	(3, '', 129, ''),
	(1, '', 130, ''),
	(2, '', 130, ''),
	(3, '', 130, ''),
	(1, '', 131, ''),
	(2, '', 131, ''),
	(3, '', 131, ''),
	(1, '', 132, ''),
	(2, '', 132, ''),
	(3, '', 132, ''),
	(1, '', 133, ''),
	(2, '', 133, ''),
	(3, '', 133, ''),
	(1, '', 134, ''),
	(2, '', 134, ''),
	(3, '', 134, ''),
	(1, '', 135, ''),
	(2, '', 135, ''),
	(3, '', 135, ''),
	(1, '', 136, ''),
	(2, '', 136, ''),
	(3, '', 136, ''),
	(1, '', 137, ''),
	(2, '', 137, ''),
	(3, '', 137, ''),
	(1, '', 138, 'Лиловый'),
	(2, '', 138, 'Лиловый'),
	(3, '', 138, 'Лиловый'),
	(1, '', 139, 'Черный'),
	(2, '', 139, 'Черный'),
	(3, '', 139, 'Черный'),
	(1, '', 140, 'Бирюзовый'),
	(2, '', 140, 'Бирюзовый'),
	(3, '', 140, 'Бирюзовый'),
	(1, '', 141, 'Белый'),
	(2, '', 141, 'Белый'),
	(3, '', 141, 'Белый'),
	(1, '', 142, 'Черный'),
	(2, '', 142, 'Черный'),
	(3, '', 142, 'Черный'),
	(1, '', 143, 'Белый'),
	(2, '', 143, 'Белый'),
	(3, '', 143, 'Белый'),
	(1, '', 144, 'Черный'),
	(2, '', 144, 'Черный'),
	(3, '', 144, 'Черный'),
	(1, '', 145, 'Белый'),
	(2, '', 145, 'Белый'),
	(3, '', 145, 'Белый'),
	(1, '', 146, ''),
	(2, '', 146, ''),
	(3, '', 146, ''),
	(1, '', 147, ''),
	(2, '', 147, ''),
	(3, '', 147, ''),
	(1, '', 148, ''),
	(2, '', 148, ''),
	(3, '', 148, ''),
	(1, '', 149, ''),
	(2, '', 149, ''),
	(3, '', 149, ''),
	(1, '', 150, ''),
	(2, '', 150, ''),
	(3, '', 150, ''),
	(1, '', 151, ''),
	(2, '', 151, ''),
	(3, '', 151, '');
/*!40000 ALTER TABLE `s_lang_variants` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_menu
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE IF NOT EXISTS `s_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_menu: 2 rows
DELETE FROM `s_menu`;
/*!40000 ALTER TABLE `s_menu` DISABLE KEYS */;
INSERT INTO `s_menu` (`id`, `name`, `position`) VALUES
	(1, 'Основное меню', 1),
	(2, 'Другие страницы', 2);
/*!40000 ALTER TABLE `s_menu` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_options
DROP TABLE IF EXISTS `s_options`;
CREATE TABLE IF NOT EXISTS `s_options` (
  `product_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(1024) NOT NULL,
  `translit` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`,`product_id`,`feature_id`),
  KEY `value` (`value`(333)),
  KEY `product_id` (`product_id`),
  KEY `feature_id` (`feature_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_options: 27 rows
DELETE FROM `s_options`;
/*!40000 ALTER TABLE `s_options` DISABLE KEYS */;
INSERT INTO `s_options` (`product_id`, `feature_id`, `lang_id`, `value`, `translit`) VALUES
	(143, 3, 1, '12 Мп', '12mp'),
	(144, 1, 1, 'От 3 до 6 лет', 'ot3do6let'),
	(144, 2, 1, 'Пластмасса. ткань', 'plastmassatkan'),
	(144, 3, 1, 'Возможна отдельная установка', 'vozmozhnaotdelnayaustanovka'),
	(145, 3, 1, 'Возможна отдельная установка', 'vozmozhnaotdelnayaustanovka'),
	(146, 1, 1, 'От рождения', 'otrozhdeniya'),
	(146, 2, 1, 'Пластмасса. ткань', 'plastmassatkan'),
	(146, 3, 1, 'Отсутствует', 'otsutstvuet'),
	(147, 3, 1, 'Отсутствует', 'otsutstvuet'),
	(147, 2, 1, 'Ткань', 'tkan'),
	(145, 1, 1, 'От 3 до 6 лет', 'ot3do6let'),
	(145, 2, 1, 'Пластмасса. ткань', 'plastmassatkan'),
	(142, 1, 1, 'От 3 до 6 лет', 'ot3do6let'),
	(142, 2, 1, 'Пластмасса. ткань', 'plastmassatkan'),
	(142, 3, 1, 'Отсутствует', 'otsutstvuet'),
	(143, 1, 1, 'От рождения', 'otrozhdeniya'),
	(143, 2, 1, 'Пластмасса', 'plastmassa'),
	(147, 1, 1, 'От 3 до 6 лет', 'ot3do6let'),
	(147, 1, 2, '3-6 years old', '36yearsold'),
	(147, 2, 2, 'Cloth', 'cloth'),
	(147, 3, 2, 'no', 'no'),
	(146, 1, 2, 'From birth', 'frombirth'),
	(146, 2, 2, 'Plastic. Cloth', 'plasticcloth'),
	(146, 3, 2, 'no', 'no'),
	(145, 1, 2, '3-6 years old', '36yearsold'),
	(145, 2, 2, 'Plastic. Cloth', 'plasticcloth'),
	(145, 3, 2, 'Ability to separate installation', 'abilitytoseparateinstallation');
/*!40000 ALTER TABLE `s_options` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_orders
DROP TABLE IF EXISTS `s_orders`;
CREATE TABLE IF NOT EXISTS `s_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method_id` int(11) DEFAULT NULL,
  `paid` int(1) NOT NULL DEFAULT '0',
  `payment_date` datetime NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `payment_details` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` varchar(1024) NOT NULL,
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `coupon_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(255) NOT NULL,
  `separate_delivery` int(1) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `login` (`user_id`),
  KEY `written_off` (`closed`),
  KEY `date` (`date`),
  KEY `status` (`status`),
  KEY `code` (`url`),
  KEY `payment_status` (`paid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_orders: 3 rows
DELETE FROM `s_orders`;
/*!40000 ALTER TABLE `s_orders` DISABLE KEYS */;
INSERT INTO `s_orders` (`id`, `delivery_id`, `delivery_price`, `payment_method_id`, `paid`, `payment_date`, `closed`, `date`, `user_id`, `name`, `address`, `phone`, `email`, `comment`, `status`, `url`, `payment_details`, `ip`, `total_price`, `note`, `discount`, `coupon_discount`, `coupon_code`, `separate_delivery`, `modified`, `lang_id`) VALUES
	(1, 1, 260.00, 2, 0, '0000-00-00 00:00:00', 0, '2015-11-16 16:27:51', 0, 'Виталий Иванов', 'Москва, ул. Космонавта Волкова, 14', '+7(911)111-22-33', 'ivanov@okay-cms.com', 'Доставка на вечер', 0, '444075c1dbaa86a4fb526b3f056cdfeb', '', '178.215.175.49', 1258.40, '', 0.00, 111.15, 'OKAYCMS', 0, '2015-11-16 14:27:59', 1),
	(2, 2, 0.00, NULL, 0, '0000-00-00 00:00:00', 0, '2015-11-19 12:58:08', 0, 'Shut', '', '', 'shut.dp.ua@online.ua', '', 3, 'a4865512f0eb146677c0ada96704a6d4', '', '178.215.175.49', 498.55, '', 0.00, 0.00, '', 0, '2015-11-19 16:47:11', 2),
	(3, 2, 0.00, NULL, 0, '0000-00-00 00:00:00', 0, '2015-11-19 16:46:56', 0, 'Shut', '', '', 'shut.dp.ua@online.ua', '', 0, '91b97b8fe3a8ece6346632035258bcc9', '', '178.215.175.49', 482.95, '', 0.00, 0.00, '', 0, '2015-11-19 16:46:56', 1);
/*!40000 ALTER TABLE `s_orders` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_orders_labels
DROP TABLE IF EXISTS `s_orders_labels`;
CREATE TABLE IF NOT EXISTS `s_orders_labels` (
  `order_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`label_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_orders_labels: 0 rows
DELETE FROM `s_orders_labels`;
/*!40000 ALTER TABLE `s_orders_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_orders_labels` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_pages
DROP TABLE IF EXISTS `s_pages`;
CREATE TABLE IF NOT EXISTS `s_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `body` longtext NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `header` varchar(1024) NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_num` (`position`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_pages: 8 rows
DELETE FROM `s_pages`;
/*!40000 ALTER TABLE `s_pages` DISABLE KEYS */;
INSERT INTO `s_pages` (`id`, `url`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `menu_id`, `position`, `visible`, `header`, `last_modify`) VALUES
	(3, 'dostavka', 'Доставка', 'Доставка', 'Доставка', 'Доставка', '<h2>Курьерская доставка по&nbsp;Москве</h2><p>Курьерская доставка осуществляется на следующий день после оформления заказа<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>если товар есть в&nbsp;наличии. Курьерская доставка осуществляется в&nbsp;пределах Томска и&nbsp;Северска ежедневно с&nbsp;10.00 до&nbsp;21.00. Заказ на&nbsp;сумму свыше 300 рублей доставляется бесплатно. <br /><br />Стоимость бесплатной доставки раcсчитывается от&nbsp;суммы заказа с&nbsp;учтенной скидкой. В&nbsp;случае если сумма заказа после применения скидки менее 300р<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>осуществляется платная доставка. <br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</p><h2>Самовывоз</h2><p>Удобный<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>бесплатный и быстрый способ получения заказа.<br />Адрес офиса: Москва<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>ул. Арбат<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>1/3<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>офис 419.</p><h2>Доставка с&nbsp;помощью предприятия<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo;</h2><p>Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo; в&nbsp;Вашем городе. Для получения необходимо предъявить паспорт и&nbsp;номер грузовой декларации<span style="margin-right: 0.3em;"> </span><span style="margin-left: -0.3em;">(</span>сообщит наш менеджер после отправки). Посылку желательно получить в&nbsp;течение 24 часов с&nbsp;момента прихода груза<span style="margin-right: -0.2em;">,</span><span style="margin-left: 0.2em;"> </span>иначе компания<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.</p><h2>Наложенным платежом</h2><p>При доставке заказа наложенным платежом с помощью<span style="margin-right: 0.44em;"> </span><span style="margin-left: -0.44em;">&laquo;</span>Почты России&raquo;, вы&nbsp;сможете оплатить заказ непосредственно в&nbsp;момент получения товаров.</p>', 1, 3, 1, 'Способы доставки', '2015-11-26 17:54:54'),
	(2, 'oplata', 'Оплата', 'Оплата', 'Оплата', 'Оплата', '<h2><span>Наличными курьеру</span></h2><p>Вы можете оплатить заказ курьеру в рублях непосредственно в момент доставки. Курьерская доставка осуществляется по Москве на следующий день после принятия заказа.</p><h2>Яндекс.Деньги</h2><p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет</span>.</p><h2>Банковская карта</h2><p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p><h2>Через терминал</h2><p><span>Оплатите наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</span></p><h2>Со счета мобильного телефона</h2><p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги.</span></p><h2>Webmoney</h2><p>После оформления заказа вы сможете перейти на сайт webmoney для оплаты заказа, где сможете оплатить заказ в автоматическом режиме, а так же проверить наш сертификат продавца.</p><h2>Квитанция</h2><p><span>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</span></p><h2>Робокасса</h2><p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p><h2>PayPal</h2><p><span>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</span></p><h2>Оплата через Интеркассу</h2><p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p><h2>Оплата картой через Liqpay.com</h2><p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p><h2>Оплата через Pay2Pay</h2><p><span>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</span></p><h2>Оплатить через QIWI</h2><p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p><h2><span style="font-size: 20px;">Наличными в офисе Автолюкса</span></h2><p>При доставке заказа системой Автолюкс, вы сможете оплатить заказ в их офисе непосредственно в момент получения товаров.</p>', 1, 4, 1, 'Способы оплаты', '2015-11-26 17:54:54'),
	(1, '', 'Главная', 'Хиты продаж', 'Этот магазин является демонстрацией скрипта интернет-магазина  Okay . Все материалы на этом сайте присутствуют исключительно в демострационных целях.', 'Хиты продаж', '<p>Этот магазин является демонстрацией скрипта интернет-магазина <a href="http://okay-cms.com">Okay</a>. Все материалы на этом сайте присутствуют исключительно в демострационных целях.</p>', 1, 1, 1, 'О магазине', '2015-11-26 17:54:54'),
	(4, 'blog', 'Блог', 'Блог', '', 'Блог', '', 1, 2, 1, 'Блог', '2015-11-26 17:54:54'),
	(5, '404', '', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 2, 5, 1, 'Страница не найдена', '2015-11-16 13:29:43'),
	(6, 'contact', 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p>Москва, ул. Арбатецкая,&nbsp; дом 2c3.</p><p><a href="https://maps.yandex.ua/213/moscow/?um=vCDuUwJDQl85sAd1Lkm9gIjgoKMho6oE&amp;ll=37.645371%2C55.735740&amp;spn=0.010085%2C0.003845&amp;z=13&amp;l=map&amp;ncrnd=909&amp;text=%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%2C%20%D1%83%D0%BB.%20%D0%90%D1%80%D0%B1%D0%B0%D1%82%D0%B5%D1%86%D0%BA%D0%B0%D1%8F%2C%20%20%D0%B4%D0%BE%D0%BC%202c3.&amp;sll=37.632916%2C55.729438&amp;sspn=0.163422%2C0.049113&amp;ol=geo&amp;ouri=ymapsbm1%3A%2F%2Fgeo%3Fll%3D37.661%252C55.727%26spn%3D0.001%252C0.001%26text%3D%25D0%25A0%25D0%25BE%25D1%2581%25D1%2581%25D0%25B8%25D1%258F%252C%2520%25D0%259C%25D0%25BE%25D1%2581%25D0%25BA%25D0%25B2%25D0%25B0%252C%2520%25D0%2590%25D1%2580%25D0%25B1%25D0%25B0%25D1%2582%25D0%25B5%25D1%2586%25D0%25BA%25D0%25B0%25D1%258F%2520%25D1%2583%25D0%25BB%25D0%25B8%25D1%2586%25D0%25B0%252C%25202%25D1%25813">Посмотреть на&nbsp;Яндекс.Картах</a></p><p>Телефон 777-15-51</p>', 1, 8, 1, 'Контакты', '2015-11-27 10:36:43'),
	(7, 'all-products', 'Все товары', 'Все товары', '', 'Все товары', '', 2, 7, 1, 'Все товары', '2015-11-18 14:32:22'),
	(8, 'brands', 'Бренды', 'Бренды', '', 'Бренды', '', 1, 6, 1, 'Бренды', '2015-11-26 17:54:54');
/*!40000 ALTER TABLE `s_pages` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_payment_methods
DROP TABLE IF EXISTS `s_payment_methods`;
CREATE TABLE IF NOT EXISTS `s_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `currency_id` float NOT NULL,
  `settings` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_payment_methods: 12 rows
DELETE FROM `s_payment_methods`;
/*!40000 ALTER TABLE `s_payment_methods` DISABLE KEYS */;
INSERT INTO `s_payment_methods` (`id`, `module`, `name`, `description`, `currency_id`, `settings`, `enabled`, `position`) VALUES
	(1, 'Receipt', 'Квитанция', '<p>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</p>', 2, 'a:10:{s:9:"recipient";s:65:"ООО "Великолепный интернет-магазин"";s:3:"inn";s:5:"12345";s:7:"account";s:6:"223456";s:4:"bank";s:18:"Альфабанк";s:3:"bik";s:6:"556677";s:21:"correspondent_account";s:11:"77777755555";s:8:"banknote";s:7:"руб.";s:5:"pense";s:7:"коп.";s:5:"purse";s:2:"ru";s:10:"secret_key";s:0:"";}', 1, 6),
	(2, 'Webmoney', 'Webmoney wmz', '<p><span></span></p><div><p>Оплата через платежную систему&nbsp;<a href="http://www.webmoney.ru">WebMoney</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату. Сразу после оформления заказа вы будете перенаправлены на специальную страницу системы WebMoney, где сможете произвести платеж в титульных знаках WMZ.</p></div><p>&nbsp;</p>', 3, 'a:10:{s:9:"recipient";s:0:"";s:3:"inn";s:0:"";s:7:"account";s:0:"";s:4:"bank";s:0:"";s:3:"bik";s:0:"";s:21:"correspondent_account";s:0:"";s:8:"banknote";s:7:"руб.";s:5:"pense";s:0:"";s:5:"purse";s:13:"Z111111111111";s:10:"secret_key";s:13:"testsecretkey";}', 1, 5),
	(3, 'Robokassa', 'Робокасса', '<p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p>', 3, 'a:4:{s:5:"login";s:0:"";s:9:"password1";s:0:"";s:9:"password2";s:0:"";s:8:"language";s:2:"ru";}', 1, 7),
	(4, 'Paypal', 'PayPal', '<p>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</p>', 1, 'a:2:{s:8:"business";s:0:"";s:4:"mode";s:7:"sandbox";}', 1, 8),
	(5, 'Interkassa', 'Оплата через Интеркассу', '<p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p>', 2, 'a:2:{s:18:"interkassa_shop_id";s:3:"123";s:21:"interkassa_secret_key";s:3:"123";}', 1, 9),
	(6, 'Liqpay', 'Оплата картой через Liqpay.com', '<p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p>', 2, 'a:5:{s:9:"liqpay_id";s:3:"123";s:11:"liqpay_sign";s:3:"123";s:12:"pay_way_card";s:1:"1";s:14:"pay_way_liqpay";s:1:"1";s:15:"pay_way_delayed";s:1:"1";}', 1, 10),
	(7, 'Pay2Pay', 'Оплата через Pay2Pay', '<p>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</p>', 2, 'a:5:{s:18:"pay2pay_merchantid";s:3:"123";s:14:"pay2pay_secret";s:3:"123";s:14:"pay2pay_hidden";s:3:"123";s:15:"pay2pay_paymode";s:3:"123";s:16:"pay2pay_testmode";s:1:"1";}', 1, 11),
	(8, 'Qiwi', 'Оплатить через QIWI', '<p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p>', 2, 'a:2:{s:10:"qiwi_login";s:3:"123";s:13:"qiwi_password";s:3:"123";}', 1, 12),
	(9, 'YandexMoney', 'Яндекс.Деньги ru', '<p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет.</span></p>', 2, 'a:5:{s:13:"yandex_shopid";s:2:"90";s:11:"yandex_scid";s:5:"50938";s:15:"yandex_password";s:20:"rVOs4ZDVkfkqgpRlyXqn";s:18:"yandex_paymenttype";s:2:"PC";s:15:"yandex_testmode";s:1:"1";}', 1, 1),
	(10, 'YandexMoney', 'Банковская карта', '<p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p>', 2, 'a:5:{s:13:"yandex_shopid";s:2:"90";s:11:"yandex_scid";s:5:"50938";s:15:"yandex_password";s:20:"rVOs4ZDVkfkqgpRlyXqn";s:18:"yandex_paymenttype";s:2:"AC";s:15:"yandex_testmode";s:1:"1";}', 1, 2),
	(11, 'YandexMoney', 'Через терминал', '<p>Оплатита наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</p>', 2, 'a:5:{s:13:"yandex_shopid";s:2:"90";s:11:"yandex_scid";s:5:"50938";s:15:"yandex_password";s:20:"rVOs4ZDVkfkqgpRlyXqn";s:18:"yandex_paymenttype";s:2:"GP";s:15:"yandex_testmode";s:1:"1";}', 1, 3),
	(12, 'YandexMoney', 'Со счета мобильного телефона', '<p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги</span></p>', 2, 'a:5:{s:13:"yandex_shopid";s:2:"90";s:11:"yandex_scid";s:5:"50938";s:15:"yandex_password";s:20:"rVOs4ZDVkfkqgpRlyXqn";s:18:"yandex_paymenttype";s:2:"MC";s:15:"yandex_testmode";s:1:"1";}', 1, 4);
/*!40000 ALTER TABLE `s_payment_methods` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_products
DROP TABLE IF EXISTS `s_products`;
CREATE TABLE IF NOT EXISTS `s_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `brand_id` int(11) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `annotation` text NOT NULL,
  `body` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `featured` tinyint(1) DEFAULT NULL,
  `external_id` varchar(36) NOT NULL,
  `rating` float(3,1) DEFAULT '0.0',
  `votes` int(11) DEFAULT '0',
  `special` varchar(255) DEFAULT NULL,
  `last_modify` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `brand_id` (`brand_id`),
  KEY `visible` (`visible`),
  KEY `position` (`position`),
  KEY `external_id` (`external_id`),
  KEY `hit` (`featured`),
  KEY `name` (`name`(333))
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_products: 147 rows
DELETE FROM `s_products`;
/*!40000 ALTER TABLE `s_products` DISABLE KEYS */;
INSERT INTO `s_products` (`id`, `url`, `brand_id`, `name`, `annotation`, `body`, `visible`, `position`, `meta_title`, `meta_keywords`, `meta_description`, `created`, `featured`, `external_id`, `rating`, `votes`, `special`, `last_modify`) VALUES
	(1, 'blinnitsa-ariete-baby-181', NULL, 'Блинница Ariete Baby 181', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', '<p>Мощность 900 Вт. Индикатор температуры. Контейнер для теста. Готовым блинчикам можно придать форму Микки Мауса специальной формочкой.</p>', 1, 1, 'Блинница Ariete Baby 181', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(2, 'apparat-dlya-ponchikov-daewoo-di-8102', NULL, 'Аппарат для пончиков Daewoo DI 8102', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы.</p>', '<p>Аппарат предназначен для приготовления пончиков традиционной (кольцеобразной) формы. Индикатор включения и готовности. Антипригарное покрытие. Регулировка температуры.</p>', 1, 2, 'Аппарат для пончиков Daewoo DI 8102', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(3, 'gladilnaya-doska-metalnova-domino-plus', NULL, 'Гладильная доска Metalnova Domino Plus', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений.</p>', '<p>Компактная, устойчивая гладильная доска с регулировкой высоты гладильной платформы до восьми положений. Имеет твердую гладильную платформу из огнеупорного материала, на которую одевается влагоустойчивый и жаропрочный чехол. Ножки выполнены из хромированного металла. Рабочая поверхность: 114x36 см. Подставка для утюга. Вес:7 кг.</p>', 1, 3, 'Гладильная доска Metalnova Domino Plus', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(4, 'lampy-aro-golden-s', NULL, 'Лампы АРО Голден S', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме.</p>', '<p>Лампы АРО Голден S. Отличное решение для создания непринужденной и уютной обстановки в Вашем доме. Размеры: Большой лампы (L): Высота - 143 см; Диаметр - 29 см Средней лампы (M): Высота - 115 см; Диаметр - 29 см Маленькой лампы (S): Высота - 83 см; Диаметр - 26 см Страна-производитель: Индонезия</p>', 1, 4, 'Лампы АРО Голден S', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(5, 'detektor-provodki-bosch-pdo-multi', 1, 'Детектор проводки Bosch PDO Multi', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom».</p>', '<p>Цифровой детектор для обнаружения и локализации проводки, металлов (включая цветные) и деревянных внутренних конструкций. Функция «Zoom». Дисплей с высоким разрешением. Однозначное запрещение/разрешение сверления с помощью светодиодного индикатора. Автоматическая калибровка.</p>', 1, 5, 'Детектор проводки Bosch PDO Multi', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(6, 'opticheskij-nivelir-bosch-gol-20-d-professional', 1, 'Оптический нивелир Bosch GOL 20 D Professional', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м.</p>', '<p>Оптический нивелир с точность нивелирования 3 мм на 30 м. Рабочий диапазон: до 60 м. Оптимально подходит для использования вне помещений благодаря прочному корпусу с защитой от пыли и брызг IP 54. Светосильный объектив для чёткого захвата цели. Пентапризма для удобства считывания показаний сферического уровня. Коллиматор для грубого выравнивания. Вертикальное изображение. Большая кнопка фокусировки для простого выравнивания.Бесконечный микрометренный привод (измерение в гонах) с проскальзывающей муфтой.</p>', 1, 6, 'Оптический нивелир Bosch GOL 20 D Professional', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(7, 'kraskoraspylitel-bosch-pfs-105-e', 1, 'Краскораспылитель Bosch PFS 105 E', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов.</p>', '<p>Системы тонкого распыления с электронной регулировкой расхода воздуха для обработки больших объектов. Потребляемая мощность 350 Вт. Система плавной регулировки расхода краски. Сопло для распыления краски с 3 положениями. Рукоятка с мягкой накладкой. Длина шланга: 3.4 м.</p>', 1, 7, 'Краскораспылитель Bosch PFS 105 E', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(8, 'vysechnye-nozhnitsy-bosch-gna-16-sds-professional', 1, 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '<p>Изящная, узкая конструкция для оптимального удобства в обращении.</p>', '<p>Изящная, узкая конструкция для оптимального удобства в обращении. Используется для внутренних вырезов. Свободная работа по разметке и шаблону. Фиксируемая матрица для прямых прорезов, замена пуансона и матрицы без инструмента (система SDS). Легкосменные режущие инструменты.</p>', 1, 8, 'Высечные ножницы Bosch GNA 16 (SDS) Professional', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(9, 'perforator-aeg-pn-11-e', NULL, 'Перфоратор AEG PN 11 E', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса.</p>', '<p>Эффективен при работе массивной оснасткой. Бурение отверстий большого диаметра на большую глубину доступно только машинам этого класса. Высокая энергия удара позволяет без труда и быстро разрушать конструкции из бетона. Анти вибрационная система AVS. Прорезиненная накладка Softgrip на рукоятках. Сила удара 27.0 Дж. Комплектуется кейсом.</p>', 1, 9, 'Перфоратор AEG PN 11 E', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(10, 'voip-telefon-linksys-spa962', 2, 'VoIP-телефон Linksys SPA962', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых.</p>', '<p>VoIP-телефон обладает широким набором функциональных возможностей, как телефонных, так и сетевых. Стильный дизайн и высокая функциональность аппарата делают его использование чрезвычайно эффективным в гибкой среде IP-телефонии, IP УАТС или крупных IP call-центрах. Комплектация аппарата включает в себя: поддержку 6 активных каналов, dual switched Ethernet ports, поддержку 802.3 c питанием от свитча (PoE -Power of the Ethernet, это означает, что телефон питается от сети Ethernet), цветной дисплей с высоким разрешением, динамик, и 2.5 мм разъем для гарнитуры. Каждый канал телефонного аппарата может быть настроен на работу либо с несколькими различными номерами, либо с одним, но многоканальным номером.</p>', 1, 10, 'VoIP-телефон Linksys SPA962', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(11, 'mobilnyj-telefon-porsche-design-p9521', 3, 'Мобильный телефон Porsche Design P\'9521', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны.</p>', '<p>Корпус изготовлен из алюминия. Верхнюю крышку можно поворачивать в разные стороны. Сеть: GSM / EDGE (850 / 900 / 1800 / 1900 МГц). Камера: 3.2 мегапикселя, автофокус, вспышка. Дисплей: AMOLED, 2.2 дюйма, 320 х 240 точек. USB 1.1. Bluetooth 1.2, A2DP, AVRCP. Считыватель отпечатков пальцев.</p>', 1, 11, 'Мобильный телефон Porsche Design P\'9521', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(12, 'avtomobilnaya-gromkaya-svyaz-nokia-ck-300', 4, 'Автомобильная громкая связь Nokia CK-300', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки.</p>', '<p>Беспроводной автомобильный комплект для совершения вызовов и прослушивания музыки. Встроенная функция DSP. Индикатор питания на внешнем устройстве ввода. Активация голосовых команд (требует поддержки телефоном). Переадресация вызова с телефона на автомобильный комплект. Повтор последнего набранного номера. Отключение микрофона. Воспроизведение МР3-файлов из памяти мобильного устройства или совместимого музыкального плеера. Подключение к автомагнитоле для лучшего качества звука (требуется магнитола с разъемом AUX и адаптер кабеля).</p>', 1, 12, 'Автомобильная громкая связь Nokia CK-300', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(13, 'radiostantsiya-jj-connect-he-400', 5, 'Радиостанция JJ-Connect HE-400', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км.</p>', '<p>Радиостанция обеспечивает надежную связь на расстоянии до 12 км. Работает на частотах 433.075 - 434.775. Яркий и информативный дисплей с подсветкой, отображает всю необходимую информацию, предусмотрен также тональный вызов, индикатор заряда батарей и регулировка громкости. В качестве дополнительной полезной функции имеется встроенный электронный компас, что пригодится в походе, в лесу, на охоте или рыбалке. Цвет - черно-серебристый.</p>', 1, 13, 'Радиостанция JJ-Connect HE-400', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(14, 'bluetooth-stereo-garnitura-besprovodnaya-jabra-bt650-halo', 6, 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80</p>', '<p>Основные параметры Тип крепления наушников: оголовье Вес (гр): 80 Способ питания: собственный аккумулятор Дальность действия (макс.): 10 м Время работы в режиме ожидания до (ч): 8 Время работы в режиме разговора до (м): 480 Способ зарядки аккумулятора: от внешнего USB-порта, Сетевое зарядное устройство 220В Время зарядки: 120 мин Передача данных: Bluetooth Версия Bluetooth протокола: 2.0 Поддерживаемые профили Bluetooth: A2DP, AVRCP, EDR, Handsfree, Headset Поддержка Bluetooth стерео: ДаФункциональность Функция Multipoint: Да Функции гарнитуры: автоматическая подстройка громкости, ответ/окончание разговора, повтор последнего номера, шумоподавление, эхоподавление Индикатор разряда аккумулятора: Да Световой индикатор вызова: ДаКомплектация - Гарнитура Bluetooth стерео Jabra BT650 Halo - Чехол - Кабель USB - 3.5 мм кабель - Краткое руководство пользователя - Зарядное устройство</p>', 1, 14, 'Bluetooth stereo гарнитура беспроводная Jabra BT650 Halo', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(15, 'mikrosotovyj-telefon-dect-panasonic-kx-tca275', 7, 'Микросотовый телефон DECT Panasonic KX-TCA275', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона.</p>', '<p>Микросотовый телефон DECT позволяет сотрудникам перемещаться по всей территории офиса, не прекращая разговора, и обеспечивают при этом полную функциональность стационарного системного телефона. Каждый микросотовый телефон DECT может быть зарегистрирован на нескольких АТС, что позволяет использовать один и тот же номер в разных офисах. Когда Вы находитесь в другом офисе, трубка автоматически регистрируется в местной DECT сети, и Вы можете принимать звонки на свой обычный внутренний номер. Цветной графический ЖК-дисплей с подсветкой и с поддержкой кириллицы. Работа с АТС Panasonic серий KX-TDA/TDE/NCP. Поддержка CTI приложений (доступность данной функции зависит от версии KX-TDA0141/0158). Поддержка функций АТС. Разъём для подключения гарнитуры. Полифонический звонок (10 мелодий). Клавиатура с подсветкой и символами кириллицы. Спикерфон. Программируемые кнопоки. Виброзвонок. Режим на совещание. Записная книжка на 200 записей. Размер: 123х45х23 мм. Вес: 115 г.</p>', 1, 15, 'Микросотовый телефон DECT Panasonic KX-TCA275', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(16, 'radiotelefon-dect-siemens-gigaset-sl785', 8, 'Радиотелефон DECT Siemens Gigaset SL785', '<p>Стильный и удобный телефон в металлическом корпусе.</p>', '<p>Стильный и удобный телефон в металлическом корпусе. Встроенный автоответчик с записью на 45 минут. Гарнитура с Bluetooh® и дуплексный режим hands-free. Большой цветной TFT-дисплей с инновационным интерфейсом. Технология ECO Mode Plus с режимом нулевой передачи. Адресная книга на 500 записей. Возможность обмена данными из адресной книги через Bluetooth® с мобильными телефонами. Индикация номера. Синхронизация с компьютером через Bluethooth®/USB. Возможна регистрация до 6 трубок.</p>', 1, 16, 'Радиотелефон DECT Siemens Gigaset SL785', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(17, 'mikser-vitesse-vs-240', NULL, 'Миксер Vitesse VS-240', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p>', '<p>Основное</p><p>Тип: Ручной</p><p>Мощность (Вт): 300</p><p>Число скоростей: 3</p><p>Возможности использования</p><p>Турборежим: Нет</p><p>Импульсный режим: Да</p><p>Вращение чаши: Нет</p><p>Насадки</p><p>Количество насадок: 2</p><p>Универсальный измельчитель: Нет</p><p>Венчик для взбивания: Да</p><p>Насадка для приготовления пюре: Нет</p><p>Крюки для замешивания теста: Да</p><p>Насадка-блендер: Нет</p><p>Конструкция</p><p>Материал корпуса: Пластик</p><p>Приспособление для хранения насадок: Нет</p><p>Кнопка отсоединения насадок: Да</p><p>Прорезиненная ручка: Нет</p><p>Защитная крышка на чашу: Нет</p><p>Приспособление для намотки шнура: Да</p>', 1, 17, 'Миксер Vitesse VS-240', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(18, 'gorenje-bo87kr-oven', 0, 'Духовой шкаф Gorenje BO87KR', '<p>Независимый встраиваемый духовой шкаф шириной 60 см и объемом 64 литра. Электронный сенсорный программный модуль с температурным зондом. Светодиодная подсветка MoodLite с выбором 7 цветов.</p>', '<p>Независимый встраиваемый духовой шкаф шириной 60 см и объемом 64 литра. Электронный сенсорный программный модуль с температурным зондом. Светодиодная подсветка MoodLite с выбором 7 цветов. Часы. Будильник. 8 программ, установленные производителем по типу продукта. Возможность создания 3 собственных программ. Звуковой сигнал. Сплошное застекление дверцы духовки. Откидные верхние нагреватели. Блокировка от детей. Температурный сенсор. Защитное отключение.</p>', 1, 18, 'Духовой шкаф Gorenje BO87KR', '', '', '2015-11-16 11:17:40', NULL, '', 0.0, 0, NULL, '2015-11-16 12:32:08'),
	(19, 'stroller-lonex-classic-retro', 0, 'Универсальная коляска LONEX Classic Retro', '<p>Универсальная коляска с люлькой из натуральной лозы для детей до 6 месяцев.</p>', '<p>Универсальная коляска с люлькой из натуральной лозы для детей до 6 месяцев. Коляска состоит из съемной люльки и прогулочного блока. Ресорная амортизация на 4-х колесах. Колеса на выбор: диаметр 40 см - резиновые повышенной износостойкости не надувные, диаметр 36 см - надувные. Диски хромированные. Прогулочный блок устанавливается на шасси в двух направлениях - лицом к себе или от себя. Спинка регулируется в 4-х положениях до горизонтального. Имеются пятиточечные ремни безопасности с мягкими накладками и ограничительный бампер. Регулируемая подножка. В комплект входит утепленный чехол на ножки, корзина для покупок, сумка для мамы, дождевик. Большой выбор цветов.</p>', 1, 19, 'Универсальная коляска LONEX Classic Retro', '', '', '2015-11-16 11:17:40', NULL, '', 0.0, 0, NULL, '2015-11-16 12:26:46'),
	(20, 'motorola-mbp-35-remote-wireless-video-baby-monitor', 0, 'Видеоняня Motorola MBP 35', '<p>Цифровая видео-радионяня с большим 3.5 дюймовым LCD дисплеем. Режим ночного видения. Режим сна для сохранения заряда.</p>', '<p>Цифровая видео-радионяня с большим 3.5 дюймовым LCD дисплеем. Режим ночного видения. Режим сна для сохранения заряда. Большая зона приема с предупреждением о выходе из зоны приема. Позволяет присматривать за ребенком на расстоянии до 150 метров. Чистый звук с индикатором громкости. Цифровой термометр. Высокочувствительный микрофон. Связь в обе стороны. Пять колыбельных. Заряжаемый аккумулятор./p></p>', 1, 20, 'Видеоняня Motorola MBP 35', '', '', '2015-11-16 11:17:40', NULL, '', 0.0, 0, NULL, '2015-11-16 11:48:43'),
	(21, 'electric-fireplace-dimplex-mozart', 0, 'Электрокамин Dimplex Mozart', '<p>Электрический очаг с порталами в сборе эффектом пламени Optiflame. Регулируемая мощность обогрева 1-2 кВт. Возможность работы без обогрева. Цвет портала - белый.</p>', '<p>Электрический очаг с порталами в сборе эффектом пламени Optiflame. Регулируемая мощность обогрева 1-2 кВт. Возможность работы без обогрева. Цвет портала - белый.</p>', 1, 21, 'Электрокамин Dimplex Mozart', '', '', '2015-11-16 11:17:40', NULL, '', 0.0, 0, NULL, '2015-11-16 11:36:01'),
	(22, 'ironing-board-gimi-temper-drop', 0, 'Гладильная доска Gimi Temper Drop', '<p>Гладильная доска имеет специальное место для утюга. Ножки из крашеной стальной трубки (диаметром 22 и 32 мм) овальной в сечении, что даёт дополнительную устойчивость.</p>', '<p>Гладильная доска имеет специальное место для утюга. Ножки из крашеной стальной трубки (диаметром 22 и 32 мм) овальной в сечении, что даёт дополнительную устойчивость. Держатель для электрического кабеля от утюга. Чехол гладильной доски из 100 % хлопка с подкладкой из мягкого нетканого материала. Поверхность гладильной доски выполнена в виде сетки, что позволяет свободно пропускать пар от утюга. Форма стола скошенная для удобного разглаживания белья в труднодоступных местах. Гладильная доска легко складывается, занимает мало места в сложенном состоянии. Большая рабочая поверхность гладильной доски позволяет гладить не только рубашки, мужские брюки, но и постельное бельё. Высота гладильной доски может свободно регулироваться. Устойчива и прочна.</p>', 1, 22, 'Гладильная доска Gimi Temper Drop', '', '', '2015-11-16 11:17:40', NULL, '', 0.0, 0, NULL, '2015-11-16 11:31:54'),
	(23, 'benzopila-tsepnaya-stihl-ms-660', NULL, 'Бензопила цепная Stihl MS 660', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна.</p>', '<p>Очень мощная пила, расчитана на экстремальные нагрузки, крайне прочна. Превосходно подходит для эффективной рубки толстомерного леса. Боковое устройство натяжения цепи, компенсатор, замок для бака, не требующий инструмента, декомпрессионный клапан.</p>', 1, 23, 'Бензопила цепная Stihl MS 660', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(24, 'elektrorubanok-metabo-ho-e-0983', NULL, 'Электрорубанок Metabo Ho Е 0983', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки.</p>', '<p>Упор направляющей для наклонного строгания под углом до 45 градусов, поворотный патрубок для выталкивания стружки. Пониженное число оборотов для уменьшение шума на холостом ходу, полноволновая электроника для равномерного строгания, надежный прочный рубанок с длинной подошвой для широкого спектра применения. Твердосплавные ножи, легкая замена ножа благодаря кассетной системе, бесступенчатая регулировка глубины строгания и глубины фальца, плоско-фрезерованная подошва рубанка из алюминиевого литья под давлением.</p>', 1, 24, 'Электрорубанок Metabo Ho Е 0983', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(25, 'radiotelefon-dect-panasonic-kx-tg8286', NULL, 'Радиотелефон Dect Panasonic KX-TG8286', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м.</p>', '<p>Комплектация база, две трубки. Радиус действия в помещении / на открытой местности 50 / 300 м. Цифровой автоответчик, на 40 минут. Память последних 10 набранных номеров. Полифонические мелодии 20. Автодозвон, будильник, блокировка клавиатуры от случайного нажатия, разъем для гарнитуры. Ночной режим, избирательный звонок, тип дополнительных трубок KX-TGA828. Дисплей на базовом блоке, на трубке (цветной). Подсветка кнопок на трубке. Возможность настенного крепления. Наборное поле на базе. АОН/Caller ID, журнал на 50 номеров. Громкая связь (спикерфон). Внутренняя связь (интерком) между несколькими трубками. Конференц-связь (между базой, трубкой/трубками и внешним абонентом).</p>', 1, 25, 'Радиотелефон Dect Panasonic KX-TG8286', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(26, 'mobilnyj-telefon-htc-sensation-xe', NULL, 'Мобильный телефон HTC Sensation XE', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов.</p>', '<p>Смартфон, выполненный в форм-факторе моноблок оснащен двухядерным процессором 1.5 ГГц и ОС Android 2.3. 4.3 дюймовый SLCD дисплей с разрешением 540 х 960 пикселей способный отображать до 16 млн. цветов. Встроенная память телефона 4 Гб. Слот для карт памяти формата microSD, microSDНС. Интерфейсы: Вluetooth, USB, Wi-Fi. Встроенный приемник GPS. Встроена 8-ми мегапиксельная камера с автофокусом, светодиодной вспышкой и функцией записи видео. Аудио разъем 3.5 мм. Аккумулятор емкостью 1730 мАч обеспечивает работу до 9 часов в режиме разговора, до 540 часов в режиме ожидания.</p>', 1, 26, 'Мобильный телефон HTC Sensation XE', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(27, 'kofevarka-espresso-kenwood-es-471', NULL, 'Кофеварка эспрессо KENWOOD ES 471', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p>', '<p>Кофеварка эспрессо</p><p>Цвет Красный</p><p>Регулировка Кол-ва чашек, Крепости кофе</p><p>Индикатор уровня воды</p><p>Резервуар для воды Съёмный</p><p>Давление (бар) 15</p><p>Объём резервуара д/воды 1.5 л</p><p>Потребляемая мощность 1050 Вт</p><p>Дополнительные параметры:</p><p>Используемый кофемолотый / чалды</p><p>Нагреватель TermoGen.</p><p>Система подогрева чашек.</p><p>Подходит для использования фильтров ESE.</p><p>Профессиональный наконечник для вспенивания молока.</p><p>Возможность приготовления капуччино ручное приготовление</p><p>Индикатор контроля температуры.</p><p>Регулятор пара с покрытием SureGrip.</p><p>Съёмный лоток для капель.</p><p>Отсек для хранения шнура.</p>', 1, 27, 'Кофеварка эспрессо KENWOOD ES 471', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(28, 'toster-krups-fem2-toastexpert', NULL, 'Тостер KRUPS FEM2 ToastExpert', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', '<p>Технические характеристикиМощность 1100 ВтКоличество отделений 2Количество тостов 2Тип управления механическоеРегулировка степени поджаривания есть, 8Кнопка отмены естьОсобенностиПоддон для крошек есть</p>', 1, 28, 'Тостер KRUPS FEM2 ToastExpert', '', '', '2015-11-16 11:17:40', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:40'),
	(29, 'sushilka-dlya-ovoschej-i-fruktov-energy-en-660', NULL, 'Сушилка для овощей и фруктов Energy EN-660', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества.</p>', '<p>Прибор для бережной сушки овощей, фруктов, грибов мощностью 450 Вт. Позволяет сохранять вкусовые качества продуктов, витамины и активные вещества. 4 съемных поддона, принудительная вентиляция, регулируемый термостат (60°- 75° С). Корпус изготовлен из пластика ABS, что позволяет защитить продукты от разрушительного воздействия солнечного света.</p>', 1, 29, 'Сушилка для овощей и фруктов Energy EN-660', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(30, 'elektricheskij-chajnik-stadler-form-sfk808', NULL, 'Электрический чайник Stadler Form SFK.808', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище.</p>', '<p>Электрочайник емкостью 1.8 литра в стеклянном корпусе с закрытым нагревательным элементом. Стеклянная колба Duran Schott и голубая подсветка превратят процесс закипания воды в волшебное зрелище. Мощность 2200 Вт обеспечит быстрое закипание, а центральный контакт - поворот на 360 градусов и удобную эксплуатацию. Чайник оснащен съемным фильтром-сеткой, для безопасного использования предусмотрена блокировка крышки. Основание, ручка и крышка чайника изготовлены из прочного пластика. Электрический шнур убирается в специальный отсек.</p>', 1, 30, 'Электрический чайник Stadler Form SFK.808', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(31, 'sendvichnitsa-eta-3151', NULL, 'Сэндвичница Eta 3151', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница.</p>', '<p>Сэндвичница мощностью 650 Вт со сменными панелями три в одной - сэндвичница, контактный гриль и вафельница. Панели с качественным противопригарным покрытием просто и быстро заменяются, температура автоматически регулируется термостатом. Световая сигнализация для удобства приготовления (красный световой индикатор загорается при подключении к сети, зеленый - при достижении необходимой температуры). Для безопасного использования корпус в теплоизоляционной обшивке, ручки прибора с фиксатором также изолированы и устойчивы к нагреву. Цвет корпуса - черный со вставками из нержавеющей стали.</p>', 1, 31, 'Сэндвичница Eta 3151', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(32, 'parovarka-bork-fs-ecp-98100-bk', NULL, 'Пароварка BORK FS ECP 98100 BK', '<p>Общие характеристики</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p>', '<p>Общие характеристики:</p><p>Количество ярусов 3</p><p>Тип управления электронное</p><p>Максимальная потребляемая мощность 1000 Вт</p><p>Индикация включения есть</p><p>Функции:</p><p>Автоприготовление есть, рецептов - 6</p><p>Термостат есть</p><p>Отсрочка старта есть</p><p>Конструкция</p><p>Материал корпуса пластик</p><p>Материал паровых корзин прозрачный пластик</p><p>Объем резервуара для воды 1.5 л</p><p>Чаша для риса есть, на 1.9 л</p><p>Индикатор уровня воды есть</p><p>Съемные решетки есть</p><p>Дисплей есть</p><p>Долив воды во время приготовления есть</p><p>Особенности:</p><p>Габариты (ШхВхГ) 35x41x25 см</p><p>Вес 2.68 кг</p><p>Длина сетевого шнура 1 м</p>', 1, 32, 'Пароварка BORK FS ECP 98100 BK', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(33, 'detskaya-krovatka-transformer-gandylyan-tereza', NULL, 'Детская кроватка-трансформер Гандылян Тереза', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального</p>', '<p>Кроватка-трансформер совмещает себе функции кроватки для новорожденных и кровати для дошкольников. Боковое ограждение опускается или снимается. Комод может использоваться в качестве пеленального столика. Он оснащен тремя объемными выдвижными ящиками с открытыми полочками для мелочей. Ложе может устанавливать на одном из двух уровнях. Два выдвижных ящика для белья. Цвет: натуральный, вишня, орех, махагон, белый, слоновая кость. Размеры кроватки: 67 x 129 х 101 см. Размеры комода: 49.5 x 70 x 70.5 см.</p>', 1, 33, 'Детская кроватка-трансформер Гандылян Тереза', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(34, 'termometr-dlya-vannoj-i-pomeschenij-philips-avent-sch55020', NULL, 'Термометр для ванной и помещений Philips AVENT SCH55020', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p>', '<p>Точное измерение температуры. Не тонет в воде.</p><p>С помощью цифрового термометра для ванны и помещений Philips AVENT удобно контролировать температуру как в детской, так и в ванной. Кроме того, исследования доказали абсолютную безопасность данного прибора, который можно использовать как игрушку для ребенка в ванной.</p><p>Быстрый и надежный способ измерения температуры</p><p>• Для измерения температуры воды в ванне и воздуха в спальне.</p><p>Безопасен для игры</p><p>• Соответствует стандартам для игрушек и стандартам безопасности</p><p>• Не тонет в воде</p><p>Технические характеристики</p><p>Диапазон температур для работы 10 - 45 °C</p><p>Точность +/-1 °C</p><p>Питание</p><p>Совместим с EN 71, ASTM F963-96a Technical</p><p>Тип элемента питания LR44</p><p>Количество батарей 2</p><p>Съемный/ сменный Да</p><p>Аксессуары</p><p>Руководство пользователя Да</p><p>Страна-бренд: Голландия</p><p>Производитель: Польша, Китай, Турция, Индия, Венгрия, Филипины</p>', 1, 34, 'Термометр для ванной и помещений Philips AVENT SCH55020', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(35, 'hodunki-chicco-dance-79091', NULL, 'Ходунки Chicco Dance 79091', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера.</p>', '<p>Xодунки с огромным количеством световых и звуковых эффектов и подключением mp3-плеера. Три звуковых режима: 5 веселых мелодий, 5 звуков инструментов, 5 звукоподражательных функций. Высокая спинка стульчика для поддержания спины ребенка в ровном состоянии. 6 фиксаторов, которые останавливают ходунки при столкновении с порогом. Сиденье имеет 3 положения высоты. Съемный чехол легко стирается. Размер: 79х66х47 см.</p>', 1, 35, 'Ходунки Chicco Dance 79091', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(36, 'pech-dlya-bani-termofor-kalina', NULL, 'Печь для бани Термофор Калина', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения.</p>', '<p>Дровяная печь-камин премиум-класса. Большой светопрозрачный экран, расширяющийся топливный канал и широкий топливник позволяют комфортно обозревать пламя под разными углами зрения. Оригинальный лабиринтный газоход обеспечивает мощный скоростной нагрев парилки объемом до 24 кубических метров и качественный прогрев каменной закладки массой около 100 килограммов. Встроенный теплообменник позволяет нагревать воду в выносном баке, размещенном в смежном помещении.</p>', 1, 36, 'Печь для бани Термофор Калина', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(37, 'shezlong-canadian-camper-68014', NULL, 'Шезлонг Canadian Camper 68014', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p>', '<p>СС-68014 - одно из самых лучших кресел для отдыха за городом на лоне природы.</p><p>Регулируемые по высоте подушка-подголовник кресла и патентованная система наклона спинки, позволит подобрать наиболее удобное для вас положение.</p><p>Сетчатая структура стойкого к ультрафиолетовому излучению материал кресла – HD TEXTILENE - обеспечит максимальный комфорт даже в летнюю жару. Также этот материал почти не впитывает влагу и моментально сохнет.</p><p>Пластмас, из которого сделаны подлокотники кресла, не только придает «шарм» креслу, но и обеспечивает приятные тактильные ощущения. Прочный стальной каркас кресла выдерживает нагрузку до 120 кг.</p><p>Меняется положение при помощи тела человека , в подлокотниках есть два фиксатора для наиболее удобного принятия положения.</p><p>Транспортировочное положение , положение для хранения , минимум занимаемой площади</p>', 1, 37, 'Шезлонг Canadian Camper 68014', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(38, 'svetilnik-na-zerkalo-k-26-marta-tyulpan', NULL, 'Светильник на зеркало K-26 MARTA тюльпан', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', '<p>Цвет: хром 230V E14 Max 40WТорговая марка: MARTA Производство: Польша</p>', 1, 38, 'Светильник на зеркало K-26 MARTA тюльпан', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(39, 'betonomeshalka-power-tec-bwe180140', NULL, 'Бетономешалка Power Tec BWE180/140', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', '<p>Бетономешалка с загрузкой и выгрузкой с обеих сторон. Выгрузка на высоте тележки. Ёмкость барабана: 180 л. Рабочая ёмкость: 140 л. Производительность: 1,1 м3/ч. Мощность двигателя: 0,55-0,75 кВт. Вес: 73 кг.</p>', 1, 39, 'Бетономешалка Power Tec BWE180/140', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(40, 'pylesos-promyshlennyj-fa-sa-domino-78-inox', NULL, 'Пылесос промышленный FA-SA DOMINO 78 inox', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки</p>', '<p>2 тихих двухстадийных двигателя (Domino), металлические профессиональные закрывающие замки, поплавковый клапан, полностью снимаемая верхняя часть, защита от статического электричества, силовой кабель 7 м, легко снимается основа (во время очистки фильтра), всасывающая система с байпасным охлаждением, ударопрочная тележка устойчивая к воздействию химикатов и высоких температур.</p>', 1, 40, 'Пылесос промышленный FA-SA DOMINO 78 inox', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(41, 'benzorez-stihl-ts-700', NULL, 'Бензорез Stihl TS 700', '<p>Ручной бензорез для пиления металла, бетона и асфальта.</p>', '<p>Ручной бензорез для пиления металла, бетона и асфальта. Мощность: 5 кВт. Трехступенчатая фильтрующая система. Система ElastoStart+ и антивибрационная система. Полуавтоматическое натяжение ремня.</p>', 1, 41, 'Бензорез Stihl TS 700', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(42, 'svarochnyj-generator-europower-ep-200x2', NULL, 'Сварочный генератор EUROPOWER EP-200X2', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390.</p>', '<p>Сварочный генератор производится на базе четырехтактного бензинового двигателя с воздушным охлаждением HONDA GX390. Предназначен для использования в качестве автономного источника питания и для ручной дуговой сварки постоянным током. Возможность работы в двух режимах - сварочного аппарата и электростанции. Максимальный сварочный ток: 200 A. Номинальный сварочный ток: 140 A. Мощность однофазного (230В) тока, кВт: 4. Диаметр электрода: до 4 мм (включительно). Расход: 2.7 л/ч. Объем бака: 6.5 л. Стартер: ручной. Уровень шума: 74 дБ.</p>', 1, 42, 'Сварочный генератор EUROPOWER EP-200X2', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(43, 'ruchnaya-tsirkulyarnaya-pila-metabo-ks-54', NULL, 'Ручная циркулярная пила Metabo KS 54', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением.</p>', '<p>Поворотный штуцер для подсоединения к внешней системе отсоса опилок. Корпус механизма привода, выполненный из алюминия методом литья под давлением. Механизм изменения угла наклона пропила в пределах 0 - 45 градусов. Механический тормоз, защита от перегрузки. Новый тип более быстроходных тонких пильных дисков, хорошо видна линия резания, эргономический дизайн.</p>', 1, 43, 'Ручная циркулярная пила Metabo KS 54', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(44, 'mayatnikovyj-lobzik-s-elektronikoj-metabo-steb-135', NULL, 'Маятниковый лобзик с электроникой Metabo STEB 135', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм.</p>', '<p>Энергичный распил в деревянной заготовке толщиной до 135 мм. Легкая и быстрая замена пильного диска, низко расположенный опорный ролик пильного полотна, быстрая фиксация направляющей панели для наклонного распила. Оптимальное удобство обращения благодаря эргономичному дизайну, прорезиненная рукоятка-скоба, устройство воздуходува, обеспечивающее просматриваемость области резания.</p>', 1, 44, 'Маятниковый лобзик с электроникой Metabo STEB 135', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(45, 'vibroplita-splitstoun-vs-244', NULL, 'Виброплита Сплитстоун VS-244', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка.</p>', '<p>Виброплита предназначена для уплотнения асфальтобетонной смеси, грунта, щебня, песка. Идеальна при ремонте дорог, благоустройстве территории, устройстве фундаментов и инженерных сетей. Производительность виброплиты, м2/час 140. Эксплуатационная масса: 90 кг.</p>', 1, 45, 'Виброплита Сплитстоун VS-244', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(46, 'avtomobilnaya-gromkaya-svyaz-neon-bthf009dsp', NULL, 'Автомобильная громкая связь NEON BTHF009Dsp', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова.</p>', '<p>Комплект беспроводной громкой связи NEON поддерживает функции Определитель номера, Голосовой набор, Повторный набор последнего номера, Отложенный звонок  и Переключение вызова. Переключение между функциями осуществляется при помощи многофункциональной клавиши, размещенной на лицевой панели. Версия BLUETOOTH: 2.0. Поддержка профилей: Наушники и Handsfree. Рабочее расстояние: 10 м (класс 2). Экран LCD отображает номер звонящего из 12 цифр. Шумоподавления и устранение эха.</p>', 1, 46, 'Автомобильная громкая связь NEON BTHF009Dsp', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(47, 'radiotelefon-dect-siemens-gigaset-s675', NULL, 'Радиотелефон DECT Siemens Gigaset S675', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями.</p>', '<p>Телефон с цветным дисплеем и 15 полифоническими мелодиями. Конференц-связь, автодозвон, автоответчик на 40 минут с дистанционным управлением с другого телефона, блокировка клавиатуры, идентификатор на 30 номеров, ответ поднятием трубки с базы, разъём для гарнитуры, уведомление о пропущенных вызовах с помощью SMS, экономичный режим, SMS. Стандарты DECT/GAP. Радиус действия в помещении до 50 метров, на открытой местности до 300. Возможно подключение до 6 трубок к одной базе и 4 баз к одной трубке.</p>', 1, 47, 'Радиотелефон DECT Siemens Gigaset S675', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(48, 'provodnoj-telefon-texet-tx-223-kabinet', NULL, 'Проводной телефон TeXet TX-223 Кабинет', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', '<p>Исполнение корпуса из натурального дерева. Регулировка уровня громкости вызывного акустического сигнала.</p>', 1, 48, 'Проводной телефон TeXet TX-223 Кабинет', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(49, 'mobilnyj-telefon-lg-kg810', NULL, 'Мобильный телефон LG KG810', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену.</p>', '<p>Качественный материал корпуса, выбор черного цвета, сдержанность, знающая себе цену. Этот имиджевый аксессуар обладает достаточной мультимедийной мощью. Сенсорные клавиши. TFT дисплей, отображающий 262000 цветов. 64-х голосная полифония. Встроенная 1.3 мегапиксельная камера. Прием и отправка SMS, EMS, MMS, E-mail. МР3/AAC/MP4 плеер. FM-радио. Bluetooth.</p>', 1, 49, 'Мобильный телефон LG KG810', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(50, 'tsifrovoj-sistemnyj-telefon-lg-nortel-ldp-7016d', NULL, 'Цифровой системный телефон LG-Nortel LDP-7016D', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', '<p>Системный телефон с 16 программируемыми клавишами со световой индикацией. Трехстрочный информационный дисплей. 3 контекстные клавиши. Клавиши быстрой навигации. Спикерфон (громкая связь). Поддержка дочерних модулей. Световой индикатор вызова./p></p>', 1, 50, 'Цифровой системный телефон LG-Nortel LDP-7016D', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(51, 'tsifrovaya-sistemnaya-konsol-panasonic-kx-t7440', NULL, 'Цифровая системная консоль PANASONIC KX-T7440', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', '<p>Консоль для цифровых системных телефонов Panasonic включает 66 программируемых кнопок прямого выбора абонента, 66 кнопок поля индикаторов занятости линии.</p>', 1, 51, 'Цифровая системная консоль PANASONIC KX-T7440', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(52, 'radiostantsiya-motorola-tlkr-t4', NULL, 'Радиостанция Motorola TLKR-T4', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий).</p>', '<p>Простая, компактная и легкая рация дальность до 6 км (в зависимости от рельефа местности и условий). Бесплатные звонки. 8 каналов. Сканирование/мониторинг. ЖК-дисплей. Клипса на ремень и петля для ношения. Блокировка клавиатуры. Индикатор заряда батареи. Мощность передатчика 0.5 Вт. 1 мелодия вызова. Звуки клавиатуры.</p>', 1, 52, 'Радиостанция Motorola TLKR-T4', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(53, 'bluetooth-garnitura-plantronics-voyager-835', NULL, 'Bluetooth гарнитура Plantronics Voyager 835', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях.</p>', '<p>Гарнитура сочетает в себе сразу три технологии шумоподавления, которые в совокупности обеспечивают идеальную ясность и естественное звучание голоса в обоих направлениях. Технология Multipoint позволяет использовать данную гарнитуру для работы сразу с двумя Bluetooth устройствами. Работает до 5 часов в режиме разговора и до 7 дней в режиме ожидания. В комплекте с гарнитурой поставляется зарядное устройство от сети, а также уникальное автомобильное зарядное устройство.</p>', 1, 53, 'Bluetooth гарнитура Plantronics Voyager 835', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(54, 'gazovaya-plita-ardo-d662-rns', NULL, 'Газовая плита Ardo D662 RNS', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p>', '<p>Тип плиты газовая</p><p>Тип духовки газовая</p><p>Цвет чёрный</p><p>Высота, cм 85</p><p>Ширина, см 60</p><p>Глубина, cм 60</p><p>Количество конфорок (газ+электро) 4+0</p><p>Газ-контроль конфорок есть</p><p>Газ-контроль духовки и гриля есть</p><p>Тип решеток чугун</p><p>Гриль газовый</p><p>Вертел есть</p><p>Электроподжиг автоматический</p><p>Подсветка есть</p><p>Термостат есть</p><p>Двойное стекло дверей духовки есть</p><p>Объем духовки, л 56</p>', 1, 54, 'Газовая плита Ardo D662 RNS', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(55, 'aerogril-ves-797', NULL, 'Аэрогриль VES 797', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p>', '<p>Аэрогриль ves 797 – компактный и функциональный прибор с регулируемым термостатом. Объем чаши аэрогриля механического ves 797 составляет 12 литров, при использовании расширительного кольца он увеличивается до 17 литров. Аэрогриль оборудован устройством защиты от включения и автоматически отключается при поднятии ручки на 90 градусов.</p><p>Содержит галогенный нагревательный элемент, сокращающий срок приготовления пищи в несколько раз. Аэрогриль ves 797 имеет корпус, изготовленный из термостойкого стекла. База аэрогриля – с металлическим основанием. Таймер аэрогриля рассчитан на 60 минут.</p><p>Мощность аэрогриля ves 797 составляет 1350 Вт. В нем предусмотрена функция автоматической чистки и мойки. Гарантийный срок службы аэрогриля ves 797 – 1 год.</p><p>Набор аксессуаров аэрогриля: расширительное кольцо, двойная решетка, подставка под крышку, пароварка.</p>', 1, 55, 'Аэрогриль VES 797', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(56, 'posudomoechnaya-mashina-siemens-sn-26-t-552-eu', NULL, 'Посудомоечная машина Siemens SN 26 T 552 EU', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч.</p>', '<p>Посудомоечная машина с электронным управлением на 13 комплектов посуды. 6 программ. Cенсорные клавиши панели управления. Акустический сигнал окончания хода программы. Tаймер запуска с установкой от 1 до 24 ч. Электронные индикаторы наличия соли и ополаскивателя. Переставляемый по высоте верхний короб. Датчик загрузки. Автоматическая функция «3 в 1». Электроника регенерирования. Tехнология попеременной подачи воды. Cистема защиты стеклянной посуды. Tеплообменник. Mеханическая блокировка от детей. Защита от протечек. Проточный водонагреватель, совмещенный с помпой. Цвет: серебристый.</p>', 1, 56, 'Посудомоечная машина Siemens SN 26 T 552 EU', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(57, 'komplekt-detskogo-postelnogo-belya-v-krovatku-gribok-teremok-art758', NULL, 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p>', '<p>Комплект в кроватку Грибок-теремок арт.758</p><p>-Бортик (по всему периметру кроватки, высота 50см)</p><p>-Балдахин (нежная вуаль, 170x300см)</p><p>-Наволочка</p><p>-Пододеяльник</p><p>-Простыня</p><p>-Одеяло (110x140см)</p><p>-Подушка (40x60см)</p><p>Ткань:</p><p>Высококачественный поплин, 100% хлопок безупречной выделки</p><p>Наполнитель:</p><p>Бортик: Поролон + Синтепон</p><p>Одеяло и подушка: Шерсть</p><p>Декор:</p><p>Вышивка на бортике и пододеяльнике</p><p>в комплект входит стойка к балдахину</p><p>отделка ручной работы шитьём, мягкими бантами и вышитой аппликацией</p><p>деликатные швы, рассчитанные на прикосновение к нежной коже ребёнка бельё полностью безопасно и гипоаллергенно</p><p>Страна происхождения - Россия</p>', 1, 57, 'Комплект детского постельного белья в кроватку Грибок-теремок арт.758', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(58, 'ryukzak-kenguru-globex-kenga', NULL, 'Рюкзак-кенгуру GLOBEX КЕНГА', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед.</p>', '<p>Предназначен для детей от 2-х до 8 месяцев (до 7,7 кг). Рюкзачок имеет два положения для переноски младенца: лицом к маме и лицом вперед. Жесткое основание подголовника поддержит и защитит головку ребенка. Благодаря специальным застежкам рюкзачок растет вместе с ребенком. Широкие ремни с прокладкой. Упаковка - прочная яркая коробка с ручкой.</p>', 1, 58, 'Рюкзак-кенгуру GLOBEX КЕНГА', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(59, 'stol-skladnoj-i-4-stula-tramp-trf-005', NULL, 'Стол складной и 4 стула Tramp TRF-005', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p>', '<p>Набор складной мебели для комфортного застолья на природе: стол увеличенного размера и четыре табурета с сиденьями из из полиэстера. Комплект собирается в компактный чемоданчик.</p><p>Размер стола: Дл124 х Шр62 х Вс70 см</p><p>Материал стола: алюминий</p><p>Материал столешницы: МДФ</p><p>Толщина трубки: 1 мм, диаметр: 25 мм</p><p>Стул: алюминий, полиэстер</p><p>Размеры стула: 36 х 28 х 38,5 см</p><p>Цвет стула: черный</p><p>Допустимая нагрузка на стол: 30 кг</p><p>Допустимая нагрузка на табуретку: 150 кг</p><p>Вес набора мебели: 7 кг</p><p>Оптимальный размер столешницы и дополнительные крепления с обратной стороны увеличивают прочность стола. Комплект собирается в чемоданчик. Имеет дополнительный чехол для транспортировки, что позволит избежать появления лишних царапин и дольше сохранит приглядный вид мебели.</p>', 1, 59, 'Стол складной и 4 стула Tramp TRF-005', '', '', '2015-11-16 11:17:41', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:41'),
	(60, 'akkumulyatornyj-stepler-bosch-ptk-36-v', NULL, 'Аккумуляторный степлер Bosch PTK 3,6 V', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В.</p>', '<p>Забивание гвоздей и скоб длиной до 14 мм с мощным аккумулятором 3,6 В. PowerLight - при помощи встроенного светодиода рабочая поверхность заготовки будет всегда освещённой. Безопасное остриё - выполнение удара только в рабочем положении. Фронтальное расположение острия степлера для крепления близко к кромке, механическая установка силы удара с помощью регулировочного колёсика в зависимости от обрабатываемого материала. Эргономичная рукоятка с мягкой накладкой для неутомительной работы. Указатель количества скоб.</p>', 1, 60, 'Аккумуляторный степлер Bosch PTK 3,6 V', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(61, 'stanok-dlya-rezki-plitki-plitkorez-diold-sp-12-250', NULL, 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения.</p>', '<p>Станок для резки плитки СП-1,2-250 предназначен для прямой и наклонной резки плиток, сделанных из керамического и подобного материла и относится к изделиям бытового назначения. В качестве рабочего инструмента используется алмазный отрезной диск с наружным диаметром 250 мм, посадочным диаметром 25,4 мм и шириной 2,4 мм. Станок предназначен для эксплуатации в районах умеренного климата, исполнения У, при температуре окружающего воздуха от плюс 35°С до минус 15°С. Режим работы станка повторно-кратковременный - 15/5мин. (15 мин. - работа, 5 мин. - пауза) Мощность - 1200 Вт.</p>', 1, 61, 'Станок для резки плитки (плиткорез) Диолд СП-1,2-250', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(62, 'elektricheskij-frezer-bosch-gof-900-ce', NULL, 'Электрический фрезер Bosch GOF 900 CE', '<p>Электрический фрезер мощностью 900 Вт.</p>', '<p>Электрический фрезер мощностью 900 Вт. Константная электроника для обеспечения постоянной производительности. Точная регулировка глубины захода с точностью до 1/10 мм с функцией погружения. Регулировка числа оборотов. Система SDS.</p>', 1, 62, 'Электрический фрезер Bosch GOF 900 CE', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(63, 'provodnaya-stereo-garnitura-sony-ericsson-hpm-20', NULL, 'Проводная стерео гарнитура Sony Ericsson HPM-20', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', '<p>С оригинальными стерео наушниками и микрофоном достигается максимальная свобода движения во время разговора и прослушивания музыки.</p>', 1, 63, 'Проводная стерео гарнитура Sony Ericsson HPM-20', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(64, 'holodilnik-ardo-go-2210-bh-homepub', NULL, 'Холодильник ARDO GO 2210 BH HOMEPUB', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p>', '<p>Общий объем 316л.</p><p>Полезный объем холодильной камеры 218л</p><p>Полезный объем морозильной камеры 83л</p><p>Дозатор для пива:</p><p>Дверцы помимо обычных полок содержат специальные ниши, в которых находится система подачи пива.</p><p>Причем это не уменьшает полезное пространство для хранения продуктов!</p><p>Потребление электроэнергии (кВт/24ч) 0,70</p><p>Электронный модуль управления</p><p>1 компрессор</p><p>Автоматическое размораживание холодильного отделения</p><p>Ручное размораживание морозильного отделения</p><p>Антибактериальное покрытие</p><p>Поддержание температуры в случае отключения (ч) 18ч.</p><p>Кнопка быстрого замораживания</p><p>Индикатор критической температуры</p><p>Полки из сверхпрочного закаленного стекла</p><p>Полка для бутылок</p><p>Класс A+</p><p>Inox - нержавеющая сталь</p><p>Размеры в см:В185,5хШ60хГ67,2</p><p>Как обеспечить себя баллонами для Home Pub?</p><p>1. Вы покупаете Home Pub с заправленным баллоном. Home Pub, баллон и газ – продаются, как отдельные позиции. Кроме того, в любой момент Вы можете приобрести дополнительно заправленные баллоны.</p><p>2. Когда баллон (а это приблизительно 30 бочонков по 5л) у Вас опустошится, обратитесь в магазин, который торгует продукцией ARDO по предварительному заказу;</p><p>3. Вы сдаете пустой баллон, получаете полный и оплачиваете только заправку. Фирма-производитель оставляет за собой право на внесение изменений в конструкцию и комплектацию приборов.</p>', 1, 64, 'Холодильник ARDO GO 2210 BH HOMEPUB', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(65, 'vytyazhka-elica-onice-ix--noce-f90', NULL, 'Вытяжка Elica ONICE IX + NOCE F90', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', '<p>Настенная вытяжка шириной 90 см. Потребляемая мощность 200 Вт. Освещение – галогенные лампы, 2 х 20 Вт. Управление: механические кнопки. Угольный фильтр. Отделка: Stainless steel + Cherry, Stainless steel + wood.</p>', 1, 65, 'Вытяжка Elica ONICE IX + NOCE F90', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(66, 'mikrovolnovaya-pech-bork-w531', NULL, 'Микроволновая печь BORK W531', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление.</p>', '<p>Микроволновая печь с теновым грилем и конвекцией объемом 32 литра.</p><p>Электронное управление. 4 комбинированных режима.</p><p>Автоматическое приготовление и разогрев.</p><p>Программы разморозки по весу и времени.</p><p>Возможность приготовления на вертеле.</p><p>Режим последовательного приготовления.</p><p>Функция быстрого и отложенного старта.</p><p>Режим экспресс приготовления для работы при максимальной мощности за 30 секунд.</p><p>Блокировка от детей.</p><p>Внутреннее покрытие из нержавеющей стали.</p><p>Диаметр поворотного стола: 31.50 см.</p><p>LCD-дисплей.</p><p>Часы.</p>', 1, 66, 'Микроволновая печь BORK W531', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(67, 'pogruzhnoj-blender-philips-hr1377', NULL, 'Погружной блендер Philips HR1377', '<p>Основные характеристики</p><p>Тип погружной</p><p>Мощность 700 Вт</p>', '<p>Основные характеристики:</p><p>Тип погружной</p><p>Мощность 700 Вт</p><p>Управление механическое, число скоростей: 5, плавная регулировка скорости</p><p>Особенности:</p><p>Материал корпуса металл</p><p>Материал погружной части металл</p><p>Отверстие для ингредиентов есть</p><p>Сетевой шнур длина 1.30 м</p><p>Функциональные возможности:</p><p>Дополнительные режимы турборежим</p><p>Измельчитель есть, объем 1.5 л</p><p>Мерный стакан есть, объем 1 л</p><p>Венчик для взбивания есть</p><p>Дополнительная информация диск для нарезки тонкими/средними ломтиками; диск для шинковки/нарезки</p>', 1, 67, 'Погружной блендер Philips HR1377', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(68, 'manezh-krovat-capella-c1', NULL, 'Манеж-кровать Capella C1', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать.</p>', '<p>Двухуровневый просторный манеж-кровать с пеленальным столиком. Вибромузыкальный блок успокоит ребенка и поможет ему заснуть. Быстрый и безопасный механизм складывания-раскладывания манежа. Колесные фиксаторы позволяют свободно передвигать манеж-кровать. Кольца-держатели, с помощью которых ребенок сможет подтянуться и встать на ножки. Боковой лаз на молнии. Центральная ножка манежа обеспечивает дополнительную устойчивость.</p>', 1, 68, 'Манеж-кровать Capella C1', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(69, 'detskaya-krovatka-krasnaya-zvezda-elizaveta-s-550', NULL, 'Детская кроватка Красная Звезда Елизавета С-550', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик.</p>', '<p>Детская кроватка с ложем увеличенного размера 140х70см, превращается в красивый уютный диванчик. Вместительный ящик для детских принадлежностей. Две съёмные планки. Силиконовая накладка на боковине. 4 съемных колеса со стопорами. Материал - массив березы. Отсутствуют острые углы. Древесина обработана экологически чистым лаком. Размер кровати: 156х77х113 см.</p>', 1, 69, 'Детская кроватка Красная Звезда Елизавета С-550', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(70, 'stulchik-dlya-kormleniya-peg-perego-tatamia', NULL, 'Стульчик для кормления Peg-Perego Tatamia', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения.</p>', '<p>Стульчик Tatamia от 0 до 36 месяцев. Двойной поднос в двойне гигиеничнее. Можно мыть в посудомоечной машине. Угол наклона стула регулируется, имеет 4 положения. Пятиточечные ремни безопасности. Имеет 9 положений сидения по высоте. Может использоваться как шезлонг или расслабляющее кресло-качалка. Цвета: Cacao, Fiordilatte, Paloma, Arancio.</p>', 1, 70, 'Стульчик для кормления Peg-Perego Tatamia', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(71, 'direktorskoe-kreslo-vip-klassa-status-extra', NULL, 'Директорское кресло VIP класса Status Extra', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса.</p>', '<p>Директорское кресло VIP класса Status Extra для руководителя,дома и офиса. СТАТУС дерево натуральная кожа 100% люкс LE-16/K цвет бренди Кожаное кресло VIP класса для руководителя,дома и офиса. Широкое мягкое сиденье и высокая спинка с механизмом трансформации. Удобные мягкие кожаные подлокотники . Элегантная металическая крестовина с деревянными накладками,точенный из масива чехол пневмо-целиндра. Кресло комплектуется механизмом ТРАНСФОРМАЦИИ который обеспечивает разложение кресла практически в горизонтальное положение. Обивка кресла натуральная кожа высшего качества LUX 100%. выделки Extra - мягкая и эластичная.</p>', 1, 71, 'Директорское кресло VIP класса Status Extra', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(72, 'kolyaska-hauck-condor', NULL, 'Коляска Hauck Condor', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком.</p>', '<p>Прогулочная коляска. Регулируемый наклон спинки. Регулируемая подножка. Солнцезащитный козырек со смотровым окошком. Пятиточечный ремень безопасности. Съемный поручень. Тканевые части коляски можно стирать. Дождевик. Вес 10 кг.</p>', 1, 72, 'Коляска Hauck Condor', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(73, 'avtokreslo-maxi-cosi-priori-sps', NULL, 'Автокресло Maxi-Cosi Priori SPS', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг).</p>', '<p>Модель детского автокресла первой возрастной группы. Оно разработано для малышей, только начинающих ходить, и дошкольников (возраст от 9 месяцев до 4-х лет, вес 9-18 кг). Автокресло Priori легко устанавливается и закрепляется ремнями безопасности с креплением в 2-х или 3-х точках на любом пассажирском месте во всех типах автомобилей. Съемные чехлы можно стирать. Цвета: Bjorn, Enzo, Indigo, Prado, Solar, Stratos, Florian, Horizon, Roseline.</p>', 1, 73, 'Автокресло Maxi-Cosi Priori SPS', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(74, 'stulchik-dlya-kormleniya-cam-smarty-s332-c27', NULL, 'Стульчик для кормления Cam Smarty S332-C27', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', '<p>Универсальный стульчик для детей от 6 до 48 месяцев. Крепится к сиденью или спинке обычного стула при помощи ремней. Регулируется по высоте от 0 до 18 см. Съемный столик. Легко транспортируется. Моется при помощи губки. Пятиточечные ремни безопасности.</p>', 1, 74, 'Стульчик для кормления Cam Smarty S332-C27', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(75, 'motobur-stihl-bt-360', NULL, 'Мотобур STIHL BT 360', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', '<p>Мощный мотобур, обслуживаемый двумя рабочими, мощностью 3 кВт, со складной рамой для переноски. Предназначается для выполнения разнообразных задач от бурения простых скважин в земле, до взятия образцов почвы.</p>', 1, 75, 'Мотобур STIHL BT 360', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(76, 'gajkovert-bosch-gds-12-v', NULL, 'Гайковерт Bosch GDS 12 V', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара</p>', '<p>Аккумуляторный ударный гайковерт, высокий крутящий момент и сила удара, компактная и эргономичная форма, встроенная подсветка с 3 светодиодами для освещения рабочей зоны, металлический корпус редуктора для высочайшей точности и долгого срока службы, 2 аккумулятора NiMH емкостью 2,6 Ач, зажим для переноски на ремне, петля на руку, реверс, безопасная работа без обратного удара, управляющая электроника, рукоятка с мягкой накладкой.</p>', 1, 76, 'Гайковерт Bosch GDS 12 V', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(77, 'kompressor-remeza-sb4s270av670', NULL, 'Компрессор Remeza СБ4С270.АВ670', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', '<p>Используется в бытовых целях и промышленных условиях как источник сжатого воздуха для пневмоинструмента, окрасочных работ, автосервиса и т. д.</p>', 1, 77, 'Компрессор Remeza СБ4С270.АВ670', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(78, 'radiotelefon-dect-panasonic-kx-tcd815', NULL, 'Радиотелефон Dect Panasonic KX-TCD815', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB).</p>', '<p>Радиотелефон стандарта DECT/GAP. Загрузка картинок и мелодий с ПК или мобильного телефона (встроенный ИК-порт, в комплекте кабель USB). Автоматический определитель номера: АОН, Caller ID (журнал на 50 вызовов). Проговаривание голосом номера. Большой графический цветной дисплей - 65000 цветов. 6 обычных + 14 полифонических мелодий звонка. Загрузка мелодий с любого аудио-устройства через кабель. Меню и телефонный справочник на русском языке (200 номеров). Возможность присваивания до 3-х номеров телефонов и картинки для одной записи. Редактирование записей с помощью ПК. Функция Нянька. Спикерфон (громкая связь) на трубке. Дата, часы, будильник. Повторный набор последних 5-ти набранных номеров. Подключение гарнитуры. Ночной режим. Кнопка Flash для переадресация на мини-АТС. Подключение до 6-ти трубок на одну базу. Подключение одной трубки на 4 базы. Конференц-связь. Внутренняя связь между трубками. Переадресация внешнего звонка между трубками. Подключение к видеодомофонной системе.</p>', 1, 78, 'Радиотелефон Dect Panasonic KX-TCD815', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(79, 'faksimilnyj-apparat-panasonic-kx-fc258ru', NULL, 'Факсимильный аппарат Panasonic KX-FC258RU', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса.</p>', '<p>Двухстрочный дисплей. Беспроводная DECT трубка с цветным дисплеем. Печать по принципу термопереноса. Цифровой дуплексный спикерфон. Цифровой автоответчик. Время записи - 15 минут. Скорость модема - до 9,6 Кбит/с. Кнопка навигации. Автоподатчик на 10 листов. Лоток на 20 листов. Отложенная передача. Прием при отсутствии бумаги (до 28 страниц). Набор 100 номеров из памяти. Функция копирования с возможностью масштабирования.</p>', 1, 79, 'Факсимильный аппарат Panasonic KX-FC258RU', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, '44545.png', '2015-11-16 17:03:52'),
	(80, 'kommunikator-asus-mypal-a639', NULL, 'Коммуникатор ASUS MyPal A639', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер).</p>', '<p>Операционная система Windows Mobile 5.0 for Pocket PC. Процессор Intel XScale PXA270 416 МГц. Оперативная память 64 Мб, Flash-память ROM 1 Гб. Интерфейсы: SD/MMC с поддержкой SDIO, IrDA, Bluetooth 2.0+EDR, Wi-Fi (IEEE802.11b/g), USB 1.1 клиент (синхронизация, заряд, кард-ридер). Встроенный GPS-приемник SiRF Star III, внешняя поворотная антенна, разъем для подключения дополнительной антенны. Экран 3.5” c разрешением 240х320 точек, 64 тысячи цветов.</p>', 1, 80, 'Коммуникатор ASUS MyPal A639', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, '44545.png', '2015-11-16 17:03:45'),
	(81, 'mikser-philips-hr1565', NULL, 'Миксер Philips HR1565', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p>', '<p>Легкое приготовление домашних дессертов Миксер с поворачивающейся чашей Приготовление изысканных домашних тортов, пирогов и выпечки для всей семьи еще никогда не было настолько простым. Этот 350 Вт миксер Philips с подставкой и чашей сделает за вас всю трудную работу, за минуты приготовив идеальные смеси. Ваш верный и надежный помощник на кухне.</p><p>Свободные руки при смешивании Вращающаяся чаша емкостью 3 л Подставка миксера</p><p>Идеальное тесто и десерты за несколько минут Мощный (350 Ватт) мотор Различные скоростные режимы и турборежим</p><p>Идеально взбивает и смешивает Насадки для взбивания и для теста в комплекте</p><p>Быстрая и простая чистка Удобная лопаточка</p><p>Удобство хранения Зажим для шнура</p><p>Общие характеристики Режимы скоростей: 3 Кнопка включения турборежима Зажим для шнура</p><p>Технические характеристики Мощность: 350 Вт Напряжение: 230-240 В Частота: 50/60 Гц Длина шнура: 1,50 м</p><p>Характеристики дизайна Материал, из которого изготовлен корпус: ABS Материал насадок для взбивания/для теста: Из нержавеющей стали</p><p>Принадлежности Насадки для взбивания Насадки для теста</p><p>Дата выпуска 2008-05-21</p>', 1, 81, 'Миксер Philips HR1565', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(82, 'universalnaya-sokovyzhimalka-philips-hr186630', NULL, 'Универсальная соковыжималка Philips HR186630', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p>', '<p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Технические характеристики</p><p>Тип универсальная</p><p>Мощность 800 Вт</p><p>Резервуар для сока стакан, объем 1.25 л</p><p>Система прямой подачи сока есть</p><p>Система капля-стоп есть</p><p>Сбор мякоти автоматический выброс мякоти, объем резервуара 2 л</p><p>Сепаратор для пены есть</p><p>Защитные функции защита от случайного включения</p><p>Особенности</p><p>Материал корпуса алюминий</p><p>Материал сетки центрифуги нерж. сталь</p><p>Круглая горловина есть</p><p>Размер горловины 74 мм</p><p>Комплектация щеточка для чистки</p><p>Прорезиненные ножки есть</p><p>Отсек для сетевого шнура длина 1.2 м</p><p>Управление</p><p>Количество скоростей 2</p>', 1, 82, 'Универсальная соковыжималка Philips HR186630', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(83, 'chaevarka-chajnik-bosch-tta-2009', NULL, 'Чаеварка-чайник BOSCH TTA 2009', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p>', '<p>Цвет: бежевый/серый, серебристый</p><p>Мощность: 1785 Вт макс.</p><p>Объем заварника: 0,7 л</p><p>Объем чайника: 2,0 л</p><p>Чайник из полупрозрачного пластика со шкалой уровня воды</p><p>Стеклянный заварник с крышкой</p><p>Ситечко для заварки из нержавеющей стали</p><p>Круговой светоиндикатор «Улыбка»</p><p>Крышка для чайника в комплекте</p><p>Скрытый нагревательный элемент, дно из нержавеющей стали</p><p>Автоматическое переключение на режим подогрева</p><p>Цоколь с центральным контактом позволяет устанавливать чайник в любом положении</p><p>Клавиша переключения режимов кипячения и нагрева</p><p>Клавиша «включения/отключения» прибора</p><p>Намотка кабеля в цоколе</p>', 1, 83, 'Чаеварка-чайник BOSCH TTA 2009', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(84, 'myasorubka-aeg-fw-5549', NULL, 'Мясорубка AEG FW 5549', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть</p>', '<p>Технические характеристикиМощность 400 ВтСистема реверса естьНасадкиПерфорированный диск для фарша есть, 3 в комплектеНасадка-терка нетНасадка для шинковки нетНасадка для приготовления колбас естьПрочие насадки для кеббе, для нарезки печеньяОсобенностиМатериал лотка металлМатериал корпуса металлПрорезиненные ножки естьОтсек для хранения шнура естьДополнительная информация максимальная мощность 1000 Вт</p>', 1, 84, 'Мясорубка AEG FW 5549', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(85, 'hlebopechka-tefal-dual-home-baker-ow4002', NULL, 'Хлебопечка Tefal Dual Home Baker OW4002', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', '<p>Мощность 680 Вт. Запрограммированный старт через 15 часов. Запас памяти на 7 минут при сбое электропитания. Антипригарное покрытие бака. 13 программ приготовления. 3 варианта веса хлеба (750 г, 1 кг и 1,2 кг). 3 цвета корочки.</p>', 1, 85, 'Хлебопечка Tefal Dual Home Baker OW4002', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(86, 'detskoe-avtokreslo-bebe-confort-iseos-safe-side-tt', NULL, 'Детское автокресло Bebe Confort Iseos Safe Side TT', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку.</p>', '<p>Автокресло рекомендуется для детей от 9 кг (1-4 года). Оснащено системой дополнительного натяжения ремней, которыми кресло крепится к сиденью автомобиля, что упрощает и ускоряет его правильную установку. Установка в автомобиле: по ходу движения с помощью штатного 3-точечного ремня безопасности. В кресле используется двойная система Modulo Safe, позволяющая плавно изменять ширину (от 40 до 55 см) и наклон кресла, внутренние 5-точечные ремни безопасности регулируются по росту ребенка. Прочный корпус на широкой платформе разработан с учетом геометрии салонов современных автомобилей. Усиленная боковая защита Safe Side. Защитные накладки на ремнях двух размеров, в зависимости от возраста ребенка. Система Легкая посадка, фиксирующая внутренние ремни по сторонам, на боковинах и не мешающие посадке ребенка. Высококачественное, мягкое, дышащее покрытие (снимается и стирается). Система Total Tension обеспечивает правильную установку с меньшими усилиями. Вес автокресла: 9 кг.</p>', 1, 86, 'Детское автокресло Bebe Confort Iseos Safe Side TT', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(87, 'babyono-238-nabor-posudy-dlya-kormleniya', NULL, 'BABYONO 238 Набор посуды для кормления', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p>', '<p>Тарелочка с подогревом, диаметр 17,5 см</p><p>Обеденные наборы BabyOno это все, что необходимо для Твоего ребёнка во время еды</p><p>Набор предназначен для детей от 1-го года, однако если заметите, что Ваш ребёнок захочет раньше начать есть самостоятельно, то ничто не мешает, ему делать это ещё до года.</p><p>В набор входит</p><p>* тарелка с подогревом и присоской</p><p>* кружка-непроливайка</p><p>* столовые приборы</p><p>Производство: BabyOno, Польша</p>', 1, 87, 'BABYONO 238 Набор посуды для кормления', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(88, 'pelenalnyj-stolik-baby-prestige-simplicity', NULL, 'Пеленальный столик Baby Prestige Simplicity', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', '<p>Пеленальный столик очень устойчив благодаря широкой основе. Ванночка анатомической формы с дренажной трубкой для слива воды. Имеется полочка для хранения банных принадлежностей. Занимает мало места. Высота - 98 см. Длина - 75 см. Ширина - 58 см.</p>', 1, 88, 'Пеленальный столик Baby Prestige Simplicity', '', '', '2015-11-16 11:17:42', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(89, 'krovat-bertoni-classic', NULL, 'Кровать BERTONI CLASSIC', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', '<p>Внутренний размер кроватки: 120х60 см. Выдвижной ящик. Специальные фиксаторы качания. Варианты цветовой гаммы: голубая и розовая.</p>', 1, 89, 'Кровать BERTONI CLASSIC', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:42'),
	(90, 'manezh-bertoni-arena-2-urovnya', NULL, 'Манеж BERTONI ARENA 2+ уровня', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', '<p>2 уровня: для сна и игры. Собирается до компактного размера. Легко переносить. Игрушка для ребёнка. Размеры: 120x60x77 см. Варианты цветовой гаммы: blue-orange, blue-yellow, green-orange.</p>', 1, 90, 'Манеж BERTONI ARENA 2+ уровня', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(91, 'ortopedicheskij-matras-barro-elit-501-160-x-200', NULL, 'Ортопедический матрас Барро Элит 501 160 x 200', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', '<p>Ортопедический классический матрас на основе пружинного блока TFK. Симметричный матрас с традиционной компоновкой пенополиуретана с двух сторон и холстопрошивного ватина. А так же иглопробивным натуральным полотном и по периметру - 40мм пенополиуретаном. Съемный чехол матраса (стеганый жакард).</p>', 1, 91, 'Ортопедический матрас Барро Элит 501 160 x 200', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(92, 'sejf-vzlomostojkij-valberg-ask-46', NULL, 'Сейф взломостойкий Valberg ASK-46', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе.</p>', '<p>Сейф предназначен для хранения ценных вещей, в том числе и достаточно крупных денежных сумм, как дома, так и в офисе. Сертификация по I классу защиты от взлома. Корпус сейфа имеет трехслойную конструкцию: внешняя стенка, бетон, внутренняя стенка. Стенки сейфа выполнены из стального листа толщиной от 1 до 3 мм. Ключевой 8-сувальдный замок Mauer (Германия). Замок защищен от высверливания специальной твердосплавной пластиной. Сейф оснащен 3-сторонней ригельной системой запирания с тремя никелированными вращающимися ригелями, диаметром 25 мм и одним пассивным ригелем.</p>', 1, 92, 'Сейф взломостойкий Valberg ASK-46', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(93, 'kaminnyj-nabor-859-kovanyj-aksessuary-dlya-kaminov', NULL, 'Каминный набор №859 кованый (Аксессуары для каминов)', '<p>Размер см: 24х28х64 (Ш х Д х В)</p>', '<p>Размер см: 24х28х64 (Ш х Д х В)</p><p>Цвет: Старое золото</p><p>Пр-во: Польша</p>', 1, 93, 'Каминный набор №859 кованый (Аксессуары для каминов)', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(94, 'benzobur-pacme-el-ed1700', NULL, 'Бензобур Pacme EL-ED1700', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', '<p>Бензобур мощностью 1.7 кВт. Диаметр бура 150 мм. Возможность установки буров диаметром: 100, 200, 250 мм.</p>', 1, 94, 'Бензобур Pacme EL-ED1700', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(95, 'mikser-elektricheskij-graphite-58g782', NULL, 'Миксер электрический Graphite 58G782', '<p>Миксер электрический в чемоданчике с мешалкой.</p>', '<p>Миксер электрический в чемоданчике с мешалкой. Мощность 1200 Вт. Патрон M14. Скорость I: 0-580, II: 0-760 об/мин.</p>', 1, 95, 'Миксер электрический Graphite 58G782', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(96, 'pnevmogajkovert-force-82565', NULL, 'Пневмогайковерт Force 82565', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', '<p>Скорость вращения 6000 об/мин, максимальное усилие 1800 Нм, вес 4.4 кг.</p>', 1, 96, 'Пневмогайковерт Force 82565', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(97, 'skobozabivatel-metabo-ta-e-2019', NULL, 'Скобозабиватель Metabo Ta E 2019', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo.</p>', '<p>Модель для работы со скобами, гвоздями, профильными захватами Metabo. Подходит также для работы со скобами из плоской проволоки. Энергия удара может плавно регулироваться электронным образом. Возможность дополнительного добивания (для скоб и гвоздей). Выступ с выемкой для точного позиционирования. Защита от случайного срабатывания удара.</p>', 1, 97, 'Скобозабиватель Metabo Ta E 2019', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(98, 'lentochnaya-shlifovalnaya-mashina-dewalt-dw432', NULL, 'Ленточная шлифовальная машина Dewalt DW432', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов.</p>', '<p>Мощный 800 Вт электродвигатель обеспечивает высокую эффективность шлифования разных материалов. Конструкция подошвы из трех роликов обеспечивает лучший контакт шлифленты с обрабатываемой поверхностью. Эффективная система пылеудаления со встроенным пылесборником и возможностью подключения внешнего пылесоса. Две рукоятки для лучшего баланса и контроля.</p>', 1, 98, 'Ленточная шлифовальная машина Dewalt DW432', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(99, 'bluetooth-garnitura-nokia-bh-903', NULL, 'Bluetooth гарнитура Nokia BH-903', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку.</p>', '<p>Привлекательный дизайн, оснащена дисплеем, который позволяет контролировать музыку. С беспроводной гарнитурой Вы можете: получить отличное качество звука благодаря цифровой обработке сигнала; наслаждаться встроенным FM-радио; управлять музыкой благодаря медиа-клавишам; автоматически переключаться между музыкой и вызовами; слушать музыку или радио и разговаривать до 9 часов после 20 минут зарядки; управлять вызовами; совершать вызовы с гарнитуры через быстрый набор номера на вашем мобильном устройстве.</p>', 1, 99, 'Bluetooth гарнитура Nokia BH-903', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(100, 'blok-rasshireniya-dlya-ariasoho-lg-nortel-ar-eksu', NULL, 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', '<p>Блок расширения для ARIA SOHO, подключается внешней шиной к базовому блоку. В блоке расширения есть - 3 внешние линии; 8 внутренних гибридных абонентов (или аналоговых или цифровых); 1 слот для установки дополнительной платы расширения; 1 аварийный датчик; 1 реле общего назначения; 1 схема аварийного переключение при пропадании питания.</p>', 1, 100, 'Блок расширения для AriaSOHO LG-Nortel AR-EKSU', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(101, 'provodnoj-telefon-lg-gs-475-rus-wa', NULL, 'Проводной телефон LG GS-475 RUS WA', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', '<p>Тоновый / импульсный набор.Память на 3 номера. Функции: регулировка уровня громкости мелодии звонка; сброс набора или соединения (клавиша FLASH); пауза во время разговора (клавиша PAUSE); повторный набор номера (клавиша REDIAL).</p>', 1, 101, 'Проводной телефон LG GS-475 RUS WA', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(102, 'ip-telefon-d-link-dph-400s', NULL, 'IP-телефон D-link DPH-400S', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования.</p>', '<p>Телефонный аппарат позволяет совершать звонки, используя сеть Интернет или корпоративную сеть вместо традиционной телефонной сети общего пользования. При этом голос преобразуется в IP-пакеты и передается по сети. Голос и данные могут одновременно передаваться по одному и тому же каналу связи. Телефон снабжен дополнительным разъемом RJ-45 для подключения к порту Ethernet компьютера или локальной сети (через коммутатор или концентратор Fast Ethernet). Это позволяет разговаривать по IP-телефону во время просмотра Web-страниц, отправки почтовых сообщений и выполнения других сетевых задач. Также DPH-400S можно использовать в локальных сетях с поддержкой Ethernet и протокола IP.</p>', 1, 102, 'IP-телефон D-link DPH-400S', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(103, 'provodnoj-telefon-panasonic-kx-ts2365rub', NULL, 'Проводной телефон PANASONIC KX-TS2365RUB', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время.</p>', '<p>Проводной телефон PANASONIC оснащен ЖК-дисплеем с часами, функцией громкая связь, портом для дополнительного оборудования, разъемом для гарнитуры. Однокнопочный набор на 20 номеров и ускоренный набор на 10 номеров экономят время. Есть кнопка пауза, ограничение и блокировка вызова, возможность регулировать громкость звонка и динамика, мелодия в режиме удержания соединения, выключение микрофона. Возможна установка на стене. Цвет модели - черный.</p>', 1, 103, 'Проводной телефон PANASONIC KX-TS2365RUB', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(104, 'faksimilnyj-apparat-sharp-ux-73', NULL, 'Факсимильный аппарат Sharp UX-73', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц.</p>', '<p>Простой и удобный в эксплуатации факсимильный аппарат с памятью, достаточной для хранения 17 страниц. Факс, копир и телефон, собранные вместе в компактном корпусе. Печать на термобумаге. Скорость модема - до 9,6 Кбит/с. Автоподатчик на 10 листов. Автоматический набор 40 номеров. Автоматическая обрезка бумаги.</p>', 1, 104, 'Факсимильный аппарат Sharp UX-73', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(105, 'napolnye-vesy-beurer-bg55', NULL, 'Напольные весы Beurer BG55', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела.</p>', '<p>Индикация с указанием содержания: жира, воды, мышечной и костной массы тела. Атлетический режим. Литиевая батарея в комплекте. Технология Tap-on. Платформа из безопасного прочного стекла.</p>', 1, 105, 'Напольные весы Beurer BG55', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(106, 'napolnye-vesy-beurer-gs21-mauritius', NULL, 'Напольные весы Beurer GS21 Mauritius', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината).</p>', '<p>Напольные весы со стеклянной платформой с оригинальным дизайном MaterialLine (покрытие из ламината). Максимальная нагрузка 180 кг. Погрешность измерения 0.1 кг. Автоматическое отключение. Перенастройка единицы измерения: kg (кг)/lb (фунты)/st (стоуны). Размеры (ШхВxД): 33x2.0x32 см.</p>', 1, 106, 'Напольные весы Beurer GS21 Mauritius', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(107, 'elektronnye-napolnye-vesy-bosch-ppw-3300', NULL, 'Электронные напольные весы BOSCH PPW 3300', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', '<p>Электронные весы AxxenceSlim Line. Ультратонкие, высота 17мм с большим дисплеем - 38 мм. Цвет белый.</p>', 1, 107, 'Электронные напольные весы BOSCH PPW 3300', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(108, 'elektrobritva-philips-rq-1095', NULL, 'Электробритва PHILIPS RQ 1095', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок.</p>', '<p>Электробритва с ЖК-дисплеем. Бритвенный блок. Индикатор необходимости замены бритвенного блока. Быстрая зарядка. Дорожная блокировка. Индикация очистки. Полированный стальной корпус. Отсутствие вибраций. Антикоррозийное покрытие головок. Можно мыть под водой и бриться с пеной. Система Flex & Pivot: три гибкие головки, вращающиеся в разных направления. Система Lift & Cut.</p>', 1, 108, 'Электробритва PHILIPS RQ 1095', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(109, 'gidromassazhnaya-vanna-dlya-nog-beurer-fb25', NULL, 'Гидромассажная ванна для ног BEURER FB25', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы.</p>', '<p>Гидромассажная ванночка для ног с механическим управлением и тремя режимами работы. 16 встроенных магнитов. Вибрационный массаж, вихревой массаж. Дополнительная функция: поддержание температуры воды.</p>', 1, 109, 'Гидромассажная ванна для ног BEURER FB25', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(110, 'fen-rascheska-braun-steam--style-ass-1000', NULL, 'Фен-расческа Braun Steam & Style ASS 1000', '<p>Мощный стайлер с управлямой подачей пара.</p>', '<p>Мощный стайлер с управлямой подачей пара. Мягкая укладка и длительный результат. Идеален для укладки влажных волос и корректировки прически на сухих волосах, для создания локонов и волн, создания объема. 3 ступени мощности потока воздуха. Насадка для создания крупных локонов и волн. Насадка для мелкой и средней завивки. Насадка для подъема волос и создания объема от самых корней. Цвет сиреневый матовый.</p>', 1, 110, 'Фен-расческа Braun Steam & Style ASS 1000', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(111, 'fen-valera-swiss-nano-9200-ionic-tourmaline-rotocord', NULL, 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока.</p>', '<p>Фен мощностью 2000 Вт. 6 комбинаций температуры и скорости воздушного потока. Независимая регулировка нагрева и воздушного потока. Подача холодного воздуха. Ионизация. Срок службы: 2000 часов. Вес без кабеля: 540 гр. Гибкий кабель 3 м с устройством Rotocord (вращение шнура вокруг своей оси).</p>', 1, 111, 'Фен Valera Swiss Nano 9200 Ionic Tourmaline Rotocord', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(112, 'elektrobigudi-remington-kf40e', NULL, 'Электробигуди Remington KF40E', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования.</p>', '<p>Термобигуди с тефлоновым покрытием и функцией ионного кондиционирования. Имеют восковую середину и бархатное покрытие. 4 штуки диаметром 20 мм, 10 штук диаметром 22 мм, 6 штук диаметром 25 мм. Время нагрева - 10 минут. Подставка для нагревания и зажимы для волос в комплекте. Два варианта цвета.</p>', 1, 112, 'Электробигуди Remington KF40E', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(113, 'elektrobigudi-philips-hp4611', NULL, 'Электробигуди Philips HP4611', '<p>12 бигуди в комплекте для создания блестящих локонов.</p>', '<p>12 бигуди в комплекте для создания блестящих локонов. 4 бигуди с керамическим покрытием для создания объемных локонов. Индикатор готовности к работе. 12 металлических зажимов, 4 зажима-краба. Система SalonRollers Pro нагревает все бигуди одновременно, обеспечивая быстрый и равномерный нагрев.</p>', 1, 113, 'Электробигуди Philips HP4611', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(114, 'schiptsy-moser-salonstyle-4463-0050', NULL, 'Щипцы Moser SalonStyle 4463-0050', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт.</p>', '<p>Щипцы для выпрямления волос. Мощность: 45 Вт. Ударопрочный корпус из термопластика. Подкругленный корпус для завивки волос. Плавающие пластины. Керамико-турмалиновое покрытие пластин. 6 температурных режимов (от 130 до 230 гр). LED-индикаторы работы. Автоотключение через 30 мин. Шнур питания с вращающимся шарниром и петлей для подвешивания. Защита от перегрева.</p>', 1, 114, 'Щипцы Moser SalonStyle 4463-0050', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(115, 'vypryamitel-dlya-volos-braun-es2', NULL, 'Выпрямитель для волос Braun ES2', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева.</p>', '<p>Керамическое покрытие насадок. Индикатор остаточного нагрева. Индивидуальные настройки режима укладки. Защита от перегрева. Максимальная температура нагрева 200 С. Мощность 140 Вт.</p>', 1, 115, 'Выпрямитель для волос Braun ES2', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(116, 'stajler-braun-satin-hair-5-esw', NULL, 'Стайлер Braun Satin Hair 5 ESW', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы.</p>', '<p>Стайлер для выпрямления волос. Подвижные керамические пластины NanoGlide поддерживают здоровье кутикулы. Точная регулировка температуры для бережной укладки (от 130°C до 200°C с шагом в 5°C). Формирователь локонов. Температурный дисплей. Автоматическое отключение через 30 минут.</p>', 1, 116, 'Стайлер Braun Satin Hair 5 ESW', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(117, 'plojka-valera-digicurl-64119', NULL, 'Плойка Valera DIGICURL 641.19', '<p>Плойка с цифровым управлением для завивки волос.</p>', '<p>Плойка с цифровым управлением для завивки волос. Диаметр: 19 мм. Керамический слой. Антибактериальное действие NANO-SILVER. Цифровой дисплей. Максимальная температура 190°C. Гибкий поворотный кабель 3 м. Пластиковый наконечник.</p>', 1, 117, 'Плойка Valera DIGICURL 641.19', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(118, 'sauna-dlya-litsa-panasonic-eh-2513', NULL, 'Сауна для лица Panasonic EH 2513', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', '<p>Вакуумный очиститель пор с функцией микроспрея для более эффективной очистки кожи. 2 режима работы (влажный и обычный). Непрерывная работа от аккумулятора - 20 минут. Мощность вакуумного давления: 50кПа.</p>', 1, 118, 'Сауна для лица Panasonic EH 2513', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(119, 'sauna-dlya-litsa-panasonic-eh-2424', NULL, 'Сауна для лица Panasonic EH 2424', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова.</p>', '<p>Ионизирующий вапоризатор для очищения и увлажнения глубоких слоев кожного покрова. Очищение и увлажнение глубоких слоев эпидермиса с помощью наночастиц ионизированного пара. Непрерывная работа при однократном заполнении резервуара водой – 12 ми</p>', 1, 119, 'Сауна для лица Panasonic EH 2424', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(120, 'tsifrovaya-fotokamera-olympus-pen-e-p3', NULL, 'Цифровая фотокамера Olympus PEN E-P3', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма.</p>', '<p>Компактная камера в металлическом корпусе. Сенсорный OLED-дисплей с диагональю 3 дюйма. Live MOS сенсор с разрешением 12.3 Мегапикселей. FAST автофокус (Frequency Acceleration Sensor Technology). Full HD-видео со стерео звуком, регулируемой глубиной резкости и художественными фильтрами. Графический процессор TruePic VI. Цвета: черный, белый, серебристый.</p>', 1, 120, 'Цифровая фотокамера Olympus PEN E-P3', '', '', '2015-11-16 11:17:43', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:43'),
	(121, 'tsifrovoj-fotoapparat-nikon-coolpix-s1100pj', NULL, 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение.</p>', '<p>Цифровая тонкая фотокамера с разрешением 14,1 мегапикселей. Широкоугольный объектив NIKKOR с 5-кратным увеличением обеспечивает потрясающе точную передачу деталей и высокое разрешение. (Эквивалент формата 35 мм для пленочных фотокамер: 28 – 140 мм). Встроенный проектор позволяет проецировать избранные фотографии или видеоклипы. Поддержка ярких (до 14 люмен) проекций качества VGA на экране размером от 26 до 240 см (от 5 до 47 дюймов). Проецирование изображений с ПК или карты памяти. Гибридное VR (смещение объектива и электронное подавление вибраций). Сенсорный ЖК экран с диагональю 7,6 см (3 дюйма), разрешением 460 тыс. точек. Яркие видеоклипы высокой четкости в формате 720р HD. 17 сюжетных режимов. Варианты расцветок - желтый, сиреневый, черный, серый.</p>', 1, 121, 'Цифровой фотоаппарат Nikon Coolpix S1100pj', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:44'),
	(122, 'shtativ-hama-traveller-mini-h-4048', NULL, 'Штатив Hama Traveller Mini H-4048', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', '<p>Компактный штатив-треножник для фото/видеокамер и микрофонов. Шаровая головка. Вес 215 г.</p>', 1, 122, 'Штатив Hama Traveller Mini H-4048', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, 'stim12561.gif', '2015-11-16 17:02:42'),
	(123, 'shtativ-rekam-rt-l38', NULL, 'Штатив Rekam RT-L38', '<p>Напольный штатив для фото- и видеокамер.</p>', '<p>Напольный штатив для фото- и видеокамер. Корпус выполнен из металла серебристого цвета, ручка для переноса, механический подъемник, крюк для сумки, панорамная 3-D головка.</p>', 1, 123, 'Штатив Rekam RT-L38', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:44'),
	(124, 'obektiv-canon-ef-s-18-55mm-f35-56-is', NULL, 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности.</p>', '<p>Стандартный объектив общего назначения с 4-ступенчатым стабилизатором изображения, который помогает добиться значительно лучших результатов в условиях слабой освещенности. Изготовлен на основе профессиональной оптики, с использованием асферического элемента. Подходит для съёмки без штатива при различном освещении. Минимальное расстояние фокусировки объектива составляет всего 25 см при любом увеличении, обеспечивая возможность макросъёмки.</p>', 1, 124, 'Объектив Canon EF-S 18-55mm f3.5-5.6 IS', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:44'),
	(125, 'obektiv-canon-ef-50-mm-f18-ii', NULL, 'Объектив Canon EF 50 mm f1.8 II', '<p>Стандартный объектив с постоянным фокусным расстоянием.</p>', '<p>Стандартный объектив с постоянным фокусным расстоянием. Компактный и легкий, обеспечивает отличное качество изображения при светосиле, превосходящей возможности любого объектива с переменным фокусным расстоянием. Классическая оптическая схема. Система автофокусировки базируется на встроенном микромоторе.</p>', 1, 125, 'Объектив Canon EF 50 mm f1.8 II', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:44'),
	(126, 'obektiv-canon-ef-70-200-f-4l-usm', NULL, 'Объектив Canon EF 70-200 f 4L USM', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе.</p>', '<p>Телеобъектив с постоянной светосилой. Модель выполнена в прочном, пыле- и влагозащитном корпусе. Диафрагма объектива с круглым отверстием позволяет получать привлекательный эффект размытого фона. Оптическая схема объектива включает 13 линз в 16 группах. В числе элементов имеются две линзы из низкодисперсионного стекла UD и одна флюоритовая. Такая конструкция обеспечивает превосходное качество изображения с минимальным уровнем аберраций при любом значении фокусного расстояния. Многослойное просветление Super Spectra. Фокусировка осуществляется при помощи кольцевого ультразвукового мотора USM.</p>', 1, 126, 'Объектив Canon EF 70-200 f 4L USM', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:44'),
	(127, 'vspyshka-canon-speedlite-580ex-ii', NULL, 'Вспышка Canon Speedlite 580EX II', '<p>Вспышка для любых погодных условий.</p>', '<p>Вспышка для любых погодных условий. Управление с помощью меню фотокамеры. Надёжная конструкция защищает детали вспышки от попадания пыли и влаги при съёмке с выносной колодкой. Бесшумный и быстрый перезаряд.</p>', 1, 127, 'Вспышка Canon Speedlite 580EX II', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-16 11:17:44'),
	(128, 'vspyshka-nikon-speedlight-sb-900', NULL, 'Вспышка Nikon Speedlight SB-900', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами.</p>', '<p>Профессиональная вспышка i-TTL, совместимая с зеркальными фотокамерами. Три шаблона освещения: центрально-взвешенный, равномерный и стандартный. Набор усовершенствованных функций. Система термальной защиты, автоматическое определение фильтра.</p>', 1, 128, 'Вспышка Nikon Speedlight SB-900', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(129, 'tsifrovaya-fotoramka-sony-dpf-a710', NULL, 'Цифровая фоторамка Sony DPF-A710', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий.</p>', '<p>Цифровая фоторамка с 7-дюймовым широкоформатным ЖК-экраном со светодиодной подсветкой обеспечивает четкое и детализированное отображение фотографий. Встроенная память 128 МБ позволяет хранить до 200 фотографий. Большой выбор настроек слайд-шоу, разные варианты оформления часов и календаря, функции поиска фотографий по папкам, событиям и тегам пользователя. Интеллектуальный сенсор поворачивает изображение при изменении положения рамки. Оснащена пультом дистанционного управления.</p>', 1, 129, 'Цифровая фоторамка Sony DPF-A710', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(130, 'tsifrovaya-fotoramka-transcend-pf705', NULL, 'Цифровая фоторамка Transcend PF705', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9.</p>', '<p>Широкоэкранная цветная TFT LCD панель с диагональю 7 дюймов и отношением сторон 16:9. Поддержка USB флэш-накопителей и карт памяти SD/SDHC/MMC/MS Полная совместимость с интерфейсом Hi-Speed USB 2.0 и обратная совместимость с USB 1.1. Прямое подключение к ПК с помощью USB для простого обмена файлами. Выбор различных фотографий для создания слайдшоу. Возможность просмотра изображений в режиме слайд-шоу, в режиме пиктограмм, в обычномрежиме, а также возможность увеличения изображения. Функция напоминаний о важных датах/событиях. Функции календаря и часов. Автоматическое выключение и таймер для перехода в неактивный режим. Возможность выбора цветовых режимов. Цвета: белый, черный.</p>', 1, 130, 'Цифровая фоторамка Transcend PF705', '', '', '2015-11-16 11:17:44', 1, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(131, 'koktejlnoe-plate-tulpan', NULL, 'Коктейльное платье Tulpan', '<p>97% полиэстер, 5% эластан</p>', '<p>97% полиэстер, 5% эластан</p>', 1, 131, 'Коктейльное платье Tulpan', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(132, 'koktejlnoe-plate-strass-buck', NULL, 'Коктейльное платье Strass Buck', '<p>95% полиэстер, 5% спандекс</p>', '<p>95% полиэстер, 5% спандекс</p>', 1, 132, 'Коктейльное платье Strass Buck', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(133, 'plate-zebra-s-originalnym-remnem', NULL, 'Платье Зебра с оригинальным ремнем', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p>', '<p>Красивое платье для работы и отдыха из плотного стрейч-трикотажа.</p><p>Высококачественный плотный трикотаж с добавлением эластана делает платье комфортным и удобным в носке.</p><p>Оригинальный ремень и необычная расцветка покажут Вашу индивидуальность и стиль.</p><p>Параметры модели: рост 176см, ОГ - 88см, ОТ -65 см, ОБ-94 см.</p>', 1, 133, 'Платье Зебра с оригинальным ремнем', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(134, 'vyazanoe-plate-s-naryadnym-vorotnichkom', NULL, 'Вязаное платье с нарядным воротничком', '<p>Это отличное вязаное платье с шикарным воротником</p>', '<p>Это отличное вязаное платье с шикарным воротником</p><p>А сборка в области талии подчеркнёт все прелести вашей фигуры.</p>', 1, 134, 'Вязаное платье с нарядным воротничком', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(135, 'kombinezon-redial-pod-dzhins-2', NULL, 'Комбинезон Redial под джинс 2', '<p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', '<p>60% хлопок, 35% полиэстер, 5% спандекс</p><p>Комбинезон Redial под джинс 2 – откровенный и элегантный. Глубокое декольте открывает соблазнительную грудь. Привлекает внимание красиво оголенная спина. Очень интригующе смотрятся пуговички и отложной воротничок. Комбинезон плотно и сексуально облегает фигуру, подчеркивая все ее достоинства</p>', 1, 135, 'Комбинезон Redial под джинс 2', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(136, 'velyurovyj-sportivnyj-kostyum-s-yubkoj', NULL, 'Велюровый спортивный костюм с юбкой', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', '<p>Спортивный костюм с юбкой. Разнообразие цветов поможет выбрать именно тот, который подойдёт именно вам!</p>', 1, 136, 'Велюровый спортивный костюм с юбкой', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(137, 'sportivnyj-kostyum-hood', NULL, 'Спортивный костюм HOOD', '<p>100% хлопок</p>', '<p>100% хлопок</p>', 1, 137, 'Спортивный костюм HOOD', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(138, 'byustgalter-velmont-3404', 0, 'Бюстгальтер Velmont 3404', '<p>Бюстгальтер Velmont 3404 &ndash; эффектный бюстгальтер. Тонкие, регулируемые лямки,</p>', '<p>Бюстгальтер Velmont 3404 &ndash; эффектный бюстгальтер. Тонкие, регулируемые лямки, удобная чашка, кружевная отделка, Ваша грудь будет сексуально выглядеть в этом бюстгальтере. Удобен в носке и подходит как на каждый день, так и под вечернее платье.</p>', 1, 138, 'Бюстгальтер Velmont 3404', 'Бюстгальтер Velmont 3404, Нижнее бельё', 'Бюстгальтер Velmont 3404 &ndash; эффектный бюстгальтер. Тонкие, регулируемые лямки,', '2015-11-16 11:17:44', NULL, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(139, 'byustgalter-velmont-4702', NULL, 'Бюстгальтер Velmont 4702', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 4702 – комфортный бюстгальтер на регулируемых тонких лямках. Черный атлас, удобная чашка, бюстгальтер привлекает внимание эффектной простотой. Идеально поддержит Вашу грудь, удобен в носке на каждый день.</p>', 1, 139, 'Бюстгальтер Velmont 4702', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(140, 'byustgalter-velmont-5104', NULL, 'Бюстгальтер Velmont 5104', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки.</p>', '<p>Бюстгальтер Velmont 5104 привлекает внимание оригинальностью расцветки и отделки. Бюстгальтер на регулируемых тонких лямках, глубокая удобная чашка, идеально поддерживающая грудь. Удобен в носке на каждый день, идеально подходит для открытых сарафанов и прозрачных топов.</p>', 1, 140, 'Бюстгальтер Velmont 5104', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(141, 'byustgalter-velmont-3804', 0, 'Бюстгальтер Velmont 3804', '<p>Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках.</p>', '<p>Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках. Легкая отделка кружевом, четный цвет, он привлекает внимание классической простотой. Удобная, мягкая чашечка идеально поддержит Вашу грудь. Бюстгальтер подходит к носке на каждый день.</p>', 1, 141, 'Бюстгальтер Velmont 3804', 'Бюстгальтер Velmont 3804, Нижнее бельё', 'Бюстгальтер Velmont 3804 &ndash; удобный бюстгальтер на регулируемых тонких лямках.', '2015-11-16 11:17:44', NULL, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(142, 'stulchik-dlya-kormleniya-peg-perego-prima-pappa-best', NULL, 'Стульчик для кормления Peg-Perego Prima Pappa Best', '<p>Стульчик раcсчитан на малыша до трех лет.</p>', '<p>Стульчик раcсчитан на малыша до трех лет. Моющееся сидение изготовлено из кожа заменителя, корпус пластмассовый, регулируемая подножка, стопора на колесах, большая устойчивость. Пятиточечные ремни безопасности и анатомическая вставка для разделения ног удерживают ребенка в надежном и безопасном положении.</p>', 1, 142, 'Стульчик для кормления Peg-Perego Prima Pappa Best', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(143, 'tsifrovoj-videomonitor-philips-avent-scd60000', NULL, 'Цифровой видеомонитор Philips AVENT SCD60000', '<p>Автоматический выбор канала для конфиденциального соединения.</p>', '<p>Автоматический выбор канала для конфиденциального соединения. Система инфракрасного ночного видения для круглосуточного наблюдения. Успокаивающие колыбельные и ночник. Высокое разрешение, цветной экран 61 мм. Беспроводной портативный родительский блок. Цифровое подтверждение сигнала и световая индикация уровня звука. Автоматическое включение экрана с регуляторами яркости и звука. Родительский блок на аккумуляторах. Диапазон действия: 150 м. Клипса для крепления к поясу.</p>', 1, 143, 'Цифровой видеомонитор Philips AVENT SCD60000', '', '', '2015-11-16 11:17:44', 0, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(144, 'detskie-kacheli-graco-sweetpeace', NULL, 'Детские качели GRACO Sweetpeace', '<p>Детские качели для детей с рождения.</p>', '<p>Детские качели для детей с рождения. Качели копируют движение при укачивании ребёнка на руках (в трёх разных направлениях), три положения спинки, 6 скоростей, съёмное сидение, набор различных мелодий и возможность подключения МР3 плеера, две скорости вибрации, ремни безопасности, регулируемый капор.</p>', 1, 144, 'Детские качели GRACO Sweetpeace', '', '', '2015-11-16 11:17:44', 1, '', 0.0, 0, 'hit67.png', '2015-11-27 11:15:17'),
	(145, 'detskie-kacheli-graco-swingnbounce', 0, 'Детские качели GRACO Swing\'n\'bounce', '<p>Уникальная модель 2-в-1: качели + кресло качалка.</p>', '<p>Уникальная модель 2-в-1: качели + кресло качалка. 6 скоростей для использования в качестве качелей. 2 скорости для спокойного покачивания в кресле качалке. 3 положения наклона кресла. Снимаемый подголовник. Движущаяся карусель с 3 плюшевыми игрушками. Электронный блок с музыкой, звуками природы, таймер для автоматического отключения. Цвета: deimos, venus, greta.</p>', 1, 145, 'Детские качели GRACO Swing\'n\'bounce', '', '', '2015-11-16 11:17:44', 1, '', 0.0, 0, 'hit67.png', '2015-11-27 11:15:17'),
	(146, 'pelenalnyj-stolik-cam-nuvola', 0, 'Пеленальный столик Cam Nuvola', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', '<p>Пеленальный столик с ванночкой для купания. Система безопасности предотвращающая произвольное складывание. Две полочки для детских вещей. Изделие предназначено для детей от 0 до 12 месяцев. Различная цветовая гамма.</p>', 1, 146, 'Пеленальный столик Cam Nuvola', '', '', '2015-11-16 11:17:44', NULL, '', 0.0, 0, NULL, '2015-11-27 11:15:17'),
	(147, 'avtokreslo-bebe-confort-opal', 0, 'Автокресло Bebe Confort Opal', '<p>Автокресло с поворотным сиденьем для более продолжительного использования.</p>', '<p>Автокресло с поворотным сиденьем для более продолжительного использования. Переустановка положений происходит одним движением руки, вращением автокресла на своем основании. Сиденье подходит для двух групп: 0+ - спиной к дороге и 1 - лицом к дороге. Боковая защита Safe Side предохраняет голову малыша при боковых столкновениях. Внутренние 5-точечные ремни безопасности быстро и удобно регулируются по росту ребенка. Размеры: ширина регулируется от 40 до 50 см. Высота регулируется от 60 до 76 см. Варианты цвета: Total Black, Intense Red, Deep Blue, Brown Earth, Steel Gray, Marble Pink, Dark Olive.</p>', 1, 147, 'Автокресло Bebe Confort Opal', '', '', '2015-11-16 11:17:45', NULL, '', 0.0, 0, 'stim12561.gif', '2015-11-27 11:15:17');
/*!40000 ALTER TABLE `s_products` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_products_categories
DROP TABLE IF EXISTS `s_products_categories`;
CREATE TABLE IF NOT EXISTS `s_products_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `position` (`position`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_products_categories: 147 rows
DELETE FROM `s_products_categories`;
/*!40000 ALTER TABLE `s_products_categories` DISABLE KEYS */;
INSERT INTO `s_products_categories` (`product_id`, `category_id`, `position`) VALUES
	(40, 7, 0),
	(38, 7, 0),
	(37, 7, 0),
	(41, 7, 0),
	(36, 7, 0),
	(35, 7, 0),
	(34, 7, 0),
	(42, 7, 0),
	(33, 7, 0),
	(32, 7, 0),
	(31, 7, 0),
	(30, 7, 0),
	(29, 7, 0),
	(28, 7, 0),
	(27, 7, 0),
	(26, 7, 0),
	(39, 7, 0),
	(25, 7, 0),
	(24, 7, 0),
	(23, 7, 0),
	(22, 6, 0),
	(21, 6, 0),
	(20, 6, 0),
	(19, 6, 0),
	(18, 6, 0),
	(17, 5, 0),
	(16, 4, 0),
	(15, 4, 0),
	(14, 4, 0),
	(13, 4, 0),
	(12, 4, 0),
	(11, 4, 0),
	(10, 4, 0),
	(9, 3, 0),
	(8, 3, 0),
	(7, 3, 0),
	(6, 3, 0),
	(5, 3, 0),
	(4, 2, 0),
	(3, 2, 0),
	(2, 1, 0),
	(1, 1, 0),
	(43, 7, 0),
	(44, 7, 0),
	(45, 7, 0),
	(46, 7, 0),
	(47, 7, 0),
	(48, 7, 0),
	(49, 7, 0),
	(50, 7, 0),
	(51, 7, 0),
	(52, 7, 0),
	(53, 7, 0),
	(54, 7, 0),
	(55, 7, 0),
	(56, 7, 0),
	(57, 7, 0),
	(58, 7, 0),
	(59, 7, 0),
	(60, 7, 0),
	(61, 7, 0),
	(62, 7, 0),
	(63, 7, 0),
	(64, 8, 0),
	(65, 8, 0),
	(66, 8, 0),
	(67, 8, 0),
	(68, 8, 0),
	(69, 8, 0),
	(70, 8, 0),
	(71, 8, 0),
	(72, 8, 0),
	(73, 8, 0),
	(74, 8, 0),
	(75, 8, 0),
	(76, 8, 0),
	(77, 8, 0),
	(78, 8, 0),
	(79, 8, 0),
	(80, 8, 0),
	(81, 9, 0),
	(82, 9, 0),
	(83, 9, 0),
	(84, 9, 0),
	(85, 9, 0),
	(86, 9, 0),
	(87, 9, 0),
	(88, 9, 0),
	(89, 9, 0),
	(90, 9, 0),
	(91, 9, 0),
	(92, 9, 0),
	(93, 9, 0),
	(94, 9, 0),
	(95, 9, 0),
	(96, 9, 0),
	(97, 9, 0),
	(98, 9, 0),
	(99, 9, 0),
	(100, 9, 0),
	(101, 9, 0),
	(102, 9, 0),
	(103, 9, 0),
	(104, 9, 0),
	(105, 10, 0),
	(106, 10, 0),
	(107, 10, 0),
	(108, 11, 0),
	(109, 12, 0),
	(110, 12, 0),
	(111, 13, 0),
	(112, 14, 0),
	(113, 14, 0),
	(114, 15, 0),
	(115, 15, 0),
	(116, 15, 0),
	(117, 15, 0),
	(118, 16, 0),
	(119, 16, 0),
	(120, 17, 0),
	(121, 17, 0),
	(122, 18, 0),
	(123, 18, 0),
	(124, 19, 0),
	(125, 19, 0),
	(126, 19, 0),
	(127, 20, 0),
	(128, 20, 0),
	(129, 21, 0),
	(130, 21, 0),
	(131, 22, 0),
	(132, 22, 0),
	(133, 22, 0),
	(134, 22, 0),
	(135, 22, 0),
	(136, 22, 0),
	(137, 22, 0),
	(138, 23, 0),
	(139, 23, 0),
	(140, 23, 0),
	(141, 23, 0),
	(142, 24, 0),
	(143, 24, 0),
	(144, 24, 0),
	(145, 24, 0),
	(146, 24, 0),
	(147, 24, 0);
/*!40000 ALTER TABLE `s_products_categories` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_purchases
DROP TABLE IF EXISTS `s_purchases`;
CREATE TABLE IF NOT EXISTS `s_purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `variant_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `variant_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `variant_id` (`variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_purchases: 4 rows
DELETE FROM `s_purchases`;
/*!40000 ALTER TABLE `s_purchases` DISABLE KEYS */;
INSERT INTO `s_purchases` (`id`, `order_id`, `product_id`, `variant_id`, `product_name`, `variant_name`, `price`, `amount`, `sku`) VALUES
	(1, 1, 147, 151, 'Автокресло Bebe Confort Opal', '', 1046.50, 1, '1318211023'),
	(2, 1, 138, 139, 'Бюстгальтер Velmont 3404', 'Черный', 63.05, 1, '665098649'),
	(3, 2, 145, 149, 'Детские качели GRACO Swing\'n\'bounce', '', 498.55, 1, '1309142305'),
	(4, 3, 147, 151, 'Автокресло Bebe Confort Opal', '', 482.95, 1, '1318211023');
/*!40000 ALTER TABLE `s_purchases` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_related_products
DROP TABLE IF EXISTS `s_related_products`;
CREATE TABLE IF NOT EXISTS `s_related_products` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_related_products: 0 rows
DELETE FROM `s_related_products`;
/*!40000 ALTER TABLE `s_related_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_related_products` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_settings
DROP TABLE IF EXISTS `s_settings`;
CREATE TABLE IF NOT EXISTS `s_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_settings: 31 rows
DELETE FROM `s_settings`;
/*!40000 ALTER TABLE `s_settings` DISABLE KEYS */;
INSERT INTO `s_settings` (`setting_id`, `name`, `value`) VALUES
	(8, 'site_name', 'Интернет-магазин на OkayCMS'),
	(9, 'company_name', 'ООО "Интернет-магазин на OkayCMS"'),
	(50, 'units', 'шт'),
	(53, 'date_format', 'd.m.Y'),
	(54, 'order_email', 'me@example.com'),
	(55, 'comment_email', 'me@example.com'),
	(56, 'notify_from_email', 'me@example.com'),
	(57, 'decimals_point', ','),
	(58, 'thousands_separator', ' '),
	(59, 'products_num', '24'),
	(60, 'products_num_admin', '20'),
	(30, 'theme', 'default'),
	(33, 'products_num', '24'),
	(34, 'products_num_admin', '20'),
	(111, 'last_1c_orders_export_date', '2011-07-30 21:31:56'),
	(112, 'license', 'bhbcfgkhfe iomjlglmpl rqwqxrtpz6 898495c7 cfee'),
	(113, 'max_order_amount', '50'),
	(114, 'watermark_offset_x', '50'),
	(115, 'watermark_offset_y', '50'),
	(116, 'watermark_transparency', '50'),
	(117, 'images_sharpen', '15'),
	(119, 'admin_email', 'me@example.com'),
	(120, 'comparison_count', '5'),
	(121, 'is_preorder', '1'),
	(125, 'yandex_export_not_in_stock', ''),
	(126, 'yandex_available_for_retail_store', ''),
	(127, 'yandex_available_for_reservation', ''),
	(128, 'yandex_short_description', ''),
	(129, 'yandex_has_manufacturer_warranty', ''),
	(130, 'yandex_has_seller_warranty', ''),
	(131, 'yandex_sales_notes', '');
/*!40000 ALTER TABLE `s_settings` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_spec_img
DROP TABLE IF EXISTS `s_spec_img`;
CREATE TABLE IF NOT EXISTS `s_spec_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_spec_img: 4 rows
DELETE FROM `s_spec_img`;
/*!40000 ALTER TABLE `s_spec_img` DISABLE KEYS */;
INSERT INTO `s_spec_img` (`id`, `name`, `filename`) VALUES
	(1, 'Новинка', 'stim12561.gif'),
	(2, 'Хит', 'hit67.png'),
	(3, 'Гарантия', '1.png'),
	(4, 'Акция', '44545.png');
/*!40000 ALTER TABLE `s_spec_img` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_subscribe_mailing
DROP TABLE IF EXISTS `s_subscribe_mailing`;
CREATE TABLE IF NOT EXISTS `s_subscribe_mailing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_subscribe_mailing: 0 rows
DELETE FROM `s_subscribe_mailing`;
/*!40000 ALTER TABLE `s_subscribe_mailing` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_subscribe_mailing` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_translations
DROP TABLE IF EXISTS `s_translations`;
CREATE TABLE IF NOT EXISTS `s_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) NOT NULL,
  `in_config` tinyint(1) NOT NULL,
  `label` varchar(255) NOT NULL,
  `lang_ru` varchar(255) NOT NULL,
  `lang_en` varchar(255) NOT NULL,
  `lang_uk` varchar(255) NOT NULL,
  `lang_ch` varchar(255) NOT NULL,
  `lang_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_translations: 148 rows
DELETE FROM `s_translations`;
/*!40000 ALTER TABLE `s_translations` DISABLE KEYS */;
INSERT INTO `s_translations` (`id`, `template`, `in_config`, `label`, `lang_ru`, `lang_en`, `lang_uk`, `lang_ch`, `lang_by`) VALUES
	(33, '', 0, 'vvedite_kapchu', 'Введите капчу', 'Enter captcha', 'Введите капчу', '', ''),
	(2, '', 0, 'vse_brendy', 'Все бренды', 'All brands', 'Все бренды', '', ''),
	(3, '', 0, 'valyuta', 'Валюта', 'Currency', '', '', ''),
	(4, '', 0, 'vy_prosmatrivali', 'Вы просматривали', 'You searched', 'Вы просматривали', '', ''),
	(5, '', 0, 'novye_zapisi_v', 'Новые записи в', 'Recent blog', 'Новые записи в', '', ''),
	(6, '', 0, 'bloge', 'Блоге', 'entries', '', '', ''),
	(7, '', 0, 'rekomenduemye_tovary', 'Рекомендуемые товары', 'Recommended products', 'Рекомендуемые товары', '', ''),
	(8, '', 0, 'novinki', 'Новинки', 'New', 'Новинки', '', ''),
	(9, '', 0, 'aktsionnye_tovary', 'Акционные товары', 'Action goods', 'Акционные товары', '', ''),
	(10, '', 0, 'yazyk', 'Язык', 'Language', '', '', ''),
	(11, '', 0, 'cartinfo_in_cart', 'В корзине', 'In cart', '', '', ''),
	(12, '', 0, 'cartinfo_empty', 'Корзина пуста', 'Cart is empty', '', '', ''),
	(13, '', 0, 'email_order_order', 'Заказ', 'Order', 'Order', '', ''),
	(14, '', 0, 'wishlist_info_wishlist', 'Избранное', 'Wishlist', '', '', ''),
	(15, '', 0, 'comparison_compare', 'Сравнить товары', 'Compare products', '', '', ''),
	(16, '', 0, 'zakaz_obratnogo_zvonka', 'Заказ обратного звонка', 'Order call back', 'Заказ обратного звонка', '', ''),
	(17, '', 0, 'vvedite_imya', 'Введите имя', 'Enter Your name', 'Введите имя', '', ''),
	(18, '', 0, 'vvedite_nomer_telefona', 'Введите № телефона', 'Enter your phone number', 'Введите № телефона', '', ''),
	(19, '', 0, 'zakazat', 'Заказать', 'Order', 'Заказать', '', ''),
	(20, '', 0, 'vasha_zayavka_prinyata', 'Ваша заявка принята', 'Your application is accepted', 'Ваша заявка принята', '', ''),
	(22, '', 0, 'korzina', 'Корзина', 'Cart', 'Корзина', '', ''),
	(21, '', 0, 'my_svyazhemsya_s_vami_v_blizhajshee_vremya', 'Мы свяжемся с Вами в ближайшее время', 'We will contact You shortly', 'Мы свяжемся с Вами в ближайшее время', '', ''),
	(23, '', 0, 'v_korzine', 'В корзине', 'In cart', 'В корзине', '', ''),
	(24, '', 0, 'tovar', 'товар', 'item', 'товар', '', ''),
	(25, '', 0, 'tovarov', 'товаров', 'items', 'товаров', '', ''),
	(26, '', 0, 'tovara', 'товара', 'item', 'товара', '', ''),
	(27, '', 0, 'adres_poluchatelya', 'Адрес получателя', 'Recipient\'s address', 'Адрес получателя', '', ''),
	(28, '', 0, 'vvedite_email', 'Введите email', 'Enter email', 'Введите email', '', ''),
	(29, '', 0, 'kapcha_vvedena_neverno', 'Капча введена неверно', 'Captcha entered incorrect', 'Капча введена неверно', '', ''),
	(31, '', 0, 'adres_dostavki', 'Адрес доставки', 'Shipping address', 'Адрес доставки', '', ''),
	(32, '', 0, 'kommentarij_k_zakazu', 'Комментарий к заказу', 'Order comment', 'Комментарий к заказу', '', ''),
	(34, '', 0, 'oformit_zakaz', 'Оформить заказ', 'Place an order', 'Оформить заказ', '', ''),
	(35, '', 0, 'vyberite_sposob_dostavki', 'Выберите способ доставки', 'Select a delivery method', 'Выберите способ доставки', '', ''),
	(36, '', 0, 'besplatno', 'бесплатно', 'free', 'бесплатно', '', ''),
	(37, '', 0, 'udalit_iz_korziny', 'Удалить из корзины', 'Remove', 'Удалить из корзины', '', ''),
	(38, '', 0, 'skidka', 'Скидка', 'Sale', 'Скидка', '', ''),
	(39, '', 0, 'kupon_nedejstvitelen', 'Купон недействителен', 'Coupon not valid', 'Купон недействителен', '', ''),
	(40, '', 0, 'kod_kupona', 'Код купона', 'Coupon code', 'Код купона', '', ''),
	(41, '', 0, 'kupon', 'купон', 'coupon', 'купон', '', ''),
	(42, '', 0, 'dejstvuet_dlya_zakazov_ot', 'действует для заказов от', 'dejstvuet dlya zakazov ot', 'действует для заказов от', '', ''),
	(43, '', 0, 'primenit_kupon', 'Применить купон', 'Apply coupon', 'Применить купон', '', ''),
	(44, '', 0, 'itogo', 'Итого', 'Total', 'Итого', '', ''),
	(45, '', 0, 'nazad', 'назад', 'back', 'назад', '', ''),
	(46, '', 0, 'vpered', 'вперед', 'move', 'вперед', '', ''),
	(47, '', 0, 'vse_srazu', 'все сразу', 'all', 'все сразу', '', ''),
	(48, '', 0, 'papka_sravneniya', 'Папка сравнения', 'Comparison folder ', 'Папка сравнения', '', ''),
	(49, '', 0, 'v_papke_sravneniya', 'В папке сравнения', 'In comparison folder', 'В папке сравнения', '', ''),
	(50, '', 0, 'papka_sravneniya_pusta', 'Папка сравнения пуста', 'Comparison folder is empty', 'Папка сравнения пуста', '', ''),
	(51, '', 0, 'vse', 'Все', 'All', 'Все', '', ''),
	(52, '', 0, 'tolko_otlichiya', 'Только отличия', 'Only differences', 'Только отличия', '', ''),
	(53, '', 0, 'nazvanie', 'Название', 'Name', 'Название', '', ''),
	(54, '', 0, 'varianty', 'Варианты', 'Options', 'Варианты', '', ''),
	(55, '', 0, 'opisanie', 'Описание', 'Description', 'Описание', '', ''),
	(56, '', 0, 'udalit_iz_sravneniya', 'Удалить из сравнения', 'Remove', 'Удалить из сравнения', '', ''),
	(57, '', 0, 'v_korzinu', 'В корзину', 'In cart', 'В корзину', '', ''),
	(58, '', 0, 'dobavleno', 'Добавлено', 'Added', 'Добавлено', '', ''),
	(59, '', 0, 'net_v_nalichii', 'Нет в наличии', 'Out of stock', 'Нет в наличии', '', ''),
	(60, '', 0, 'papka_pusta', 'Папка пуста', 'Folder is empty', 'Папка пуста', '', ''),
	(61, '', 0, 'brendy', 'Бренды', 'Brands', 'Бренды', '', ''),
	(62, '', 0, 'tsena', 'Цена', 'Price', 'Цена', '', ''),
	(63, '', 0, 'obratnaya_svyaz', 'Обратная связь', 'Feedback', 'Обратная связь', '', ''),
	(64, '', 0, 'vashe_soobschenie_otpravleno', 'ваше сообщение отправлено', 'your message was sent', 'ваше сообщение отправлено', '', ''),
	(65, '', 0, 'neverno_vvedena_kapcha', 'Неверно введена капча', 'Captcha entered incorrect', 'Неверно введена капча', '', ''),
	(66, '', 0, 'vvedite_soobschenie', 'Введите сообщение', 'Enter message', 'Введите сообщение', '', ''),
	(67, '', 0, 'otpravit', 'Отправить', 'Send', 'Отправить', '', ''),
	(68, '', 0, 'obratnyj_zvonok', 'Обратный звонок', 'Back call', 'Обратный звонок', '', ''),
	(69, '', 0, 'vyjti', 'Выйти', 'Exit', 'Выйти', '', ''),
	(70, '', 0, 'registratsiya', 'Регистрация', 'Registration', 'Регистрация', '', ''),
	(71, '', 0, 'vhod', 'Вход', 'Sign in', 'Вход', '', ''),
	(72, '', 0, 'poisk_tovara', 'Поиск товара', 'Item search', 'Поиск товара', '', ''),
	(73, '', 0, 'besplatnaya_dostavka', 'Бесплатная доставка', 'Free shipping', 'Бесплатная доставка', '', ''),
	(74, '', 0, 'besplatnaya_dostavka_za_zakaz_svyshe_1000_rub', 'Бесплатная доставка за заказ свыше 1000 руб', 'Free shipping on orders over 1000 r.', 'Бесплатная доставка за заказ свыше 1000 руб', '', ''),
	(75, '', 0, 'subbotnie_skidki', 'Субботние скидки', 'Saturday sales', 'Субботние скидки', '', ''),
	(76, '', 0, 'ekonomte_do_30_na_subbotnih_rasprodazhah', 'Экономьте до 30% на субботних распродажах', 'Save up to 30% on Saturday sales', 'Экономьте до 30% на субботних распродажах', '', ''),
	(77, '', 0, 'podarok_za_zakaz', 'Подарок за заказ', 'Gift for an order', 'Подарок за заказ', '', ''),
	(78, '', 0, 'poluchajte_podarok_za_zakaz_svyshe_3000rub', 'Получайте подарок за заказ свыше 3000руб', 'Gift for an order over 3000r.', 'Получайте подарок за заказ свыше 3000руб', '', ''),
	(79, '', 0, 'hotite_podpisatsya_na_nashu_rassylku', 'Хотите подписаться на нашу рассылку?', 'Would You like to subscribe to our newsletter?', 'Хотите подписаться на нашу рассылку?', '', ''),
	(80, '', 0, 'podpisatsya', 'Подписаться', 'Subscribe', 'Подписаться', '', ''),
	(81, '', 0, 'vy_uzhe_podpisany', 'Вы уже подписаны', 'You are already subscribed', 'Вы уже подписаны', '', ''),
	(82, '', 0, 'vy_byli_uspeshno_podpisany', 'Вы были успешно подписаны', 'You have successfully subscribed', 'Вы были успешно подписаны', '', ''),
	(83, '', 0, 'nevernyj_login_ili_parol', 'Неверный логин или пароль', 'Login or password incorrect ', 'Неверный логин или пароль', '', ''),
	(84, '', 0, 'vash_akkaunt_esche_ne_aktivirovan', 'Ваш аккаунт еще не активирован', 'Your account is not activated yet', 'Ваш аккаунт еще не активирован', '', ''),
	(85, '', 0, 'parol', 'Пароль', 'Password', 'Пароль', '', ''),
	(86, '', 0, 'napomnit', 'напомнить', 'remind', 'напомнить', '', ''),
	(87, '', 0, 'vvedite_parol', 'Введите пароль', 'Enter password', 'Введите пароль', '', ''),
	(88, '', 0, 'vojti', 'Войти', 'Sign in', 'Войти', '', ''),
	(89, '', 0, 'vash_zakaz_nomer', 'Ваш заказ №', 'Your order №', 'Ваш заказ №', '', ''),
	(90, '', 0, 'prinyat', 'принят', 'accepted', 'принят', '', ''),
	(91, '', 0, 'v_obrabotke', 'в обработке', 'processing', 'в обработке', '', ''),
	(92, '', 0, 'vypolnen', 'выполнен', 'made', 'выполнен', '', ''),
	(93, '', 0, 'oplachen', 'оплачен', 'paid', 'оплачен', '', ''),
	(94, '', 0, 'skachat_fajl', 'скачать файл', 'download file', 'скачать файл', '', ''),
	(95, '', 0, 'detali_zakaza', 'Детали заказа', 'Order details', 'Детали заказа', '', ''),
	(96, '', 0, 'data_zakaza', 'Дата заказа', 'Order date', 'Дата заказа', '', ''),
	(97, '', 0, 'v', 'в', 'in', 'в', '', ''),
	(98, '', 0, 'imya', 'Имя', 'Name', 'Имя', '', ''),
	(99, '', 0, 'email', 'Email', 'Email', 'Email', '', ''),
	(100, '', 0, 'telefon', 'Телефон', 'Phone', 'Телефон', '', ''),
	(101, '', 0, 'kommentarij', 'Комментарий', 'Comment', 'Комментарий', '', ''),
	(102, '', 0, 'vyberite_sposob_oplaty', 'Выберите способ оплаты', 'Select a payment method', 'Выберите способ оплаты', '', ''),
	(103, '', 0, 'k_oplate', 'к оплате', 'total', 'к оплате', '', ''),
	(104, '', 0, 'zakonchit_zakaz', 'Закончить заказ', 'Complete order', 'Закончить заказ', '', ''),
	(105, '', 0, 'sposob_oplaty', 'Способ оплаты', 'Payment method', 'Способ оплаты', '', ''),
	(106, '', 0, 'vybrat_drugoj_sposob_oplaty', 'Выбрать другой способ оплаты', 'Choose another payment method', 'Выбрать другой способ оплаты', '', ''),
	(107, '', 0, 'vam_otpravleno_pismo', 'Вам отправлено письмо', 'We sent You a letter', 'Вам отправлено письмо', '', ''),
	(108, '', 0, 'na', 'На', 'On', 'На', '', ''),
	(109, '', 0, 'otpravleno_pismo_dlya_vosstanovleniya_parolya', 'отправлено письмо для восстановления пароля', 'a letter was sent to reset password.', 'отправлено письмо для восстановления пароля', '', ''),
	(110, '', 0, 'napominanie_parolya', 'Напоминание пароля', 'Password reminder', 'Напоминание пароля', '', ''),
	(111, '', 0, 'polzovatel_ne_najden', 'Пользователь не найден', 'User not found', 'Пользователь не найден', '', ''),
	(112, '', 0, 'vvedite_email_kotoryj_vy_ukazyvali_pri_registratsii', 'Введите email, который вы указывали при регистрации', 'Enter Your e-mail, You signed in', 'Введите email, который вы указывали при регистрации', '', ''),
	(113, '', 0, 'vspomnit', 'Вспомнить', 'Remember', 'Вспомнить', '', ''),
	(114, '', 0, 'glavnaya', 'Главная', 'Main', 'Главная', '', ''),
	(115, '', 0, 'poisk', 'Поиск', 'Search', 'Поиск', '', ''),
	(116, '', 0, 'vosstanovlenie_parolya', 'Восстановление пароля', 'Password reset', 'Восстановление пароля', '', ''),
	(117, '', 0, 'kommentarii', 'Комментарии', 'Comments', 'Комментарии', '', ''),
	(118, '', 0, 'ozhidaet_moderatsii', 'ожидает модерации', 'awaiting moderation', 'ожидает модерации', '', ''),
	(119, '', 0, 'poka_net_kommentariev', 'Пока нет комментариев', 'No comments ', 'Пока нет комментариев', '', ''),
	(120, '', 0, 'napisat_kommentarij', 'Написать комментарий', 'Write a comment', 'Написать комментарий', '', ''),
	(121, '', 0, 'vvedite_kommentarij', 'Введите комментарий', 'Enter a comment', 'Введите комментарий', '', ''),
	(122, '', 0, 'artikul', 'Артикул', 'SKU', 'Артикул', '', ''),
	(123, '', 0, 'predzakaz', 'Предзаказ', 'Pre-order', 'Предзаказ', '', ''),
	(124, '', 0, 'v_izbrannoe', 'В избранное', 'Add to Favorites', 'В избранное', '', ''),
	(125, '', 0, 'iz_izbrannogo', 'Из избранного', 'Remove', 'Из избранного', '', ''),
	(126, '', 0, 'v_sravnenie', 'В сравнение', 'Compare', 'В сравнение', '', ''),
	(127, '', 0, 'iz_sravneniya', 'Из сравнения', 'Remove', 'Из сравнения', '', ''),
	(128, '', 0, 'net_na_sklade', 'Нет на складе', 'Out of stock', 'Нет на складе', '', ''),
	(129, '', 0, 'harakteristiki', 'Характеристики', 'Characteristics', 'Характеристики', '', ''),
	(130, '', 0, 'otzyvy', 'Отзывы', 'Reviews', 'Отзывы', '', ''),
	(131, '', 0, 'sovetuem_posmotret', 'Советуем посмотреть', 'We recommend see', 'Советуем посмотреть', '', ''),
	(132, '', 0, 'sortirovat_po', 'Сортировать по', 'Sort by', 'Сортировать по', '', ''),
	(133, '', 0, 'umolchaniyu', 'умолчанию', 'default', 'умолчанию', '', ''),
	(134, '', 0, 'tsene', 'цене', 'price', 'цене', '', ''),
	(135, '', 0, 'nazvaniyu', 'названию', 'name', 'названию', '', ''),
	(136, '', 0, 'tovary_ne_najdeny', 'Товары не найдены', 'Items not found', 'Товары не найдены', '', ''),
	(137, '', 0, 'polzovatel_s_takim_email_uzhe_zaregistrirovan', 'Пользователь с таким email уже зарегистрирован', 'User with this email already registered', 'Пользователь с таким email уже зарегистрирован', '', ''),
	(138, '', 0, 'zaregistrirovatsya', 'Зарегистрироваться', 'Create Account', 'Зарегистрироваться', '', ''),
	(139, '', 0, 'katalog_tovarov', 'Каталог товаров', 'Catalog', 'Каталог товаров', '', ''),
	(140, '', 0, 'izmenit_parol', 'Изменить пароль', 'Change password', 'Изменить пароль', '', ''),
	(141, '', 0, 'sohranit', 'Сохранить', 'Save', 'Сохранить', '', ''),
	(142, '', 0, 'vashi_zakazy', 'Ваши заказы', 'Your orders', 'Ваши заказы', '', ''),
	(143, '', 0, 'zakaz_nomer', 'Заказ №', 'Order №', 'Заказ №', '', ''),
	(144, '', 0, 'zhdet_obrabotki', 'ждет обработки', 'processing', 'ждет обработки', '', ''),
	(145, '', 0, 'izbrannye_tovary', 'Избранные товары', 'Favorite items', 'Избранные товары', '', ''),
	(146, '', 0, 'izbrannoe', 'Избранное', 'Favorites', 'Избранное', '', ''),
	(147, '', 0, 'v_izbrannom_pusto', 'В избранном пусто', 'Favoured empty', 'В избранном пусто', '', ''),
	(148, '', 0, 'ceo_filter_s_harakteristikami', 'c характеристиками', 'with characteristics', 'c характеристиками', '', ''),
	(149, '', 0, 'ceo_filter_v_magazine', 'в магазине', 'in shop', 'в магазине', '', ''),
	(150, '', 0, 'breadcrumbs_blog', 'Блог', 'Blog', 'Блог', '', '');
/*!40000 ALTER TABLE `s_translations` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_users
DROP TABLE IF EXISTS `s_users`;
CREATE TABLE IF NOT EXISTS `s_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_users: 0 rows
DELETE FROM `s_users`;
/*!40000 ALTER TABLE `s_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_users` ENABLE KEYS */;


# Dumping structure for table okaycms-git.s_variants
DROP TABLE IF EXISTS `s_variants`;
CREATE TABLE IF NOT EXISTS `s_variants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT '0.00',
  `compare_price` decimal(14,2) DEFAULT NULL,
  `stock` mediumint(9) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `external_id` varchar(36) NOT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '0',
  `yandex` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `sku` (`sku`),
  KEY `price` (`price`),
  KEY `stock` (`stock`),
  KEY `position` (`position`),
  KEY `external_id` (`external_id`),
  KEY `yandex` (`yandex`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

# Dumping data for table okaycms-git.s_variants: 151 rows
DELETE FROM `s_variants`;
/*!40000 ALTER TABLE `s_variants` DISABLE KEYS */;
INSERT INTO `s_variants` (`id`, `product_id`, `sku`, `name`, `price`, `compare_price`, `stock`, `position`, `attachment`, `external_id`, `currency_id`, `yandex`) VALUES
	(1, 1, '1301139965', '', 130.00, 0.00, 10, 1, '', '', 0, 0),
	(2, 2, '2084407699', '', 76.05, 0.00, 10, 1, '', '', 0, 0),
	(3, 3, '72850442', '', 290.55, 0.00, 10, 1, '', '', 0, 0),
	(4, 4, '2101817514', '', 326.95, 0.00, 10, 1, '', '', 0, 0),
	(5, 5, '2127895796', '', 266.50, 0.00, 10, 1, '', '', 0, 0),
	(6, 6, '1331499396', '', 617.50, 0.00, 10, 1, '', '', 0, 0),
	(7, 7, '1861550232', '', 476.45, 0.00, 10, 1, '', '', 0, 0),
	(8, 8, '153646461', '', 628.55, 0.00, 10, 1, '', '', 0, 0),
	(9, 9, '956699971', '', 2458.95, 0.00, 10, 1, '', '', 0, 0),
	(10, 10, '749469005', '', 788.45, 0.00, 10, 1, '', '', 0, 0),
	(11, 11, '1748485771', '', 4257.50, 0.00, 10, 1, '', '', 0, 0),
	(12, 12, '187406722', '', 463.45, 0.00, 10, 1, '', '', 0, 0),
	(13, 13, '1133137578', '', 258.05, 0.00, 10, 1, '', '', 0, 0),
	(14, 14, '1952512044', '', 255.45, 0.00, 10, 1, '', '', 0, 0),
	(15, 15, '161269464', '', 433.55, 0.00, 10, 1, '', '', 0, 0),
	(16, 16, '654249275', '', 658.45, 0.00, 10, 1, '', '', 0, 0),
	(17, 17, '848117307', '', 108.55, 0.00, 10, 1, '', '', 0, 0),
	(18, 18, '421740678', '', 1300.00, 0.00, 10, 18, '', '', 2, 0),
	(19, 19, '1837050903', '', 432.00, 0.00, 10, 19, '', '', 2, 0),
	(20, 20, '994570555', '', 198.00, 0.00, 10, 20, '', '', 2, 0),
	(21, 21, '523202222', '', 700.00, 0.00, 10, 21, '', '', 2, 0),
	(22, 22, '7160851', '', 65.00, 0.00, 10, 22, '', '', 2, 0),
	(23, 23, '156197426', '', 2383.55, 0.00, 10, 1, '', '', 0, 0),
	(24, 24, '1299197073', '', 1168.05, 0.00, 10, 1, '', '', 0, 0),
	(25, 25, '1755532483', '', 589.55, 0.00, 10, 1, '', '', 0, 0),
	(26, 26, '309877490', '', 1733.55, 0.00, 10, 1, '', '', 0, 0),
	(27, 27, '444160035', '', 866.45, 0.00, 10, 1, '', '', 0, 0),
	(28, 28, '1712530575', '', 173.55, 0.00, 10, 1, '', '', 0, 0),
	(29, 29, '578969464', '', 151.45, 0.00, 10, 1, '', '', 0, 0),
	(30, 30, '1716268135', '', 346.45, 0.00, 10, 1, '', '', 0, 0),
	(31, 31, '1511017120', '', 151.45, 0.00, 10, 1, '', '', 0, 0),
	(32, 32, '1011310273', '', 378.95, 0.00, 10, 1, '', '', 0, 0),
	(33, 33, '250263468', '', 801.45, 0.00, 10, 1, '', '', 0, 0),
	(34, 34, '892954222', '', 112.45, 0.00, 10, 1, '', '', 0, 0),
	(35, 35, '1481473295', '', 300.95, 0.00, 10, 1, '', '', 0, 0),
	(36, 36, '772590078', '', 2665.00, 0.00, 10, 1, '', '', 0, 0),
	(37, 37, '48202593', '', 411.45, 0.00, 10, 1, '', '', 0, 0),
	(38, 38, '304794229', '', 56.55, 0.00, 10, 1, '', '', 0, 0),
	(39, 39, '196049201', '', 693.55, 0.00, 10, 1, '', '', 0, 0),
	(40, 40, '1071158422', '', 1701.05, 0.00, 10, 1, '', '', 0, 0),
	(41, 41, '818064629', '', 3900.00, 0.00, 10, 1, '', '', 0, 0),
	(42, 42, '1854076646', '', 5349.50, 0.00, 10, 1, '', '', 0, 0),
	(43, 43, '802375995', '', 411.45, 0.00, 10, 1, '', '', 0, 0),
	(44, 44, '1982777364', '', 650.00, 0.00, 10, 1, '', '', 0, 0),
	(45, 45, '851582847', '', 4333.55, 0.00, 10, 1, '', '', 0, 0),
	(46, 46, '1654778539', '', 65.00, 0.00, 10, 1, '', '', 0, 0),
	(47, 47, '1041644229', '', 440.05, 0.00, 10, 1, '', '', 0, 0),
	(48, 48, '23240338', '', 281.45, 0.00, 10, 1, '', '', 0, 0),
	(49, 49, '172494359', '', 563.55, 0.00, 10, 1, '', '', 0, 0),
	(50, 50, '1567793084', '', 378.95, 0.00, 10, 1, '', '', 0, 0),
	(51, 51, '1597292934', '', 209.95, 0.00, 10, 1, '', '', 0, 0),
	(52, 52, '141237537', '', 86.45, 0.00, 10, 1, '', '', 0, 0),
	(53, 53, '1114508056', '', 162.50, 0.00, 10, 1, '', '', 0, 0),
	(54, 54, '1315964705', '', 1820.00, 0.00, 10, 1, '', '', 0, 0),
	(55, 55, '1751144771', '', 216.45, 0.00, 10, 1, '', '', 0, 0),
	(56, 56, '197462108', '', 3228.55, 0.00, 10, 1, '', '', 0, 0),
	(57, 57, '1851023253', '', 411.45, 0.00, 10, 1, '', '', 0, 0),
	(58, 58, '1327312986', '', 43.55, 0.00, 10, 1, '', '', 0, 0),
	(59, 59, '1561395574', '', 346.45, 0.00, 10, 1, '', '', 0, 0),
	(60, 60, '1343919830', '', 238.55, 0.00, 10, 1, '', '', 0, 0),
	(61, 61, '735422495', '', 1495.00, 0.00, 10, 1, '', '', 0, 0),
	(62, 62, '1103189345', '', 1191.45, 0.00, 10, 1, '', '', 0, 0),
	(63, 63, '1628263280', '', 32.50, 0.00, 10, 1, '', '', 0, 0),
	(64, 64, '795458685', '', 24310.00, 12050.00, 10, 1, '', '', 0, 0),
	(65, 65, '1894266310', '', 25231.05, 12999.00, 10, 1, '', '', 0, 0),
	(66, 66, '1308944572', '', 31351.45, 15499.00, 10, 1, '', '', 0, 0),
	(67, 67, '1080163006', '', 45781.45, 22999.00, 10, 1, '', '', 0, 0),
	(68, 68, '1848786829', '', 50253.45, 24999.00, 10, 1, '', '', 0, 0),
	(69, 69, '1416746442', '', 24776.05, 12000.00, 10, 1, '', '', 0, 0),
	(70, 70, '1926277703', '', 26794.95, 11577.00, 10, 1, '', '', 0, 0),
	(71, 71, '441212364', '', 67600.00, 36999.00, 10, 1, '', '', 0, 0),
	(72, 72, '1827331686', '', 52676.00, 27499.00, 10, 1, '', '', 0, 0),
	(73, 73, '1700607309', '', 78469.95, 39999.00, 10, 1, '', '', 0, 0),
	(74, 74, '1920692345', '', 24212.50, 15888.00, 10, 1, '', '', 0, 0),
	(75, 75, '490371367', '', 25350.00, 13478.00, 10, 1, '', '', 0, 0),
	(76, 76, '945153030', '', 29076.45, 16499.00, 10, 1, '', '', 0, 0),
	(77, 77, '807438575', '', 54509.00, 26000.00, 10, 1, '', '', 0, 0),
	(78, 78, '2109182114', '', 69593.55, 34999.00, 10, 1, '', '', 0, 0),
	(79, 79, '1667014103', '', 91573.95, 45000.00, 10, 1, '', '', 0, 0),
	(80, 80, '1542096497', '', 53148.55, 26999.00, 10, 1, '', '', 0, 0),
	(81, 81, '1672810800', '', 196.95, 0.00, 10, 1, '', '', 0, 0),
	(82, 82, '136098675', '', 391.95, 0.00, 10, 1, '', '', 0, 0),
	(83, 83, '2021101469', '', 174.85, 0.00, 10, 1, '', '', 0, 0),
	(84, 84, '1963221', '', 315.25, 0.00, 10, 1, '', '', 0, 0),
	(85, 85, '318569930', '', 390.65, 0.00, 10, 1, '', '', 0, 0),
	(86, 86, '950517247', '', 651.95, 0.00, 10, 1, '', '', 0, 0),
	(87, 87, '1421331144', '', 34.45, 0.00, 10, 1, '', '', 0, 0),
	(88, 88, '227433105', '', 198.90, 0.00, 10, 1, '', '', 0, 0),
	(89, 89, '1490091800', '', 390.65, 0.00, 10, 1, '', '', 0, 0),
	(90, 90, '1414824595', '', 261.95, 0.00, 10, 1, '', '', 0, 0),
	(91, 91, '957602064', '', 501.15, 0.00, 10, 1, '', '', 0, 0),
	(92, 92, '1175289084', '', 1084.20, 0.00, 10, 1, '', '', 0, 0),
	(93, 93, '1092064106', '', 98.80, 0.00, 10, 1, '', '', 0, 0),
	(94, 94, '1020478280', '', 564.85, 0.00, 10, 1, '', '', 0, 0),
	(95, 95, '603047154', '', 380.25, 0.00, 10, 1, '', '', 0, 0),
	(96, 96, '1751310486', '', 1734.85, 0.00, 10, 1, '', '', 0, 0),
	(97, 97, '829457920', '', 630.50, 0.00, 10, 1, '', '', 0, 0),
	(98, 98, '1180941093', '', 780.65, 0.00, 10, 1, '', '', 0, 0),
	(99, 99, '1593370102', '', 293.80, 0.00, 10, 1, '', '', 0, 0),
	(100, 100, '1844349545', '', 781.95, 0.00, 10, 1, '', '', 0, 0),
	(101, 101, '2101531839', '', 76.70, 0.00, 10, 1, '', '', 0, 0),
	(102, 102, '1419291432', '', 269.75, 0.00, 10, 1, '', '', 0, 0),
	(103, 103, '172720', '', 109.20, 0.00, 10, 1, '', '', 0, 0),
	(104, 104, '1413789977', '', 477.10, 0.00, 10, 1, '', '', 0, 0),
	(105, 105, '1479825727', '', 271.05, 0.00, 10, 1, '', '', 0, 0),
	(106, 106, '1469296276', '', 141.05, 0.00, 10, 1, '', '', 0, 0),
	(107, 107, '910067992', '', 118.95, 0.00, 10, 1, '', '', 0, 0),
	(108, 108, '423259147', '', 801.45, 0.00, 10, 1, '', '', 0, 0),
	(109, 109, '1285920550', '', 193.05, 0.00, 10, 1, '', '', 0, 0),
	(110, 110, '1529306471', '', 180.05, 0.00, 10, 1, '', '', 0, 0),
	(111, 111, '915175935', '', 266.50, 0.00, 10, 1, '', '', 0, 0),
	(112, 112, '965772670', '', 144.95, 0.00, 10, 1, '', '', 0, 0),
	(113, 113, '1746244628', '', 130.00, 0.00, 10, 1, '', '', 0, 0),
	(114, 114, '932731873', '', 273.00, 0.00, 10, 1, '', '', 0, 0),
	(115, 115, '1695088205', '', 227.50, 0.00, 10, 1, '', '', 0, 0),
	(116, 116, '715993455', '', 195.00, 0.00, 10, 1, '', '', 0, 0),
	(117, 117, '1852887291', '', 157.95, 0.00, 10, 1, '', '', 0, 0),
	(118, 118, '581385240', '', 108.55, 0.00, 10, 1, '', '', 0, 0),
	(119, 119, '971550899', '', 325.00, 0.00, 10, 1, '', '', 0, 0),
	(120, 120, '1952049251', '', 3791.45, 0.00, 10, 1, '', '', 0, 0),
	(121, 121, '1036617146', '', 888.55, 0.00, 10, 1, '', '', 0, 0),
	(122, 122, '1455664353', '', 130.00, 0.00, 10, 1, '', '', 0, 0),
	(123, 123, '633126586', '', 175.50, 0.00, 10, 1, '', '', 0, 0),
	(124, 124, '952091862', '', 260.00, 0.00, 10, 1, '', '', 0, 0),
	(125, 125, '1385069830', '', 287.95, 0.00, 10, 1, '', '', 0, 0),
	(126, 126, '968172589', '', 1678.95, 0.00, 10, 1, '', '', 0, 0),
	(127, 127, '2085598530', '', 1343.55, 0.00, 10, 1, '', '', 0, 0),
	(128, 128, '957835494', '', 1148.55, 0.00, 10, 1, '', '', 2, 0),
	(129, 129, '647001831', '', 238.55, 0.00, 10, 1, '', '', 2, 0),
	(130, 130, '578454477', '', 157.95, 0.00, 10, 1, '', '', 2, 0),
	(131, 131, '79606859', '', 260.00, 0.00, 10, 1, '', '', 2, 0),
	(132, 132, '1486803820', '', 227.50, 0.00, 10, 1, '', '', 2, 0),
	(133, 133, '997196776', '', 183.95, 0.00, 10, 1, '', '', 2, 0),
	(134, 134, '402661365', '', 195.00, 0.00, 10, 1, '', '', 2, 0),
	(135, 135, '287269331', '', 238.55, 0.00, 10, 1, '', '', 2, 0),
	(136, 136, '138639639', '', 248.95, 0.00, 10, 1, '', '', 2, 0),
	(137, 137, '264887605', '', 195.00, 0.00, 10, 1, '', '', 2, 0),
	(138, 138, '665098648', 'Лиловый', 31.00, 0.00, 10, 138, '', '', 2, 0),
	(139, 138, '665098649', 'Черный', 29.00, 0.00, 0, 139, '', '', 2, 0),
	(140, 138, '665098647', 'Бирюзовый', 30.00, 0.00, 10, 140, '', '', 2, 0),
	(141, 139, '1047370142', 'Белый', 63.05, 0.00, 10, 1, '', '', 2, 0),
	(142, 139, '1047370141', 'Черный', 63.05, 0.00, 10, 2, '', '', 2, 0),
	(143, 140, '664902047', 'Белый', 65.00, 0.00, 10, 1, '', '', 2, 0),
	(144, 141, '665360792', 'Черный', 65.00, 0.00, 10, 144, '', '', 2, 1),
	(145, 141, '665360793', 'Белый', 65.00, 0.00, 10, 145, '', '', 2, 1),
	(146, 142, '1360727340', '', 663.00, 0.00, 10, 1, '', '', 2, 0),
	(147, 143, '1095960108', '', 758.55, 0.00, 10, 1, '', '', 2, 0),
	(148, 144, '613154813', '', 754.00, 0.00, 10, 1, '', '', 2, 0),
	(149, 145, '1309142305', '', 498.55, 0.00, 10, 149, '', '', 2, 0),
	(150, 146, '2075759371', '', 349.05, 0.00, 10, 150, '', '', 2, 0),
	(151, 147, '1318211023', '', 483.00, 500.00, 0, 151, '', '', 2, 1);
/*!40000 ALTER TABLE `s_variants` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
