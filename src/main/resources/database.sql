CREATE DATABASE IF NOT EXISTS tinyblog
    DEFAULT CHARSET utf8
    COLLATE utf8_general_ci;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `id`            bigint(20) unsigned NOT NULL COMMENT '用户id' AUTO_INCREMENT,
    `username`      varchar(32)  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(64)  DEFAULT NULL COMMENT '密码',
    `salt`          varchar(10)  DEFAULT NULL COMMENT '混淆盐',
    `email`         varchar(200) DEFAULT NULL COMMENT 'email',
    `address`       varchar(200) DEFAULT NULL COMMENT '地址',
    `register_date` datetime     DEFAULT NULL COMMENT '注册时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `name` (`username`),
    UNIQUE KEY `mail` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT = '用户表';


INSERT INTO user (id, username, password, salt, email, address, register_date)
VALUES (1, 'test', 'a123456', '666', 'test@gmail.com', 'Lincoln Road, Washington D.C.', now());


DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`
(
    `aid`          int(11)                         NOT NULL AUTO_INCREMENT COMMENT '文章ID',
    `title`        varchar(500) CHARACTER SET utf8 NOT NULL COMMENT '文章标题',
    `content`      longtext CHARACTER SET utf8 COMMENT '正文',
    `excerpt`      varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '摘录',
    `author`       varchar(50) CHARACTER SET utf8   DEFAULT NULL COMMENT '作者',
    `author_id`    varchar(250) CHARACTER SET utf8  DEFAULT NULL COMMENT '作者ID',
    `view_count`   int(11)                          DEFAULT '0' COMMENT '浏览量',
    `reply_count`  int(11)                          DEFAULT '0' COMMENT '回复量',
    `is_delete`    tinyint(1)                       DEFAULT '0' COMMENT '1删除 0默认',
    `show_content` tinyint(1)                       DEFAULT NULL COMMENT '是否显示正文 0: 否 1: 是',
    `create_date`  datetime                         DEFAULT NULL COMMENT '创建时间',
    `update_date`  datetime                         DEFAULT NULL COMMENT '更新时间',
    `remark`       varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`aid`),
    KEY `key_authorId` (`author_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8mb4 COMMENT ='文章表';


DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`
(
    `cid`          int(10) unsigned NOT NULL COMMENT '评论id',
    `commenter_id` int(10) unsigned NOT NULL COMMENT '评论用户id',
    `content`      longtext CHARACTER SET utf8 COMMENT '评论正文',
    `article_id`   int(10) unsigned NOT NULL COMMENT '文章id',
    `create_date`  datetime DEFAULT NULL COMMENT '创建时间',
    `update_date`  datetime DEFAULT NULL COMMENT '更新时间'

) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8 COMMENT '评论表';