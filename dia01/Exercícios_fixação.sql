-- Databricks notebook source
-- 06 Lista de pedidos feito em dezembro de 2017 e entregues com atraso (WHERE)

SELECT * 
FROM silver_olist.pedido 
WHERE YEAR(dtPedido) == 2017 
AND MONTH(dtPedido) == 12
AND descSituacao = 'delivered'
AND DATE(dtEntregue) > DATE(dtEstimativaEntrega)

-- COMMAND ----------

-- 08 Lista de pedidos com 2 ou mais parcelas menores que R$20,00 (WHERE)

SELECT *,
    ROUND(vlPagamento / nrPacelas, 2) AS vlParcelas
FROM silver_olist.pagamento_pedido
WHERE nrPacelas >= 2
AND vlPagamento / nrPacelas < 20


-- COMMAND ----------

-- Selecione os pedidos e defina os grupos em uma nova colunaa:
-- Para frete inferior à 10%: '10%'
-- Para frete entre 10% e 25%: '10% a 25%'
-- Para frete entre 25% e 50%: '25% e 50%'
-- Para frete maior que 50%: '+50%'

SELECT *, 
      vlPreco + vlFrete AS vlTotal, 
      vlFrete / (vlPreco + vlFrete) AS pctFrete,
      
      CASE
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% a 25%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.5 THEN '25% a 50%'
        ELSE '+50%'
      END AS descFretePct
        
FROM silver_olist.item_pedido

-- COMMAND ----------


