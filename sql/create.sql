drop database if exists what_can_I_eat;
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

