insert into user (user_id, user_name, introduction, head_portrait) values ('1', 'xch', 'hi', '123');
insert into user (user_id, user_name, introduction, head_portrait) values ('2', 'xch2', 'hi2', '1232');
insert into user (user_id, user_name, introduction, head_portrait) values ('3', 'xch3', 'hi3', '1233');
insert into user (user_id, user_name, introduction, head_portrait) values ('4', 'xch4', 'hi4', '1234');
insert into user (user_id, user_name, introduction, head_portrait) values ('5', 'xch5', 'hi5', '1235');
insert into user (user_id, user_name, introduction, head_portrait) values ('6', 'xch6', 'hi6', '1236');
insert into user (user_id, user_name, introduction, head_portrait) values ('7', 'xch7', 'hi7', '1237');
insert into user (user_id, user_name, introduction, head_portrait) values ('8', 'xch8', 'hi8', '1238');
insert into user (user_id, user_name, introduction, head_portrait) values ('9', 'zyh1', 'hi9', '1239');
insert into user (user_id, user_name, introduction, head_portrait) values ('10', 'zyh2', 'hi10', '12310');
insert into user (user_id, user_name, introduction, head_portrait) values ('11', 'zyh3', 'hi11', '12311');
insert into user (user_id, user_name, introduction, head_portrait) values ('12', 'zyh4', 'hi12', '12312');



insert into campus (campus_id, campus_name) values ('c_1', '东校区');
insert into campus (campus_id, campus_name) values ('c_2', '西校区');
insert into campus (campus_id, campus_name) values ('c_3', '中校区');
insert into campus (campus_id, campus_name) values ('c_4', '高新校区');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('1', '东苑餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('2', '蜗壳时光餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('3', '星座餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('4', '美食广场', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('5', '沁园春', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('6', '东区教工食堂', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('7', '东区学生餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('8', '东苑风味餐厅', 'c_1');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('9', '金桔园餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('10', '西区学生餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('11', '西三餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('12', '西苑餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('13', '芳华餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('14', '西区教工餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('15', '正阳楼餐厅', 'c_2');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('16', '桃李苑', 'c_3');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('17', '夜餐部', 'c_3');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('18', '高新学生食堂A一楼', 'c_4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('19', '高新学生食堂A二楼', 'c_4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('20', '高新学生食堂B一楼', 'c_4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('21', '高新学生食堂B二楼', 'c_4');

insert into food_window (window_id, window_name, canteen_id, window_description) values ('1', '石锅饭', '1','yummy');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('2', 'dffgv', '2','sibarashi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('2', '瓦香鸡（芳华）', '2','sibarashi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('3', '瓦香鸡（美广）', '3','sigoi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('4', '刀削面', '4','一般般');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('5', '牛肉面', '5','好吃');

insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number,rating) values ('000000000001', 'fw031001', '瓦香鸡', '000001', '感觉不如羊肉面', '20240830', 17,2);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number,rating) values ('000000000005', 'fw031001', '牛肉面', '000003', '牛肉面好好吃', '20240831', 8 ,3);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number,rating) values ('000000000002', 'fw025001', '泸溪河', '000002', '牛肉面是我叠', '20240831', 6, 4);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number,rating) values ('000000000004', 'fw025001', '牛肉面', '000004', '太香了', '20240831', 7,5);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number,rating) values ('000000000003', 'fw014001', '热带风味冰红茶', '000003', '呃呃了', '20240830', 20,5);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number,rating) values ('000000000006', 'fw014001', '牛肉面', '000004', '还凑合', '20240831', 7,3);
