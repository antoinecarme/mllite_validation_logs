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
"DT_node_lookup_5" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_5" <= 0.189725) THEN CASE WHEN (model_input."X_6" <= 0.280269) THEN CASE WHEN (model_input."X_8" <= 0.400081) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_4" <= 0.435379) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 0.407004) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_4" <= 0.740347) THEN CASE WHEN (model_input."X_0" <= 0.427414) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_9" <= 0.334106) THEN CASE WHEN (model_input."X_9" <= 0.149744) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.378312 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.595278 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.161346 AS "E"
    UNION ALL
    SELECT 3 AS nid, 13.937967 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.902472 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.889313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.497265 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 21.574203 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.226393 AS "E"
    UNION ALL
    SELECT 15 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 17 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.740347) THEN CASE WHEN (model_input."X_6" <= 0.582632) THEN CASE WHEN (model_input."X_3" <= 0.764428) THEN CASE WHEN (model_input."X_6" <= 0.465296) THEN CASE WHEN (model_input."X_0" <= 0.599417) THEN 13 ELSE CASE WHEN (model_input."X_7" <= 0.519013) THEN 17 ELSE 18 END END ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= 0.488583) THEN 15 ELSE 16 END END ELSE 4 END ELSE CASE WHEN (model_input."X_9" <= 0.230917) THEN CASE WHEN (model_input."X_7" <= 0.431273) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 0.784298) THEN 19 ELSE 20 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.399813 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.608312 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.774313 AS "E"
    UNION ALL
    SELECT 3 AS nid, 12.854733 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.197150 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.843829 AS "E"
    UNION ALL
    SELECT 7 AS nid, 21.996967 AS "E"
    UNION ALL
    SELECT 8 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.643246 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.817811 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 19 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 20 AS nid, 19.544313 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.749215) THEN CASE WHEN (model_input."X_2" <= 0.876960) THEN CASE WHEN (model_input."X_8" <= 0.503367) THEN CASE WHEN (model_input."X_1" <= 0.211490) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 0.911254) THEN 19 ELSE 20 END END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 0.223512) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_4" <= 0.767853) THEN CASE WHEN (model_input."X_9" <= 0.105143) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.443489) THEN 17 ELSE 18 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.215206 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.732656 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.352785 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.549219 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.959921 AS "E"
    UNION ALL
    SELECT 5 AS nid, 10.947825 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.409902 AS "E"
    UNION ALL
    SELECT 7 AS nid, 22.212624 AS "E"
    UNION ALL
    SELECT 8 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.590693 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 15 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 16 AS nid, 11.826265 AS "E"
    UNION ALL
    SELECT 17 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 19 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 20 AS nid, 11.851628 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.731127) THEN CASE WHEN (model_input."X_4" <= 0.803149) THEN CASE WHEN (model_input."X_9" <= 0.162590) THEN 9 ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (model_input."X_6" <= 0.500214) THEN CASE WHEN (model_input."X_6" <= 0.297654) THEN CASE WHEN (model_input."X_7" <= 0.441848) THEN 15 ELSE 16 END ELSE 8 END ELSE CASE WHEN (model_input."X_9" <= 0.105143) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 18.312519 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.362719 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.562429 AS "E"
    UNION ALL
    SELECT 3 AS nid, 11.415536 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 5 AS nid, 18.819841 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.653532 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.553127 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 9 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 15 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 16 AS nid, 19.544313 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.540658) THEN CASE WHEN (model_input."X_8" <= 0.241303) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.899692) THEN CASE WHEN (model_input."X_9" <= 0.424482) THEN 15 ELSE 16 END ELSE 12 END END ELSE CASE WHEN (model_input."X_2" <= 0.897457) THEN CASE WHEN (model_input."X_0" <= 0.123085) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 0.875546) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 0.399994) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.587593 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.874251 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.076174 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.428161 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.142683 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.409903 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 8 AS nid, 20.140003 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.554108 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.460224 AS "E"
    UNION ALL
    SELECT 12 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 15 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 16 AS nid, 11.119547 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.749215) THEN CASE WHEN (model_input."X_2" <= 0.876960) THEN CASE WHEN (model_input."X_1" <= 0.211490) THEN CASE WHEN (model_input."X_6" <= 0.442159) THEN 17 ELSE CASE WHEN (model_input."X_1" <= 0.133410) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_3" <= 0.201676) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_6" <= 0.537749) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_9" <= 0.289505) THEN CASE WHEN (model_input."X_0" <= 0.708711) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 0.848083) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 0.927482) THEN 21 ELSE 22 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.825026 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.129443 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.520605 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.340137 AS "E"
    UNION ALL
    SELECT 4 AS nid, 16.488052 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.959921 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.035957 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.409903 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.410398 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 13 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 15 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 16 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 18 AS nid, 10.174015 AS "E"
    UNION ALL
    SELECT 19 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 20 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 21 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 22 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 23 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 24 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_7" <= 0.382312) THEN CASE WHEN (model_input."X_2" <= 0.907145) THEN CASE WHEN (model_input."X_9" <= 0.289505) THEN CASE WHEN (model_input."X_9" <= 0.105143) THEN 15 ELSE 16 END ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_3" <= 0.753800) THEN CASE WHEN (model_input."X_2" <= 0.548479) THEN CASE WHEN (model_input."X_1" <= 0.169404) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 0.201676) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 0.848083) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 0.401789) THEN 19 ELSE 20 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.575719 AS "E"
    UNION ALL
    SELECT 1 AS nid, 20.589859 AS "E"
    UNION ALL
    SELECT 2 AS nid, 13.296564 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.785419 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.718802 AS "E"
    UNION ALL
    SELECT 6 AS nid, 16.057648 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 14.895427 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.515838 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.199988 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 15 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 16 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 17 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 19 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 20 AS nid, 14.766437 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.438031) THEN CASE WHEN (model_input."X_8" <= 0.503367) THEN CASE WHEN (model_input."X_8" <= 0.470524) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_6" <= 0.590125) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_4" <= 0.740347) THEN CASE WHEN (model_input."X_7" <= 0.778435) THEN CASE WHEN (model_input."X_3" <= 0.625699) THEN 13 ELSE 14 END ELSE 6 END ELSE CASE WHEN (model_input."X_6" <= 0.180239) THEN 7 ELSE CASE WHEN (model_input."X_4" <= 0.788592) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.366365 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.938896 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.022848 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.101520 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.637066 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.480510 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.715126 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.834720 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 15 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 16 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.800902 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.458551) THEN CASE WHEN (model_input."X_3" <= 0.244642) THEN CASE WHEN (model_input."X_5" <= 0.391840) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_9" <= 0.605323) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_8" <= 0.609613) THEN CASE WHEN (model_input."X_0" <= 0.312694) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_6" <= 0.730854) THEN CASE WHEN (model_input."X_8" <= 0.756451) THEN 11 ELSE 12 END ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.703497 AS "E"
    UNION ALL
    SELECT 1 AS nid, 14.110957 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.024397 AS "E"
    UNION ALL
    SELECT 3 AS nid, 11.826265 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.634086 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 6 AS nid, 21.760767 AS "E"
    UNION ALL
    SELECT 7 AS nid, 21.400192 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 10 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 11 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 15 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 16 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.690810) THEN CASE WHEN (model_input."X_3" <= 0.886157) THEN CASE WHEN (model_input."X_0" <= 0.261492) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 0.827922) THEN CASE WHEN (model_input."X_6" <= 0.367363) THEN CASE WHEN (model_input."X_5" <= 0.073085) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_3" <= 0.493517) THEN 15 ELSE 16 END END ELSE 8 END END ELSE 4 END ELSE CASE WHEN (model_input."X_8" <= 0.609613) THEN CASE WHEN (model_input."X_9" <= 0.352133) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_9" <= 0.149744) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 17.184061 AS "E"
    UNION ALL
    SELECT 1 AS nid, 15.115198 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.632168 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.361588 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 5 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.868666 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.306917 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.549210 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.715126 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 13 AS nid, 14.930272 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.589400 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 18 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 19 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 20 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_1" <= 0.438031) THEN CASE WHEN (model_input."X_6" <= 0.249295) THEN 9 ELSE CASE WHEN (model_input."X_6" <= 0.465296) THEN CASE WHEN (model_input."X_4" <= 0.307951) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_0" <= 0.589479) THEN CASE WHEN (model_input."X_1" <= 0.727586) THEN 15 ELSE 16 END ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.221424) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.105143) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.501266 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.882057 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.866613 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 4 AS nid, 22.086651 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.780452 AS "E"
    UNION ALL
    SELECT 6 AS nid, 17.034464 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.662139 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 10 AS nid, 11.134104 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.817811 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 13 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 17 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 18 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 19 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 20 AS nid, 11.800902 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.560021) THEN CASE WHEN (model_input."X_9" <= 0.019745) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.363010) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_3" <= 0.348390) THEN CASE WHEN (model_input."X_9" <= 0.245529) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.777490) THEN CASE WHEN (model_input."X_9" <= 0.352133) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= 0.756451) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 18.159512 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.492349 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.467318 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.265072 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.413179 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.052931 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.549210 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.449940 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 13 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 15 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 16 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.695600) THEN CASE WHEN (model_input."X_3" <= 0.886157) THEN CASE WHEN (model_input."X_3" <= 0.682928) THEN CASE WHEN (model_input."X_6" <= 0.249295) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 0.434053) THEN CASE WHEN (model_input."X_8" <= 0.250183) THEN 13 ELSE CASE WHEN (model_input."X_8" <= 0.470524) THEN 17 ELSE 18 END END ELSE 12 END END ELSE CASE WHEN (model_input."X_3" <= 0.795300) THEN 15 ELSE 16 END END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 0.557916) THEN 9 ELSE 10 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.911710 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.965649 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.193043 AS "E"
    UNION ALL
    SELECT 3 AS nid, 13.172444 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.316520 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.169604 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.867241 AS "E"
    UNION ALL
    SELECT 9 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.554108 AS "E"
    UNION ALL
    SELECT 11 AS nid, 12.179699 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 13 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.817811 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.800902 AS "E"
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
    CASE WHEN (model_input."X_7" <= 0.382312) THEN CASE WHEN (model_input."X_0" <= 0.598775) THEN CASE WHEN (model_input."X_2" <= 0.798230) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 0.870944) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_9" <= 0.594401) THEN CASE WHEN (model_input."X_6" <= 0.309487) THEN 17 ELSE 18 END ELSE 16 END ELSE CASE WHEN (model_input."X_4" <= 0.522189) THEN CASE WHEN (model_input."X_1" <= 0.367771) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 17.261738 AS "E"
    UNION ALL
    SELECT 1 AS nid, 20.546431 AS "E"
    UNION ALL
    SELECT 2 AS nid, 13.038565 AS "E"
    UNION ALL
    SELECT 3 AS nid, 18.621157 AS "E"
    UNION ALL
    SELECT 4 AS nid, 22.086651 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.977344 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.584479 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 9 AS nid, 12.141929 AS "E"
    UNION ALL
    SELECT 10 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.082798 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.153405 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.753800) THEN CASE WHEN (model_input."X_2" <= 0.886648) THEN CASE WHEN (model_input."X_2" <= 0.439387) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.741322) THEN CASE WHEN (model_input."X_8" <= 0.470524) THEN 13 ELSE 14 END ELSE 12 END END ELSE 6 END ELSE CASE WHEN (model_input."X_0" <= 0.123085) THEN 3 ELSE CASE WHEN (model_input."X_6" <= 0.385772) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.235157 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.220187 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.357914 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.559200 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.622283 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.555332 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119548 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.125020 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.826265 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.800902 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.560021) THEN CASE WHEN (model_input."X_5" <= 0.084753) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.415192) THEN 13 ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_3" <= 0.348390) THEN CASE WHEN (model_input."X_5" <= 0.508732) THEN CASE WHEN (model_input."X_7" <= 0.470780) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 0.123085) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 0.516778) THEN CASE WHEN (model_input."X_9" <= 0.352133) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_6" <= 0.391279) THEN 17 ELSE 18 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.359346 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.203039 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.248579 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.255411 AS "E"
    UNION ALL
    SELECT 4 AS nid, 19.742884 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 6 AS nid, 20.660778 AS "E"
    UNION ALL
    SELECT 7 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.312191 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.277331 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 11 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.400192 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 17 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 18 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 19 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 20 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 21 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 22 AS nid, 19.559004 AS "E"
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
    CASE WHEN (model_input."X_0" <= 0.774034) THEN CASE WHEN (model_input."X_8" <= 0.896157) THEN CASE WHEN (model_input."X_0" <= 0.516778) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.565379) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 0.432970) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_8" <= 0.924430) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_8" <= 0.250183) THEN CASE WHEN (model_input."X_2" <= 0.403000) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_9" <= 0.940764) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.803171 AS "E"
    UNION ALL
    SELECT 1 AS nid, 19.491945 AS "E"
    UNION ALL
    SELECT 2 AS nid, 12.321881 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.257860 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.371475 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.085134 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.558628 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.937401 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 13 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.711128 AS "E"
    UNION ALL
    SELECT 15 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 16 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.153405 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.385523) THEN CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_8" <= 0.400081) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_1" <= 0.169404) THEN CASE WHEN (model_input."X_5" <= 0.103831) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= 0.462191) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_9" <= 0.045074) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.149744) THEN 7 ELSE CASE WHEN (model_input."X_9" <= 0.334106) THEN 9 ELSE 10 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.279434 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.197785 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.859062 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.184313 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.827875 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.694878 AS "E"
    UNION ALL
    SELECT 7 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 8 AS nid, 20.355223 AS "E"
    UNION ALL
    SELECT 9 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.010336 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.607601 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 15 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 17 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.236834) THEN CASE WHEN (model_input."X_3" <= 0.652056) THEN CASE WHEN (model_input."X_3" <= 0.407004) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 0.750039) THEN CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_7" <= 0.374883) THEN 11 ELSE CASE WHEN (model_input."X_8" <= 0.555008) THEN 15 ELSE CASE WHEN (model_input."X_5" <= 0.527052) THEN 17 ELSE 18 END END END ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 0.713351) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.997819 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.232179 AS "E"
    UNION ALL
    SELECT 2 AS nid, 15.709474 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.678716 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.347878 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.237628 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 7 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 8 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.010336 AS "E"
    UNION ALL
    SELECT 10 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.142631 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.096919 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.153405 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.740347) THEN CASE WHEN (model_input."X_3" <= 0.682928) THEN CASE WHEN (model_input."X_7" <= 0.874332) THEN CASE WHEN (model_input."X_2" <= 0.592037) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.625883) THEN 11 ELSE 12 END END ELSE 6 END ELSE CASE WHEN (model_input."X_6" <= 0.469973) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_6" <= 0.533801) THEN 7 ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.266001 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.647660 AS "E"
    UNION ALL
    SELECT 2 AS nid, 22.278809 AS "E"
    UNION ALL
    SELECT 3 AS nid, 12.597678 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.327631 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.252748 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 7 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.577378 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.482233) THEN CASE WHEN (model_input."X_9" <= 0.584169) THEN CASE WHEN (model_input."X_8" <= 0.184222) THEN 9 ELSE CASE WHEN (model_input."X_9" <= 0.179432) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_6" <= 0.179881) THEN 7 ELSE CASE WHEN (model_input."X_9" <= 0.854095) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 0.954928) THEN CASE WHEN (model_input."X_8" <= 0.609613) THEN 11 ELSE CASE WHEN (model_input."X_8" <= 0.756451) THEN 15 ELSE 16 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.538399 AS "E"
    UNION ALL
    SELECT 1 AS nid, 14.066453 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.716614 AS "E"
    UNION ALL
    SELECT 3 AS nid, 20.477150 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.810078 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.579204 AS "E"
    UNION ALL
    SELECT 7 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 9 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.227588 AS "E"
    UNION ALL
    SELECT 11 AS nid, 19.554108 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.400192 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 15 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 16 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.371188 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.236834) THEN CASE WHEN (model_input."X_7" <= 0.747006) THEN CASE WHEN (model_input."X_3" <= 0.407004) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_6" <= 0.200551) THEN CASE WHEN (model_input."X_9" <= 0.334106) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_5" <= 0.058774) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 0.698235) THEN CASE WHEN (model_input."X_8" <= 0.555008) THEN 15 ELSE CASE WHEN (model_input."X_6" <= 0.309487) THEN 17 ELSE 18 END END ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.454094 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.445544 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.840681 AS "E"
    UNION ALL
    SELECT 3 AS nid, 20.514467 AS "E"
    UNION ALL
    SELECT 4 AS nid, 16.169565 AS "E"
    UNION ALL
    SELECT 5 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.351259 AS "E"
    UNION ALL
    SELECT 7 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 8 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 10 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.168718 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.118101 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.153405 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_1" <= 0.258731) THEN CASE WHEN (model_input."X_4" <= 0.514812) THEN CASE WHEN (model_input."X_1" <= 0.211490) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_4" <= 0.705366) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_3" <= 0.180545) THEN CASE WHEN (model_input."X_5" <= 0.713152) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_7" <= 0.426837) THEN 19 ELSE CASE WHEN (model_input."X_6" <= 0.367363) THEN 25 ELSE 26 END END END END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_3" <= 0.870944) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_3" <= 0.848083) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 0.318555) THEN 23 ELSE 24 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.372608 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.891489 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.507803 AS "E"
    UNION ALL
    SELECT 3 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 4 AS nid, 16.488052 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.959921 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.797065 AS "E"
    UNION ALL
    SELECT 8 AS nid, 14.287769 AS "E"
    UNION ALL
    SELECT 9 AS nid, 12.261716 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.300795 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 13 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 15 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 16 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 19 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 20 AS nid, 15.131856 AS "E"
    UNION ALL
    SELECT 21 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 22 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 23 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 24 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 25 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 26 AS nid, 15.371187 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.690810) THEN CASE WHEN (model_input."X_7" <= 0.413170) THEN CASE WHEN (model_input."X_9" <= 0.553224) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 0.180545) THEN CASE WHEN (model_input."X_0" <= 0.832593) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_9" <= 0.179432) THEN 15 ELSE CASE WHEN (model_input."X_7" <= 0.661618) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (model_input."X_0" <= 0.643516) THEN CASE WHEN (model_input."X_5" <= 0.521925) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.307014 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.210958 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.595184 AS "E"
    UNION ALL
    SELECT 3 AS nid, 11.078293 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.277287 AS "E"
    UNION ALL
    SELECT 5 AS nid, 20.347878 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.261716 AS "E"
    UNION ALL
    SELECT 8 AS nid, 14.949146 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 14 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.864737 AS "E"
    UNION ALL
    SELECT 17 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.438031) THEN CASE WHEN (model_input."X_3" <= 0.746339) THEN CASE WHEN (model_input."X_1" <= 0.191301) THEN CASE WHEN (model_input."X_5" <= 0.103831) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_4" <= 0.307951) THEN 17 ELSE 18 END END ELSE 6 END ELSE CASE WHEN (model_input."X_4" <= 0.745136) THEN CASE WHEN (model_input."X_1" <= 0.528851) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 0.740525) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_6" <= 0.188719) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.472903 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.713387 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.020853 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.444069 AS "E"
    UNION ALL
    SELECT 4 AS nid, 19.953442 AS "E"
    UNION ALL
    SELECT 5 AS nid, 10.841087 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.817811 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.554108 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.262297 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.800902 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.343894) THEN 1 ELSE CASE WHEN (model_input."X_1" <= 0.236834) THEN CASE WHEN (model_input."X_8" <= 0.495034) THEN 9 ELSE CASE WHEN (model_input."X_5" <= 0.103831) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_0" <= 0.827922) THEN CASE WHEN (model_input."X_7" <= 0.374883) THEN 11 ELSE CASE WHEN (model_input."X_6" <= 0.469973) THEN CASE WHEN (model_input."X_9" <= 0.249497) THEN 17 ELSE 18 END ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 0.158335) THEN 7 ELSE 8 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.321633 AS "E"
    UNION ALL
    SELECT 1 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 2 AS nid, 12.686909 AS "E"
    UNION ALL
    SELECT 3 AS nid, 10.375252 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.228012 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.287961 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.108111 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.226393 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.184031 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.059262 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 18 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.803358) THEN CASE WHEN (model_input."X_3" <= 0.764428) THEN CASE WHEN (model_input."X_1" <= 0.211490) THEN CASE WHEN (model_input."X_2" <= 0.415192) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 0.445624) THEN CASE WHEN (model_input."X_5" <= 0.391840) THEN 17 ELSE 18 END ELSE 12 END END ELSE CASE WHEN (model_input."X_3" <= 0.927482) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 0.331523) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 0.699415) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.232027 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.886577 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.268379 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.524567 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.377975 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.998617 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.817692 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.125020 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119548 AS "E"
    UNION ALL
    SELECT 10 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.826265 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 18 AS nid, 11.800902 AS "E"
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
