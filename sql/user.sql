use what_can_I_eat;

-- 获取所有实体信息的存储过程
drop procedure if exists GetAllEntity; 
delimiter //
CREATE PROCEDURE GetAllEntity()
BEGIN
    SELECT * FROM user;
END //
delimiter ;

-- 添加用户
drop procedure if exists AddUser;
delimiter //
create procedure AddUser(
    IN p_user_id varchar(18),
    IN p_user_name varchar(30),
    IN p_introduction varchar(200),
    IN p_head_portrait VARCHAR(255)
)
-- 后续添加默认个人简介和头像
BEGIN
    -- 异常处理的条件语句在这里添加
    INSERT INTO user (user_id, user_name, introduction, head_portrait)
    VALUES (p_user_id, p_user_name, p_introduction, p_head_portrait);
END //
delimiter ;

-- 修改用户信息的储存过程
-- 除了uid其他都可以改,单向修改时其他项输入原值
drop procedure if exists UpdateUser;
delimiter //
CREATE PROCEDURE UpdateUser(
    IN p_user_id varchar(18),
    IN p_user_name varchar(30),
    IN p_introduction varchar(200),
    IN p_head_portrait VARCHAR(255)
)
BEGIN 
    Update user
    SET user_name = p_user_name, introduction = p_introduction, head_portrait= p_head_portrait 
    WHERE user_id = p_user_id ;
END //
delimiter ;

-- 删除用户信息的存储过程
drop procedure if exists DeleteUser;
delimiter //
CREATE PROCEDURE DeleteUser(
    IN p_user_id integer
)
-- 使用uid进行删除
BEGIN
    DELETE FROM user
    WHERE user_id = p_user_id;
END //
delimiter ;

-- 模糊查找用户信息的存储过程
DROP PROCEDURE IF EXISTS search_user;
DELIMITER //
CREATE PROCEDURE search_user(
    IN p_user_name VARCHAR(30),
    IN p_user_id varchar(30)
)
-- 根据用户名或者uid进行查询
BEGIN
    SELECT *
    FROM user
    WHERE (user_name IS NULL OR user_name LIKE CONCAT('%', p_user_name, '%'))
    AND (user_id IS NULL OR user_id LIKE CONCAT('%', p_user_id, '%'));
END //
DELIMITER ;

