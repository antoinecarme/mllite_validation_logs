WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 865.747681) THEN CASE WHEN (t."X_2" < 0.402955) THEN 3 ELSE CASE WHEN (t."X_1" < 526.791992) THEN CASE WHEN (t."X_1" < 444.204834) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.737876) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_2" < 0.520814) THEN CASE WHEN (t."X_2" < 0.235384) THEN 9 ELSE CASE WHEN (t."X_1" < 1412.240356) THEN CASE WHEN (t."X_3" < 9.012303) THEN 19 ELSE 20 END ELSE 18 END END ELSE CASE WHEN (t."X_1" < 1412.240356) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -93.308708 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -81.834564 AS "E"
    UNION ALL
    SELECT 11 AS nid,  83.394928 AS "E"
    UNION ALL
    SELECT 12 AS nid,  208.073029 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -65.630013 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -33.314381 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -17.777796 AS "E"
    UNION ALL
    SELECT 16 AS nid,  43.059250 AS "E"
    UNION ALL
    SELECT 18 AS nid,  24.820675 AS "E"
    UNION ALL
    SELECT 19 AS nid,  1.725311 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -15.309747 AS "E"
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
    CASE WHEN (t."X_1" < 865.747681) THEN CASE WHEN (t."X_2" < 0.685229) THEN CASE WHEN (t."X_1" < 526.791992) THEN 7 ELSE CASE WHEN (t."X_2" < 0.292127) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_1" < 444.204834) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 0.520814) THEN CASE WHEN (t."X_2" < 0.235384) THEN 11 ELSE CASE WHEN (t."X_2" < 0.402955) THEN CASE WHEN (t."X_1" < 1412.240356) THEN 21 ELSE 22 END ELSE 18 END END ELSE CASE WHEN (t."X_1" < 1412.240356) THEN 13 ELSE CASE WHEN (t."X_2" < 0.737876) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -66.875526 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -39.283669 AS "E"
    UNION ALL
    SELECT 10 AS nid,  16.131121 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -60.012005 AS "E"
    UNION ALL
    SELECT 13 AS nid,  60.163486 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -52.100346 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -16.825251 AS "E"
    UNION ALL
    SELECT 18 AS nid,  25.339319 AS "E"
    UNION ALL
    SELECT 19 AS nid,  90.416008 AS "E"
    UNION ALL
    SELECT 20 AS nid,  187.014664 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -17.328388 AS "E"
    UNION ALL
    SELECT 22 AS nid,  7.998059 AS "E"
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
    CASE WHEN (t."X_1" < 1412.240356) THEN CASE WHEN (t."X_2" < 0.402955) THEN CASE WHEN (t."X_1" < 1134.869141) THEN CASE WHEN (t."X_2" < 0.292127) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 671.264099) THEN CASE WHEN (t."X_1" < 273.763794) THEN 15 ELSE CASE WHEN (t."X_2" < 0.737876) THEN CASE WHEN (t."X_1" < 526.791992) THEN 23 ELSE 24 END ELSE 20 END END ELSE CASE WHEN (t."X_2" < 0.520814) THEN 17 ELSE CASE WHEN (t."X_3" < 6.207578) THEN 21 ELSE 22 END END END END ELSE CASE WHEN (t."X_2" < 0.595422) THEN CASE WHEN (t."X_2" < 0.292127) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  126.205269 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -20.312862 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -19.614845 AS "E"
    UNION ALL
    SELECT 12 AS nid,  30.510399 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -50.290836 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -27.860598 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -41.884178 AS "E"
    UNION ALL
    SELECT 17 AS nid,  1.165374 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.932891 AS "E"
    UNION ALL
    SELECT 21 AS nid,  54.685528 AS "E"
    UNION ALL
    SELECT 22 AS nid,  17.509974 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -27.301687 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -12.144231 AS "E"
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
    CASE WHEN (t."X_1" < 1412.240356) THEN CASE WHEN (t."X_2" < 0.402955) THEN CASE WHEN (t."X_2" < 0.156860) THEN 7 ELSE CASE WHEN (t."X_1" < 865.747681) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_1" < 671.264099) THEN CASE WHEN (t."X_1" < 444.204834) THEN CASE WHEN (t."X_1" < 273.763794) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < 5.340956) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_2" < 0.520814) THEN 17 ELSE CASE WHEN (t."X_3" < 6.207578) THEN 23 ELSE 24 END END END END ELSE CASE WHEN (t."X_2" < 0.685229) THEN CASE WHEN (t."X_2" < 0.402955) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  108.109383 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -43.678181 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -6.487920 AS "E"
    UNION ALL
    SELECT 12 AS nid,  36.309998 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -32.406620 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -8.194739 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.865706 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -30.889578 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -16.580305 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -13.959089 AS "E"
    UNION ALL
    SELECT 22 AS nid,  2.102161 AS "E"
    UNION ALL
    SELECT 23 AS nid,  39.646999 AS "E"
    UNION ALL
    SELECT 24 AS nid,  13.132477 AS "E"
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
    CASE WHEN (t."X_2" < 0.924844) THEN CASE WHEN (t."X_2" < 0.235384) THEN CASE WHEN (t."X_2" < 0.156860) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 671.264099) THEN CASE WHEN (t."X_1" < 526.791992) THEN CASE WHEN (t."X_1" < 273.763794) THEN 15 ELSE CASE WHEN (t."X_2" < 0.595422) THEN 21 ELSE 22 END END ELSE 12 END ELSE CASE WHEN (t."X_2" < 0.520814) THEN CASE WHEN (t."X_1" < 1134.869141) THEN 17 ELSE CASE WHEN (t."X_2" < 0.292127) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_1" < 971.383606) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_1" < 865.747681) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  2.223184 AS "E"
    UNION ALL
    SELECT 6 AS nid,  89.521339 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -34.317440 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -20.594809 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -4.336253 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -27.798931 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -5.130768 AS "E"
    UNION ALL
    SELECT 19 AS nid,  9.609125 AS "E"
    UNION ALL
    SELECT 20 AS nid,  30.498293 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -18.126595 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -8.915742 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -1.410259 AS "E"
    UNION ALL
    SELECT 24 AS nid,  15.197688 AS "E"
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
   441.435455 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"