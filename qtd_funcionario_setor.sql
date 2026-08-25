
use WJ_Logistic
select setor, count (setor) as qtd_por_setor
from funcionario
group by funcionario.setor
order by qtd_por_setor desc