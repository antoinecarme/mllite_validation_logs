WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.023373) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN 5 ELSE CASE WHEN (model_input."X_9" <= -0.028001) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= 0.023973) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_5" <= -0.027931) THEN 11 ELSE CASE WHEN (model_input."X_5" <= 0.001504) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 176.562500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 85.285713 AS "E"
    UNION ALL
    SELECT 2 AS nid, 247.555557 AS "E"
    UNION ALL
    SELECT 3 AS nid, 204.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 269.333344 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 76.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 271.399994 AS "E"
    UNION ALL
    SELECT 13 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 270.000000 AS "E"
  ) AS "Values"
 ),
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
 ),
"DT_node_lookup_1" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.023373) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 0.011824) THEN CASE WHEN (model_input."X_7" <= -0.030453) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_6" <= 0.044958) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN CASE WHEN (model_input."X_5" <= 0.034855) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= -0.007761) THEN 15 ELSE CASE WHEN (model_input."X_7" <= 0.015858) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 147.687500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 75.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 241.142853 AS "E"
    UNION ALL
    SELECT 3 AS nid, 204.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 269.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 67.625000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 60.666668 AS "E"
    UNION ALL
    SELECT 8 AS nid, 88.500000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 272.333344 AS "E"
    UNION ALL
    SELECT 17 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 277.000000 AS "E"
  ) AS "Values"
 ),
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
 ),
"DT_node_lookup_2" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= -0.009113) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_6" <= -0.028674) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_8" <= -0.038815) THEN CASE WHEN (model_input."X_2" <= 0.031517) THEN CASE WHEN (model_input."X_5" <= -0.020729) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= -0.046985) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN CASE WHEN (model_input."X_8" <= 0.016895) THEN 5 ELSE CASE WHEN (model_input."X_8" <= 0.079729) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_6" <= 0.000779) THEN CASE WHEN (model_input."X_6" <= -0.028674) THEN 23 ELSE 24 END ELSE 16 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 155.937500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 234.285721 AS "E"
    UNION ALL
    SELECT 3 AS nid, 185.666672 AS "E"
    UNION ALL
    SELECT 4 AS nid, 270.750000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 208.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 130.666672 AS "E"
    UNION ALL
    SELECT 8 AS nid, 77.166664 AS "E"
    UNION ALL
    SELECT 9 AS nid, 65.750000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 76.500000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 274.666656 AS "E"
    UNION ALL
    SELECT 16 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 270.000000 AS "E"
  ) AS "Values"
 ),
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
 ),
"DT_node_lookup_3" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= -0.045962) THEN CASE WHEN (model_input."X_3" <= -0.007392) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 21 ELSE 22 END ELSE 16 END ELSE CASE WHEN (model_input."X_9" <= 0.052770) THEN CASE WHEN (model_input."X_9" <= -0.028001) THEN 19 ELSE 20 END ELSE 12 END END END ELSE 4 END ELSE CASE WHEN (model_input."X_3" <= 0.049415) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.005135) THEN 17 ELSE 18 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 151.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 102.900002 AS "E"
    UNION ALL
    SELECT 2 AS nid, 231.166672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 89.888885 AS "E"
    UNION ALL
    SELECT 4 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 266.333344 AS "E"
    UNION ALL
    SELECT 7 AS nid, 132.500000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 77.714287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 65.750000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 93.666664 AS "E"
    UNION ALL
    SELECT 11 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 69.333336 AS "E"
    UNION ALL
    SELECT 16 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
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
 ),
"DT_node_lookup_4" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.006904) THEN CASE WHEN (model_input."X_8" <= -0.044029) THEN CASE WHEN (model_input."X_7" <= -0.030453) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 17 ELSE 18 END ELSE 10 END ELSE CASE WHEN (model_input."X_9" <= -0.063209) THEN 7 ELSE CASE WHEN (model_input."X_6" <= -0.043401) THEN 11 ELSE CASE WHEN (model_input."X_2" <= -0.036924) THEN 13 ELSE 14 END END END END ELSE CASE WHEN (model_input."X_2" <= 0.017506) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.067267) THEN 15 ELSE 16 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 131.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 81.363640 AS "E"
    UNION ALL
    SELECT 2 AS nid, 241.800003 AS "E"
    UNION ALL
    SELECT 3 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 272.333344 AS "E"
    UNION ALL
    SELECT 5 AS nid, 62.833332 AS "E"
    UNION ALL
    SELECT 6 AS nid, 103.599998 AS "E"
    UNION ALL
    SELECT 7 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 94.250000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 70.666664 AS "E"
    UNION ALL
    SELECT 10 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 98.666664 AS "E"
    UNION ALL
    SELECT 13 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
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
 ),
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
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
