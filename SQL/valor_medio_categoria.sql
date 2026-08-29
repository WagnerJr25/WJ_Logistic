use WJ_Logistic
select categoria.Nome, avg (produto.valor_venda) as valor_medio_categoria
from categoria
inner join produto
on categoria.Id_categoria= produto.id_categoria
group by categoria.Nome
