use cadastro;
desc gafanhotos;
alter table gafanhotos add cursopreferido int;
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso); /*Adiconamdo a extrager key*/
select * from gafanhotos; /*Consultando a tabela*/
select* from cursos; /*Consultando a tabela*/

update gafanhotos set cursopreferido = '6' where id = '1'; /*fazendo o relacionamento de forma manual*/

delete from cursos /*Não e possivel apagar porque o registro tem relacionamento com outra tabela e deixa o banco inconsistente*/
where idcurso ='6';


/*---------------------------------------------------------------*/

select nome,cursopreferido from gafanhotos; /*Mostra a tabela*/
select idcurso, nome from cursos
order by idcurso; /*Mostra a tabela*/
 /*Fazer o join relacionando a chave primaria com a chave estrangeira apenas dos que tem relação*/
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;
/*Fazer o join relacionando a chave primaria com a chave estrangeira de todos os registros dando preferencia aos da esquerda */
/*Relaciona Gafanhotos com Cursos*/
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos left outer join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

/*Fazer o join relacionando a chave primaria com a chave estrangeira de todos os registros dando preferencia aos da Direita */
/*Relaciona Cursos com Gafanhotos*/
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos right outer join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;
