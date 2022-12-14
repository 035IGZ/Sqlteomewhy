-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

-- LIMIT 100

-- Leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered' ou 'shipped' ou 'canceled'


-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'


-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- Leia-se: selecione todas colunas da tabela silver_olist.pedido filtrando pedidos (enviados ou canelados) de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- Leia-se: selecione todas colunas da tabela silver_olist.pedido filtrando pedidos (enviados ou canelados) de 2018

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega,dtAprovado) as diffDatasAprovadoPrevisao

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30

-- COMMAND ----------


