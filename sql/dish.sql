use what_can_I_eat;
-- 创建菜品存储过程
drop procedure if exists add_dish;
delimiter //
CREATE PROCEDURE add_dish (
    IN p_dish_id VARCHAR(18),
    IN p_dish_name varchar(30),
    IN p_context varchar(255),
    IN p_image VARCHAR(255),
    IN p_price float,
    IN p_dish_location varchar(30), -- dish_location是主键吗？
    IN p_like_number integer,
    IN p_dislike_number integer,
    IN p_favorite_number integer
)
BEGIN
    INSERT INTO dish (dish_id, dish_name, context, image, price, dish_location, like_number, dislike_number, favorite_number)
    VALUES (p_dish_id, p_dish_name, p_context, p_image, p_price, p_dish_location, p_like_number, p_dislike_number, p_favorite_number);
END //
delimiter ;

-- 查询菜品的存储过程
drop procedure if exists get_dish_by_id;
delimiter //
CREATE PROCEDURE get_dish_by_id (
    IN p_dish_id VARCHAR(18)
)
BEGIN
    SELECT * FROM dish WHERE dish_id = p_dish_id;
END //
delimiter ;

-- 修改餐厅的存储过程
drop procedure if exists update_dish;
delimiter //
CREATE PROCEDURE update_dish (
    IN p_dish_id VARCHAR(18),
    IN p_dish_name varchar(30),
    IN p_context varchar(255),
    IN p_image VARCHAR(255),
    IN p_price float,
    IN p_dish_location varchar(30), -- dish_location是主键吗？
    IN p_like_number integer,
    IN p_dislike_number integer,
    IN p_favorite_number integer
)
BEGIN
    UPDATE dish SET dish_name = p_dish_name, context = p_context, image = p_image, price = p_price, dish_location = p_dish_location, like_number = p_like_number, dislike_number = p_dislike_number, favorite_number = p_favorite_number
    WHERE dish_id = p_dish_id;
END //
delimiter ;

-- 删除菜品的存储过程
DROP PROCEDURE IF EXISTS delete_dish;
DELIMITER //
CREATE PROCEDURE delete_dish (
    IN p_dish_id VARCHAR(18)
)
BEGIN
    DELETE FROM dish WHERE dish_id = p_dish_id;
END //
DELIMITER ;

-- --模糊查询菜品
-- DROP PROCEDURE IF EXISTS search_dish;
-- DELIMITER //
-- CREATE PROCEDURE search_dish(
--     IN p_dish_id VARCHAR(18),
--     IN p_dish_name varchar(30),
--     IN p_tag varchar(30)
-- )
-- BEGIN
--     SELECT dish_id, dish_name, context, 
--     FROM canteen
--     WHERE canteen_location = p_canteen_location
--     AND (p_canteen_id IS NULL OR canteen_id LIKE CONCAT('%', p_canteen_id, '%'))
--     AND (p_canteen_name IS NULL OR canteen_name LIKE CONCAT('%', p_canteen_name, '%'));
-- END //
-- DELIMITER ;