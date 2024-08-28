use what_can_I_eat;
--（department）
-- 创建餐厅存储过程
drop procedure if exists add_canteen;
delimiter //
CREATE PROCEDURE add_canteen (
    IN p_canteen_id VARCHAR(18),
    IN p_canteen_location VARCHAR(30),
    IN p_canteen_name VARCHAR(30)
)
BEGIN
    INSERT INTO canteen (canteen_id, canteen_location, canteen_name)
    VALUES (p_canteen_id, p_canteen_location, p_canteen_name);
END //
delimiter ;

-- 查询餐厅的存储过程
drop procedure if exists get_canteen_by_id;
delimiter //
CREATE PROCEDURE get_canteen_by_id (
    IN p_canteen_id VARCHAR(18)
)
BEGIN
    SELECT * FROM canteen WHERE canteen_id = p_canteen_id;
END //
delimiter ;

-- 修改餐厅的存储过程
drop procedure if exists update_canteen;
delimiter //
CREATE PROCEDURE update_canteen (
    IN p_canteen_id VARCHAR(18),
    IN p_canteen_name VARCHAR(30),
    IN p_canteen_location VARCHAR(30)
)
BEGIN
    UPDATE canteen SET canteen_name = p_canteen_name, canteen_location = p_canteen_location WHERE canteen_id = p_canteen_id;
END //
delimiter ;

-- 删除餐厅的存储过程
DROP PROCEDURE IF EXISTS delete_canteen;
DELIMITER //
CREATE PROCEDURE delete_canteen (
    IN p_canteen_id VARCHAR(18)
)
BEGIN
    DELETE FROM canteen WHERE canteen_id = p_canteen_id;
END //
DELIMITER ;

--模糊查询餐厅
DROP PROCEDURE IF EXISTS search_canteen;
DELIMITER //
CREATE PROCEDURE search_canteen(
    IN p_canteen_id VARCHAR(18),
    IN p_canteen_name VARCHAR(30),
    IN p_canteen_location VARCHAR(30)
)
BEGIN
    SELECT canteen_id, canteen_name, canteen_location
    FROM canteen
    WHERE canteen_location = p_canteen_location
    AND (p_canteen_id IS NULL OR canteen_id LIKE CONCAT('%', p_canteen_id, '%'))
    AND (p_canteen_name IS NULL OR canteen_name LIKE CONCAT('%', p_canteen_name, '%'));
END //
DELIMITER ;