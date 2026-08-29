use WJ_Logistic
select produto.nome, 
sum (estoque.quantidade_atual) as quantidade_total,
sum (quantidade_atual * produto.valor_compra) as valor_em_estoque
from produto
inner join lote
on produto.id_produto =lote.id_produto
inner join estoque
on lote.id_lote = estoque.id_lote
group by produto.nome, produto.valor_compra
order by valor_em_estoque desc
