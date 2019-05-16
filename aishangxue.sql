/*
MySQL Data Transfer
Source Host: localhost
Source Database: aishangxue
Target Host: localhost
Target Database: aishangxue
Date: 2019/5/16 ������ 16:46:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for answer_0
-- ----------------------------
DROP TABLE IF EXISTS `answer_0`;
CREATE TABLE `answer_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_11
-- ----------------------------
DROP TABLE IF EXISTS `answer_11`;
CREATE TABLE `answer_11` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_12
-- ----------------------------
DROP TABLE IF EXISTS `answer_12`;
CREATE TABLE `answer_12` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_14
-- ----------------------------
DROP TABLE IF EXISTS `answer_14`;
CREATE TABLE `answer_14` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_15
-- ----------------------------
DROP TABLE IF EXISTS `answer_15`;
CREATE TABLE `answer_15` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_16
-- ----------------------------
DROP TABLE IF EXISTS `answer_16`;
CREATE TABLE `answer_16` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_17
-- ----------------------------
DROP TABLE IF EXISTS `answer_17`;
CREATE TABLE `answer_17` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_18
-- ----------------------------
DROP TABLE IF EXISTS `answer_18`;
CREATE TABLE `answer_18` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_19
-- ----------------------------
DROP TABLE IF EXISTS `answer_19`;
CREATE TABLE `answer_19` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_20
-- ----------------------------
DROP TABLE IF EXISTS `answer_20`;
CREATE TABLE `answer_20` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_21
-- ----------------------------
DROP TABLE IF EXISTS `answer_21`;
CREATE TABLE `answer_21` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_22
-- ----------------------------
DROP TABLE IF EXISTS `answer_22`;
CREATE TABLE `answer_22` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_23
-- ----------------------------
DROP TABLE IF EXISTS `answer_23`;
CREATE TABLE `answer_23` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answer_24
-- ----------------------------
DROP TABLE IF EXISTS `answer_24`;
CREATE TABLE `answer_24` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对应问题的id',
  `author_headimg` char(100) NOT NULL DEFAULT '' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_number` int(10) NOT NULL DEFAULT '1000' COMMENT '作者的账号',
  `answer` text NOT NULL COMMENT '回答的内容',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL COMMENT '发布时间年月日时分秒',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_0
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_0`;
CREATE TABLE `comment_imgtext_0` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_32
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_32`;
CREATE TABLE `comment_imgtext_32` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_34
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_34`;
CREATE TABLE `comment_imgtext_34` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_35
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_35`;
CREATE TABLE `comment_imgtext_35` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_36
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_36`;
CREATE TABLE `comment_imgtext_36` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_43
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_43`;
CREATE TABLE `comment_imgtext_43` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_45
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_45`;
CREATE TABLE `comment_imgtext_45` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_imgtext_47
-- ----------------------------
DROP TABLE IF EXISTS `comment_imgtext_47`;
CREATE TABLE `comment_imgtext_47` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_0
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_0`;
CREATE TABLE `comment_video_0` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_17
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_17`;
CREATE TABLE `comment_video_17` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_18
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_18`;
CREATE TABLE `comment_video_18` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_19
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_19`;
CREATE TABLE `comment_video_19` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_20
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_20`;
CREATE TABLE `comment_video_20` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_video_27
-- ----------------------------
DROP TABLE IF EXISTS `comment_video_27`;
CREATE TABLE `comment_video_27` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `author_headimg` char(30) NOT NULL COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '评论者昵称' COMMENT '评论者昵称',
  `author_number` int(4) NOT NULL COMMENT '评论者账号',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `like` int(4) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(4) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `publish_time` datetime NOT NULL DEFAULT '2000-01-01 21:03:04' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_adv
-- ----------------------------
DROP TABLE IF EXISTS `info_adv`;
CREATE TABLE `info_adv` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `type` char(3) NOT NULL DEFAULT 'adv' COMMENT '有所信息类表都有这项类型，例如：imt、vid、ask、adv',
  `title` varchar(150) NOT NULL COMMENT '广告标题',
  `src` text NOT NULL COMMENT '图片的src',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_findposter
-- ----------------------------
DROP TABLE IF EXISTS `info_findposter`;
CREATE TABLE `info_findposter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author_number` char(11) NOT NULL DEFAULT '' COMMENT '作者账号',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  `img` char(255) NOT NULL DEFAULT '' COMMENT '寻_启事的图片名字',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '标题，例如：寻人启事',
  `tel` char(11) NOT NULL DEFAULT '' COMMENT '练习电话',
  `content` text NOT NULL COMMENT '寻人启事的具体内容',
  `special` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_freepublish
-- ----------------------------
DROP TABLE IF EXISTS `info_freepublish`;
CREATE TABLE `info_freepublish` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author_number` char(11) NOT NULL DEFAULT '' COMMENT '作者账号',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  `img` char(255) NOT NULL DEFAULT '' COMMENT '自定义的图片',
  `labels` tinytext NOT NULL COMMENT '自定义标签的键值对',
  `special` tinytext NOT NULL COMMENT '定定义的特别说明',
  `content` text NOT NULL COMMENT '定义自的内容',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_imgtext
-- ----------------------------
DROP TABLE IF EXISTS `info_imgtext`;
CREATE TABLE `info_imgtext` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '爱尚信息的id',
  `type` char(3) NOT NULL DEFAULT 'imt' COMMENT '类型，例如：imt、vid、ask、adv',
  `classify` char(50) NOT NULL COMMENT '详细分类（常识、生活、军事等）',
  `title` varchar(80) NOT NULL COMMENT '标题、问题',
  `imgtext` text NOT NULL COMMENT '发布的内容主体',
  `author_headimg` char(30) NOT NULL DEFAULT '作者头像' COMMENT '作者头像',
  `author_title` char(20) NOT NULL DEFAULT '普通用户' COMMENT '作者头衔，例如：普通用户',
  `author_nickname` char(30) NOT NULL DEFAULT '作者昵称' COMMENT '作者昵称',
  `author_number` int(4) NOT NULL DEFAULT '1000' COMMENT '发布者的账号',
  `publish_time` datetime NOT NULL COMMENT '布发时间年月日时分秒',
  `like` int(2) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(2) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `look` int(2) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `comment_form` char(20) NOT NULL DEFAULT '' COMMENT '评论表的表名',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_job
-- ----------------------------
DROP TABLE IF EXISTS `info_job`;
CREATE TABLE `info_job` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `job_type` char(30) NOT NULL DEFAULT '兼职' COMMENT '职位类型（兼职、全职）',
  `author_number` int(12) NOT NULL COMMENT '发布者的账号',
  `publish_time` datetime NOT NULL,
  `img` char(255) DEFAULT '' COMMENT '工作场景照片的名字',
  `name` char(50) NOT NULL DEFAULT '' COMMENT '工作职责',
  `time` char(100) NOT NULL COMMENT '工作时间',
  `site` char(255) NOT NULL DEFAULT '' COMMENT '工作地点',
  `payment` char(50) NOT NULL DEFAULT '暂未填写' COMMENT '酬薪',
  `tel` char(11) NOT NULL DEFAULT '' COMMENT '电话号码',
  `special` varchar(255) NOT NULL DEFAULT '无特别说明' COMMENT '特别说明',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '工作描述',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_question
-- ----------------------------
DROP TABLE IF EXISTS `info_question`;
CREATE TABLE `info_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '问题的id',
  `type` char(3) NOT NULL DEFAULT 'ask' COMMENT '类型，例如：imt、vid、ask、adv',
  `classify` char(50) NOT NULL COMMENT '分类（常识、生活、军事等）',
  `question` char(100) NOT NULL COMMENT '问题',
  `author_headimg` char(20) NOT NULL COMMENT '发布者头像',
  `author_nickname` char(30) NOT NULL,
  `author_title` char(20) NOT NULL COMMENT '用户头衔，例如：普通用户',
  `author_number` int(4) NOT NULL DEFAULT '1000' COMMENT '发布者的账号',
  `publish_time` datetime NOT NULL COMMENT '布发时间年月日时分秒',
  `answer_table` char(20) NOT NULL DEFAULT '' COMMENT '对应问题的回答的表名，命名规范：answer+id',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_seconddeal
-- ----------------------------
DROP TABLE IF EXISTS `info_seconddeal`;
CREATE TABLE `info_seconddeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二手交易商品的id',
  `author_number` char(11) NOT NULL DEFAULT '' COMMENT '作者账号',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  `img` char(255) NOT NULL DEFAULT '' COMMENT '图片名字',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '商品名字，如华为nova3e',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '商品价格',
  `tel` char(11) NOT NULL COMMENT '电话',
  `what_new` char(255) NOT NULL DEFAULT '' COMMENT '几成新，例如：八成新',
  `special` char(255) NOT NULL COMMENT '特别说明',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '二手商品描述',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info_video
-- ----------------------------
DROP TABLE IF EXISTS `info_video`;
CREATE TABLE `info_video` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '视频的id',
  `type` char(3) NOT NULL DEFAULT 'vid' COMMENT '类型，例如：imt、vid、ask、adv',
  `classify` char(50) NOT NULL COMMENT '详细分类（常识、生活、军事等）',
  `title` varchar(80) NOT NULL COMMENT '标题、问题',
  `video` char(20) NOT NULL DEFAULT '' COMMENT '视频名字',
  `author_headimg` char(20) NOT NULL DEFAULT '作者头像' COMMENT '作者头像',
  `author_nickname` char(30) NOT NULL DEFAULT '' COMMENT '作者昵称',
  `author_title` char(20) NOT NULL DEFAULT '普通用户' COMMENT '作者头衔',
  `author_number` int(4) NOT NULL DEFAULT '1000' COMMENT '发布者的账号',
  `publish_time` datetime NOT NULL COMMENT '布发时间年月日时分秒',
  `like` int(8) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `hate` int(8) NOT NULL DEFAULT '0' COMMENT '消赞次数',
  `transpond` int(8) NOT NULL DEFAULT '0' COMMENT '转发次数',
  `comment_table` char(20) NOT NULL DEFAULT 'comment_video0' COMMENT '评论表的表名',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '信息状态：（1、待发布；2、已发布；3、已删除；4、发布失败）',
  PRIMARY KEY (`id`),
  KEY `account_number` (`author_number`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `number` smallint(5) NOT NULL AUTO_INCREMENT COMMENT 'è´¦å·',
  `pwd` char(16) NOT NULL COMMENT 'å¯†ç ',
  `name` char(255) NOT NULL COMMENT 'å§“å',
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `number` int(10) NOT NULL AUTO_INCREMENT COMMENT '账号',
  `tel` char(11) NOT NULL DEFAULT '暂未填写' COMMENT '手机号码，例如18483221518',
  `pwd` char(16) NOT NULL DEFAULT '123456' COMMENT '密码',
  `nickname` char(30) NOT NULL COMMENT '昵称',
  `head_img` char(255) NOT NULL DEFAULT 'default_man.png' COMMENT '头像名字',
  `added_classify` char(64) NOT NULL DEFAULT '["推荐","常识","问答"]' COMMENT '添加的新闻信息类',
  `title` char(20) NOT NULL DEFAULT '普通用户' COMMENT '称谓，例如：普通用户',
  `index` tinyint(4) NOT NULL DEFAULT '0' COMMENT '人气指数',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '账号等级',
  `name` char(255) NOT NULL DEFAULT '暂未填写' COMMENT '姓名',
  `sex` char(255) NOT NULL DEFAULT '0' COMMENT '性别：（0、暂未填写；1、男；2、女）',
  `native_place` char(255) NOT NULL DEFAULT '暂未填写' COMMENT '籍贯',
  `job` char(255) NOT NULL DEFAULT '暂未填写' COMMENT '职业，例如：web前端',
  `hobby` char(255) NOT NULL DEFAULT '[]' COMMENT '兴趣爱好',
  `birthday` char(255) NOT NULL DEFAULT '2000-01-01' COMMENT '出生年月日',
  `produce` varchar(255) NOT NULL DEFAULT '暂未填写' COMMENT '个人介绍',
  `balance` float(20,0) NOT NULL DEFAULT '0' COMMENT '余额',
  `coupon` int(20) NOT NULL DEFAULT '0' COMMENT '购物券',
  `coupon_dot` int(20) NOT NULL DEFAULT '0' COMMENT '购物点',
  `attention` varchar(255) NOT NULL DEFAULT '0' COMMENT '关注',
  `fans` varchar(255) NOT NULL DEFAULT '0' COMMENT '粉丝',
  `collect` varchar(255) NOT NULL DEFAULT '0' COMMENT '收藏',
  `publish` varchar(255) NOT NULL DEFAULT '0' COMMENT '发布',
  `about_me` varchar(255) NOT NULL DEFAULT '0' COMMENT '与我相关',
  `regist_time` datetime NOT NULL COMMENT '注册账号的时间',
  `set` tinytext NOT NULL COMMENT '用户对网页的基本设置',
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `answer_14` VALUES ('1', 'default_man.png', '测试账号3', '1012', '大是大非阿阿道夫', '0', '0', '2019-04-25 19:48:18');
INSERT INTO `answer_15` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '这是回答', '0', '0', '2019-05-12 17:59:04');
INSERT INTO `answer_16` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:13');
INSERT INTO `answer_17` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:31');
INSERT INTO `answer_18` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:18');
INSERT INTO `answer_19` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:20');
INSERT INTO `answer_20` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:33');
INSERT INTO `answer_21` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:22');
INSERT INTO `answer_22` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:24');
INSERT INTO `answer_23` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:36');
INSERT INTO `answer_24` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '已经回答', '0', '0', '2019-05-12 17:59:26');
INSERT INTO `comment_imgtext_32` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '评论3', '0', '0', '2019-05-05 23:44:27');
INSERT INTO `comment_imgtext_32` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '评论8', '0', '0', '2019-05-05 23:45:17');
INSERT INTO `comment_imgtext_32` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论12', '0', '0', '2019-05-05 23:46:03');
INSERT INTO `comment_imgtext_32` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '评论13', '0', '0', '2019-05-05 23:46:12');
INSERT INTO `comment_imgtext_32` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '评论13', '0', '0', '2019-05-05 23:46:16');
INSERT INTO `comment_imgtext_32` VALUES ('6', 'default_woman.png', '测试账号2', '1010', '评论17', '0', '0', '2019-05-05 23:46:57');
INSERT INTO `comment_imgtext_32` VALUES ('7', 'default_woman.png', '测试账号2', '1010', '评论19', '0', '0', '2019-05-05 23:47:18');
INSERT INTO `comment_imgtext_32` VALUES ('8', 'default_woman.png', '测试账号2', '1010', '新的评论1', '0', '0', '2019-05-12 11:52:37');
INSERT INTO `comment_imgtext_32` VALUES ('9', 'default_woman.png', '测试账号2', '1010', '新的评论3', '0', '0', '2019-05-12 11:53:28');
INSERT INTO `comment_imgtext_32` VALUES ('10', 'default_woman.png', '测试账号2', '1010', '新的评论3', '0', '0', '2019-05-12 11:53:29');
INSERT INTO `comment_imgtext_34` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '评论9', '0', '0', '2019-05-05 23:45:36');
INSERT INTO `comment_imgtext_34` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '评论20', '0', '0', '2019-05-05 23:47:28');
INSERT INTO `comment_imgtext_34` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '新的评论4', '0', '0', '2019-05-12 11:54:19');
INSERT INTO `comment_imgtext_35` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '评论2', '0', '0', '2019-05-05 23:44:11');
INSERT INTO `comment_imgtext_35` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '评论6', '0', '0', '2019-05-05 23:44:57');
INSERT INTO `comment_imgtext_35` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论14', '0', '0', '2019-05-05 23:46:26');
INSERT INTO `comment_imgtext_35` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '评论15', '0', '0', '2019-05-05 23:46:35');
INSERT INTO `comment_imgtext_36` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '评论11', '0', '0', '2019-05-05 23:45:54');
INSERT INTO `comment_imgtext_43` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '图文43', '0', '0', '2019-05-12 13:14:11');
INSERT INTO `comment_imgtext_43` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '图文43+1', '0', '0', '2019-05-12 13:14:26');
INSERT INTO `comment_imgtext_43` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论43+2', '0', '0', '2019-05-12 13:16:32');
INSERT INTO `comment_imgtext_43` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '评论43+3', '0', '0', '2019-05-12 13:16:46');
INSERT INTO `comment_imgtext_45` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '评论id为45的信息', '0', '0', '2019-05-12 12:36:50');
INSERT INTO `comment_imgtext_45` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '评论id为45的信息', '0', '0', '2019-05-12 12:37:11');
INSERT INTO `comment_imgtext_45` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论id45', '0', '0', '2019-05-12 13:25:09');
INSERT INTO `comment_imgtext_45` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '评论id45', '0', '0', '2019-05-12 13:25:57');
INSERT INTO `comment_imgtext_45` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '评论id45+3', '0', '0', '2019-05-12 13:26:44');
INSERT INTO `comment_imgtext_45` VALUES ('6', 'default_woman.png', '测试账号2', '1010', '评论id45+5', '0', '0', '2019-05-12 13:27:26');
INSERT INTO `comment_imgtext_45` VALUES ('7', 'default_woman.png', '测试账号2', '1010', '评论id45+6', '0', '0', '2019-05-12 13:28:12');
INSERT INTO `comment_imgtext_45` VALUES ('8', 'default_woman.png', '测试账号2', '1010', '评论45', '0', '0', '2019-05-12 13:42:57');
INSERT INTO `comment_imgtext_47` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '当前为图文47', '0', '0', '2019-05-12 12:44:50');
INSERT INTO `comment_imgtext_47` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('6', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('7', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('8', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_imgtext_47` VALUES ('9', 'default_woman.png', '测试账号2', '1010', '当前图文47+1', '0', '0', '2019-05-12 12:46:54');
INSERT INTO `comment_video_17` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '评论4', '0', '0', '2019-05-05 23:44:36');
INSERT INTO `comment_video_17` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '评论4', '0', '0', '2019-05-05 23:44:40');
INSERT INTO `comment_video_17` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论5', '0', '0', '2019-05-05 23:44:48');
INSERT INTO `comment_video_17` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '评论7', '0', '0', '2019-05-05 23:45:05');
INSERT INTO `comment_video_17` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '评论10', '0', '0', '2019-05-05 23:45:45');
INSERT INTO `comment_video_18` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '王嘉尔看人家口', '0', '0', '2019-05-05 22:51:51');
INSERT INTO `comment_video_18` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '评论1', '0', '0', '2019-05-05 23:43:59');
INSERT INTO `comment_video_18` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论18', '0', '0', '2019-05-05 23:47:09');
INSERT INTO `comment_video_18` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '新的评论2', '0', '0', '2019-05-12 11:52:55');
INSERT INTO `comment_video_18` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '新的评论2', '0', '0', '2019-05-12 11:53:15');
INSERT INTO `comment_video_18` VALUES ('6', 'default_woman.png', '测试账号2', '1010', '新的评论5', '0', '0', '2019-05-12 11:54:30');
INSERT INTO `comment_video_19` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '新的评论6', '0', '0', '2019-05-12 11:54:39');
INSERT INTO `comment_video_19` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '信息id19', '0', '0', '2019-05-12 13:05:22');
INSERT INTO `comment_video_19` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '信息id19+1', '0', '0', '2019-05-12 13:06:17');
INSERT INTO `comment_video_19` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '信息id19+2', '0', '0', '2019-05-12 13:07:02');
INSERT INTO `comment_video_19` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '视频id19', '0', '0', '2019-05-12 13:22:36');
INSERT INTO `comment_video_19` VALUES ('6', 'default_woman.png', '测试账号2', '1010', '视频19', '0', '0', '2019-05-12 13:32:45');
INSERT INTO `comment_video_19` VALUES ('7', 'default_woman.png', '测试账号2', '1010', '视频19+', '0', '0', '2019-05-12 13:32:57');
INSERT INTO `comment_video_19` VALUES ('8', 'default_woman.png', '测试账号2', '1010', '新来一条', '0', '0', '2019-05-12 13:33:14');
INSERT INTO `comment_video_20` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '新的评论20', '0', '0', '2019-05-12 13:01:54');
INSERT INTO `comment_video_20` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '新的评论20+1', '0', '0', '2019-05-12 13:03:11');
INSERT INTO `comment_video_20` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '评论信息id20', '0', '0', '2019-05-12 13:19:21');
INSERT INTO `comment_video_27` VALUES ('1', 'default_woman.png', '测试账号2', '1010', '新的评论1', '0', '0', '2019-05-12 12:28:08');
INSERT INTO `comment_video_27` VALUES ('2', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:15');
INSERT INTO `comment_video_27` VALUES ('3', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('4', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('5', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('6', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('7', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('8', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('9', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('10', 'default_woman.png', '测试账号2', '1010', '当前视频27', '0', '0', '2019-05-12 12:48:18');
INSERT INTO `comment_video_27` VALUES ('114', 'default_woman.png', '测试账号2', '1010', '视频id27', '0', '0', '2019-05-12 13:12:07');
INSERT INTO `info_adv` VALUES ('9', 'adv', '这是广告的标题这是广告的标题这是广告的标题这是广告的标题——1', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('10', 'adv', '这是广告的标题——2', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i5/TB15WAxmRTH8KJjy0FiYXIRsXXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('11', 'adv', '这是广告的标题——3', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i5/TB15WAxmRTH8KJjy0FiYXIRsXXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i6/TB1fhsBmRDH8KJjSspnYXHNAVXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('12', 'adv', '这是广告的标题——视频', '{\"img\":[],\"video\":\"http://localhost:81/video/1556204950710.mp4\"}');
INSERT INTO `info_adv` VALUES ('13', 'adv', '这是修改了后端广告布局演示后的广告的标题', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_adv` VALUES ('14', 'adv', '修改之后的广告布局再来一次', '{\"img\":[\"https://gd3.alicdn.com/imgextra/i3/TB19fs0mJnJ8KJjSszdYXGxuFXa_M2.SS2_50x50.jpg_.webp\",\"https://gd1.alicdn.com/imgextra/i6/TB1fhsBmRDH8KJjSspnYXHNAVXa_M2.SS2_50x50.jpg_.webp\"],\"video\":\"\"}');
INSERT INTO `info_findposter` VALUES ('6', '1012', '2019-04-25 22:40:40', '1556203240889.jpg.jpg', '寻人启事', '18483221518', '暂无寻找内容', '暂无有关寻人启事的特别说明', '2');
INSERT INTO `info_imgtext` VALUES ('32', 'imt', '常识', '测试标题——1', '<p>测试内容的开始——1</p><p><img src=\"http://localhost:81/imgtextimg/1556203477463.jpg\" style=\"max-width:100%;\"><br></p><p>测试内容的结束——1</p>', 'default_man.png', '普通用户', '测试账号3', '1012', '2019-04-25 22:44:47', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('33', 'imt', '常识', '测试标题——2', '<p>测试内容的开始——2</p><p><img src=\"http://localhost:81/imgtextimg/1556203477463.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:81/imgtextimg/1556203504948.jpg\" style=\"max-width:100%;\"><br></p><p>测试内容的结束——2</p>', 'default_man.png', '普通用户', '测试账号3', '1012', '2019-04-25 22:45:11', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('34', 'imt', '常识', '测试标题——3', '<p>测试内容的开始——3</p><p><img src=\"http://localhost:81/imgtextimg/1556203477463.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:81/imgtextimg/1556203552669.jpg\" style=\"max-width:100%;\"><br></p><p>测试内容的结束——3</p>', 'default_man.png', '普通用户', '测试账号3', '1012', '2019-04-25 22:45:56', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('35', 'imt', '常识', '测试标题——4', '<p>测试内容的开始——4</p><p><img src=\"http://localhost:81/imgtextimg/1556203729030.jpg\" style=\"max-width:100%;\"><br></p><p>测试内容的结束——4</p>', 'default_man.png', '普通用户', '测试账号3', '1012', '2019-04-25 22:48:56', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('36', 'imt', '常识', '居中测试——5', '<p style=\"text-align: center;\">居中测试——测试内容的开始——5</p><p style=\"text-align: center;\"><img src=\"http://localhost:81/imgtextimg/1556203729030.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\">居中测试——测试内容的结束——5</p>', 'default_man.png', '普通用户', '测试账号3', '1012', '2019-04-25 22:50:08', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('37', 'imt', '常识', '居中测试——6', '<p style=\"text-align: left;\">测试内容的开始——6</p><p style=\"text-align: left;\"><img src=\"http://localhost:81/imgtextimg/1556203729030.jpg\" style=\"max-width:100%;\"><img src=\"http://localhost:81/imgtextimg/1556203843918.jpg\" style=\"max-width: 100%;\"><br></p><p style=\"text-align: left;\">测试内容的结束——6</p>', 'default_man.png', '普通用户', '测试账号3', '1012', '2019-04-25 22:50:51', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('38', 'imt', '常识', '图文中的标题——7', '<p>换了一个账号来添加图文的内容——7</p><p><img src=\"http://localhost:81/imgtextimg/1556330462900.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://localhost:81/imgtextimg/1556330470875.jpg\" style=\"max-width:100%;\"><br></p><p>这是内容的末尾——7</p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 10:01:35', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('39', 'imt', '常识', '图文中的标题图文中的标题图文中的标题图文中的标题图文中的标题图文中的标题图文中的标题——8', '<p>换了一账号来发布图文的内容——8</p><p>这一个是不准备添加图片的</p><p>这是末尾了——8</p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 10:12:32', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('40', 'imt', '常识', '图文中的标题——9', '<p>换了一账号来发布图文的内容——9</p><p><img src=\"http://localhost:81/imgtextimg/1556331175861.jpg\" style=\"max-width:100%;\"><br></p><p>再来添加一张图片试试——9</p><p><img src=\"http://localhost:81/imgtextimg/1556331194245.jpg\" style=\"max-width:100%;\"><br></p><p>这是末尾了——9</p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 10:13:18', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('41', 'imt', '常识', '图文中的标题——10', '<p>换了一个账号来添加——10</p><p><img src=\"http://localhost:81/imgtextimg/1556331554010.jpg\"></p><p>再添加一张图片——10</p><p><img src=\"http://localhost:81/imgtextimg/1556331574068.jpg\"><br></p><p>再来一张图片——10</p><p><img src=\"http://localhost:81/imgtextimg/1556331588605.jpg\"></p><p>好了，不添加了，到末尾了——10</p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 10:23:31', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('42', 'imt', '常识', '发布一张图文混合图片', '<p>先随便写点文字吧</p><p><img src=\"http://localhost:81/imgtextimg/1556337659357.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 12:01:02', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('43', 'imt', '生活', '关于生活的图文的标题——1', '<p>关于生活的图文——1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:02:55', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('44', 'imt', '生活', '关于生活的图文的标题——2', '<p>关于生活的图文——2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:03:01', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('45', 'imt', '生活', '关于生活的图文的标题——3', '<p>关于生活的图文——3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:03:16', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('46', 'imt', '生活', '关于生活的图文的标题——4', '<p>关于生活的图文——4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:03:23', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('47', 'imt', '生活', '关于生活的图文的标题——5', '<p>关于生活的图文——5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:03:31', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('48', 'imt', '生活', '关于生活的图文的标题——6', '<p>关于生活的图文——6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:03:38', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('49', 'imt', '城乡', '关于城乡的图文的标题——1', '<p>关于城乡的图文——1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:03:56', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('50', 'imt', '城乡', '关于城乡的图文的标题——2', '<p>关于城乡的图文——2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:02', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('51', 'imt', '城乡', '关于城乡的图文的标题——3', '<p>关于城乡的图文——3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:09', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('52', 'imt', '城乡', '关于城乡的图文的标题——4', '<p>关于城乡的图文——4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:17', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('53', 'imt', '城乡', '关于城乡的图文的标题——5', '<p>关于城乡的图文——5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:24', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('54', 'imt', '城乡', '关于城乡的图文的标题——6', '<p>关于城乡的图文——6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:30', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('55', 'imt', '行业', '关于行业的图文的标题——1', '<p>关于行业的图文——1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:47', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('56', 'imt', '行业', '关于行业的图文的标题——2', '<p>关于行业的图文——2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:52', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('57', 'imt', '行业', '关于行业的图文的标题——3', '<p>关于行业的图文——3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:04:59', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('58', 'imt', '行业', '关于行业的图文的标题——4', '<p>关于行业的图文——4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:05', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('59', 'imt', '行业', '关于行业的图文的标题——5', '<p>关于行业的图文——5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:11', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('60', 'imt', '行业', '关于行业的图文的标题——6', '<p>关于行业的图文——6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:17', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('61', 'imt', '创意', '关于创意的图文的标题——1', '<p>关于创意的图文——1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:33', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('62', 'imt', '创意', '关于创意的图文的标题——2', '<p>关于创意的图文——2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:39', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('63', 'imt', '创意', '关于创意的图文的标题——3', '<p>关于创意的图文——3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:44', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('64', 'imt', '创意', '关于创意的图文的标题——4', '<p>关于创意的图文——4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:50', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('65', 'imt', '创意', '关于创意的图文的标题——5', '<p>关于创意的图文——5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:05:58', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('66', 'imt', '创意', '关于创意的图文的标题——6', '<p>关于创意的图文——6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:04', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('67', 'imt', '科技', '关于科技的图文的标题——1', '<p>关于科技的图文——1</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:20', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('68', 'imt', '科技', '关于科技的图文的标题——2', '<p>关于科技的图文——2</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:28', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('69', 'imt', '科技', '关于科技的图文的标题——3', '<p>关于科技的图文——3</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:35', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('70', 'imt', '科技', '关于科技的图文的标题——4', '<p>关于科技的图文——4</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:41', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('71', 'imt', '科技', '关于科技的图文的标题——5', '<p>关于科技的图文——5</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:47', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('72', 'imt', '科技', '关于科技的图文的标题——6', '<p>关于科技的图文——6</p><p><img src=\"http://localhost:81/imgtextimg/1556366551190.jpg\" style=\"max-width:100%;\"><br></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:06:53', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('73', 'imt', '军事', '关于军事的图文的标题——1', '<p>关于军事的图文的内容——1</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:10:44', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('74', 'imt', '军事', '关于军事的图文的标题——2', '<p>关于军事的图文的内容——2</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:11:25', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('75', 'imt', '军事', '关于军事的图文的标题——3', '<p>关于军事的图文的内容——3</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:11:31', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('76', 'imt', '军事', '关于军事的图文的标题——4', '<p>关于军事的图文的内容——4</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:11:38', '0', '0', '0', '', '2');
INSERT INTO `info_imgtext` VALUES ('77', 'imt', '军事', '关于军事的图文的标题——5', '<p>关于军事的图文的内容——5</p><p><img src=\"http://localhost:81/imgtextimg/1556366983732.jpg\" style=\"max-width: 100%;\"></p>', 'default_woman.png', '普通用户', '测试账号2', '1010', '2019-04-27 20:11:43', '0', '0', '0', '', '2');
INSERT INTO `info_question` VALUES ('15', 'ask', '常识', '这是我问的第一个问题——1', 'default_woman.png', '测试账号1', '普通用户', '1009', '2019-04-25 23:14:58', '', '2');
INSERT INTO `info_question` VALUES ('16', 'ask', '常识,行业,科技', '这是我问的第二个问题——2', 'default_woman.png', '测试账号1', '普通用户', '1009', '2019-04-25 23:15:13', '', '2');
INSERT INTO `info_question` VALUES ('17', 'ask', '常识,行业,科技', '这是我问的第三个问题——3', 'default_woman.png', '测试账号1', '普通用户', '1009', '2019-04-25 23:15:22', '', '2');
INSERT INTO `info_question` VALUES ('18', 'ask', '城乡,创意', '这是我换了一个账号问的第五个问题——5', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 10:34:53', '', '2');
INSERT INTO `info_question` VALUES ('19', 'ask', '行业,创意', '这是我换了一个账号问的第六个问题——6', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 10:35:09', '', '2');
INSERT INTO `info_question` VALUES ('20', 'ask', '常识', '发布一个问题看看后端打印出什么', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 13:10:53', '', '2');
INSERT INTO `info_question` VALUES ('21', 'ask', '常识', '再发布一个问题看看后端打印出什么，刚刚没有成功', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 13:11:39', '', '2');
INSERT INTO `info_question` VALUES ('22', 'ask', '常识', '再来一个问题', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 13:12:48', '', '2');
INSERT INTO `info_question` VALUES ('23', 'ask', '生活', '生活问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:57:33', '', '2');
INSERT INTO `info_question` VALUES ('24', 'ask', '生活', '生活问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:57:39', '', '2');
INSERT INTO `info_question` VALUES ('25', 'ask', '生活', '生活问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:57:42', '', '2');
INSERT INTO `info_question` VALUES ('26', 'ask', '生活', '生活问题——4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:57:46', '', '2');
INSERT INTO `info_question` VALUES ('27', 'ask', '生活', '生活问题——5', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:57:51', '', '2');
INSERT INTO `info_question` VALUES ('28', 'ask', '城乡', '城乡问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:17', '', '2');
INSERT INTO `info_question` VALUES ('29', 'ask', '城乡', '城乡问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:21', '', '2');
INSERT INTO `info_question` VALUES ('30', 'ask', '城乡', '城乡问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:25', '', '2');
INSERT INTO `info_question` VALUES ('31', 'ask', '行业', '行业问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:36', '', '2');
INSERT INTO `info_question` VALUES ('32', 'ask', '行业', '行业问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:40', '', '2');
INSERT INTO `info_question` VALUES ('33', 'ask', '行业', '行业问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:43', '', '2');
INSERT INTO `info_question` VALUES ('34', 'ask', '创意', '创意问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:53', '', '2');
INSERT INTO `info_question` VALUES ('35', 'ask', '创意', '创意问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:58:57', '', '2');
INSERT INTO `info_question` VALUES ('36', 'ask', '创意', '创意问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:01', '', '2');
INSERT INTO `info_question` VALUES ('37', 'ask', '科技', '科技问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:14', '', '2');
INSERT INTO `info_question` VALUES ('38', 'ask', '科技', '科技问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:17', '', '2');
INSERT INTO `info_question` VALUES ('39', 'ask', '科技', '科技问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:20', '', '2');
INSERT INTO `info_question` VALUES ('40', 'ask', '军事', '军事问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:30', '', '2');
INSERT INTO `info_question` VALUES ('41', 'ask', '军事', '军事问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:33', '', '2');
INSERT INTO `info_question` VALUES ('42', 'ask', '军事', '军事问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:37', '', '2');
INSERT INTO `info_question` VALUES ('43', 'ask', '财经', '财经问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:52', '', '2');
INSERT INTO `info_question` VALUES ('44', 'ask', '财经', '财经问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:55', '', '2');
INSERT INTO `info_question` VALUES ('45', 'ask', '财经', '财经问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 19:59:58', '', '2');
INSERT INTO `info_question` VALUES ('46', 'ask', '人生', '人生问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:00:09', '', '2');
INSERT INTO `info_question` VALUES ('47', 'ask', '人生', '人生问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:00:13', '', '2');
INSERT INTO `info_question` VALUES ('48', 'ask', '人生', '人生问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:00:16', '', '2');
INSERT INTO `info_question` VALUES ('49', 'ask', '休闲', '休闲问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:00:26', '', '2');
INSERT INTO `info_question` VALUES ('50', 'ask', '休闲', '休闲问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:00:29', '', '2');
INSERT INTO `info_question` VALUES ('51', 'ask', '休闲', '休闲问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:00:33', '', '2');
INSERT INTO `info_question` VALUES ('52', 'ask', '问答', '问答问题——1', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:01:39', '', '2');
INSERT INTO `info_question` VALUES ('53', 'ask', '问答', '问答问题——2', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:01:44', '', '2');
INSERT INTO `info_question` VALUES ('54', 'ask', '问答', '问答问题——3', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:01:47', '', '2');
INSERT INTO `info_video` VALUES ('17', 'vid', '常识', '这是一个视频标题的示例', '1556204950710.mp4', 'default_man.png', '测试账号3', '普通用户', '1012', '2019-04-25 23:09:10', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('18', 'vid', '常识', '这是一个视频标题的示例', '1556204967788.mp4', 'default_man.png', '测试账号3', '普通用户', '1012', '2019-04-25 23:09:27', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('19', 'vid', '生活', '这是一个动物视频——2', '1556204992491.mp4', 'default_man.png', '测试账号3', '普通用户', '1012', '2019-04-25 23:09:52', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('20', 'vid', '生活,城乡', '这是一个舞蹈视频——3', '1556205016500.mp4', 'default_man.png', '测试账号3', '普通用户', '1012', '2019-04-25 23:10:16', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('21', 'vid', '常识', '这是一个视频标题的示例', '1556205097879.mp4', 'default_man.png', '测试账号3', '普通用户', '1012', '2019-04-25 23:11:37', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('22', 'vid', '创意,科技,军事', '这是第五个视频——5', '1556205127184.mp4', 'default_man.png', '测试账号3', '普通用户', '1012', '2019-04-25 23:12:07', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('23', 'vid', '常识', '这是一个视频标题的示例', '1556332127646.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 10:28:47', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('24', 'vid', '常识', '这是一个视频标题的示例', '1556332179971.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 10:29:40', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('25', 'vid', '常识,行业,创意', '这是一个视频标题的示例', '1556332227933.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 10:30:27', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('26', 'vid', '常识,行业,创意', '这是一个视频标题的示例', '1556332327915.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 10:32:07', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('27', 'vid', '生活,城乡', '这是一个关于生活、城乡的视频——1', '1556367165326.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:12:45', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('28', 'vid', '生活,城乡', '这是一个关于生活、城乡的视频——2', '1556367287194.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:14:47', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('29', 'vid', '生活,城乡', '这是一个关于生活、城乡的视频——3', '1556367326965.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:15:27', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('30', 'vid', '生活,城乡', '这是一个关于生活、城乡的视频——1', '1556367476070.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:17:56', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('31', 'vid', '生活,城乡', '这是一个关于城乡、生活的视频——5', '1556367542032.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:19:02', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('32', 'vid', '生活,城乡', '这是一个关于城乡、生活的视频——5', '1556367568156.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:19:28', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('33', 'vid', '生活,城乡', '这是一个关于城乡、生活的视频——5', '1556367572717.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:19:32', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('34', 'vid', '生活,城乡', '这是一个关于城乡、生活的视频——5', '1556367576629.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:19:36', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('35', 'vid', '行业,创意,科技', '这是一个关于行业创意科技的视频——4', '1556367623888.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:20:23', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('36', 'vid', '行业,创意,科技', '这是一个关于行业创意科技的视频——4', '1556367629535.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:20:29', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('37', 'vid', '军事,财经,人生', '这是一个关于军事、财经、人生的视频', '1556367678918.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:21:18', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('38', 'vid', '军事,财经,人生', '这是一个关于军事、财经、人生的视频', '1556367689216.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:21:29', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('39', 'vid', '军事,财经,人生', '这是一个关于军事、财经、人生的视频', '1556367691196.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:21:31', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('40', 'vid', '军事,财经,人生', '这是一个关于军事、财经、人生的视频', '1556367692868.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:21:32', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('41', 'vid', '军事,财经,人生', '这是一个关于军事、财经、人生的视频', '1556367706111.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:21:46', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('42', 'vid', '人生,休闲', '这是一个人生、休闲的视频', '1556368322423.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:32:02', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('43', 'vid', '人生,休闲', '这是一个人生、休闲的视频', '1556368324211.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:32:04', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('44', 'vid', '人生,休闲', '这是一个人生、休闲的视频', '1556368325748.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:32:05', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('45', 'vid', '人生,休闲', '这是一个人生、休闲的视频', '1556368327308.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:32:07', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('46', 'vid', '人生,休闲', '这是一个人生、休闲的视频', '1556368328914.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:32:08', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `info_video` VALUES ('47', 'vid', '人生,休闲', '这是一个人生、休闲的视频', '1556368331400.mp4', 'default_woman.png', '测试账号2', '普通用户', '1010', '2019-04-27 20:32:11', '0', '0', '0', 'comment_video0', '2');
INSERT INTO `user` VALUES ('1009', '12345678901', '123456', '测试账号1', 'default_woman.png', '[\"推荐\",\"常识\",\"问答\"]', '普通用户', '0', '0', '{\"val\":\"用户1号\",\"secret\":\"true\"}', '{\"val\":\"2\",\"secret\":\"true\"}', '{\"val\":\"四川广安\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"文字，音乐\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '1这是我随便说的内容，这次就这么多了，下次再补充。', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 20:23:10', '');
INSERT INTO `user` VALUES ('1010', '12345678902', '123456', '测试账号2', 'default_woman.png', '[\"推荐\",\"常识\",\"问答\"]', '普通用户', '0', '0', '{\"val\":\"用户1号\",\"secret\":\"true\"}', '{\"val\":\"2\",\"secret\":\"true\"}', '{\"val\":\"四川广安\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"文字，音乐\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '2这是我随便说的内容，这次就这么多了，下次再补充。', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 20:24:14', '');
INSERT INTO `user` VALUES ('1012', '12345678903', '123456', '测试账号3', 'default_man.png', '[\"推荐\",\"常识\",\"问答\"]', '普通用户', '0', '0', '{\"val\":\"用户1号\",\"secret\":\"true\"}', '{\"val\":\"1\",\"secret\":\"true\"}', '{\"val\":\"四川广安\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"文字，音乐\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '3这是我随便说的内容，这次就这么多了，下次再补充。', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 20:48:54', '');
INSERT INTO `user` VALUES ('1013', '12345678904', '123456', '测试账号4', 'default_man.png', '[\"推荐\",\"常识\",\"问答\"]', '普通用户', '0', '0', '{\"val\":\"用户1号\",\"secret\":\"true\"}', '{\"val\":\"2\",\"secret\":\"true\"}', '{\"val\":\"四川广安\",\"secret\":\"true\"}', '{\"val\":\"Java\",\"secret\":\"true\"}', '{\"val\":\"文字，音乐\",\"secret\":\"true\"}', '{\"val\":\"2019-04-19\",\"secret\":\"true\"}', '4这是我随便说的内容，这次就这么多了，下次再补充。', '0', '0', '0', '0', '0', '0', '0', '0', '2019-04-19 22:49:17', '');
