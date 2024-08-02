drop database if exists what_can_I_eat;
create database what_can_I_eat;

use what_can_I_eat;

drop table if exists user;
drop table if exists campus;
drop table if exists canteen;
drop table if exists food_window;
drop table if exists dish;
drop table if exists post;

-- user的主键应该是 uid而不是user_name，用户名可能相同，但是uid一定是不同的
-- uid用 varchar就行，不用int，因为int会有自增的问题
create table user
(
    user_name varchar(30) not null,
    uid varchar(30) primary key,
    introduction varchar(200),
    head_portrait VARCHAR(255)
);

create table campus
(
    campus_name varchar(30) primary key
);

-- 这个canteen的location应该是 campus_name，因此需要一个外键约束，这样才能体现canteen和campus的关系
create table canteen
(
    canteen_name varchar(30) primary key,
    canteen_location varchar(30) not null,
    foreign key (location) references campus(campus_name) ON DELETE CASCADE
);

-- 原先的window是真的关键字，所以我改成了 food_window, 同时我觉得这个表应该有一个外键约束，指向canteen
create table food_window
(
    window_name varchar(30) primary key,
    canteen_name varchar(30) not null,
    window_description varchar(100) not null,
    window_location varchar(30) not null,
    foreign key (canteen_name) references canteen(canteen_name) ON DELETE CASCADE
);

-- dish的主键约束修改了
-- dish 要有一个外键约束，指向food_window
-- 111, varchar真能1000吗，我印象中就到255
-- 如果要写外键约束，这两个变量类型应该相同，即varchar长度一致
create table dish
(
    dish_name varchar(30) not null,
    context varchar(255) not null,
    image VARCHAR(255),
    uploader varchar(30) not null,
    uploader_uid varcahr(30) not null,
    publish_time date,
    price float not null,
    dish_location varchar(30) not null,
    like_number integer not null,
    dislike_number integer not null,
    favorite_number integer not null,
    foreign key (window_location) references food_window(window_name) ON DELETE CASCADE,
    primary key (dish_name, uploader, window_location),
    foreign key (uploader) references user(uid) ON DELETE CASCADE
);

-- 虽然但是，promulgator最好是user的外键，即用user_id来表示，可以通过关联查找来定位user的name

create table post
-- 帖子应该要有一个title
(
    post_code varchar(30) primary key,
    --新增帖子的编码
    title varchar(30),
    uploader varchar(30) not null,
    context varchar(255) not null,
    image VARCHAR(255),
    publish_time date,
    like_number integer not null,
    dislike_number integer not null,
    favorite_number integer not null,
    tag_1 varchar(30) not null,
    tag_2 varchar(30),
    tag_3 varchar(30),
    tag_4 varchar(30),
    tag_5 varchar(30),
    foreign key (uploader) references user(uid) ON DELETE CASCADE
);
