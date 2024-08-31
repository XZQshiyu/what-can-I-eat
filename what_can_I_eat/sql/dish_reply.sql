use what_can_I_eat;
-- 创建存储过程
drop procedure if exists add_reply;
delimiter //
CREATE PROCEDURE add_reply (
    IN p_reply_id varchar(18),
    IN p_dish_comment_id varchar(18),
    IN p_user_id varchar(18),
    IN p_parent_reply_id varchar(18),
    IN p_context varchar(255),
    IN p_publish_time date,
    IN p_like_number integer
)
BEGIN
    INSERT INTO dish_reply (reply_id, dish_comment_id, user_id, parent_reply_id, context, publish_time, like_number)
    VALUES (p_reply_id, p_dish_comment_id, p_user_id, p_parent_reply_id, p_context, p_publish_time, p_like_number);
END //
delimiter ;

-- 查询的存储过程
drop procedure if exists get_reply_by_id;
delimiter //
CREATE PROCEDURE get_reply_by_id (
    IN p_reply_id VARCHAR(18)
)
BEGIN
    SELECT *
    FROM dish_reply
    WHERE reply_id = p_reply_id;
END //
delimiter ;

-- 修改的存储过程
drop procedure if exists update_reply;
delimiter //
CREATE PROCEDURE update_reply (
    IN p_reply_id varchar(18),
    IN p_context varchar(255)
)
BEGIN
    UPDATE dish_reply SET context = p_context WHERE reply_id = p_reply_id;
END //
delimiter ;

-- 删除的存储过程
DROP PROCEDURE IF EXISTS delete_reply;
DELIMITER //
CREATE PROCEDURE delete_reply (
    IN p_reply_id VARCHAR(18)
)
BEGIN
    DELETE FROM dish_reply WHERE reply_id = p_reply_id;
END //
DELIMITER ;

-- 查询某个用户的所有回复（仿评课社区）
DROP PROCEDURE IF EXISTS search_reply_by_user;
DELIMITER //
CREATE PROCEDURE search_reply_by_user(
    IN p_user_id varchar(18)
)
BEGIN
    SELECT *
    FROM dish_reply
    WHERE user_id = p_user_id;
END //
DELIMITER ;

-- 获取所有回复
DROP PROCEDURE IF EXISTS get_all_replies;
DELIMITER //
CREATE PROCEDURE get_all_replies ()
BEGIN
    SELECT * FROM dish_reply;
END //
DELIMITER ;
