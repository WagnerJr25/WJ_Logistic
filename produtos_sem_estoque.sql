use WJ_Logistic
select produto.sku, produto.nome, estoque.quantidade_atual
from produto
left join lote
on lote.id_produto= produto.id_produto
left join estoque
on estoque.id_lote =lote.id_lote
where quantidade_atual is null