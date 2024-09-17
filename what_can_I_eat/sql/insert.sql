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
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('1','自选菜','1','行','/media/images/自选.jpg');

-- 蜗壳时光餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('2','1号窗口', '2','行', '/media/images/蜗壳1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('3','2号窗口','2','行', '/media/images/蜗壳2.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('4','3号窗口','2','行', '/media/images/蜗壳3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('5','4号窗口','2','行', '/media/images/蜗壳4.jpg');

-- 星座餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('6','自选菜','3','行', '/media/images/星座0.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('7','火锅','3','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('8','兰州拉面','3','行', '/media/images/自选.jpg');


-- 美食广场
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('9','自选菜','4','行', '/media/images/美广-自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('10','精品套餐饭','4','行', '/media/images/美广-精品套餐饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('11','卤肉饭','4','行', '/media/images/美广-卤肉饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('12','早点','4','行', '/media/images/美广-早点.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('13','美味土豆泥拌饭','4','行', '/media/images/美广-美味土豆泥拌饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('14','叉烧饭','4','行', '/media/images/美广-叉烧饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('15','朱家小馆','4','行', '/media/images/美广-朱家小馆.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('16','湖南渔粉','4','行', '/media/images/美广-湖南渔粉.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('17','麻辣香锅','4','行',  '/media/images/美广-麻辣香锅.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('18','诶哟喂麻辣烫','4','行', '/media/images/美广-诶哟喂麻辣烫.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('19','铁板意面/饭','4','行', '/media/images/美广-铁板意面饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('20','烤盘饭','4','行', '/media/images/美广-烤盘饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('21','广式猪扒饭','4','行', '/media/images/美广-广式猪扒饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('22','千里香馄饨','4','行', '/media/images/美广-千里香馄饨.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('23','重庆小面','4','行', '/media/images/美广-重庆小面.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('24','瓦香鸡米饭','4','行', '/media/images/美广-瓦香鸡米饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('25','饮品','4','行', '/media/images/美广-饮品.jpg');

-- 沁园春
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('26','自选菜','5','行', '/media/images/自选.jpg');

-- 东区教工食堂
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('27','自选菜','6','行', '/media/images/自选.jpg');

-- 东区学生餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('28','自选菜','7','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('29','18-19号','7','行', '/media/images/东学18-19.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('30','徽州小吃','7','行', '/media/images/东学-徽州小吃.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('31','韩式小吃','7','行', '/media/images/东学-韩式小吃.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('32','广东小吃','7','行', '/media/images/东学-广东小吃.jpg'); 
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('33','成都小吃','7','行', '/media/images/东学-成都小吃.jpg');

-- 东苑风味餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('34','藤香鸡米饭','8','行', '/media/images/东风1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('35','特色砂锅面','8','行', '/media/images/东风2.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('36','百年老卤面','8','行', '/media/images/东风3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('37','精选好食材','8','行', '/media/images/东风4.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('38','青螺绾螺蛳粉','8','行', '/media/images/东风5.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('39','龘龘冒菜','8','行', '/media/images/东风6.jpg');

-- 金桔园餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('40','1号','9','行', '/media/images/金桔1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('41','2号','9','行', '/media/images/金桔2.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('42','3号','9','行', '/media/images/金桔3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('43','4号','9','行', '/media/images/金桔4.jpg');

-- 西区学生餐厅


-- 西三餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('44','天鲜配鲜茶饮','10','行', '/media/images/西三1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('45','盖浇饭&&砂锅焖面焖饭','10','行', '/media/images/西三2.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('46','麻辣香锅','10','行', '/media/images/西三3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('47','朱家小馆','10','行', '/media/images/西三4.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('48','老鸡汤煮面&&手工千里香馄饨','10','行', '/media/images/西三5.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('49','14号','10','行', '/media/images/西三6.jpg');

-- 西苑餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('50','土豆泥拌饭','12','行', '/media/images/西苑1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('51','特色砂锅焖面','12','行', '/media/images/西苑2.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('52','铁板饭','12','行', '/media/images/西苑3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('53','湖南渔粉','12','行', '/media/images/西苑4.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('54','卫孔记','12','行', '/media/images/西苑5.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('55','冒菜.香锅','12','行',    '/media/images/西苑6.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('56','面夫子','12','行', '/media/images/西苑7.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('57','啫啫煲','12','行', '/media/images/西苑8.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('58','热卤拌饭','12','行', '/media/images/西苑9.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('59','自选菜','12','行', '/media/images/西苑10.jpg');

-- 芳华餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('60','千里香馄饨','13','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('61','滋士客','13','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('62','瓦香鸡米饭','13','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('63','现炒盖浇饭','13','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('64','自选菜','13','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('65','小吃窗口合集','13','行', '/media/images/自选.jpg');

-- 西区教工餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('66','自选菜','14','行', '/media/images/自选.jpg');

-- 正阳楼餐厅
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('67','麻辣烫','15','行', '/media/images/正阳-麻辣烫.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('68','麻辣香锅','15','行', '/media/images/正阳-麻辣香锅.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('69','贵州牛肉粉','15','行', '/media/images/正阳-贵州牛肉粉.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('70','辣个状元','15','行', '/media/images/正阳-辣个状元.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('71','猪脚饭','15','行', '/media/images/正阳-猪脚饭.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('72','千里香馄饨','15','行', '/media/images/正阳-千里香馄饨.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('73','瓦香鸡米饭','15','行', '/media/images/正阳-瓦香鸡米饭.jpg');

-- 桃李苑
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('74','拌面、泡饭、馄饨','16','行', '/media/images/桃李0.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('75','麻辣香锅、麻辣烫','16','行', '/media/images/桃李1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('76','西里巷铁板饭','16','行', '/media/images/桃李2.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('77','集味鲜卤菜','16','行', '/media/images/桃李3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('78','缘味先石锅菜拌饭','16','行', '/media/images/桃李5.jpg');
insert into food_window (window_id,window_name, canteen_id, window_description, window_image)  values ('120','套餐饭','16','行', '/media/images/桃李6.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('79','自选菜','16','行', '/media/images/自选.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('80','碗有引力','16','行', '/media/images/桃李12.jpg');

-- 夜餐部
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('81','杂粮煎饼','17','行', '/media/images/夜餐1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('82','阜阳卷馍','17','行', '/media/images/夜餐1.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('83','自选菜','17','行', '/media/images/夜餐3.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('84','滋士客','17','行', '/media/images/夜餐5.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('85','慧樹串串','17','行', '/media/images/夜餐6.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('86','水饺、汤圆','17','行', '/media/images/夜餐7.jpg');
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('87','盖浇面','17','行', '/media/images/夜餐8.jpg');

-- 高a一楼
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('88','1','18','行', '/media/images/自选.jpg');
-- 高a二楼
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('89','1','19','行', '/media/images/自选.jpg');
-- 高b一楼
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('90','1','20','行', '/media/images/自选.jpg');
-- 高b二楼
insert into food_window (window_id, window_name, canteen_id, window_description, window_image) values ('91','1','21','行', '/media/images/自选.jpg');


insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('1', '1', '瓦香鸡', '1', '感觉不如羊肉面', '20240830', 17, 2);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('2', '1', '牛肉面', '2', '牛肉面好好吃', '20240831', 8, 3);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('3', '1', '泸溪河', '3', '牛肉面是我叠', '20240831', 6, 1);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('4', '1', '牛肉面', '4', '太香了', '20240831', 7, 2);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('5', '1', '热带风味冰红茶', '5', '呃呃了', '20240830', 20, 5);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number, rating) values ('6', '1', '牛肉面', '6', '还凑合', '20240831', 7, 4);


-- reply
insert into dish_reply (reply_id, dish_comment_id, user_id, parent_reply_id, context, publish_time, like_number) values ('1', '1', '2', null, '你说得对', '20240830', 3);
insert into dish_reply (reply_id, dish_comment_id, user_id, parent_reply_id, context, publish_time, like_number) values ('2', '1', '3', '1', '我说得对', '20240830', 4);
insert into dish_reply (reply_id, dish_comment_id, user_id, parent_reply_id, context, publish_time, like_number) values ('3', '1', '4', '1', '他说得对', '20240830', 5);
insert into dish_reply (reply_id, dish_comment_id, user_id, parent_reply_id, context, publish_time, like_number) values ('4', '1', '5', '1', '我说得对', '20240830', 6);


insert into fav (fav_id, user_id, comment_id) values ('1', '1', '1');
insert into fav (fav_id, user_id, comment_id) values ('2', '1', '2');
insert into fav (fav_id, user_id, comment_id) values ('3', '1', '3');
insert into fav (fav_id, user_id, comment_id) values ('4', '1', '4');