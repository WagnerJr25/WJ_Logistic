USE WJ_Logistic
SELECT dbo.fornecedor.nome_empresa, dbo.Entrada_mercadoria.numero_nf,
dbo.Entrada_mercadoria.id_funcionario, dbo.funcionario.nome, dbo.Entrada_mercadoria.valor_total
from dbo.fornecedor
inner join dbo.entrada_mercadoria
on dbo.fornecedor.id_fornecedor = dbo.entrada_mercadoria.id_fornecedor
inner join dbo.funcionario
on dbo.funcionario.id_funcionario = dbo.entrada_mercadoria.id_funcionario
order by valor_total desc

