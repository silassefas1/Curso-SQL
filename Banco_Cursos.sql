insert into cursos values /*inserindo dados com alguns erros */

('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmo','Logica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução a Linguagem Java','10','29','2000'),
('6','MySQL','Banco de dados MySQL','30','15','2016'),
('7','Word','Curso completo de word','40','30','2016'),
('8','Sapateado','Danças Romanticas','40','30','2018'),
('9','Cozinha Àrabe','Aprender a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar Polemica e ganhar incristos','5','2','2018');
/*Modificando um dado por linha*/
update cursos /*solicita atualização de uma tabela*/
set nome = 'HTML 5' /*define o campor a ser atualizado e o novo dado*/
where idcurso = '1'; /*filtro para onde atualizar(qual linha aualizar), preferencial primari key*/

select * from cursos; /*mostrat tabela*/
/*Modificando dois dado por linha*/
update cursos set nome = 'PHP', ano = '2015' where idcurso = 4;

update cursos set nome = 'Java', ano = '2015', carga_horaria = '40' where idcurso = 5 limit  1;

/*Apagando uma linhas*/
delete from cursos where ano = '2018' limit 1;

truncate table cursos;
