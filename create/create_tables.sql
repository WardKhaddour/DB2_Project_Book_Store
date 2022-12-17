use book_store;

drop procedure if exists createTables;

delimiter //

create procedure createTables()
begin

drop table if exists book_category;

drop table if exists book_lang;

drop table if exists book;
 
drop table if exists author;
 
drop table if exists category;
  
drop table if exists lang;
  
create table author(
  id int primary key auto_increment,
  name varchar(200) not null
);

create table book(
  id int primary key auto_increment,
  name varchar(200) not null,
  description varchar(500),
  release_date date,
  author_id int not null,
  language varchar(50) not null,
  category varchar(50) not null,
  rateAvg float default 0,
  rateCount int default 0,
  rate varchar(20) default "",
  quantity int default 10,
  index(name),
  constraint foreign key(author_id) references author(id)
);

create table category(
  id int primary key auto_increment,
  name varchar(200) not null,
  index(name)
);

create table lang(
  id int primary key auto_increment,
  name varchar(200) not null
);

create table book_lang(
  id int primary key auto_increment,
  book_id int not null,
  language_id int not null,
  constraint foreign key(book_id) references book(id),
  constraint foreign key(language_id) references lang(id)
);

create table book_category(
  id int primary key auto_increment,
  book_id int not null,
  category_id int not null,
  constraint foreign key(book_id) references book(id),
  constraint foreign key(category_id) references category(id)
);

end //

delimiter ;

