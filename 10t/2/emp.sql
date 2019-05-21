﻿# Host: 59.110.15.49  (Version: 5.6.34-log)
# Date: 2019-05-21 11:03:10
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "emp"
#

DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGO` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TITLE` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRICE` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AUTHER` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "emp"
#

INSERT INTO `emp` VALUES (1,'http://img3m3.ddimg.cn/29/25/25324823-1_b_2.jpg',' 我的枕边英语书：这些，成就独一无二的你（升级版）','¥25.60','李文昊 【美】金姆 易人外语 凤凰含章 出品'),(2,'http://img3m3.ddimg.cn/9/36/23835843-1_b_2.jpg',' （2019）哈佛英语 书面表达巧学精练 高一','¥17.80','刘强'),(3,'http://img3m3.ddimg.cn/94/31/24010663-1_b_5.jpg',' 小学英语书写训练 四年级上册','¥4.70','《小学英语书写训练》编写组'),(4,'http://img3m5.ddimg.cn/40/34/23950615-1_b_4.jpg',' 带本英语书畅游世界','¥26.90','创想外语研发团队'),(5,'http://img3m6.ddimg.cn/38/27/27853886-1_b_2.jpg',' 小学英语书写训练 五年级上册','¥4.70','《小学英语书写训练》编写组'),(6,'http://img3m7.ddimg.cn/39/28/27853887-1_b_2.jpg',' 高考英语书面表达三维案例导学','¥20.40','杨夫锦'),(7,'http://img3m3.ddimg.cn/60/7/25324953-1_b_3.jpg',' 我的枕边英语书：刹那花开，你我邂逅美丽（升级版）','¥25.60','李文昊【美】金姆 易人外语 凤凰含章 出品'),(8,'http://img3m5.ddimg.cn/14/16/23366885-1_b_2.jpg',' 我型我秀 小学英语书写规范训练手册 五年级上册 人教版','¥14.00','吴建新 主编'),(9,'http://img3m8.ddimg.cn/43/25/9287728-1_b_0.jpg',' 学生英语书法强化字帖--名人名言','¥9.40','龙文井 书'),(10,'http://img3m0.ddimg.cn/26/15/24161570-1_b_5.jpg',' 我的第一本英语书（单词篇）','¥21.50','候�h明'),(11,'http://img3m5.ddimg.cn/3/26/26772375-1_b_2.jpg',' 高考英语书面表达必背范文手册','¥13.60','陈根花 著'),(12,'http://img3m0.ddimg.cn/8/31/26772380-1_b_3.jpg',' 我的第一本英语书（会话篇）','¥21.50','候�h明'),(13,'http://img3m5.ddimg.cn/31/20/24161575-1_b_4.jpg',' 别笑！我是出国必备英语书','¥24.40','叶晓红/著 郭侑菱/绘'),(14,'http://img3m4.ddimg.cn/64/3/23384854-1_b_2.jpg',' 学生英语书法一点通--综合训练','¥9.40','龙文井 书'),(15,'http://img3m2.ddimg.cn/47/19/23350682-1_b_2.jpg',' 世界经典英语书信(世界经典英语美文读本)(中英文对照)','¥19.20','王雷。张桂珍 主编'),(16,'http://img3m6.ddimg.cn/41/35/23950616-1_b_4.jpg',' 剑桥少儿英语书写天天练 预备级上(第6版)','¥7.10','剑桥少儿英语培训及研究中心 编'),(17,'http://img3m7.ddimg.cn/52/23/23493247-1_b_0.jpg',' 公文式教育：我的第一本英语书 大写字母','¥18.60','（日）日本公文出版 著，滕明 译'),(18,'http://img3m4.ddimg.cn/39/33/23950614-1_b_6.jpg',' 公文式教育：我的第一本英语书 小写字母','¥18.60','（日）日本公文出版 著，滕明 译'),(19,'http://img3m8.ddimg.cn/3/11/23493198-1_b_1.jpg',' 宝宝的好奇英语书','¥54.00','[法]布里奇特・斯特文斯―玛尔佐 青豆书坊 出品'),(20,'http://img3m7.ddimg.cn/24/29/23539947-1_b_1.jpg',' 英语书信日记精粹','¥26.90','（英）肯・辛格尔顿 著'),(21,'http://img3m9.ddimg.cn/90/0/23390919-1_b_1.jpg',' 带本英语书畅游世界','¥10.46','龙文井'),(22,'http://img3m8.ddimg.cn/41/5/25238408-1_b_3.jpg',' 我型我秀 小学英语书写规范训练手册 四年级下册','¥14.00','吴建新 主编'),(23,'http://img3m9.ddimg.cn/4/12/23493199-1_b_1.jpg',' 面向英语书面语误自动检测的依存规则研究','¥37.00','刘磊'),(24,'http://img3m5.ddimg.cn/53/33/1900336535-1_b_1.jpg',' 公文式教育：我的第一本英语书 字母游戏','¥18.60','日本公文出版'),(25,'http://img3m3.ddimg.cn/38/22/25119803-1_b_8.jpg',' 《小学英语临摹字帖 》（英语书写入门训练）（插图版）','¥8.10','吴建新 主编'),(26,'http://img3m6.ddimg.cn/97/8/25153126-1_b_4.jpg',' 天利38套 高考英语书面表达 2019高考必备','¥25.60','教学考试研究院，北京天利考试信息网'),(27,'http://img3m6.ddimg.cn/60/19/23947566-1_b_5.jpg',' 公文式教育：我的第一本英语书 押韵的单词','¥18.60','（日）日本公文出版 著，滕明 译');