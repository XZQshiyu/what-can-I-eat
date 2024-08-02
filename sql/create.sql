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
    uid varchar(18) primary key,
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
    location varchar(30) not null,
    foreign key (location) references campus(campus_name) ON DELETE CASCADE
);

-- 原先的window是真的关键字，所以我改成了 food_window, 同时我觉得这个表应该有一个外键约束，指向canteen
create table food_window
(
    window_name varchar(30) primary key,
    canteen_name varchar(30) not null,
    description varchar(100) not null,
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
    promulgator varchar(18) not null,
    publish_time date,
    price float not null,
    place varchar(30) not null,
    like_number integer not null,
    trample_number integer not null,
    collect_number integer not null,
    foreign key (place) references food_window(window_name) ON DELETE CASCADE,
    primary key (dish_name, promulgator, place),
    foreign key (promulgator) references user(uid) ON DELETE CASCADE
);

-- 虽然但是，promulgator最好是user的外键，即用user_id来表示，可以通过关联查找来定位user的name
create table post
(
    promulgator varchar(18) primary key,
    context varchar(255) not null,
    image VARCHAR(255),
    publish_time date,
    like_number integer not null,
    trample_number integer not null,
    collect_number integer not null,
    tag_1 varchar(30) not null,
    tag_2 varchar(30),
    tag_3 varchar(30),
    tag_4 varchar(30),
    tag_5 varchar(30),
    foreign key (promulgator) references user(uid) ON DELETE CASCADE
);drop database if exists what_can_I_eat;
create database what_can_I_eat;

use what_can_I_eat;

drop table if exists user;
create table user
{
    user_name varchar(50) primary key,
    uid integer not null,
    introduction varchar(200),
    head_portrait VARCHAR(255)
}

drop table if exists campus;
create table campus
{
    campus_name varchar(30) primary key
};

drop table if exists canteen;
-- 添加外键campus_name,体现食堂和校区的关系
create table canteen
{
    canteen_name varchar(30) primary key,
    location varchar(50) not null,
    campus_name varchar(30) not null,
    FOREIGN KEY(campus_name) REFERENCES campus(campus_name) ON DELETE CASCADE
    -- canteen 表中的campus_name必须匹配campus表中的campus_name
};

drop table if exists window;
create table window
{
    window_name varchar(30) primary key,
    description varchar(100) not null,
    canteen_name varchar(30) not null,
    FOREIGN KEY(canteen_name) REFERENCES canteen(canteen_name) ON DELETE CASCADE
};

drop table if exists dish;
create table dish
{
    dish_name varchar(30) primary key,
    context varchar(1000) not null,
    image VARCHAR(255),
    promulgator varchar(30) primary key,
    publish_time date,
    price float not null,
    place varchar(50) primary key,
    like_number integer not null,
    trample_number integer not null,
    collect_number integer not null,
    foreign key (promulgator) references user(user_name) ON DELETE CASCADE
    -- 菜品和提交者建立外键关系
};

drop table if exists post;
/*帖子
提交者、提交者uid文字内容、至多一张图片、上传时间
赞、踩、收藏
至多5个tag
*/
create table post
{
    uploader varchar(30) primary key,
    uploader_uid integer not null,
    context varchar(1000) not null,
    image VARCHAR(255),
    publish_time date,
    like_number integer not null,
    dislike_number integer not null,
    favorite_number integer not null,
    tag_1 varchar(30) not null,
    tag_2 varchar(30),
    tag_3 varchar(30),
    tag_4 varchar(30),
    tag_5 varchar(30)
}

