-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT idCliente
       FROM silver_olist.pedido

-- leia-se: selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idCliente, 
       descSituacao
       FROM silver_olist.pedido
       
LIMIT 5

-- leia-se: selecione aa coluna idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT * , 
        DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 9

-- COMMAND ----------


