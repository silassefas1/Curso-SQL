create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga_horaria int unsigned,
totaulas int unsigned,
ano year default '2022'
) default charset = utf8;

alter table cursos
add column idcurso int  first ;

alter table cursos
add primary key (idcurso);

describe cursos;

/* teste para criar e apagar tabela*/
create table if not exists test(
id int not null,
nome varchar (30),
idade int

) default char set = utf8;

insert into test value
('1', 'Maria', '22'),('2', 'Pedro', '22'),('3', 'Jao', '22');
select * from test;

drop table if exists test;


