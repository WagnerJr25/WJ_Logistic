SELECT dbo.produto.nome,dbo.marca.nome,dbo.categoria.Nome, dbo.produto.valor_venda
from produto
inner join dbo.marca
on dbo.marca.id_marca = dbo.produto.id_marca
inner join dbo.categoria
on dbo.produto.id_categoria = dbo.categoria.id_categoria
where dbo.produto.valor_venda > 1000
