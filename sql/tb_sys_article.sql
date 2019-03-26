/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.22 : Database-lishubin-blog
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `blog`;

DROP TABLE IF EXISTS tb_sys_article;

-- 管理员表
CREATE TABLE tb_sys_article
(
  article_code varchar(100) NOT NULL COMMENT '文章编码',
  article_title varchar(100) NOT NULL COMMENT '文章标题',
  article_abstract varchar(100) NOT NULL COMMENT '文章摘要',
  article_catalogCode varchar(100) NOT NULL COMMENT '文章目录编码',
  article_content text COMMENT '文章内容',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(500) COMMENT '备注信息',
  extend_s1 varchar(500) COMMENT '扩展 String 1',
  extend_s2 varchar(500) COMMENT '扩展 String 2',
  extend_s3 varchar(500) COMMENT '扩展 String 3',
  extend_s4 varchar(500) COMMENT '扩展 String 4',
  extend_s5 varchar(500) COMMENT '扩展 String 5',
  extend_s6 varchar(500) COMMENT '扩展 String 6',
  extend_s7 varchar(500) COMMENT '扩展 String 7',
  extend_s8 varchar(500) COMMENT '扩展 String 8',
  extend_i1 decimal(19) COMMENT '扩展 Integer 1',
  extend_i2 decimal(19) COMMENT '扩展 Integer 2',
  extend_i3 decimal(19) COMMENT '扩展 Integer 3',
  extend_i4 decimal(19) COMMENT '扩展 Integer 4',
  extend_f1 decimal(19,4) COMMENT '扩展 Float 1',
  extend_f2 decimal(19,4) COMMENT '扩展 Float 2',
  extend_f3 decimal(19,4) COMMENT '扩展 Float 3',
  extend_f4 decimal(19,4) COMMENT '扩展 Float 4',
  extend_d1 datetime COMMENT '扩展 Date 1',
  extend_d2 datetime COMMENT '扩展 Date 2',
  extend_d3 datetime COMMENT '扩展 Date 3',
  extend_d4 datetime COMMENT '扩展 Date 4',
  PRIMARY KEY (article_code)
) COMMENT = '文章表';
CREATE INDEX idx_sys_article_lc ON tb_sys_article (article_code ASC);
CREATE INDEX idx_sys_article_title ON tb_sys_article (article_title ASC);
CREATE INDEX idx_sys_article_cc ON tb_sys_article (article_catalogCode ASC);
CREATE INDEX idx_sys_article_ud ON tb_sys_article (update_date ASC);
