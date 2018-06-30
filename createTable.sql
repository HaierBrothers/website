create database club;

CREATE TABLE `banner` (
`sid` bigint(20) NOT NULL AUTO_INCREMENT,
`pic_url` varchar(255) DEFAULT NULL COMMENT 'banner图地址',
`pic_sort` int(3) DEFAULT NULL COMMENT '排序',
`create_time` datetime DEFAULT CURRENT_TIMESTAMP,
`update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cryptocurrency` (
`sid` bigint(20) NOT NULL AUTO_INCREMENT,
`logo_name_cn` varchar(100) DEFAULT NULL COMMENT 'logo名字中文',
`logo_name_en` varchar(100) DEFAULT NULL COMMENT 'logo名字外文',
`logo_url` varchar(100) DEFAULT NULL COMMENT '图片地址',
`title_cn` varchar(100) DEFAULT NULL COMMENT '标题中文',
`title_en` varchar(100) DEFAULT NULL COMMENT '标题外文',
`content_cn` text COMMENT '内容中文',
`content_en` text COMMENT '标题外文',
`website` varchar(255) DEFAULT NULL COMMENT '站外链接',
`create_time` datetime DEFAULT CURRENT_TIMESTAMP,
`update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`dialog_logo_url` varchar(100) DEFAULT NULL COMMENT '弹窗logo',
PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `event_day` (
`sid` bigint(20) NOT NULL AUTO_INCREMENT,
`month_id` bigint(20) DEFAULT NULL,
`day` varchar(2) DEFAULT NULL COMMENT '日期 02',
`time` varchar(2) DEFAULT NULL COMMENT '时间 09',
`type` int(1) DEFAULT NULL COMMENT '类型 小文本:1;大文本:2;小图:3;大图:4',
`status` int(1) DEFAULT NULL COMMENT '1删除;0正常',
`title` varchar(100) DEFAULT NULL COMMENT '标题',
`content` text COMMENT ' 内容',
`color` int(2) DEFAULT NULL COMMENT '颜色 1:红色;2:绿色;3:蓝色',
`pic_url` varchar(100) DEFAULT NULL COMMENT '图片地址',
PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `event_month` (
`sid` bigint(20) NOT NULL AUTO_INCREMENT,
`month` varchar(45) DEFAULT NULL COMMENT '月份2018-06',
PRIMARY KEY (`sid`),
UNIQUE KEY `month_unique` (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `news` (
`sid` bigint(20) NOT NULL,
`news_sort` int(11) DEFAULT NULL COMMENT '新闻排序',
`pic_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
`title_cn` varchar(255) DEFAULT NULL COMMENT '标题',
`content_cn` varchar(45) DEFAULT NULL COMMENT '内容',
`full_article` varchar(255) DEFAULT NULL COMMENT 'full_article 链接',
`website` varchar(255) DEFAULT NULL COMMENT 'website 链接',
`update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`title_en` varchar(255) DEFAULT NULL COMMENT '外文',
`content_en` varchar(45) DEFAULT NULL COMMENT '外文',
PRIMARY KEY (`sid`),
UNIQUE KEY `news_sort_unique` (`news_sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `user` (
`sid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
`user_name` varchar(100) DEFAULT NULL COMMENT '用户名字',
`pass_word` varchar(100) DEFAULT NULL COMMENT '密码',
`create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`status` tinyint(1) DEFAULT NULL COMMENT '0可用，1不可用',
`account` varchar(100) DEFAULT NULL COMMENT '账号',
PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;





