.open new2.db

create table X (
id_num integer,
id_str text
);
insert into X (id_num, id_str)
values
(1,’A’),
(2,’B’),
(3,’C’),
(4,’D’),
(5,’E’);


.schema
select * from X;

select a.id_num || ',' || b.id_num || ',' || c.id_num, a.id_str || ',' || b.id_str || ',' || c.id_str from X as a, X as b, X as c where a.id_num<b.id_num and a.id_num<c.id_num and b.id_num<c.id_num ;