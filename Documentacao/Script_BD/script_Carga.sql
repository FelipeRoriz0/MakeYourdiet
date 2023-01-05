Use db_projeto;

/*Tipo Receita----------*/
INSERT INTO tb_tipoReceita(tipo) VALUES('emagrecimento');
INSERT INTO tb_tipoReceita(tipo) VALUES('ganho de massa');

/*Tipo Alimento------------*/
 INSERT INTO tb_tipoAlimento(categorias) VALUES('carboidratos');
 INSERT INTO tb_tipoAlimento(categorias) VALUES('proteinas');
 INSERT INTO tb_tipoAlimento(categorias) VALUES('laticinios');
 INSERT INTO tb_tipoAlimento(categorias) VALUES('verduras');
 INSERT INTO tb_tipoAlimento(categorias) VALUES('legumes');
 INSERT INTO tb_tipoAlimento(categorias) VALUES('frutas');


/*User --------------------*/
INSERT INTO tb_user(nomeCompleto, dataNasc, cel, email, senha, id_tipoReceita) VALUES('Administrador', '2002/05/27', '(21)991789359', 'admin@gamil.com', '12345', 1);


/*Receitas-------------*/
INSERT INTO tb_receitas(nomeReceita, receita, id_tipoReceita) VALUES('bolo de banana lowcarb', '2 bananas, 1 ovo, 1/2 farinha aveia, etc', 1); 

/*Alimentos---------*/
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('arroz', 1);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('costela', 2);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('mussarela', 3);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('alface', 4);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('cenoura', 5);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('banana', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('ovo', 2);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('aveia', 1);

/*Intem Receita---------*/
INSERT INTO tb_itemReceita(id_receitas, id_alimento) VALUES(1, 6);
INSERT INTO tb_itemReceita(id_receitas, id_alimento) VALUES(1, 7);
INSERT INTO tb_itemReceita(id_receitas, id_alimento) VALUES(1, 8);

/*Agenda---------*/
INSERT INTO tb_agenda(dias, id_user, id_receitas) VALUES('segunda-feira', 1, 1);
INSERT INTO tb_agenda(dias, id_user, id_receitas) VALUES('terça-feira',1, 1);
INSERT INTO tb_agenda(dias, id_user, id_receitas) VALUES('quarta-feira',1, 1);
INSERT INTO tb_agenda(dias, id_user, id_receitas) VALUES('quinta-feira',1, 1);
INSERT INTO tb_agenda(dias, id_user, id_receitas)VALUES('sexta-feira',1, 1);
INSERT INTO tb_agenda(dias, id_user, id_receitas) VALUES('sábado',1, 1);
INSERT INTO tb_agenda(dias, id_user, id_receitas) VALUES('domingo',1, 1);
 