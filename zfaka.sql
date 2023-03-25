-- MySQL dump 10.13  Distrib 5.7.41, for Linux (x86_64)
--
-- Host: localhost    Database: zfaka
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_admin_login_log`
--

DROP TABLE IF EXISTS `t_admin_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_admin_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '登录ip',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_login_log`
--

LOCK TABLES `t_admin_login_log` WRITE;
/*!40000 ALTER TABLE `t_admin_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_admin_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_admin_user`
--

DROP TABLE IF EXISTS `t_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(55) NOT NULL DEFAULT '',
  `updatetime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_user`
--

LOCK TABLES `t_admin_user` WRITE;
/*!40000 ALTER TABLE `t_admin_user` DISABLE KEYS */;
INSERT INTO `t_admin_user` VALUES (1,'demo@demo.com','76b1807fc1c914f15588520b0833fbc3','78e055',0);
/*!40000 ALTER TABLE `t_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_config`
--

DROP TABLE IF EXISTS `t_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '1' COMMENT '分类ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '配置名',
  `value` text NOT NULL COMMENT '配置内容',
  `tag` text NOT NULL COMMENT '备注',
  `lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '锁',
  `updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='基础配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_config`
--

LOCK TABLES `t_config` WRITE;
/*!40000 ALTER TABLE `t_config` DISABLE KEYS */;
INSERT INTO `t_config` VALUES (1,1,'registerswitch','1','是否开放注册功能,1是开放,0是关闭',1,1453452674),(2,1,'limitiporder','3','同一ip当日下单限制（针对未付款订单）,不限制请设置为0',1,1453452674),(3,1,'limitemailorder','3','同一email当日下单限制（针对未付款订单）,不限制请设置为0',1,1453452674),(4,1,'weburl','http://faka.zlkb.net','当前网站地址,用于支付站点异步返回，务必修改正确',1,1453452674),(5,1,'adminemail','demo@demo.com','管理员邮箱,用于接收邮件提醒用',1,1453452674),(6,1,'webname','ZFAKA平台','当前站点名称',1,1453452674),(7,1,'webdescription','本系统由资料空白开发并免费提供','当前站点描述',1,1453452674),(8,1,'notice','本系统商品均可正常购买。','首页公告',1,1453452674),(9,1,'ad','&lt;image src=&quot;/res/images/pay/supportme.jpg&quot;&gt;','购买页默认内容',1,1453452674),(10,1,'yzmswitch','1','验证码开关(1开，0关)',1,1453452674),(11,1,'orderinputtype','2','订单必填输入框选择: 1邮箱 2QQ',1,1453452674),(13,1,'logo','/res/images/logo.png','LOGO地址,默认：/res/images/logo.png',1,1453452674),(14,1,'tongji','<!--统计js-->','统计脚本',1,1453452674),(15,1,'mprodcutdescriptionswitch','0','移动端商品详情，隐藏(0)|显示(1)',1,1453452674),(16,1,'orderprefix','zlkb','订单前缀，只能是英文和数字,且长度不要超过5个字符串建议不要超过5个字符串',1,1453452674),(17,1,'backgroundimage','','前台背景图片地址',1,1453452674),(18,1,'headermenucolor','layui-bg-black','前台顶部菜单配色方案',1,1453452674),(20,1,'layerad','','弹窗广告',1,1453452674),(21,1,'loginswitch','1','登录开关',1,1453452674),(22,1,'forgetpwdswitch','0','找回密码开关',1,1453452674),(23,1,'adminyzmswitch','1','后台登录验证码开关',1,1453452674),(24,1,'shortcuticon','','ICO图标,格式必须是png或者ico或者gif',1,1453452674),(25,1,'limitorderqty','5','单笔订单数量限制',1,1453452674),(26,1,'discountswitch','0','折扣开关',1,1453452674),(27,1,'qrserver','/product/order/showqr/?url=','生成二维码的服务地址,默认请填写:/product/order/showqr/?url=',1,1453452674),(28,1,'paysubjectswitch','0','订单说明显示:0商品名,1订单号,或者自定义',1,1453452674),(30,1,'emailswitch','1','发送用户邮件开关',1,1546063186),(31,1,'emailsendtypeswitch','1','发送用户邮件方式筛选开关',1,1546063186),(32,1,'querycontactswitch','1','查询方式(联系方式)开关',1,1546063186),(33,1,'tpl','hyacinth','全新的整站模版',1,1546063186);
/*!40000 ALTER TABLE `t_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_config_cat`
--

DROP TABLE IF EXISTS `t_config_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_config_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分类名',
  `catkey` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分类KEY',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='基础配置分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_config_cat`
--

LOCK TABLES `t_config_cat` WRITE;
/*!40000 ALTER TABLE `t_config_cat` DISABLE KEYS */;
INSERT INTO `t_config_cat` VALUES (1,'基础设置','basic'),(2,'其他设置','other');
/*!40000 ALTER TABLE `t_config_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_email`
--

DROP TABLE IF EXISTS `t_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendmail` varchar(255) NOT NULL DEFAULT '' COMMENT '	发件人email',
  `sendname` varchar(255) NOT NULL DEFAULT '' COMMENT '发送人昵称',
  `protocol` varchar(255) NOT NULL DEFAULT 'smtp' COMMENT '邮件发送协议',
  `host` varchar(255) NOT NULL DEFAULT '' COMMENT 'SMTP发送邮件服务端',
  `port` varchar(55) NOT NULL DEFAULT '' COMMENT 'SMTP端口号',
  `mailaddress` varchar(255) NOT NULL DEFAULT '' COMMENT 'SMTP邮箱地址',
  `mailpassword` varchar(255) NOT NULL DEFAULT '' COMMENT 'SMTP邮箱密码',
  `smtp_crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'SMTP加密方式 0关，1ssl,2tls',
  `isactive` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0未激活 1激活',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_email`
--

LOCK TABLES `t_email` WRITE;
/*!40000 ALTER TABLE `t_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_email_code`
--

DROP TABLE IF EXISTS `t_email_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_email_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作类型',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `result` text NOT NULL COMMENT '结果',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '结果0未发送 1已发送',
  `checkedStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未校验，1已校验',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_email_code`
--

LOCK TABLES `t_email_code` WRITE;
/*!40000 ALTER TABLE `t_email_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_email_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_email_queue`
--

DROP TABLE IF EXISTS `t_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT ' 收件人',
  `subject` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  `sendtime` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  `sendresult` text NOT NULL COMMENT '发送错误',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0,未发送 ，1已发送，-1,失败',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_email_queue`
--

LOCK TABLES `t_email_queue` WRITE;
/*!40000 ALTER TABLE `t_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_help`
--

DROP TABLE IF EXISTS `t_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL DEFAULT '1' COMMENT '类型',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `isactive` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1是激活，0是不激活',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_help`
--

LOCK TABLES `t_help` WRITE;
/*!40000 ALTER TABLE `t_help` DISABLE KEYS */;
INSERT INTO `t_help` VALUES (1,1,'这是什么系统','这就是一个伟大的系统',1,1527775425);
/*!40000 ALTER TABLE `t_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(55) NOT NULL DEFAULT '0' COMMENT '订单号',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(50) NOT NULL DEFAULT '' COMMENT 'QQ号码',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '产品id',
  `productname` varchar(255) NOT NULL DEFAULT '' COMMENT '订单名称',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `chapwd` varchar(55) NOT NULL DEFAULT '' COMMENT '查询密码',
  `ip` varchar(55) NOT NULL DEFAULT '' COMMENT 'ip',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态0待支付,1待处理,2已完成,3处理失败,-1删除',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '下单时间',
  `paytime` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `tradeid` varchar(255) NOT NULL DEFAULT '' COMMENT '外部订单id',
  `paymethod` varchar(255) NOT NULL DEFAULT '' COMMENT '支付渠道',
  `paymoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付总金额',
  `kami` text NOT NULL COMMENT '卡密',
  `configure1` text NOT NULL COMMENT '额外配置1',
  `addons` text NOT NULL COMMENT '备注',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_payment`
--

DROP TABLE IF EXISTS `t_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` varchar(55) DEFAULT '' COMMENT '支付名',
  `payname` varchar(55) NOT NULL DEFAULT '' COMMENT '显示名称',
  `payimage` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `alias` varchar(55) NOT NULL DEFAULT '' COMMENT '别名',
  `sign_type` enum('RSA','RSA2','MD5','HMAC-SHA256') NOT NULL DEFAULT 'RSA2',
  `app_id` varchar(255) NOT NULL DEFAULT '',
  `app_secret` varchar(255) NOT NULL DEFAULT '',
  `ali_public_key` text NOT NULL COMMENT '配置1',
  `rsa_private_key` text NOT NULL COMMENT '配置2',
  `configure3` text NOT NULL COMMENT '配置3',
  `configure4` text NOT NULL COMMENT '配置4',
  `overtime` int(11) NOT NULL DEFAULT '0' COMMENT '支付超时,0是不限制',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未激活,1已激活',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_payment`
--

LOCK TABLES `t_payment` WRITE;
/*!40000 ALTER TABLE `t_payment` DISABLE KEYS */;
INSERT INTO `t_payment` VALUES (1,'支付宝当面付','支付宝','/res/images/pay/alipay.jpg','zfbf2f','RSA2','','','','','','',0,0),(2,'码支付-支付宝扫码支付','支付宝','/res/images/pay/alipay.jpg','codepayalipay','RSA2','','','','','','',300,0),(3,'码支付-QQ扫码支付','手机QQ','/res/images/pay/qqpay.jpg','codepayqq','RSA2','','','','','','',300,0),(4,'码支付-微信扫码支付','微信','/res/images/pay/weixin.jpg','codepaywx','RSA2','','','','','','',300,0),(5,'支付宝电脑网站支付(WEB)','支付宝','/res/images/pay/alipay.jpg','zfbweb','RSA2','2018********','','','','','',0,0),(6,'微信扫码支付','微信','/res/images/pay/weixin.jpg','wxf2f','MD5','','','','','','',0,0),(7,'有赞接口','微信','/res/images/pay/yzpay.jpg','yzpay','RSA2','','','','','','',0,0),(11,'微信H5支付','微信','/res/images/pay/weixin.jpg','wxh5','MD5','','','','','','',0,0),(12,'PAYPAL','PAYPAL','/res/images/pay/paypal.jpg','paypal','RSA2','','','','','live','7',0,0),(13,'CoinPay','CoinPay','/res/images/pay/coinbase.png','coinpay','MD5','','','','','','',6000,0);
/*!40000 ALTER TABLE `t_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_products`
--

DROP TABLE IF EXISTS `t_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL DEFAULT '1' COMMENT '类型id',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未激活 1激活',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名',
  `password` varchar(60) NOT NULL DEFAULT '' COMMENT '密码',
  `description` text NOT NULL COMMENT '描述',
  `stockcontrol` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不控制,1控制',
  `qty` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `qty_virtual` int(11) NOT NULL DEFAULT '0' COMMENT '虚拟库存',
  `qty_switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0关,1开',
  `qty_sell` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '销售价',
  `price_ori` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '销售价',
  `auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0手动,1自动',
  `addons` text NOT NULL COMMENT '备注',
  `sort_num` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  `imgurl` text NOT NULL COMMENT '产品图片',
  `iszhekou` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0无折扣,1有折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products`
--

LOCK TABLES `t_products` WRITE;
/*!40000 ALTER TABLE `t_products` DISABLE KEYS */;
INSERT INTO `t_products` VALUES (1,1,1,'测试商品','','测试使用',0,0,0,0,0,0.10,0.00,1,'',99,1528962221,0,'',0);
/*!40000 ALTER TABLE `t_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_products_card`
--

DROP TABLE IF EXISTS `t_products_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_products_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `card` text NOT NULL COMMENT '卡密',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0可用 1已使用',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products_card`
--

LOCK TABLES `t_products_card` WRITE;
/*!40000 ALTER TABLE `t_products_card` DISABLE KEYS */;
INSERT INTO `t_products_card` VALUES (1,1,'资料空白是大帅锅',1530082076,0,0);
/*!40000 ALTER TABLE `t_products_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_products_pifa`
--

DROP TABLE IF EXISTS `t_products_pifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_products_pifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '商品d',
  `qty` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠价格',
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '简单说明',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products_pifa`
--

LOCK TABLES `t_products_pifa` WRITE;
/*!40000 ALTER TABLE `t_products_pifa` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_products_pifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_products_type`
--

DROP TABLE IF EXISTS `t_products_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_products_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL DEFAULT '' COMMENT '类型命名',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `password` varchar(60) NOT NULL DEFAULT '' COMMENT '分类密码',
  `sort_num` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未激活,1已激活',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除,1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products_type`
--

LOCK TABLES `t_products_type` WRITE;
/*!40000 ALTER TABLE `t_products_type` DISABLE KEYS */;
INSERT INTO `t_products_type` VALUES (1,'测试商品','测试商品','',1,1,0);
/*!40000 ALTER TABLE `t_products_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_seo`
--

DROP TABLE IF EXISTS `t_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_seo`
--

LOCK TABLES `t_seo` WRITE;
/*!40000 ALTER TABLE `t_seo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ticket`
--

DROP TABLE IF EXISTS `t_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `typeid` int(11) NOT NULL DEFAULT '1' COMMENT '类型',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不重要 1重要',
  `subject` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0,刚创建;1,已回复;5已完结',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ticket`
--

LOCK TABLES `t_ticket` WRITE;
/*!40000 ALTER TABLE `t_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT '1' COMMENT '分组ID',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'qq',
  `mobilephone` varchar(15) NOT NULL DEFAULT '' COMMENT '手机',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '用户自己的备注',
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_group`
--

DROP TABLE IF EXISTS `t_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组名',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_group`
--

LOCK TABLES `t_user_group` WRITE;
/*!40000 ALTER TABLE `t_user_group` DISABLE KEYS */;
INSERT INTO `t_user_group` VALUES (1,'普通','普通用户',0.00),(2,'VIP1','VIP1用户',0.00),(3,'VIP2','VIP2用户',0.00),(4,'VIP3','VIP3用户',0.00);
/*!40000 ALTER TABLE `t_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_login_logs`
--

DROP TABLE IF EXISTS `t_user_login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_login_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` varchar(25) NOT NULL DEFAULT '' COMMENT '登录ip',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_login_logs`
--

LOCK TABLES `t_user_login_logs` WRITE;
/*!40000 ALTER TABLE `t_user_login_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_login_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-25 15:51:45
