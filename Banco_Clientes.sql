create table if not exists clientes(
Id int not null auto_increment unique, /* fazendo com que o id sejaunico e não nulo, vai ser adicionado pelo sistema*/
Nome varchar(35) not null,	 	/*não pode ser nulo*/
CPF_CNPJ varchar(15)  not null ,		/*não pode ser nulo, foi colocado varchar para poder acresentar pontos e trasos*/
Endereco varchar(35) not null,	/*não pode ser nulo*/
Ponto_Referencia text,			/*esse campo e para alguma anotação de endereço */
Telefone int not null,  		/*não pode ser nulo*/

primary key (id)
)default char set utf8;
/* criado somente essas colunas porque depois pode ser implemetado mais*/

rename table clientes to Banco_Clientes; /* Decidi mudar o nome da tabela*/

alter table banco_clientes /* inserido alguns colunas a mais*/
add column Bairo varchar(15) not null after endereco,
add column cidade varchar(15) not null after bairo, 
add column Pais varchar(15) not null after cidade,
add column Nascionalidade enum('Brasileiro(a)', 'Estrangeiro(a)') default 'Brasileiro(a)' not null after nome;

alter table banco_clientes
modify column CPF_CNPJ varchar(20) not null unique, /*coloquei o CPF/CNPJ como unico para não aver duplicidades no banco*/
modify column Telefone varchar(20) not null ; /*coloquei o numero com o mesmos constrain do CPF/CNPJ por ser descritivo*/

select * from  Banco_clientes; /*Vizualizar a tabela*/
desc banco_clientes; /*Mostrar campos da tabela*/

insert into banco_clientes 
/* para colocar um valor em um cmpo especifico colocar o campor aqui entre ()*/
(nome,nascionalidade, CPF_CNPJ , endereco,bairo,cidade,pais,telefone)
values
('Loja que vender coisas', 'Brasileiro(a)', '61.699.016/0001-29', 'Rua Qualquer', 'Novo', 'A mesma', 'Brasil', '(68) 92422-5920' ),
('Fulaninho teste de banco', 'Brasileiro(a)', '631.123.710-54', 'Rua Qualquer', 'Novo', 'A mesma', 'Brasil', '00000000001' );






