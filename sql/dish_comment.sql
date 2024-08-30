use what_can_I_eat;
-- 创建存储过程
drop procedure if exists add_comment;
delimiter //
CREATE PROCEDURE add_comment (
    IN p_comment_id varchar(18),
    IN p_dish_id varchar(18),
    IN p_user_id varchar(18),
    IN p_context varchar(255),
    IN p_publish_time date,
    IN p_like_number integer
)
BEGIN
    INSERT INTO dish_comment (comment_id, dish_id, user_id, context, publish_time, like_number)
    VALUES (p_comment_id, p_dish_id, p_user_id, p_context, p_publish_time, p_like_number);
END //
delimiter ;

-- 查询存储过程
drop procedure if exists get_comment_by_id;
delimiter //
CREATE PROCEDURE get_comment_by_id (
    IN p_comment_id VARCHAR(18)
)
BEGIN
    SELECT *
    FROM dish_comment
    WHERE comment_id = p_comment_id;
END //
delimiter ;

-- 修改的存储过程
drop procedure if exists update_comment;
delimiter //
CREATE PROCEDURE update_comment (
    IN p_comment_id varchar(18),
    IN p_context varchar(255)
)
BEGIN
    UPDATE dish_comment SET context = p_context WHERE comment_id = p_comment_id;
END //
delimiter ;

-- 删除的存储过程
DROP PROCEDURE IF EXISTS delete_comment;
DELIMITER //
CREATE PROCEDURE delete_comment (
    IN p_comment_id VARCHAR(18)
)
BEGIN
    DELETE FROM dish_comment WHERE comment_id = p_comment_id;
END //
DELIMITER ;

-- 查询某个用户的所有评论（仿评课社区）
DROP PROCEDURE IF EXISTS search_comment_by_user;
DELIMITER //
CREATE PROCEDURE search_comment_by_user(
    IN p_user_id varchar(18)
)
BEGIN
    SELECT *
    FROM dish_comment
    WHERE user_id = p_user_id;
END //
DELIMITER ;

-- 获取所有评论
DROP PROCEDURE IF EXISTS get_all_comments;
DELIMITER //
CREATE PROCEDURE get_all_comments ()
BEGIN
    SELECT * FROM dish_comment;
END //
DELIMITER ;