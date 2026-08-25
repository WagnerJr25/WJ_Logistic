use WJ_Logistic
select categoria.Nome, sum (produto.valor_venda) as valor_total
from categoria
inner join produto
on categoria.Id_categoria= produto.id_categoria
group by categoria.Nome