use what_can_I_eat;

--获取所有信息
drop procedure if exists GetAllCampus;
delimiter //
create procedure GetAllCampus()
BEGIN
    select campus_name;
END //
delimiter ;

--增
drop procedure if exists AddCampus;
delimiter //
create procedure if exists AddCampus(
    IN p_campus_name varchar(30)
) 
begin 
    insert into campus (campus_name)
    values (p_campus_name);
end //
delimiter ;

--改
drop procedure if exists UpdateCampus;
delimiter //
create procedure if exists UpdateCampus(
    IN p_campus_name varchar(30),
    IN n_campus_name varchar(30)
    -- 输入一个旧的名字(p)用于查找，一个新的名字(n)用来修改
)
begin
    if exists (select 1 from campus where campus_name = p_campus_name) then
        set campus_name = n_campus_name;
    else 
        set message_text = 'Cannot find campus' ;
        -- 报错
    end if;
end //
delimiter ;

--删
drop procedure if exists DeleteCampus;
delimiter //
create procedure DeleteCampus(
    IN p_campus_name varchar(30)
)
begin
    delete from campus
    where p_campus_name = campus_name;
end //
delimiter ;

--查
drop procedure GetCampusByName;
delimiter //
create procedure GetCampusByName(
    IN p_campus_name varchar(30)
)
begin
    select * from campus
    where p_campus_name is null OR p_campus_name like concat('%', p_campus_name, '%')
end //
delimiter ;