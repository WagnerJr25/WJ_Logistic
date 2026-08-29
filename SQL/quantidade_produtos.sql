use WJ_Logistic
select produto.nome, estoque.quantidade_atual
from produto
left join lote
on lote.id_produto = produto.id_produto
inner join estoque
on estoque.id_lote = lote.id_lote
