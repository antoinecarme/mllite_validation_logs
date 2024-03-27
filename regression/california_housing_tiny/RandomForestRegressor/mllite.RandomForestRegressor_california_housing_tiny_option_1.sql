WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_7" <= 3.274100) THEN CASE WHEN (model_input."X_7" <= 1.804500) THEN 9 ELSE CASE WHEN (model_input."X_6" <= 396.000000) THEN 11 ELSE CASE WHEN (model_input."X_4" <= 684.500000) THEN 13 ELSE 14 END END END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 36.500000) THEN 3 ELSE CASE WHEN (model_input."X_6" <= 425.500000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 164250.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 97750.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 275083.343750 AS "E"
    UNION ALL
    SELECT 3 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 88522.218750 AS "E"
    UNION ALL
    SELECT 6 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 85687.500000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 87216.664062 AS "E"
    UNION ALL
    SELECT 13 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 87000.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.854996) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_1" <= 38.019997) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 17 ELSE 18 END ELSE 8 END ELSE CASE WHEN (model_input."X_6" <= 425.500000) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 14.000000) THEN 5 ELSE CASE WHEN (model_input."X_5" <= 1332.000000) THEN CASE WHEN (model_input."X_7" <= 2.441850) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_4" <= 783.000000) THEN CASE WHEN (model_input."X_1" <= 35.965000) THEN 19 ELSE 20 END ELSE 12 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 176662.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 252012.500000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 101312.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 225200.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 89957.140625 AS "E"
    UNION ALL
    SELECT 7 AS nid, 252400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 73266.664062 AS "E"
    UNION ALL
    SELECT 10 AS nid, 102475.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 117950.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 124700.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.854996) THEN CASE WHEN (model_input."X_1" <= 38.110001) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_5" <= 1024.000000) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 14.000000) THEN CASE WHEN (model_input."X_7" <= 4.523450) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 442.000000) THEN CASE WHEN (model_input."X_5" <= 965.000000) THEN 15 ELSE CASE WHEN (model_input."X_4" <= 381.500000) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_0" <= -117.625000) THEN CASE WHEN (model_input."X_0" <= -120.040001) THEN 21 ELSE 22 END ELSE 18 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 174818.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 264183.343750 AS "E"
    UNION ALL
    SELECT 2 AS nid, 121200.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 288020.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 213100.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 98225.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 258400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 75666.664062 AS "E"
    UNION ALL
    SELECT 12 AS nid, 111760.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 84700.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 117950.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_2" <= 18.000000) THEN CASE WHEN (model_input."X_2" <= 6.000000) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 12.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_4" <= 332.000000) THEN 11 ELSE CASE WHEN (model_input."X_7" <= 2.869350) THEN CASE WHEN (model_input."X_6" <= 396.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_2" <= 23.500000) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (model_input."X_2" <= 36.500000) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 2.298600) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 44.500000) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 178131.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 128472.726562 AS "E"
    UNION ALL
    SELECT 2 AS nid, 287380.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 208066.671875 AS "E"
    UNION ALL
    SELECT 4 AS nid, 98625.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 314700.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 189400.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 92000.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 82900.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 104133.335938 AS "E"
    UNION ALL
    SELECT 17 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.669998) THEN CASE WHEN (model_input."X_1" <= 38.074997) THEN CASE WHEN (model_input."X_1" <= 37.724998) THEN CASE WHEN (model_input."X_1" <= 37.574997) THEN CASE WHEN (model_input."X_5" <= 1181.500000) THEN 15 ELSE 16 END ELSE 10 END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 25.500000) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 1814.500000) THEN CASE WHEN (model_input."X_0" <= -121.369995) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 23.500000) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 29.500000) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 186537.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 259577.781250 AS "E"
    UNION ALL
    SELECT 2 AS nid, 92628.570312 AS "E"
    UNION ALL
    SELECT 3 AS nid, 284742.843750 AS "E"
    UNION ALL
    SELECT 4 AS nid, 171500.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 260160.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 269333.343750 AS "E"
    UNION ALL
    SELECT 10 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 83500.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 99475.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 111950.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 111200.000000 AS "E"
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
