insert into departamento
values (1, 'Pesquisa', null),
(2, 'Construção', null),
(3, 'Computação', null)

select * from departamento

------------------------------------------

insert into funcionario
values (1, 'Maria', 'Rua Amari', '29/11/2018', 'M', 100, 1, 1),
(2, 'Roberto', 'Rua Amari', '29/11/2018', 'M', 100, 1, 1),
(3, 'Fridah Kahlo', 'Rua Amari', '29/11/2018', 'M', 100, 1, 1),
(4, 'Mariana', 'Rua Amari', '29/11/2018', 'F', 100, 1, 1),
(5, 'Mario', 'Rua Amari', '29/11/2018', 'F', 100, 1, 1)

select * from funcionario

------------------------------------------

insert into trabalha 
values (1, 1, 10),
(2, 3, 10),
(3, 2, 10),
(4, 4, 10),
(5, 5, 10)

select * from trabalha


insert into projeto 
values (6, 'Criar um sistema novo', 'Brasilia', 1),
(9, 'Eu sou viado', 'Minas Gerais', 2),
(7, 'Destruir o sistema antigo', 'Nordeste', 3),
(8, 'Tomar o poder', 'Distrito Federal', 1),
(10, 'Eu nao sou homofobico', 'Rio de Janeiro', 1)

select * from projeto

------------------------------------------

insert into dependente
values (1, 1, 'Amando', '28/10/1990', 'M', 'Fi'),
(2, 2, 'Julia', '28/10/1990', 'F', 'Fi'),
(3, 3, 'Juliano', '28/10/1990', 'M', 'Fia'),
(2, 4, 'Moreno', '28/10/1990', 'M', 'Fia'),
(1, 5, 'Fandra', '28/10/1990', 'F', 'Ti')

select * from dependente

------------------------------------------

select NomeFunc from funcionario
where ID_Func in (select ID_Func from trabalha
where ID_Proj in (select id_proj from projeto
where ID_Depto in (select ID_Depto from departamento
where NomeDepto = 'Construção')))

select nomeFunc from funcionario f
join trabalha t on F.ID_Func = t.ID_Func
join projeto p on p.ID_Proj = t.ID_Proj
join departamento d on d.ID_Depto = p.ID_Depto
where d.NomeDepto = 'Construção'
