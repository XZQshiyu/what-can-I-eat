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
    user_id varchar(18) primary key,
    user_name varchar(30) not null,
    introduction varchar(200),
    head_portrait VARCHAR(255)
);

create table campus
(
    campus_id varchar(18) primary key,
    campus_name varchar(30) not null
);

-- 这个canteen的location应该是 campus_name，因此需要一个外键约束，这样才能体现canteen和campus的关系
create table canteen
(
    canteen_id varchar(18) primary key,
    canteen_name varchar(30) not null,
    canteen_location varchar(30) not null,
    foreign key (canteen_location) references campus(campus_id) ON DELETE CASCADE
);

-- 原先的window是真的关键字，所以我改成了 food_window, 同时我觉得这个表应该有一个外键约束，指向canteen
create table food_window
(
    window_id varchar(18) primary key,
    window_name varchar(30) not null,
    canteen_id varchar(30) not null,
    window_description varchar(100) not null,
    window_image varchar(255),
    foreign key (canteen_id) references canteen(canteen_id) ON DELETE CASCADE
);

-- 虽然但是，promulgator最好是user的外键，即用user_id来表示，可以通过关联查找来定位user的name
create table post
(
    post_id varchar(18) primary key,
    title varchar(30) not null,
    uploader varchar(30) not null,
    uploader_id varchar(18) not null,
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
    foreign key (uploader_id) references user(user_id) ON DELETE CASCADE
);

create table dish_comment
(
    comment_id varchar(18) primary key,
    window_id varchar(18) not null,
    dish_name varchar(18) not  null,
    user_id varchar(18) not null,
    context varchar(255) not null,
    picture VARCHAR(255) not null,
    publish_time date,
    like_number integer not null,
    rating integer not null,
    foreign key (window_id) references food_window(window_id) ON DELETE CASCADE,
    foreign key (user_id) references user(user_id) ON DELETE CASCADE
);

create table post_comment
(
    post_comment_id varchar(18) primary key,
    post_id varchar(18) not null,
    user_id varchar(18) not null,
    context varchar(255) not null,
    picture VARCHAR(255) not null,
    publish_time date,
    like_number integer not null,
    foreign key (post_id) references post(post_id) ON DELETE CASCADE,
    foreign key (user_id) references user(user_id) ON DELETE CASCADE
);

create table dish_reply
(
    reply_id varchar(18) primary key,
    dish_comment_id varchar(18) not null,
    user_id varchar(18) not null,
    context varchar(255) not null,
    publish_time date,
    like_number integer not null,
    foreign key (dish_comment_id) references dish_comment(comment_id) ON DELETE CASCADE,
    foreign key (user_id) references user(user_id) ON DELETE CASCADE
);

create table fav
(
    fav_id varchar(18) primary key,
    user_id varchar(18) not null,
    comment_id varchar(18) not null,
    foreign key (user_id) references user(user_id) ON DELETE CASCADE,
    foreign key (comment_id) references dish_comment(comment_id) ON DELETE CASCADE
)