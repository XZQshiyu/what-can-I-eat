insert into user (user_id, user_name, introduction, head_portrait) values ('000001', 'xch', 'hi', '123');
insert into user (user_id, user_name, introduction, head_portrait) values ('000002', 'xch2', 'hi2', '1232');
insert into user (user_id, user_name, introduction, head_portrait) values ('000003', 'xch3', 'hi3', '1233');
insert into user (user_id, user_name, introduction, head_portrait) values ('000004', 'xch4', 'hi4', '1234');

insert into campus (campus_id, campus_name) values ('c_1', '东校区');
insert into campus (campus_id, campus_name) values ('c_2', '西校区');
insert into campus (campus_id, campus_name) values ('c_3', '中校区');
insert into campus (campus_id, campus_name) values ('c_4', '高新校区');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('can001', '桃李苑', 'c_3');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can002', '芳华一楼', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can003', '美食广场', 'c_1');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can004', '芳华二楼', 'c_2');

insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw001', '石锅饭', 'can003','yummy');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw002', '瓦香鸡（芳华）', 'can004','sibarashi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw003', '瓦香鸡（美广）', 'can001','sigoi');
insert into food_window (window_id, window_name, canteen_id, window_description) values ('fw004', '刀削面', 'can004','一般般');

insert into dish (dish_id, dish_name, context, image, price, dish_location, like_number, dislike_number, favorite_number) values ('ds001', '牛肉面', '有牛肉的面条，很好吃', 'image001', 12.0, 'fw004', 11, 45, 14);
insert into dish (dish_id, dish_name, context, image, price, dish_location, like_number, dislike_number, favorite_number) values ('ds002', '羊肉面', '有羊肉的面条，一般好吃', 'image002', 13.0, 'fw004', 12, 46, 15);
insert into dish (dish_id, dish_name, context, image, price, dish_location, like_number, dislike_number, favorite_number) values ('ds003', '凉面', '凉凉的面条，非常好吃', 'image003', 10.0, 'fw004', 13, 47, 17);