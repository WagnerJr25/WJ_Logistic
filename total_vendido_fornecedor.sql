use WJ_Logistic
select fornecedor.nome_empresa, sum (Entrada_mercadoria.valor_total) as total_vendido_fornecedor
from fornecedor
inner join Entrada_mercadoria
on fornecedor.id_fornecedor =  Entrada_mercadoria.id_fornecedor
group by fornecedor.nome_empresa