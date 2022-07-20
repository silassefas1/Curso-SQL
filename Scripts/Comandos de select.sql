select distinct nacionalidade from gafanhotos
order by nacionalidade; /*Mostar campos distintos*/


select count(*) from cursos where carga > 40; /*Cotar campos*/

select count(*) from gafanhotos where sexo = 'F';/*Cotar campos*/

select max(totaulas) from cursos where ano = 2016;/*mostrar maior valor*/

select nome, min(totaulas) from cursos where ano = 2016;/*mostrar menor valor e nome*/

select sum(totaulas) from cursos where ano = 2016; /*soma valores de um campor*/

select avg(totaulas) from cursos where ano = 2016;/*Media de campos*/


/*Exercicios*/

select nome from gafanhotos where sexo = 'F'; /*Lista com nome de todas as mulheres do banco*/
select * from gafanhotos where nascimento >= '2000-01-01'and nascimento <= '2015-12-31' order by nascimento;/*lista de todos que nasceram entre 2000-01-01 e 2015-12-31 */
select nome, profissao from gafanhotos where profissao = 'programador'; /*Nome de todos os que trabalham com programação*/
select nome from gafanhotos where nascionalidade = 'Brasil' and nome = 'J%';


desc gafanhotos;
select * from gafanhotos;