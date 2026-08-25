USE WJ_Logistic;

SELECT 
    categoria.Nome,
    p.sku,
    p.nome,
    p.valor_venda
FROM produto AS p
INNER JOIN categoria
    ON categoria.id_categoria = p.id_categoria
WHERE p.valor_venda > (
    SELECT AVG(p2.valor_venda)
    FROM produto AS p2
    WHERE p2.id_categoria = p.id_categoria
)
ORDER BY p.valor_venda DESC;