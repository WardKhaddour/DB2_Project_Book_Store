use book_store;

drop procedure if exists rateBook;

delimiter //

create procedure rateBook (in bookId int, in newRate int)

begin
  declare foundID int;
  select id into foundID from book where id = bookId;

  if isnull(foundID) then 
    select "Please provide a valid ID";
  else
    update book set rateCount = rateCount + 1 where id = bookId;
    update book set rateAvg = rateAvg + (newRate - rateAvg) / rateCount where id = bookId;
    select "Book rated successfully";
  end if;

end //

delimiter ;

call rateBook(3, 2);