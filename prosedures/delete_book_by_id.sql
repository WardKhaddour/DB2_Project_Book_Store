use book_store;

drop procedure if exists deleteBookByID;

delimiter //

create procedure deleteBookByID (in bookId int)

begin
  declare foundID INT;
  select id into foundID from book where id = bookId;

  if(isnull(foundID)) then 
    select "Please provide a valid ID";
  
  else
    delete from book where id = bookId;
    select "Book deleted successfully";
  end if;


end //

delimiter ;

call deleteBookByID(3);