use book_store;

drop trigger if exists category_BEFORE_INSERT;
delimiter //

create trigger category_BEFORE_INSERT
before insert on category for each row
begin
  set new.name = replace(new.name, ' ', '');
end //

delimiter ;