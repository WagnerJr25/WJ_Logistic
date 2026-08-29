use WJ_Logistic
select dbo.produto.nome, dbo.marca.nome, dbo.categoria.Nome, dbo.produto.valor_venda
from produto
inner join dbo.marca
on dbo. marca.id_marca = dbo.produto.id_marca
inner join dbo.categoria
on dbo.categoria.Id_categoria = dbo.produto.id_categoria
order by dbo.produto.valor_venda desc
