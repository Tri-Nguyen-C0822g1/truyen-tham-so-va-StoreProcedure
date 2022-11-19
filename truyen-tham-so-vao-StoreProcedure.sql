use classicmodels;


-- tham so dang IN
delimiter //
create procedure getCusById
(in cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end //
delimiter ;

call getCusbyId(103);

delimiter //
drop procedure getCusById //

create procedure getCusById
(in cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end //

call getCusById(103);


-- tham so dang OUT

delimiter //
create procedure GetCusCountByCity(
in in_city varchar(50),
out total int
)
begin 
select count(customerNumber)
into total
from customers
where city = in_city;
end //
delimiter ;

call GetCusCountByCity('lyon', @total);


-- tham so dang INOUT;
delimiter //
create procedure SetCounter(
inout counter int,
in inc int
)
begin 
set counter = counter + inc;
end //
delimiter ;

set @counter = 2;
call setcounter (@counter, 3);

select @counter;


