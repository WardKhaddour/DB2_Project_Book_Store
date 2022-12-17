use book_store;

drop procedure if exists getBooksByAuthorID;

create procedure getBooksByAuthorID (in id int)

select book.name as book_name, book.author_id 
from book 
inner join author 
on book.author_id = author.id and book.author_id = id;


call getBooksByAuthorID(2);