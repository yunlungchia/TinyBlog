DROP TABLE IF EXISTS `comment`;
CREATE TABLE 'comment'
(
    'cid'          int(10) unsigned NOT NULL COMMENT '评论id',
    'commenter_id' int(10) unsigned NOT NULL COMMENT '评论用户id',
    'content'      longtext CHARACTER SET utf8 COMMENT '评论正文',
    'article_id'   int(10) unsigned NOT NULL COMMENT '文章id',
    `create_date`  datetime DEFAULT NULL COMMENT '创建时间',
    `update_date`  datetime DEFAULT NULL COMMENT '更新时间'

) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8 COMMENT '评论表';