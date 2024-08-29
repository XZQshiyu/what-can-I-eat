insert into user (user_id, user_name, introduction, head_portrait) values ('000001', 'xch', 'hi', '123');
insert into user (user_id, user_name, introduction, head_portrait) values ('000002', 'xch2', 'hi2', '1232');
insert into user (user_id, user_name, introduction, head_portrait) values ('000003', 'xch3', 'hi3', '1233');
insert into user (user_id, user_name, introduction, head_portrait) values ('000004', 'xch4', 'hi4', '1234');

insert into campus (campus_id, campus_name) values ('c_1', '东校区');
insert into campus (campus_id, campus_name) values ('c_2', '西校区');
insert into campus (campus_id, campus_name) values ('c_3', '中校区');
insert into campus (campus_id, campus_name) values ('c_4', '高新校区');

insert into canteen (canteen_id, canteen_name, canteen_location) values ('can001', '桃李苑', 'c_3');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can002', '芳华一', 'c_2');
insert into canteen (canteen_id, canteen_name, canteen_location) values ('can003', '美食广场', 'c_1');

insert into food_window (window_id, window_name, canteen_name, window_description) values ('fw001', '桃李苑', 'can003','yummy');
insert into food_window (window_id, window_name, canteen_name, window_description) values ('fw002', '芳华一', 'can002','sibarashi');
insert into food_window (window_id, window_name, canteen_name, window_description) values ('fw003', '美食广场', 'can001','sigoi');
