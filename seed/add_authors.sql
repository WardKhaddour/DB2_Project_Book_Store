use book_store;

drop procedure if exists addAuthors;

delimiter //

create procedure addAuthors()
begin
insert into author(name) values ("author 1");

insert into author(name) values ("author 2");

insert into author(name) values ("author 3");

insert into author(name) values ("author 4");

insert into author(name) values ("author 5");

end;

delimiter //

