use book_store;

drop procedure if exists buyAllBooksInCategory;

delimiter //

create procedure buyAllBooksInCategory (in catId int)

begin
  declare bookId int;
  declare ok int default 0;

  declare get_cur cursor for select id from book where category in (select name from category where id = catId);
  declare continue handler for sqlstate '02000'
  set ok = 1;

  declare continue handler for sqlstate '23000'
  set ok = 2;

  open get_cur;
  lbl: loop
  if ok = 1 then 
    select "Finish getting data";
    leave lbl;
  end if;

  if ok = 2 then 
    select "Something went wrong";
    leave lbl;
  end if;

  if ok = 0 then 
  fetch get_cur into bookID;
  call buyBook(bookID);
  end if;
  end loop;
  close get_cur;

end //

delimiter ;

