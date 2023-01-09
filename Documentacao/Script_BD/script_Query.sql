-- CONSULTA AGENDA POR USUARIO
SELECT u.nomeCompleto, s.dias, r.receita 
  FROM tb_agenda a INNER JOIN tb_user u ON u.id = a.id_user 
				   INNER JOIN tb_diasDaSemana s ON s.id = a.id_diasDaSemana 
				   INNER JOIN tb_receitas r ON r.id = a.id_receitas
 WHERE a.id_user=2;
 
 -- RECEITAS COM UM ALIMENTO
 SELECT i.id_receitas, a.nome 
   FROM tb_itemReceita i INNER JOIN tb_alimento a ON a.id = i.id_alimento
  WHERE a.nome = 'Cacau';