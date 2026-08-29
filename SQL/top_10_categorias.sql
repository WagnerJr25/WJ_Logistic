use WJ_Logistic

select categoria.nome,  sum (estoque.quantidade_atual)  as qtd_estoque_categoria
from categoria
inner join produto
on produto.id_categoria = categoria.Id_categoria
inner join lote
on lote.id_produto = produto.id_produto
inner join estoque
on estoque.id_lote = lote.id_lote
group by categoria.nome
having sum (estoque.quantidade_atual) > 10
order by qtd_estoque_categoria desc
