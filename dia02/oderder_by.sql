-- Databricks notebook source
-- Primeira forma
SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

-- Segunda forma

SELECT
  descUF, 
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- Terceira forma

SELECT
  descUF, 
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

SELECT
  descUF, 
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

LIMIT 1

-- COMMAND ----------


