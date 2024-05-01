/* CREATE SECTION */

create table users(id  serial primary key, first_name varchar(20), last_name varchar(30), email varchar(70))
create table posts(id  serial primary key, title varchar(20), text varchar(200), creator_id int REFERENCES users (id))
create table likes(id  serial primary key,user_id int  REFERENCES users (id),post_id int REFERENCES posts (id))

/* INSERT SECTION */

insert into users(first_name , last_name, email) values ('Jose', 'Lopez', 'jose@gmail.com'),('Daniel', 'Cerrano', 'daniel@gmail.com'),('Maria', 'Bustamante', 'maria@gmail.com')
insert into posts(title,text) values ('Cocina facil', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt molestiae, natus, quas, tempore  soluta! Iure labore laudantium autem?
'),('Temporada alta', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt molestiae, natus, quas, tempore  soluta! Iure labore laudantium autem?
'),('Juegos', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt molestiae, natus, quas, tempore  soluta! Iure labore laudantium autem?
'),('Ciencia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt molestiae, natus, quas, tempore  soluta! Iure labore laudantium autem?
'),('Slud', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt molestiae, natus, quas, tempore  soluta! Iure labore laudantium autem?
')
insert into likes(user_id, post_id) values (1,2),(1,1),(2,1),(1,2),(3,1)

/* SELECT SECTION */

select * from posts
select * from users
select * from likes

/* UPDATE SECTION */

update posts set creator_id = 1 where id = 1

/* Trae todos los posts, con la información de los usuarios que les dieron like. */


select  users.first_name as Ususario, likes.post_id as Likes , posts.title as Titulo from users join likes on likes.user_id = users.id join posts on posts.id=likes.post_id

/*Trae todos los posts y la información del usuario del campo CREATOR_ID*/

select users.first_name as creador , posts.title as post, posts.text as descripcion from users join posts on posts.creator_id = users.id 







/* DROP SECTION */

drop table likes
drop table posts
drop table users
