# Host: 59.110.15.49  (Version: 5.6.34-log)
# Date: 2019-05-21 10:58:18
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "employer"
#

DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGO` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TITLE` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRICE` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AUTHER` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "employer"
#

INSERT INTO `employer` VALUES (1,'http://img3m3.ddimg.cn/47/22/25109813-1_b_4.jpg',' 吉他指弹曲200首大合集','¥57.30','白吉兵 编著'),(2,'http://img3m3.ddimg.cn/67/9/25345453-1_b_1.jpg',' 吉他自学三月通','¥40.50','刘天礼 编著'),(3,'http://img3m9.ddimg.cn/66/21/25320009-1_b_2.jpg',' 吉他教程 挥洒自如弹吉他 吉他基础教程 音阶篇','¥56.70','[日]渡边具义'),(4,'http://img3m5.ddimg.cn/57/32/20985285-1_b_2.jpg',' 吉他初学者之友 吉他自学教程 吉他轻松入门','¥42.70','楚飞'),(5,'http://img3m8.ddimg.cn/26/4/26484308-1_b_2.jpg',' 吉他自学三月通DVD版','¥45.50','刘传'),(6,'http://img3m8.ddimg.cn/98/28/25583678-1_b_2.jpg',' 吉他和弦图表大全','¥46.40','编著：阿兰・切斯特 翻译：倪钡'),(7,'http://img3m9.ddimg.cn/36/6/25269489-1_b_3.jpg',' 吉他书 吉他弹唱实用教程 二维码视频版','¥47.20','巢讯'),(8,'http://img3m4.ddimg.cn/70/14/25155574-1_b_3.jpg',' 吉他族谱：全球经典吉他完全型录','¥107.80','（英国）特里布劳斯（Terry Burrows）'),(9,'http://img3m9.ddimg.cn/60/33/23640369-1_b_1.jpg',' 吉他宝典――吉他手超级手册','¥78.20','姜伟 著'),(10,'http://img3m8.ddimg.cn/28/27/23659048-1_b_1.jpg',' 吉他成长日记：音乐时光集','¥33.10','薛笑雷'),(11,'http://img3m3.ddimg.cn/1/28/23711293-1_b_2.jpg',' 吉他上的美妙旋律100首――独奏、二重奏、三重奏','¥48.90','卡尔・维克曼'),(12,'http://img3m0.ddimg.cn/54/21/25114770-1_b_2.jpg',' 吉他入门经典教程（超炫图解版）（扫码看视频）','¥43.00','李国标 著'),(13,'http://img3m5.ddimg.cn/3/31/24191445-1_b_6.jpg',' 吉他传奇：史上*好听名曲改编的吉他曲集','¥37.30','梅彦岭'),(14,'http://img3m8.ddimg.cn/57/8/23201598-1_b_1.jpg',' 吉他弹唱222首超级流行歌曲（第三季）','¥39.40','王迪平,唐文通'),(15,'http://img3m5.ddimg.cn/41/12/25299095-1_b_3.jpg',' 无怨的青春――吉他弹唱情歌超精选','¥33.60','王乐融 编著'),(16,'http://img3m2.ddimg.cn/49/27/25154662-1_b_1.jpg',' 吉他专用六线谱练习本（带和弦图）','¥28.50','美人鱼工作室'),(17,'http://img3m9.ddimg.cn/65/6/25326839-1_b_3.jpg',' 群星吉他弹唱150首超精选','¥40.50','刘天礼 编著'),(18,'http://img3m7.ddimg.cn/5/4/25212137-1_b_1.jpg',' 吉他弹奏入门（第2版）','¥32.20','赵辰，王南 著'),(19,'http://img3m6.ddimg.cn/14/1/24029096-1_b_6.jpg',' 吉他弹奏跟我学','¥23.80','刘传 编著'),(20,'http://img3m3.ddimg.cn/54/2/23651253-1_b_2.jpg',' 指弹吉他基础教程','¥44.10','张利，张艺斐 编著'),(21,'http://img3m7.ddimg.cn/81/3/27866997-1_b_0.jpg',' 古典吉他入门教程 (扫码听音乐)','¥38.80','彭来柱'),(22,'http://img3m5.ddimg.cn/96/34/25333305-1_b_3.jpg',' 吉他入门经典小品36首 附CD一张','¥23.60','顾梦怡 译'),(23,'http://img3m2.ddimg.cn/52/11/25258912-1_b_1.jpg',' 中外吉他经典独奏曲精选','¥19.70','刘天礼 编'),(24,'http://img3m3.ddimg.cn/76/13/25278043-1_b_1.jpg',' 民谣吉他培训教程','¥37.70','杨传术'),(25,'http://img3m7.ddimg.cn/76/1/23648107-1_b_1.jpg',' 只要弹吉他 4周上手吉他学习法 专为初学者准备的吉他教学书 吉他入门书籍 扫码看视频学吉他','¥66.20','【韩】金佑钟'),(26,'http://img3m5.ddimg.cn/71/24/23432975-1_b_0.jpg',' 少儿吉他标准化教程（二维码畅听品质版）','¥27.60','杨永喜 编'),(27,'http://img3m7.ddimg.cn/10/0/26513497-1_b_0.jpg',' 古典吉他演奏会名曲集','¥39.00','凌虹 编著'),(28,'http://img3m1.ddimg.cn/35/8/25211771-1_b_1.jpg',' 吉他学校标准化教程【初中级部分】（二维码视频教学版）','¥19.40','李建武 著'),(29,'http://img3m3.ddimg.cn/53/9/24038243-1_b_5.jpg',' 吉他弹唱从入门到精通','¥22.70','于海力');
