/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mysql
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : naxian

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 12/10/2019 11:00:07
*/
article
DROP DATABASE naxian；
CREATE DATABASE naxian；
USE naxian；
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `company_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `company_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司类型',
  `compay_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地点【省份，市，区域，街道，详细地址】',
  `company_introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司简介',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据创建人名字',
  `company_size` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司规模',
  `company_email` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '企业邮箱',
  `update_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(255) NULL DEFAULT NULL COMMENT '数据是否删除0未删1已删（公司注销）',
  `company_telno` bigint(255) NULL DEFAULT NULL COMMENT '联系电话',
  `website_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司官网地址',
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经纬度',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `company_status` int(255) UNSIGNED NULL DEFAULT NULL COMMENT '状态',
  `company_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xxx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (2001, '网络通信有限公司', '上市公司', '无锡建邺区', '中国联合网络通信集团有限公司（简称“中国联通”）于2009年1月6日在原中国网通和原中国联通的基础上合并组建而成，在国内31个省（自治区、直辖市）设有分公司，拥有22家子公司，在16个境外国家和地区设有国际公司，是中国唯一一家在纽约、香港、上海三地同时上市的电信运营企业，连续十年入选“世界500强企业”。\r\n\r\n中国联通拥有覆盖全国、通达世界的现代通信网络，积极推进固定网络和移动网络的宽带化，积极推进“宽带中国”战略在企业层面的落地实施，为广大用户提供全方位、高品质信息通信服务。当前，中国联通正深入实施聚焦战略、深化混合所有制改革、全力推进互联网化运营，打造新基因、新治理、新运营、新功能、新生态的“五新”联通。\r\n\r\n中国联通江苏省分公司是中国联通在江苏的分支机构，秉承“客户为本、团队共进、开放创新、追求卓越”的企业核心价值观，近年来努力将自身打造为“客户信赖的智慧生活创造者”:一方面利用物联网、云计算、大数据等技术，让数据转化成生产力，为人们的工作和生活提供科学依据和手段，创造更加智慧的生活；另一方面，通过持续创新和合作创新，提供更具智慧的服务内容和方式，提升生活质量，让人们共享更加美好的生活。\r\n\r\n现面向社会招聘客户经理若干名，江苏联通诚邀您的加盟！', '某某某', '100人-150人', '2001@qq.com', '2019-09-10', 0, 16454527514, 'www.2001tongxin.com', NULL, '123456', 0, 'Java', NULL, NULL, NULL);
INSERT INTO `company` VALUES (2002, '阿里巴巴集团', '上市公司', '杭州市余杭区', '阿里巴巴集团的使命是让天下没有难做的生意。\r\n\r\n我们旨在赋能企业改变营销、销售和经营的方式。我们为商家、品牌及其他企业提供基本的互联网基础设施以及营销平台，让其可借助互联网的力量与用户和客户互动。我们的业务包括核心电商、云计算、数字媒体和娱乐以及创新项目和其他业务。我们并通过子公司菜鸟网络及所投资的关联公司口碑，参与物流和本地服务行业，同时与蚂蚁金融服务集团有战略合作，该金融服务集团主要通过中国领先的第三方网上支付平台支付宝运营。\r\n\r\n我们的愿景\r\n我们旨在构建未来的商务生态系统。我们的愿景是让客户相会、工作和生活在阿里巴巴，并持续发展最少102年。', '马云', '10000人以上', 'alibaba@qq.com', '2019-06-19', 0, 14245454241, 'www.alibaba.com', NULL, NULL, NULL, 'java', NULL, NULL, NULL);
INSERT INTO `company` VALUES (2003, '恒大地产集团华东有限公司 ', '民营公司', '上海市黄浦区', ' 恒大集团是以民生地产为基础，文化旅游、健康养生为两翼，高科技产业为龙头的世界500强企业集团。目前，恒大总资产1.77万亿，年销售规模超5500亿，累计纳税超2000亿，慈善公益捐款超116亿，员工14万人，每年解决就业260多万人，在世界500强排名第230位。\r\n   恒大地产秉承“民生地产”理念，在中国280多个城市拥有项目800多个，与全球800多家知名企业战略合作，实施精品战略，打造高品质、高性价比产品，开创行业“全精装修交楼”和“无理由退房”先河，让600多万业主实现宜居梦想。\r\n    恒大地产集团华东公司成立于2009年7月，是恒大地产集团实施全国战略、布局华东市场所迈出的关键一步，十年深耕，打造40余个精品项目，产品涵盖中端、中高端、高端和豪宅多个系列。公司秉承恒大“艰苦创业、无私奉献、努力拼搏、开拓进取”的企业精神，组建了一支拥有1700余名员工的高素质菁英团队，其中90%以上员工为本科及以上学历，汇集了投资、开发、工程、营销、设计、财务、招投标等各领域的专业人才。\r\n    经过多年的成长与沉淀，华东公司已在土地储备、施工建设、营销策划等各个环节形成了良性循环的可喜局面，并在华东区域的房地产界树立起了专业的形象和良好的口碑。\r\n    恒大的高速、多元化发展，为每一个恒大人提供了广阔的发展空间和晋升平台。员工的主观能动性得到了最大限度地发挥，内在潜力得到了最大程度地挖掘，公司内部也因此形成了良好的激励氛围。公司依托全方位、系统化的培训体系，以文化融入为关键，以计划管理为核心，以在实战中提升员工能力水平为落脚点，培养了一批又一批努力拼搏、开拓进取的恒大人。\r\n\r\n恒大地产集团华东公司真诚欢迎您的加盟！', '某某某', '1000-5000人', '2003@qq.com', '2019-06-11', 0, 15465656542, 'www.alibaba.com', NULL, NULL, NULL, 'java', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for company_log
-- ----------------------------
DROP TABLE IF EXISTS `company_log`;
CREATE TABLE `company_log`  (
  `login_company_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登录id',
  `company_id` int(255) NULL DEFAULT NULL COMMENT '登录账号',
  `login_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录方式',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `company_log_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`login_company_id`) USING BTREE,
  INDEX `compan_id`(`company_id`) USING BTREE,
  CONSTRAINT `companylog_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for company_received
-- ----------------------------
DROP TABLE IF EXISTS `company_received`;
CREATE TABLE `company_received`  (
  `company_receive_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息id（公司收到的信息id）',
  `is_read` int(255) NULL DEFAULT NULL COMMENT '简历是否已阅（0 代表未读  1代表已读）',
  `is_invitation` int(255) NULL DEFAULT NULL COMMENT '面试邀约是否发送（0 代表为发送信息  1代表发送已经发送）',
  `resume_id` int(11) NOT NULL COMMENT '对应的简历表id',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '收到时间',
  `company_received_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`company_receive_id`) USING BTREE,
  INDEX `resu_id`(`resume_id`) USING BTREE,
  CONSTRAINT `resu_id` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education`  (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人教育id',
  `edu_school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人学校',
  `edu_degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人学历',
  `edu_sub_major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人专业',
  `edu_time_start` date NULL DEFAULT NULL COMMENT '个人教育经历开始时间',
  `edu_time_end` date NULL DEFAULT NULL COMMENT '个人教育经历结束时间',
  `resume_id` int(11) NOT NULL COMMENT '简历id',
  `education_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `major_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业描述',
  `get_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '获得证书',
  `language_skills` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '语言技能',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`edu_id`) USING BTREE,
  INDEX `resume_id`(`resume_id`) USING BTREE,
  CONSTRAINT `resumes_education` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES (1101, '清华大学', '本科', '计算机科学与技术', '2016-09-01', '2020-03-06', 3001, 1, '我很喜欢我的专业', '三好学生', '英语四级，英语六级', '', NULL);
INSERT INTO `education` VALUES (1102, '上海交大', '硕士', '计算机软件', '2015-06-01', '2019-06-01', 3001, 1, '我很喜欢我的专业', '三好学生', '英语四级，英语六级', '', NULL);
INSERT INTO `education` VALUES (1103, '', '', '', '2014-01-12', '2014-01-12', 3001, 1, '', '', '', '', NULL);

-- ----------------------------
-- Table structure for interview_invitation
-- ----------------------------
DROP TABLE IF EXISTS `interview_invitation`;
CREATE TABLE `interview_invitation`  (
  `invitation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '邀约id',
  `company_id` int(11) NULL DEFAULT NULL COMMENT '对应的公司信息地址......等信息',
  `resume_id` int(11) NULL DEFAULT NULL COMMENT '招聘id',
  `is_agree` int(255) NULL DEFAULT NULL COMMENT '是否接收邀约（0 拒绝 1 接受）',
  `invitation_time` datetime NULL DEFAULT NULL COMMENT '邀约时间',
  `company_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司联系人',
  `company_telno` int(11) NULL DEFAULT NULL COMMENT '公司联系方式',
  `interview_invitation_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xxx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`invitation_id`) USING BTREE,
  INDEX `compa_id`(`company_id`) USING BTREE,
  INDEX `re_id`(`resume_id`) USING BTREE,
  CONSTRAINT `company_interview` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `resume_interview` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mycollection
-- ----------------------------
DROP TABLE IF EXISTS `mycollection`;
CREATE TABLE `mycollection`  (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `rec_id` int(11) NULL DEFAULT NULL COMMENT '简历表id',
  `per_id` int(11) NULL DEFAULT NULL COMMENT '个人id',
  `mycollection_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`collection_id`) USING BTREE,
  INDEX `recr_id`(`rec_id`) USING BTREE,
  INDEX `pers_id`(`per_id`) USING BTREE,
  CONSTRAINT `person_mycollection` FOREIGN KEY (`per_id`) REFERENCES `persons` (`per_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `recruit_mycollection` FOREIGN KEY (`rec_id`) REFERENCES `recruit` (`rec_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for personal_log
-- ----------------------------
DROP TABLE IF EXISTS `personal_log`;
CREATE TABLE `personal_log`  (
  `login_per_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登录id',
  `per_id` int(11) NULL DEFAULT NULL COMMENT '个人登录账号',
  `login_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录方式',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `personal_log` int(255) NULL DEFAULT NULL COMMENT '状态',
  `person_log_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`login_per_id`) USING BTREE,
  INDEX `perso_id`(`per_id`) USING BTREE,
  CONSTRAINT `person_personlog` FOREIGN KEY (`per_id`) REFERENCES `persons` (`per_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `per_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人id',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `per_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `per_gender` int(255) NOT NULL COMMENT '性别（0代表女，1代表男）',
  `per_birth` date NOT NULL COMMENT '出生日期',
  `per_tel` bigint(200) NOT NULL COMMENT '电话',
  `per_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `per_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址',
  `per_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人头像',
  `per_status` int(255) NULL DEFAULT NULL COMMENT '个人登陆状态（1代表已登录，0代表未登陆）',
  `person_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`per_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES (1001, '111111', '饿1让', 1, '2019-10-22', 4124241, 'dsfew', 'e13r312', '', 1, NULL, NULL, '0');
INSERT INTO `persons` VALUES (1002, '123456', '金城武', 1, '2019-09-17', 1354645655, '1002@qq.com', '中国台湾', NULL, 1, NULL, NULL, NULL);
INSERT INTO `persons` VALUES (1003, '121212', '王菲', 0, '2019-08-06', 14242454784, '1003@qq.com', '北京市朝阳区', '', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit`  (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '招聘id',
  `company_id` int(11) NOT NULL COMMENT '公司ID（可调用公司信息）',
  `rec_job_salary` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最低薪资，最高薪资',
  `rec_job_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作地点【省份，市，区域，街道，详细地址】',
  `rec_job_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学历要求',
  `myskill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '技能要求',
  `job_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作介绍',
  `job_demand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任职要求',
  `rec_create_time` date NULL DEFAULT NULL COMMENT '招聘表创建时间',
  `rec_end_time` date NULL DEFAULT NULL COMMENT '截至时间',
  `kwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '搜索关键字(实习生，Java, 2020, 苏州)',
  `recruit_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `rec_per_num` int(22) NULL DEFAULT NULL COMMENT '需要人数',
  `rec_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '招聘岗位名称',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`rec_id`) USING BTREE,
  INDEX `company_id`(`company_id`) USING BTREE,
  CONSTRAINT `company_recruit` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7010 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES (7001, 2001, '2000-5000元', '苏州工业园区', '2年', '本科', NULL, '岗位职责:\r\n1、负责软件产品的部署工作；\r\n2、负责系统日常运维工作，如系统升级、代码更新等；\r\n3、负责服务器的日常监控，确保服务器正常运行；\r\n4、负责筛查售后部门提交的软件使用过程中遇到的问题，及时解决并反馈；', NULL, '2019-10-24', '2019-10-30', '后端', 0, 5, 'java开发师', NULL, NULL);
INSERT INTO `recruit` VALUES (7002, 2001, '2000-5000元', '苏州工业园区', '2年', '本科', NULL, '岗位职责:\r\n1、负责软件产品的部署工作；\r\n2、负责系统日常运维工作，如系统升级、代码更新等；\r\n3、负责服务器的日常监控，确保服务器正常运行；\r\n4、负责筛查售后部门提交的软件使用过程中遇到的问题，及时解决并反馈；', NULL, '2019-10-24', '2019-10-30', '后端', 0, 5, '架构师', NULL, NULL);
INSERT INTO `recruit` VALUES (7003, 2001, '2000-5000元', '苏州工业园区', '2年', '本科', NULL, '岗位职责:\r\n1、负责软件产品的部署工作；\r\n2、负责系统日常运维工作，如系统升级、代码更新等；\r\n3、负责服务器的日常监控，确保服务器正常运行；\r\n4、负责筛查售后部门提交的软件使用过程中遇到的问题，及时解决并反馈；', NULL, '2019-10-24', '2019-10-30', '后端', 0, 5, '后端初级开发', NULL, NULL);
INSERT INTO `recruit` VALUES (7009, 2001, '1222元', '上海陆家嘴', '1-2年', '本科', NULL, '工作辛苦经常加班', NULL, NULL, NULL, '前端开发', NULL, 3, '前端开发师', NULL, NULL);

-- ----------------------------
-- Table structure for resumes
-- ----------------------------
DROP TABLE IF EXISTS `resumes`;
CREATE TABLE `resumes`  (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '简历表id',
  `per_id` int(11) NOT NULL COMMENT '个人id',
  `read_num` int(11) NULL DEFAULT NULL COMMENT '已读数',
  `read_status` int(255) NULL DEFAULT NULL COMMENT '简历状态（0代表 私有， 1代表公开）',
  `delivery_status` int(255) NULL DEFAULT NULL COMMENT '简历投递状态（0 没有投递  1 已投递）',
  `person_status` int(255) NULL DEFAULT NULL COMMENT '个人求职状态（0 求职 1已有工作 ）',
  `resume_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历名称',
  `resume_createtime` date NULL DEFAULT NULL COMMENT '简历创建时间',
  `resume_updatetime` date NULL DEFAULT NULL COMMENT '上一次修改时间',
  `current_income` int(255) NULL DEFAULT NULL COMMENT '目前收入',
  `inten_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期望薪资',
  `inten_jobarea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期望工作地点',
  `inten_funtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期望职能',
  `inten_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期望职位',
  `introduction_self` text CHARACTER SET ujis COLLATE ujis_japanese_ci NULL COMMENT '自我评价',
  `inten_industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期望行业',
  `inten_jobterm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期望工作类型',
  `get_certificates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '获得证书',
  `language_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '语言技能描述',
  `resumes_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`resume_id`) USING BTREE,
  INDEX `per_id`(`per_id`) USING BTREE,
  CONSTRAINT `person_resume` FOREIGN KEY (`per_id`) REFERENCES `persons` (`per_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resumes
-- ----------------------------
INSERT INTO `resumes` VALUES (3001, 1001, 5, 1, 0, 0, '我的简历1', '2019-09-12', '2019-08-14', 14, '3000-5000', '3er32', '21312', '3123213', '良好，良好，良好，djwiudhwiudhwuhdgughuwsgduh', '3213', '1', 'java初级证书', '英语四级', NULL, NULL, NULL);
INSERT INTO `resumes` VALUES (3002, 1001, 8, 1, 0, 0, '我的简历2', '2019-08-14', '2019-08-23', 13, '10000-12000', '', '', '', '良好。。', '', '1', 'java初级证书', '英语四级', NULL, NULL, NULL);
INSERT INTO `resumes` VALUES (3003, 1001, 2, 1, 0, 0, '我的简历3', '2019-09-06', '2019-08-24', 1411, '7000', '江浙沪', 'java开发', 'java高级工程师', '良好。。', NULL, '1', 'java初级证书', '英语四级', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for workexperience
-- ----------------------------
DROP TABLE IF EXISTS `workexperience`;
CREATE TABLE `workexperience`  (
  `experience_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工作经验表id',
  `work_time_start` date NULL DEFAULT NULL COMMENT '工作经历开始时间',
  `work_time_end` date NULL DEFAULT NULL COMMENT '工作经历结束时间',
  `work_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作过的公司名称',
  `work_industryType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作过的行业',
  `work_funtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作过的职能',
  `work_subFunction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作过的职位',
  `work_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作过的工作描述',
  `resume_id` int(11) NOT NULL COMMENT '简历id',
  `workexperience_status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `xx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`experience_id`) USING BTREE,
  INDEX `res_id`(`resume_id`) USING BTREE,
  CONSTRAINT `work_resumes` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of workexperience
-- ----------------------------
INSERT INTO `workexperience` VALUES (1201, '2017-03-01', '2019-09-06', '阿里巴巴', '计算机', NULL, '项目经理', '早八晚九，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，早八晚九，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，', 3001, NULL, NULL, NULL);
INSERT INTO `workexperience` VALUES (1202, '2017-03-02', '2019-09-18', '网易云', '计算机', NULL, '项目开发', '早八晚九，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，早八晚九，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，一直上班，', 3001, NULL, NULL, NULL);
INSERT INTO `workexperience` VALUES (1203, '2014-01-12', '2014-01-12', '', '', NULL, '', '', 3001, NULL, '', NULL);

SET FOREIGN_KEY_CHECKS = 1;
