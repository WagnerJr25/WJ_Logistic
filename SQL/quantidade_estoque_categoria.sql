use WJ_Logistic

select categoria.Nome, sum (estoque.quantidade_atual) as estoque_por_categoria
from categoria
inner join produto
on produto.id_categoria = categoria.Id_categoria
inner join lote
on produto.id_produto= lote.id_produto
inner join estoque
on estoque.id_lote = lote.id_lote
group  by categoria.Nome
