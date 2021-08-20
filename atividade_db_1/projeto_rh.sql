create database db_servico_rh;

use db_servico_rh;

create table tb_funcionario(
	id bigint auto_increment, 
	nome varchar (255) not null,
	idade int not null,
	salario float,
	primary key(id)
);

select * from tb_funcionario;

insert into tb_funcionario (nome, idade, salario) values ("Paula", 	29, 5000.00);
insert into tb_funcionario (nome, idade, salario) values ("Marina", 58, 9000.00);
insert into tb_funcionario (nome, idade, salario) values ("Fabricio", 17, 1100.00);
insert into tb_funcionario (nome, idade, salario) values ("Benicio", 20, 1800.00);


select * from tb_funcionario;

select * from tb_funcionario where salario > 2000.00;
select * from tb_funcionario where salario < 2000.00;

update tb_funcionario set nome = "Virginia" where id = 2;






