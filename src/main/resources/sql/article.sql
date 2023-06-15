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