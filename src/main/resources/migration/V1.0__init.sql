DROP TABLE IF EXISTS `newCoder_user`;
CREATE TABLE `newCoder_user`
(
    `id`              int(11)      NOT NULL AUTO_INCREMENT,
    `phone`           varchar(20)  NOT NULL UNIQUE COMMENT '电话号码.',
    `user_name`       varchar(20)  NOT NULL COMMENT '用户名.',
    `password`        varchar(32)  NOT NULL COMMENT '密码',
    `email`           varchar(20)  UNIQUE COMMENT '邮箱.',
    `status`          tinyint (1)  NOT NULL DEFAULT 1 COMMENT '权限状态（1管理员，2用户）',
    `created_at`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='用户表';


DROP TABLE IF EXISTS `newCoder_post`;
CREATE TABLE `newCoder_post`
(
    `id`              int(11)      NOT NULL AUTO_INCREMENT,
    `title`           varchar(50)  NOT NULL COMMENT '标题.',
    `top`             tinyint (1)  DEFAULT 0 COMMENT '是否置顶（1 置顶 ,0 不置顶）.',
    `content`         LONGTEXT     NOT NULL  COMMENT '帖子内容.',
    `browse`          int          NOT NULL DEFAULT 0 COMMENT '浏览量.',
    `favorites_num`   int          NOT NULL DEFAULT 0 COMMENT '收藏人数.',
    PRIMARY KEY (`id`),
    FOREIGN KEY (`id`) REFERENCES newCoder_user(`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='帖子表';

DROP TABLE IF EXISTS `newCoder_post_category`;
CREATE TABLE `newCoder_post_category`
(
    `id`              int(11)      NOT NULL AUTO_INCREMENT,
    `name`            varchar(50)  NOT NULL COMMENT '职位名.',
    `remark`          varchar(300) NOT NULL COMMENT '详细信息.',
    PRIMARY KEY (`id`),
    FOREIGN KEY (`id`) REFERENCES newCoder_user(`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='帖子分类表';


DROP TABLE IF EXISTS `newCoder_post_tags`;
CREATE TABLE `newCoder_post_tags`
(
    `id`              int(11)      NOT NULL AUTO_INCREMENT,
    `user_id`         int(11)      NOT NULL COMMENT '公告人' ,
    `title`           varchar(50)  NOT NULL COMMENT '公告名称' ,
    `content`         varchar(50)  NOT NULL COMMENT '公告内容' ,
    `created_at`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='帖子话题表';



DROP TABLE IF EXISTS `newCoder_comment`;
CREATE TABLE `newCoder_comment`
(
    `id`              int(11)      NOT NULL AUTO_INCREMENT,
    `dept_id`         int(11)      NOT NULL COMMENT '部门主键' ,
    `job_id`          int(11)      NOT NULL COMMENT '职位主键' ,
    `name`            varchar(20)  NOT NULL COMMENT '名字.',
    `card_id`         varchar(18)  NOT NULL COMMENT '身份证号码.',
    `address`         varchar(50)  COMMENT '住址.',
    `post_code`       varchar(50)  COMMENT '邮编.',
    `tel`             varchar(16)  COMMENT '电话.',
    `phone`           varchar(11)  COMMENT '手机.',
    `qq_num`          varchar(10)  COMMENT 'QQ号码.',
    `email`           varchar(50)  COMMENT '邮箱.',
    `sex`             int(11)      COMMENT '性别.',
    `parity`          varchar(10)  COMMENT '政治面貌.',
    `birthday`        datetime     COMMENT '出生日期.',
    `race`            varchar(100) COMMENT '民族.',
    `education`       varchar(10)  COMMENT '学历.',
    `speciality`      varchar(20)  COMMENT '专业.',
    `hobby`           varchar(100) COMMENT '特长.',
    `remark`          varchar(500) COMMENT '备注.',
    `created_at`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`),
    FOREIGN KEY (`dept_id`) REFERENCES project_dept(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`job_id`) REFERENCES project_job(`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='评论表';




# 启动外键约束.
SET FOREIGN_KEY_CHECKS = 1;

