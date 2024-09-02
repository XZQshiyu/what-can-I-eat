insert into user (user_id, user_name, introduction, head_portrait) values ('000001', 'xch', 'hi', '123');
insert into user (user_id, user_name, introduction, head_portrait) values ('000002', 'xch2', 'hi2', '1232');
insert into user (user_id, user_name, introduction, head_portrait) values ('000003', 'xch3', 'hi3', '1233');
insert into user (user_id, user_name, introduction, head_portrait) values ('000004', 'xch4', 'hi4', '1234');

insert into campus (campus_id, campus_name) values ('c_1', '东校区');
insert into campus (campus_id, campus_name) values ('c_2', '西校区');
insert into campus (campus_id, campus_name) values ('c_3', '中校区');
insert into campus (campus_id, campus_name) values ('c_4', '高新校区');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('can011', '东苑餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can012', '蜗壳时光餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can013', '星座餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can014', '美食广场', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can015', '沁园春', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can016', '东区教工食堂', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can017', '东区学生餐厅', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can018', '东苑风味餐厅', 'c_1');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('can021', '金桔园餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can022', '西区学生餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can023', '西三餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can024', '西苑餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can025', '芳华餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can026', '西区教工餐厅', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can027', '正阳楼餐厅', 'c_2');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('can031', '桃李苑', 'c_3');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can032', '夜餐部', 'c_3');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('can041', '高新学生食堂A一楼', 'c_4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can042', '高新学生食堂A二楼', 'c_4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can043', '高新学生食堂B一楼', 'c_4');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can044', '高新学生食堂B二楼', 'c_4');

insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw031001', '石锅饭', 'can031','yummy');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw025001', '瓦香鸡（芳华）', 'can025','sibarashi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw014001', '瓦香鸡（美广）', 'can014','sigoi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw025001', '刀削面', 'can025','一般般');

insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number) values ('000000000001', 'fw031001', '瓦香鸡', '000001', '感觉不如羊肉面', '20240830', 17);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number) values ('000000000005', 'fw031001', '牛肉面', '000005', '牛肉面好好吃', '20240831', 8);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number) values ('000000000002', 'fw025001', '泸溪河', '000002', '牛肉面是我叠', '20240831', 6);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number) values ('000000000004', 'fw025001', '牛肉面', '000004', '太香了', '20240831', 7);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number) values ('000000000003', 'fw014001', '热带风味冰红茶', '000003', '呃呃了', '20240830', 20);
insert into dish_comment (comment_id, window_id, dish_name, user_id, context, publish_time, like_number) values ('000000000006', 'fw014001', '牛肉面', '000006', '还凑合', '20240831', 7);

insert into post_comment (comment_id, post_id, user_id, context, publish_time, like_number) values ('ps_cmt001', 'ps000000000001', '000001', '一眼串子', '20240830', 12);
insert into post_comment (comment_id, post_id, user_id, context, publish_time, like_number) values ('ps_cmt002', 'ps000000000002', '000002', '？', '20240831', 33);
