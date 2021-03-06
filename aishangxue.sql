/*
MySQL Data Transfer
Source Host: localhost
Source Database: aishangxue
Target Host: localhost
Target Database: aishangxue
Date: 2019/5/16 ÐÇÆÚËÄ 16:46:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for answer_0
-- ----------------------------
DROP TABLE IF EXISTS `answer_0`;
CREATE TABLE `answer_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_11
-- ----------------------------
DROP TABLE IF EXISTS `answer_11`;
CREATE TABLE `answer_11` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_12
-- ----------------------------
DROP TABLE IF EXISTS `answer_12`;
CREATE TABLE `answer_12` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_14
-- ----------------------------
DROP TABLE IF EXISTS `answer_14`;
CREATE TABLE `answer_14` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_15
-- ----------------------------
DROP TABLE IF EXISTS `answer_15`;
CREATE TABLE `answer_15` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_16
-- ----------------------------
DROP TABLE IF EXISTS `answer_16`;
CREATE TABLE `answer_16` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_17
-- ----------------------------
DROP TABLE IF EXISTS `answer_17`;
CREATE TABLE `answer_17` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_18
-- ----------------------------
DROP TABLE IF EXISTS `answer_18`;
CREATE TABLE `answer_18` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_19
-- ----------------------------
DROP TABLE IF EXISTS `answer_19`;
CREATE TABLE `answer_19` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_20
-- ----------------------------
DROP TABLE IF EXISTS `answer_20`;
CREATE TABLE `answer_20` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_21
-- ----------------------------
DROP TABLE IF EXISTS `answer_21`;
CREATE TABLE `answer_21` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_22
-- ----------------------------
DROP TABLE IF EXISTS `answer_22`;
CREATE TABLE `answer_22` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_23
-- ----------------------------
DROP TABLE IF EXISTS `answer_23`;
CREATE TABLE `answer_23` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_24
-- ----------------------------
DROP TABLE IF EXISTS `answer_24`;
CREATE TABLE `answer_24` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'å¯¹åºé®é¢çid',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT 'ä½èçè´¦å·',
  `answer` text NOT NULL COMMENT 'åç­çåå®¹',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´å¹´ææ¥æ¶åç§',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_0
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_0`;
CREATE TABLE `comment_imgtext_0` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_32
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_32`;
CREATE TABLE `comment_imgtext_32` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_34
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_34`;
CREATE TABLE `comment_imgtext_34` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_35
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_35`;
CREATE TABLE `comment_imgtext_35` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_36
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_36`;
CREATE TABLE `comment_imgtext_36` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_43
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_43`;
CREATE TABLE `comment_imgtext_43` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_45
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_45`;
CREATE TABLE `comment_imgtext_45` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_47
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_47`;
CREATE TABLE `comment_imgtext_47` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_0
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_0`;
CREATE TABLE `comment_video_0` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_17
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_17`;
CREATE TABLE `comment_video_17` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_18
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_18`;
CREATE TABLE `comment_video_18` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_19
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_19`;
CREATE TABLE `comment_video_19` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_20
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_20`;
CREATE TABLE `comment_video_20` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_27
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_27`;
CREATE TABLE `comment_video_27` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT 'è¯è®ºèæµç§°' COMMENT 'è¯è®ºèæµç§°',
  `author_number` int(4) NOT NULL COMMENT 'è¯è®ºèè´¦å·',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'è¯è®ºåå®¹',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT 'åå¸æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_adv
-- ----------------------------
DROP TABLE IF EXISTS `info_adv`;
CREATE TABLE `info_adv` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `type` char(3) NOT NULL DEFAULT 'adv' COMMENT 'ææä¿¡æ¯ç±»è¡¨é½æè¿é¡¹ç±»åï¼ä¾å¦ï¼imtãvidãaskãadv',
  `title` varchar(150) NOT NULL COMMENT 'å¹¿åæ é¢',
  `src` text NOT NULL COMMENT 'å¾ççsrc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_findposter
-- ----------------------------
DROP TABLE IF EXISTS `info_findposter`;
CREATE TABLE `info_findposter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author_number` char(11) NOT NULL DEFAULT '' COMMENT 'ä½èè´¦å·',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´',
  `img` char(255) NOT NULL DEFAULT '' COMMENT 'å¯»_å¯äºçå¾çåå­',
  `title` char(30) NOT NULL DEFAULT '' COMMENT 'æ é¢ï¼ä¾å¦ï¼å¯»äººå¯äº',
  `tel` char(11) NOT NULL DEFAULT '' COMMENT 'ç»ä¹ çµè¯',
  `content` text NOT NULL COMMENT 'å¯»äººå¯äºçå·ä½åå®¹',
  `special` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_freepublish
-- ----------------------------
DROP TABLE IF EXISTS `info_freepublish`;
CREATE TABLE `info_freepublish` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author_number` char(11) NOT NULL DEFAULT '' COMMENT 'ä½èè´¦å·',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´',
  `img` char(255) NOT NULL DEFAULT '' COMMENT 'èªå®ä¹çå¾ç',
  `labels` tinytext NOT NULL COMMENT 'èªå®ä¹æ ç­¾çé®å¼å¯¹',
  `special` tinytext NOT NULL COMMENT 'å®å®ä¹çç¹å«è¯´æ',
  `content` text NOT NULL COMMENT 'å®ä¹èªçåå®¹',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_imgtext
-- ----------------------------
DROP TABLE IF EXISTS `info_imgtext`;
CREATE TABLE `info_imgtext` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'ç±å°ä¿¡æ¯çid',
  `type` char(3) NOT NULL DEFAULT 'imt' COMMENT 'ç±»åï¼ä¾å¦ï¼imtãvidãaskãadv',
  `classify` char(50) NOT NULL COMMENT 'è¯¦ç»åç±»ï¼å¸¸è¯ãçæ´»ãåäºç­ï¼',
  `title` varchar(80) NOT NULL COMMENT 'æ é¢ãé®é¢',
  `imgtext` text NOT NULL COMMENT 'åå¸çåå®¹ä¸»ä½',
  `author_headimg` char(30) NOT NULL DEFAULT 'ä½èå¤´å' COMMENT 'ä½èå¤´å',
  `author_title` char(20) NOT NULL DEFAULT 'æ®éç¨æ·' COMMENT 'ä½èå¤´è¡ï¼ä¾å¦ï¼æ®éç¨æ·',
  `author_nickname` char(30) NOT NULL DEFAULT 'ä½èæµç§°' COMMENT 'ä½èæµç§°',
  `author_number` int(4) NOT NULL DEFAULT '1000' COMMENT 'åå¸èçè´¦å·',
  `publish_time` datetime NOT NULL COMMENT 'å¸åæ¶é´å¹´ææ¥æ¶åç§',
  `like` int(2) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(2) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `look` int(2) NOT NULL DEFAULT '0' COMMENT 'æµè§æ¬¡æ°',
  `comment_form` char(20) NOT NULL DEFAULT '' COMMENT 'è¯è®ºè¡¨çè¡¨å',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_job
-- ----------------------------
DROP TABLE IF EXISTS `info_job`;
CREATE TABLE `info_job` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `job_type` char(30) NOT NULL DEFAULT 'å¼è' COMMENT 'èä½ç±»åï¼å¼èãå¨èï¼',
  `author_number` int(12) NOT NULL COMMENT 'åå¸èçè´¦å·',
  `publish_time` datetime NOT NULL,
  `img` char(255) DEFAULT '' COMMENT 'å·¥ä½åºæ¯ç§ççåå­',
  `name` char(50) NOT NULL DEFAULT '' COMMENT 'å·¥ä½èè´£',
  `time` char(100) NOT NULL COMMENT 'å·¥ä½æ¶é´',
  `site` char(255) NOT NULL DEFAULT '' COMMENT 'å·¥ä½å°ç¹',
  `payment` char(50) NOT NULL DEFAULT 'ææªå¡«å' COMMENT 'é¬èª',
  `tel` char(11) NOT NULL DEFAULT '' COMMENT 'çµè¯å·ç ',
  `special` varchar(255) NOT NULL DEFAULT 'æ ç¹å«è¯´æ' COMMENT 'ç¹å«è¯´æ',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT 'å·¥ä½æè¿°',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_question
-- ----------------------------
DROP TABLE IF EXISTS `info_question`;
CREATE TABLE `info_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'é®é¢çid',
  `type` char(3) NOT NULL DEFAULT 'ask' COMMENT 'ç±»åï¼ä¾å¦ï¼imtãvidãaskãadv',
  `classify` char(50) NOT NULL COMMENT 'åç±»ï¼å¸¸è¯ãçæ´»ãåäºç­ï¼',
  `question` char(100) NOT NULL COMMENT 'é®é¢',
  `author_headimg` char(20) NOT NULL COMMENT 'åå¸èå¤´å',
  `author_nickname` char(30) NOT NULL,
  `author_title` char(20) NOT NULL COMMENT 'ç¨æ·å¤´è¡ï¼ä¾å¦ï¼æ®éç¨æ·',
  `author_number` int(4) NOT NULL DEFAULT '1000' COMMENT 'åå¸èçè´¦å·',
  `publish_time` datetime NOT NULL COMMENT 'å¸åæ¶é´å¹´ææ¥æ¶åç§',
  `answer_table` char(20) NOT NULL DEFAULT '' COMMENT 'å¯¹åºé®é¢çåç­çè¡¨åï¼å½åè§èï¼answer+id',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_seconddeal
-- ----------------------------
DROP TABLE IF EXISTS `info_seconddeal`;
CREATE TABLE `info_seconddeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'äºæäº¤æååçid',
  `author_number` char(11) NOT NULL DEFAULT '' COMMENT 'ä½èè´¦å·',
  `publish_time` datetime NOT NULL COMMENT 'åå¸æ¶é´',
  `img` char(255) NOT NULL DEFAULT '' COMMENT 'å¾çåå­',
  `name` char(30) NOT NULL DEFAULT '' COMMENT 'åååå­ï¼å¦åä¸ºnova3e',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT 'ååä»·æ ¼',
  `tel` char(11) NOT NULL COMMENT 'çµè¯',
  `what_new` char(255) NOT NULL DEFAULT '' COMMENT 'å ææ°ï¼ä¾å¦ï¼å«ææ°',
  `special` char(255) NOT NULL COMMENT 'ç¹å«è¯´æ',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT 'äºæååæè¿°',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_video
-- ----------------------------
DROP TABLE IF EXISTS `info_video`;
CREATE TABLE `info_video` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'è§é¢çid',
  `type` char(3) NOT NULL DEFAULT 'vid' COMMENT 'ç±»åï¼ä¾å¦ï¼imtãvidãaskãadv',
  `classify` char(50) NOT NULL COMMENT 'è¯¦ç»åç±»ï¼å¸¸è¯ãçæ´»ãåäºç­ï¼',
  `title` varchar(80) NOT NULL COMMENT 'æ é¢ãé®é¢',
  `video` char(20) NOT NULL DEFAULT '' COMMENT 'è§é¢åå­',
  `author_headimg` char(20) NOT NULL DEFAULT 'ä½èå¤´å' COMMENT 'ä½èå¤´å',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT 'ä½èæµç§°',
  `author_title` char(20) NOT NULL DEFAULT 'æ®éç¨æ·' COMMENT 'ä½èå¤´è¡',
  `author_number` int(4) NOT NULL DEFAULT '1000' COMMENT 'åå¸èçè´¦å·',
  `publish_time` datetime NOT NULL COMMENT 'å¸åæ¶é´å¹´ææ¥æ¶åç§',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT 'ç¹èµæ¬¡æ°',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT 'æ¶èµæ¬¡æ°',
  `transpond` int(8) NOT NULL DEFAULT '0' COMMENT 'è½¬åæ¬¡æ°',
  `comment_table` char(20) NOT NULL DEFAULT 'comment_video0' COMMENT 'è¯è®ºè¡¨çè¡¨å',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'ä¿¡æ¯ç¶æï¼ï¼1ãå¾åå¸ï¼2ãå·²åå¸ï¼3ãå·²å é¤ï¼4ãåå¸å¤±è´¥ï¼',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `number` smallint(5) NOT NULL AUTO_INCREMENT COMMENT 'Ã¨Â´Â¦Ã¥ÂÂ·',
  `pwd` char(16) NOT NULL COMMENT 'Ã¥Â¯â Ã§Â Â',
  `name` char(255) NOT NULL COMMENT 'Ã¥Â§âÃ¥ÂÂ',
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `number` int(10) NOT NULL AUTO_INCREMENT COMMENT 'è´¦å·',
  `tel` char(11) NOT NULL DEFAULT 'ææªå¡«å' COMMENT 'ææºå·ç ï¼ä¾å¦18483221518',
  `pwd` char(16) NOT NULL DEFAULT '123456' COMMENT 'å¯ç ',
  `nickname` char(30) NOT NULL COMMENT 'æµç§°',
  `head_img` char(255) NOT NULL DEFAULT 'default_man.png' COMMENT 'å¤´ååå­',
  `added_classify` char(64) NOT NULL DEFAULT '["æ¨è","å¸¸è¯","é®ç­"]' COMMENT 'æ·»å çæ°é»ä¿¡æ¯ç±»',
  `title` char(20) NOT NULL DEFAULT 'æ®éç¨æ·' COMMENT 'ç§°è°ï¼ä¾å¦ï¼æ®éç¨æ·',
  `index` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'äººæ°ææ°',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'è´¦å·ç­çº§',
  `name` char(255) NOT NULL DEFAULT 'ææªå¡«å' COMMENT 'å§å',
  `sex` char(255) NOT NULL DEFAULT '0' COMMENT 'æ§å«ï¼ï¼0ãææªå¡«åï¼1ãç·ï¼2ãå¥³ï¼',
  `native_place` char(255) NOT NULL DEFAULT 'ææªå¡«å' COMMENT 'ç±è´¯',
  `job` char(255) NOT NULL DEFAULT 'ææªå¡«å' COMMENT 'èä¸ï¼ä¾å¦ï¼webåç«¯',
  `hobby` char(255) NOT NULL DEFAULT '[]' COMMENT 'å´è¶£ç±å¥½',
  `birthday` char(255) NOT NULL DEFAULT '2000-01-01' COMMENT 'åºçå¹´ææ¥',
  `produce` varchar(255) NOT NULL DEFAULT 'ææªå¡«å' COMMENT 'ä¸ªäººä»ç»',
  `balance` float(20,0) NOT NULL DEFAULT '0' COMMENT 'ä½é¢',
  `coupon` int(20) NOT NULL DEFAULT '0' COMMENT 'è´­ç©å¸',
  `coupon_dot` int(20) NOT NULL DEFAULT '0' COMMENT 'è´­ç©ç¹',
  `attention` varchar(255) NOT NULL DEFAULT '0' COMMENT 'å³æ³¨',
  `fans` varchar(255) NOT NULL DEFAULT '0' COMMENT 'ç²ä¸',
  `collect` varchar(255) NOT NULL DEFAULT '0' COMMENT 'æ¶è',
  `publish` varchar(255) NOT NULL DEFAULT '0' COMMENT 'åå¸',
  `about_me` varchar(255) NOT NULL DEFAULT '0' COMMENT 'ä¸æç¸å³',
  `regist_time` datetime NOT NULL COMMENT 'æ³¨åè´¦å·çæ¶é´',
  `set` tinytext NOT NULL COMMENT 'ç¨æ·å¯¹ç½é¡µçåºæ¬è®¾ç½®',
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `answer_14` VALUES ('1', 'default_man.png', 'æµè¯è´¦å·3', '1012', 'å¤§æ¯å¤§éé¿é¿éå¤«', '0', '0', '2019-04-25 19:48:18');
INSERT INTO `answer_15` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¿æ¯åç­', '0', '0', '2019-05-12 17:59:04');
INSERT INTO `answer_16` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:13');
INSERT INTO `answer_17` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:31');
INSERT INTO `answer_18` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:18');
INSERT INTO `answer_19` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:20');
INSERT INTO `answer_20` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:33');
INSERT INTO `answer_21` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:22');
INSERT INTO `answer_22` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:24');
INSERT INTO `answer_23` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:36');
INSERT INTO `answer_24` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å·²ç»åç­', '0', '0', '2019-05-12 17:59:26');
INSERT INTO `comment_imgtext_32` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º3', '0', '0', '2019-05-05 23:44:27');
INSERT INTO `comment_imgtext_32` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º8', '0', '0', '2019-05-05 23:45:17');
INSERT INTO `comment_imgtext_32` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º12', '0', '0', '2019-05-05 23:46:03');
INSERT INTO `comment_imgtext_32` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º13', '0', '0', '2019-05-05 23:46:12');
INSERT INTO `comment_imgtext_32` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º13', '0', '0', '2019-05-05 23:46:16');
INSERT INTO `comment_imgtext_32` VALUES ('6', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º17', '0', '0', '2019-05-05 23:46:57');
INSERT INTO `comment_imgtext_32` VALUES ('7', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º19', '0', '0', '2019-05-05 23:47:18');
INSERT INTO `comment_imgtext_32` VALUES ('8', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º1', '0', '0', '2019-05-12 11:52:37');
INSERT INTO `comment_imgtext_32` VALUES ('9', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º3', '0', '0', '2019-05-12 11:53:28');
INSERT INTO `comment_imgtext_32` VALUES ('10', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º3', '0', '0', '2019-05-12 11:53:29');
INSERT INTO `comment_imgtext_34` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º9', '0', '0', '2019-05-05 23:45:36');
INSERT INTO `comment_imgtext_34` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º20', '0', '0', '2019-05-05 23:47:28');
INSERT INTO `comment_imgtext_34` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º4', '0', '0', '2019-05-12 11:54:19');
INSERT INTO `comment_imgtext_35` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º2', '0', '0', '2019-05-05 23:44:11');
INSERT INTO `comment_imgtext_35` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º6', '0', '0', '2019-05-05 23:44:57');
INSERT INTO `comment_imgtext_35` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º14', '0', '0', '2019-05-05 23:46:26');
INSERT INTO `comment_imgtext_35` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º15', '0', '0', '2019-05-05 23:46:35');
INSERT INTO `comment_imgtext_36` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º11', '0', '0', '2019-05-05 23:45:54');
INSERT INTO `comment_imgtext_43` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å¾æ43', '0', '0', '2019-05-12 13:14:11');
INSERT INTO `comment_imgtext_43` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å¾æ43+1', '0', '0', '2019-05-12 13:14:26');
INSERT INTO `comment_imgtext_43` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º43+2', '0', '0', '2019-05-12 13:16:32');
INSERT INTO `comment_imgtext_43` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º43+3', '0', '0', '2019-05-12 13:16:46');
INSERT INTO `comment_imgtext_45` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºidä¸º45çä¿¡æ¯', '0', '0', '2019-05-12 12:36:50');
INSERT INTO `comment_imgtext_45` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºidä¸º45çä¿¡æ¯', '0', '0', '2019-05-12 12:37:11');
INSERT INTO `comment_imgtext_45` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºid45', '0', '0', '2019-05-12 13:25:09');
INSERT INTO `comment_imgtext_45` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºid45', '0', '0', '2019-05-12 13:25:57');
INSERT INTO `comment_imgtext_45` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºid45+3', '0', '0', '2019-05-12 13:26:44');
INSERT INTO `comment_imgtext_45` VALUES ('6', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºid45+5', '0', '0', '2019-05-12 13:27:26');
INSERT INTO `comment_imgtext_45` VALUES ('7', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºid45+6', '0', '0', '2019-05-12 13:28:12');
INSERT INTO `comment_imgtext_45` VALUES ('8', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º45', '0', '0', '2019-05-12 13:42:57');
INSERT INTO `comment_imgtext_47` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åä¸ºå¾æ47', '0', '0', '2019-05-12 12:44:50');
INSERT INTO `comment_imgtext_47` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('6', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('7', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('8', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('9', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åå¾æ47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_video_17` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º4', '0', '0', '2019-05-05 23:44:36');
INSERT INTO `comment_video_17` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º4', '0', '0', '2019-05-05 23:44:40');
INSERT INTO `comment_video_17` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º5', '0', '0', '2019-05-05 23:44:48');
INSERT INTO `comment_video_17` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º7', '0', '0', '2019-05-05 23:45:05');
INSERT INTO `comment_video_17` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º10', '0', '0', '2019-05-05 23:45:45');
INSERT INTO `comment_video_18` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'çåå°çäººå®¶å£', '0', '0', '2019-05-05 22:51:51');
INSERT INTO `comment_video_18` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º1', '0', '0', '2019-05-05 23:43:59');
INSERT INTO `comment_video_18` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®º18', '0', '0', '2019-05-05 23:47:09');
INSERT INTO `comment_video_18` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º2', '0', '0', '2019-05-12 11:52:55');
INSERT INTO `comment_video_18` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º2', '0', '0', '2019-05-12 11:53:15');
INSERT INTO `comment_video_18` VALUES ('6', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º5', '0', '0', '2019-05-12 11:54:30');
INSERT INTO `comment_video_19` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º6', '0', '0', '2019-05-12 11:54:39');
INSERT INTO `comment_video_19` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'ä¿¡æ¯id19', '0', '0', '2019-05-12 13:05:22');
INSERT INTO `comment_video_19` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'ä¿¡æ¯id19+1', '0', '0', '2019-05-12 13:06:17');
INSERT INTO `comment_video_19` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'ä¿¡æ¯id19+2', '0', '0', '2019-05-12 13:07:02');
INSERT INTO `comment_video_19` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è§é¢id19', '0', '0', '2019-05-12 13:22:36');
INSERT INTO `comment_video_19` VALUES ('6', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è§é¢19', '0', '0', '2019-05-12 13:32:45');
INSERT INTO `comment_video_19` VALUES ('7', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è§é¢19+', '0', '0', '2019-05-12 13:32:57');
INSERT INTO `comment_video_19` VALUES ('8', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°æ¥ä¸æ¡', '0', '0', '2019-05-12 13:33:14');
INSERT INTO `comment_video_20` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º20', '0', '0', '2019-05-12 13:01:54');
INSERT INTO `comment_video_20` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º20+1', '0', '0', '2019-05-12 13:03:11');
INSERT INTO `comment_video_20` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è¯è®ºä¿¡æ¯id20', '0', '0', '2019-05-12 13:19:21');
INSERT INTO `comment_video_27` VALUES ('1', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'æ°çè¯è®º1', '0', '0', '2019-05-12 12:28:08');
INSERT INTO `comment_video_27` VALUES ('2', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:15');
INSERT INTO `comment_video_27` VALUES ('3', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('4', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('5', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('6', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('7', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('8', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('9', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('10', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'å½åè§é¢27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('114', 'default_woman.png', 'æµè¯è´¦å·2', '1010', 'è§é¢id27', '0', '0', '2019-05-12 13:12:07');
INSERT INTO `info_adv` VALUES ('9', 'adv', 'è¿æ¯å¹¿åçæ é¢è¿æ¯å¹¿åçæ é¢è¿æ¯å¹¿åçæ é¢è¿æ¯å¹¿åçæ é¢ââ1', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('10', 'adv', 'è¿æ¯å¹¿åçæ é¢ââ2', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i5/TB15WAxmRTH8KJjy0FiYXIRsXXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('11', 'adv', 'è¿æ¯å¹¿åçæ é¢ââ3', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i5/TB15WAxmRTH8KJjy0FiYXIRsXXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i6/TB1fhsBmRDH8KJjSspnYXHNAVXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('12', 'adv', 'è¿æ¯å¹¿åçæ é¢ââè§é¢', '{\"img\":[],\"video\":\"http://localhost:81/video/1556204950710.mp4\"}');
INSERT INTO `info_adv` VALUES ('13', 'adv', 'è¿æ¯ä¿®æ¹äºåç«¯å¹¿åå¸å±æ¼ç¤ºåçå¹¿åçæ é¢', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('14', 'adv', 'ä¿®æ¹ä¹åçå¹¿åå¸å±åæ¥ä¸æ¬¡', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i6/TB1fhsBmRDH8KJjSspnYXHNAVXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_findposter` VALUES ('6', '1012', '2019-04-25 22:40:40', '1556203240889.jpg.jpg', 'å¯»äººå¯äº', '18483221518', 'ææ å¯»æ¾åå®¹', 'ææ æå³å¯»äººå¯äºçç¹å«è¯´æ', '2');
INSERT INTO `info_imgtext` VALUES ('32', 'imt', 'å¸¸è¯', 'æµè¯æ é¢ââ1', '<p>æµè¯åå®¹çå¼å§ââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556203477463.jpg\" style=\"max-width:100%;\"><br></p><p>æµè¯åå®¹çç»æââ1</p>', 'default_man.png', 'æ®éç¨æ·', 'æµè¯è´¦å·3', '1012', '2019-04-25 22:44:47', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('33', 'imt', 'å¸¸è¯', 'æµè¯æ é¢ââ2', '<p>æµè¯åå®¹çå¼å§ââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556203477463.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:81/imgtextimg/1556203504948.jpg\" style=\"max-width:100%;\"><br></p><p>æµè¯åå®¹çç»æââ2</p>', 'default_man.png', 'æ®éç¨æ·', 'æµè¯è´¦å·3', '1012', '2019-04-25 22:45:11', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('34', 'imt', 'å¸¸è¯', 'æµè¯æ é¢ââ3', '<p>æµè¯åå®¹çå¼å§ââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556203477463.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:81/imgtextimg/1556203552669.jpg\" style=\"max-width:100%;\"><br></p><p>æµè¯åå®¹çç»æââ3</p>', 'default_man.png', 'æ®éç¨æ·', 'æµè¯è´¦å·3', '1012', '2019-04-25 22:45:56', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('35', 'imt', 'å¸¸è¯', 'æµè¯æ é¢ââ4', '<p>æµè¯åå®¹çå¼å§ââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556203729030.jpg\" style=\"max-width:100%;\"><br></p><p>æµè¯åå®¹çç»æââ4</p>', 'default_man.png', 'æ®éç¨æ·', 'æµè¯è´¦å·3', '1012', '2019-04-25 22:48:56', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('36', 'imt', 'å¸¸è¯', 'å±ä¸­æµè¯ââ5', '<p style=\"text-align: center;\">å±ä¸­æµè¯ââæµè¯åå®¹çå¼å§ââ5</p><p style=\"text-align: center;\"><img src=\"http://localhost:81/imgtextimg/1556203729030.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\">å±ä¸­æµè¯ââæµè¯åå®¹çç»æââ5</p>', 'default_man.png', 'æ®éç¨æ·', 'æµè¯è´¦å·3', '1012', '2019-04-25 22:50:08', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('37', 'imt', 'å¸¸è¯', 'å±ä¸­æµè¯ââ6', '<p style=\"text-align: left;\">æµè¯åå®¹çå¼å§ââ6</p><p style=\"text-align: left;\"><img src=\"http://localhost:81/imgtextimg/1556203729030.jpg\" style=\"max-width:100%;\"><img src=\"http://localhost:81/imgtextimg/1556203843918.jpg\" style=\"max-width: 100%;\"><br></p><p style=\"text-align: left;\">æµè¯åå®¹çç»æââ6</p>', 'default_man.png', 'æ®éç¨æ·', 'æµè¯è´¦å·3', '1012', '2019-04-25 22:50:51', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('38', 'imt', 'å¸¸è¯', 'å¾æä¸­çæ é¢ââ7', '<p>æ¢äºä¸ä¸ªè´¦å·æ¥æ·»å å¾æçåå®¹ââ7</p><p><img src=\"http://localhost:81/imgtextimg/1556330462900.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:81/imgtextimg/1556330470875.jpg\" style=\"max-width:100%;\"><br></p><p>è¿æ¯åå®¹çæ«å°¾ââ7</p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 10:01:35', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('39', 'imt', 'å¸¸è¯', 'å¾æä¸­çæ é¢å¾æä¸­çæ é¢å¾æä¸­çæ é¢å¾æä¸­çæ é¢å¾æä¸­çæ é¢å¾æä¸­çæ é¢å¾æä¸­çæ é¢ââ8', '<p>æ¢äºä¸è´¦å·æ¥åå¸å¾æçåå®¹ââ8</p><p>è¿ä¸ä¸ªæ¯ä¸åå¤æ·»å å¾çç</p><p>è¿æ¯æ«å°¾äºââ8</p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 10:12:32', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('40', 'imt', 'å¸¸è¯', 'å¾æä¸­çæ é¢ââ9', '<p>æ¢äºä¸è´¦å·æ¥åå¸å¾æçåå®¹ââ9</p><p><img src=\"http://localhost:81/imgtextimg/1556331175861.jpg\" style=\"max-width:100%;\"><br></p><p>åæ¥æ·»å ä¸å¼ å¾çè¯è¯ââ9</p><p><img src=\"http://localhost:81/imgtextimg/1556331194245.jpg\" style=\"max-width:100%;\"><br></p><p>è¿æ¯æ«å°¾äºââ9</p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 10:13:18', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('41', 'imt', 'å¸¸è¯', 'å¾æä¸­çæ é¢ââ10', '<p>æ¢äºä¸ä¸ªè´¦å·æ¥æ·»å ââ10</p><p><img src=\"http://localhost:81/imgtextimg/1556331554010.jpg\"></p><p>åæ·»å ä¸å¼ å¾çââ10</p><p><img src=\"http://localhost:81/imgtextimg/1556331574068.jpg\"><br></p><p>åæ¥ä¸å¼ å¾çââ10</p><p><img src=\"http://localhost:81/imgtextimg/1556331588605.jpg\"></p><p>å¥½äºï¼ä¸æ·»å äºï¼å°æ«å°¾äºââ10</p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 10:23:31', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('42', 'imt', 'å¸¸è¯', 'åå¸ä¸å¼ å¾ææ··åå¾ç', '<p>åéä¾¿åç¹æå­å§</p><p><img src=\"http://localhost:81/imgtextimg/1556337659357.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 12:01:02', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('43', 'imt', 'çæ´»', 'å³äºçæ´»çå¾æçæ é¢ââ1', '<p>å³äºçæ´»çå¾æââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:02:55', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('44', 'imt', 'çæ´»', 'å³äºçæ´»çå¾æçæ é¢ââ2', '<p>å³äºçæ´»çå¾æââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:03:01', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('45', 'imt', 'çæ´»', 'å³äºçæ´»çå¾æçæ é¢ââ3', '<p>å³äºçæ´»çå¾æââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:03:16', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('46', 'imt', 'çæ´»', 'å³äºçæ´»çå¾æçæ é¢ââ4', '<p>å³äºçæ´»çå¾æââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:03:23', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('47', 'imt', 'çæ´»', 'å³äºçæ´»çå¾æçæ é¢ââ5', '<p>å³äºçæ´»çå¾æââ5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:03:31', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('48', 'imt', 'çæ´»', 'å³äºçæ´»çå¾æçæ é¢ââ6', '<p>å³äºçæ´»çå¾æââ6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:03:38', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('49', 'imt', 'åä¹¡', 'å³äºåä¹¡çå¾æçæ é¢ââ1', '<p>å³äºåä¹¡çå¾æââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:03:56', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('50', 'imt', 'åä¹¡', 'å³äºåä¹¡çå¾æçæ é¢ââ2', '<p>å³äºåä¹¡çå¾æââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:02', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('51', 'imt', 'åä¹¡', 'å³äºåä¹¡çå¾æçæ é¢ââ3', '<p>å³äºåä¹¡çå¾æââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:09', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('52', 'imt', 'åä¹¡', 'å³äºåä¹¡çå¾æçæ é¢ââ4', '<p>å³äºåä¹¡çå¾æââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:17', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('53', 'imt', 'åä¹¡', 'å³äºåä¹¡çå¾æçæ é¢ââ5', '<p>å³äºåä¹¡çå¾æââ5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:24', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('54', 'imt', 'åä¹¡', 'å³äºåä¹¡çå¾æçæ é¢ââ6', '<p>å³äºåä¹¡çå¾æââ6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:30', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('55', 'imt', 'è¡ä¸', 'å³äºè¡ä¸çå¾æçæ é¢ââ1', '<p>å³äºè¡ä¸çå¾æââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:47', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('56', 'imt', 'è¡ä¸', 'å³äºè¡ä¸çå¾æçæ é¢ââ2', '<p>å³äºè¡ä¸çå¾æââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:52', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('57', 'imt', 'è¡ä¸', 'å³äºè¡ä¸çå¾æçæ é¢ââ3', '<p>å³äºè¡ä¸çå¾æââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:04:59', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('58', 'imt', 'è¡ä¸', 'å³äºè¡ä¸çå¾æçæ é¢ââ4', '<p>å³äºè¡ä¸çå¾æââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:05', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('59', 'imt', 'è¡ä¸', 'å³äºè¡ä¸çå¾æçæ é¢ââ5', '<p>å³äºè¡ä¸çå¾æââ5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:11', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('60', 'imt', 'è¡ä¸', 'å³äºè¡ä¸çå¾æçæ é¢ââ6', '<p>å³äºè¡ä¸çå¾æââ6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:17', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('61', 'imt', 'åæ', 'å³äºåæçå¾æçæ é¢ââ1', '<p>å³äºåæçå¾æââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:33', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('62', 'imt', 'åæ', 'å³äºåæçå¾æçæ é¢ââ2', '<p>å³äºåæçå¾æââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:39', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('63', 'imt', 'åæ', 'å³äºåæçå¾æçæ é¢ââ3', '<p>å³äºåæçå¾æââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:44', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('64', 'imt', 'åæ', 'å³äºåæçå¾æçæ é¢ââ4', '<p>å³äºåæçå¾æââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:50', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('65', 'imt', 'åæ', 'å³äºåæçå¾æçæ é¢ââ5', '<p>å³äºåæçå¾æââ5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:05:58', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('66', 'imt', 'åæ', 'å³äºåæçå¾æçæ é¢ââ6', '<p>å³äºåæçå¾æââ6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:04', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('67', 'imt', 'ç§æ', 'å³äºç§æçå¾æçæ é¢ââ1', '<p>å³äºç§æçå¾æââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:20', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('68', 'imt', 'ç§æ', 'å³äºç§æçå¾æçæ é¢ââ2', '<p>å³äºç§æçå¾æââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:28', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('69', 'imt', 'ç§æ', 'å³äºç§æçå¾æçæ é¢ââ3', '<p>å³äºç§æçå¾æââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:35', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('70', 'imt', 'ç§æ', 'å³äºç§æçå¾æçæ é¢ââ4', '<p>å³äºç§æçå¾æââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:41', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('71', 'imt', 'ç§æ', 'å³äºç§æçå¾æçæ é¢ââ5', '<p>å³äºç§æçå¾æââ5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:47', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('72', 'imt', 'ç§æ', 'å³äºç§æçå¾æçæ é¢ââ6', '<p>å³äºç§æçå¾æââ6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:06:53', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('73', 'imt', 'åäº', 'å³äºåäºçå¾æçæ é¢ââ1', '<p>å³äºåäºçå¾æçåå®¹ââ1</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:10:44', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('74', 'imt', 'åäº', 'å³äºåäºçå¾æçæ é¢ââ2', '<p>å³äºåäºçå¾æçåå®¹ââ2</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:11:25', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('75', 'imt', 'åäº', 'å³äºåäºçå¾æçæ é¢ââ3', '<p>å³äºåäºçå¾æçåå®¹ââ3</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:11:31', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('76', 'imt', 'åäº', 'å³äºåäºçå¾æçæ é¢ââ4', '<p>å³äºåäºçå¾æçåå®¹ââ4</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:11:38', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('77', 'imt', 'åäº', 'å³äºåäºçå¾æçæ é¢ââ5', '<p>å³äºåäºçå¾æçåå®¹ââ5</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', 'æ®éç¨æ·', 'æµè¯è´¦å·2', '1010', '2019-04-27 20:11:43', '0', '0', '0', '', '2');
INSERT INTO `info_question` VALUES ('15', 'ask', 'å¸¸è¯', 'è¿æ¯æé®çç¬¬ä¸ä¸ªé®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·1', 'æ®éç¨æ·', '1009', '2019-04-25 23:14:58', '', '2');
INSERT INTO `info_question` VALUES ('16', 'ask', 'å¸¸è¯,è¡ä¸,ç§æ', 'è¿æ¯æé®çç¬¬äºä¸ªé®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·1', 'æ®éç¨æ·', '1009', '2019-04-25 23:15:13', '', '2');
INSERT INTO `info_question` VALUES ('17', 'ask', 'å¸¸è¯,è¡ä¸,ç§æ', 'è¿æ¯æé®çç¬¬ä¸ä¸ªé®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·1', 'æ®éç¨æ·', '1009', '2019-04-25 23:15:22', '', '2');
INSERT INTO `info_question` VALUES ('18', 'ask', 'åä¹¡,åæ', 'è¿æ¯ææ¢äºä¸ä¸ªè´¦å·é®çç¬¬äºä¸ªé®é¢ââ5', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 10:34:53', '', '2');
INSERT INTO `info_question` VALUES ('19', 'ask', 'è¡ä¸,åæ', 'è¿æ¯ææ¢äºä¸ä¸ªè´¦å·é®çç¬¬å­ä¸ªé®é¢ââ6', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 10:35:09', '', '2');
INSERT INTO `info_question` VALUES ('20', 'ask', 'å¸¸è¯', 'åå¸ä¸ä¸ªé®é¢ççåç«¯æå°åºä»ä¹', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 13:10:53', '', '2');
INSERT INTO `info_question` VALUES ('21', 'ask', 'å¸¸è¯', 'ååå¸ä¸ä¸ªé®é¢ççåç«¯æå°åºä»ä¹ï¼ååæ²¡ææå', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 13:11:39', '', '2');
INSERT INTO `info_question` VALUES ('22', 'ask', 'å¸¸è¯', 'åæ¥ä¸ä¸ªé®é¢', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 13:12:48', '', '2');
INSERT INTO `info_question` VALUES ('23', 'ask', 'çæ´»', 'çæ´»é®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:57:33', '', '2');
INSERT INTO `info_question` VALUES ('24', 'ask', 'çæ´»', 'çæ´»é®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:57:39', '', '2');
INSERT INTO `info_question` VALUES ('25', 'ask', 'çæ´»', 'çæ´»é®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:57:42', '', '2');
INSERT INTO `info_question` VALUES ('26', 'ask', 'çæ´»', 'çæ´»é®é¢ââ4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:57:46', '', '2');
INSERT INTO `info_question` VALUES ('27', 'ask', 'çæ´»', 'çæ´»é®é¢ââ5', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:57:51', '', '2');
INSERT INTO `info_question` VALUES ('28', 'ask', 'åä¹¡', 'åä¹¡é®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:17', '', '2');
INSERT INTO `info_question` VALUES ('29', 'ask', 'åä¹¡', 'åä¹¡é®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:21', '', '2');
INSERT INTO `info_question` VALUES ('30', 'ask', 'åä¹¡', 'åä¹¡é®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:25', '', '2');
INSERT INTO `info_question` VALUES ('31', 'ask', 'è¡ä¸', 'è¡ä¸é®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:36', '', '2');
INSERT INTO `info_question` VALUES ('32', 'ask', 'è¡ä¸', 'è¡ä¸é®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:40', '', '2');
INSERT INTO `info_question` VALUES ('33', 'ask', 'è¡ä¸', 'è¡ä¸é®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:43', '', '2');
INSERT INTO `info_question` VALUES ('34', 'ask', 'åæ', 'åæé®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:53', '', '2');
INSERT INTO `info_question` VALUES ('35', 'ask', 'åæ', 'åæé®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:58:57', '', '2');
INSERT INTO `info_question` VALUES ('36', 'ask', 'åæ', 'åæé®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:01', '', '2');
INSERT INTO `info_question` VALUES ('37', 'ask', 'ç§æ', 'ç§æé®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:14', '', '2');
INSERT INTO `info_question` VALUES ('38', 'ask', 'ç§æ', 'ç§æé®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:17', '', '2');
INSERT INTO `info_question` VALUES ('39', 'ask', 'ç§æ', 'ç§æé®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:20', '', '2');
INSERT INTO `info_question` VALUES ('40', 'ask', 'åäº', 'åäºé®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:30', '', '2');
INSERT INTO `info_question` VALUES ('41', 'ask', 'åäº', 'åäºé®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:33', '', '2');
INSERT INTO `info_question` VALUES ('42', 'ask', 'åäº', 'åäºé®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:37', '', '2');
INSERT INTO `info_question` VALUES ('43', 'ask', 'è´¢ç»', 'è´¢ç»é®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:52', '', '2');
INSERT INTO `info_question` VALUES ('44', 'ask', 'è´¢ç»', 'è´¢ç»é®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:55', '', '2');
INSERT INTO `info_question` VALUES ('45', 'ask', 'è´¢ç»', 'è´¢ç»é®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 19:59:58', '', '2');
INSERT INTO `info_question` VALUES ('46', 'ask', 'äººç', 'äººçé®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:00:09', '', '2');
INSERT INTO `info_question` VALUES ('47', 'ask', 'äººç', 'äººçé®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:00:13', '', '2');
INSERT INTO `info_question` VALUES ('48', 'ask', 'äººç', 'äººçé®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:00:16', '', '2');
INSERT INTO `info_question` VALUES ('49', 'ask', 'ä¼é²', 'ä¼é²é®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:00:26', '', '2');
INSERT INTO `info_question` VALUES ('50', 'ask', 'ä¼é²', 'ä¼é²é®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:00:29', '', '2');
INSERT INTO `info_question` VALUES ('51', 'ask', 'ä¼é²', 'ä¼é²é®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:00:33', '', '2');
INSERT INTO `info_question` VALUES ('52', 'ask', 'é®ç­', 'é®ç­é®é¢ââ1', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:01:39', '', '2');
INSERT INTO `info_question` VALUES ('53', 'ask', 'é®ç­', 'é®ç­é®é¢ââ2', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:01:44', '', '2');
INSERT INTO `info_question` VALUES ('54', 'ask', 'é®ç­', 'é®ç­é®é¢ââ3', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:01:47', '', '2');
INSERT INTO `info_video` VALUES ('17', 'vid', 'å¸¸è¯', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556204950710.mp4', 'default_man.png', 'æµè¯è´¦å·3', 'æ®éç¨æ·', '1012', '2019-04-25 23:09:10', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('18', 'vid', 'å¸¸è¯', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556204967788.mp4', 'default_man.png', 'æµè¯è´¦å·3', 'æ®éç¨æ·', '1012', '2019-04-25 23:09:27', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('19', 'vid', 'çæ´»', 'è¿æ¯ä¸ä¸ªå¨ç©è§é¢ââ2', '1556204992491.mp4', 'default_man.png', 'æµè¯è´¦å·3', 'æ®éç¨æ·', '1012', '2019-04-25 23:09:52', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('20', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªèè¹è§é¢ââ3', '1556205016500.mp4', 'default_man.png', 'æµè¯è´¦å·3', 'æ®éç¨æ·', '1012', '2019-04-25 23:10:16', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('21', 'vid', 'å¸¸è¯', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556205097879.mp4', 'default_man.png', 'æµè¯è´¦å·3', 'æ®éç¨æ·', '1012', '2019-04-25 23:11:37', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('22', 'vid', 'åæ,ç§æ,åäº', 'è¿æ¯ç¬¬äºä¸ªè§é¢ââ5', '1556205127184.mp4', 'default_man.png', 'æµè¯è´¦å·3', 'æ®éç¨æ·', '1012', '2019-04-25 23:12:07', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('23', 'vid', 'å¸¸è¯', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556332127646.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 10:28:47', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('24', 'vid', 'å¸¸è¯', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556332179971.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 10:29:40', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('25', 'vid', 'å¸¸è¯,è¡ä¸,åæ', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556332227933.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 10:30:27', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('26', 'vid', 'å¸¸è¯,è¡ä¸,åæ', 'è¿æ¯ä¸ä¸ªè§é¢æ é¢çç¤ºä¾', '1556332327915.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 10:32:07', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('27', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºçæ´»ãåä¹¡çè§é¢ââ1', '1556367165326.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:12:45', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('28', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºçæ´»ãåä¹¡çè§é¢ââ2', '1556367287194.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:14:47', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('29', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºçæ´»ãåä¹¡çè§é¢ââ3', '1556367326965.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:15:27', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('30', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºçæ´»ãåä¹¡çè§é¢ââ1', '1556367476070.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:17:56', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('31', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºåä¹¡ãçæ´»çè§é¢ââ5', '1556367542032.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:19:02', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('32', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºåä¹¡ãçæ´»çè§é¢ââ5', '1556367568156.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:19:28', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('33', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºåä¹¡ãçæ´»çè§é¢ââ5', '1556367572717.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:19:32', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('34', 'vid', 'çæ´»,åä¹¡', 'è¿æ¯ä¸ä¸ªå³äºåä¹¡ãçæ´»çè§é¢ââ5', '1556367576629.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:19:36', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('35', 'vid', 'è¡ä¸,åæ,ç§æ', 'è¿æ¯ä¸ä¸ªå³äºè¡ä¸åæç§æçè§é¢ââ4', '1556367623888.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:20:23', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('36', 'vid', 'è¡ä¸,åæ,ç§æ', 'è¿æ¯ä¸ä¸ªå³äºè¡ä¸åæç§æçè§é¢ââ4', '1556367629535.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:20:29', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('37', 'vid', 'åäº,è´¢ç»,äººç', 'è¿æ¯ä¸ä¸ªå³äºåäºãè´¢ç»ãäººççè§é¢', '1556367678918.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:21:18', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('38', 'vid', 'åäº,è´¢ç»,äººç', 'è¿æ¯ä¸ä¸ªå³äºåäºãè´¢ç»ãäººççè§é¢', '1556367689216.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:21:29', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('39', 'vid', 'åäº,è´¢ç»,äººç', 'è¿æ¯ä¸ä¸ªå³äºåäºãè´¢ç»ãäººççè§é¢', '1556367691196.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:21:31', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('40', 'vid', 'åäº,è´¢ç»,äººç', 'è¿æ¯ä¸ä¸ªå³äºåäºãè´¢ç»ãäººççè§é¢', '1556367692868.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:21:32', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('41', 'vid', 'åäº,è´¢ç»,äººç', 'è¿æ¯ä¸ä¸ªå³äºåäºãè´¢ç»ãäººççè§é¢', '1556367706111.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:21:46', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('42', 'vid', 'äººç,ä¼é²', 'è¿æ¯ä¸ä¸ªäººçãä¼é²çè§é¢', '1556368322423.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:32:02', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('43', 'vid', 'äººç,ä¼é²', 'è¿æ¯ä¸ä¸ªäººçãä¼é²çè§é¢', '1556368324211.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:32:04', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('44', 'vid', 'äººç,ä¼é²', 'è¿æ¯ä¸ä¸ªäººçãä¼é²çè§é¢', '1556368325748.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:32:05', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('45', 'vid', 'äººç,ä¼é²', 'è¿æ¯ä¸ä¸ªäººçãä¼é²çè§é¢', '1556368327308.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:32:07', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('46', 'vid', 'äººç,ä¼é²', 'è¿æ¯ä¸ä¸ªäººçãä¼é²çè§é¢', '1556368328914.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:32:08', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('47', 'vid', 'äººç,ä¼é²', 'è¿æ¯ä¸ä¸ªäººçãä¼é²çè§é¢', '1556368331400.mp4', 'default_woman.png', 'æµè¯è´¦å·2', 'æ®éç¨æ·', '1010', '2019-04-27 20:32:11', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `user` VALUES ('1009', '12345678901', '123456', 'æµè¯è´¦å·1', 'default_woman.png', '[\"æ¨è\",\"å¸¸è¯\",\"é®ç­\"]', 'æ®éç¨æ·', '0', '0', '{\"val\":\"ç¨æ·1å·\",\"secret\":\"true\"}', '{\"val\":\"2\",\"secret\":\"true\"}', '{\"val\":\"åå·å¹¿å®\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"æå­ï¼é³ä¹\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '1è¿æ¯æéä¾¿è¯´çåå®¹ï¼è¿æ¬¡å°±è¿ä¹å¤äºï¼ä¸æ¬¡åè¡¥åã', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 20:23:10', '');
INSERT INTO `user` VALUES ('1010', '12345678902', '123456', 'æµè¯è´¦å·2', 'default_woman.png', '[\"æ¨è\",\"å¸¸è¯\",\"é®ç­\"]', 'æ®éç¨æ·', '0', '0', '{\"val\":\"ç¨æ·1å·\",\"secret\":\"true\"}', '{\"val\":\"2\",\"secret\":\"true\"}', '{\"val\":\"åå·å¹¿å®\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"æå­ï¼é³ä¹\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '2è¿æ¯æéä¾¿è¯´çåå®¹ï¼è¿æ¬¡å°±è¿ä¹å¤äºï¼ä¸æ¬¡åè¡¥åã', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 20:24:14', '');
INSERT INTO `user` VALUES ('1012', '12345678903', '123456', 'æµè¯è´¦å·3', 'default_man.png', '[\"æ¨è\",\"å¸¸è¯\",\"é®ç­\"]', 'æ®éç¨æ·', '0', '0', '{\"val\":\"ç¨æ·1å·\",\"secret\":\"true\"}', '{\"val\":\"1\",\"secret\":\"true\"}', '{\"val\":\"åå·å¹¿å®\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"æå­ï¼é³ä¹\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '3è¿æ¯æéä¾¿è¯´çåå®¹ï¼è¿æ¬¡å°±è¿ä¹å¤äºï¼ä¸æ¬¡åè¡¥åã', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 20:48:54', '');
INSERT INTO `user` VALUES ('1013', '12345678904', '123456', 'æµè¯è´¦å·4', 'default_man.png', '[\"æ¨è\",\"å¸¸è¯\",\"é®ç­\"]', 'æ®éç¨æ·', '0', '0', '{\"val\":\"ç¨æ·1å·\",\"secret\":\"true\"}', '{\"val\":\"2\",\"secret\":\"true\"}', '{\"val\":\"åå·å¹¿å®\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"æå­ï¼é³ä¹\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '4è¿æ¯æéä¾¿è¯´çåå®¹ï¼è¿æ¬¡å°±è¿ä¹å¤äºï¼ä¸æ¬¡åè¡¥åã', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 22:49:17', '');
