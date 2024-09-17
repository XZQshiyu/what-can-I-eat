use what_can_I_eat;
-- 创建存储过程
drop procedure if exists add_dish_comment;
delimiter //
CREATE PROCEDURE add_dish_comment (
    IN p_comment_id varchar(18),
    IN p_window_id varchar(18),
    IN p_dish_name varchar(18),
    IN p_user_id varchar(18),
    IN p_context varchar(255),
    IN p_picture VARCHAR(255),
    IN p_publish_time date,
    IN p_like_number integer,
    IN p_rating integer
)
BEGIN
    INSERT INTO dish_comment (comment_id, window_id, dish_name, user_id, context, picture, publish_time, like_number, rating)
    VALUES (p_comment_id, p_window_id, p_dish_name, p_user_id, p_context, p_picture, p_publish_time, p_like_number, p_rating);
END //
delimiter ;

-- 查询存储过程
drop procedure if exists get_dish_comment_by_id;
delimiter //
CREATE PROCEDURE get_dish_comment_by_id (
    IN p_comment_id VARCHAR(18)
)
BEGIN
    SELECT *
    FROM dish_comment
    WHERE comment_id = p_comment_id;
END //
delimiter ;

-- 修改的存储过程
drop procedure if exists update_dish_comment;
delimiter //
CREATE PROCEDURE update_dish_comment (
    IN p_comment_id varchar(18),
    IN p_context varchar(255),
    IN p_rating integer,
    IN p_picture VARCHAR(255)
)
BEGIN
    UPDATE dish_comment SET context = p_context, rating = p_rating, picture = p_picture WHERE comment_id = p_comment_id;
END //
delimiter ;

-- 删除的存储过程
DROP PROCEDURE IF EXISTS delete_dish_comment;
DELIMITER //
CREATE PROCEDURE delete_dish_comment (
    IN p_comment_id VARCHAR(18)
)
BEGIN
    DELETE FROM dish_comment WHERE comment_id = p_comment_id;
END //
DELIMITER ;

-- 查询某个用户的所有评论（仿评课社区）
DROP PROCEDURE IF EXISTS search_dish_comment_by_user;
DELIMITER //
CREATE PROCEDURE search_dish_comment_by_user(
    IN p_user_id varchar(18)
)
BEGIN
    SELECT *
    FROM dish_comment
    WHERE user_id = p_user_id;
END //
DELIMITER ;

-- 获取所有评论
DROP PROCEDURE IF EXISTS get_all_dish_comments_from_window;
DELIMITER //
CREATE PROCEDURE get_all_comments_from_window (
    IN p_window_id varchar(18)
)
BEGIN
    SELECT *
    FROM dish_comment
    WHERE window_id = p_window_id;
END //
DELIMITER ;

-- 点赞数量+1
DROP PROCEDURE IF EXISTS add_like_number;
DELIMITER //
CREATE PROCEDURE add_like_number (
    IN p_comment_id varchar(18)
)
BEGIN
    UPDATE dish_comment
    SET like_number = like_number + 1
    WHERE comment_id = p_comment_id;
END //
DELIMITER ;

-- 点赞数量-1
DROP PROCEDURE IF EXISTS cancel_like_number;
DELIMITER //
CREATE PROCEDURE cancel_like_number (
    IN p_comment_id varchar(18)
)
BEGIN
    UPDATE dish_comment
    SET like_number = like_number - 1
    WHERE comment_id = p_comment_id;
END //
DELIMITER ;
