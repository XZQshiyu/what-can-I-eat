use what_can_I_eat

-- 上传帖子（增）
drop procedure if exists UploadPost;
delimiter //
create procedure UploadPost(
    IN p_post_code varchar(30),
    IN p_uploader varchar(30),
    IN p_uploader_uid integer,
    IN p_context varchar(1000),
    IN p_image VARCHAR(255),
    IN p_publish_time date,
    --获取当时的时间输入
    IN p_like_number integer,
    IN p_dislike_number integer,
    IN p_favorite_number integer,
    IN p_tag_1 varchar(30),
    IN p_tag_2 varchar(30),
    IN p_tag_3 varchar(30),
    IN p_tag_4 varchar(30),
    IN p_tag_5 varchar(30)
)
BEGIN 
    -- 同质帖子处理
    -- 单用户每日发帖上限
    insert into post (post_code, uploader, uploader_uid, context, image, publish_time, like_number, dislike_number, favorite_number, tag_1, tag_2, tag_3, tag_4, tag_5)
    values (p_post_code, p_uploader, p_uploader_uid, p_context, p_image, p_publish_time,
     p_like_number, p_dislike_number, p_favorite_number, 
     p_tag_1, p_tag_2, p_tag_3, p_tag_4, p_tag_5);
END //
delimiter ;

--修改帖子
--发帖人修改界面只能修改除了like、dislike、favorite之外的属性
--所有人都可以通过点赞、点踩、收藏修改这三个属性
drop procedure if exists ModifyPost;
delimiter //
create procedure ModifyPost(
    IN p_post_code varchar(30),
    IN p_uploader varchar(30),
    IN p_uploader_uid varchar(30),
    IN p_context varchar(255),
    IN p_image VARCHAR(255),
    IN p_publish_time date,
    IN p_like_number integer,
    IN p_dislike_number integer,
    IN p_favorite_number integer,
    IN tag_1 varchar(30),
    IN tag_2 varchar(30),
    IN tag_3 varchar(30),
    IN tag_4 varchar(30),
    IN tag_5 varchar(30)
)
BEGIN
    update post
    SET uploader = p_uploader, uploader_uid = p_uploader_uid, context = p_context, image = p_image, publish_time = p_publish_time,
    like_number = p_like_number, dislike_number = p_dislike_number, favorite_number = p_favorite_number,
    tag_1 = p_tag_1, tag_2 = p_tag_2, tag_3 = p_tag_3, tag_4 = p_tag_4, tag_5 = p_tag_5
    WHERE post_code = p_post_code;
    -- 只有发帖子的人和管理员才能自己修改帖子
    -- 或者干脆只有管理员能修改帖子？
END //
delimiter ;

-- 删除帖子
-- 管理员和用户可以做到
drop procedure if exists DeletePost;
delimiter //
CREATE PROCEDURE DeletePost(
    IN p_post_code varchar(30)
)
-- 使用post_code进行删除
BEGIN
    DELETE FROM post
    WHERE post_code = p_post_code;
END //
delimiter ;

-- 模糊查找帖子信息的存储过程
DROP PROCEDURE IF EXISTS Search_Post;
DELIMITER //
CREATE PROCEDURE search_user(
    IN p_uploader VARCHAR(30),
    IN p_uploader_uid varchar(30),
    IN p_post_code varchar(30)
)
-- 根据用户名或者post_code或者帖子的title进行查询
BEGIN
    SELECT *
    FROM post
    WHERE (uploader IS NULL OR uploader LIKE CONCAT('%', p_uploader, '%'))
    OR (post_code IS NULL OR post_code LIKE CONCAT('%', p_post_code, '%'))
    OR (uploader_uid IS NULL OR uploader_uid LIKE CONCAT('%', p_uploader_uid, '%'));
END //
DELIMITER ;





