WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_4" <= 0.745136) THEN CASE WHEN (model_input."X_3" <= 0.764428) THEN CASE WHEN (model_input."X_8" <= 0.495034) THEN CASE WHEN (model_input."X_2" <= 0.593172) THEN 9 ELSE 10 END ELSE 8 END ELSE CASE WHEN (model_input."X_9" <= 0.488583) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_9" <= 0.230917) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.352133) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.460505 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.097476 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.784395 AS "E"
    UNION ALL
    SELECT 3 AS nid, 10.698502 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.895427 AS "E"
    UNION ALL
    SELECT 5 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 6 AS nid, 19.556555 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 10 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 12 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 13 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 14 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.701017) THEN CASE WHEN (model_input."X_8" <= 0.503367) THEN CASE WHEN (model_input."X_1" <= 0.211490) THEN 13 ELSE CASE WHEN (model_input."X_4" <= 0.307951) THEN 19 ELSE 20 END END ELSE 10 END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_7" <= 0.093157) THEN 7 ELSE CASE WHEN (model_input."X_7" <= 0.253560) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 0.939496) THEN CASE WHEN (model_input."X_9" <= 0.488583) THEN CASE WHEN (model_input."X_5" <= 0.967301) THEN 17 ELSE 18 END ELSE 16 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.414833 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.076399 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.841394 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.275595 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.920355 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.014367 AS "E"
    UNION ALL
    SELECT 6 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.133890 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.590693 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.826265 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.262297 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 19 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 20 AS nid, 11.800902 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.438031) THEN CASE WHEN (model_input."X_2" <= 0.269714) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 0.465296) THEN CASE WHEN (model_input."X_1" <= 0.211490) THEN 15 ELSE CASE WHEN (model_input."X_1" <= 0.311240) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_8" <= 0.696568) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_4" <= 0.740347) THEN CASE WHEN (model_input."X_6" <= 0.741121) THEN CASE WHEN (model_input."X_1" <= 0.740525) THEN 19 ELSE 20 END ELSE 10 END ELSE CASE WHEN (model_input."X_6" <= 0.188719) THEN CASE WHEN (model_input."X_9" <= 0.352133) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_5" <= 0.774963) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.901592 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.650929 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.429886 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.754343 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.774313 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.131679 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.996967 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.262297 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 11 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 12 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.643246 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 15 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 16 AS nid, 11.817811 AS "E"
    UNION ALL
    SELECT 17 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 18 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 19 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 20 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 21 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 22 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 23 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 24 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.331523) THEN CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_8" <= 0.400081) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_1" <= 0.169404) THEN CASE WHEN (model_input."X_9" <= 0.598821) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_9" <= 0.854095) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_3" <= 0.348390) THEN CASE WHEN (model_input."X_9" <= 0.245529) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.777490) THEN CASE WHEN (model_input."X_9" <= 0.352133) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_9" <= 0.168289) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.906218 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.781691 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.447100 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.265072 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.538113 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.864738 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.698645 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.524567 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.174015 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 13 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 15 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 16 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 17 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 18 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 19 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 20 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 21 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 22 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.258731) THEN CASE WHEN (model_input."X_8" <= 0.240653) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.648440) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_4" <= 0.470478) THEN CASE WHEN (model_input."X_8" <= 0.184222) THEN 9 ELSE CASE WHEN (model_input."X_9" <= 0.366237) THEN CASE WHEN (model_input."X_1" <= 0.611668) THEN 19 ELSE 20 END ELSE 18 END END ELSE CASE WHEN (model_input."X_0" <= 0.209728) THEN 5 ELSE CASE WHEN (model_input."X_8" <= 0.609613) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.896824) THEN 15 ELSE 16 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.340707 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.307674 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.160526 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.856943 AS "E"
    UNION ALL
    SELECT 4 AS nid, 19.464109 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 6 AS nid, 20.541784 AS "E"
    UNION ALL
    SELECT 7 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.078293 AS "E"
    UNION ALL
    SELECT 9 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.390545 AS "E"
    UNION ALL
    SELECT 11 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.524567 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 15 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 16 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.251521 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 19 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 20 AS nid, 15.371187 AS "E"
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
