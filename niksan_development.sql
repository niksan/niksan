-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 30 2011 г., 11:01
-- Версия сервера: 5.1.54
-- Версия PHP: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `niksan_development`
--

-- --------------------------------------------------------

--
-- Структура таблицы `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `active_admin_comments`
--


-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$8IQ7Vv3HoZgGe5DB7B0Sme06k4m9FASBOJfoVmzJgbmO0Y.ZpFvqq', NULL, NULL, '2011-09-26 06:13:47', 2, '2011-09-29 09:49:28', '2011-09-26 06:13:47', '127.0.0.1', '127.0.0.1', '2011-09-26 06:10:05', '2011-09-29 09:49:28');

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
  `permalink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`, `permalink`) VALUES
(1, 'Главная', '<p>Услуги, предоставляемые нашей компанией:</p>\r\n<ul>\r\n  <li>Создание сайта</li>\r\n  <li>Раскрутка сайта</li>\r\n  <li>Поддержка сайта</li>\r\n</ul>\r\n<p>А теперь о каждом из этих пунктов расскажем подробнее:</p>\r\n<h2>Создание сайта</h2>\r\n<p>Мы готовы взяться за работу любой сложности! Начиная от создания небольшого статичного сайта, заканчивая интернет магазином с возможностью выгрузки товаров из 1C, или какой нибудь социальной сетью. За довольно короткий промежуток времени мы накопили хоть и не большое, но довольно интересное <a href="/sites/">портфолио</a>, в котором присутствуют как Воронежские, так и Московские проекты. <a href="/articles/2-sozdanie-saytov">Создание сайта</a> для Воронежских фирм на данный момент является очень выгодным вложением. Создав сайт вы получаете в свое распоряжении еще одного трудолюбивого сотрудника, который будет вам привлекать клиентов круглосуточно, и будет работать безо всяких капризов. А в случае с интернет-магазином - &mdash; это полноценный бизнес!</p>\r\n<h2>Раскрутка сайта</h2>\r\n<p><a href="/articles/3-raskrutka-saytov">Раскрутка сайта</a> &mdash; это продвижение сайта по определенным ключевым словам. Для достижения этой цели мы произведем над вашим сайтом комплекс определенных действий, которые будут способствовать повышению его позиций в поисковых системах.</p> \r\n<p>Перед началом предоставления услуг мы так же проведем в интернете маркетинговое исследование, с целью выяснить какие ключевые выражения вам выгодны и какие сайты интересны вашей целевой аудитории.</p>\r\n<p>Раскрутка сайта может производиться по отдельным регионам, таким как Воронеж, Липецк, Тамбов, Курск и т.п., либо по всей России. Что это означает мы покажем на собственном примере:</p> \r\n<ul>\r\n  <li>Раскрутка по Воронежу: &laquo;сайт Воронеж, раскрутка сайта Воронеж, создание сайта Воронеж&raquo;</li>\r\n  <li>Раскрутка по России: &laquo;сайт, раскрутка сайта, создание сайта&raquo;.</li>\r\n</ul>\r\n<p>Т.е. как мы можем видеть при раскрутке по Воронежу у нас ко всем фразам добавляется слово "<i>Воронеж</i>", при раскрутке по другому региону будет добавляться название региона, по которому должна будет происходить раскрутка.</p>\r\n<p>Конечно же количество запросов при раскрутке "по России" гораздо больше, чем, например, по Воронежу, но это и не всегда необходимо. Если вы собираетесь работать пока в конкретном регионе, то вам соответственно и не за чем переплачивать за раскрутку сайта по России. А если вы осуществляете поставки ваших товаров и услуг по территории всей нашей родины, то вам конечно же будет выгоднее заказать раскрутку по России. Вложенные деньги окупят себя довольно быстро, и начнут приносить прибыль. По своей сути это очень продуктивно работающая рекламная компания.</p>\r\n<h2>Поддержка сайта</h2>\r\n<p>После того, как вы сделали, раскрутили свой сайт, необходимо задуматься о его дальнейшем существовании. Что бы сайт "жил", необходимо за ним следить: вовремя обновлять прайс лист, каталог товаров, информацию о предоставляемых услугах, новости, статьи, публикации, спец.предложения и т.п. Мы изготавливаем сайты на системе управления, которая позволяет вам самостоятельно управлять содержимым сайта, но если же вы не хотите себя утруждать и этим, то мы с удовольствием придем вам на помощь.</p> \r\n<p>Каким образом будет осуществляться поддержка сайта оговаривается в договоре, и так же индивидуально рассчитывается стоимость работ. Все зависит от того, какие объемы информации будут добавляться/изменяться на вашем сайте в установленный промежуток времени. Более подробно о <a href="/articles/4-podderzhka-saytov">поддержке сайта</a> вы можете прочитать в соответствующем разделе нашего сайта.</p>', '2011-08-06 18:59:51', '2011-09-26 11:46:08', 'glavnaya'),
(2, 'Создание сайтов ', '<p>Практически каждый клиент на первой встрече задает один и тот же вопрос: "<em><u>Сколько будет стоить сделать сайт, ну хоть примерно?</u></em>". Дело в том, что этот вопрос равносилен такому: "Сколько будет стоить автомобиль, ну хоть примерно?". Стоимость разработки сайта может варьироваться от нескольких тысяч, до нескольких миллионов рублей, все зависит от требований и поставленных заказчиком задач.<p>\r\n<p>Я попробую вкратце рассказать из чего складыватеся стоимость создания сайта.\r\n<ul>\r\n<li>уровень дизайна;</li>\r\n<li>наличие анимационных и прочих эффектов;</li>\r\n<li>количество и сложность различных программных элементов на сайте. В том числе: каталог товаров, интернет магазин, новостной блок, on-line калькулятор и.т.п.;</li>\r\n<li>объем базовой информации для заполнения сайта;</li>\r\n</ul>\r\n</p>\r\n<h2>Дизайн сайта</h2>\r\n<p>Как и у любого специалиста &mdash; у дизайнера бывают задания разной сложности. Задания посложнее, занимают больше трудочасов, чем обычный дизайн, простой дизайн займет еще меньше времени. Вот из этого времени и складывается стоимость дизайна сайта.</p>\r\n<p>Перед тем как давать задание дизайнеру, вам необходимо определиться с цветовой гаммой и фирменным стилем сайта, его логотипом, подобрать несколько сайтов ваших конкурентов или партнеров, которые вам нравятся, а так же определиться с расположением элементов на странице.  Если же у вас еще нету своего фирменного стиля и логтипа, то дизайнер вам их разработает.</p>\r\n<p><strong>Для того, чтобы сэкономить на разработке дизайна для вашего сайта</strong>, необходимо предоставить: логотип, описание и примеры фирменного стиля компании, ссылки на сайты, котороые вам нравятся.</p>\r\n<p>Если же бюджет на разработку сайта у вас сильно ограничен, то возможно использовать шаблонный дизайн. Шаблоны есть как бесплатные так и условно-платные($3), на просторах интернета и первых и вторых предостаточно. При использовании шаблона, деньги за разработку дизайна не берутся. Но тут нужно понимать, что такой же шаблон мог использовать и кто-то другой и ваш сайт будет не с уникальным дизайном.</p>\r\n<h2>Анимация и прочие эффекты</h2>\r\n<p>Наверняка вы наблюдали на сайтах различные анимационные эффекты: слайд-шоу, красиво увеличивающиеся фотографии, плавно выдвигающиеся пункты меню и т.п. Большинство подобных эффектов реализуется при помощи Java Script, иногда Flash.</p>\r\n<h2>Программные элементы</h2>\r\n<p>Разработка программной части в крупных сайтах является наиболее трудоемкой частью. Для простых сайтов есть уже готовые решения, т.е. никаких уникальных модулей не пишется. К программной части сайта можно отнести разработку: интернет магазина, система расслки писем по подписчикам, различные каталоги товаров, системы тегирования сущностей на сайте и т.п.</p>\r\n<p>Нужно отметить, что программные элементы назвающиеся одинаково, например - интернет-магазин, каталог товаров, могут координально отличаться по сложности на разных сайтах.</p>\r\n<h2>Наполнение сайта</h2>\r\n<p>Как только разработка дизайна, верстка, программная часть сайта готовы, его необходимо наполнить информацией. Наполнением можем заняться мы сами или клиент при помощи системы управления контентом. Самостоятельно наполнить сайт информацией в большинстве случаем не представляет никаких трудностей, эту работу вы можете поручить любому своему сотруднику, имеющему минимальные навыки работы с компьютером.</p>', '2011-08-07 11:17:08', '2011-09-26 11:18:38', 'sozdanie-saytov'),
(3, 'Раскрутка сайтов', '<p>\r\n<a href=''/articles/2-sozdanie-saytov''>Сайт создан</a>, что дальше, как привлечь на него ваших потенциальных клиентов? Есть конечно же масса вариантов это сделать, например, можно расклеить по городу объявления с адресом вашего сайта, можно звонить по телефонному справочнику и опять же рассказывать о существовании вашего сайта, можно производить рекламу сайта на телевидение за баснословные суммы денег. А можно воспользоваться нашей услугой - &quot;раскрутка сайта&quot; и получать от вашего сайта прибыль <i>;-)</i></p>\r\n<p>\r\nРаскрутка сайта &mdash; это его продвижение по определенным ключевым словам в поисковых системах, чтобы пользователи могли &quot;вбив&quot; в строку поискового запроса какую либо фразу найти ваш сайт. Есть множество способов раскрутки сайта: различные ловушки для поисковых систем написанные программистами, покупка большого количества ссылок на других сайтах, оптимизация текста, банерная реклама и т. д. Таких способов довольно много, но далеко не все из них являются честными - &quot;белыми&quot; методами раскрутки сайта.</p>\r\n<p>\r\nЕстественно, мы используем только белые методы продвижения, разрешенные и даже рекомендуемые поисковыми системами, это и есть залог успеха наших проектов. Организации, использующие &quot;черные&quot; или &quot;серые&quot; методы раскрутки сайта подвергают вас риску потерять посещаемость вашего сайта на долго (на год, а может и больше). В случае, если поисковые механизмы обнаруживают что-то неладное на вашем сайте, то он помещается в&nbsp; &quot;бан&quot;&nbsp;&mdash; это своего рода тюрьма для сайта со своим сроком заключения. Некоторые фирмы, так же занимающиеся созданием и раскруткой сайтов, случается, наоборот ухудшают их позиции из за неквалифицированности сотрудников. В нашей команде работают только опытные специалисты у которых за спиной много лет опыта в сфере работы c web.</p>\r\n<p>\r\nМы поможем вам грамотно подобрать ключевые выражения, по которым потенциальные клиенты будут находить ваш сайт. Будем предоставлять ежемесячный отчет о результатах проделанной работы.</p>\r\n', '2011-08-07 11:17:21', '2011-09-26 11:49:33', 'raskrutka-saytov'),
(4, 'Поддержка сайтов', '<p>Очень редко после <a href=''/articles/2-sozdanie-saytov''>создания сайта</a> над ним не нужно произодить никаких действий, для того, чтобы он постоянно приносил Вам доход и еще развивался. В  99,9% случаев, для того, чтобы ваш сайт "жил" необходима его поддержка.</p>\r\n<p>"Поддержка сайта" — в разном контексте может иметь различное значение: поисковое продвижение(<a href = ''/articles/3-raskrutka-saytov''>раскрутка сайта</a>), либо поддержание в актуальном состоянии информации.</p>\r\n<p>Довольно таки часто случается так, что фирма сама не хочет заниматься поддержкой сайта и поручает эту работу специалистам. Для этого у нас и присутствует услуга — "поддержка сайта". Мы будем наполнять сайт информацией, которую вы нам дадите, следить за вашим форумом или гостевой книгой, если такие существуют, обрабатывать фотографии перед вставкой, осуществлять набор текста.</p>', '2011-08-07 11:17:59', '2011-09-26 11:50:42', 'podderzhka-saytov'),
(5, 'Цены', '<h2>Создание сайта</h2>\r\n<p>Для каждого сайта стоимость <a href=''/articles/2-sozdanie-saytov''>создания</a> определяется индивидуально, но я все же попробую дать приблизительные расценки.</p>\r\n<p>1. <strong>Сайт стандартный</strong> от 15000 руб.</p>\r\n<ul>\r\n<li>современный дизайн;</li>\r\n<li>система администрирования сайта;</li>\r\n<li>текстовые разделы;</li>\r\n<li>каталог товаров.</li>\r\n<li>форма обратной связи</li>\r\n</ul>\r\n<p>\r\n2. <strong>Интернет-магазин</strong> от 30000 руб.</p>\r\n<ul>\r\n<li>современный дизайн;</li>\r\n<li>система администрирования сайта;</li>\r\n<li>текстовые разделы;</li>\r\n<li>каталог товаров, с возможностью заказа товаров;</li>\r\n<li>корзина покупателя.</li>\r\n</ul>\r\n<p>\r\n3. <strong>Корпоративный сайт</strong> от 30000 руб.:</p>\r\n<ul>\r\n<li>современный дизайн;</li>\r\n<li>система администрирования сайта;</li>\r\n<li>текстовые разделы;</li>\r\n<li>каталог товаров;</li>\r\n<li>фотогалерея;</li>\r\n<li>новости.</li>\r\n</ul>\r\n<p>При заказе сайта мы предоставляем <strong>бесплатную</strong> помощь в подборе и регистрации домена и хостинга вашего для сайта.</p>\r\n<h2>Раскрутка сайта</h2>\r\n<p>Стоимость <a href=''/articles/3-raskrutka-saytov''>раскрутки</a> расчитывается строго индивидуально, так как количество конкурентов и желаемый охват аудитории у каждого разные.<p>\r\n<p>В типичной ситуации при раскрутке по Воронежу, со средним кол-вом конкурентов и пятью ключевыми фразами стоимость работ по продвижению сайта составит 5 т.р. в месяц. Оплата при раскрутке производится ежемесячно, т.к. если сайтом перестать заниматься то его позиции скорее всего будут стремительно падать.</p>\r\n<h2>Поддержка сайта</h2>\r\n<p><a href=''/articles/4-podderzhka-saytov''>Поддержка сайта</a> рассчитывается в зависимости от объема работы в месяц. Минимальная стоимость составит 3 т.р. в месяц. Вы так же можете делать разовые обращения, без абонентской платы.</p>', '2011-08-10 19:53:15', '2011-09-26 11:53:52', 'tseny'),
(6, 'Контакты', '<p>Телефон: 8(950)760-41-91</p>\r\n<p>Email: <a href=''mailto:info@niksan.ru''>info@niksan.ru</a></p>\r\n<p>Icq: 355827560</p>\r\n<p>Skype: <a href=''skype:niksan_ru?call''>niksan_ru</a></p>', '2011-08-11 19:55:28', '2011-09-26 11:19:50', 'kontakty');

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `created_at`, `updated_at`, `permalink`) VALUES
(1, 'Сайт NikSan ', '2011-09-12 09:01:53', '2011-09-29 08:46:50', 'sayt-niksan');

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

--
-- Дамп данных таблицы `gritter_notices`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `link_tags`
--

INSERT INTO `link_tags` (`id`, `tag_id`, `tagged_id`, `tagged_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Article', '2011-08-07 11:19:49', '2011-08-07 11:19:49'),
(2, 3, 1, 'Article', '2011-08-07 11:19:51', '2011-08-07 11:19:51'),
(3, 2, 1, 'Article', '2011-08-07 11:19:53', '2011-08-07 11:19:53'),
(4, 1, 2, 'Article', '2011-08-07 11:20:34', '2011-08-07 11:20:34'),
(5, 2, 3, 'Article', '2011-08-07 11:20:43', '2011-08-07 11:20:43'),
(6, 3, 4, 'Article', '2011-08-07 11:20:49', '2011-08-07 11:20:49'),
(7, 1, 1, 'Post', '2011-08-26 16:56:49', '2011-08-26 16:56:49');

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

--
-- Дамп данных таблицы `messages`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `description`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `created_at`, `updated_at`) VALUES
(1, 'создание сайта', NULL, NULL, NULL, NULL, NULL, '2011-09-13 11:36:16', '2011-09-13 11:36:16'),
(2, 'раскрутка сайта', NULL, NULL, NULL, NULL, NULL, '2011-09-13 11:36:30', '2011-09-13 11:36:30');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `portfolio_sites`
--

INSERT INTO `portfolio_sites` (`id`, `portfolio_id`, `site_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2011-09-13 19:23:00', '2011-09-13 19:23:00'),
(2, 1, 2, '2011-09-13 19:24:58', '2011-09-13 19:24:58'),
(3, 1, 1, '2011-09-13 19:25:04', '2011-09-13 19:25:04'),
(4, 1, 4, '2011-09-13 19:25:10', '2011-09-13 19:25:10'),
(5, 2, 1, '2011-09-13 19:25:17', '2011-09-13 19:25:17');

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
  `blog_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `short`, `body`, `created_at`, `updated_at`, `date`, `blog_id`, `permalink`) VALUES
(1, 'Новая версия сайта ', 'Готова и опубликована новая версия сайта http://niksan.ru', 'Готова и опубликована новая версия сайта <a href=''http://niksan.ru''>http://niksan.ru</a>', '2011-09-12 10:07:55', '2011-09-29 08:39:16', '2011-08-25 20:00:00', 1, 'novaya-versiya-sayta'),
(2, 'Первые доработки ', 'Сайт постепенно допиливается. Основные разделы готовы, осталось добавить побольше информации.', 'Наш сайт постепенно приобретает "человеческий" вид: произведены доработки в дизайне, структуре и программной части сайта. Но многое все еще предстоит сделать. Очень хочется по настоящему развить здесь раздел - "<a href=''/blog''>блог</a>". Из за поступления заказов работа над своим идет не так быстро, как хотелось бы.', '2011-09-29 09:54:51', '2011-09-29 10:07:46', '2011-09-29 09:55:00', 1, 'pervye-dorabotki');

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
('20110821112926'),
('20110912084609'),
('20110912102942'),
('20110914155021'),
('20110914155118'),
('20110914162041'),
('20110925124621'),
('20110925164627'),
('20110925164628'),
('20110926101927'),
('20110929074752'),
('20110929083419'),
('20110929083951'),
('20110930065215');

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
  `task` text,
  `solution` text,
  `permalink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `name`, `description`, `url`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `created_at`, `updated_at`, `date`, `task`, `solution`, `permalink`) VALUES
(1, 'Машиностроительный завод "Автолитмаш" ', '', 'http://avtolitmash.ru', 'Screenshot.png', 'image/png', 1005923, '2011-08-19 20:36:20', '2011-08-11 20:07:07', '2011-09-29 08:24:58', '2011-08-19 19:00:00', '<a href=''/articles/2-sozdanie-saytov''>создание сайта</a>.', ' разработан индивидуальный дизайн, структура сайта.', 'mashinostroitelnyy-zavod-avtolitmash'),
(2, 'Нефтегазовый кластер Воронежской области ', '', 'http://ngkvo.ru', 'Screenshot.png', 'image/png', 366774, '2011-08-19 20:36:36', '2011-08-11 20:08:51', '2011-09-29 08:24:58', '2011-08-19 19:00:00', ' <a href=''/articles/2-sozdanie-saytov''>создание сайта</a>.', 'разработан индивидуальный дизайн, структура сайта.', 'neftegazovyy-klaster-voronezhskoy-oblasti'),
(3, 'Стелинвест ', '', 'http://stelinvest.ru', 'Screenshot-2.png', 'image/png', 440809, '2011-08-19 20:36:47', '2011-08-11 20:14:16', '2011-09-29 08:24:58', '2011-08-19 19:00:00', '<a href=''/articles/2-sozdanie-saytov''>создание сайта</a>.', 'разработан индивидуальный дизайн, структура сайта, написаны специфичные для сферы деятельности компании модули CMS.', 'stelinvest'),
(4, 'ОбоВсехАвто ', '<p>Воронежский интернет-ресурс для поиска, покупки, продажи автомобилей. Крупнейшая в Черноземье торговая онлайн-площадка транспортных средств. Физические лица и организации могут выгодно предлагать и покупать транспортные средства на данном сайте.</p>', 'http://obovsehavto.ru', '2.jpg', 'image/jpeg', 102128, '2011-08-21 10:29:44', '2011-08-19 19:34:17', '2011-09-29 08:24:59', '2010-06-10 19:00:00', 'польностью переделать сайт, внедрить современный дизайн, изменить структуру, улучшить юзабилити.', 'ведутся работы.', 'obovsehavto');

-- --------------------------------------------------------

--
-- Структура таблицы `site_technologies`
--

CREATE TABLE IF NOT EXISTS `site_technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `technology_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `site_technologies`
--

INSERT INTO `site_technologies` (`id`, `site_id`, `technology_id`, `created_at`, `updated_at`) VALUES
(1, 3, 9, '2011-09-14 16:28:42', '2011-09-14 16:28:42'),
(2, 3, 10, '2011-09-14 16:28:54', '2011-09-14 16:28:54'),
(3, 3, 2, '2011-09-14 16:29:00', '2011-09-14 16:29:00'),
(4, 3, 8, '2011-09-14 17:26:53', '2011-09-14 17:26:53');

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
  `permalink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`, `link_tags_count`, `permalink`) VALUES
(1, 'создание сайта ', '2011-08-07 11:19:23', '2011-09-30 06:58:18', 3, 'sozdanie-sayta'),
(2, 'раскрутка сайта ', '2011-08-07 11:19:31', '2011-09-30 06:58:19', 2, 'raskrutka-sayta'),
(3, 'поддержка сайта ', '2011-08-07 11:19:39', '2011-09-30 06:58:19', 2, 'podderzhka-sayta');

-- --------------------------------------------------------

--
-- Структура таблицы `technologies`
--

CREATE TABLE IF NOT EXISTS `technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `technologies`
--

INSERT INTO `technologies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ruby on Rails', '2011-09-14 15:56:53', '2011-09-14 15:56:53'),
(2, 'jQuery', '2011-09-14 15:57:05', '2011-09-14 15:57:05'),
(3, 'Typus', '2011-09-14 15:57:14', '2011-09-14 15:57:14'),
(4, 'Sass', '2011-09-14 15:57:22', '2011-09-14 15:57:22'),
(5, 'Compass', '2011-09-14 15:57:29', '2011-09-14 15:57:29'),
(6, 'Haml', '2011-09-14 15:57:35', '2011-09-14 15:57:35'),
(7, 'Flash', '2011-09-14 15:57:40', '2011-09-14 15:57:40'),
(8, 'NikSan CMS', '2011-09-14 15:58:30', '2011-09-14 15:58:30'),
(9, 'css3', '2011-09-14 15:59:27', '2011-09-14 15:59:27'),
(10, 'html', '2011-09-14 15:59:33', '2011-09-14 15:59:33'),
(11, 'html5', '2011-09-14 15:59:36', '2011-09-14 15:59:36'),
(12, 'css', '2011-09-14 15:59:50', '2011-09-14 15:59:50'),
(13, 'ruby', '2011-09-14 16:00:03', '2011-09-14 16:00:03'),
(14, 'Devise', '2011-09-14 16:18:11', '2011-09-14 16:18:11'),
(15, 'Paperclip', '2011-09-14 16:18:19', '2011-09-14 16:18:19');
