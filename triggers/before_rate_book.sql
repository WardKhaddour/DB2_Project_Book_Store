use book_store;

drop trigger if exists book_BEFORE_RATE;
delimiter //

create trigger book_BEFORE_RATE
before update on book for each row
begin
  if(new.rateAvg < 2) then set new.rate = "Bad";
  elseif (new.rateAvg > 3) then set new.rate = "Good";
  elseif(new.rateAvg > 4) then set new.rate = "Amazing!";
  end if;
end //

delimiter ;