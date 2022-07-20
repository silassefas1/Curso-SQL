use cadastro;

select carga,count(nome) from cursos
group by carga; /*Agrupar os cursos com a mesma carga e conta a sua quantidade*/

select carga,count(nome) from cursos
group by carga
having count(carga) > 3;/*Mostrar so quando uma quantida for maior*/

select avg(carga) from cursos; /*media de oras dos cursos na base*/

select carga, count(*) from cursos /*Selecionando os cursos e contando*/
where ano > 2015 /*Filtro dos cursos por ano*/
group by carga /*Agrupando eles por carga horaria*/
having carga > (select avg(carga) from cursos); /*Aqui o select dentro do parentese vai manter os dados sempre atualizados*/


/*Exercicios*/
/*tabela gafanhotos*/
/*Lista de profissoes e suas quantidades*/
select profissao,count(profissao) from gafanhotos
group by profissao;

/*Saber quantos homens e quantas mulhers nasceram apos 1/jan/2005*/
select sexo, count(sexo) from gafanhotos
where nascimento >= '2005-01-01'
group by sexo;

/*Lista com nascidos fora do brasil, mostrando pais de origem e o total de pessoas por origem, mostra penas os que tenham 3 pessoas ou mais nascidas la*/

select nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) >= 3;

/*Lista agrupada pela altura, mostrandi quantos pesssam mais de 100kg e estão acima da media de altura */



select altura,peso from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);


