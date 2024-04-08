WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.023373) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN 5 ELSE CASE WHEN (model_input."X_9" <= -0.028001) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= 0.023973) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_5" <= -0.027931) THEN 11 ELSE CASE WHEN (model_input."X_5" <= 0.001504) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_8" <= -0.023373) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 0.011824) THEN CASE WHEN (model_input."X_7" <= -0.030453) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_6" <= 0.044958) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN CASE WHEN (model_input."X_5" <= 0.034855) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= -0.007761) THEN 15 ELSE CASE WHEN (model_input."X_7" <= 0.015858) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_3" <= -0.009113) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_6" <= -0.028674) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_8" <= -0.038815) THEN CASE WHEN (model_input."X_2" <= 0.031517) THEN CASE WHEN (model_input."X_5" <= -0.020729) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= -0.046985) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN CASE WHEN (model_input."X_8" <= 0.016895) THEN 5 ELSE CASE WHEN (model_input."X_8" <= 0.079729) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_6" <= 0.000779) THEN CASE WHEN (model_input."X_6" <= -0.028674) THEN 23 ELSE 24 END ELSE 16 END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= -0.045962) THEN CASE WHEN (model_input."X_3" <= -0.007392) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 21 ELSE 22 END ELSE 16 END ELSE CASE WHEN (model_input."X_9" <= 0.052770) THEN CASE WHEN (model_input."X_9" <= -0.028001) THEN 19 ELSE 20 END ELSE 12 END END END ELSE 4 END ELSE CASE WHEN (model_input."X_3" <= 0.049415) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.005135) THEN 17 ELSE 18 END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_8" <= 0.006904) THEN CASE WHEN (model_input."X_8" <= -0.044029) THEN CASE WHEN (model_input."X_7" <= -0.030453) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 17 ELSE 18 END ELSE 10 END ELSE CASE WHEN (model_input."X_9" <= -0.063209) THEN 7 ELSE CASE WHEN (model_input."X_6" <= -0.043401) THEN 11 ELSE CASE WHEN (model_input."X_2" <= -0.036924) THEN 13 ELSE 14 END END END END ELSE CASE WHEN (model_input."X_2" <= 0.017506) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.067267) THEN 15 ELSE 16 END END END AS node_id
  FROM "model_input"
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
"DT_node_lookup_5" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018430) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_4" <= -0.009137) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_8" <= -0.039554) THEN CASE WHEN (model_input."X_5" <= 0.011995) THEN CASE WHEN (model_input."X_3" <= -0.015999) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= -0.028001) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 0.003567) THEN 15 ELSE 16 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 162.062500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 258.833344 AS "E"
    UNION ALL
    SELECT 3 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 271.399994 AS "E"
    UNION ALL
    SELECT 5 AS nid, 136.750000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 82.166664 AS "E"
    UNION ALL
    SELECT 7 AS nid, 73.250000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 70.666664 AS "E"
    UNION ALL
    SELECT 12 AS nid, 81.000000 AS "E"
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
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_6" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.023373) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN CASE WHEN (model_input."X_9" <= -0.077707) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_8" <= -0.055638) THEN CASE WHEN (model_input."X_7" <= -0.021043) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= -0.015575) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_2" <= 0.023973) THEN CASE WHEN (model_input."X_3" <= 0.018430) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= -0.007761) THEN 15 ELSE CASE WHEN (model_input."X_4" <= 0.021134) THEN 19 ELSE 20 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 174.562500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 101.857140 AS "E"
    UNION ALL
    SELECT 2 AS nid, 231.111115 AS "E"
    UNION ALL
    SELECT 3 AS nid, 200.800003 AS "E"
    UNION ALL
    SELECT 4 AS nid, 269.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 136.333328 AS "E"
    UNION ALL
    SELECT 6 AS nid, 76.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 63.500000 AS "E"
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
    SELECT 13 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 272.333344 AS "E"
    UNION ALL
    SELECT 17 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 270.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_7" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.000382) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 5 ELSE CASE WHEN (model_input."X_8" <= -0.054768) THEN CASE WHEN (model_input."X_0" <= -0.018228) THEN CASE WHEN (model_input."X_5" <= -0.024957) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.003494) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN CASE WHEN (model_input."X_8" <= 0.079729) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_9" <= 0.067267) THEN 15 ELSE 16 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 143.375000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 79.099998 AS "E"
    UNION ALL
    SELECT 2 AS nid, 250.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 208.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 271.750000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 73.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 63.599998 AS "E"
    UNION ALL
    SELECT 10 AS nid, 84.750000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 69.333336 AS "E"
    UNION ALL
    SELECT 12 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 81.000000 AS "E"
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
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_8" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.030480) THEN CASE WHEN (model_input."X_8" <= -0.044768) THEN CASE WHEN (model_input."X_8" <= -0.068505) THEN 9 ELSE CASE WHEN (model_input."X_9" <= -0.042499) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 7 ELSE 8 END ELSE 6 END END ELSE CASE WHEN (model_input."X_9" <= 0.005135) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 0.067267) THEN 15 ELSE 16 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 133.312500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 89.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 266.250000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 74.375000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 118.250000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 132.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 77.142860 AS "E"
    UNION ALL
    SELECT 11 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 277.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_9" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= -0.001356) THEN CASE WHEN (model_input."X_3" <= -0.031492) THEN CASE WHEN (model_input."X_7" <= 0.015858) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= -0.068505) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 0.046557) THEN CASE WHEN (model_input."X_0" <= -0.072717) THEN 17 ELSE 18 END ELSE 14 END END END ELSE CASE WHEN (model_input."X_5" <= -0.022295) THEN CASE WHEN (model_input."X_9" <= 0.011349) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 0.048974) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 145.125000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 97.800003 AS "E"
    UNION ALL
    SELECT 2 AS nid, 224.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 268.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 202.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 126.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 69.599998 AS "E"
    UNION ALL
    SELECT 7 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 73.250000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 70.666664 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 72.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_10" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_8" <= -0.019431) THEN CASE WHEN (model_input."X_8" <= -0.054768) THEN CASE WHEN (model_input."X_5" <= 0.012778) THEN CASE WHEN (model_input."X_0" <= -0.072717) THEN 21 ELSE 22 END ELSE 14 END ELSE CASE WHEN (model_input."X_4" <= 0.030766) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_6" <= -0.048923) THEN 9 ELSE 10 END END ELSE 4 END ELSE CASE WHEN (model_input."X_6" <= 0.015505) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 17 ELSE CASE WHEN (model_input."X_3" <= 0.092451) THEN 19 ELSE 20 END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 145.375000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 95.818184 AS "E"
    UNION ALL
    SELECT 2 AS nid, 254.399994 AS "E"
    UNION ALL
    SELECT 3 AS nid, 83.400002 AS "E"
    UNION ALL
    SELECT 4 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 269.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 75.750000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 66.750000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 84.750000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 70.666664 AS "E"
    UNION ALL
    SELECT 14 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 272.333344 AS "E"
    UNION ALL
    SELECT 19 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 72.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_11" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_8" <= -0.039554) THEN CASE WHEN (model_input."X_6" <= -0.019470) THEN 9 ELSE CASE WHEN (model_input."X_2" <= -0.027762) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_8" <= 0.002428) THEN CASE WHEN (model_input."X_6" <= -0.043401) THEN 15 ELSE CASE WHEN (model_input."X_3" <= -0.046985) THEN 19 ELSE 20 END END ELSE 12 END END ELSE 6 END ELSE CASE WHEN (model_input."X_5" <= 0.033915) THEN CASE WHEN (model_input."X_3" <= 0.061465) THEN 13 ELSE 14 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 133.625000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 100.833336 AS "E"
    UNION ALL
    SELECT 2 AS nid, 232.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 268.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 90.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 72.250000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 100.142860 AS "E"
    UNION ALL
    SELECT 9 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 78.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 96.166664 AS "E"
    UNION ALL
    SELECT 12 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 99.199997 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 96.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_12" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.031048) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN CASE WHEN (model_input."X_0" <= -0.025494) THEN 17 ELSE 18 END ELSE 10 END ELSE CASE WHEN (model_input."X_7" <= -0.021043) THEN CASE WHEN (model_input."X_3" <= -0.024606) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_6" <= -0.043401) THEN 7 ELSE CASE WHEN (model_input."X_3" <= -0.046985) THEN 11 ELSE 12 END END END END ELSE CASE WHEN (model_input."X_4" <= 0.021134) THEN 15 ELSE 16 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 124.312500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 103.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 132.800003 AS "E"
    UNION ALL
    SELECT 4 AS nid, 86.444443 AS "E"
    UNION ALL
    SELECT 5 AS nid, 74.250000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 96.199997 AS "E"
    UNION ALL
    SELECT 7 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 138.666672 AS "E"
    UNION ALL
    SELECT 10 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 141.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_13" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN CASE WHEN (model_input."X_5" <= -0.017911) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_8" <= -0.068505) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.003494) THEN CASE WHEN (model_input."X_0" <= -0.010963) THEN 13 ELSE 14 END ELSE 10 END END END ELSE CASE WHEN (model_input."X_4" <= 0.046589) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 113.125000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 96.785713 AS "E"
    UNION ALL
    SELECT 2 AS nid, 227.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 137.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 80.500000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 83.333336 AS "E"
    UNION ALL
    SELECT 9 AS nid, 79.714287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_14" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.020976) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN CASE WHEN (model_input."X_6" <= 0.011824) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 0.030811) THEN CASE WHEN (model_input."X_0" <= -0.056370) THEN CASE WHEN (model_input."X_0" <= -0.072717) THEN 15 ELSE 16 END ELSE 10 END ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 0.049415) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 0.094172) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 126.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 86.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 246.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 138.666672 AS "E"
    UNION ALL
    SELECT 4 AS nid, 68.444443 AS "E"
    UNION ALL
    SELECT 5 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 262.666656 AS "E"
    UNION ALL
    SELECT 7 AS nid, 62.166668 AS "E"
    UNION ALL
    SELECT 8 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 69.333336 AS "E"
    UNION ALL
    SELECT 10 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 72.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_15" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_9" <= -0.050783) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN CASE WHEN (model_input."X_9" <= -0.077707) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (model_input."X_4" <= -0.000881) THEN CASE WHEN (model_input."X_0" <= -0.069084) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_4" <= 0.030766) THEN 9 ELSE 10 END END END ELSE CASE WHEN (model_input."X_9" <= 0.015491) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 105.062500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 86.785713 AS "E"
    UNION ALL
    SELECT 2 AS nid, 233.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 133.250000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 68.199997 AS "E"
    UNION ALL
    SELECT 7 AS nid, 57.166668 AS "E"
    UNION ALL
    SELECT 8 AS nid, 84.750000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 136.333328 AS "E"
    UNION ALL
    SELECT 12 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 141.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_16" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.032769) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN CASE WHEN (model_input."X_9" <= -0.077707) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= -0.036418) THEN CASE WHEN (model_input."X_9" <= -0.044570) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_9" <= 0.025846) THEN 7 ELSE 8 END END END ELSE CASE WHEN (model_input."X_9" <= 0.005135) THEN 11 ELSE 12 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 147.312500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 95.545456 AS "E"
    UNION ALL
    SELECT 2 AS nid, 261.200012 AS "E"
    UNION ALL
    SELECT 3 AS nid, 139.250000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 70.571426 AS "E"
    UNION ALL
    SELECT 5 AS nid, 61.799999 AS "E"
    UNION ALL
    SELECT 6 AS nid, 92.500000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 141.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_17" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018430) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN CASE WHEN (model_input."X_3" <= -0.021163) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= -0.038815) THEN CASE WHEN (model_input."X_0" <= -0.056370) THEN CASE WHEN (model_input."X_4" <= -0.037344) THEN 17 ELSE 18 END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= -0.046985) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_1" <= 0.003019) THEN CASE WHEN (model_input."X_0" <= -0.021861) THEN 11 ELSE 12 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 122.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 94.692307 AS "E"
    UNION ALL
    SELECT 2 AS nid, 241.666672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 264.500000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 137.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 75.666664 AS "E"
    UNION ALL
    SELECT 7 AS nid, 62.833332 AS "E"
    UNION ALL
    SELECT 8 AS nid, 101.333336 AS "E"
    UNION ALL
    SELECT 9 AS nid, 70.666664 AS "E"
    UNION ALL
    SELECT 10 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_18" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.051128) THEN CASE WHEN (model_input."X_8" <= -0.039554) THEN CASE WHEN (model_input."X_8" <= -0.068505) THEN 9 ELSE CASE WHEN (model_input."X_6" <= 0.046799) THEN CASE WHEN (model_input."X_0" <= -0.072717) THEN 17 ELSE 18 END ELSE 14 END END ELSE CASE WHEN (model_input."X_7" <= 0.060693) THEN CASE WHEN (model_input."X_0" <= -0.010963) THEN CASE WHEN (model_input."X_4" <= -0.002945) THEN 15 ELSE 16 END ELSE 12 END ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 97.437500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 77.571426 AS "E"
    UNION ALL
    SELECT 2 AS nid, 236.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 65.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 100.199997 AS "E"
    UNION ALL
    SELECT 7 AS nid, 94.250000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 73.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 98.666664 AS "E"
    UNION ALL
    SELECT 12 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 71.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 72.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_19" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.020976) THEN CASE WHEN (model_input."X_6" <= 0.000779) THEN CASE WHEN (model_input."X_8" <= -0.068505) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 0.025846) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_0" <= -0.078165) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= -0.037463) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 0.012648) THEN CASE WHEN (model_input."X_2" <= 0.098881) THEN 13 ELSE 14 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 141.812500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 76.888885 AS "E"
    UNION ALL
    SELECT 2 AS nid, 225.285721 AS "E"
    UNION ALL
    SELECT 3 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 245.500000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 271.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 66.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 115.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 74.250000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_20" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= -0.001356) THEN CASE WHEN (model_input."X_8" <= -0.019431) THEN CASE WHEN (model_input."X_8" <= -0.068505) THEN 13 ELSE CASE WHEN (model_input."X_9" <= 0.046557) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 21 ELSE 22 END ELSE 18 END END ELSE CASE WHEN (model_input."X_9" <= -0.061138) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_6" <= 0.013665) THEN CASE WHEN (model_input."X_3" <= 0.030480) THEN 9 ELSE CASE WHEN (model_input."X_9" <= 0.005135) THEN 15 ELSE CASE WHEN (model_input."X_9" <= 0.067267) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_9" <= -0.050783) THEN 5 ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 144.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 88.888885 AS "E"
    UNION ALL
    SELECT 2 AS nid, 214.857147 AS "E"
    UNION ALL
    SELECT 3 AS nid, 256.500000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 159.333328 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 68.800003 AS "E"
    UNION ALL
    SELECT 8 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 268.666656 AS "E"
    UNION ALL
    SELECT 11 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 72.250000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 69.333336 AS "E"
    UNION ALL
    SELECT 18 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_21" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_3" <= -0.019442) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= -0.055638) THEN CASE WHEN (model_input."X_2" <= -0.039079) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= -0.010963) THEN CASE WHEN (model_input."X_8" <= -0.021828) THEN 15 ELSE 16 END ELSE 10 END END END ELSE CASE WHEN (model_input."X_8" <= 0.093894) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 125.375000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 88.333336 AS "E"
    UNION ALL
    SELECT 2 AS nid, 236.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 129.666672 AS "E"
    UNION ALL
    SELECT 6 AS nid, 74.555557 AS "E"
    UNION ALL
    SELECT 7 AS nid, 61.799999 AS "E"
    UNION ALL
    SELECT 8 AS nid, 90.500000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 104.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_22" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.022241) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_5" <= 0.011995) THEN CASE WHEN (model_input."X_9" <= -0.005220) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= -0.015575) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_9" <= 0.050699) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 132.125000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 94.181816 AS "E"
    UNION ALL
    SELECT 2 AS nid, 215.600006 AS "E"
    UNION ALL
    SELECT 3 AS nid, 202.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 128.250000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 74.714287 AS "E"
    UNION ALL
    SELECT 7 AS nid, 62.500000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 91.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 70.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_23" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.031048) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN CASE WHEN (model_input."X_4" <= -0.026336) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.015889) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_4" <= -0.009137) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.005341) THEN 15 ELSE 16 END END END ELSE 4 END ELSE CASE WHEN (model_input."X_8" <= 0.005359) THEN 13 ELSE CASE WHEN (model_input."X_6" <= -0.028674) THEN 17 ELSE 18 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 160.812500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 110.272728 AS "E"
    UNION ALL
    SELECT 2 AS nid, 272.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 99.300003 AS "E"
    UNION ALL
    SELECT 4 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 120.166664 AS "E"
    UNION ALL
    SELECT 6 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 128.250000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 72.333336 AS "E"
    UNION ALL
    SELECT 11 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 275.250000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 270.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_24" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_9" <= 0.032059) THEN CASE WHEN (model_input."X_8" <= -0.044029) THEN CASE WHEN (model_input."X_3" <= -0.050427) THEN 7 ELSE CASE WHEN (model_input."X_0" <= -0.021861) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_7" <= -0.021043) THEN 5 ELSE CASE WHEN (model_input."X_4" <= -0.002945) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_6" <= -0.028674) THEN 11 ELSE 12 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 109.625000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 86.214287 AS "E"
    UNION ALL
    SELECT 2 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 64.285713 AS "E"
    UNION ALL
    SELECT 4 AS nid, 108.142860 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 102.666664 AS "E"
    UNION ALL
    SELECT 7 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 76.666664 AS "E"
    UNION ALL
    SELECT 9 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 96.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_25" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= -0.002228) THEN CASE WHEN (model_input."X_8" <= -0.038815) THEN CASE WHEN (model_input."X_7" <= -0.030453) THEN CASE WHEN (model_input."X_5" <= -0.024957) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (model_input."X_9" <= -0.028001) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_5" <= -0.011178) THEN CASE WHEN (model_input."X_5" <= -0.022295) THEN CASE WHEN (model_input."X_9" <= 0.011349) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_7" <= -0.002592) THEN 5 ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 120.875000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 70.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 205.666672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 252.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 159.333328 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 268.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 62.500000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 70.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_26" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.022241) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_6" <= -0.043401) THEN 7 ELSE CASE WHEN (model_input."X_0" <= -0.056370) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 15 ELSE 16 END ELSE 10 END END END ELSE CASE WHEN (model_input."X_3" <= 0.030480) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.015858) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 147.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 93.727272 AS "E"
    UNION ALL
    SELECT 2 AS nid, 264.200012 AS "E"
    UNION ALL
    SELECT 3 AS nid, 136.750000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 69.142860 AS "E"
    UNION ALL
    SELECT 5 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 275.250000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 64.400002 AS "E"
    UNION ALL
    SELECT 9 AS nid, 70.666664 AS "E"
    UNION ALL
    SELECT 10 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 68.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_27" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_2" <= -0.035307) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_6" <= -0.028674) THEN 19 ELSE 20 END ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= -0.000881) THEN CASE WHEN (model_input."X_0" <= -0.069084) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_5" <= 0.042840) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (model_input."X_6" <= 0.015505) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 0.003019) THEN 21 ELSE 22 END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 135.562500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 97.250000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 250.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 86.090912 AS "E"
    UNION ALL
    SELECT 4 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 268.666656 AS "E"
    UNION ALL
    SELECT 6 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 120.666664 AS "E"
    UNION ALL
    SELECT 8 AS nid, 73.125000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 129.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 61.500000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 84.750000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 277.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_28" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018430) THEN CASE WHEN (model_input."X_9" <= -0.063209) THEN CASE WHEN (model_input."X_0" <= -0.025494) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_7" <= -0.012002) THEN CASE WHEN (model_input."X_2" <= -0.006206) THEN 9 ELSE CASE WHEN (model_input."X_7" <= -0.030453) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_4" <= -0.002945) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_7" <= 0.015858) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 13 ELSE 14 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 144.437500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 92.400002 AS "E"
    UNION ALL
    SELECT 2 AS nid, 231.166672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 266.333344 AS "E"
    UNION ALL
    SELECT 4 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 137.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 81.125000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 70.599998 AS "E"
    UNION ALL
    SELECT 8 AS nid, 98.666664 AS "E"
    UNION ALL
    SELECT 9 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 63.666668 AS "E"
    UNION ALL
    SELECT 11 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 141.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_29" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_8" <= -0.011705) THEN CASE WHEN (model_input."X_8" <= -0.050324) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= -0.038815) THEN CASE WHEN (model_input."X_0" <= -0.056370) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 0.002955) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_2" <= 0.017506) THEN 3 ELSE CASE WHEN (model_input."X_6" <= 0.000779) THEN CASE WHEN (model_input."X_1" <= 0.003019) THEN 19 ELSE 20 END ELSE 16 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 156.312500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 103.300003 AS "E"
    UNION ALL
    SELECT 2 AS nid, 244.666672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 269.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 131.399994 AS "E"
    UNION ALL
    SELECT 6 AS nid, 75.199997 AS "E"
    UNION ALL
    SELECT 7 AS nid, 66.333336 AS "E"
    UNION ALL
    SELECT 8 AS nid, 88.500000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 136.333328 AS "E"
    UNION ALL
    SELECT 14 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 272.333344 AS "E"
    UNION ALL
    SELECT 16 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 277.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_30" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.022241) THEN CASE WHEN (model_input."X_9" <= -0.042499) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_7" <= 0.015858) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (model_input."X_4" <= -0.009137) THEN 9 ELSE CASE WHEN (model_input."X_8" <= -0.054768) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_0" <= 0.012648) THEN CASE WHEN (model_input."X_5" <= 0.001504) THEN 15 ELSE 16 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 155.062500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 90.400002 AS "E"
    UNION ALL
    SELECT 2 AS nid, 262.833344 AS "E"
    UNION ALL
    SELECT 3 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 271.399994 AS "E"
    UNION ALL
    SELECT 6 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 130.666672 AS "E"
    UNION ALL
    SELECT 8 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 74.500000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 270.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_31" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_8" <= -0.060323) THEN CASE WHEN (model_input."X_0" <= -0.030942) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_7" <= 0.015858) THEN CASE WHEN (model_input."X_6" <= 0.011824) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= -0.028001) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_6" <= -0.039719) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 0.018430) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 167.062500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 98.750000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 235.375000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 210.399994 AS "E"
    UNION ALL
    SELECT 5 AS nid, 63.666668 AS "E"
    UNION ALL
    SELECT 6 AS nid, 119.800003 AS "E"
    UNION ALL
    SELECT 7 AS nid, 133.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 137.500000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 141.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
