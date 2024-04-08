WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.400205) THEN CASE WHEN (model_input."X_8" <= -0.289997) THEN CASE WHEN (model_input."X_8" <= -0.767129) THEN 9 ELSE CASE WHEN (model_input."X_5" <= -0.574503) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_5" <= 0.401200) THEN CASE WHEN (model_input."X_8" <= 0.062132) THEN 11 ELSE 12 END ELSE 6 END END ELSE CASE WHEN (model_input."X_7" <= -0.803562) THEN 7 ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 27.077379 AS "E"
    UNION ALL
    SELECT 1 AS nid, -3.776157 AS "E"
    UNION ALL
    SELECT 2 AS nid, 78.499931 AS "E"
    UNION ALL
    SELECT 3 AS nid, -16.886200 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.888906 AS "E"
    UNION ALL
    SELECT 5 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 6 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 7 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 8 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 9 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 10 AS nid, -28.059462 AS "E"
    UNION ALL
    SELECT 11 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 12 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.928501 AS "E"
  ) AS "Values"
 ),
"DT_Output_0" AS 
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
 ),
"DT_node_lookup_1" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_6" <= 1.679106) THEN CASE WHEN (model_input."X_7" <= -1.895590) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.273323) THEN CASE WHEN (model_input."X_0" <= 0.343133) THEN CASE WHEN (model_input."X_4" <= -0.024158) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_5" <= 0.333286) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= -0.011258) THEN CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_5" <= -0.888369) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_7" <= 0.392607) THEN 19 ELSE 20 END END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 39.446732 AS "E"
    UNION ALL
    SELECT 1 AS nid, 16.072565 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 4 AS nid, 30.499912 AS "E"
    UNION ALL
    SELECT 5 AS nid, -14.208369 AS "E"
    UNION ALL
    SELECT 6 AS nid, 64.031120 AS "E"
    UNION ALL
    SELECT 7 AS nid, 74.690025 AS "E"
    UNION ALL
    SELECT 8 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 9 AS nid, 68.280090 AS "E"
    UNION ALL
    SELECT 10 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 11 AS nid, -31.048944 AS "E"
    UNION ALL
    SELECT 12 AS nid, -5.788080 AS "E"
    UNION ALL
    SELECT 13 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 14 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 16 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 17 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 19 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 20 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_1" AS 
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
 ),
"DT_node_lookup_2" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_9" <= -1.583338) THEN 1 ELSE CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_3" <= -0.315428) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_5" <= -1.549785) THEN CASE WHEN (model_input."X_6" <= 0.847890) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_7" <= -0.005867) THEN CASE WHEN (model_input."X_7" <= -0.288791) THEN CASE WHEN (model_input."X_3" <= 0.073032) THEN 19 ELSE 20 END ELSE 18 END ELSE CASE WHEN (model_input."X_5" <= 0.337685) THEN CASE WHEN (model_input."X_1" <= 0.216473) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_3" <= -1.064165) THEN 15 ELSE 16 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 37.566132 AS "E"
    UNION ALL
    SELECT 1 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 2 AS nid, -12.790024 AS "E"
    UNION ALL
    SELECT 3 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 4 AS nid, 12.913963 AS "E"
    UNION ALL
    SELECT 5 AS nid, 95.443764 AS "E"
    UNION ALL
    SELECT 6 AS nid, -14.595971 AS "E"
    UNION ALL
    SELECT 7 AS nid, -33.253490 AS "E"
    UNION ALL
    SELECT 8 AS nid, 8.725929 AS "E"
    UNION ALL
    SELECT 9 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 10 AS nid, -14.602547 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 14 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 15 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 16 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 17 AS nid, -26.207191 AS "E"
    UNION ALL
    SELECT 18 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 19 AS nid, -31.176399 AS "E"
    UNION ALL
    SELECT 20 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 21 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 22 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_2" AS 
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
 ),
"DT_node_lookup_3" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_4" <= 1.532191) THEN CASE WHEN (model_input."X_9" <= 0.329279) THEN CASE WHEN (model_input."X_9" <= -1.447783) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.633442) THEN CASE WHEN (model_input."X_9" <= 0.114824) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_9" <= -0.257740) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_6" <= -0.922260) THEN 9 ELSE CASE WHEN (model_input."X_2" <= -0.240513) THEN CASE WHEN (model_input."X_9" <= 1.281282) THEN 17 ELSE 18 END ELSE 14 END END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 29.276270 AS "E"
    UNION ALL
    SELECT 1 AS nid, -2.685228 AS "E"
    UNION ALL
    SELECT 2 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 3 AS nid, 8.501886 AS "E"
    UNION ALL
    SELECT 4 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 5 AS nid, 37.386768 AS "E"
    UNION ALL
    SELECT 6 AS nid, -16.256586 AS "E"
    UNION ALL
    SELECT 7 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 8 AS nid, 50.302208 AS "E"
    UNION ALL
    SELECT 9 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 10 AS nid, -8.726235 AS "E"
    UNION ALL
    SELECT 11 AS nid, 37.808964 AS "E"
    UNION ALL
    SELECT 12 AS nid, 69.042068 AS "E"
    UNION ALL
    SELECT 13 AS nid, -4.685782 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 15 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 16 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 17 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 18 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 19 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 20 AS nid, 72.851982 AS "E"
  ) AS "Values"
 ),
"DT_Output_3" AS 
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
 ),
"DT_node_lookup_4" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_6" <= 1.784423) THEN CASE WHEN (model_input."X_7" <= 1.701600) THEN CASE WHEN (model_input."X_4" <= 0.184823) THEN CASE WHEN (model_input."X_3" <= 0.643919) THEN CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_2" <= 0.819372) THEN 17 ELSE 18 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_5" <= -1.809273) THEN 7 ELSE CASE WHEN (model_input."X_6" <= -0.922260) THEN 11 ELSE CASE WHEN (model_input."X_9" <= -0.403637) THEN 15 ELSE 16 END END END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 84.304558 AS "E"
    UNION ALL
    SELECT 1 AS nid, 40.625309 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, 24.288279 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, 63.035156 AS "E"
    UNION ALL
    SELECT 6 AS nid, -8.923335 AS "E"
    UNION ALL
    SELECT 7 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 8 AS nid, -18.630238 AS "E"
    UNION ALL
    SELECT 9 AS nid, 79.418945 AS "E"
    UNION ALL
    SELECT 10 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 11 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 12 AS nid, -10.068548 AS "E"
    UNION ALL
    SELECT 13 AS nid, 70.312042 AS "E"
    UNION ALL
    SELECT 14 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 15 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 16 AS nid, -5.788080 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 18 AS nid, 65.232162 AS "E"
  ) AS "Values"
 ),
"DT_Output_4" AS 
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
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
