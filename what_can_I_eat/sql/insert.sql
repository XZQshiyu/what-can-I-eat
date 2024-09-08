insert into user (user_id, user_name, introduction, head_portrait) values ('1', 'xch', 'hi', '123');
insert into user (user_id, user_name, introduction, head_portrait) values ('2', 'xch2', 'hi2', '1232');
insert into user (user_id, user_name, introduction, head_portrait) values ('3', 'xch3', 'hi3', '1233');
insert into user (user_id, user_name, introduction, head_portrait) values ('4', 'xch4', 'hi4', '1234');
insert into user (user_id, user_name, introduction, head_portrait) values ('5', 'xch5', 'hi5', '1235');
insert into user (user_id, user_name, introduction, head_portrait) values ('6', 'xch6', 'hi6', '1236');



insert into campus (campus_id, campus_name) values ('1', '东校区');
insert into campus (campus_id, campus_name) values ('2', '西校区');
insert into campus (campus_id, campus_name) values ('3', '中校区');
insert into campus (campus_id, campus_name) values ('4', '高新校区');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('1', '东苑餐厅', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('2', '蜗壳时光餐厅', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('3', '星座餐厅', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('4', '美食广场', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('5', '沁园春', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('6', '东区教工食堂', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('7', '东区学生餐厅', '1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('8', '东苑风味餐厅', '1');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('9', '金桔园餐厅', '2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('10', '西区学生餐厅', '2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('11', '西三餐厅', '2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('12', '西苑餐厅', '2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('13', '芳华餐厅', '2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('14', '西区教工餐厅', '2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('15', '正阳楼餐厅', '2');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('16', '桃李苑', '3');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('17', '夜餐部', '3');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('18', '高新学生食堂A一楼', '4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('19', '高新学生食堂A二楼', '4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('20', '高新学生食堂B一楼', '4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('21', '高新学生食堂B二楼', '4');

-- 东苑餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('1','自选菜','1','行');

-- 蜗壳时光餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('2','1号窗口', '2','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('3','2号窗口','2','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('4','3号窗口','2','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('5','4号窗口','2','行');

-- 星座餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('6','自选菜','3','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('7','火锅','3','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('8','兰州拉面','3','行');


-- 美食广场
insert into food_window (window_id, window_name, canteen_id, window_description) values ('9','自选菜','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('10','精品套餐饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('11','卤肉饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('12','早点','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('13','美味土豆泥拌饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('14','叉烧饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('15','朱家小馆','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('16','湖南渔粉','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('17','麻辣香锅','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('18','诶哟喂麻辣烫','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('19','铁板意面/饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('20','烤盘饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('21','广式猪扒饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('22','千里香馄饨','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('23','重庆小面','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('24','瓦香鸡米饭','4','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('25','饮品','4','行');

-- 沁园春
insert into food_window (window_id, window_name, canteen_id, window_description) values ('26','自选菜','5','行');

-- 东区教工食堂
insert into food_window (window_id, window_name, canteen_id, window_description) values ('27','自选菜','6','行');

-- 东区学生餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('28','自选菜','7','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('29','18-19号','7','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('30','徽州小吃','7','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('31','韩式小吃','7','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('32','广东小吃','7','行'); 
insert into food_window (window_id, window_name, canteen_id, window_description) values ('33','成都小吃','7','行');

-- 东苑风味餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('34','藤香鸡米饭','8','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('35','特色砂锅面','8','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('36','百年老卤面','8','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('37','精选好食材','8','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('38','青螺绾螺蛳粉','8','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('39','龘龘冒菜','8','行');

-- 金桔园餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('40','1号','9','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('41','2号','9','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('42','3号','9','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('43','4号','9','行');

-- 西区学生餐厅


-- 西三餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('44','天鲜配鲜茶饮','10','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('45','盖浇饭&&砂锅焖面焖饭','10','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('46','麻辣香锅','10','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('47','朱家小馆','10','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('48','老鸡汤煮面&&手工千里香馄饨','10','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('49','14号','10','行');

-- 西苑餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('50','土豆泥拌饭','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('51','特色砂锅焖面','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('52','铁板饭','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('53','湖南渔粉','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('54','卫孔记','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('55','冒菜.香锅','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('56','面夫子','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('57','啫啫煲','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('58','热卤拌饭','12','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('59','自选菜','12','行');

-- 芳华餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('60','千里香馄饨','13','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('61','滋士客','13','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('62','瓦香鸡米饭','13','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('63','现炒盖浇饭','13','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('64','自选菜','13','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('65','小吃窗口合集','13','行');

-- 西区教工餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('66','自选菜','14','行');

-- 正阳楼餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('67','麻辣烫','15','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('68','麻辣香锅','15','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('69','贵州牛肉粉','15','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('70','辣个状元','15','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('71','猪脚饭','15','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('72','千里香馄饨','15','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('73','瓦香鸡米饭','15','行');

-- 桃李苑
insert into food_window (window_id, window_name, canteen_id, window_description) values ('74','拌面、泡饭、馄饨','16','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('75','麻辣香锅、麻辣烫','16','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('76','西里巷铁板饭','16','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('77','集味鲜卤菜','16','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('78','缘味先石锅菜拌饭','16','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('79','自选菜','16','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('80','碗有引力','16','行');

-- 夜餐部
insert into food_window (window_id, window_name, canteen_id, window_description) values ('81','杂粮煎饼','17','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('82','阜阳卷馍','17','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('83','自选菜','17','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('84','滋士客','17','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('85','慧樹串串','17','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('86','水饺、汤圆','17','行');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('87','盖浇面','17','行');

-- 高a一楼
insert into food_window (window_id, window_name, canteen_id, window_description) values ('171','1','18','行');
-- 高a二楼
insert into food_window (window_id, window_name, canteen_id, window_description) values ('181','1','19','行');
-- 高b一楼
insert into food_window (window_id, window_name, canteen_id, window_description) values ('191','1','20','行');
-- 高b二楼
insert into food_window (window_id, window_name, canteen_id, window_description) values ('201','1','21','行');


insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('1', '1', '瓦香鸡', '1', '感觉不如羊肉面', '20240830', 17, 2);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('2', '1', '牛肉面', '2', '牛肉面好好吃', '20240831', 8, 3);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('3', '1', '泸溪河', '3', '牛肉面是我叠', '20240831', 6, 1);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('4', '1', '牛肉面', '4', '太香了', '20240831', 7, 2);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('5', '1', '热带风味冰红茶', '5', '呃呃了', '20240830', 20, 5);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('00000', '1', '牛肉面', '6', '还凑合', '20240831', 7, 4);


