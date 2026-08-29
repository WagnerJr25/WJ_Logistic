use WJ_Logistic
select estoque.quantidade_atual,
case 
when estoque.quantidade_atual < 5
then 'estoque critico'
when estoque.quantidade_atual <=20
then 'estoque normal'
when estoque.quantidade_atual > 20
then 'estoque alto'
end as nivel_estoque,
categoria.Nome, lote.codigo_lote
from estoque 
inner join lote
on lote.id_lote = estoque.id_estoque
inner join produto
on produto.id_produto = lote.id_produto
inner join categoria
on produto.id_categoria = categoria.Id_categoria

