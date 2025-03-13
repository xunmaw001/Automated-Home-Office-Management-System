-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmp302b
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (121,'2021-01-08 11:02:48',1,1,'提问1','回复1',1),(122,'2021-01-08 11:02:48',2,2,'提问2','回复2',2),(123,'2021-01-08 11:02:48',3,3,'提问3','回复3',3),(124,'2021-01-08 11:02:48',4,4,'提问4','回复4',4),(125,'2021-01-08 11:02:48',5,5,'提问5','回复5',5),(126,'2021-01-08 11:02:48',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmp302b/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmp302b/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmp302b/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongsigonggao`
--

DROP TABLE IF EXISTS `gongsigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongsigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangguanfujian` varchar(200) DEFAULT NULL COMMENT '相关附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `renshizhanghao` varchar(200) DEFAULT NULL COMMENT '人事账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公司公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongsigonggao`
--

LOCK TABLES `gongsigonggao` WRITE;
/*!40000 ALTER TABLE `gongsigonggao` DISABLE KEYS */;
INSERT INTO `gongsigonggao` VALUES (31,'2021-01-08 11:02:47','标题1','内容1','http://localhost:8080/ssmp302b/upload/gongsigonggao_tupian1.jpg','','2021-01-08','人事账号1','姓名1'),(32,'2021-01-08 11:02:47','标题2','内容2','http://localhost:8080/ssmp302b/upload/gongsigonggao_tupian2.jpg','','2021-01-08','人事账号2','姓名2'),(33,'2021-01-08 11:02:47','标题3','内容3','http://localhost:8080/ssmp302b/upload/gongsigonggao_tupian3.jpg','','2021-01-08','人事账号3','姓名3'),(34,'2021-01-08 11:02:47','标题4','内容4','http://localhost:8080/ssmp302b/upload/gongsigonggao_tupian4.jpg','','2021-01-08','人事账号4','姓名4'),(35,'2021-01-08 11:02:47','标题5','内容5','http://localhost:8080/ssmp302b/upload/gongsigonggao_tupian5.jpg','','2021-01-08','人事账号5','姓名5'),(36,'2021-01-08 11:02:47','标题6','内容6','http://localhost:8080/ssmp302b/upload/gongsigonggao_tupian6.jpg','','2021-01-08','人事账号6','姓名6');
/*!40000 ALTER TABLE `gongsigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongsihuodong`
--

DROP TABLE IF EXISTS `gongsihuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongsihuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongneirong` longtext COMMENT '活动内容',
  `renshizhanghao` varchar(200) DEFAULT NULL COMMENT '人事账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongbianhao` (`huodongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公司活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongsihuodong`
--

LOCK TABLES `gongsihuodong` WRITE;
/*!40000 ALTER TABLE `gongsihuodong` DISABLE KEYS */;
INSERT INTO `gongsihuodong` VALUES (81,'2021-01-08 11:02:48','活动编号1','活动名称1','http://localhost:8080/ssmp302b/upload/gongsihuodong_tupian1.jpg','2021-01-08','活动地点1','活动内容1','人事账号1','姓名1'),(82,'2021-01-08 11:02:48','活动编号2','活动名称2','http://localhost:8080/ssmp302b/upload/gongsihuodong_tupian2.jpg','2021-01-08','活动地点2','活动内容2','人事账号2','姓名2'),(83,'2021-01-08 11:02:48','活动编号3','活动名称3','http://localhost:8080/ssmp302b/upload/gongsihuodong_tupian3.jpg','2021-01-08','活动地点3','活动内容3','人事账号3','姓名3'),(84,'2021-01-08 11:02:48','活动编号4','活动名称4','http://localhost:8080/ssmp302b/upload/gongsihuodong_tupian4.jpg','2021-01-08','活动地点4','活动内容4','人事账号4','姓名4'),(85,'2021-01-08 11:02:48','活动编号5','活动名称5','http://localhost:8080/ssmp302b/upload/gongsihuodong_tupian5.jpg','2021-01-08','活动地点5','活动内容5','人事账号5','姓名5'),(86,'2021-01-08 11:02:48','活动编号6','活动名称6','http://localhost:8080/ssmp302b/upload/gongsihuodong_tupian6.jpg','2021-01-08','活动地点6','活动内容6','人事账号6','姓名6');
/*!40000 ALTER TABLE `gongsihuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `renshizhanghao` varchar(200) DEFAULT NULL COMMENT '人事账号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (91,'2021-01-08 11:02:48','活动编号1','活动名称1','活动时间1','活动地点1','人事账号1','工号1','员工姓名1','备注1'),(92,'2021-01-08 11:02:48','活动编号2','活动名称2','活动时间2','活动地点2','人事账号2','工号2','员工姓名2','备注2'),(93,'2021-01-08 11:02:48','活动编号3','活动名称3','活动时间3','活动地点3','人事账号3','工号3','员工姓名3','备注3'),(94,'2021-01-08 11:02:48','活动编号4','活动名称4','活动时间4','活动地点4','人事账号4','工号4','员工姓名4','备注4'),(95,'2021-01-08 11:02:48','活动编号5','活动名称5','活动时间5','活动地点5','人事账号5','工号5','员工姓名5','备注5'),(96,'2021-01-08 11:02:48','活动编号6','活动名称6','活动时间6','活动地点6','人事账号6','工号6','员工姓名6','备注6');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (131,'2021-01-08 11:02:48',1,'用户名1','留言内容1','回复内容1'),(132,'2021-01-08 11:02:48',2,'用户名2','留言内容2','回复内容2'),(133,'2021-01-08 11:02:48',3,'用户名3','留言内容3','回复内容3'),(134,'2021-01-08 11:02:48',4,'用户名4','留言内容4','回复内容4'),(135,'2021-01-08 11:02:48',5,'用户名5','留言内容5','回复内容5'),(136,'2021-01-08 11:02:48',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renshi`
--

DROP TABLE IF EXISTS `renshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renshizhanghao` varchar(200) NOT NULL COMMENT '人事账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `renshizhanghao` (`renshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='人事';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renshi`
--

LOCK TABLES `renshi` WRITE;
/*!40000 ALTER TABLE `renshi` DISABLE KEYS */;
INSERT INTO `renshi` VALUES (21,'2021-01-08 11:02:47','人事1','123456','姓名1','男','13823888881','773890001@qq.com'),(22,'2021-01-08 11:02:47','人事2','123456','姓名2','男','13823888882','773890002@qq.com'),(23,'2021-01-08 11:02:47','人事3','123456','姓名3','男','13823888883','773890003@qq.com'),(24,'2021-01-08 11:02:47','人事4','123456','姓名4','男','13823888884','773890004@qq.com'),(25,'2021-01-08 11:02:47','人事5','123456','姓名5','男','13823888885','773890005@qq.com'),(26,'2021-01-08 11:02:47','人事6','123456','姓名6','男','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `renshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeishenqing`
--

DROP TABLE IF EXISTS `shebeishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shenqingyongtu` longtext COMMENT '申请用途',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='设备申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeishenqing`
--

LOCK TABLES `shebeishenqing` WRITE;
/*!40000 ALTER TABLE `shebeishenqing` DISABLE KEYS */;
INSERT INTO `shebeishenqing` VALUES (61,'2021-01-08 11:02:47','工号1','员工姓名1','设备名称1','申请用途1','数量1','2021-01-08','否',''),(62,'2021-01-08 11:02:47','工号2','员工姓名2','设备名称2','申请用途2','数量2','2021-01-08','否',''),(63,'2021-01-08 11:02:47','工号3','员工姓名3','设备名称3','申请用途3','数量3','2021-01-08','否',''),(64,'2021-01-08 11:02:47','工号4','员工姓名4','设备名称4','申请用途4','数量4','2021-01-08','否',''),(65,'2021-01-08 11:02:47','工号5','员工姓名5','设备名称5','申请用途5','数量5','2021-01-08','否',''),(66,'2021-01-08 11:02:47','工号6','员工姓名6','设备名称6','申请用途6','数量6','2021-01-08','否','');
/*!40000 ALTER TABLE `shebeishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingjingfei`
--

DROP TABLE IF EXISTS `shenqingjingfei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingjingfei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renshizhanghao` varchar(200) DEFAULT NULL COMMENT '人事账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jingfeijine` varchar(200) DEFAULT NULL COMMENT '经费金额',
  `jingfeiyongtu` longtext COMMENT '经费用途',
  `xiangguanpingzheng` varchar(200) DEFAULT NULL COMMENT '相关凭证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='申请经费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingjingfei`
--

LOCK TABLES `shenqingjingfei` WRITE;
/*!40000 ALTER TABLE `shenqingjingfei` DISABLE KEYS */;
INSERT INTO `shenqingjingfei` VALUES (111,'2021-01-08 11:02:48','人事账号1','姓名1','经费金额1','经费用途1','http://localhost:8080/ssmp302b/upload/shenqingjingfei_xiangguanpingzheng1.jpg','否',''),(112,'2021-01-08 11:02:48','人事账号2','姓名2','经费金额2','经费用途2','http://localhost:8080/ssmp302b/upload/shenqingjingfei_xiangguanpingzheng2.jpg','否',''),(113,'2021-01-08 11:02:48','人事账号3','姓名3','经费金额3','经费用途3','http://localhost:8080/ssmp302b/upload/shenqingjingfei_xiangguanpingzheng3.jpg','否',''),(114,'2021-01-08 11:02:48','人事账号4','姓名4','经费金额4','经费用途4','http://localhost:8080/ssmp302b/upload/shenqingjingfei_xiangguanpingzheng4.jpg','否',''),(115,'2021-01-08 11:02:48','人事账号5','姓名5','经费金额5','经费用途5','http://localhost:8080/ssmp302b/upload/shenqingjingfei_xiangguanpingzheng5.jpg','否',''),(116,'2021-01-08 11:02:48','人事账号6','姓名6','经费金额6','经费用途6','http://localhost:8080/ssmp302b/upload/shenqingjingfei_xiangguanpingzheng6.jpg','否','');
/*!40000 ALTER TABLE `shenqingjingfei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiwenshangbao`
--

DROP TABLE IF EXISTS `tiwenshangbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiwenshangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='体温上报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiwenshangbao`
--

LOCK TABLES `tiwenshangbao` WRITE;
/*!40000 ALTER TABLE `tiwenshangbao` DISABLE KEYS */;
INSERT INTO `tiwenshangbao` VALUES (51,'2021-01-08 11:02:47','工号1','员工姓名1','部门1','2021-01-08','体温1','备注1'),(52,'2021-01-08 11:02:47','工号2','员工姓名2','部门2','2021-01-08','体温2','备注2'),(53,'2021-01-08 11:02:47','工号3','员工姓名3','部门3','2021-01-08','体温3','备注3'),(54,'2021-01-08 11:02:47','工号4','员工姓名4','部门4','2021-01-08','体温4','备注4'),(55,'2021-01-08 11:02:47','工号5','员工姓名5','部门5','2021-01-08','体温5','备注5'),(56,'2021-01-08 11:02:47','工号6','员工姓名6','部门6','2021-01-08','体温6','备注6');
/*!40000 ALTER TABLE `tiwenshangbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousujiandu`
--

DROP TABLE IF EXISTS `tousujiandu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousujiandu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `zhuti` varchar(200) DEFAULT NULL COMMENT '主题',
  `tousuneirong` longtext COMMENT '投诉内容',
  `xiangguanpingzheng` varchar(200) DEFAULT NULL COMMENT '相关凭证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='投诉监督';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousujiandu`
--

LOCK TABLES `tousujiandu` WRITE;
/*!40000 ALTER TABLE `tousujiandu` DISABLE KEYS */;
INSERT INTO `tousujiandu` VALUES (101,'2021-01-08 11:02:48','工号1','员工姓名1','主题1','投诉内容1','http://localhost:8080/ssmp302b/upload/tousujiandu_xiangguanpingzheng1.jpg','否',''),(102,'2021-01-08 11:02:48','工号2','员工姓名2','主题2','投诉内容2','http://localhost:8080/ssmp302b/upload/tousujiandu_xiangguanpingzheng2.jpg','否',''),(103,'2021-01-08 11:02:48','工号3','员工姓名3','主题3','投诉内容3','http://localhost:8080/ssmp302b/upload/tousujiandu_xiangguanpingzheng3.jpg','否',''),(104,'2021-01-08 11:02:48','工号4','员工姓名4','主题4','投诉内容4','http://localhost:8080/ssmp302b/upload/tousujiandu_xiangguanpingzheng4.jpg','否',''),(105,'2021-01-08 11:02:48','工号5','员工姓名5','主题5','投诉内容5','http://localhost:8080/ssmp302b/upload/tousujiandu_xiangguanpingzheng5.jpg','否',''),(106,'2021-01-08 11:02:48','工号6','员工姓名6','主题6','投诉内容6','http://localhost:8080/ssmp302b/upload/tousujiandu_xiangguanpingzheng6.jpg','否','');
/*!40000 ALTER TABLE `tousujiandu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-08 11:02:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2021-01-08 11:02:47','员工1','123456','员工姓名1','男','部门1','13823888881','773890001@qq.com'),(12,'2021-01-08 11:02:47','员工2','123456','员工姓名2','男','部门2','13823888882','773890002@qq.com'),(13,'2021-01-08 11:02:47','员工3','123456','员工姓名3','男','部门3','13823888883','773890003@qq.com'),(14,'2021-01-08 11:02:47','员工4','123456','员工姓名4','男','部门4','13823888884','773890004@qq.com'),(15,'2021-01-08 11:02:47','员工5','123456','员工姓名5','男','部门5','13823888885','773890005@qq.com'),(16,'2021-01-08 11:02:47','员工6','123456','员工姓名6','男','部门6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangonggongzi`
--

DROP TABLE IF EXISTS `yuangonggongzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `jibengongzi` varchar(200) DEFAULT NULL COMMENT '基本工资',
  `ticheng` varchar(200) DEFAULT NULL COMMENT '提成',
  `butie` varchar(200) DEFAULT NULL COMMENT '补贴',
  `jiangjin` varchar(200) DEFAULT NULL COMMENT '奖金',
  `kaoqinkoukuan` varchar(200) DEFAULT NULL COMMENT '考勤扣款',
  `wuxianyijin` varchar(200) DEFAULT NULL COMMENT '五险一金',
  `shifagongzi` varchar(200) DEFAULT NULL COMMENT '实发工资',
  `beizhu` longtext COMMENT '备注',
  `renshizhanghao` varchar(200) DEFAULT NULL COMMENT '人事账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='员工工资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangonggongzi`
--

LOCK TABLES `yuangonggongzi` WRITE;
/*!40000 ALTER TABLE `yuangonggongzi` DISABLE KEYS */;
INSERT INTO `yuangonggongzi` VALUES (71,'2021-01-08 11:02:47','员工姓名1','工号1','年份1','月份1','基本工资1','提成1','补贴1','奖金1','考勤扣款1','五险一金1','实发工资1','备注1','人事账号1','姓名1'),(72,'2021-01-08 11:02:47','员工姓名2','工号2','年份2','月份2','基本工资2','提成2','补贴2','奖金2','考勤扣款2','五险一金2','实发工资2','备注2','人事账号2','姓名2'),(73,'2021-01-08 11:02:47','员工姓名3','工号3','年份3','月份3','基本工资3','提成3','补贴3','奖金3','考勤扣款3','五险一金3','实发工资3','备注3','人事账号3','姓名3'),(74,'2021-01-08 11:02:47','员工姓名4','工号4','年份4','月份4','基本工资4','提成4','补贴4','奖金4','考勤扣款4','五险一金4','实发工资4','备注4','人事账号4','姓名4'),(75,'2021-01-08 11:02:47','员工姓名5','工号5','年份5','月份5','基本工资5','提成5','补贴5','奖金5','考勤扣款5','五险一金5','实发工资5','备注5','人事账号5','姓名5'),(76,'2021-01-08 11:02:47','员工姓名6','工号6','年份6','月份6','基本工资6','提成6','补贴6','奖金6','考勤扣款6','五险一金6','实发工资6','备注6','人事账号6','姓名6');
/*!40000 ALTER TABLE `yuangonggongzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongqingjia`
--

DROP TABLE IF EXISTS `yuangongqingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiakaishishijian` datetime DEFAULT NULL COMMENT '请假开始时间',
  `qingjiajieshushijian` datetime DEFAULT NULL COMMENT '请假结束时间',
  `qingjiayuanyin` longtext COMMENT '请假原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='员工请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongqingjia`
--

LOCK TABLES `yuangongqingjia` WRITE;
/*!40000 ALTER TABLE `yuangongqingjia` DISABLE KEYS */;
INSERT INTO `yuangongqingjia` VALUES (41,'2021-01-08 11:02:47','工号1','员工姓名1','部门1','病假','2021-01-08 19:02:47','2021-01-08 19:02:47','请假原因1','否',''),(42,'2021-01-08 11:02:47','工号2','员工姓名2','部门2','病假','2021-01-08 19:02:47','2021-01-08 19:02:47','请假原因2','否',''),(43,'2021-01-08 11:02:47','工号3','员工姓名3','部门3','病假','2021-01-08 19:02:47','2021-01-08 19:02:47','请假原因3','否',''),(44,'2021-01-08 11:02:47','工号4','员工姓名4','部门4','病假','2021-01-08 19:02:47','2021-01-08 19:02:47','请假原因4','否',''),(45,'2021-01-08 11:02:47','工号5','员工姓名5','部门5','病假','2021-01-08 19:02:47','2021-01-08 19:02:47','请假原因5','否',''),(46,'2021-01-08 11:02:47','工号6','员工姓名6','部门6','病假','2021-01-08 19:02:47','2021-01-08 19:02:47','请假原因6','否','');
/*!40000 ALTER TABLE `yuangongqingjia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 19:04:03
