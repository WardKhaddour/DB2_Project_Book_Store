use book_store;

drop procedure if exists addCategories;

delimiter //

create procedure addCategories()
begin

  insert into category(name) values ('history');
  insert into category(name) values ('scince');
  insert into category(name) values ('IT');
  insert into category(name) values ('math');
  insert into category(name) values ('Physics');

end;

delimiter //

