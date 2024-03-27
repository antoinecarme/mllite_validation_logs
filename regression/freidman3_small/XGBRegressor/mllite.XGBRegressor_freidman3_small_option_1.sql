WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.155164) THEN 1 ELSE CASE WHEN (t."X_1" < 294.009796) THEN 3 ELSE CASE WHEN (t."X_0" < 39.873802) THEN CASE WHEN (t."X_2" < 0.287537) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.287537) THEN 9 ELSE CASE WHEN (t."X_1" < 635.121277) THEN 11 ELSE CASE WHEN (t."X_0" < 78.244774) THEN 13 ELSE 14 END END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.153790 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.069082 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.033426 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.060978 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.034954 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.007142 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.043009 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.022669 AS "E"
  ) AS "Values"
 )
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.155164) THEN 1 ELSE CASE WHEN (t."X_1" < 294.009796) THEN 3 ELSE CASE WHEN (t."X_0" < 39.873802) THEN 5 ELSE CASE WHEN (t."X_2" < 0.287537) THEN 7 ELSE CASE WHEN (t."X_1" < 889.292297) THEN CASE WHEN (t."X_0" < 78.244774) THEN 11 ELSE 12 END ELSE 10 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.114244 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.051318 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.040652 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.025633 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.031568 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.019840 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.005408 AS "E"
  ) AS "Values"
 )
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < 74.577126) THEN CASE WHEN (t."X_0" < 34.347893) THEN 3 ELSE CASE WHEN (t."X_2" < 0.428596) THEN 7 ELSE CASE WHEN (t."X_1" < 526.791992) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_2" < 0.428596) THEN 5 ELSE CASE WHEN (t."X_1" < 635.121277) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.036186 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.113825 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.019003 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.005436 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.018477 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.010662 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.023985 AS "E"
  ) AS "Values"
 )
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.155164) THEN 1 ELSE CASE WHEN (t."X_1" < 635.121277) THEN CASE WHEN (t."X_2" < 0.428596) THEN 5 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 889.292297) THEN CASE WHEN (t."X_0" < 65.455681) THEN 11 ELSE 12 END ELSE 8 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.072520 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.060307 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.026371 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.016909 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001656 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.012799 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000091 AS "E"
  ) AS "Values"
 )
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 1.961987) THEN 1 ELSE CASE WHEN (t."X_0" < 78.244774) THEN CASE WHEN (t."X_0" < 39.873802) THEN CASE WHEN (t."X_2" < 0.233546) THEN 9 ELSE CASE WHEN (t."X_2" < 0.720020) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_1" < 635.121277) THEN CASE WHEN (t."X_2" < 0.674758) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_3" < 4.121809) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_2" < 0.428596) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.063054 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.047063 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.004527 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.039627 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.010199 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.019849 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.025243 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.006142 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.021617 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.011224 AS "E"
  ) AS "Values"
 )
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   1.321436 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"