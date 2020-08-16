/*
 Navicat Premium Data Transfer

 Source Server         : mumu
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 106.14.136.92:3306
 Source Schema         : vueblog

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 16/08/2020 11:39:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_blog
-- ----------------------------
DROP TABLE IF EXISTS `m_blog`;
CREATE TABLE `m_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_blog
-- ----------------------------
INSERT INTO `m_blog` VALUES (1, 1, '生活就像海洋，只有意志坚强的人才能到达彼岸', '这里是摘要哈哈哈', '内容？？？fdsfds', '2020-05-21 22:08:42', 0);
INSERT INTO `m_blog` VALUES (2, 1, '最值得学习的博客项目eblog', 'eblog是一个基于Springboot2.1.2开发的博客学习项目，为了让项目融合更多的知识点，达到学习目的，编写了详细的从0到1开发文档。主要学习包括：自定义Freemarker标签，使用shiro+redis完成了会话共享，redis的zset结构完成本周热议排行榜，t-io+websocket完成即时消息通知和群聊，rabbitmq+elasticsearch完成博客内容搜索引擎等。值得学习的地方很多！', '**推荐阅读：**\r\n\r\n[分享一套SpringBoot开发博客系统>源码，以及完整开发文档！速度保存！](https://mp.weixin.qq.com/s/jz6e977xP-OyaAKNjNca8w)\r\n\r\n[Github上最值得学习的100个Java开源项目，涵盖各种技术栈！](https://mp.weixin.qq.com/s/N-U0TaEUXnBFfBsmt_OESQ)\r\n\r\n[2020年最新的常问企业面试题大全以及答案](https://mp.weixin.qq.com/s/lR5LC5GnD2Gs59ecV5R0XA)', '2020-05-28 09:36:38', 0);
INSERT INTO `m_blog` VALUES (3, 1, '分页测试', 'teest', 'test', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (4, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (5, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (6, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (7, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (8, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (9, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (10, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (11, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (12, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (13, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (14, 1, '分页测试', '分页测试', 'content', '2020-08-15 15:47:18', 0);
INSERT INTO `m_blog` VALUES (15, 1, '纸上得来终觉浅', '绝知此事要躬行', '### 天青色等烟雨\n### 而我在等你', '2020-08-05 21:20:53', 0);
INSERT INTO `m_blog` VALUES (16, 1, '代码测试', '无', '```java\n@Test\npublic String hello{\n return \"hello world\";\n}\n\n```\n', '2020-08-15 15:38:25', 0);

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES (1, 'markerhub', 'https://image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/5a9f48118166308daba8b6da7e466aab.jpg', NULL, '96e79218965eb72c92a549dd5a330112', 0, '2020-04-20 10:44:01', NULL);
INSERT INTO `m_user` VALUES (2, 'jachinlin', 'https://jachinlin.oss-cn-hangzhou.aliyuncs.com/images/favicon.ico', 'jachinlin@gmail.com', '96e79218965eb72c92a549dd5a330112', 0, '2020-08-15 15:07:01', NULL);

SET FOREIGN_KEY_CHECKS = 1;
