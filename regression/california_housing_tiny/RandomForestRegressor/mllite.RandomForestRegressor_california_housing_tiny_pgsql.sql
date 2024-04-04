WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_7" <= 3.274100) THEN CASE WHEN (model_input."X_7" <= 1.804500) THEN 9 ELSE CASE WHEN (model_input."X_6" <= 396.000000) THEN 11 ELSE CASE WHEN (model_input."X_4" <= 684.500000) THEN 13 ELSE 14 END END END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 36.500000) THEN 3 ELSE CASE WHEN (model_input."X_6" <= 425.500000) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_0" <= -121.854996) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_1" <= 38.019997) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 17 ELSE 18 END ELSE 8 END ELSE CASE WHEN (model_input."X_6" <= 425.500000) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 14.000000) THEN 5 ELSE CASE WHEN (model_input."X_5" <= 1332.000000) THEN CASE WHEN (model_input."X_7" <= 2.441850) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_4" <= 783.000000) THEN CASE WHEN (model_input."X_1" <= 35.965000) THEN 19 ELSE 20 END ELSE 12 END END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_0" <= -121.854996) THEN CASE WHEN (model_input."X_1" <= 38.110001) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_5" <= 1024.000000) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 14.000000) THEN CASE WHEN (model_input."X_7" <= 4.523450) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 442.000000) THEN CASE WHEN (model_input."X_5" <= 965.000000) THEN 15 ELSE CASE WHEN (model_input."X_4" <= 381.500000) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_0" <= -117.625000) THEN CASE WHEN (model_input."X_0" <= -120.040001) THEN 21 ELSE 22 END ELSE 18 END END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_2" <= 18.000000) THEN CASE WHEN (model_input."X_2" <= 6.000000) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 12.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_4" <= 332.000000) THEN 11 ELSE CASE WHEN (model_input."X_7" <= 2.869350) THEN CASE WHEN (model_input."X_6" <= 396.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_2" <= 23.500000) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (model_input."X_2" <= 36.500000) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 2.298600) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 44.500000) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_0" <= -121.669998) THEN CASE WHEN (model_input."X_1" <= 38.074997) THEN CASE WHEN (model_input."X_1" <= 37.724998) THEN CASE WHEN (model_input."X_1" <= 37.574997) THEN CASE WHEN (model_input."X_5" <= 1181.500000) THEN 15 ELSE 16 END ELSE 10 END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 25.500000) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 1814.500000) THEN CASE WHEN (model_input."X_0" <= -121.369995) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 23.500000) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 29.500000) THEN 19 ELSE 20 END END END END AS node_id
  FROM "model_input"
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
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_7" <= 4.318350) THEN CASE WHEN (model_input."X_3" <= 1444.000000) THEN 7 ELSE CASE WHEN (model_input."X_6" <= 354.500000) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 1.804500) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 2077.500000) THEN CASE WHEN (model_input."X_7" <= 2.301250) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_3" <= 3538.000000) THEN 15 ELSE 16 END END END END END ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= -122.445000) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 157731.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 108354.546875 AS "E"
    UNION ALL
    SELECT 2 AS nid, 266360.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 94650.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 89055.554688 AS "E"
    UNION ALL
    SELECT 9 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 92987.500000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 90385.710938 AS "E"
    UNION ALL
    SELECT 13 AS nid, 86500.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 95566.664062 AS "E"
    UNION ALL
    SELECT 15 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 81100.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.900002) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_6" <= 330.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_7" <= 4.139600) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_7" <= 3.274100) THEN CASE WHEN (model_input."X_7" <= 1.804500) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 39.080002) THEN CASE WHEN (model_input."X_0" <= -121.369995) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 21.000000) THEN 19 ELSE 20 END END ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 38.674999) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 153400.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 271140.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 99881.820312 AS "E"
    UNION ALL
    SELECT 3 AS nid, 230266.671875 AS "E"
    UNION ALL
    SELECT 4 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 83562.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 143400.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 79614.289062 AS "E"
    UNION ALL
    SELECT 15 AS nid, 83283.335938 AS "E"
    UNION ALL
    SELECT 16 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 87650.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.850006) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_1" <= 38.019997) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_4" <= 236.500000) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 2485.000000) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_1" <= 38.330002) THEN CASE WHEN (model_input."X_6" <= 735.000000) THEN CASE WHEN (model_input."X_0" <= -120.040001) THEN 17 ELSE CASE WHEN (model_input."X_4" <= 453.000000) THEN 19 ELSE 20 END END ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= -121.505005) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 190343.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 262055.562500 AS "E"
    UNION ALL
    SELECT 2 AS nid, 98142.859375 AS "E"
    UNION ALL
    SELECT 3 AS nid, 227040.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 305825.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 109660.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 69350.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 115325.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 112200.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 111200.000000 AS "E"
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
    CASE WHEN (model_input."X_7" <= 3.274100) THEN CASE WHEN (model_input."X_2" <= 30.500000) THEN CASE WHEN (model_input."X_2" <= 25.500000) THEN CASE WHEN (model_input."X_2" <= 21.000000) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_5" <= 1187.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 38.019997) THEN CASE WHEN (model_input."X_2" <= 20.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_2" <= 12.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 127018.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 89172.726562 AS "E"
    UNION ALL
    SELECT 2 AS nid, 210280.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 245900.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 186533.328125 AS "E"
    UNION ALL
    SELECT 5 AS nid, 72462.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 133733.328125 AS "E"
    UNION ALL
    SELECT 7 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 87325.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 246400.000000 AS "E"
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
    CASE WHEN (model_input."X_7" <= 4.589750) THEN CASE WHEN (model_input."X_6" <= 282.500000) THEN CASE WHEN (model_input."X_7" <= 2.828400) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_5" <= 1174.000000) THEN 11 ELSE CASE WHEN (model_input."X_6" <= 735.000000) THEN CASE WHEN (model_input."X_0" <= -120.040001) THEN 15 ELSE CASE WHEN (model_input."X_7" <= 2.372600) THEN 17 ELSE 18 END END ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 3173.500000) THEN CASE WHEN (model_input."X_2" <= 10.000000) THEN 9 ELSE 10 END ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 170262.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 122590.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 249716.671875 AS "E"
    UNION ALL
    SELECT 3 AS nid, 230000.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 95737.500000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 235920.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 104520.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 116200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 111950.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 112700.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_7" <= 3.274100) THEN CASE WHEN (model_input."X_1" <= 38.549999) THEN CASE WHEN (model_input."X_1" <= 36.199997) THEN CASE WHEN (model_input."X_2" <= 23.500000) THEN 17 ELSE CASE WHEN (model_input."X_5" <= 1493.500000) THEN 23 ELSE 24 END END ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 39.080002) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= 35.934998) THEN 7 ELSE CASE WHEN (model_input."X_4" <= 528.000000) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_0" <= -122.445000) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 238.500000) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 2485.000000) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 175018.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 123945.453125 AS "E"
    UNION ALL
    SELECT 2 AS nid, 287380.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 92400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 208066.671875 AS "E"
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
    SELECT 11 AS nid, 108580.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 65433.332031 AS "E"
    UNION ALL
    SELECT 13 AS nid, 99475.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 111950.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 111200.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 36.000000) THEN CASE WHEN (model_input."X_2" <= 18.000000) THEN CASE WHEN (model_input."X_1" <= 35.934998) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 3345.000000) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_6" <= 305.500000) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 39.080002) THEN CASE WHEN (model_input."X_7" <= 2.221150) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 27.500000) THEN 19 ELSE 20 END END ELSE 12 END END END ELSE CASE WHEN (model_input."X_3" <= 967.500000) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 37.480000) THEN 15 ELSE 16 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 189143.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 126345.453125 AS "E"
    UNION ALL
    SELECT 2 AS nid, 327300.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 208066.671875 AS "E"
    UNION ALL
    SELECT 4 AS nid, 95700.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 79266.664062 AS "E"
    UNION ALL
    SELECT 7 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 189400.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 339325.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 90100.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 83066.664062 AS "E"
    UNION ALL
    SELECT 15 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 81100.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_2" <= 12.000000) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 30.500000) THEN CASE WHEN (model_input."X_4" <= 389.500000) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 35.994999) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_5" <= 1123.500000) THEN 11 ELSE CASE WHEN (model_input."X_7" <= 2.668100) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (model_input."X_1" <= 37.724998) THEN CASE WHEN (model_input."X_5" <= 677.000000) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 170618.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 125991.664062 AS "E"
    UNION ALL
    SELECT 2 AS nid, 304500.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 102110.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 262800.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 82533.335938 AS "E"
    UNION ALL
    SELECT 8 AS nid, 131475.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 117950.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 87520.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 38.500000) THEN CASE WHEN (model_input."X_2" <= 18.000000) THEN CASE WHEN (model_input."X_0" <= -121.129997) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_7" <= 3.340400) THEN CASE WHEN (model_input."X_0" <= -121.505005) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 28.500000) THEN CASE WHEN (model_input."X_1" <= 35.994999) THEN 15 ELSE 16 END ELSE 14 END END ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 47.000000) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 194931.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 114500.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 298342.843750 AS "E"
    UNION ALL
    SELECT 3 AS nid, 189400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 93100.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 80460.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 86175.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 87866.664062 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.850006) THEN CASE WHEN (model_input."X_1" <= 38.019997) THEN CASE WHEN (model_input."X_3" <= 1240.500000) THEN 13 ELSE CASE WHEN (model_input."X_0" <= -122.184998) THEN 15 ELSE 16 END END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 14.000000) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 2144.000000) THEN CASE WHEN (model_input."X_6" <= 354.500000) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 28.500000) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_0" <= -117.184998) THEN CASE WHEN (model_input."X_0" <= -119.600006) THEN 17 ELSE 18 END ELSE 10 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 165350.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 255266.671875 AS "E"
    UNION ALL
    SELECT 2 AS nid, 111400.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 94050.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 266720.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 78825.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 109275.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 116700.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 85900.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 258400.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 81100.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.850006) THEN CASE WHEN (model_input."X_1" <= 38.074997) THEN CASE WHEN (model_input."X_2" <= 47.000000) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 13 ELSE CASE WHEN (model_input."X_5" <= 1181.500000) THEN 15 ELSE 16 END END ELSE 8 END ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 33.730000) THEN 3 ELSE CASE WHEN (model_input."X_5" <= 1174.000000) THEN CASE WHEN (model_input."X_5" <= 965.000000) THEN 11 ELSE CASE WHEN (model_input."X_5" <= 1040.500000) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_0" <= -119.600006) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 190118.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 245266.671875 AS "E"
    UNION ALL
    SELECT 2 AS nid, 119214.289062 AS "E"
    UNION ALL
    SELECT 3 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 98183.335938 AS "E"
    UNION ALL
    SELECT 5 AS nid, 283080.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 267300.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 75666.664062 AS "E"
    UNION ALL
    SELECT 10 AS nid, 120700.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 84700.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 274266.656250 AS "E"
    UNION ALL
    SELECT 15 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 81100.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.850006) THEN CASE WHEN (model_input."X_1" <= 38.019997) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 11 ELSE CASE WHEN (model_input."X_0" <= -121.915001) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= 38.404999) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_6" <= 267.500000) THEN 3 ELSE CASE WHEN (model_input."X_0" <= -121.550003) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 35.994999) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 163612.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 221833.328125 AS "E"
    UNION ALL
    SELECT 2 AS nid, 128680.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 93933.335938 AS "E"
    UNION ALL
    SELECT 5 AS nid, 263333.343750 AS "E"
    UNION ALL
    SELECT 6 AS nid, 180333.328125 AS "E"
    UNION ALL
    SELECT 7 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 87780.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 271800.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.854996) THEN CASE WHEN (model_input."X_1" <= 38.074997) THEN CASE WHEN (model_input."X_1" <= 37.724998) THEN CASE WHEN (model_input."X_4" <= 501.000000) THEN 13 ELSE 14 END ELSE 6 END ELSE CASE WHEN (model_input."X_7" <= 4.435900) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_5" <= 648.000000) THEN 7 ELSE CASE WHEN (model_input."X_7" <= 3.340400) THEN CASE WHEN (model_input."X_0" <= -119.360001) THEN CASE WHEN (model_input."X_3" <= 1791.000000) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_0" <= -117.184998) THEN 17 ELSE 18 END END ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 161500.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 229914.281250 AS "E"
    UNION ALL
    SELECT 2 AS nid, 108288.890625 AS "E"
    UNION ALL
    SELECT 3 AS nid, 280350.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 162666.671875 AS "E"
    UNION ALL
    SELECT 5 AS nid, 258400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 99225.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 90733.335938 AS "E"
    UNION ALL
    SELECT 12 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 85900.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 95566.664062 AS "E"
    UNION ALL
    SELECT 17 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 81100.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 38.500000) THEN CASE WHEN (model_input."X_2" <= 18.000000) THEN CASE WHEN (model_input."X_3" <= 2423.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 1467.000000) THEN 9 ELSE CASE WHEN (model_input."X_5" <= 1000.500000) THEN 11 ELSE CASE WHEN (model_input."X_7" <= 2.221150) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 31.000000) THEN CASE WHEN (model_input."X_5" <= 1789.000000) THEN 17 ELSE 18 END ELSE 16 END END END END END ELSE CASE WHEN (model_input."X_6" <= 238.500000) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 173600.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 138923.078125 AS "E"
    UNION ALL
    SELECT 2 AS nid, 323866.656250 AS "E"
    UNION ALL
    SELECT 3 AS nid, 207480.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 96075.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 89085.710938 AS "E"
    UNION ALL
    SELECT 11 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 94333.335938 AS "E"
    UNION ALL
    SELECT 13 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 90960.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 93425.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 87000.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 36.000000) THEN CASE WHEN (model_input."X_2" <= 18.000000) THEN CASE WHEN (model_input."X_0" <= -121.129997) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_6" <= 735.000000) THEN CASE WHEN (model_input."X_0" <= -122.260002) THEN 9 ELSE CASE WHEN (model_input."X_5" <= 1651.500000) THEN 15 ELSE 16 END END ELSE 8 END END ELSE CASE WHEN (model_input."X_7" <= 2.298600) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 37.480000) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 194337.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 138900.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 316300.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 193700.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 107585.710938 AS "E"
    UNION ALL
    SELECT 5 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 325575.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 123025.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 115700.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 111200.000000 AS "E"
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
    CASE WHEN (model_input."X_7" <= 4.130250) THEN CASE WHEN (model_input."X_3" <= 968.500000) THEN 3 ELSE CASE WHEN (model_input."X_5" <= 832.000000) THEN CASE WHEN (model_input."X_7" <= 2.930800) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_4" <= 407.000000) THEN CASE WHEN (model_input."X_7" <= 2.301250) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_7" <= 3.044900) THEN CASE WHEN (model_input."X_2" <= 29.500000) THEN 19 ELSE 20 END ELSE 16 END END END END ELSE CASE WHEN (model_input."X_5" <= 1326.000000) THEN CASE WHEN (model_input."X_7" <= 6.028550) THEN CASE WHEN (model_input."X_7" <= 5.174500) THEN 21 ELSE 22 END ELSE 10 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 167825.000000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 130118.179688 AS "E"
    UNION ALL
    SELECT 2 AS nid, 250780.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 115210.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 233800.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 156933.328125 AS "E"
    UNION ALL
    SELECT 8 AS nid, 97328.570312 AS "E"
    UNION ALL
    SELECT 9 AS nid, 245733.328125 AS "E"
    UNION ALL
    SELECT 10 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 85900.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 105900.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 112200.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 245400.000000 AS "E"
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
    CASE WHEN (model_input."X_5" <= 879.500000) THEN CASE WHEN (model_input."X_1" <= 38.110001) THEN CASE WHEN (model_input."X_2" <= 47.000000) THEN CASE WHEN (model_input."X_7" <= 3.872650) THEN 9 ELSE 10 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_7" <= 4.779200) THEN CASE WHEN (model_input."X_7" <= 1.804500) THEN 11 ELSE CASE WHEN (model_input."X_0" <= -121.505005) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 38.459999) THEN CASE WHEN (model_input."X_2" <= 21.000000) THEN 17 ELSE 18 END ELSE 16 END END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 159981.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 252240.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 118045.453125 AS "E"
    UNION ALL
    SELECT 3 AS nid, 279050.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 88062.500000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 256666.671875 AS "E"
    UNION ALL
    SELECT 8 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 80350.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 84900.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 87433.335938 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.750000) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_0" <= -122.184998) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 37.480000) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 12.000000) THEN 3 ELSE CASE WHEN (model_input."X_0" <= -121.505005) THEN 9 ELSE CASE WHEN (model_input."X_0" <= -119.360001) THEN CASE WHEN (model_input."X_0" <= -121.369995) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 23.500000) THEN 15 ELSE 16 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 194462.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 297716.656250 AS "E"
    UNION ALL
    SELECT 2 AS nid, 132510.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 84128.570312 AS "E"
    UNION ALL
    SELECT 5 AS nid, 258400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 337033.343750 AS "E"
    UNION ALL
    SELECT 7 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 88550.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 82900.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 99850.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_7" <= 4.130250) THEN CASE WHEN (model_input."X_2" <= 38.500000) THEN CASE WHEN (model_input."X_1" <= 38.349998) THEN CASE WHEN (model_input."X_4" <= 407.000000) THEN 11 ELSE CASE WHEN (model_input."X_5" <= 1493.500000) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_0" <= -121.485001) THEN 9 ELSE 10 END END ELSE 4 END ELSE CASE WHEN (model_input."X_7" <= 5.713650) THEN CASE WHEN (model_input."X_5" <= 1467.500000) THEN CASE WHEN (model_input."X_4" <= 385.500000) THEN 17 ELSE 18 END ELSE 14 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 185187.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 139730.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 260950.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 124233.335938 AS "E"
    UNION ALL
    SELECT 4 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 249400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 107883.335938 AS "E"
    UNION ALL
    SELECT 8 AS nid, 156933.328125 AS "E"
    UNION ALL
    SELECT 9 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 111800.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 245650.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 245400.000000 AS "E"
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
    CASE WHEN (model_input."X_7" <= 2.401000) THEN CASE WHEN (model_input."X_2" <= 30.500000) THEN CASE WHEN (model_input."X_4" <= 389.500000) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= -120.510002) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 35.720001) THEN 3 ELSE CASE WHEN (model_input."X_7" <= 3.600450) THEN 7 ELSE CASE WHEN (model_input."X_6" <= 472.500000) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 175162.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 115522.218750 AS "E"
    UNION ALL
    SELECT 2 AS nid, 251842.859375 AS "E"
    UNION ALL
    SELECT 3 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 275033.343750 AS "E"
    UNION ALL
    SELECT 5 AS nid, 67833.335938 AS "E"
    UNION ALL
    SELECT 6 AS nid, 139366.671875 AS "E"
    UNION ALL
    SELECT 7 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 260800.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 264400.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.675003) THEN CASE WHEN (model_input."X_1" <= 38.074997) THEN CASE WHEN (model_input."X_4" <= 664.000000) THEN CASE WHEN (model_input."X_4" <= 465.500000) THEN 11 ELSE 12 END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 25.500000) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_7" <= 3.274100) THEN CASE WHEN (model_input."X_2" <= 24.500000) THEN CASE WHEN (model_input."X_4" <= 684.500000) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_2" <= 33.500000) THEN CASE WHEN (model_input."X_4" <= 453.000000) THEN 17 ELSE 18 END ELSE 16 END END ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 171887.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 257300.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 105455.554688 AS "E"
    UNION ALL
    SELECT 3 AS nid, 291620.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 171500.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 96037.500000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 87650.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 104425.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 112200.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 87000.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.610001) THEN CASE WHEN (model_input."X_1" <= 37.574997) THEN CASE WHEN (model_input."X_7" <= 5.620450) THEN CASE WHEN (model_input."X_5" <= 1181.500000) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= -122.235001) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 33.614998) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 24.500000) THEN CASE WHEN (model_input."X_1" <= 35.994999) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 29.500000) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 169781.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 264316.656250 AS "E"
    UNION ALL
    SELECT 2 AS nid, 113060.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 98355.554688 AS "E"
    UNION ALL
    SELECT 5 AS nid, 285375.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 222200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 274266.656250 AS "E"
    UNION ALL
    SELECT 10 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 87780.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 111575.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_2" <= 25.000000) THEN CASE WHEN (model_input."X_6" <= 367.500000) THEN CASE WHEN (model_input."X_7" <= 4.984300) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_1" <= 35.489998) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= 38.549999) THEN CASE WHEN (model_input."X_6" <= 344.500000) THEN 15 ELSE CASE WHEN (model_input."X_0" <= -120.040001) THEN 23 ELSE CASE WHEN (model_input."X_4" <= 453.000000) THEN 25 ELSE 26 END END END ELSE CASE WHEN (model_input."X_7" <= 2.441850) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_2" <= 36.500000) THEN 7 ELSE CASE WHEN (model_input."X_7" <= 2.298600) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 37.480000) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 180106.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 140933.328125 AS "E"
    UNION ALL
    SELECT 2 AS nid, 297625.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 222150.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 100325.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 189400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 254900.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 314700.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 121260.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 65433.332031 AS "E"
    UNION ALL
    SELECT 11 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 115325.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 112200.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 111200.000000 AS "E"
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
    CASE WHEN (model_input."X_0" <= -121.854996) THEN CASE WHEN (model_input."X_2" <= 44.000000) THEN CASE WHEN (model_input."X_1" <= 38.055000) THEN CASE WHEN (model_input."X_6" <= 472.500000) THEN 13 ELSE 14 END ELSE 6 END ELSE 4 END ELSE CASE WHEN (model_input."X_7" <= 2.869350) THEN CASE WHEN (model_input."X_0" <= -121.505005) THEN 11 ELSE CASE WHEN (model_input."X_0" <= -121.369995) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_1" <= 38.674999) THEN CASE WHEN (model_input."X_0" <= -119.600006) THEN 15 ELSE 16 END ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 160768.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 265766.656250 AS "E"
    UNION ALL
    SELECT 2 AS nid, 97770.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 225550.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 252400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 74466.664062 AS "E"
    UNION ALL
    SELECT 8 AS nid, 132725.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 116700.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 82900.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
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
    CASE WHEN (model_input."X_5" <= 984.000000) THEN CASE WHEN (model_input."X_2" <= 47.000000) THEN CASE WHEN (model_input."X_4" <= 585.000000) THEN CASE WHEN (model_input."X_7" <= 3.479450) THEN 11 ELSE CASE WHEN (model_input."X_6" <= 359.500000) THEN 19 ELSE 20 END END ELSE 8 END ELSE 6 END ELSE CASE WHEN (model_input."X_7" <= 4.496550) THEN CASE WHEN (model_input."X_0" <= -121.610001) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 1.804500) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 38.459999) THEN CASE WHEN (model_input."X_1" <= 35.994999) THEN 17 ELSE 18 END ELSE 16 END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 177456.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 255685.718750 AS "E"
    UNION ALL
    SELECT 2 AS nid, 116611.109375 AS "E"
    UNION ALL
    SELECT 3 AS nid, 98137.500000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 240600.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 252560.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 89283.335938 AS "E"
    UNION ALL
    SELECT 11 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 245900.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 84900.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 87433.335938 AS "E"
    UNION ALL
    SELECT 16 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 245400.000000 AS "E"
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
    CASE WHEN (model_input."X_7" <= 4.196550) THEN CASE WHEN (model_input."X_3" <= 968.500000) THEN 3 ELSE CASE WHEN (model_input."X_1" <= 38.970001) THEN CASE WHEN (model_input."X_0" <= -122.260002) THEN 9 ELSE CASE WHEN (model_input."X_0" <= -120.040001) THEN 13 ELSE CASE WHEN (model_input."X_5" <= 1493.500000) THEN 15 ELSE 16 END END END ELSE 6 END END ELSE CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_4" <= 560.500000) THEN CASE WHEN (model_input."X_6" <= 359.500000) THEN 17 ELSE 18 END ELSE 12 END ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 196643.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 133475.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 259812.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 112657.140625 AS "E"
    UNION ALL
    SELECT 5 AS nid, 121833.335938 AS "E"
    UNION ALL
    SELECT 6 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 251400.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 117200.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 246200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 112200.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 111200.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 245400.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 36.000000) THEN CASE WHEN (model_input."X_7" <= 4.589750) THEN CASE WHEN (model_input."X_0" <= -121.610001) THEN CASE WHEN (model_input."X_1" <= 38.220001) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= -119.800003) THEN CASE WHEN (model_input."X_0" <= -121.369995) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_4" <= 453.000000) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_2" <= 10.000000) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 37.480000) THEN 11 ELSE 12 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 176556.250000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 126883.335938 AS "E"
    UNION ALL
    SELECT 2 AS nid, 325575.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 107920.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 221700.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 134850.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 101187.500000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 83500.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 111800.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 111200.000000 AS "E"
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
