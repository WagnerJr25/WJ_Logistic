use  WJ_Logistic
SELECT produto.SKu, produto.nome
from produto
left join lote
on lote.id_produto = produto.id_produto
left join estoque
on lote.id_lote = estoque.id_lote
left join movimentacao_estoque
on movimentacao_estoque.id_estoque= estoque.id_estoque
where qtd is null