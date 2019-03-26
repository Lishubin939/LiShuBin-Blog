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

DROP TABLE IF EXISTS tb_sys_user;

-- 管理员表
CREATE TABLE tb_sys_user
(
    user_code varchar(100) NOT NULL COMMENT '用户编码',
    login_code varchar(100) NOT NULL COMMENT '登录账号',
    user_name varchar(100) NOT NULL COMMENT '用户昵称',
    password varchar(100) NOT NULL COMMENT '登录密码',
    email varchar(300) COMMENT '电子邮箱',
    mobile varchar(100) COMMENT '手机号码',
    phone varchar(100) COMMENT '办公电话',
    sex char(1) COMMENT '用户性别',
    avatar varchar(1000) COMMENT '头像路径',
    sign varchar(200) COMMENT '个性签名',
    wx_openid varchar(100) COMMENT '绑定的微信号',
    mobile_imei varchar(100) COMMENT '绑定的手机串号',
    user_type varchar(16) NOT NULL COMMENT '用户类型',
    ref_code varchar(64) COMMENT '用户类型引用编号',
    ref_name varchar(100) COMMENT '用户类型引用姓名',
    mgr_type char(1) NOT NULL COMMENT '管理员类型（0非管理员 1系统管理员  2二级管理员）',
    pwd_security_level decimal(1) COMMENT '密码安全级别（0初始 1很弱 2弱 3安全 4很安全）',
    pwd_update_date datetime COMMENT '密码最后更新时间',
    pwd_update_record varchar(1000) COMMENT '密码修改记录',
    pwd_question varchar(200) COMMENT '密保问题',
    pwd_question_answer varchar(200) COMMENT '密保问题答案',
    pwd_question_2 varchar(200) COMMENT '密保问题2',
    pwd_question_answer_2 varchar(200) COMMENT '密保问题答案2',
    pwd_question_3 varchar(200) COMMENT '密保问题3',
    pwd_question_answer_3 varchar(200) COMMENT '密保问题答案3',
    pwd_quest_update_date datetime COMMENT '密码问题修改时间',
    last_login_ip varchar(100) COMMENT '最后登陆IP',
    last_login_date datetime COMMENT '最后登陆时间',
    freeze_date datetime COMMENT '冻结时间',
    freeze_cause varchar(200) COMMENT '冻结原因',
    user_weight decimal(8) DEFAULT 0 COMMENT '用户权重（降序）',
    status char NOT NULL COMMENT '状态（0正常 1删除 2停用 3冻结）',
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
    PRIMARY KEY (user_code)
) COMMENT = '用户表';

CREATE INDEX idx_sys_user_lc ON tb_sys_user (login_code ASC);
CREATE INDEX idx_sys_user_email ON tb_sys_user (email ASC);
CREATE INDEX idx_sys_user_mobile ON tb_sys_user (mobile ASC);
CREATE INDEX idx_sys_user_wo ON tb_sys_user (wx_openid ASC);
CREATE INDEX idx_sys_user_imei ON tb_sys_user (mobile_imei ASC);
CREATE INDEX idx_sys_user_rt ON tb_sys_user (user_type ASC);
CREATE INDEX idx_sys_user_rc ON tb_sys_user (ref_code ASC);
CREATE INDEX idx_sys_user_mt ON tb_sys_user (mgr_type ASC);
CREATE INDEX idx_sys_user_us ON tb_sys_user (user_weight ASC);
CREATE INDEX idx_sys_user_ud ON tb_sys_user (update_date ASC);
CREATE INDEX idx_sys_user_status ON tb_sys_user (status ASC);