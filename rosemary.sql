/*
 Navicat Premium Data Transfer

 Source Server         : huaidan
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : rosemary

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 19/10/2018 00:23:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_info
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info`  (
  `addressId` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址表编号',
  `addressInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `userId` int(11) NOT NULL COMMENT '用户编号',
  `receiverName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货姓名',
  `receiverPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收获电话',
  `receiverProvince` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份',
  `receiverCity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  `receiverDistrict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区/县',
  `receiverZip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮编',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`addressId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address_info
-- ----------------------------
INSERT INTO `address_info` VALUES (1, '莆田学院', 5, '谢佳榕', '17720838367', '福建省', '莆田市', '城厢区', '26+5', '2018-10-17 22:08:20', '2018-10-17 22:08:22');
INSERT INTO `address_info` VALUES (2, '凤城镇', 5, '谢佳榕', '17720838367', '福建省', '泉州市', '安溪县', '362400', '2018-10-17 22:09:38', '2018-10-17 22:09:41');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员账户',
  `adminPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `adminStatus` int(255) NULL DEFAULT 1 COMMENT '管理员状态：0 :锁定 1：解锁;',
  `adminLevel` int(255) NULL DEFAULT 0 COMMENT '管理员身份：0：系统管理员 1：店铺管理员',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `messageId` int(11) NOT NULL COMMENT '被评论的留言编号',
  `criticsId` int(11) NOT NULL COMMENT '评论者编号',
  `commentTime` datetime NOT NULL COMMENT '评论发布时间',
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for flower_info
-- ----------------------------
DROP TABLE IF EXISTS `flower_info`;
CREATE TABLE `flower_info`  (
  `flowerId` int(11) NOT NULL AUTO_INCREMENT COMMENT '鲜花编号',
  `flowerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '花名',
  `price` decimal(10, 0) NOT NULL COMMENT '价格',
  `words` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '华语',
  `sPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `bPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大图',
  `typeId` int(11) NULL DEFAULT NULL COMMENT '所属类别编号',
  `stock` int(11) NOT NULL DEFAULT 100 COMMENT '库存数量',
  `createTime` datetime NOT NULL COMMENT '花上传时间',
  `updateTime` datetime NOT NULL COMMENT '花的更新时间',
  PRIMARY KEY (`flowerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flower_info
-- ----------------------------
INSERT INTO `flower_info` VALUES (1, '粉色洋桔梗', 359, '洋桔梗最主要的花语就是真诚不变的爱，纯洁、无邪、漂亮、感动，富于感情。', '材 料：白色紫罗兰2扎（紫罗兰花期为3-6月，其他月份用白色金鱼花或者白色桔梗替代）、粉色洋桔梗1扎，斑春兰0.5扎（斑春兰如缺货可用尤加利替代）\r\n. 包 装：矮身圆肚玻璃花瓶系丝带.', 'img/singlepro/粉色洋桔梗.jpg', 'img/singlepro/粉色洋桔梗.jpg', 8, 100, '2018-09-01 11:46:43', '2018-09-01 11:46:49');
INSERT INTO `flower_info` VALUES (2, '戴安娜粉玫瑰', 128, '花开的季节，我迷恋你的香气，那是我思念的味道！', '材 料：黛安娜玫瑰9枝，浅紫色勿忘我适量，栀子叶适量。包 装：白色雪梨纸，浅紫人造纸，豆沙色缎带花结。', 'img/singlepro/戴安娜粉玫瑰.jpg', 'img/singlepro/戴安娜粉玫瑰.jpg', 2, 100, '2018-09-02 11:46:54', '2018-09-02 11:46:58');
INSERT INTO `flower_info` VALUES (3, '香槟玫瑰', 302, '是你吗？手执鲜花的那一个，你我曾在梦里暗中相约在这夏，让这么一刻，燃亮爱吧~', '材 料：香槟玫瑰19枝，银叶菊1扎，绿色重瓣洋桔梗0.5扎，白色相思梅0.3扎\r\n。 包 装：蓝色方形花筒。', 'img/singlepro/香槟玫瑰.jpg', 'img/singlepro/香槟玫瑰.jpg', 2, 100, '2018-09-03 11:47:01', '2018-09-03 11:47:05');
INSERT INTO `flower_info` VALUES (4, '粉百合', 286, '载着寓意希望的鲜花驶向快乐幸福的彼岸…… \r\n用途：祝福、感谢、探望、访友', '材 料：粉百合2枝、红玫瑰9枝、叶上花1扎、红色康乃馨15枝、粉色洋桔梗0.5扎\r\n. 包 装：有柄花篮一个.', 'img/singlepro/粉百合.jpg', 'img/singlepro/粉百合.jpg', 6, 100, '2018-09-04 11:47:11', '2018-09-04 11:47:19');
INSERT INTO `flower_info` VALUES (5, '白玫瑰', 308, '如果时光还来得及，我想重新再遇见你。我想我会再次坠入你的眼眸里。', '材 料：白百合2枝、雪山白玫瑰7枝、紫色洋桔梗3枝、栀子叶0.3扎、叶上白2枝、粉色绣球1枝\r\n. 包 装：深灰色OPP雾面纸1张、粉色OPP雾面纸1张、白蓝细条纹罗文带1.5米.', 'img/singlepro/白玫瑰.jpg', 'img/singlepro/白玫瑰.jpg', 2, 100, '2018-09-05 11:47:23', '2018-09-05 11:47:27');
INSERT INTO `flower_info` VALUES (6, '红玫瑰', 639, '“世界上万物也许会消亡，永恒的爱情天长地久。”巴基斯坦的民歌《永恒的爱情》，唱出了爱的真谛，也唱出了世界人民共同的心声。', '材 料：红玫瑰99枝，各色洋桔梗，腊梅、叶上花适量至花束饱满\r\n. 包 装：长春藤白色压纹纸，灰色不织布，酒红色缎带蝴蝶结.', 'img/singlepro/红玫瑰.jpg', 'img/singlepro/红玫瑰.jpg', 2, 100, '2018-09-06 11:47:31', '2018-09-06 11:48:54');
INSERT INTO `flower_info` VALUES (7, '紫色桔梗', 668, '陪伴是最长情的告白，我愿世世温暖着你！', '材 料：雪山白玫瑰19枝、蓝绣球3枝、紫色桔梗5枝、白色石竹梅7枝、搭配适量栀子叶、尤加利，花束长达1.2m~1.3m\r\n. 包 装：蓝色条纹纸12张、白色雪梨纸2张、米白色缎带3米.', 'img/singlepro/紫色桔梗.jpg', 'img/singlepro/紫色桔梗.jpg', 8, 100, '2018-09-07 11:49:00', '2018-09-07 11:49:05');
INSERT INTO `flower_info` VALUES (8, '明亮向日葵', 290, '比海洋更宽阔的是天空,比天空更宽阔的是您的心胸,您额上的皱纹记载着坎坷,您的一生就是一首瑰丽的诗吧！', '材 料：向日葵6枝，绿色洋桔梗6枝，栀子叶1扎，白色相思梅5枝. 包 装：黑色雪梨纸2张，蓝色条纹纸2张，米白色平面纸2张，白蓝细条纹罗文带1米.', 'img/singlepro/明亮向日葵.jpg', 'img/singlepro/明亮向日葵.jpg', 4, 100, '2018-09-08 11:49:10', '2018-09-08 11:49:15');
INSERT INTO `flower_info` VALUES (9, '紫色小雏菊', 292, '我爱你不是因为你是谁，而是我在你面前可以是谁。属于双鱼座的星座花，献给温柔多情的她。', '材 料：深蓝色绣球1枝，紫色小雏菊4枝，银叶菊0.3扎，叶上白0.5扎，白色洋桔梗0.5扎\r\n. 包 装：浅紫香芋紫人造纸2张，白绿粗条纹罗文带1.5米.', 'img/singlepro/紫色小雏菊.jpg', 'img/singlepro/紫色小雏菊.jpg', 4, 100, '2018-09-09 11:49:24', '2018-09-09 11:49:27');
INSERT INTO `flower_info` VALUES (10, '红色康乃馨', 499, '她曾总是对你唠叨，和她离别后，才发现那些废话是世界上最暖的牵挂！', '材 料：红色康乃馨19枝、粉色绣球1枝、白百合5枝、红玫瑰11枝、粉色洋桔梗4枝、红色朱蕉叶5枝、绿色朱蕉叶3枝\r\n. 包 装：黑色雪梨纸3张、绿色条纹纸12张、棕色丝带4米.', 'img/singlepro/红色康乃馨.jpg', 'img/singlepro/红色康乃馨.jpg', 3, 100, '2018-09-10 11:49:36', '2018-09-10 11:49:50');
INSERT INTO `flower_info` VALUES (11, '粉色多头康乃馨', 178, '没你疼爱我怎么生活，没你抚养我怎能长大，你给了我青春的年华，自己却满头白发，不负青春年华，是对你最好的报答！', '材 料：紫红色康乃馨9枝，粉色多头康乃馨10枝. 包 装：白色雪梨纸，香芋紫人造纸，粉色opp雾面纸，白蓝罗纹带花结.', 'img/singlepro/粉色多头康乃馨.jpg', 'img/singlepro/粉色多头康乃馨.jpg', 3, 100, '2018-09-11 11:49:58', '2018-09-11 11:50:03');
INSERT INTO `flower_info` VALUES (12, '白色迷迭香', 599, '你淡淡的回眸一笑，时光不惊，如同花神芙洛拉的化身，让我坠入甜腻的爱', '粉色玫瑰（荔枝）5枝、浅紫色紫罗兰9枝（紫罗兰花期为3-6月，其他月份用相似线状花材替代）、白色郁金香9枝、粉色绣球1枝、鸢尾叶1扎、银叶菊1', 'img/singlepro/白色郁金香.jpg', 'img/singlepro/白色郁金香.jpg', 7, 100, '2018-09-12 11:50:11', '2018-09-12 11:50:15');
INSERT INTO `flower_info` VALUES (13, '粉紫色郁金香', 599, '一抹柔粉，不经意间触动我心，温柔了芳华，惊艳了时光！', '粉紫色郁金香10枝，粉色玫瑰（荔枝）6枝，粉色洋牡丹9枝（花期12-4月，其他月份用粉色泡泡蔷薇代替）、浅紫色马蹄莲7枝、雪柳5枝、橙色多头玫瑰', 'img/singlepro/粉紫色郁金香.png', 'img/singleproimg/粉紫色郁金香.jpg', 1, 100, '2018-09-13 11:50:23', '2018-09-13 11:50:27');
INSERT INTO `flower_info` VALUES (14, '白色多头香水百合', 280, '“青青子衿，悠悠我心。”你在我的心里,是如此的超凡脱俗,我喜欢你,也为你祝福,祝福你开在最美丽的地方.', '材 料：白色多头香水百合6枝，澳州腊梅做点缀. 包 装：咖啡色条纹纸，牛皮纸，拉菲草.', 'img/singlepro/白色多头香水百合.jpg', 'img/singlepro/白色多头香水百合.jpg', 6, 100, '2018-09-14 11:50:32', '2018-09-14 11:50:39');
INSERT INTO `flower_info` VALUES (15, '粉色满天星', 329, '粉色的梦不做不可，对你的话一定要说', '花材：一大扎粉色满天星饱满搭配. 包装：粉色雾面纸韩式包装，蝴蝶结系扎.', 'img/singlepro/粉色满天星.jpg', 'img/singlepro/粉色满天星.jpg', 5, 100, '2018-09-15 11:50:50', '2018-09-15 11:50:54');
INSERT INTO `flower_info` VALUES (16, '蓝色满天星', 269, '爱你如繁星闪耀，流转之间，即是永恒。,甘愿做陪伴.', '花材： 蓝色满天星一大扎. 包装：精美礼盒包装。', 'img/singlepro/蓝色满天星.jpg', 'img/singlepro/蓝色满天星.jpg', 5, 100, '2018-09-16 11:50:59', '2018-09-16 11:51:05');
INSERT INTO `flower_info` VALUES (17, '粉色扶郎', 229, '如果你因失去了太阳而流泪，那么你也将失去群星了。专属水瓶座的星座花，献给自由开朗的她。', '材 料：粉色扶郎13枝，银叶菊1扎，尤加利叶0.5扎. 包 装：粉色opp雾面纸2张，银灰色logo缎带1.5米.', 'img/singlepro/粉色扶郎.jpg', 'img/singlepro/粉色扶郎.jpg', 9, 100, '2018-09-17 11:51:19', '2018-09-17 11:51:24');
INSERT INTO `flower_info` VALUES (18, '红色扶郎', 159, '为美好的事物不断消耗，但这是一场美丽的盛放', '材 料：红色扶郎8枝，红色多头玫2枝，红色麦秆菊(缺货可换成红色小雏菊）3枝 ，尤加利叶适量. 包 装：白色手提花篮1个，花泥1块.', 'img/singlepro/红色扶郎.jpg', 'img/singlepro/红色扶郎.jpg', 9, 100, '2018-09-18 11:51:28', '2018-09-18 11:51:33');
INSERT INTO `flower_info` VALUES (19, '金枝玉叶玫瑰', 254, '灿烂地笑吧~你的笑容是我今生最大的心愿！', '材 料：向日葵2枝，金枝玉叶玫瑰13枝，香槟桔梗0.2扎，叶上黄金0.2扎\r\n. 包 装：手提花篮1个.', 'img/singlepro/金枝玉叶玫瑰.jpg', 'img/singlepro/金枝玉叶玫瑰.jpg', 2, 100, '2018-09-19 11:51:39', '2018-09-19 11:51:44');
INSERT INTO `flower_info` VALUES (20, '浅香槟玫瑰', 298, '爱上你是我今生最大的幸福，想你是我最甜蜜的痛苦。专属天秤座的鲜花玫瑰，献给高贵美丽的你。', '材 料：香槟玫瑰11枝、白百合3枝、蕾丝3枝、银叶菊8枝. 包 装：蓝色条纹纸2张，虾粉双面牛皮纸纸2张、米白色缎带1.5米.', 'img/singlepro/浅香槟玫瑰.jpg', 'img/singlepro/浅香槟玫瑰.jpg', 2, 100, '2018-08-20 11:51:48', '2018-09-20 11:51:58');
INSERT INTO `flower_info` VALUES (21, '粉色非洲菊', 235, '当第一朵花盛开枝头，当第一场雨唤醒万物朦胧，迎着那暖暖春风，吹散了忧愁，吹来了久违的温柔。适用于公司前台、办公桌、会议桌及公司装饰摆设等用途.', '材 料：粉色非洲菊16枝、银叶菊10枝、尤加利叶3枝、粉色小雏菊8枝\r\n包 装：中号玻璃方缸.', 'img/singlepro/粉色非洲菊.jpg', 'img/singlepro/粉色非洲菊.jpg', 4, 100, '2018-09-21 11:52:04', '2018-09-21 11:52:08');
INSERT INTO `flower_info` VALUES (22, '紫玫瑰', 269, '希望你是那纯洁的向阳花，在这美丽的、艰辛的生命中，坚强地、灿烂地绽放！适用于公司前台、办公桌、会议桌及公司装饰摆设等用途。', '材 料：向日葵5枝、绿小菊3枝、紫桔梗3枝，栀子叶0.5扎，水竹叶0.5扎\r\n. 包 装：大号玻璃方缸.', 'img/singlepro/紫玫瑰.jpg', 'img/singlepro/紫玫瑰.jpg', 4, 100, '2018-09-22 11:52:14', '2018-09-22 11:52:18');
INSERT INTO `flower_info` VALUES (23, '多头黄百合', 329, '我们的友情，如阳光般温暖！', '材 料：10枝多头黄百合,黄莺适量搭配. 包 装：蓝色平面纸圆形包装，拉菲草束扎.', 'img/singlepro/多头黄百合.jpg', 'img/singlepro/多头黄百合.jpg', 6, 100, '2018-09-23 11:52:34', '2018-09-23 11:52:40');
INSERT INTO `flower_info` VALUES (24, '粉色康乃馨', 246, '母亲的爱是永恒的，她是一颗不落的星；母亲的爱是伟大的，她可以毫不保留的付出一切倾尽所有！', '材 料：粉色康乃馨33枝，石竹梅围绕. 包 装：内层紫红色不织布，外层淡紫色牛皮纸，红色缎带花结.', 'img/singlepro/粉色康乃馨.jpg', 'img/singlepro/粉色康乃馨.jpg', 3, 100, '2018-09-24 11:52:45', '2018-09-24 11:52:50');

-- ----------------------------
-- Table structure for flower_type
-- ----------------------------
DROP TABLE IF EXISTS `flower_type`;
CREATE TABLE `flower_type`  (
  `typeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `typeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名',
  `createTime` datetime NOT NULL COMMENT '花的类别上传时间',
  `updateTime` datetime NOT NULL COMMENT '花的类别更新时间',
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flower_type
-- ----------------------------
INSERT INTO `flower_type` VALUES (1, '郁金香', '2018-08-01 11:53:12', '2018-08-01 11:53:17');
INSERT INTO `flower_type` VALUES (2, '玫瑰', '2018-08-02 11:53:23', '2018-08-02 11:53:28');
INSERT INTO `flower_type` VALUES (3, '康乃馨', '2018-08-03 11:53:34', '2018-08-03 11:53:39');
INSERT INTO `flower_type` VALUES (4, '邹菊', '2018-08-04 11:53:45', '2018-08-04 11:53:50');
INSERT INTO `flower_type` VALUES (5, '满天星', '2018-08-05 11:53:56', '2018-08-05 11:54:04');
INSERT INTO `flower_type` VALUES (6, '百合', '2018-08-06 11:54:12', '2018-08-06 11:54:18');
INSERT INTO `flower_type` VALUES (7, '迷迭香', '2018-08-07 11:54:25', '2018-08-07 11:54:33');
INSERT INTO `flower_type` VALUES (8, '桔梗花', '2018-08-08 11:54:41', '2018-08-08 11:54:50');
INSERT INTO `flower_type` VALUES (9, '扶郎', '2018-08-09 11:54:56', '2018-08-09 11:55:03');

-- ----------------------------
-- Table structure for leave_message
-- ----------------------------
DROP TABLE IF EXISTS `leave_message`;
CREATE TABLE `leave_message`  (
  `messageId` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `userId` int(11) NOT NULL COMMENT '留言者',
  `flowerId` int(11) NOT NULL COMMENT '评论的花的编号',
  `publishTime` datetime NOT NULL COMMENT '发表时间',
  PRIMARY KEY (`messageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `orderInfoId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单明细表编号',
  `flowerId` int(11) NOT NULL COMMENT '花编号',
  `orderId` int(11) NOT NULL COMMENT '订单表编号',
  `quantity` int(255) NULL DEFAULT NULL COMMENT '数量',
  `totalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`orderInfoId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (36, 3, 20183422, 1, 302.00);
INSERT INTO `order_info` VALUES (37, 3, 20184335, 1, 302.00);
INSERT INTO `order_info` VALUES (38, 3, 20180923, 3, 906.00);
INSERT INTO `order_info` VALUES (39, 3, 20181989, 1, 302.00);
INSERT INTO `order_info` VALUES (40, 3, 20180560, 1, 302.00);
INSERT INTO `order_info` VALUES (41, 3, 20186765, 2, 604.00);
INSERT INTO `order_info` VALUES (42, 3, 20188004, 2, 604.00);
INSERT INTO `order_info` VALUES (43, 3, 20187761, 1, 302.00);
INSERT INTO `order_info` VALUES (44, 3, 20184434, 1, 302.00);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderId` int(11) NOT NULL COMMENT '订单编号',
  `userId` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `orderStatus` int(11) NOT NULL COMMENT '订单状态(0:未付款.1：已付款。2：未发货。3：已发货。4：交易成功)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `postage` decimal(11, 0) NOT NULL COMMENT '运费',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `sendTime` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `payment` decimal(10, 0) NULL DEFAULT NULL COMMENT '实际付款',
  `orderType` int(255) NOT NULL COMMENT '订单类型:0 进货订单 1：售货订单',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (20180560, 5, 0, '2018-10-18 01:36:33', 10, '2018-10-18 01:36:33', NULL, 312, 1, '福建省莆田市城厢区莆田学院');
INSERT INTO `orders` VALUES (20180923, 5, 0, '2018-10-18 01:25:19', 0, '2018-10-18 01:25:19', NULL, 906, 1, '福建省泉州市安溪县凤城镇');
INSERT INTO `orders` VALUES (20181989, 5, 0, '2018-10-18 01:32:21', 10, '2018-10-18 01:32:21', NULL, 312, 1, '福建省莆田市城厢区莆田学院');
INSERT INTO `orders` VALUES (20183422, 5, 0, '2018-10-18 01:13:07', 0, '2018-10-18 01:13:07', NULL, 302, 1, '福建省泉州市安溪县凤城镇');
INSERT INTO `orders` VALUES (20184335, 5, 0, '2018-10-18 01:16:59', 10, '2018-10-18 01:16:59', NULL, 312, 1, '福建省莆田市城厢区莆田学院');
INSERT INTO `orders` VALUES (20184434, 5, 1, '2018-10-18 02:02:16', 10, '2018-10-18 02:02:16', NULL, 312, 1, '福建省莆田市城厢区莆田学院');
INSERT INTO `orders` VALUES (20186765, 5, 0, '2018-10-18 01:38:54', 10, '2018-10-18 01:38:54', NULL, 614, 1, '福建省莆田市城厢区莆田学院');
INSERT INTO `orders` VALUES (20187761, 5, 1, '2018-10-18 01:52:56', 10, '2018-10-18 01:52:56', NULL, 312, 1, '福建省莆田市城厢区莆田学院');
INSERT INTO `orders` VALUES (20188004, 5, 1, '2018-10-18 01:49:09', 10, '2018-10-18 01:49:09', NULL, 614, 1, '福建省莆田市城厢区莆田学院');

-- ----------------------------
-- Table structure for user_basicinfo
-- ----------------------------
DROP TABLE IF EXISTS `user_basicinfo`;
CREATE TABLE `user_basicinfo`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `userPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `uq_userName`(`userName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_basicinfo
-- ----------------------------
INSERT INTO `user_basicinfo` VALUES (1, '大黄', '12345', '2018-10-11 20:11:06', '2018-10-11 20:11:06');
INSERT INTO `user_basicinfo` VALUES (2, 'admin3', 'ee25f924b7df4d4fb93b3da96ee342b1', '2018-10-12 23:06:02', '2018-10-14 22:12:27');
INSERT INTO `user_basicinfo` VALUES (3, 'xiaoxie1', 'd10906c3dac1172d4f60bd41f224ae75', '2018-10-13 00:54:28', '2018-10-15 00:31:00');
INSERT INTO `user_basicinfo` VALUES (4, 'admin5', 'a3590023df66ac92ae35e3316026d17d', '2018-10-13 00:56:47', '2018-10-15 00:56:06');
INSERT INTO `user_basicinfo` VALUES (5, 'admin6', '827ccb0eea8a706c4c34a16891f84e7b', '2018-10-13 10:02:02', '2018-10-13 10:02:02');

-- ----------------------------
-- Table structure for user_detailsinfo
-- ----------------------------
DROP TABLE IF EXISTS `user_detailsinfo`;
CREATE TABLE `user_detailsinfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户详情表ID',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `userTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户联系方式',
  `userEmail` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_detailsinfo
-- ----------------------------
INSERT INTO `user_detailsinfo` VALUES (1, 1, NULL, '17720838367', NULL, '2018-10-13 00:37:10', '2018-10-13 00:37:10');
INSERT INTO `user_detailsinfo` VALUES (2, 3, NULL, '18016661776', NULL, '2018-10-13 00:54:28', '2018-10-13 00:54:28');
INSERT INTO `user_detailsinfo` VALUES (3, 4, NULL, '17720838367', NULL, '2018-10-13 00:56:47', '2018-10-13 00:56:47');
INSERT INTO `user_detailsinfo` VALUES (4, 5, NULL, '17720835697', NULL, '2018-10-13 10:02:02', '2018-10-13 10:02:02');

SET FOREIGN_KEY_CHECKS = 1;
