use WJ_Logistic
select funcionario.nome, count (movimentacao_estoque.id_movimentacao) as movimentação_funcionarios
from funcionario
inner join movimentacao_estoque
on funcionario.id_funcionario = movimentacao_estoque.id_funcionario
group by funcionario.nome
order by movimentação_funcionarios desc
