use book_store;

drop procedure if exists addNewBook;

delimiter //

create procedure addNewBook (
	in author_id int,
	in name varchar(200),
	in language varchar(50),
	in category varchar(50),
	in release_date date,
	in description varchar(500))

begin
	set description = IFNULL(description, 'No Description');
	set release_date = IFNULL(release_date, now());

	insert into book(name,description,author_id,release_date,language,category) values( name,description,author_id,release_date,language,category);

end //

delimiter ;

