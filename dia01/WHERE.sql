-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido

WHERE descSituacao = 'shipped'

--LIMIT 100

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido

WHERE descSituacao = 'shipped'
AND YEAR(dtPedido) = '2018'


-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND YEAR(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND YEAR(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30

-- COMMAND ----------

SELECT *,
  DATEDIFF(dtEstimativaEntrega,dtAprovado) as diffDataAprovadoPrevisao -- Esse Datediff serve para criar uma coluna nova e mostrar a coluna com a função, para ver se deu certo
FROM
  silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30

-- COMMAND ----------


