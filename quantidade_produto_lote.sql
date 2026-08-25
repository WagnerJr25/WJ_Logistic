use WJ_Logistic
select dbo.produto.nome, dbo.estoque.quantidade_atual,dbo.lote.codigo_lote,dbo.localizacao.codigo
from produto
inner join dbo.lote
on dbo.produto.id_produto = dbo.lote.id_produto
inner join dbo.estoque
on dbo.estoque.id_lote = dbo.lote.id_lote
inner join dbo.localizacao
on dbo.estoque.id_localizacao = dbo.localizacao.id_localizacao
