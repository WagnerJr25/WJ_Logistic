USE WJ_Logistic;

SELECT 
    p.sku,
    p.nome,
    p.valor_venda
FROM produto AS p
WHERE p.valor_venda > (
    SELECT AVG(p2.valor_venda)
    FROM produto AS p2
)
ORDER BY p.valor_venda DESC;