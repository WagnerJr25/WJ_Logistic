SELECT dbo.produto.nome, dbo.lote.codigo_lote,dbo.item_entrada2.valor_unitario,dbo.item_entrada2.qtd,
dbo.Entrada_mercadoria.numero_nf
from produto
inner join dbo.lote
on dbo.lote.id_produto= dbo.produto.id_produto
inner join dbo.item_entrada2
on dbo.item_entrada2.id_lote = dbo.lote.id_lote
inner join dbo.Entrada_mercadoria
on dbo.Entrada_mercadoria.id_entrada = dbo.item_entrada2.id_entrada
