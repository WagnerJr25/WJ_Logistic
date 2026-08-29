use WJ_Logistic
select numero_nf, data_entrada, valor_total
from Entrada_mercadoria
where data_entrada >= '01-01-2025'
order by data_entrada desc
