-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-05-11 10:59:45
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thinkbbss`
--

-- --------------------------------------------------------

--
-- 表的结构 `artical`
--

CREATE TABLE IF NOT EXISTS `artical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(4) NOT NULL,
  `learn_id` int(4) NOT NULL,
  `img` char(255) DEFAULT NULL,
  `atitle` char(255) DEFAULT NULL,
  `p` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `artical`
--

INSERT INTO `artical` (`id`, `item`, `learn_id`, `img`, `atitle`, `p`) VALUES
(1, 2, 2, 'c1.jpg', '按压方法', '按压方法：用掌根重叠放在另一手背上使手指脱离胸壁，可采用两手指交叉抬起法。'),
(2, 2, 2, NULL, NULL, '按压方法：用掌根重叠放在另一手背上使手指脱离胸壁，可采用两手指交叉抬起法。'),
(3, 2, 2, 'c1.jpg', NULL, '按压方法：用掌根重叠放在另一手背上使手指脱离胸壁，可采用两手指交叉抬起法。'),
(4, 2, 2, NULL, NULL, '按压方法：用掌根重叠放在另一手背上使手指脱离胸壁，可采用两手指交叉抬起法。'),
(5, 2, 4, 'c2.jpg', '按压方法：', '用掌根重叠放在另一手背上使手指脱离胸壁，可采用两手指交叉抬起法。');

-- --------------------------------------------------------

--
-- 表的结构 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `board`
--

INSERT INTO `board` (`id`, `name`) VALUES
(1, 'erws sf'),
(2, 'sdf'),
(3, 'erws sf'),
(4, 'sdf'),
(5, 'gfh'),
(6, 'gfh'),
(7, 'fd ygfd dfg'),
(8, 'aimmft'),
(9, 'fd ygfd dfg'),
(10, 'aimmft'),
(11, 'asss'),
(12, 'badjd'),
(13, 'cadaeae'),
(14, 'defj fk'),
(15, 'efw'),
(16, 'asss'),
(17, 'badjd'),
(18, 'cadaeae'),
(19, 'defj fk'),
(20, 'efw'),
(21, 'asss'),
(22, 'badjd'),
(23, 'cadaeae'),
(24, 'defj fk'),
(25, 'efw'),
(26, 'asss'),
(41, 'asss'),
(42, 'badjd'),
(43, 'cadaeae'),
(44, 'defj fk'),
(45, 'efw'),
(46, 'asss'),
(47, 'badjd'),
(48, 'cadaeae'),
(49, 'defj fk'),
(50, 'efw');

-- --------------------------------------------------------

--
-- 表的结构 `learn`
--

CREATE TABLE IF NOT EXISTS `learn` (
  `item` int(4) NOT NULL AUTO_INCREMENT,
  `name` char(16) NOT NULL,
  `item_name` char(64) NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `learn`
--

INSERT INTO `learn` (`item`, `name`, `item_name`) VALUES
(1, '急救常识', '急救常识'),
(2, '培训课程', '培训课程'),
(3, '案例中心', '案例中心'),
(4, '在线测试', '在线测试');

-- --------------------------------------------------------

--
-- 表的结构 `learn_course`
--

CREATE TABLE IF NOT EXISTS `learn_course` (
  `item` int(4) NOT NULL,
  `learn_id` int(4) NOT NULL,
  `question` char(255) DEFAULT NULL,
  `answer` char(255) DEFAULT NULL,
  `page` char(255) NOT NULL,
  `detail` char(255) DEFAULT NULL,
  `tel` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `learn_course`
--

INSERT INTO `learn_course` (`item`, `learn_id`, `question`, `answer`, `page`, `detail`, `tel`) VALUES
(1, 1, '什么是过敏休克？', '过敏休克是严重的过敏反应，可以导致患者呼吸困难，脉搏微弱，滴血液，精神波动。~', '用周围能找到的任何物品按压伤口，以达到止血或减缓出血的目的。', '阻止血液流失。按压伤口，可帮助血液凝固并止血。', 0),
(1, 1, '什么是过敏休克？', '~过敏休克是严重的过敏反应，可以导致患者呼吸困难，脉搏微弱，滴血液，精神波动。', '如果出血严重，尽快拨打120，或请别人帮忙拨打。', NULL, 1),
(1, 1, '什么是过敏休克？', '过敏休克是严重的过敏反应，可以导致患者呼吸困难，脉搏微弱，滴血液，精神波动。', '持续按压伤口直到后续救援到达。或请别人帮忙拨打', NULL, 0),
(1, 1, NULL, NULL, '持续按压伤口直到后续救援到达。', NULL, 0),
(1, 2, '什么是过敏休克？\r\n', '过敏休克是严重的过敏反应，可以导致患者呼吸困难，脉搏微弱，滴血液，精神波动。~', '', NULL, 0),
(1, 2, NULL, NULL, '用周围能找到的任何物品按压伤口，以达到止血或减缓出血的目的。\r\n', '阻止血液流失。按压伤口，可帮助血液凝固并止血。', 0),
(2, 1, '阻止血液流失。按压伤口，可帮助血液凝固并止血。', '阻止血液流失。按压伤口，可帮助血液凝固并止血。', '阻止血液流失。按压伤口，可帮助血液凝固并止血。', '阻止血液流失。按压伤口，可帮助血液凝固并止血。', 0);

-- --------------------------------------------------------

--
-- 表的结构 `learn_course1`
--

CREATE TABLE IF NOT EXISTS `learn_course1` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `item` int(4) NOT NULL,
  `learn_id` int(4) NOT NULL,
  `page` char(255) DEFAULT NULL,
  `detail` char(255) DEFAULT NULL,
  `tel` tinyint(1) NOT NULL DEFAULT '0',
  `question` char(255) DEFAULT NULL,
  `answer` char(255) DEFAULT NULL,
  `icon` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `learn_course1`
--

INSERT INTO `learn_course1` (`id`, `item`, `learn_id`, `page`, `detail`, `tel`, `question`, `answer`, `icon`) VALUES
(1, 1, 1, '帮助患者安坐，助其服药', '患者哮喘发作时气道收缩变窄导致呼吸困难。使用平喘气雾剂舒张气道平滑肌，气道得以扩张，从而缓解呼吸困难。', 0, '什么是哮喘？', '哮喘是累及气道的内科疾病，气道是空气进出肺叶的管道。当患者哮喘发作时，气道变窄，导致空气难以吸入、呼出。', 0),
(2, 1, 1, '安抚患者。如果哮喘症状加重，患者未随身带药物或服药后病情并未缓解，请拨打120或请他人帮助呼叫120。', NULL, 1, '我该怎么判断某人是否哮喘发作？', '可能努力挣扎着呼吸，非常焦虑、恐慌。有时候，因为缺氧，可能会出现口唇、耳垂、甲床青紫的状况。', 0),
(3, 1, 2, '患者手、足或面部出现皮疹、瘙痒或水肿，并可能出现呼吸浅慢。', '也可能会出现呕吐和腹泻状况。引起过敏反应的常见过敏原有花粉、蚊虫叮咬、乳胶，还有一些食物，如坚果或者奶制品等', 0, '什么是过敏休克？', '过敏休克是严重的过敏反应，可以导致患者呼吸困难，脉搏微弱，低血压，精神波动。', 0),
(4, 1, 2, '如果有人发生过敏反应，请拨打120', '如果有人发生过敏反应（呼吸困难、休克或者精神异常），并带有自动注射器，请帮助他们用药', 0, '什么样的食物会导致过敏反应？', '坚果、贝类、奶制品和鸡蛋。', 0),
(5, 2, 1, '大声询问“喂，喂，您好吗/您怎么了？”，再轻拍病人肩部，以确定病人有无意识', '拍肩膀，禁忌剧烈摇晃患者', 0, NULL, NULL, 0),
(8, 1, 3, '血液流失。按压伤口，可帮助血液凝固', NULL, 0, '血液流失。按压伤口，可帮助血液凝固', '血液流失。按压伤口，可帮助血液凝固', 0),
(9, 1, 3, '血液流失。按压伤口，可帮助血液凝固', NULL, 0, NULL, NULL, 0),
(10, 2, 1, '若无意识反应，立即向边上的人呼救，呼叫急救中心（120），同时马上进行心肺复苏术。', NULL, 1, NULL, NULL, 0),
(11, 1, 2, '等候救护车时，请持续观察并安抚患者', NULL, 0, '我能给患者使用自动注射器吗？', '如果患者发生过敏反应，并自己带有自动注射器，经患者同意，你可以帮助他们使用。', 0);

-- --------------------------------------------------------

--
-- 表的结构 `learn_item`
--

CREATE TABLE IF NOT EXISTS `learn_item` (
  `learn_id` int(4) NOT NULL,
  `item` int(4) NOT NULL DEFAULT '1',
  `url` char(64) NOT NULL DEFAULT 'logoff.png',
  `img_name` char(64) NOT NULL,
  PRIMARY KEY (`learn_id`),
  UNIQUE KEY `learn_id` (`learn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `learn_item`
--

INSERT INTO `learn_item` (`learn_id`, `item`, `url`, `img_name`) VALUES
(1, 1, 'logoff.png', '哮喘发作'),
(2, 1, 'logoff.png', '过敏反应'),
(3, 1, 'gu.png', '骨折'),
(4, 1, 'xue.png', '出血'),
(5, 1, 'huo.png', '烫烧伤'),
(6, 1, 'logoff.png', '溺水');

-- --------------------------------------------------------

--
-- 表的结构 `learn_item1`
--

CREATE TABLE IF NOT EXISTS `learn_item1` (
  `item` int(4) NOT NULL DEFAULT '1',
  `learn_id` int(4) NOT NULL AUTO_INCREMENT,
  `url` char(20) NOT NULL DEFAULT 'logoff.png',
  `img_name` char(255) NOT NULL,
  `video` tinyint(1) NOT NULL DEFAULT '1',
  `media` char(255) NOT NULL DEFAULT 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4',
  `poster` char(255) NOT NULL DEFAULT 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg',
  PRIMARY KEY (`learn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `learn_item1`
--

INSERT INTO `learn_item1` (`item`, `learn_id`, `url`, `img_name`, `video`, `media`, `poster`) VALUES
(1, 1, 'logoff.png', '哮喘发作', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 2, 'logoff.png', '过敏反应', 1, 'http://vss2.waqu.com/qpfj42is1wbmqpq4/normal.mp4', 'http://picstatweb.waqu.com/is/img/qpfj42is1wbmqpq4'),
(1, 3, 'gu.png', '骨折', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 4, 'xue.png', '出血', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 5, 'huo.png', '烫烧伤', 1, 'http://vss2.waqu.com/kpiir4c1zgvr7749/normal.mp4', 'http://picstatweb.waqu.com/is/img/kpiir4c1zgvr7749'),
(1, 6, 'logoff.png', '热阙', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 7, 'logoff.png', '气道哽塞', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 9, 'logoff.png', '气道哽塞', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 10, 'logoff.png', '糖尿病急症', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 11, 'logoff.png', '颅脑外伤', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 12, 'logoff.png', '中毒', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 13, 'logoff.png', '休克', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 14, 'logoff.png', '拉伤、扭伤', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(1, 15, 'logoff.png', '中风', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `learn_item2`
--

CREATE TABLE IF NOT EXISTS `learn_item2` (
  `item` int(4) NOT NULL DEFAULT '2',
  `learn_id` int(4) NOT NULL AUTO_INCREMENT,
  `creattime` date NOT NULL,
  `url` char(64) NOT NULL DEFAULT 'logoff.png',
  `img_name` char(64) NOT NULL,
  `video` tinyint(1) DEFAULT '0',
  `media` char(200) NOT NULL,
  `poster` char(200) NOT NULL,
  PRIMARY KEY (`learn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `learn_item2`
--

INSERT INTO `learn_item2` (`item`, `learn_id`, `creattime`, `url`, `img_name`, `video`, `media`, `poster`) VALUES
(2, 1, '2016-03-28', 'c1.jpg', '心肺复苏系列一之评估意识', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(2, 2, '2016-03-28', 'c2.jpg', '心肺复苏系列一之开放气道', 0, '', ''),
(2, 3, '2016-03-28', 'c3.jpg', '心肺复苏系列一之人工呼吸', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4'),
(2, 4, '2016-03-28', 'c3.jpg', '心肺复苏系列一之人工呼吸', 0, '', ''),
(2, 5, '2016-03-28', 'c3.jpg', '心肺复苏系列一之人工呼吸', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4'),
(2, 6, '2016-03-28', 'c3.jpg', '心肺复苏系列一之人工呼吸', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4'),
(2, 7, '2016-03-28', 'c3.jpg', '自动体外除颤器（AED）使用教程', 1, 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4');

-- --------------------------------------------------------

--
-- 表的结构 `learn_item3`
--

CREATE TABLE IF NOT EXISTS `learn_item3` (
  `item` int(4) NOT NULL DEFAULT '3',
  `learn_id` int(4) NOT NULL AUTO_INCREMENT,
  `url` char(20) NOT NULL DEFAULT 'logoff.png',
  `img_name` char(255) NOT NULL,
  `date` date NOT NULL,
  `video` tinyint(1) NOT NULL DEFAULT '0',
  `pagesrc` char(255) NOT NULL,
  `analysis` char(255) NOT NULL,
  `media` char(255) NOT NULL DEFAULT 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4',
  `poster` char(255) NOT NULL DEFAULT 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg',
  PRIMARY KEY (`learn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `learn_item3`
--

INSERT INTO `learn_item3` (`item`, `learn_id`, `url`, `img_name`, `date`, `video`, `pagesrc`, `analysis`, `media`, `poster`) VALUES
(3, 1, 'logoff.png', '心脏骤停，一人3天醒来一人3月未醒黄金抢救时间', '2016-03-31', 0, 'p1.txt', '在正常室温下，心脏骤停3秒后，人就会因脑缺氧感到头晕；10至20秒后，就会意识丧失；5分钟后脑细胞就会出现不可逆转的损害，进入脑死亡阶段。一般人的黄金抢救时间为4—6分钟，如果在6分钟之内得不到抢救，患者随即进入生物学死亡阶段，生还希望极为渺茫。因此对于心脏骤停的病人，应就地抢救。快速解开患者的上衣，进行心肺复苏，心跳可能因此而恢复。在实施急救的同时，一旁的人应立刻拨打急救电话，向120求援', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(3, 2, 'logoff.png', '台州男子打羽毛球心脏骤停17分钟 揭心肺复苏具', '2016-03-31', 0, 'p2.txt', '蔡海鹏医生说，对卢再论的整个救援过程中，宋振东医生第一时间急救起了最关键的作用。\n对这类病人来说，心脏停止跳动后的4～6分钟以内，被称作“黄金救援期”，如果错过，大脑和脏器往往会受到不可逆的损伤，要再救活就难上加难了。', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(3, 3, 'logoff.png', '去年南京上千人猝死，仅救活4人 4分钟内如做心', '2016-03-31', 0, 'p3.txt', '专家提醒，如果身边人一旦心脏停跳、呼吸骤停，就应该立即实施心肺复苏抢救，按压胸口，人工呼吸，为医护人员到来赢得抢救时间。如果就地等待，即便发达国家的救护车最快也要6—8分钟才能赶到，伤者或者已经生还无望，或者即使救活也成了植物人。', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(3, 4, 'logoff.png', '男孩一氧化碳中毒 妈妈学做心肺复苏救了命', '2016-03-31', 0, 'p4.txt', '专家提醒，如果身边人一旦心脏停跳、呼吸骤停，就应该立即实施心肺复苏抢救，按压胸口，人工呼吸，为医护人员到来赢得抢救时间。如果就地等待，即便发达国家的救护车最快也要6—8分钟才能赶到，伤者或者已经生还无望，或者即使救活也成了植物人。', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg'),
(3, 5, 'logoff.png', '雷击“假死”，心肺复苏是救命稻草', '2016-03-31', 0, 'p5.txt', '据急诊科何主任介绍：人被雷击中后，最危险的是对心脏、呼吸和中枢神经系统的伤害，很快出现心脏停跳、呼吸停止，但这实际上是一种雷电“假死”的现象。发生雷电重度击伤后，要立即组织现场心肺复苏，且不必担心触电，因为雷击后，电流很短时间内已经通过人体泄放到大地，受伤者被雷电的电火花烧伤只是表面现象，接触受伤者进行抢救没有危险。现场心肺复苏是救命稻草，如果实施不及时，受伤者就会因缺氧死亡。尤其注意的是，就地抢救的同时，要立即呼叫120，尽早进行专业的处置和抢救。', 'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4', 'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `learn_item4`
--

CREATE TABLE IF NOT EXISTS `learn_item4` (
  `item` int(4) NOT NULL DEFAULT '4',
  `learn_id` int(4) NOT NULL AUTO_INCREMENT,
  `url` char(20) NOT NULL DEFAULT 'logoff.png',
  `img_name` char(255) NOT NULL,
  `video` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`learn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `learn_item4`
--

INSERT INTO `learn_item4` (`item`, `learn_id`, `url`, `img_name`, `video`) VALUES
(4, 1, 'logoff.png', '心肺复苏测试', 0),
(4, 2, 'logoff.png', '常识急救测试', 0);

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `own` int(4) NOT NULL DEFAULT '0',
  `board` int(11) NOT NULL,
  `text` char(200) NOT NULL,
  `author` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`id`, `own`, `board`, `text`, `author`) VALUES
(1, 0, 1, '睡觉阿迪和', 'shd@di.com'),
(2, 0, 1, '睡觉是额忘记', 'sh5@diy.com'),
(3, 0, 1, '黑色的复合额忘记', 'sesh5@diey.com'),
(4, 0, 1, '黑色的和雕塑复合额忘记', 'erh5@diey.com'),
(5, 0, 1, '睡觉阿迪和', 'shd@di.com'),
(6, 0, 1, '睡觉是额忘记', 'sh5@diy.com'),
(7, 0, 1, '黑色的复合额忘记', 'sesh5@diey.com'),
(8, 0, 1, '黑色的和雕塑复合额忘记', 'erh5@diey.com'),
(9, 0, 1, '睡觉阿迪和', 'shd@di.com'),
(10, 0, 1, '睡觉是额忘记', 'sh5@diy.com'),
(11, 0, 1, '黑色的复合额忘记', 'sesh5@diey.com'),
(12, 0, 1, '黑色的和雕塑复合额忘记', 'erh5@diey.com'),
(13, 1, 1, '扫地机his打算尽快', 'shd@sad.com'),
(14, 1, 1, '扫丹佛掘金看电视是大家分开尽快', 'shd@sad.com'),
(15, 1, 1, '扫地机撒大家看打算尽快', 'shd@sad.com'),
(16, 1, 1, '扫额日开始的风景儿科尽快', 'shd@sad.com'),
(17, 1, 1, '扫地机his打算尽快', 'shd@sad.com'),
(18, 1, 1, '扫丹佛掘金看电视是大家分开尽快', 'shd@sad.com'),
(19, 1, 1, '扫地机撒大家看打算尽快', 'shd@sad.com'),
(20, 1, 1, '扫额日开始的风景儿科尽快', 'shd@sad.com'),
(21, 2, 1, '扫地机his打算尽快', 'shd@sad.com'),
(22, 2, 1, '扫丹佛掘金看电视是大家分开尽快', 'shd@sad.com'),
(23, 2, 1, '扫地机撒大家看打算尽快', 'shd@sad.com'),
(24, 2, 1, '扫额日开始的风景儿科尽快', 'shd@sad.com'),
(25, 0, 1, '212', '匿名'),
(26, 1, 1, 'dbjsa jasd', '匿名'),
(27, 0, 1, '不到撒北京sad 滴答滴答滴答滴答的', '匿名'),
(28, 1, 1, 'feeeeeeeeeeeeeeee', '匿名'),
(29, 1, 1, 'sdba js', 'mm@mm.com'),
(30, 0, 1, 'fgfg d', 'mm@mm.com');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `level` int(4) NOT NULL DEFAULT '1',
  `name` char(20) NOT NULL,
  `pwd` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `level`, `name`, `pwd`) VALUES
(0, 1, 'mm@mm.com', '010727'),
(3, 1, 'fdsf@qesd', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 1, 'ww@ww', '1456'),
(5, 1, 'jug@45ds', '000'),
(6, 1, 'qq@qq', '000'),
(7, 1, '', ''),
(8, 1, 'WE@QQ', ''),
(11, 1, 'df@qw', '0000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
