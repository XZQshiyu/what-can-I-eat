use what_can_I_eat;
-- 创建存储过程
drop procedure if exists add_fav;
delimiter //
CREATE PROCEDURE add_fav (
    IN p_fav_id varchar(18),
    IN p_comment_id varchar(18),
    IN p_user_id varchar(18)
)
BEGIN
    INSERT INTO fav (fav_id, user_id, comment_id)
    VALUES (p_fav_id, p_user_id, p_dish_comment_id);
END //
delimiter ;

-- 查询的存储过程
drop procedure if exists get_fav_by_id;
delimiter //
CREATE PROCEDURE get_fav_by_id (
    IN p_fav_id VARCHAR(18)
)
BEGIN
    SELECT *
    FROM fav
    WHERE fav_id = p_fav_id;
END //
delimiter ;


-- 删除的存储过程
DROP PROCEDURE IF EXISTS delete_fav;
DELIMITER //
CREATE PROCEDURE delete_fav (
    IN p_fav_id VARCHAR(18)
)
BEGIN
    DELETE FROM fav WHERE fav_id = p_fav_id;
END //
DELIMITER ;

-- 查询某个用户的所有收藏（仿评课社区）
DROP PROCEDURE IF EXISTS search_fav_by_user;
DELIMITER //
CREATE PROCEDURE search_fav_by_user(
    IN p_fav_id varchar(18)
)
BEGIN
    SELECT *
    FROM fav
    WHERE fav_id = p_fav_id;
END //
DELIMITER ;

-- -- 获取所有回复
-- DROP PROCEDURE IF EXISTS get_all_replies;
-- DELIMITER //
-- CREATE PROCEDURE get_all_replies ()
-- BEGIN
--     SELECT * FROM dish_reply;
-- END //
-- DELIMITER ;
