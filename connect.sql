create table users(
    id serial primary key,
    name varchar(255),
    last_name varchar(255),
    email varchar(255),
    work_id int
);

create table works(
    id serial primary key ,
    work_name varchar(255),
    status bool
);

create table timings(
    id serial primary key,
    code varchar(255),
    track int,
    user_id int,
    work_id int

);

insert into users (name, last_name, email)
    values ('Dmitriy', 'Gulyaev', 'dmitriygulyaev@mail.ru'),
	('Artem','Murashev','artemmurashev@mail.ru'),
	('Ilya','Starshov','ilyastarshev@mail.ru'),
	('Pavel','Korchagin','pavelkorchagin@mail.com'),
	('Dima','Gulaev','dimagulaev@mail.com'),
  ('Nikita','Kuznetsov','nikitakuznetsov@mail.ru'),
  ('Sergei','Stepan','sergeistepan@gmail.com'),
  ('Danil','Ponamarev','danilponamarev@gmail.com'),
  ('Oleg','Usov','olegusov@gmail.com'),
  ('Filipp','Lui','luifilipp@gmail.com');
	
select id, name, last_name from users where name = 'Dmitriy' and id >= 5 limit 1;

update users set name = 'Maksim' and last_name = 'Sergeev' and email = 'maksimsergeev@gmail.com' where id = 6;

select email from users where id in (1,3,5,7,9);

delete from users where id = 7;

insert into users (name, last_name, email) 
values ('Sergey', 'Stepanets', 'sergeystepanets@mail.ru');

select name, last_name where (id <= 2 or id >= 6) and name = 'Maksim';
