
create table Alunos (id number(10), 
                     nome varchar2(100), 
                     valor number(10,2),
                    CONSTRAINT Alunos_pk PRIMARY KEY (id))


create table Notas (nota number(2),
                    valor_min number(3),
                    valor_max number(3),
                    CONSTRAINT Notas_pk PRIMARY KEY (nota))
                  
 
 insert into alunos (id,nome, valor) values (1,'Julia', 81)
 insert into alunos (id,nome, valor) values (2,'Carol', 68)
 insert into alunos (id,nome, valor) values (3,'Maria', 99)
 insert into alunos (id,nome, valor) values (4,'Andreia',78)
 insert into alunos (id,nome, valor) values (5,'Jaqueline', 63)
 insert into alunos (id,nome, valor) values (6,'Marcela', 88)
 
 
 insert into Notas (nota,valor_min, valor_max) values (1,0, 9)
 insert into Notas (nota,valor_min, valor_max) values (2,10, 19)
 insert into Notas (nota,valor_min, valor_max) values (3,20, 29)
 insert into Notas (nota,valor_min, valor_max) values (4,30,39)
 insert into Notas (nota,valor_min, valor_max) values (5,40, 49)
 insert into Notas (nota,valor_min, valor_max) values (6,50, 59)
 insert into Notas (nota,valor_min, valor_max) values (7,60, 69)
 insert into Notas (nota,valor_min, valor_max) values (8,70, 79)
 insert into Notas (nota,valor_min, valor_max) values (9,80, 89)
 insert into Notas (nota,valor_min, valor_max) values (10,90, 100)
 
  select Nome,
         Nota,
         Valor 
    FROM 
     --- Alunos con notas maior ou igul a 70  
    ( select alunos.nome Nome
        ,( select nota
            from Notas
           where Alunos.valor >= notas.valor_min
             AND Alunos.valor <= notas.valor_max ) Nota
        , Alunos.valor   Valor  
        , (100 -  Alunos.valor) Ordem  
    from  Alunos
   WHERE alunos.valor >= 70   
  
   union
 --- Alunos con notas maior ou igul a 70 
          select NULL Nome
               ,( select nota
                    from Notas
                   where Alunos.valor >= notas.valor_min
                     AND Alunos.valor <= notas.valor_max ) Nota
               ,Alunos.valor Valor   
               ,Alunos.valor Ordem
          from  Alunos
          WHERE alunos.valor < 70  
          order by 4,1 )
 
 ------- Exercicio 2
 delete FROM Alunos
 
 insert into alunos (id,nome, valor) values (1,'Julia', 81.9)
 insert into alunos (id,nome, valor) values (2,'Carol', 68.7)
 insert into alunos (id,nome, valor) values (3,'Maria', 99.1)
 insert into alunos (id,nome, valor) values (4,'Andreia',78.8)
 insert into alunos (id,nome, valor) values (5,'Jaqueline', 63.7)
 insert into alunos (id,nome, valor) values (6,'Marcela', 88.9)
   
   SELECT nome
          ||' ('|| (select nota
            from Notas
           where Alunos.valor >= notas.valor_min
             AND Alunos.valor <= notas.valor_max ) ||') ' Resultado
    from  Alunos
   WHERE alunos.valor >= 70   
   ORDER BY valor desc
   