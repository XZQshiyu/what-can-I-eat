use what_can_I_eat;
-- 创建窗口存储过程
drop procedure if exists add_window;
delimiter //
CREATE PROCEDURE add_window (
    IN p_window_id VARCHAR(18),
    IN p_window_name VARCHAR(30),
    IN p_canteen_id VARCHAR(30),
    IN p_window_description VARCHAR(100)
)
BEGIN
    INSERT INTO food_window (window_id, window_name, canteen_id, window_description)
    VALUES (p_window_id, p_window_name, p_canteen_id, p_window_description);
END //
delimiter ;

-- 查询窗口的存储过程
drop procedure if exists get_window_by_id;
delimiter //
CREATE PROCEDURE get_window_by_id (
    IN p_window_id VARCHAR(18)
)
BEGIN
    SELECT fw.window_id, fw.window_name, ca.canteen_name, fw.window_description
    FROM food_window fw
    JOIN canteen ca ON fw.canteen_id = ca.canteen_id
    WHERE window_id = p_window_id;
END //
delimiter ;

-- 修改窗口的存储过程
drop procedure if exists update_window;
delimiter //
CREATE PROCEDURE update_window (
    IN p_window_id VARCHAR(18),
    IN p_window_name VARCHAR(30),
    IN p_canteen_id VARCHAR(30),
    IN p_window_description VARCHAR(100)
)
BEGIN
    UPDATE food_window SET window_name = p_window_name, canteen_id = p_canteen_id, window_description = p_window_description WHERE window_id = p_window_id;
END //
delimiter ;

-- 删除窗口的存储过程
DROP PROCEDURE IF EXISTS delete_window;
DELIMITER //
CREATE PROCEDURE delete_window (
    IN p_window_id VARCHAR(18)
)
BEGIN
    DELETE FROM food_window WHERE window_id = p_window_id;
END //
DELIMITER ;

-- 模糊查询窗口
DROP PROCEDURE IF EXISTS search_window;
DELIMITER //
CREATE PROCEDURE search_window(
    IN p_window_id VARCHAR(18),
    IN p_window_name VARCHAR(30),
    IN p_canteen_id VARCHAR(30)
)
BEGIN
    SELECT fw.window_id, fw.window_name, ca.canteen_name, fw.window_description
    FROM food_window fw
    JOIN canteen ca ON fw.canteen_id = ca.canteen_id
    WHERE (window_id = p_window_id OR p_window_id IS NULL)
    AND (p_window_id IS NULL OR window_id LIKE CONCAT('%', p_window_id, '%'))
    AND (p_window_name IS NULL OR window_name LIKE CONCAT('%', p_window_name, '%'));
END //
DELIMITER ;

-- 获取该餐厅所有窗口信息的存储过程
DROP PROCEDURE IF EXISTS get_windows_by_canteen;
DELIMITER //
CREATE PROCEDURE get_windows_by_canteen (
    IN p_canteen_id VARCHAR(30)
)
BEGIN
    SELECT fw.window_id, fw.window_name, ca.canteen_name, fw.window_description
    FROM food_window fw
    JOIN canteen ca ON fw.canteen_id = ca.canteen_id
    WHERE fw.canteen_id = p_canteen_id;
END //
DELIMITER ;

-- 获取所有窗口的信息
DROP PROCEDURE IF EXISTS get_all_windows;
DELIMITER //
CREATE PROCEDURE get_all_windows ()
BEGIN
    SELECT * FROM food_window;
END //
DELIMITER ;