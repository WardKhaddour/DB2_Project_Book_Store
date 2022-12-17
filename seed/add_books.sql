use book_store;

drop procedure if exists addBooks;

delimiter //

create procedure addBooks()
begin
insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 1",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    1,
    "2020-1-1",
    "English",
    "history"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 2",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    3,
    "2003-4-12",
    "Arabic",
    "scince"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 3",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    1,
    "1990-2-5",
    "French",
    "IT"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 4",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    4,
    "2022-12-1",
    "English",
    "math"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 5",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    2,
    "2010-1-1",
    "Arabic",
    "Physics"
  );


insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 6",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    1,
    "2020-1-1",
    "English",
    "history"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 7",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    3,
    "2003-4-12",
    "Arabic",
    "scince"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 8",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    1,
    "1990-2-5",
    "French",
    "IT"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 9",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    4,
    "2022-12-1",
    "English",
    "math"
  );

insert into
  book(
    name,
    description,
    author_id,
    release_date,
    language,
    category
  )
values
  (
    "Book 10",
    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores alias quas labore praesentium aliquam quis doloribus voluptate optio error neque.",
    2,
    "2010-1-1",
    "Arabic",
    "Physics"
  );
end;

delimiter //

