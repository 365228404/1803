-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.5-10.0.14-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- 正在导出表  denglu.gwc 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `gwc` DISABLE KEYS */;
REPLACE INTO `gwc` (`index`, `indexid`, `title`, `img`, `price`, `shuliang`) VALUES
	(64, 2, '药师岗位辅导教程 全国药品流通行业岗位技能竞赛辅导教材', 'img/goods/yaopin/1270744_0.jpg', 78, 2);
/*!40000 ALTER TABLE `gwc` ENABLE KEYS */;

-- 正在导出表  denglu.liangliang 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `liangliang` DISABLE KEYS */;
/*!40000 ALTER TABLE `liangliang` ENABLE KEYS */;

-- 正在导出表  denglu.users 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`indexid`, `username`, `pwd`, `ddd`) VALUES
	(44, '3', '3', 1),
	(45, '88', '88', 1),
	(46, 't', 't', 1),
	(47, '8', 't', 1),
	(48, '33', '33', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 正在导出表  denglu.xiangmu 的数据：~109 rows (大约)
/*!40000 ALTER TABLE `xiangmu` DISABLE KEYS */;
REPLACE INTO `xiangmu` (`id`, `img`, `title`, `price`, `title_ad`, `reference`, `num`, `prescription`, `type`, `indexid`) VALUES
	(1273376, '["img/goods/yaopin/1273376_0.jpg"]', '药物合成反应 附光盘供化学制药技术专业用第2版全国高职高专药品类专业', 34, '赠品数量有限，赠完为止', 41, 105159, '满999减100元', '药品', 1),
	(1270744, '["img/goods/yaopin/1270744_0.jpg"]', '药师岗位辅导教程 全国药品流通行业岗位技能竞赛辅导教材', 78, '赠品数量有限，赠完为止', 94, 105159, '满999减100元', '药品', 2),
	(1261371, '["img/goods/yaopin/1261371_0.jpg"]', '药品微生物检验技术 全国医药高等职业教育药学类规划教材', 31, '赠品数量有限，赠完为止', 37, 105159, '满999减100元', '药品', 3),
	(1257526, '["img/goods/yaopin/1257526_0.jpg"]', '医药市场营销学 供药学类食品药品管理类制药技术类医学技术类等专业用全国高职高专教育十二五规划教材', 31, '赠品数量有限，赠完为止', 37, 105157, '满999减100元', '药品', 4),
	(1248656, '["img/goods/yaopin/1248656_0.jpg"]', '食品药品行政处罚文书制作与示例', 26, '赠品数量有限，赠完为止', 32, 211404, '满999减100元', '药品', 5),
	(1228819, '["img/goods/yaopin/1228819_0.jpg"]', '儿科疾病专辑/药品不良反应与合理用药系列丛书', 30, '赠品数量有限，赠完为止', 36, 105159, '满999减100元', '药品', 6),
	(1222868, '["img/goods/yaopin/1222868_0.jpg"]', '中医药学概论 全国高职高专药品类专业十二五规划教材', 39, '赠品数量有限，赠完为止', 47, 105159, '满999减100元', '药品', 7),
	(1216207, '["img/goods/yaopin/1216207_0.jpg"]', '药品化义/本草必读丛书', 12, '赠品数量有限，赠完为止', 14, 105159, '满999减100元', '药品', 8),
	(1205497, '["img/goods/yaopin/1205497_0.jpg"]', '药品生产质量管理 全国高等学校制药工程药物制剂专业规划教材', 24, '赠品数量有限，赠完为止', 29, 105156, '满999减100元', '药品', 9),
	(1184356, '["img/goods/yaopin/1184356_0.jpg"]', '药品生产质量管理 高职高专十二五规划教材 /药学系列', 22, '赠品数量有限，赠完为止', 27, 105157, '满999减100元', '药品', 10),
	(441672, '["img/goods/yaopin/441672_0.jpg"]', '高危药品临床应用指导', 31, '赠品数量有限，赠完为止', 37, 105159, '满999减100元', '药品', 11),
	(234076, '["img/goods/yaopin/234076_0.jpg","img/goods/yaopin/234076_1.jpg","img/goods/yaopin/234076_2.jpg"]', '小熊（Bear）JYH-A30A1 煎药壶 陶瓷养生壶 全自动分体中药锅 3L', 238, '赠品数量有限，赠完为止', 286, 210340, '满999减100元', '药', 12),
	(3460529, '["img/goods/yaopin/3460529_0.jpg","img/goods/yaopin/3460529_1.jpg","img/goods/yaopin/3460529_2.jpg","img/goods/yaopin/3460529_3.jpg","img/goods/yaopin/3460529_4.jpg","img/goods/yaopin/3460529_5.jpg"]', '贯康 无硫大籽皂角米 雪莲子 160g/瓶', 128, '赠品数量有限，赠完为止', 154, 103979, '满999减100元', '药', 13),
	(3451472, '["img/goods/yaopin/3451472_0.jpg","img/goods/yaopin/3451472_1.jpg","img/goods/yaopin/3451472_2.jpg","img/goods/yaopin/3451472_3.jpg"]', '杜蕾斯 play激情热感情趣啫喱人体润滑液 50ml', 43, '赠品数量有限，赠完为止', 51, 103870, '满999减100元', '药', 14),
	(3433279, '["img/goods/yaopin/3433279_0.jpg","img/goods/yaopin/3433279_1.jpg","img/goods/yaopin/3433279_2.jpg","img/goods/yaopin/3433279_3.jpg","img/goods/yaopin/3433279_4.jpg"]', '万特力.护 膝部专用 护膝 运动用 S M L LL 号 XL', 95, '赠品数量有限，赠完为止', 114, 104104, '满999减100元', '药', 15),
	(3367506, '["img/goods/yaopin/3367506_0.jpg"]', 'ARS 安速 小黑帽灭蟑螂药 蟑螂屋 12枚/盒 日本原装进口', 50, '赠品数量有限，赠完为止', 60, 211985, '满999减100元', '药', 16),
	(3336894, '["img/goods/yaopin/3336894_0.jpg","img/goods/yaopin/3336894_1.jpg","img/goods/yaopin/3336894_2.jpg"]', '南彝 云南彝药排毒眼罩 12片/盒', 158, '赠品数量有限，赠完为止', 190, 105466, '满999减100元', '药', 17),
	(3254392, '["img/goods/yaopin/3254392_0.jpg"]', '鸟居 脚气药水 10ml', 145, '赠品数量有限，赠完为止', 174, 104110, '满999减100元', '药', 18),
	(3210974, '["img/goods/yaopin/3210974_0.jpg","img/goods/yaopin/3210974_1.jpg","img/goods/yaopin/3210974_2.jpg","img/goods/yaopin/3210974_3.jpg","img/goods/yaopin/3210974_4.jpg"]', '鱼跃 坐厕椅 H022B', 199, '赠品数量有限，赠完为止', 239, 104101, '满999减100元', '药', 19),
	(1639677, '["img/goods/yaopin/1639677_0.jpg","img/goods/yaopin/1639677_1.jpg"]', 'Gino 宝宝喂药器 喂药勺子 带刻度喂药汤匙/量匙10ml 日本进口  ', 30, '赠品数量有限，赠完为止', 36, 103673, '满999减100元', '药', 20),
	(3254396, '["img/goods/yaopin/3254396_0.jpg","img/goods/yaopin/3254396_1.jpg","img/goods/yaopin/3254396_2.jpg","img/goods/yaopin/3254396_3.jpg"]', 'Hisamitsu 久光制药 久光膏药 7枚', 50, '赠品数量有限，赠完为止', 60, 104110, '满999减100元', '药', 21),
	(1640467, '["img/goods/yaopin/1640467_0.jpg","img/goods/yaopin/1640467_1.jpg","img/goods/yaopin/1640467_2.jpg","img/goods/yaopin/1640467_3.jpg","img/goods/yaopin/1640467_4.jpg"]', '神象 生晒山参粉 1g*2支*2盒', 716, '赠品数量有限，赠完为止', 859, 103952, '满999减100元', '药', 22),
	(1301067, '["img/goods/yaopin/1301067_0.jpg","img/goods/yaopin/1301067_1.jpg","img/goods/yaopin/1301067_2.jpg","img/goods/yaopin/1301067_3.jpg"]', '恒寿堂 鲨鱼肝油胶丸 500mg/粒*120粒', 102, '赠品数量有限，赠完为止', 123, 103919, '满999减100元', '药', 23),
	(3435643, '["img/goods/yaopin/3435643_0.jpg","img/goods/yaopin/3435643_1.jpg","img/goods/yaopin/3435643_2.jpg","img/goods/yaopin/3435643_3.jpg","img/goods/yaopin/3435643_4.jpg"]', '万特力.护 新款男女通用型护腰 篮球健身训练保暖束腰收腹带 105-120cm', 298, '赠品数量有限，赠完为止', 358, 104105, '满999减100元', '药', 24),
	(3435639, '["img/goods/yaopin/3435639_0.jpg","img/goods/yaopin/3435639_1.jpg"]', '万特力.护 新款男女通用型护腰 篮球健身训练保暖束腰收腹带女性用 65-80cm', 298, '赠品数量有限，赠完为止', 358, 104105, '满999减100元', '药', 25),
	(3433282, '["img/goods/yaopin/3433282_0.jpg","img/goods/yaopin/3433282_1.jpg","img/goods/yaopin/3433282_2.jpg","img/goods/yaopin/3433282_3.jpg","img/goods/yaopin/3433282_4.jpg"]', '万特力.护 护肘保暖关节男女羽毛球网球透气篮球运动护具 25-28cm', 118, '赠品数量有限，赠完为止', 142, 104107, '满999减100元', '药', 26),
	(3254398, '["img/goods/yaopin/3254398_0.jpg","img/goods/yaopin/3254398_1.jpg","img/goods/yaopin/3254398_2.jpg","img/goods/yaopin/3254398_3.jpg"]', 'Hisamitsu 久光制药 萨隆巴斯 140枚', 95, '赠品数量有限，赠完为止', 114, 104110, '满999减100元', '药', 27),
	(3254395, '["img/goods/yaopin/3254395_0.jpg","img/goods/yaopin/3254395_1.jpg","img/goods/yaopin/3254395_2.jpg","img/goods/yaopin/3254395_3.jpg"]', 'MSD 祛疤膏 10g', 45, '赠品数量有限，赠完为止', 54, 104110, '满999减100元', '药', 28),
	(1658157, '["img/goods/yaopin/1658157_0.jpg","img/goods/yaopin/1658157_1.jpg","img/goods/yaopin/1658157_2.jpg","img/goods/yaopin/1658157_3.jpg"]', 'ST 艾饰庭 消臭壶Plus 芍药花香 芳香除臭剂 空气香氛 祛异味 260g 日本进口', 45, '赠品数量有限，赠完为止', 54, 103449, '满999减100元', '药', 29),
	(1681751, '["img/goods/yaopin/1681751_0.jpg","img/goods/yaopin/1681751_1.jpg","img/goods/yaopin/1681751_2.jpg","img/goods/yaopin/1681751_3.jpg"]', '同仁堂 胖大海80G', 75, '赠品数量有限，赠完为止', 90, 103979, '满999减100元', '药', 30),
	(3255027, '["img/goods/yaopin/3255027_0.jpg","img/goods/yaopin/3255027_1.jpg","img/goods/yaopin/3255027_2.jpg"]', 'Sante 参天 FX眼药水 金色 12ml', 55, '赠品数量有限，赠完为止', 66, 104166, '满999减100元', '药', 31),
	(1681742, '["img/goods/yaopin/1681742_0.jpg","img/goods/yaopin/1681742_1.jpg","img/goods/yaopin/1681742_2.jpg","img/goods/yaopin/1681742_3.jpg","img/goods/yaopin/1681742_4.jpg"]', '同仁堂 菊花茶30g/瓶', 33, '赠品数量有限，赠完为止', 40, 103979, '满999减100元', '药', 32),
	(3254394, '["img/goods/yaopin/3254394_0.jpg","img/goods/yaopin/3254394_1.jpg","img/goods/yaopin/3254394_2.jpg","img/goods/yaopin/3254394_3.jpg"]', '小林制药 液体 创可贴 10g', 65, '赠品数量有限，赠完为止', 78, 104110, '满999减100元', '药', 33),
	(3177967, '["img/goods/yaopin/3177967_0.jpg","img/goods/yaopin/3177967_1.jpg"]', '睿量REMAX 毒药Apple数据线RC-058i 1个', 49, '赠品数量有限，赠完为止', 59, 101753, '满999减100元', '药', 34),
	(1277185, '["img/goods/yaopin/1277185_0.jpg","img/goods/yaopin/1277185_1.jpg","img/goods/yaopin/1277185_2.jpg"]', '雷允上 上雷牌冬虫夏草50#1克', 275, '赠品数量有限，赠完为止', 330, 103954, '满999减100元', '药', 35),
	(3079774, '["img/goods/yaopin/3079774_0.jpg","img/goods/yaopin/3079774_1.jpg"]', '欧舒丹 芍药润肤露 250ml 女身体乳液保湿滋润', 260, '赠品数量有限，赠完为止', 312, 101910, '满999减100元', '药', 36),
	(1298387, '["img/goods/yaopin/1298387_0.jpg","img/goods/yaopin/1298387_1.jpg","img/goods/yaopin/1298387_2.jpg"]', '恒寿堂 金乳钙咀嚼片 100片', 93, '赠品数量有限，赠完为止', 111, 103912, '满999减100元', '药', 37),
	(3254397, '["img/goods/yaopin/3254397_0.jpg","img/goods/yaopin/3254397_1.jpg"]', 'Hisamitsu 久光制药 大鹏温感膏药 7枚', 50, '赠品数量有限，赠完为止', 60, 104110, '满999减100元', '药', 38),
	(3416847, '["img/goods/yaopin/3416847_0.jpg"]', 'DR.JART/蒂佳婷 深层补水药丸面膜 蓝色 5片*4 保税区邮', 336, '赠品数量有限，赠完为止', 403, 102201, '满999减100元', '药', 39),
	(3262075, '["img/goods/yaopin/3262075_0.jpg","img/goods/yaopin/3262075_1.jpg","img/goods/yaopin/3262075_2.jpg","img/goods/yaopin/3262075_3.jpg","img/goods/yaopin/3262075_4.jpg"]', '胡庆余堂 三七粉 60克（3克*20袋）', 168, '赠品数量有限，赠完为止', 202, 103980, '满999减100元', '药', 40),
	(3503354, '["img/goods/yaopin/3503354_0.jpg","img/goods/yaopin/3503354_1.jpg","img/goods/yaopin/3503354_2.jpg","img/goods/yaopin/3503354_3.jpg","img/goods/yaopin/3503354_4.jpg"]', '胡庆余堂 西洋参 斜片 10克 小袋便携 原产地加拿大', 35, '赠品数量有限，赠完为止', 42, 103953, '满999减100元', '药', 41),
	(3148758, '["img/goods/yaopin/3148758_0.jpg","img/goods/yaopin/3148758_1.jpg","img/goods/yaopin/3148758_2.jpg"]', '蒂佳婷（Dr.Jart+） 水动力活力水润面膜25ml*5片/盒 蓝色药丸面膜 快速紧急补水 韩国进口 ', 120, '赠品数量有限，赠完为止', 144, 102201, '满999减100元', '药', 42),
	(3115533, '["img/goods/yaopin/3115533_0.jpg","img/goods/yaopin/3115533_1.jpg","img/goods/yaopin/3115533_2.jpg","img/goods/yaopin/3115533_3.jpg"]', '辉乐牌 乐盯软胶囊 0.5g*60s 叶黄素', 197, '赠品数量有限，赠完为止', 236, 104040, '满999减100元', '药', 43),
	(1681759, '["img/goods/yaopin/1681759_0.jpg","img/goods/yaopin/1681759_1.jpg","img/goods/yaopin/1681759_2.jpg","img/goods/yaopin/1681759_3.jpg","img/goods/yaopin/1681759_4.jpg"]', '同仁堂 乌梅220g', 65, '赠品数量有限，赠完为止', 78, 103979, '满999减100元', '药', 44),
	(3190661, '["img/goods/yaopin/3190661_0.jpg","img/goods/yaopin/3190661_1.jpg","img/goods/yaopin/3190661_2.jpg","img/goods/yaopin/3190661_3.jpg","img/goods/yaopin/3190661_4.jpg"]', '长生岛 干海参 一级150g(70-100头)', 3910, '赠品数量有限，赠完为止', 4692, 103973, '满999减100元', '药', 45),
	(3300341, '["img/goods/yaopin/3300341_0.jpg","img/goods/yaopin/3300341_1.jpg","img/goods/yaopin/3300341_2.jpg","img/goods/yaopin/3300341_3.jpg"]', '三堂 宁夏野生黑枸杞 50克/瓶', 89, '赠品数量有限，赠完为止', 107, 103979, '满999减100元', '药', 46),
	(1277038, '["img/goods/yaopin/1277038_0.jpg"]', '胡庆余堂 古医牌破壁灵芝孢子粉1.5克*20袋', 360, '赠品数量有限，赠完为止', 432, 103966, '满999减100元', '药', 47),
	(251926, '["img/goods/yaopin/251926_0.jpg","img/goods/yaopin/251926_1.jpg","img/goods/yaopin/251926_2.jpg","img/goods/yaopin/251926_3.jpg"]', '安速 蟑螂药杀虫剂小强恢恢蟑螂屋捕捉器5枚 日本进口', 30, '赠品数量有限，赠完为止', 36, 211972, '满999减100元', '药', 48),
	(3109951, '["img/goods/yaopin/3109951_0.jpg","img/goods/yaopin/3109951_1.jpg","img/goods/yaopin/3109951_2.jpg","img/goods/yaopin/3109951_3.jpg"]', '好熟悉 118G南疆玫瑰花 新疆无硫熏玫瑰', 158, '赠品数量有限，赠完为止', 190, 103979, '满999减100元', '药', 49),
	(3337239, '["img/goods/yaopin/3337239_0.jpg"]', '九阳（Joyoung）K17-D07 家用智能煮茶煎药玻璃养生壶 1.7L', 278, '赠品数量有限，赠完为止', 334, 210322, '满999减100元', '药', 50),
	(3451471, '["img/goods/yaopin/3451471_0.jpg","img/goods/yaopin/3451471_1.jpg","img/goods/yaopin/3451471_2.jpg","img/goods/yaopin/3451471_3.jpg"]', '杜蕾斯 爽滑快感情趣啫喱人体润滑液 50ml', 40, '赠品数量有限，赠完为止', 47, 103870, '满999减100元', '药', 51),
	(3270751, '["img/goods/yaopin/3270751_0.jpg","img/goods/yaopin/3270751_1.jpg","img/goods/yaopin/3270751_2.jpg","img/goods/yaopin/3270751_3.jpg","img/goods/yaopin/3270751_4.jpg"]', '雷允上诵芬牌 林下山参粉 1g*2瓶*6盒', 1968, '赠品数量有限，赠完为止', 2362, 103952, '满999减100元', '药', 52),
	(279481, '["img/goods/yaopin/279481_0.jpg","img/goods/yaopin/279481_1.jpg","img/goods/yaopin/279481_2.jpg","img/goods/yaopin/279481_3.jpg","img/goods/yaopin/279481_4.jpg","img/goods/yaopin/279481_5.jpg","img/goods/yaopin/279481_6.jpg","img/goods/yaopin/279481_7.jpg","img/goods/yaopin/279481_8.jpg","img/goods/yaopin/279481_9.jpg"]', '片仔癀 牙火清 牙膏 (菁萃药香) 95g', 26, '赠品数量有限，赠完为止', 31, 103000, '满999减100元', '药', 53),
	(251929, '["img/goods/yaopin/251929_0.jpg","img/goods/yaopin/251929_1.jpg","img/goods/yaopin/251929_2.jpg","img/goods/yaopin/251929_3.jpg","img/goods/yaopin/251929_4.jpg"]', '安速 红阿斯杀虫烟雾剂20克 除蟑螂药灭跳蚤除螨灭虱子 日本进口', 95, '赠品数量有限，赠完为止', 114, 211972, '满999减100元', '药', 54),
	(1681717, '["img/goods/yaopin/1681717_0.jpg","img/goods/yaopin/1681717_1.jpg","img/goods/yaopin/1681717_2.jpg","img/goods/yaopin/1681717_3.jpg","img/goods/yaopin/1681717_4.jpg"]', '同仁堂 芡实300g/瓶', 75, '赠品数量有限，赠完为止', 90, 103979, '满999减100元', '药', 55),
	(3316583, '["img/goods/yaopin/3316583_0.jpg","img/goods/yaopin/3316583_1.jpg","img/goods/yaopin/3316583_2.jpg","img/goods/yaopin/3316583_3.jpg","img/goods/yaopin/3316583_4.jpg"]', '贯康 黑枸杞 125克/瓶 量贩自用装', 99, '赠品数量有限，赠完为止', 119, 103979, '满999减100元', '药', 56),
	(1278216, '["img/goods/yaopin/1278216_0.jpg","img/goods/yaopin/1278216_1.jpg","img/goods/yaopin/1278216_2.jpg","img/goods/yaopin/1278216_3.jpg"]', '澳琳达 蜂胶胶囊 500mg*60', 238, '赠品数量有限，赠完为止', 286, 103961, '满999减100元', '药', 57),
	(3416852, '["img/goods/yaopin/3416852_0.jpg"]', 'DR.JART/蒂佳婷 药丸舒缓保湿面膜深层补水 绿色蓝色 5片*2 保税区邮', 172, '赠品数量有限，赠完为止', 206, 102201, '满999减100元', '药', 58),
	(318779, '["img/goods/yaopin/318779_0.jpg","img/goods/yaopin/318779_1.jpg","img/goods/yaopin/318779_2.jpg","img/goods/yaopin/318779_3.jpg","img/goods/yaopin/318779_4.jpg"]', '海尔（Haier）BCD-225WDGK 225升 干湿分储风冷无霜三门冰箱', 2579, '赠品数量有限，赠完为止', 3095, 101963, '满999减100元', '药', 59),
	(3254390, '["img/goods/yaopin/3254390_0.jpg","img/goods/yaopin/3254390_1.jpg"]', '第一三共 第一三共膏药 7枚', 50, '赠品数量有限，赠完为止', 60, 104110, '满999减100元', '药', 60),
	(3148759, '["img/goods/yaopin/3148759_0.jpg","img/goods/yaopin/3148759_1.jpg","img/goods/yaopin/3148759_2.jpg"]', '蒂佳婷（Dr.Jart+） 水动力舒缓补水绿色药丸面膜25g*5片/盒 舒缓镇静 快速补水 晒后修复 韩国进口 ', 120, '赠品数量有限，赠完为止', 144, 102201, '满999减100元', '药', 61),
	(3339286, '["img/goods/yaopin/3339286_0.jpg","img/goods/yaopin/3339286_1.jpg","img/goods/yaopin/3339286_2.jpg","img/goods/yaopin/3339286_3.jpg"]', '二十四节气 果蔬代餐粉 210g(7袋*30g)', 128, '赠品数量有限，赠完为止', 154, 103991, '满999减100元', '药', 62),
	(3254393, '["img/goods/yaopin/3254393_0.jpg","img/goods/yaopin/3254393_1.jpg","img/goods/yaopin/3254393_2.jpg","img/goods/yaopin/3254393_3.jpg"]', 'SATO 佐藤 护臀膏 30g', 55, '赠品数量有限，赠完为止', 66, 104110, '满999减100元', '药', 63),
	(1277475, '["img/goods/yaopin/1277475_0.jpg","img/goods/yaopin/1277475_1.jpg","img/goods/yaopin/1277475_2.jpg","img/goods/yaopin/1277475_3.jpg"]', '胡庆余堂牌 红糖姜枣茶 固体饮料 15克*12', 58, '赠品数量有限，赠完为止', 70, 103979, '满999减100元', '药', 64),
	(3115532, '["img/goods/yaopin/3115532_0.jpg","img/goods/yaopin/3115532_1.jpg","img/goods/yaopin/3115532_2.jpg","img/goods/yaopin/3115532_3.jpg","img/goods/yaopin/3115532_4.jpg"]', '博士伦 博视康牌 叶黄素片 530mg*60片 意大利进口', 260, '赠品数量有限，赠完为止', 312, 104040, '满999减100元', '药', 65),
	(3300336, '["img/goods/yaopin/3300336_0.jpg","img/goods/yaopin/3300336_1.jpg","img/goods/yaopin/3300336_2.jpg","img/goods/yaopin/3300336_3.jpg"]', '三堂 青海黑枸杞8mm大果 150克/罐', 109, '赠品数量有限，赠完为止', 131, 103979, '满999减100元', '药', 66),
	(1277281, '["img/goods/yaopin/1277281_0.jpg","img/goods/yaopin/1277281_1.jpg","img/goods/yaopin/1277281_2.jpg","img/goods/yaopin/1277281_3.jpg"]', '胡庆余堂 冰糖蜂蜜雪梨膏 280克', 69, '赠品数量有限，赠完为止', 83, 103979, '满999减100元', '药', 67),
	(279484, '["img/goods/yaopin/279484_0.jpg","img/goods/yaopin/279484_1.jpg","img/goods/yaopin/279484_2.jpg","img/goods/yaopin/279484_3.jpg","img/goods/yaopin/279484_4.jpg","img/goods/yaopin/279484_5.jpg"]', '片仔癀 牙火清牙膏(菁萃药香) 145g', 34, '赠品数量有限，赠完为止', 41, 103000, '满999减100元', '药', 68),
	(3275487, '["img/goods/yaopin/3275487_0.jpg","img/goods/yaopin/3275487_1.jpg","img/goods/yaopin/3275487_2.jpg","img/goods/yaopin/3275487_3.jpg"]', '掌生香杞 宁夏红枸杞小袋装（6袋*60g/袋）建议60天量', 79, '赠品数量有限，赠完为止', 95, 103979, '满999减100元', '药', 69),
	(3109939, '["img/goods/yaopin/3109939_0.jpg","img/goods/yaopin/3109939_1.jpg","img/goods/yaopin/3109939_2.jpg"]', '好熟悉 46G胎菊浙江菊花茶 茶叶 花草茶', 42, '赠品数量有限，赠完为止', 50, 103979, '满999减100元', '药', 70),
	(3416853, '["img/goods/yaopin/3416853_0.jpg"]', 'DR.JART/蒂佳婷 药丸舒缓保湿面膜 绿色 5片*2 保税区邮', 172, '赠品数量有限，赠完为止', 206, 102201, '满999减100元', '药', 71),
	(1325564, '["img/goods/yaopin/1325564_0.jpg","img/goods/yaopin/1325564_1.jpg","img/goods/yaopin/1325564_2.jpg","img/goods/yaopin/1325564_3.jpg"]', '九阳（Joyoung）K15-D03 玻璃煎药养生壶 1.5L', 148, '赠品数量有限，赠完为止', 178, 210322, '满999减100元', '药', 72),
	(3190662, '["img/goods/yaopin/3190662_0.jpg","img/goods/yaopin/3190662_1.jpg","img/goods/yaopin/3190662_2.jpg","img/goods/yaopin/3190662_3.jpg","img/goods/yaopin/3190662_4.jpg"]', '长生岛 干海参 110g(特级30支装)', 3730, '赠品数量有限，赠完为止', 4476, 103973, '满999减100元', '药', 73),
	(3462666, '["img/goods/yaopin/3462666_0.jpg"]', 'SUQQU 四色眼影盘 01 优芍药 YUUSHAKUYAKU 中国香港直邮', 489, '赠品数量有限，赠完为止', 587, 101778, '满999减100元', '药', 74),
	(3275492, '["img/goods/yaopin/3275492_0.jpg","img/goods/yaopin/3275492_1.jpg","img/goods/yaopin/3275492_2.jpg","img/goods/yaopin/3275492_3.jpg","img/goods/yaopin/3275492_4.jpg"]', '掌生香杞 宁夏红枸杞小袋装（3袋*60g/袋）建议30天量', 49, '赠品数量有限，赠完为止', 59, 103979, '满999减100元', '药', 75),
	(3416777, '["img/goods/yaopin/3416777_0.jpg"]', 'DR.JART/蒂佳婷 银灰色药丸 黑竹炭泡泡清洁面膜收毛孔 5片*2 保税区邮', 172, '赠品数量有限，赠完为止', 206, 102201, '满999减100元', '药', 76),
	(1681737, '["img/goods/yaopin/1681737_0.jpg","img/goods/yaopin/1681737_1.jpg","img/goods/yaopin/1681737_2.jpg","img/goods/yaopin/1681737_3.jpg","img/goods/yaopin/1681737_4.jpg"]', '同仁堂 川贝粉3克*20袋/盒', 761, '赠品数量有限，赠完为止', 913, 103979, '满999减100元', '药', 77),
	(3416776, '["img/goods/yaopin/3416776_0.jpg"]', 'DR.JART/蒂佳婷 银灰色药丸 黑竹炭泡泡清洁面膜收毛孔 5片 保税区邮', 97, '赠品数量有限，赠完为止', 116, 102201, '满999减100元', '药', 78),
	(1681715, '["img/goods/yaopin/1681715_0.jpg","img/goods/yaopin/1681715_1.jpg","img/goods/yaopin/1681715_2.jpg","img/goods/yaopin/1681715_3.jpg","img/goods/yaopin/1681715_4.jpg"]', '同仁堂 柠檬片60g', 36, '赠品数量有限，赠完为止', 43, 103979, '满999减100元', '药', 79),
	(1681761, '["img/goods/yaopin/1681761_0.jpg","img/goods/yaopin/1681761_1.jpg","img/goods/yaopin/1681761_2.jpg","img/goods/yaopin/1681761_3.jpg","img/goods/yaopin/1681761_4.jpg"]', '同仁堂 龙眼肉(特选)200g/瓶', 66, '赠品数量有限，赠完为止', 79, 103979, '满999减100元', '药', 80),
	(3311056, '["img/goods/yaopin/3311056_0.jpg","img/goods/yaopin/3311056_1.jpg","img/goods/yaopin/3311056_2.jpg"]', '大汉牌 灵芝破壁孢子冲剂 1g*20袋', 380, '赠品数量有限，赠完为止', 456, 103966, '满999减100元', '药', 81),
	(3109960, '["img/goods/yaopin/3109960_0.jpg","img/goods/yaopin/3109960_1.jpg","img/goods/yaopin/3109960_2.jpg"]', '好熟悉 60G南疆玫瑰胎菊红枣茶 新疆和田玫瑰胎菊红枣茶', 86, '赠品数量有限，赠完为止', 104, 103979, '满999减100元', '药', 82),
	(1276671, '["img/goods/yaopin/1276671_0.jpg","img/goods/yaopin/1276671_1.jpg","img/goods/yaopin/1276671_2.jpg","img/goods/yaopin/1276671_3.jpg"]', '恒寿堂 金枪鱼油胶丸 500mg/粒*120粒 调节血脂', 102, '赠品数量有限，赠完为止', 123, 104015, '满999减100元', '药', 83),
	(3109953, '["img/goods/yaopin/3109953_0.jpg","img/goods/yaopin/3109953_1.jpg","img/goods/yaopin/3109953_2.jpg"]', '好熟悉 115G黑枸杞 青海黑果枸杞子', 558, '赠品数量有限，赠完为止', 670, 103979, '满999减100元', '药', 84),
	(1664225, '["img/goods/yaopin/1664225_0.jpg","img/goods/yaopin/1664225_1.jpg","img/goods/yaopin/1664225_2.jpg","img/goods/yaopin/1664225_3.jpg","img/goods/yaopin/1664225_4.jpg"]', '雷允上 润喉糖（清新）28g*2盒', 40, '赠品数量有限，赠完为止', 48, 103979, '满999减100元', '药', 85),
	(2155630, '["img/goods/yaopin/2155630_0.jpg","img/goods/yaopin/2155630_1.jpg"]', '美的（Midea）GE1501A 全自动玻璃燕窝养生壶 1.5L', 398, '赠品数量有限，赠完为止', 478, 210322, '满999减100元', '药', 86),
	(3111040, '["img/goods/yaopin/3111040_0.jpg","img/goods/yaopin/3111040_1.jpg","img/goods/yaopin/3111040_2.jpg"]', '胡庆余堂 冬虫夏草 3g 50# 原产地西藏那曲', 858, '赠品数量有限，赠完为止', 1030, 103954, '满999减100元', '药', 87),
	(1277030, '["img/goods/yaopin/1277030_0.jpg","img/goods/yaopin/1277030_1.jpg","img/goods/yaopin/1277030_2.jpg","img/goods/yaopin/1277030_3.jpg","img/goods/yaopin/1277030_4.jpg"]', '新生命牌蛋白质粉 固体饮料 200g', 236, '赠品数量有限，赠完为止', 283, 103998, '满999减100元', '药', 88),
	(3079771, '["img/goods/yaopin/3079771_0.jpg","img/goods/yaopin/3079771_1.jpg","img/goods/yaopin/3079771_2.jpg","img/goods/yaopin/3079771_3.jpg","img/goods/yaopin/3079771_4.jpg"]', '欧舒丹 芍药花香沐浴啫喱 250ml', 180, '赠品数量有限，赠完为止', 216, 102004, '满999减100元', '药', 89),
	(1298359, '["img/goods/yaopin/1298359_0.jpg","img/goods/yaopin/1298359_1.jpg","img/goods/yaopin/1298359_2.jpg","img/goods/yaopin/1298359_3.jpg","img/goods/yaopin/1298359_4.jpg"]', '神象 西洋参片 双合 25g*2 5g', 165, '赠品数量有限，赠完为止', 198, 103953, '满999减100元', '药', 90),
	(3254754, '["img/goods/yaopin/3254754_0.jpg","img/goods/yaopin/3254754_1.jpg","img/goods/yaopin/3254754_2.jpg","img/goods/yaopin/3254754_3.jpg"]', '澳佳宝/BLACKMORES 鱼油胶囊FISH OIL 269.4g(1.347g*200粒)', 299, '赠品数量有限，赠完为止', 359, 104015, '满999减100元', '药', 91),
	(3085311, '["img/goods/yaopin/3085311_0.jpg","img/goods/yaopin/3085311_1.jpg","img/goods/yaopin/3085311_2.jpg","img/goods/yaopin/3085311_3.jpg","img/goods/yaopin/3085311_4.jpg"]', '雷允上 上雷 贵燕贵润（即食浓缩燕窝）35克*8瓶', 1160, '赠品数量有限，赠完为止', 1392, 103978, '满999减100元', '药', 92),
	(3254859, '["img/goods/yaopin/3254859_0.jpg","img/goods/yaopin/3254859_1.jpg","img/goods/yaopin/3254859_2.jpg","img/goods/yaopin/3254859_3.jpg","img/goods/yaopin/3254859_4.jpg"]', '澳佳宝/BLACKMORES 儿童鱼油胶囊 54.24g(0.904g*60s)', 299, '赠品数量有限，赠完为止', 359, 104015, '满999减100元', '药', 93),
	(1298389, '["img/goods/yaopin/1298389_0.jpg","img/goods/yaopin/1298389_1.jpg","img/goods/yaopin/1298389_2.jpg","img/goods/yaopin/1298389_3.jpg"]', '恒寿堂 金枪鱼油胶丸 60g120粒 DHA', 102, '赠品数量有限，赠完为止', 123, 104015, '满999减100元', '药', 94),
	(3194365, '["img/goods/yaopin/3194365_0.jpg","img/goods/yaopin/3194365_1.jpg","img/goods/yaopin/3194365_2.jpg","img/goods/yaopin/3194365_3.jpg"]', '新生命牌 深海鱼油胶囊 1002mg*100粒', 188, '赠品数量有限，赠完为止', 226, 104015, '满999减100元', '药', 95),
	(3110149, '["img/goods/yaopin/3110149_0.jpg","img/goods/yaopin/3110149_1.jpg","img/goods/yaopin/3110149_2.jpg"]', '好熟悉 65G南疆玫瑰 新疆和田玫瑰花无硫熏', 110, '赠品数量有限，赠完为止', 132, 103979, '满999减100元', '药', 96),
	(279479, '["img/goods/yaopin/279479_0.jpg","img/goods/yaopin/279479_1.jpg","img/goods/yaopin/279479_2.jpg","img/goods/yaopin/279479_3.jpg","img/goods/yaopin/279479_4.jpg","img/goods/yaopin/279479_5.jpg","img/goods/yaopin/279479_6.jpg","img/goods/yaopin/279479_7.jpg","img/goods/yaopin/279479_8.jpg","img/goods/yaopin/279479_9.jpg"]', '片仔癀 牙火清 牙膏 (菁萃药香) 175g', 39, '赠品数量有限，赠完为止', 47, 103000, '满999减100元', '药', 97),
	(1277031, '["img/goods/yaopin/1277031_0.jpg","img/goods/yaopin/1277031_1.jpg","img/goods/yaopin/1277031_2.jpg","img/goods/yaopin/1277031_3.jpg"]', '雷允上 上雷牌铁皮枫斗 二级100克 礼盒', 1500, '赠品数量有限，赠完为止', 1800, 103981, '满999减100元', '药', 98),
	(1640883, '["img/goods/yaopin/1640883_0.jpg","img/goods/yaopin/1640883_1.jpg","img/goods/yaopin/1640883_2.jpg"]', '金杞林 黑果枸杞礼盒120g', 299, '赠品数量有限，赠完为止', 359, 103979, '满999减100元', '药', 99),
	(3480090, '["img/goods/yaopin/3480090_0.jpg","img/goods/yaopin/3480090_1.jpg","img/goods/yaopin/3480090_2.jpg"]', '斯利安 钙片(孕妇型) 42g(0.7g*60s) 备孕 补钙', 97, '赠品数量有限，赠完为止', 116, 103912, '满999减100元', '药', 100),
	(1652036, '["img/goods/yaopin/1652036_0.jpg","img/goods/yaopin/1652036_1.jpg","img/goods/yaopin/1652036_2.jpg","img/goods/yaopin/1652036_3.jpg"]', '雅培 全安素 全营养配方粉 900g', 298, '赠品数量有限，赠完为止', 358, 103988, '满999减100元', '药', 101),
	(1277186, '["img/goods/yaopin/1277186_0.jpg","img/goods/yaopin/1277186_1.jpg","img/goods/yaopin/1277186_2.jpg","img/goods/yaopin/1277186_3.jpg"]', '雷允上 西红花1g', 60, '赠品数量有限，赠完为止', 72, 103979, '满999减100元', '药', 102),
	(3262374, '["img/goods/yaopin/3262374_0.jpg","img/goods/yaopin/3262374_1.jpg","img/goods/yaopin/3262374_2.jpg","img/goods/yaopin/3262374_3.jpg","img/goods/yaopin/3262374_4.jpg"]', '铭德堂牌 西洋参云片 25克', 80, '赠品数量有限，赠完为止', 96, 103953, '满999减100元', '药', 103),
	(415962, '["img/goods/yaopin/415962_0.jpg"]', '装在口袋里的爸爸 后悔药', 13, '赠品数量有限，赠完为止', 16, 105181, '满999减100元', '药', 104),
	(279482, '["img/goods/yaopin/279482_0.jpg","img/goods/yaopin/279482_1.jpg","img/goods/yaopin/279482_2.jpg","img/goods/yaopin/279482_3.jpg","img/goods/yaopin/279482_4.jpg","img/goods/yaopin/279482_5.jpg","img/goods/yaopin/279482_6.jpg","img/goods/yaopin/279482_7.jpg","img/goods/yaopin/279482_8.jpg","img/goods/yaopin/279482_9.jpg"]', '片仔癀 牙火清 牙膏 (冰爽药香) 95g', 26, '赠品数量有限，赠完为止', 31, 103000, '满999减100元', '药', 105),
	(279478, '["img/goods/yaopin/279478_0.jpg","img/goods/yaopin/279478_1.jpg","img/goods/yaopin/279478_2.jpg","img/goods/yaopin/279478_3.jpg","img/goods/yaopin/279478_4.jpg","img/goods/yaopin/279478_5.jpg","img/goods/yaopin/279478_6.jpg","img/goods/yaopin/279478_7.jpg","img/goods/yaopin/279478_8.jpg","img/goods/yaopin/279478_9.jpg"]', '片仔癀 牙火清 牙膏 (冰爽药香) 145g', 32, '赠品数量有限，赠完为止', 38, 103000, '满999减100元', '药', 106),
	(1644780, '["img/goods/yaopin/1644780_0.jpg","img/goods/yaopin/1644780_1.jpg","img/goods/yaopin/1644780_2.jpg","img/goods/yaopin/1644780_3.jpg","img/goods/yaopin/1644780_4.jpg"]', '御顺堂 超细珍珠粉 3克*20袋 铁盒', 300, '赠品数量有限，赠完为止', 360, 103979, '满999减100元', '药', 107),
	(2611504, '["img/goods/yaopin/2611504_0.jpg","img/goods/yaopin/2611504_1.jpg","img/goods/yaopin/2611504_2.jpg","img/goods/yaopin/2611504_3.jpg"]', '创盈 金斯利安多维片 1.17g*30片', 126, '赠品数量有限，赠完为止', 151, 103939, '满999减100元', '药', 108),
	(1681723, '["img/goods/yaopin/1681723_0.jpg","img/goods/yaopin/1681723_1.jpg","img/goods/yaopin/1681723_2.jpg","img/goods/yaopin/1681723_3.jpg"]', '同仁堂 莲子220g', 72, '赠品数量有限，赠完为止', 86, 103979, '满999减100元', '药', 109);
/*!40000 ALTER TABLE `xiangmu` ENABLE KEYS */;

-- 正在导出表  denglu.yaopin 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `yaopin` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaopin` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
