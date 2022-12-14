-- Databricks notebook source
SELECT * FROM silver_olist.pagamento_pedido

-- leia-se selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido

FROM silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
LIMIT
  5

-- COMMAND ----------

SELECT *,
  DATEDIFF(dtEstimativaEntrega,dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 5

-- COMMAND ----------


