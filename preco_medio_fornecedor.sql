use WJ_Logistic
select fornecedor.nome_empresa, avg (entrada_mercadoria.valor_total) as valor_medio_entrada
from fornecedor
inner join Entrada_mercadoria
on fornecedor.id_fornecedor = Entrada_mercadoria.id_fornecedor
group by fornecedor.nome_empresa
order by valor_medio_entrada desc
