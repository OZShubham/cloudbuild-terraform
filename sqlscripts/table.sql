CREATE TABLE mytable (
   id serial primary key,
   name varchar(255) NOT NULL,
   date_created timestamp default now()
);
