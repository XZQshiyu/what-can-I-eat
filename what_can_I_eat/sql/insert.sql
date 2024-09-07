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
insert into food_window (window_id, window_name, canteen_id, window_description) values ('3','2号窗口','1','行');

-- 星座餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('21','1','3','行');
-- 美食广场
insert into food_window (window_id, window_name, canteen_id, window_description) values ('31','1','4','行');
-- 沁园春
insert into food_window (window_id, window_name, canteen_id, window_description) values ('41','1','5','行');
-- 东区教工食堂
insert into food_window (window_id, window_name, canteen_id, window_description) values ('51','1','6','行');
-- 东区学生餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('61','1','7','行');
-- 东苑风味餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('71','1','8','行');
-- 金桔园餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('81','1','9','行');
-- 西区学生餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('91','1','10','行');
-- 西三餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('101','1','11','行');
-- 西苑餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('111','1','12','行');
-- 芳华餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('121','1','13','行');
-- 西区教工餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('131','1','14','行');
-- 正阳楼餐厅
insert into food_window (window_id, window_name, canteen_id, window_description) values ('141','1','15','行');
-- 桃李苑
insert into food_window (window_id, window_name, canteen_id, window_description) values ('151','1','16','行');
-- 夜餐部
insert into food_window (window_id, window_name, canteen_id, window_description) values ('161','1','17','行');
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
