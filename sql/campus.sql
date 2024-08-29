use what_can_I_eat;

-- 创建校区存储过程
drop procedure if exists add_campus;
delimiter //
CREATE PROCEDURE add_campus(
    IN p_campus_id VARCHAR(18),
    IN p_campus_name VARCHAR(30)
)
BEGIN
    insert into campus (campus_id, campus_name) values (p_campus_id, p_campus_name);
END //
delimiter ;

-- 查询校区存储过程
drop procedure if exists get_campus;
delimiter //
CREATE PROCEDURE get_campus(
    IN p_campus_id VARCHAR(18)
)
BEGIN
    SELECT * FROM campus where campus_id = p_campus_id;
END //
delimiter ;

-- 修改校区的存储过程
drop procedure if exists update_campus;
delimiter //
CREATE PROCEDURE update_campus(
    IN p_campus_id VARCHAR(18),
    IN p_campus_name VARCHAR(30)
)
BEGIN
    update campus SET campus_name = p_campus_name WHERE campus_id = p_campus_id;
END //
delimiter ;

-- 删除校区的存储过程
drop procedure if exists delete_campus;
DELIMITER //
CREATE PROCEDURE delete_campus(
    IN p_campus_id VARCHAR(18)
)
BEGIN
    DELETE FROM campus where campus_id = p_campus_id;
END //
DELIMITER ;

-- 模糊查询校区
DROP PROCEDURE IF EXISTS search_campus;
DELIMITER //
CREATE PROCEDURE search_campus(
    IN p_campus_id VARCHAR(18),
    IN p_campus_name VARCHAR(30)
)
BEGIN
    SELECT campus_id, campus_name
    FROM campus
    WHERE (p_campus_id IS NULL OR campus_id LIKE CONCAT('%', p_campus_id, '%'))
    AND (p_campus_name IS NULL OR campus_name LIKE CONCAT('%', p_campus_name, '%'));
END //
DELIMITER ;

-- 获取该校区所有餐厅信息的存储过程
DROP PROCEDURE IF EXISTS get_canteens_by_campus;

DELIMITER //

CREATE PROCEDURE get_canteens_by_campus (
    IN p_campus_name VARCHAR(30)
)
BEGIN
    SELECT * 
    FROM canteen 
    WHERE canteen_location = p_campus_name;
END //

DELIMITER ;