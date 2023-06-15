DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `uid`           bigint(20) unsigned NOT NULL COMMENT '用户id' AUTO_INCREMENT,
    `username`      varchar(32)  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(64)  DEFAULT NULL COMMENT '密码',
    `salt`          varchar(10)  DEFAULT NULL COMMENT '混淆盐',
    `email`         varchar(200) DEFAULT NULL COMMENT 'email',
    `address`       varchar(200) DEFAULT NULL COMMENT '地址',
    `register_date` datetime     DEFAULT NULL COMMENT '注册时间',
    PRIMARY KEY (`uid`),
    UNIQUE KEY `name` (`username`),
    UNIQUE KEY `mail` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT = '用户表';