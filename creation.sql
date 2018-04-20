/*
 Navicat MySQL Data Transfer

 Source Server         : 120.77.179.66
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : 120.77.179.66:33945
 Source Schema         : creation

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 20/04/2018 11:40:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_map
-- ----------------------------
DROP TABLE IF EXISTS `t_map`;
CREATE TABLE `t_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `route` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `get` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `put` varchar(50) DEFAULT NULL,
  `delete` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_map
-- ----------------------------
BEGIN;
INSERT INTO `t_map` VALUES (1, 't_table_demo', '1', '1', '/api/datatable/table_demo/get', '/api/datatable/table_demo/post', '/api/datatable/table_demo/put', '/api/datatable/table_demo/delete');
COMMIT;

-- ----------------------------
-- Table structure for t_table_demo
-- ----------------------------
DROP TABLE IF EXISTS `t_table_demo`;
CREATE TABLE `t_table_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `微服务名称` varchar(200) DEFAULT NULL,
  `业务名称` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_table_demo
-- ----------------------------
BEGIN;
INSERT INTO `t_table_demo` VALUES (1, 'risk-console', '安全风控');
INSERT INTO `t_table_demo` VALUES (2, 'api', '电商');
INSERT INTO `t_table_demo` VALUES (3, 'app-h5-web4app', '电商');
INSERT INTO `t_table_demo` VALUES (4, 'cards', '电商');
INSERT INTO `t_table_demo` VALUES (5, 'common', '电商');
INSERT INTO `t_table_demo` VALUES (6, 'erp-web-218', '电商');
INSERT INTO `t_table_demo` VALUES (7, 'erp-web-219', '电商');
INSERT INTO `t_table_demo` VALUES (8, 'goods', '电商');
INSERT INTO `t_table_demo` VALUES (9, 'goods-app', '电商');
INSERT INTO `t_table_demo` VALUES (10, 'goods-task', '电商');
INSERT INTO `t_table_demo` VALUES (11, 'goods-write', '电商');
INSERT INTO `t_table_demo` VALUES (12, 'group-booking', '电商');
INSERT INTO `t_table_demo` VALUES (13, 'integration', '电商');
INSERT INTO `t_table_demo` VALUES (14, 'login-h5-auto', '电商');
INSERT INTO `t_table_demo` VALUES (15, 'logistics', '电商');
INSERT INTO `t_table_demo` VALUES (16, 'mobile app-吴永彪-mWeb', '电商');
INSERT INTO `t_table_demo` VALUES (17, 'mWeb-weshop-auto', '电商');
INSERT INTO `t_table_demo` VALUES (18, 'order', '电商');
INSERT INTO `t_table_demo` VALUES (19, 'orders-cart', '电商');
INSERT INTO `t_table_demo` VALUES (20, 'orders-merchant', '电商');
INSERT INTO `t_table_demo` VALUES (21, 'orders-openapi', '电商');
INSERT INTO `t_table_demo` VALUES (22, 'orders-operations', '电商');
INSERT INTO `t_table_demo` VALUES (23, 'orders-refunds', '电商');
INSERT INTO `t_table_demo` VALUES (24, 'orders-usercenter', '电商');
INSERT INTO `t_table_demo` VALUES (25, 'partner', '电商');
INSERT INTO `t_table_demo` VALUES (26, 'payment', '电商');
INSERT INTO `t_table_demo` VALUES (27, 'php-api', '电商');
INSERT INTO `t_table_demo` VALUES (28, 'php-config', '电商');
INSERT INTO `t_table_demo` VALUES (29, 'php-message', '电商');
INSERT INTO `t_table_demo` VALUES (30, 'php-piwik', '电商');
INSERT INTO `t_table_demo` VALUES (31, 'php-szbj-wechat-mall', '电商');
INSERT INTO `t_table_demo` VALUES (32, 'php-task', '电商');
INSERT INTO `t_table_demo` VALUES (33, 'php-郑浩生', '电商');
INSERT INTO `t_table_demo` VALUES (34, 'platform', '电商');
INSERT INTO `t_table_demo` VALUES (35, 'point-exchange-frontend-h5', '电商');
INSERT INTO `t_table_demo` VALUES (36, 'point-seller-frontend-h5-auto', '电商');
INSERT INTO `t_table_demo` VALUES (37, 'portals-auto', '电商');
INSERT INTO `t_table_demo` VALUES (38, 'portals-旧-留档', '电商');
INSERT INTO `t_table_demo` VALUES (39, 'promotion', '电商');
INSERT INTO `t_table_demo` VALUES (40, 'schedule', '电商');
INSERT INTO `t_table_demo` VALUES (41, 'search', '电商');
INSERT INTO `t_table_demo` VALUES (42, 'search-job', '电商');
INSERT INTO `t_table_demo` VALUES (43, 'search-platform', '电商');
INSERT INTO `t_table_demo` VALUES (44, 'settlement', '电商');
INSERT INTO `t_table_demo` VALUES (45, 'thirdweb-h5-auto', '电商');
INSERT INTO `t_table_demo` VALUES (46, 'user', '电商');
INSERT INTO `t_table_demo` VALUES (47, 'vendingmachine', '电商');
INSERT INTO `t_table_demo` VALUES (48, 'web4app-online-auto', '电商');
INSERT INTO `t_table_demo` VALUES (49, 'web4app-staticis', '电商');
INSERT INTO `t_table_demo` VALUES (50, 'web4app-weshop-cart-auto', '电商');
INSERT INTO `t_table_demo` VALUES (51, 'websa-staticis-h5', '电商');
INSERT INTO `t_table_demo` VALUES (52, 'wechat', '微信公众号');
INSERT INTO `t_table_demo` VALUES (53, 'cas', '公共服务');
INSERT INTO `t_table_demo` VALUES (54, 'cts_web_h5', '公共服务');
INSERT INTO `t_table_demo` VALUES (55, 'finance-message-delivery', '公共服务');
INSERT INTO `t_table_demo` VALUES (56, 'finance-Message-job', '公共服务');
INSERT INTO `t_table_demo` VALUES (57, 'finance-message-service', '公共服务');
INSERT INTO `t_table_demo` VALUES (58, 'finance-message-web', '公共服务');
INSERT INTO `t_table_demo` VALUES (59, 'finance-msg-rest-api', '公共服务');
INSERT INTO `t_table_demo` VALUES (60, 'hrt-sso-console', '公共服务');
INSERT INTO `t_table_demo` VALUES (61, 'hrt-sso-service', '公共服务');
INSERT INTO `t_table_demo` VALUES (62, 'message-adapter-A38', '39');
INSERT INTO `t_table_demo` VALUES (63, 'message-delivery-A38', '39');
INSERT INTO `t_table_demo` VALUES (64, 'message-job-A38', '39');
INSERT INTO `t_table_demo` VALUES (65, 'message-job-monitor-A38', '39');
INSERT INTO `t_table_demo` VALUES (66, 'message-rest-api-A38', '39');
INSERT INTO `t_table_demo` VALUES (67, 'message-service-A38', '39');
INSERT INTO `t_table_demo` VALUES (68, 'message-web-A38', '39');
INSERT INTO `t_table_demo` VALUES (69, 'rsa-console', '公共服务');
INSERT INTO `t_table_demo` VALUES (70, 'rsa-dubbo', '公共服务');
INSERT INTO `t_table_demo` VALUES (71, 'rsa-web', '公共服务');
INSERT INTO `t_table_demo` VALUES (72, 'wsshd', '公共服务');
INSERT INTO `t_table_demo` VALUES (73, 'all-points-job', '会员积分');
INSERT INTO `t_table_demo` VALUES (74, 'auth-center', '会员积分');
INSERT INTO `t_table_demo` VALUES (75, 'captcha-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (76, 'captcha-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (77, 'db-listener-client', '会员积分');
INSERT INTO `t_table_demo` VALUES (78, 'db-listener-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (79, 'fronted-osp-h5', '会员积分');
INSERT INTO `t_table_demo` VALUES (80, 'game-turntable-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (81, 'integrate-gateway-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (82, 'member-admin-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (83, 'member-auth-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (84, 'member-auth-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (85, 'member-binding-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (86, 'member-binding-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (87, 'member-dubbo', '会员积分');
INSERT INTO `t_table_demo` VALUES (88, 'member-info-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (89, 'member-info-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (90, 'member-oprations-portal', '会员积分');
INSERT INTO `t_table_demo` VALUES (91, 'member-privilege-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (92, 'member-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (93, 'mgrowth-business-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (94, 'mgrowth-business-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (95, 'mgrowth-data-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (96, 'mot-message-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (97, 'mot-message-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (98, 'oauth2-h5', '会员积分');
INSERT INTO `t_table_demo` VALUES (99, 'oauth2-h5-auto', '会员积分');
INSERT INTO `t_table_demo` VALUES (100, 'oauth2-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (101, 'oauth2-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (102, 'osp_member_web', '会员积分');
INSERT INTO `t_table_demo` VALUES (103, 'osp_member-admin', '会员积分');
INSERT INTO `t_table_demo` VALUES (104, 'osp_points_web', '会员积分');
INSERT INTO `t_table_demo` VALUES (105, 'osp-identity', '会员积分');
INSERT INTO `t_table_demo` VALUES (106, 'partner-bridge-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (107, 'partner-bridge-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (108, 'paygateway', '会员积分');
INSERT INTO `t_table_demo` VALUES (109, 'point-exchange-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (110, 'points-activity-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (111, 'points-activity-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (112, 'points-dubbo', '会员积分');
INSERT INTO `t_table_demo` VALUES (113, 'points-es-job', '会员积分');
INSERT INTO `t_table_demo` VALUES (114, 'points-es-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (115, 'points-exchange-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (116, 'points-gateway-job', '会员积分');
INSERT INTO `t_table_demo` VALUES (117, 'points-gateway-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (118, 'points-gateway-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (119, 'points-osp-portal', '会员积分');
INSERT INTO `t_table_demo` VALUES (120, 'points-osp-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (121, 'points-osp-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (122, 'points-package-rest', '会员积分');
INSERT INTO `t_table_demo` VALUES (123, 'points-package-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (124, 'points-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (125, 'points-seller-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (126, 'points-seller-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (127, 'points-specific-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (128, 'point-subaccount', '会员积分');
INSERT INTO `t_table_demo` VALUES (129, 'schedule-console', '会员积分');
INSERT INTO `t_table_demo` VALUES (130, 'schedule-job', '会员积分');
INSERT INTO `t_table_demo` VALUES (131, 'schedule-job-resource', '会员积分');
INSERT INTO `t_table_demo` VALUES (132, 'signin-rest-api', '会员积分');
INSERT INTO `t_table_demo` VALUES (133, 'signin-service', '会员积分');
INSERT INTO `t_table_demo` VALUES (134, 'step1-points-job', '会员积分');
INSERT INTO `t_table_demo` VALUES (135, 'step2-points-job', '会员积分');
INSERT INTO `t_table_demo` VALUES (136, 'openapi-apigateway(旧版本)', '集成');
INSERT INTO `t_table_demo` VALUES (137, 'openapi-apigateway(熔断版本)', '集成');
INSERT INTO `t_table_demo` VALUES (138, 'openapi-apigateway-ext', '集成');
INSERT INTO `t_table_demo` VALUES (139, 'openapi-apijob', '集成');
INSERT INTO `t_table_demo` VALUES (140, 'openapi-console', '集成');
INSERT INTO `t_table_demo` VALUES (141, 'openapi-interface', '集成');
INSERT INTO `t_table_demo` VALUES (142, 'openapi-out-apigateway', '集成');
INSERT INTO `t_table_demo` VALUES (143, 'openapi-out-apijob', '集成');
INSERT INTO `t_table_demo` VALUES (144, 'openapi-out-console', '集成');
INSERT INTO `t_table_demo` VALUES (145, 'openapi-out-interface', '集成');
INSERT INTO `t_table_demo` VALUES (146, 'openapi-out-pub', '集成');
INSERT INTO `t_table_demo` VALUES (147, 'openapi-out-sub', '集成');
INSERT INTO `t_table_demo` VALUES (148, 'openapi-pub', '集成');
INSERT INTO `t_table_demo` VALUES (149, 'openapi-sub', '集成');
INSERT INTO `t_table_demo` VALUES (150, 'omp-manage', '开放消息');
INSERT INTO `t_table_demo` VALUES (151, 'omp-server', '开放消息');
INSERT INTO `t_table_demo` VALUES (152, 'omp-web', '开放消息');
INSERT INTO `t_table_demo` VALUES (153, 'callcenter-admin-api', '客服中心');
INSERT INTO `t_table_demo` VALUES (154, 'callcenter-html-file', '客服中心');
INSERT INTO `t_table_demo` VALUES (155, 'callcenter-service', '客服中心');
INSERT INTO `t_table_demo` VALUES (156, 'front_fund_system', '理财');
INSERT INTO `t_table_demo` VALUES (157, 'fund_system', '理财');
INSERT INTO `t_table_demo` VALUES (158, 'h5_resource', '理财');
INSERT INTO `t_table_demo` VALUES (159, 'huarun-account', '理财');
INSERT INTO `t_table_demo` VALUES (160, 'huarun-activemq', '理财');
INSERT INTO `t_table_demo` VALUES (161, 'huarun-api-rpc', '理财');
INSERT INTO `t_table_demo` VALUES (162, 'huarun-asset', '理财');
INSERT INTO `t_table_demo` VALUES (163, 'huarun-common', '理财');
INSERT INTO `t_table_demo` VALUES (164, 'huarun-ext', '理财');
INSERT INTO `t_table_demo` VALUES (165, 'huarun-guid', '理财');
INSERT INTO `t_table_demo` VALUES (166, 'huarun-job', '理财');
INSERT INTO `t_table_demo` VALUES (167, 'huarun-payment', '理财');
INSERT INTO `t_table_demo` VALUES (168, 'huarun-trading', '理财');
INSERT INTO `t_table_demo` VALUES (169, 'php-financing', '理财');
INSERT INTO `t_table_demo` VALUES (170, 'merchant-admin-api', '商户');
INSERT INTO `t_table_demo` VALUES (171, 'merchant-center-portal', '商户');
INSERT INTO `t_table_demo` VALUES (172, 'merchant-edit', '商户');
INSERT INTO `t_table_demo` VALUES (173, 'merchant-hrtbp', '商户');
INSERT INTO `t_table_demo` VALUES (174, 'merchant-hrtc', '商户');
INSERT INTO `t_table_demo` VALUES (175, 'merchant-info', '商户');
INSERT INTO `t_table_demo` VALUES (176, 'merchant-partner', '商户');
INSERT INTO `t_table_demo` VALUES (177, 'merchant-point', '商户');
INSERT INTO `t_table_demo` VALUES (178, 'merchant-portal', '商户');
INSERT INTO `t_table_demo` VALUES (179, 'merchant-query', '商户');
INSERT INTO `t_table_demo` VALUES (180, 'merchant-service-api', '商户');
INSERT INTO `t_table_demo` VALUES (181, 'merchant-statistics', '商户');
INSERT INTO `t_table_demo` VALUES (182, 'merchant-store', '商户');
INSERT INTO `t_table_demo` VALUES (183, 'merchant-sys', '商户');
INSERT INTO `t_table_demo` VALUES (184, 'merchant-web-api', '商户');
INSERT INTO `t_table_demo` VALUES (185, 'fms', '小贷');
INSERT INTO `t_table_demo` VALUES (186, 'loan-3th-gateway', '小贷');
INSERT INTO `t_table_demo` VALUES (187, 'loan-app-gateway', '小贷');
INSERT INTO `t_table_demo` VALUES (188, 'loan-appl-common-service', '小贷');
INSERT INTO `t_table_demo` VALUES (189, 'loan-biz-config-service', '小贷');
INSERT INTO `t_table_demo` VALUES (190, 'loan-cmis', '小贷');
INSERT INTO `t_table_demo` VALUES (191, 'loan-cmisjob', '小贷');
INSERT INTO `t_table_demo` VALUES (192, 'loan-cmiszip', '小贷');
INSERT INTO `t_table_demo` VALUES (193, 'loan-common-service', '小贷');
INSERT INTO `t_table_demo` VALUES (194, 'loan-core-service', '小贷');
INSERT INTO `t_table_demo` VALUES (195, 'loan-customer-service', '小贷');
INSERT INTO `t_table_demo` VALUES (196, 'loan-data-platform-rest', '小贷');
INSERT INTO `t_table_demo` VALUES (197, 'loan-data-platform-service', '小贷');
INSERT INTO `t_table_demo` VALUES (198, 'loan-face-platform-service', '小贷');
INSERT INTO `t_table_demo` VALUES (199, 'loan-jobcmis-service', '小贷');
INSERT INTO `t_table_demo` VALUES (200, 'loan-jobcore-service', '小贷');
INSERT INTO `t_table_demo` VALUES (201, 'loan-limitcont-service', '小贷');
INSERT INTO `t_table_demo` VALUES (202, 'loan-loancont-service', '小贷');
INSERT INTO `t_table_demo` VALUES (203, 'loan-loanWeb', '小贷');
INSERT INTO `t_table_demo` VALUES (204, 'loan-pay3th-service', '小贷');
INSERT INTO `t_table_demo` VALUES (205, 'loan-postloan-service', '小贷');
INSERT INTO `t_table_demo` VALUES (206, 'loan-prd-config-service', '小贷');
INSERT INTO `t_table_demo` VALUES (207, 'loan-regulation-gateway', '小贷');
INSERT INTO `t_table_demo` VALUES (208, 'loan-risk-service', '小贷');
INSERT INTO `t_table_demo` VALUES (209, 'loan-sys-config-service', '小贷');
INSERT INTO `t_table_demo` VALUES (210, 'loan-wanka-front', '小贷');
INSERT INTO `t_table_demo` VALUES (211, 'loan-wanka-rest', '小贷');
INSERT INTO `t_table_demo` VALUES (212, 'loan-wk-gateway', '小贷');
INSERT INTO `t_table_demo` VALUES (213, 'loan-wk-service', '小贷');
INSERT INTO `t_table_demo` VALUES (214, 'loan-wxh-front', '小贷');
INSERT INTO `t_table_demo` VALUES (215, 'loan-xiaoan-front', '小贷');
INSERT INTO `t_table_demo` VALUES (216, 'loan-xiaoan-gateway', '小贷');
INSERT INTO `t_table_demo` VALUES (217, 'loan-ycloanszip', '小贷');
INSERT INTO `t_table_demo` VALUES (218, 'pigeon_web41', '营促销');
INSERT INTO `t_table_demo` VALUES (219, 'campaign-admin-service', '营促销');
INSERT INTO `t_table_demo` VALUES (220, 'campaign-service', '营促销');
INSERT INTO `t_table_demo` VALUES (221, 'coupon-gateway-rest', '营促销');
INSERT INTO `t_table_demo` VALUES (222, 'osp-campaign', '营促销');
INSERT INTO `t_table_demo` VALUES (223, 'pigeon_web41，62-65', '营促销');
INSERT INTO `t_table_demo` VALUES (224, 'pigeon_web42', '营促销');
INSERT INTO `t_table_demo` VALUES (225, 'pigeon_web58', '营促销');
INSERT INTO `t_table_demo` VALUES (226, 'pigeon-appOpsRepairTools', '营促销');
INSERT INTO `t_table_demo` VALUES (227, 'pigeon-clearAndSettleAccounts', '营促销');
INSERT INTO `t_table_demo` VALUES (228, 'pigeon-couponRedemptionCenter', '营促销');
INSERT INTO `t_table_demo` VALUES (229, 'pigeon-couponRedemptionMgtCenter', '营促销');
INSERT INTO `t_table_demo` VALUES (230, 'pigeon-couponSendBigDataMgt', '营促销');
INSERT INTO `t_table_demo` VALUES (231, 'pigeon-feimaDirectCouponConfig', '营促销');
INSERT INTO `t_table_demo` VALUES (232, 'pigeon-InstantGroupBuy', '营促销');
INSERT INTO `t_table_demo` VALUES (233, 'pigeon-InstantKillLogMgt', '营促销');
INSERT INTO `t_table_demo` VALUES (234, 'pigeon-InstantKillMerchant', '营促销');
INSERT INTO `t_table_demo` VALUES (235, 'pigeon-InstantKillPlatform', '营促销');
INSERT INTO `t_table_demo` VALUES (236, 'pigeon-manualBindingManage', '营促销');
INSERT INTO `t_table_demo` VALUES (237, 'pigeon-marketingEventType', '营促销');
INSERT INTO `t_table_demo` VALUES (238, 'pigeon-marketingMgtCenter', '营促销');
INSERT INTO `t_table_demo` VALUES (239, 'pigeon-merchantCoupon', '营促销');
INSERT INTO `t_table_demo` VALUES (240, 'pigeon-shenZhenWanDirectCouponConfig', '营促销');
INSERT INTO `t_table_demo` VALUES (241, 'pigeon-shopRuleShowMgt', '营促销');
INSERT INTO `t_table_demo` VALUES (242, 'pigeon-wanjiacouponMgtCenter', '营促销');
INSERT INTO `t_table_demo` VALUES (243, 'pigeon-wanJiaDirectCouponConfig', '营促销');
INSERT INTO `t_table_demo` VALUES (244, 'pigeon-促销-salesPromotion', '营促销');
INSERT INTO `t_table_demo` VALUES (245, 'pigeon-秒杀-DailyOptimization', '营促销');
INSERT INTO `t_table_demo` VALUES (246, 'pigeon-秒杀-InterfaceJournal', '营促销');
INSERT INTO `t_table_demo` VALUES (247, 'pigeon-券接口-couponMgtCenter', '营促销');
INSERT INTO `t_table_demo` VALUES (248, 'pigeon-券数据-couponImportMgt', '营促销');
INSERT INTO `t_table_demo` VALUES (249, 'pigeon-线下券-shopCouponImport', '营促销');
INSERT INTO `t_table_demo` VALUES (250, 'MidStage', '运营');
INSERT INTO `t_table_demo` VALUES (251, 'open-backend', '运营');
INSERT INTO `t_table_demo` VALUES (252, 'open-service', '运营');
INSERT INTO `t_table_demo` VALUES (253, 'serviceSupport-admin', '运营');
INSERT INTO `t_table_demo` VALUES (254, 'serviceSupport-fastservice', '运营');
INSERT INTO `t_table_demo` VALUES (255, 'servicesupport-frontconfig', '运营');
INSERT INTO `t_table_demo` VALUES (256, 'servicesupport-micropage', '运营');
INSERT INTO `t_table_demo` VALUES (257, 'servicesupport-promotion', '运营');
INSERT INTO `t_table_demo` VALUES (258, 'serviceSupport-rest', '运营');
INSERT INTO `t_table_demo` VALUES (259, 'serviceSupport-service', '运营');
INSERT INTO `t_table_demo` VALUES (260, 'settlementDatasource-service', '运营');
INSERT INTO `t_table_demo` VALUES (261, 'settlement-portal', '运营');
INSERT INTO `t_table_demo` VALUES (262, 'settlement-rest', '运营');
INSERT INTO `t_table_demo` VALUES (263, 'settlement-service', '运营');
INSERT INTO `t_table_demo` VALUES (264, 'settlement-template', '运营');
INSERT INTO `t_table_demo` VALUES (265, 'snow-game-h5', '运营');
INSERT INTO `t_table_demo` VALUES (266, 'snow-portal-h5', '运营');
INSERT INTO `t_table_demo` VALUES (267, 'snow-service', '运营');
INSERT INTO `t_table_demo` VALUES (268, 'snow-statistics', '运营');
INSERT INTO `t_table_demo` VALUES (269, 'snow-李政', '运营');
INSERT INTO `t_table_demo` VALUES (270, 'wechatnotice-admin', '运营');
INSERT INTO `t_table_demo` VALUES (271, 'wechatnotice-rest', '运营');
INSERT INTO `t_table_demo` VALUES (272, 'wechatnotice-service', '运营');
INSERT INTO `t_table_demo` VALUES (273, 'fin-account-batch', '支付');
INSERT INTO `t_table_demo` VALUES (274, 'fin-account-jobservice', '支付');
INSERT INTO `t_table_demo` VALUES (275, 'fin-account-osprest', '支付');
INSERT INTO `t_table_demo` VALUES (276, 'fin-account-ospservice', '支付');
INSERT INTO `t_table_demo` VALUES (277, 'fin-account-rest', '支付');
INSERT INTO `t_table_demo` VALUES (278, 'fin-account-service', '支付');
INSERT INTO `t_table_demo` VALUES (279, 'finance-authorize-web', '支付');
INSERT INTO `t_table_demo` VALUES (280, 'finance-payment-web', '支付');
INSERT INTO `t_table_demo` VALUES (281, 'finance-wallet-osp', '支付');
INSERT INTO `t_table_demo` VALUES (282, 'finance-wallet-web', '支付');
INSERT INTO `t_table_demo` VALUES (283, 'fin-auc-batch', '支付');
INSERT INTO `t_table_demo` VALUES (284, 'fin-auc-rest', '支付');
INSERT INTO `t_table_demo` VALUES (285, 'fin-auc-service', '支付');
INSERT INTO `t_table_demo` VALUES (286, 'fin-file-rest', '支付');
INSERT INTO `t_table_demo` VALUES (287, 'fin-file-service-step1', '支付');
INSERT INTO `t_table_demo` VALUES (288, 'fin-file-service-step2', '支付');
INSERT INTO `t_table_demo` VALUES (289, 'fin-ospsso-rest', '支付');
INSERT INTO `t_table_demo` VALUES (290, 'fin-ospsso-service', '支付');
INSERT INTO `t_table_demo` VALUES (291, 'fin-payqr-rest', '支付');
INSERT INTO `t_table_demo` VALUES (292, 'fin-payqr-service', '支付');
INSERT INTO `t_table_demo` VALUES (293, 'fin-risk-rest', '支付');
INSERT INTO `t_table_demo` VALUES (294, 'fin-risk-service', '支付');
INSERT INTO `t_table_demo` VALUES (295, 'fin-rules-batch', '支付');
INSERT INTO `t_table_demo` VALUES (296, 'fin-rules-jobservice', '支付');
INSERT INTO `t_table_demo` VALUES (297, 'fin-rules-osprest', '支付');
INSERT INTO `t_table_demo` VALUES (298, 'fin-rules-ospservice', '支付');
INSERT INTO `t_table_demo` VALUES (299, 'fin-rules-rest', '支付');
INSERT INTO `t_table_demo` VALUES (300, 'fin-rules-service', '支付');
INSERT INTO `t_table_demo` VALUES (301, 'payment-basic-service', '支付');
INSERT INTO `t_table_demo` VALUES (302, 'payment-bill-channel-service', '支付');
INSERT INTO `t_table_demo` VALUES (303, 'payment-bill-order-service', '支付');
INSERT INTO `t_table_demo` VALUES (304, 'payment-bill-osp-service', '支付');
INSERT INTO `t_table_demo` VALUES (305, 'payment-bill-rest', '支付');
INSERT INTO `t_table_demo` VALUES (306, 'payment-channel-alipay-service', '支付');
INSERT INTO `t_table_demo` VALUES (307, 'payment-channel-balance-service', '支付');
INSERT INTO `t_table_demo` VALUES (308, 'payment-channel-citic-service', '支付');
INSERT INTO `t_table_demo` VALUES (309, 'payment-channel-crbank-service', '支付');
INSERT INTO `t_table_demo` VALUES (310, 'payment-channel-crpay-service', '支付');
INSERT INTO `t_table_demo` VALUES (311, 'payment-channel-icbc-service', '支付');
INSERT INTO `t_table_demo` VALUES (312, 'payment-channel-kftfinance-service', '支付');
INSERT INTO `t_table_demo` VALUES (313, 'payment-channel-points-service', '支付');
INSERT INTO `t_table_demo` VALUES (314, 'payment-channel-promotion-service-step1', '支付');
INSERT INTO `t_table_demo` VALUES (315, 'payment-channel-union-service', '支付');
INSERT INTO `t_table_demo` VALUES (316, 'payment-channel-weixin-service-step1', '支付');
INSERT INTO `t_table_demo` VALUES (317, 'payment-channel-weixin-service-step2', '支付');
INSERT INTO `t_table_demo` VALUES (318, 'payment-channel-withdraw-service', '支付');
INSERT INTO `t_table_demo` VALUES (319, 'payment-channel-yeepay-service-step1', '支付');
INSERT INTO `t_table_demo` VALUES (320, 'payment-channel-yeepay-service-step2', '支付');
INSERT INTO `t_table_demo` VALUES (321, 'payment-charging-service', '支付');
INSERT INTO `t_table_demo` VALUES (322, 'payment-fund-kft-service', '支付');
INSERT INTO `t_table_demo` VALUES (323, 'payment-gateway-rest', '支付');
INSERT INTO `t_table_demo` VALUES (324, 'payment-gateway-service', '支付');
INSERT INTO `t_table_demo` VALUES (325, 'payment-money-service', '支付');
INSERT INTO `t_table_demo` VALUES (326, 'payment-order-osp-rest', '支付');
INSERT INTO `t_table_demo` VALUES (327, 'payment-order-osp-service', '支付');
INSERT INTO `t_table_demo` VALUES (328, 'payment-order-service', '支付');
INSERT INTO `t_table_demo` VALUES (329, 'payment-portal-rest', '支付');
INSERT INTO `t_table_demo` VALUES (330, 'payment-report-bill-service', '支付');
INSERT INTO `t_table_demo` VALUES (331, 'payment-report-settlement-service', '支付');
INSERT INTO `t_table_demo` VALUES (332, 'payment-schedule-service', '支付');
INSERT INTO `t_table_demo` VALUES (333, 'payment-settlement-rest', '支付');
INSERT INTO `t_table_demo` VALUES (334, 'payment-settlement-service', '支付');
INSERT INTO `t_table_demo` VALUES (335, 'allinone-h5', '中台');
INSERT INTO `t_table_demo` VALUES (336, 'appawake-h5', '中台');
INSERT INTO `t_table_demo` VALUES (337, 'console-pages', '中台');
INSERT INTO `t_table_demo` VALUES (338, 'mid-console', '中台');
INSERT INTO `t_table_demo` VALUES (339, 'midjobs-schedule', '中台');
INSERT INTO `t_table_demo` VALUES (340, 'mid-node', '中台');
INSERT INTO `t_table_demo` VALUES (341, 'mid-node-19', '中台');
INSERT INTO `t_table_demo` VALUES (342, 'mid-rms', '中台');
INSERT INTO `t_table_demo` VALUES (343, 'mixc-h5', '中台');
INSERT INTO `t_table_demo` VALUES (344, 'operation-h5', '中台');
INSERT INTO `t_table_demo` VALUES (345, 'operation-rms-h5', '中台');
INSERT INTO `t_table_demo` VALUES (346, 'partyh5-h5', '党建APP');
INSERT INTO `t_table_demo` VALUES (347, 'partymid-node', '党建APP');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
