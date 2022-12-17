use book_store;

drop procedure if exists buyBook;

delimiter //

create procedure buyBook (in bookId int)

begin
  declare foundID, availableBooks int;
  select id into foundID from book where id = bookId;

  select quantity into availableBooks from book where id = bookId;

  if isnull(foundID) then 
    select "Please provide a valid ID";
  elseif availableBooks < 1 then
    select "No available books!";
  else
    update book set quantity = quantity - 1 where id = bookId;
    select "Book bought successfully";
  end if;

end //

delimiter ;

