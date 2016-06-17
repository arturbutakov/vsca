-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 02 2016 г., 09:11
-- Версия сервера: 5.5.48
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vsca`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hash` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`, `hash`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '7c245a91da46a7082ab47507c5218658');

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `name`, `link`) VALUES
(1, 'Vkontakte', 'https://vk.com/vscavvo'),
(2, 'Facebook', 'https://www.facebook.com/vscavvo/'),
(3, 'Instagram', 'https://www.instagram.com/vsca_vvo/');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `info` text NOT NULL,
  `descriptionShort` text NOT NULL,
  `descriptionLong` text
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `info`, `descriptionShort`, `descriptionLong`) VALUES
(1, 'ОТКРЫТЫЙ УРОК "УПРАВЛЕНИЕ КРЕАТИВНЫМ проектом"', '1.jpg', '9 января (суббота) / 16:00-18:00 Галерея "Арка" / Светланская, 5', 'Спикер: Наталья Чернова, издатель и генеральный директор журнала Interview (Andy Warhol’s Interview), г. Москва\n\nВШСИ продолжает серию открытых уроков и приглашает под занавес новогодних каникул пообщаться с руководством российской версии периодического издания, основанного Энди Уорхолом.\n\n', 'Темы обсуждения: - Управление креативным проектом: как начать, как продолжать, как искать деньги на него. - Управление креативным сообществом с учетом тенденции роста поколения творческих профессий. Принципы неформального управления в условиях информационной экономики. - Креативные коллаборации как будущее креативной экономики. Тенденции рынка креативного и рынка люкс. Как они вместе работают.Interview — российский журнал, аналог американской версии журнала, основанного Энди Уорхолом в 1969 году в США. Издание публикует интервью выдающихся художников, музыкантов, дизайнеров, режиссёров и актёров.  Наталья Чернова - топ-менеджер, редактор, работает в ИД "Интервью" с момента его основания в 2011 году. Профессиональная деятельность Натальи началась в 1998 году в Издательском Доме Independent Media c позиции помощника главного редактора журнала Cosmopolitan. С 2003 по 2010 год Наталья работала в издательстве Condé Nast Russia. С 2007 по 2010 год в качестве управляющего редактора журнала Vogue занималась организацией редакционных процессов. При ее активном участии разработана концепция журнальных приложений – Vogue Gourmet, Vogue Kids, Vogue Beauty, Vogue Best. Наталья окончила Тверской государственный университет по специальности "лингвист, переводчик", а также получила диплом по специальности "менеджмент" в Высшей школе экономики, где с 2014 года читает курс "Управление медиапроектами".  ВХОД СВОБОДНЫЙ 18+'),
(2, 'АРТ-КРИТИКА: КАК ПИСАТЬ ТЕКСТЫ ОБ ИСКУССТВЕ', '2.jpg', '7 марта (понедельник) 17:00-19:00\nМастер-класс (вход по записи на vscavvo@gmail.com, свободная цена взноса)\nМесто: Музей "Артэтаж", ул. Фокина, 25, 3 этаж', 'Каким полям культурного производства принадлежит художественная критика? Когда и как появилась критика в искусстве? Чем обусловлено становление современной арт-критики и какова ее реальная роль в арт-системе сегодня? Ответы на эти и другие вопросы из истории художественной критики вы узнаете из лекции Марии Кравцовой.\n\nОсобенно рекомендуем журналистам, которые хотят научиться писать о культуре в целом и искусстве в частности.', 'Мария Кравцова - автор с дотошностью историка-профессионала, который может составить текст, понятный каждому. На мастер-классе Мария поделится секретами рецепта по производству качественного арт-текста и расскажет о различных методах его написания. В выходные 5-7 марта ВШСИ подготовила для аудитории Владивостока насыщенный образовательный интенсив от Марии Кравцовой (Москва) – историка искусства, арт-критика, куратора, преподавателя философского факультета Высшей школы экономики, шеф-редактора портала по искусству Artguide.com и русской версии журнала GARAGE.'),
(3, 'ОТКРЫТЫЙ УРОК "УПРАВЛЕНИЕ КРЕАТИВНЫМ ПРОЕКТОМ"', '3.jpg', '9 января (суббота) / 16:00-18:00 Галерея "Арка" / Светланская, 5', 'Спикер: Наталья Чернова, издатель и генеральный директор журнала Interview (Andy Warhol’s Interview), г. Москва\r\n\r\nВШСИ продолжает серию открытых уроков и приглашает под занавес новогодних каникул пообщаться с руководством российской версии периодического издания, основанного Энди Уорхолом.\r\n\r\n', 'Темы обсуждения: - Управление креативным проектом: как начать, как продолжать, как искать деньги на него. - Управление креативным сообществом с учетом тенденции роста поколения творческих профессий. Принципы неформального управления в условиях информационной экономики. - Креативные коллаборации как будущее креативной экономики. Тенденции рынка креативного и рынка люкс. Как они вместе работают.Interview — российский журнал, аналог американской версии журнала, основанного Энди Уорхолом в 1969 году в США. Издание публикует интервью выдающихся художников, музыкантов, дизайнеров, режиссёров и актёров.  Наталья Чернова - топ-менеджер, редактор, работает в ИД "Интервью" с момента его основания в 2011 году. Профессиональная деятельность Натальи началась в 1998 году в Издательском Доме Independent Media c позиции помощника главного редактора журнала Cosmopolitan. С 2003 по 2010 год Наталья работала в издательстве Condé Nast Russia. С 2007 по 2010 год в качестве управляющего редактора журнала Vogue занималась организацией редакционных процессов. При ее активном участии разработана концепция журнальных приложений – Vogue Gourmet, Vogue Kids, Vogue Beauty, Vogue Best. Наталья окончила Тверской государственный университет по специальности "лингвист, переводчик", а также получила диплом по специальности "менеджмент" в Высшей школе экономики, где с 2014 года читает курс "Управление медиапроектами".  ВХОД СВОБОДНЫЙ 18+'),
(4, 'АРТ-КРИТИКА: КАК ПИСАТЬ ТЕКСТЫ ОБ ИСКУССТВЕ', '4.jpg', '7 марта (понедельник) 17:00-19:00\r\nМастер-класс (вход по записи на vscavvo@gmail.com, свободная цена взноса)\r\nМесто: Музей "Артэтаж", ул. Фокина, 25, 3 этаж', 'Каким полям культурного производства принадлежит художественная критика? Когда и как появилась критика в искусстве? Чем обусловлено становление современной арт-критики и какова ее реальная роль в арт-системе сегодня? Ответы на эти и другие вопросы из истории художественной критики вы узнаете из лекции Марии Кравцовой.\r\n\r\nОсобенно рекомендуем журналистам, которые хотят научиться писать о культуре в целом и искусстве в частности.', 'Мария Кравцова - автор с дотошностью историка-профессионала, который может составить текст, понятный каждому. На мастер-классе Мария поделится секретами рецепта по производству качественного арт-текста и расскажет о различных методах его написания. В выходные 5-7 марта ВШСИ подготовила для аудитории Владивостока насыщенный образовательный интенсив от Марии Кравцовой (Москва) – историка искусства, арт-критика, куратора, преподавателя философского факультета Высшей школы экономики, шеф-редактора портала по искусству Artguide.com и русской версии журнала GARAGE.'),
(5, 'ОТКРЫТЫЙ УРОК "УПРАВЛЕНИЕ КРЕАТИВНЫМ ПРОЕКТОМ"', '5.jpg', '9 января (суббота) / 16:00-18:00 Галерея "Арка" / Светланская, 5', 'Спикер: Наталья Чернова, издатель и генеральный директор журнала Interview (Andy Warhol’s Interview), г. Москва\r\n\r\nВШСИ продолжает серию открытых уроков и приглашает под занавес новогодних каникул пообщаться с руководством российской версии периодического издания, основанного Энди Уорхолом.\r\n\r\n', 'Темы обсуждения: - Управление креативным проектом: как начать, как продолжать, как искать деньги на него. - Управление креативным сообществом с учетом тенденции роста поколения творческих профессий. Принципы неформального управления в условиях информационной экономики. - Креативные коллаборации как будущее креативной экономики. Тенденции рынка креативного и рынка люкс. Как они вместе работают.Interview — российский журнал, аналог американской версии журнала, основанного Энди Уорхолом в 1969 году в США. Издание публикует интервью выдающихся художников, музыкантов, дизайнеров, режиссёров и актёров.  Наталья Чернова - топ-менеджер, редактор, работает в ИД "Интервью" с момента его основания в 2011 году. Профессиональная деятельность Натальи началась в 1998 году в Издательском Доме Independent Media c позиции помощника главного редактора журнала Cosmopolitan. С 2003 по 2010 год Наталья работала в издательстве Condé Nast Russia. С 2007 по 2010 год в качестве управляющего редактора журнала Vogue занималась организацией редакционных процессов. При ее активном участии разработана концепция журнальных приложений – Vogue Gourmet, Vogue Kids, Vogue Beauty, Vogue Best. Наталья окончила Тверской государственный университет по специальности "лингвист, переводчик", а также получила диплом по специальности "менеджмент" в Высшей школе экономики, где с 2014 года читает курс "Управление медиапроектами".  ВХОД СВОБОДНЫЙ 18+'),
(6, 'ОТКРЫТЫЙ УРОК "УПРАВЛЕНИЕ КРЕАТИВНЫМ ПРОЕКТОМ"', '5.jpg', '9 января (суббота) / 16:00-18:00 Галерея "Арка" / Светланская, 5', 'Спикер: Наталья Чернова, издатель и генеральный директор журнала Interview (Andy Warhol’s Interview), г. Москва\r\n\r\nВШСИ продолжает серию открытых уроков и приглашает под занавес новогодних каникул пообщаться с руководством российской версии периодического издания, основанного Энди Уорхолом.\r\n\r\n', 'Темы обсуждения: - Управление креативным проектом: как начать, как продолжать, как искать деньги на него. - Управление креативным сообществом с учетом тенденции роста поколения творческих профессий. Принципы неформального управления в условиях информационной экономики. - Креативные коллаборации как будущее креативной экономики. Тенденции рынка креативного и рынка люкс. Как они вместе работают.Interview — российский журнал, аналог американской версии журнала, основанного Энди Уорхолом в 1969 году в США. Издание публикует интервью выдающихся художников, музыкантов, дизайнеров, режиссёров и актёров.  Наталья Чернова - топ-менеджер, редактор, работает в ИД "Интервью" с момента его основания в 2011 году. Профессиональная деятельность Натальи началась в 1998 году в Издательском Доме Independent Media c позиции помощника главного редактора журнала Cosmopolitan. С 2003 по 2010 год Наталья работала в издательстве Condé Nast Russia. С 2007 по 2010 год в качестве управляющего редактора журнала Vogue занималась организацией редакционных процессов. При ее активном участии разработана концепция журнальных приложений – Vogue Gourmet, Vogue Kids, Vogue Beauty, Vogue Best. Наталья окончила Тверской государственный университет по специальности "лингвист, переводчик", а также получила диплом по специальности "менеджмент" в Высшей школе экономики, где с 2014 года читает курс "Управление медиапроектами".  ВХОД СВОБОДНЫЙ 18+');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `description`, `link`) VALUES
(1, 'Артэтаж', '1.jpg', 'Музей современного искусства', 'https://www.facebook.com/Artetagemuseum'),
(2, 'Арка', '2.jpg', 'Галерея современного искусства', 'http://arkagallery.ru/'),
(3, 'ЗАРЯ', '3.jpeg', 'Центр современного искусства', 'http://zaryavladivostok.ru/ru/homepage'),
(4, 'Vladivostok', '4.png', 'Хостел', 'http://hostelvladivostok.com/'),
(5, 'Библиотеки Владивостока', '5.jpg', 'Централизованная библиотечная система', 'http://www.vladlib.ru/'),
(6, 'Монастырёв.рф', '6.png', 'Аптечный интернет-гипермаркет', 'http://xn--80ae2aeeogi5fxc.xn--p1ai/');

-- --------------------------------------------------------

--
-- Структура таблицы `programs`
--

CREATE TABLE IF NOT EXISTS `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `info` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `programs`
--

INSERT INTO `programs` (`id`, `name`, `image`, `info`, `description`) VALUES
(1, 'Куратор', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi fugit vero in eaque dolore, officia itaque cumque quasi eius, deleniti mollitia, rerum corporis aperiam porro dolor quae sit temporibus culpa.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus saepe quam ducimus, vitae quaerat dolore dolor. Nesciunt amet suscipit animi repellendus dolore dolorum dolor, ea nobis placeat voluptas vitae nihil laborum facilis quod, iusto error harum laboriosam commodi unde corrupti. Debitis perferendis laboriosam nostrum consectetur, consequatur quo ex itaque, consequuntur modi ut nisi. Ea quos, inventore necessitatibus, pariatur quia officia ex deserunt temporibus unde earum, reiciendis explicabo maiores tempore consectetur.'),
(2, 'Художник', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi fugit vero in eaque dolore, officia itaque cumque quasi eius, deleniti mollitia, rerum corporis aperiam porro dolor quae sit temporibus culpa.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus saepe quam ducimus, vitae quaerat dolore dolor. Nesciunt amet suscipit animi repellendus dolore dolorum dolor, ea nobis placeat voluptas vitae nihil laborum facilis quod, iusto error harum laboriosam commodi unde corrupti. Debitis perferendis laboriosam nostrum consectetur, consequatur quo ex itaque, consequuntur modi ut nisi. Ea quos, inventore necessitatibus, pariatur quia officia ex deserunt temporibus unde earum, reiciendis explicabo maiores tempore consectetur.'),
(3, 'Арт-критик', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi fugit vero in eaque dolore, officia itaque cumque quasi eius, deleniti mollitia, rerum corporis aperiam porro dolor quae sit temporibus culpa.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus saepe quam ducimus, vitae quaerat dolore dolor. Nesciunt amet suscipit animi repellendus dolore dolorum dolor, ea nobis placeat voluptas vitae nihil laborum facilis quod, iusto error harum laboriosam commodi unde corrupti. Debitis perferendis laboriosam nostrum consectetur, consequatur quo ex itaque, consequuntur modi ut nisi. Ea quos, inventore necessitatibus, pariatur quia officia ex deserunt temporibus unde earum, reiciendis explicabo maiores tempore consectetur.');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `name`, `image`, `description`, `link`) VALUES
(1, 'Читальный зал «Полка»', '1.jpg', 'Читальный зал для арт-ценителей с подборкой отечественой и зарубежной периодики, каталогов выставок и работ художников, художественной и non-fiction литературы о современном искусстве и не только.\r\n\r\nКафе "Кофеин"\r\nДворик Старого ГУМа\r\nВладивосток, ул. Светланская, 33/3\r\n9:00-22:00\r\nВход свободный', 'http://vk.com/polka_vladivostok'),
(2, 'Проект «Художники ВДК»', '2.jpg', 'Свежий систематизированный архив практик художников Владивостока, действовавших последние 50 лет, построенный на профилях художников, работающих в поле современного искусства с информацией о их проектах, фактах из биографии, фотогалереей их основных работ, публикациями в СМИ и прочим.', '');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `info` text NOT NULL,
  `portfolio` text NOT NULL,
  `programId` int(11) NOT NULL,
  `waveId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `image`, `info`, `portfolio`, `programId`, `waveId`) VALUES
(1, 'Денис Коробов', '1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 2, 1),
(2, 'Кира Евсеенко', '2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 1, 1),
(3, 'Анна Солдатова', '3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 2, 1),
(4, 'Анна Солдатова', '4.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 2, 2),
(5, 'Кира Евсеенко', '5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 1, 2),
(6, 'Денис Коробов', '6.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 2, 2),
(7, 'Кира Евсеенко', '7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 1, 3),
(8, 'Денис Коробов', '8.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 2, 3),
(9, 'Анна Солдатова', '9.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque!', '', 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `info` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `portfolio` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `image`, `info`, `status`, `portfolio`) VALUES
(1, 'Кира Евсеенко', '1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 1, 'Портфолио Киры Евсеенко'),
(2, 'Денис Коробов', '2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 1, 'Портфолио Дениса Коробова'),
(3, 'Анна Солдатова', '3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 1, 'Портфолио Анны Солдатовой'),
(4, 'Кира Евсеенко', '4.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae laoreet purus, et fringilla lacus. Aenean scelerisque massa vel dolor porttitor, non tempus nibh consequat. Nunc nec quam condimentum, tristique libero in, lobortis leo. Aenean sit amet nisl at ex auctor ornare a non nisl. Aenean faucibus bibendum enim nec mollis. Vestibulum tincidunt lorem sed auctor molestie. Proin et ligula viverra justo venenatis placerat. Nulla vulputate quam cursus justo elementum ornare. Donec non lorem quis mauris aliquet euismod. Vivamus euismod erat aliquet neque iaculis, ac malesuada metus interdum.\n\nFusce vehicula est purus, id mollis tellus ultrices quis. Proin ut quam at odio luctus gravida nec ac mauris. Vestibulum tristique neque ut finibus venenatis. Donec quam leo, commodo non velit sed, pharetra pulvinar est. Donec gravida viverra aliquet. Nunc eget cursus urna. Donec ac elit vestibulum, dignissim felis et, volutpat neque. Etiam vehicula auctor dui, id sodales est gravida ut. Curabitur quis est eros. Sed dui sem, tincidunt in mi et, tempor fringilla metus.\n\nDonec facilisis tellus sed sem ornare, non gravida ex sollicitudin. Phasellus bibendum gravida feugiat. Nulla id volutpat magna. Nunc non leo urna. Quisque facilisis lacus ut orci vulputate, in dictum leo malesuada. Donec convallis gravida erat eget imperdiet. Curabitur dapibus, leo nec condimentum posuere, magna tortor vestibulum nisi, in venenatis sem odio bibendum velit.\n\nDonec iaculis, augue vel ultricies rutrum, erat sapien condimentum quam, quis molestie lacus velit sit amet risus. Aenean tristique eros sit amet elit venenatis molestie. Sed augue orci, condimentum sit amet condimentum in, mollis id lectus. Donec ut feugiat lectus. Phasellus lobortis convallis magna, ut commodo nisl malesuada eu. Donec eget turpis pharetra, varius ante non, mattis elit. Aliquam commodo ex lorem, ac interdum dui molestie a. Nulla vitae accumsan nunc, nec placerat orci. Sed tempus consectetur nibh. Aenean et augue a tortor cursus efficitur a et ligula. Aliquam euismod dapibus eros non dictum. Praesent massa ex, porttitor id odio vel, facilisis laoreet lorem. In eu varius risus. Duis eget purus massa.\n\nVestibulum finibus odio at ipsum tincidunt auctor vitae eget est. Fusce mollis lorem at nibh pulvinar placerat. Nulla a iaculis velit. Proin ut quam ultrices purus aliquam pretium a porta lectus. Quisque dolor erat, dapibus ac feugiat convallis, facilisis id urna. In commodo augue nec eros porta rhoncus. Fusce vel porttitor arcu, nec aliquam lacus. In quis felis feugiat diam ornare egestas eget quis erat. Morbi iaculis efficitur cursus. Morbi ac nulla a turpis ullamcorper posuere. Donec venenatis sapien id aliquam hendrerit. Vestibulum porta turpis in erat luctus facilisis. Curabitur et nisl vel elit mollis facilisis. In mattis dolor sapien, hendrerit porttitor tellus molestie sed.\n\nNam feugiat a nibh ac gravida. Donec accumsan orci sapien, non mollis ante aliquet et. Integer efficitur dolor nisl, in congue mauris sodales eu. In quis mi felis. Nam id felis dui. Sed euismod, est eu semper gravida, enim nibh ultrices odio, ac lacinia nibh erat in dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse turpis eros, facilisis non nulla quis, porta convallis massa.'),
(5, 'Денис Коробов', '5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae laoreet purus, et fringilla lacus. Aenean scelerisque massa vel dolor porttitor, non tempus nibh consequat. Nunc nec quam condimentum, tristique libero in, lobortis leo. Aenean sit amet nisl at ex auctor ornare a non nisl. Aenean faucibus bibendum enim nec mollis. Vestibulum tincidunt lorem sed auctor molestie. Proin et ligula viverra justo venenatis placerat. Nulla vulputate quam cursus justo elementum ornare. Donec non lorem quis mauris aliquet euismod. Vivamus euismod erat aliquet neque iaculis, ac malesuada metus interdum.  Fusce vehicula est purus, id mollis tellus ultrices quis. Proin ut quam at odio luctus gravida nec ac mauris. Vestibulum tristique neque ut finibus venenatis. Donec quam leo, commodo non velit sed, pharetra pulvinar est. Donec gravida viverra aliquet. Nunc eget cursus urna. Donec ac elit vestibulum, dignissim felis et, volutpat neque. Etiam vehicula auctor dui, id sodales est gravida ut. Curabitur quis est eros. Sed dui sem, tincidunt in mi et, tempor fringilla metus.  Donec facilisis tellus sed sem ornare, non gravida ex sollicitudin. Phasellus bibendum gravida feugiat. Nulla id volutpat magna. Nunc non leo urna. Quisque facilisis lacus ut orci vulputate, in dictum leo malesuada. Donec convallis gravida erat eget imperdiet. Curabitur dapibus, leo nec condimentum posuere, magna tortor vestibulum nisi, in venenatis sem odio bibendum velit.  Donec iaculis, augue vel ultricies rutrum, erat sapien condimentum quam, quis molestie lacus velit sit amet risus. Aenean tristique eros sit amet elit venenatis molestie. Sed augue orci, condimentum sit amet condimentum in, mollis id lectus. Donec ut feugiat lectus. Phasellus lobortis convallis magna, ut commodo nisl malesuada eu. Donec eget turpis pharetra, varius ante non, mattis elit. Aliquam commodo ex lorem, ac interdum dui molestie a. Nulla vitae accumsan nunc, nec placerat orci. Sed tempus consectetur nibh. Aenean et augue a tortor cursus efficitur a et ligula. Aliquam euismod dapibus eros non dictum. Praesent massa ex, porttitor id odio vel, facilisis laoreet lorem. In eu varius risus. Duis eget purus massa.  Vestibulum finibus odio at ipsum tincidunt auctor vitae eget est. Fusce mollis lorem at nibh pulvinar placerat. Nulla a iaculis velit. Proin ut quam ultrices purus aliquam pretium a porta lectus. Quisque dolor erat, dapibus ac feugiat convallis, facilisis id urna. In commodo augue nec eros porta rhoncus. Fusce vel porttitor arcu, nec aliquam lacus. In quis felis feugiat diam ornare egestas eget quis erat. Morbi iaculis efficitur cursus. Morbi ac nulla a turpis ullamcorper posuere. Donec venenatis sapien id aliquam hendrerit. Vestibulum porta turpis in erat luctus facilisis. Curabitur et nisl vel elit mollis facilisis. In mattis dolor sapien, hendrerit porttitor tellus molestie sed.  Nam feugiat a nibh ac gravida. Donec accumsan orci sapien, non mollis ante aliquet et. Integer efficitur dolor nisl, in congue mauris sodales eu. In quis mi felis. Nam id felis dui. Sed euismod, est eu semper gravida, enim nibh ultrices odio, ac lacinia nibh erat in dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse turpis eros, facilisis non nulla quis, porta convallis massa.'),
(6, 'Анна Солдатова', '6.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae laoreet purus, et fringilla lacus. Aenean scelerisque massa vel dolor porttitor, non tempus nibh consequat. Nunc nec quam condimentum, tristique libero in, lobortis leo. Aenean sit amet nisl at ex auctor ornare a non nisl. Aenean faucibus bibendum enim nec mollis. Vestibulum tincidunt lorem sed auctor molestie. Proin et ligula viverra justo venenatis placerat. Nulla vulputate quam cursus justo elementum ornare. Donec non lorem quis mauris aliquet euismod. Vivamus euismod erat aliquet neque iaculis, ac malesuada metus interdum.  Fusce vehicula est purus, id mollis tellus ultrices quis. Proin ut quam at odio luctus gravida nec ac mauris. Vestibulum tristique neque ut finibus venenatis. Donec quam leo, commodo non velit sed, pharetra pulvinar est. Donec gravida viverra aliquet. Nunc eget cursus urna. Donec ac elit vestibulum, dignissim felis et, volutpat neque. Etiam vehicula auctor dui, id sodales est gravida ut. Curabitur quis est eros. Sed dui sem, tincidunt in mi et, tempor fringilla metus.  Donec facilisis tellus sed sem ornare, non gravida ex sollicitudin. Phasellus bibendum gravida feugiat. Nulla id volutpat magna. Nunc non leo urna. Quisque facilisis lacus ut orci vulputate, in dictum leo malesuada. Donec convallis gravida erat eget imperdiet. Curabitur dapibus, leo nec condimentum posuere, magna tortor vestibulum nisi, in venenatis sem odio bibendum velit.  Donec iaculis, augue vel ultricies rutrum, erat sapien condimentum quam, quis molestie lacus velit sit amet risus. Aenean tristique eros sit amet elit venenatis molestie. Sed augue orci, condimentum sit amet condimentum in, mollis id lectus. Donec ut feugiat lectus. Phasellus lobortis convallis magna, ut commodo nisl malesuada eu. Donec eget turpis pharetra, varius ante non, mattis elit. Aliquam commodo ex lorem, ac interdum dui molestie a. Nulla vitae accumsan nunc, nec placerat orci. Sed tempus consectetur nibh. Aenean et augue a tortor cursus efficitur a et ligula. Aliquam euismod dapibus eros non dictum. Praesent massa ex, porttitor id odio vel, facilisis laoreet lorem. In eu varius risus. Duis eget purus massa.  Vestibulum finibus odio at ipsum tincidunt auctor vitae eget est. Fusce mollis lorem at nibh pulvinar placerat. Nulla a iaculis velit. Proin ut quam ultrices purus aliquam pretium a porta lectus. Quisque dolor erat, dapibus ac feugiat convallis, facilisis id urna. In commodo augue nec eros porta rhoncus. Fusce vel porttitor arcu, nec aliquam lacus. In quis felis feugiat diam ornare egestas eget quis erat. Morbi iaculis efficitur cursus. Morbi ac nulla a turpis ullamcorper posuere. Donec venenatis sapien id aliquam hendrerit. Vestibulum porta turpis in erat luctus facilisis. Curabitur et nisl vel elit mollis facilisis. In mattis dolor sapien, hendrerit porttitor tellus molestie sed.  Nam feugiat a nibh ac gravida. Donec accumsan orci sapien, non mollis ante aliquet et. Integer efficitur dolor nisl, in congue mauris sodales eu. In quis mi felis. Nam id felis dui. Sed euismod, est eu semper gravida, enim nibh ultrices odio, ac lacinia nibh erat in dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse turpis eros, facilisis non nulla quis, porta convallis massa.'),
(7, 'Денис Коробов', '7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi maiores, eum aperiam, aspernatur tempora quia voluptatem, vitae neque blanditiis aliquid minus architecto, cum nemo reiciendis exercitationem quidem vel harum voluptas? Quo quia ullam iusto aut impedit itaque eligendi fugiat architecto veritatis placeat ratione accusamus optio voluptatem ipsa vitae officia beatae, dolor at doloremque nobis facere consectetur distinctio libero recusandae. Id deserunt animi eum, perspiciatis ipsum, iste facere qui quod est iusto inventore architecto, totam laboriosam!', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae laoreet purus, et fringilla lacus. Aenean scelerisque massa vel dolor porttitor, non tempus nibh consequat. Nunc nec quam condimentum, tristique libero in, lobortis leo. Aenean sit amet nisl at ex auctor ornare a non nisl. Aenean faucibus bibendum enim nec mollis. Vestibulum tincidunt lorem sed auctor molestie. Proin et ligula viverra justo venenatis placerat. Nulla vulputate quam cursus justo elementum ornare. Donec non lorem quis mauris aliquet euismod. Vivamus euismod erat aliquet neque iaculis, ac malesuada metus interdum.  Fusce vehicula est purus, id mollis tellus ultrices quis. Proin ut quam at odio luctus gravida nec ac mauris. Vestibulum tristique neque ut finibus venenatis. Donec quam leo, commodo non velit sed, pharetra pulvinar est. Donec gravida viverra aliquet. Nunc eget cursus urna. Donec ac elit vestibulum, dignissim felis et, volutpat neque. Etiam vehicula auctor dui, id sodales est gravida ut. Curabitur quis est eros. Sed dui sem, tincidunt in mi et, tempor fringilla metus.  Donec facilisis tellus sed sem ornare, non gravida ex sollicitudin. Phasellus bibendum gravida feugiat. Nulla id volutpat magna. Nunc non leo urna. Quisque facilisis lacus ut orci vulputate, in dictum leo malesuada. Donec convallis gravida erat eget imperdiet. Curabitur dapibus, leo nec condimentum posuere, magna tortor vestibulum nisi, in venenatis sem odio bibendum velit.  Donec iaculis, augue vel ultricies rutrum, erat sapien condimentum quam, quis molestie lacus velit sit amet risus. Aenean tristique eros sit amet elit venenatis molestie. Sed augue orci, condimentum sit amet condimentum in, mollis id lectus. Donec ut feugiat lectus. Phasellus lobortis convallis magna, ut commodo nisl malesuada eu. Donec eget turpis pharetra, varius ante non, mattis elit. Aliquam commodo ex lorem, ac interdum dui molestie a. Nulla vitae accumsan nunc, nec placerat orci. Sed tempus consectetur nibh. Aenean et augue a tortor cursus efficitur a et ligula. Aliquam euismod dapibus eros non dictum. Praesent massa ex, porttitor id odio vel, facilisis laoreet lorem. In eu varius risus. Duis eget purus massa.  Vestibulum finibus odio at ipsum tincidunt auctor vitae eget est. Fusce mollis lorem at nibh pulvinar placerat. Nulla a iaculis velit. Proin ut quam ultrices purus aliquam pretium a porta lectus. Quisque dolor erat, dapibus ac feugiat convallis, facilisis id urna. In commodo augue nec eros porta rhoncus. Fusce vel porttitor arcu, nec aliquam lacus. In quis felis feugiat diam ornare egestas eget quis erat. Morbi iaculis efficitur cursus. Morbi ac nulla a turpis ullamcorper posuere. Donec venenatis sapien id aliquam hendrerit. Vestibulum porta turpis in erat luctus facilisis. Curabitur et nisl vel elit mollis facilisis. In mattis dolor sapien, hendrerit porttitor tellus molestie sed.  Nam feugiat a nibh ac gravida. Donec accumsan orci sapien, non mollis ante aliquet et. Integer efficitur dolor nisl, in congue mauris sodales eu. In quis mi felis. Nam id felis dui. Sed euismod, est eu semper gravida, enim nibh ultrices odio, ac lacinia nibh erat in dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse turpis eros, facilisis non nulla quis, porta convallis massa.');

-- --------------------------------------------------------

--
-- Структура таблицы `waves`
--

CREATE TABLE IF NOT EXISTS `waves` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `waves`
--

INSERT INTO `waves` (`id`, `name`, `year`) VALUES
(1, 'Первый набор', '2015'),
(2, 'Второй набор', '2016'),
(3, 'Третий набор', '2016');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `waves`
--
ALTER TABLE `waves`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `waves`
--
ALTER TABLE `waves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
