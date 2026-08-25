use WJ_Logistic

select categoria.Nome, count(produto.id_produto) 
FROM categoria
INNER JOIN produto
ON produto.id_categoria= categoria.Id_categoria
group by categoria.Nome



SELECT * FROM produto