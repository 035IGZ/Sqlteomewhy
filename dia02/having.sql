-- Databricks notebook source
SELECT descUF, 
  COUNT(idVendedor) AS qtVendedorUF
  
FROM silver_olist.vendedor

-- WHERE sempre depois do FROM e antes deo GROUP BY
WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')

GROUP BY descUF

HAVING COUNT(idVendedor) >= 100

ORDER BY qtVendedorUF DESC

-- COMMAND ----------


