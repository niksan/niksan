-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 22 2011 г., 02:00
-- Версия сервера: 5.1.54
-- Версия PHP: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `niksan_development`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Главная', '<p>Услуги, предоставляемые нашей компанией:</p> \r\n\r\n<ul> \r\n\r\n  <li>Разработка сайта</li> \r\n\r\n  <li>Продвижение сайта</li> \r\n\r\n  <li>Поддержка сайта</li> \r\n\r\n</ul>\r\n\r\n<p>А теперь о каждом из этих пунктов расскажем подробнее:</p>\r\n\r\n<h2>Разработка сайта</h2> \r\n\r\n<p>Мы готовы взяться за работу любой сложности! Начиная от создания небольшого статичного сайта, заканчивая интернет магазином с возможностью выгрузки товаров из 1C, или какой нибудь социальной сетью. За довольно короткий промежуток времени мы накопили хоть не большое, но довольно интересное <a href="/portfolio/">портфолио</a>, в котором присутствуют как Воронежские, так и Московские проекты. <a href="/articles/2">Разработка сайта</a> для Воронежских фирм на данный момент является очень выгодным вложением. Создав сайт вы получаете в свое распоряжении еще одного трудолюбивого сотрудника, который будет вам привлекать клиентов круглосуточно, и будет работать безо всяких капризов.</p> \r\n\r\n<h2>Продвижение сайта</h2> \r\n\r\n<p><a href="/articles/3">Раскрутка сайта</a> &mdash; это продвижение сайта по определенным ключевым словам. Для достижения этой цели мы произведем над вашим сайтом комплекс определенных действий, которые будут способствовать повышению его позиций в поисковых системах.</p> \r\n\r\n<p>Пред началом предоставления услуг мы так же проведем в интернете маркетинговое исследование, с целью выяснить какие ключевые выражения вам выгодны и какие сайты интересны вашей целевой аудитории.</p>\r\n\r\n<p>Раскрутка сайта может производиться по отдельным регионам, таким как Воронеж, Липецк, Тамбов, Курск и т.п., либо по всей России. Что это означает мы покажем Вам на собственном примере:</p> \r\n\r\n<ul> \r\n\r\n  <li>Раскрутка по Воронежу - &laquo;сайт Воронеж, раскрутка сайта Воронеж, создание сайта Воронеж&raquo;</li> \r\n\r\n  <li>Раскрутка по России - &laquo;сайт, раскрутка сайта, создание сайта&raquo;.</li> \r\n\r\n</ul>\r\n\r\n<p>Т.е. как мы можем видеть при раскрутке по Воронежу у нас ко всем фразам добавляется слово Воронеж, при раскрутке по другому региону будет добавляться название региона, по которому должна будет происходить раскрутка.</p>\r\n\r\n<p>Конечно же количество запросов при раскрутке "по России" гораздо больше, чем, например, по Воронежу, но это и не всегда необходимо. Если вы не готовы поставлять свои услуги за пределы какой то области, то вам, соответственно и не за чем переплачивать за раскрутку сайта по России. А если вы довольно крупная организация и осуществляете поставки ваших товаров и услуг по территории всей нашей родины, то вам конечно же будет выгоднее заказать раскрутку по России. Вложенные деньги себя окупят с очень большой выгодой. По своей сути это очень продуктивно работающая рекламная компания.</p>\r\n\r\n<h2>Поддержка сайта</h2> \r\n\r\n<p>После того, как вы сделали, раскрутили свой сайт, необходимо задуматься о его дальнейшем существовании. Что бы сайт "жил", необходимо за ним следить: вовремя обновлять прайс лист, информацию о предоставляемых услугах, новости, статьи, публикации, спец.предложения и т.п. Мы изготавливаем сайты на системе управления контентом, которая позволяет вам самостоятельно управлять содержимым сайта, но если же вы не хотите себя утруждать и этим, то мы с удовольствием придем вам на помощь.</p> \r\n\r\n<p>Каким образом будет осуществляться поддержка сайта оговаривается в договоре, и так же индивидуально рассчитывается стоимость работ. Все зависит от того, какие объемы информации будут добавляться/изменяться на вашем сайте в установленный промежуток времени. Более подробно о <a href="/articles/4">поддержке сайта</a> вы можете прочитать в соответствующем разделе нашего сайта.</p> ', '2011-08-06 18:59:51', '2011-08-07 11:16:30'),
(2, 'Разработка сайтов', '', '2011-08-07 11:17:08', '2011-08-07 11:17:08'),
(3, 'Продвижение сайтов', '<p>\r\nСайт создан, что дальше, как привлечь на него ваших потенциальных клиентов? Есть конечно же масса вариантов это сделать, например, можно расклеить по городу объявления с адресом вашего сайта, можно звонить по телефонному справочнику и опять же рассказывать о существовании вашего сайта, можно производить рекламу сайта на телевидение за баснословные суммы денег. А можно воспользоваться нашей услугой - &quot;раскрутка сайта&quot; и получать от вашего сайта прибыль <i>;-)</i></p>\r\n<p>\r\nРаскрутка сайта &mdash; это его продвижение по определенным ключевым словам в поисковых системах, чтобы пользователи могли &quot;вбив&quot; в строку поискового запроса какую либо фразу найти ваш сайт. Есть множество способов раскрутки сайта: различные ловушки для поисковых систем написанные программистами, покупка большого количества ссылок на других сайтах, оптимизация текста, банерная реклама и т. д. Таких способов довольно много, но далеко не все из них являются честными - &quot;белыми&quot; методами раскрутки сайта.</p>\r\n<p>\r\nЕстественно, мы используем только белые методы продвижения, разрешенные и даже одобряемые поисковыми системами, это и есть залог успеха наших проектов. Организации, использующие &quot;черные&quot; или &quot;серые&quot; методы раскрутки сайта подвергают вас риску потерять посещаемость вашего сайта на долго (на год, а может и больше). В случае, если поисковые механизмы обнаруживают что то неладное на вашем сайте, то он помещается в&nbsp; &quot;бан&quot;&nbsp;&mdash; это своего рода тюрьма для сайта со своим сроком заключения. Некоторые фирмы, так же занимающиеся созданием и раскруткой сайтов, случается, наоборот ухудшают их позиции из за неквалифицированности сотрудников. В нашей команде работают только опытные специалисты у которых за спиной много лет опыта в сфере работы c web.</p>\r\n<p>\r\nМы поможем вам грамотно подобрать ключевые выражения, по которым потенциальные клиенты будут находить ваш сайт. Будем предоставлять ежемесячный отчет о результатах проделанной работы.</p>\r\n', '2011-08-07 11:17:21', '2011-08-11 19:53:12'),
(4, 'Поддержка сайтов', '<p>Очень редко после создания сайта над ним не нужно произодить никаких действий, для того, чтобы он постоянно приносил Вам доход и еще развивался. В  99,9% случаев, для того, чтобы ваш сайт "жил" необходима его поддержка.</p>\r\n\r\n<p>"Поддержка сайта" — в разном контексте может иметь различное значение: поисковое продвижение(раскрутка сайта), либо поддержание в актуальном состоянии информации.</p>\r\n\r\n<p>Довольно таки часто случается так, что фирма сама не хочет заниматься поддержкой сайта и поручает эту работу специалистам. Для этого у нас и присутствует услуга — "поддержка сайта". Мы будем наполнять сайт информацией, которую вы нам дадите, следить за вашим форумом или гостевой книгой, если такие существуют, обрабатывать фотографии перед вставкой, осуществлять набор текста.</p>', '2011-08-07 11:17:59', '2011-08-07 11:17:59'),
(5, 'Цены', '<p>Для каждого сайта стоимость разработки определяется индивидуально, но я все же попробую дать приблизительные расценки.</p>\r\n<p>1. <strong>Сайт стандартный</strong> от 15000 руб.</p>\r\n<ul>\r\n	<li>современный дизайн;</li>\r\n	<li>система администрирования сайта;</li>\r\n	<li>текстовые разделы;</li>\r\n	<li>каталог товаров.</li>\r\n</ul>\r\n<p>\r\n	2. <strong>Интернет-магазин</strong> от 25000 руб.</p>\r\n<ul>\r\n	<li>современный дизайн;</li>\r\n	<li>система администрирования сайта;</li>\r\n	<li>текстовые разделы;</li>\r\n	<li>каталог товаров, с возможностью заказа товаров;</li>\r\n	<li>корзина покупателя.</li>\r\n</ul>\r\n<p>\r\n	3. <strong>Корпоративный сайт</strong> от 30000 руб.:</p>\r\n<ul>\r\n	<li>современный дизайн;</li>\r\n	<li>система администрирования сайта;</li>\r\n	<li>текстовые разделы;</li>\r\n	<li>каталог товаров;</li>\r\n	<li>фотогалерея;</li>\r\n	<li>новости.</li>\r\n</ul>\r\n<p>При заказе сайта мы предоставляем <strong>бесплатную</strong> помощь в подборе и регистрации домена и хостинга вашего для сайта.</p>\r\n', '2011-08-10 19:53:15', '2011-08-12 19:34:20'),
(6, 'Контакты', '<p>Телефон: 8(950)760-41-91</p>\r\n<p>Email: <a href=''mailto:info@niksan.ru''>info@niksan.ru</a></p>\r\n<p>Icq: 355827560</p>\r\n<p>Skype: niksan_ru</p>', '2011-08-11 19:55:28', '2011-08-12 19:31:57');

-- --------------------------------------------------------

--
-- Структура таблицы `gritter_notices`
--

CREATE TABLE IF NOT EXISTS `gritter_notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `options` text NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_gritter_notices_on_owner_id_and_delivered_at` (`owner_id`,`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `link_tags`
--

CREATE TABLE IF NOT EXISTS `link_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `tagged_id` int(11) DEFAULT NULL,
  `tagged_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_link_tags_on_tagged_id_and_tagged_type` (`tagged_id`,`tagged_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `link_tags`
--

INSERT INTO `link_tags` (`id`, `tag_id`, `tagged_id`, `tagged_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Article', '2011-08-07 11:19:49', '2011-08-07 11:19:49'),
(2, 3, 1, 'Article', '2011-08-07 11:19:51', '2011-08-07 11:19:51'),
(3, 2, 1, 'Article', '2011-08-07 11:19:53', '2011-08-07 11:19:53'),
(4, 1, 2, 'Article', '2011-08-07 11:20:34', '2011-08-07 11:20:34'),
(5, 2, 3, 'Article', '2011-08-07 11:20:43', '2011-08-07 11:20:43'),
(6, 3, 4, 'Article', '2011-08-07 11:20:49', '2011-08-07 11:20:49');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_sites`
--

CREATE TABLE IF NOT EXISTS `portfolio_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_portfolio_sites_on_portfolio_id_and_site_id` (`portfolio_id`,`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `short` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) CHARACTER SET latin1 NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20110512164801'),
('20110512165624'),
('20110512172658'),
('20110512172747'),
('20110512181151'),
('20110512181240'),
('20110513100039'),
('20110513100117'),
('20110527072453'),
('20110527101454'),
('20110711082705'),
('20110711094840'),
('20110711115805'),
('20110811201947'),
('20110814094035'),
('20110821112926');

-- --------------------------------------------------------

--
-- Структура таблицы `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `name`, `description`, `url`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `created_at`, `updated_at`, `date`) VALUES
(1, 'Машиностроительный завод "Автолитмаш"', '<p>Машиностроительный завод &quot;Автолитмаш&quot; - эффективный производитель запасных частей и комплектующих из бронзового и чугунного литья, поставляющий продукцию напрямую и через развитую дилерскую сеть в России, СНГ и ЕС.</p>\r\n<p>Растущие производственные мощности предприятия позволяют ежемесячно выпускать до 200 тонн бронзового и чугунного литья с полной механической обработкой по чертежам и в соответствии с техническими условиями Заказчиков.</p>\r\n<p>Компания &quot;Автолитмаш&quot; основана в 1999 году на базе корпусов производственного объединения Воронежпресс. Сегодня это современный машиностроительный завод, производящий запасные части промышленного оборудования методом центробежного литья, литья в кокиль и землю, преимущественно из сплавов бронзы, латуней, чугуна с последующей механической обработкой. Предприятие характеризует высокий технологический уровень производства.</p>', 'http://avtolitmash.ru', 'Screenshot.png', 'image/png', 1005923, '2011-08-19 20:36:20', '2011-08-11 20:07:07', '2011-08-19 20:36:21', '2011-08-19 19:00:00'),
(2, 'Нефтегазовый кластер Воронежской области', 'Создание отраслевых областных кластеров –стратегических альянсов предприятий области – это одно из направлений стратегии экономического развития Воронежской области губернатора Гордеева А.В.', 'http://ngkvo.ru', 'Screenshot.png', 'image/png', 366774, '2011-08-19 20:36:36', '2011-08-11 20:08:51', '2011-08-19 20:36:37', '2011-08-19 19:00:00'),
(3, 'Стелинвест', 'Строительная компания', 'http://stelinvest.ru', 'Screenshot-2.png', 'image/png', 440809, '2011-08-19 20:36:47', '2011-08-11 20:14:16', '2011-08-19 20:36:48', '2011-08-19 19:00:00'),
(4, 'ОбоВсехАвто', '<p>Воронежский интернет-ресурс для поиска, покупки, продажи автомобилей. Крупнейшая в Черноземье торговая онлайн-площадка транспортных средств. Физические лица и организации могут выгодно предлагать и покупать транспортные средства на данном сайте.</p>\r\n<p>В данный момент сайт полностью переделывается. Начиная от дизайна, заканчивая язком программирования, на котором он написан и базой данных.</p>', 'http://obovsehavto.ru', '2.jpg', 'image/jpeg', 102128, '2011-08-21 10:29:44', '2011-08-19 19:34:17', '2011-08-21 10:31:24', '2010-06-10 19:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link_tags_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`, `link_tags_count`) VALUES
(1, 'разработка сайта', '2011-08-07 11:19:23', '2011-08-07 11:20:34', 2),
(2, 'продвижение сайта', '2011-08-07 11:19:31', '2011-08-07 11:20:43', 2),
(3, 'поддержка сайта', '2011-08-07 11:19:39', '2011-08-07 11:20:49', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
