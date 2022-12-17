use book_store;

drop function if exists getTopRatedBook;

create function getTopRatedBook() returns varchar(300)
deterministic
begin
  
  declare book_name varchar(300);
  declare book_rate_avg float;
  declare book_rate_count int;
  select name, rateAvg, rateCount into book_name,book_rate_avg,book_rate_count from book where rateAvg = (select max(rateAvg) from book);

  return concat(book_name, " is the top rated book, having ", book_rate_avg, " rate from ", book_rate_count, " rates!");
end

delimiter //


