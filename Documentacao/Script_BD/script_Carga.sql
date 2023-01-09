Use db_projeto;
/*Dias da Semana----------*/
INSERT INTO tb_diasDaSemana(dias) VALUES('segunda-feira');
INSERT INTO tb_diasDaSemana(dias) VALUES('terça-feira');
INSERT INTO tb_diasDaSemana(dias) VALUES('quarta-feira');
INSERT INTO tb_diasDaSemana(dias) VALUES('quinta-feira');
INSERT INTO tb_diasDaSemana(dias) VALUES('sexta-feira');
INSERT INTO tb_diasDaSemana(dias) VALUES('sábado');
INSERT INTO tb_diasDaSemana(dias) VALUES('domingo');

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
INSERT INTO tb_user(nomeCompleto, dataNasc, cel, email, senha, id_tipoReceita) VALUES('Beatriz', '2002/05/27', '(21)991789359', 'beatriz@gamil.com', '12345', 2);

/*Alimento --------------*/
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Abacate', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Abacaxi', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Acerola', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Amora', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Ameixa', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Biribá', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Cacau', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Cajá', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Caqui', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Carambola', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Cereja', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Cidra', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Cupuaçu', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Figo', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Framboesa', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Goiaba', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Graviola', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Groselha', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Jabuticaba', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Jaca', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Jambo', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Kiwi', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Laranja', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Limão', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Maçã', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Mamão', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Manga', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Maracujá', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Melancia', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Melão', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Pequi', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Pêssego', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Pitanga', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Romã', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Siriguela', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Tamarindo', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Tangerina', 6);
INSERT INTO tb_alimento(nome, id_TipoAlimento) VALUES('Uva', 6);

/* Receitas -------------------------*/
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco detox de couve com abacaxi ', '3 folhas de couve, 3 rodelas de gengibre,2 fatias de abacaxi congelado, Chia a gosto, 200 ml de água (ou água de coco),Suco de 1/2 limão', 'Reúna todos os ingredientes, Coloque todos os ingredientes no liquidificador e bata por cerca de 5 minutos, Suco detox de couve com abacaxi, Transfira o suco para um copo e, caso queira, adoce com mel. ', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco verde com ora-pro-nóbis', '4 maçãs, 200 ml de água, 6 folhas de azedinha, 8 folhas de ora-pro-nóbis, 1 colher de sobremesa de gengibre fresco picado', 'Bata todos os ingredientes no liquidificador até virar um suco bem grosso, Coe no saco de voil ou passe por uma peneira bem fina, Está pronto para beber! . ', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco verde digestivo ', '1 fatia de abacaxi, Suco de 1 limão, Folhas de hortelã a gosto, 1/2 folha de couve, 200 ml de água de coco (natural)', 'Separe e corte os ingredientes sólidos em pedaços menores, para triturar melhor, Coloque todos os ingredientes no liquidificador e bata até ficar homogêneo. Passe para um copo e coloque gelo. Pode usar uma peneira. Agora é só servir. Bom apetite. ', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco de maçã com gengibre  ', '4 maçãs cortadas em pedaços (pode ser gala, fuji ou red), Cerca de 300 ml de água, 1 pedaço de gengibre descascado', 'Coloque no liquidificador, a maçã, a água e bata até ficar uniforme., Adicione o gengibre e bata por mais 10 segundos., Agora é só servir. Bom apetite ', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco detox de beterraba   ', '300 ml de água gelada, 1 beterraba pequena, crua e em pedaços, Sumo de 1 limão, 1 colher de chá de mel (opcional), ' , ' Em um liquidificador, coloque todos os ingredientes e bata até misturar bem. Transfira para um copo e adicione gelo. Agora é só servir. Bom apetite.', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco vermelho pré-treino', '100 gramas de beterraba, 100 gramas de framboesa, 20 gramas de biomassa de banana verde, 200 ml água', '    Em um liquidificador, coloque a beterraba sem casca e cortada em cubos, a framboesa, a biomassa, a água gelada e bata muito bem. Sirva bem geladinho. Aproveite.', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco de laranja e cenoura ', 'Suco de 12 laranjas, 1 cenoura (com casca), 1 colher de sopa de açúcar', ' Coloque tudo no liquidificador e bata até ficar homogêneo. Agora é só servir. Bom apetite.', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco diurético de melancia ', '1 rodela de gengibre, 1 fatia de melancia, 200 ml de água de coco', 'No liquidificador, bata o gengibre com a melancia e a água de coco até obter um líquido homogêneo. Sirva sem coar e adoçar logo em seguida. Aproveite sua bebida..', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Suco de capim-cidreira ', '1 xícara de chá de capim-cidreira picado, 1/2 xícara de chá de folhas de hortelã, 200 ml de água gelada, Suco de 1/2 limão, 1 pedaço pequeno de gengibre', ' Coloque todos os ingredientes no liquidificador e bata até ficar homogêneo. Coe o suco e transfira para uma jarra. Acrescente e gelo no copo e sirva! Aproveite sua bebida.', 1);
INSERT INTO tb_receitas(nomeReceita, receita, preparo, id_tipoReceita) VALUES('Chá-verde com abacaxi e laranja ', '1 litro de água filtrada, 2 saquinhos de chá-verde, 1/2 abacaxi cortado em pedaços, Um pedaço pequeno de gengibre, Folhas de hortelã, 1/2 laranja-lima cortada em rodelas, Mel a gosto, Gelo a gosto', 'Ferva a água em uma leiteira. Assim que ferver, desligue o fogo, adicione os saquinhos de chá-verde, tampe e deixe descansar por cerca de 30 minutos. Acrescente o restante dos ingredientes, misture bem e leve para a geladeira até gelar. Agora é só servir! Bom apetite.', 1);

/*Intem Receita---------*/

INSERT INTO tb_itemReceita(id_receitas, id_alimento) VALUES(1, 6);
INSERT INTO tb_itemReceita(id_receitas, id_alimento) VALUES(1, 7);
INSERT INTO tb_itemReceita(id_receitas, id_alimento) VALUES(1, 8);

/*Agenda---------*/
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1, 1);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1, 2);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1, 3);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1,4);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1, 5);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1, 6);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(1, 1, 7);

/*User2*/
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 1, 1);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 2, 2);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 3, 3);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 4,4);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 5, 5);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 6, 6);
INSERT INTO tb_agenda(id_user, id_receitas, id_diasDaSemana) VALUES(2, 7, 7);




 