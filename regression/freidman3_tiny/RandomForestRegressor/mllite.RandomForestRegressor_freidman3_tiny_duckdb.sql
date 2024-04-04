WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 45.078026) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.773696) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN CASE WHEN (model_input."X_1" <= 1343.693481) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_2" <= 0.635302) THEN 11 ELSE 12 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.318982 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.973869 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.434020 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.533717 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.041076 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.551614 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.480025 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.549644 AS "E"
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 19 ELSE 20 END END ELSE 4 END ELSE CASE WHEN (model_input."X_3" <= 6.529729) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 1343.693481) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_2" <= 0.752185) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.333944 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.050051 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.504279 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957763 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.522132 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.432869 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.547989 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.496275 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.553584 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.009971 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_2" <= 0.155190) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_2" <= 0.773696) THEN CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 17 ELSE CASE WHEN (model_input."X_1" <= 1343.693481) THEN 19 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_3" <= 5.870713) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_2" <= 0.833477) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.347416 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.065765 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.475440 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974796 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.202218 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.523139 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.348243 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.545140 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.486471 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.554430 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.550913 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.009971 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_2" <= 0.300628) THEN CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_3" <= 10.289057) THEN CASE WHEN (model_input."X_3" <= 8.071378) THEN 15 ELSE 16 END ELSE 10 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 580.013489) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 1057.156250) THEN CASE WHEN (model_input."X_3" <= 7.046886) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 19 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 21 ELSE 22 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.261208 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.057791 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.419421 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.171138 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.523845 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.224860 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.301200 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.554430 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.550913 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 6.854973) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 1343.693481) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.362467 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.038913 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.470319 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.961835 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.270803 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.536824 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.548115 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.554880 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.550490 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_0" <= 28.476501) THEN CASE WHEN (model_input."X_1" <= 1343.693481) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_2" <= 0.481187) THEN CASE WHEN (model_input."X_1" <= 644.004639) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.155190) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= 0.669289) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.767325) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.278573 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.553234 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.187020 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.077202 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.296838 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.256333 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.137199 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 12 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.550490 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_1" <= 321.144562) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.104052) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_1" <= 442.310394) THEN 3 ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN CASE WHEN (model_input."X_0" <= 81.116760) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 32.841957) THEN CASE WHEN (model_input."X_2" <= 0.580679) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= 53.260082) THEN 17 ELSE 18 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.222645 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.959508 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.427307 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.482358 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.029968 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.423596 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.526429 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.555554 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.009971 AS "E"
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
    CASE WHEN (model_input."X_1" <= 598.761292) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 8.022598) THEN 15 ELSE 16 END END ELSE 6 END END ELSE CASE WHEN (model_input."X_0" <= 74.842430) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN CASE WHEN (model_input."X_2" <= 0.580679) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 19 ELSE 20 END END ELSE 10 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.303805 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.185487 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.501002 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.242557 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.275783 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.520193 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.248834 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.555554 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.496619 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.495246 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_3" <= 6.920528) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_3" <= 5.945848) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 1368.245972) THEN CASE WHEN (model_input."X_3" <= 7.046886) THEN CASE WHEN (model_input."X_3" <= 3.394444) THEN 13 ELSE 14 END ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.333710 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.020638 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.476015 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.283441 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.518809 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.478996 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.550659 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_1" <= 187.384659) THEN 1 ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_2" <= 0.206302) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_0" <= 72.779671) THEN CASE WHEN (model_input."X_1" <= 510.244720) THEN 15 ELSE 16 END ELSE 12 END END ELSE CASE WHEN (model_input."X_0" <= 32.841957) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 17 ELSE 18 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.289495 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.377841 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.294668 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.510917 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.140058 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.346205 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.485099 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.334436 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
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
    CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 8.022598) THEN 17 ELSE 18 END END ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 1343.693481) THEN 19 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN CASE WHEN (model_input."X_1" <= 1081.708740) THEN 21 ELSE 22 END ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.313449 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.126837 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.500061 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.218505 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.270639 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.524033 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.246466 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.553234 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.485098 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.550490 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN CASE WHEN (model_input."X_3" <= 5.968805) THEN 19 ELSE 20 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.343018) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_0" <= 10.944258) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 18.443640) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN CASE WHEN (model_input."X_3" <= 3.394444) THEN 15 ELSE 16 END ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.327181 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.018158 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.512595 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.967761 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.532633 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.008493 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.556400 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.485098 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.551336 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.009971 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 6.920528) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 963.393921) THEN CASE WHEN (model_input."X_1" <= 442.310394) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.554881) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_0" <= 10.944258) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 17 ELSE 18 END END ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.381377 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.105564 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.473315 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.326047 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.546948 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.050704 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.356520 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.553746 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.550659 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 3.345518) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 53.940392) THEN 9 ELSE 10 END END END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN CASE WHEN (model_input."X_0" <= 34.700294) THEN CASE WHEN (model_input."X_3" <= 5.155128) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 81.116760) THEN 13 ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.303006 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.156611 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.491229 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.014694 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.050704 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.541954 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.423596 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.557524 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.561464 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 3.345518) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 6.920528) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 5.880581) THEN CASE WHEN (model_input."X_0" <= 34.700294) THEN CASE WHEN (model_input."X_3" <= 4.505980) THEN 19 ELSE 20 END ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 0.752185) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.309608 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.099844 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.435466 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.014694 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.306980 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.490532 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.050704 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.526824 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.442141 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.537350 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.531204 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.432316) THEN CASE WHEN (model_input."X_3" <= 4.702850) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 10.289057) THEN CASE WHEN (model_input."X_2" <= 0.196355) THEN 15 ELSE 16 END ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_3" <= 7.655873) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 74.842430) THEN CASE WHEN (model_input."X_0" <= 34.199562) THEN CASE WHEN (model_input."X_0" <= 10.443523) THEN 19 ELSE 20 END ELSE 18 END ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.332542 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.143190 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.446154 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.236181 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.290848 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.485469 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 12 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.512275 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.546334 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.531204 AS "E"
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
    CASE WHEN (model_input."X_3" <= 9.835642) THEN CASE WHEN (model_input."X_1" <= 432.535583) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_0" <= 13.781438) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 18.443640) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_0" <= 81.116760) THEN CASE WHEN (model_input."X_2" <= 0.689352) THEN 11 ELSE 12 END ELSE 10 END END END ELSE CASE WHEN (model_input."X_3" <= 10.289057) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.383892 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.471299 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.121671 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.492815 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.545669 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.462613 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.472207 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.550490 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_2" <= 0.198379) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_3" <= 7.655873) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 15 ELSE CASE WHEN (model_input."X_1" <= 1343.693481) THEN 17 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 19 ELSE 20 END END END ELSE 14 END ELSE CASE WHEN (model_input."X_2" <= 0.752185) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.388898 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.017008 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.474719 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.508505 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.540346 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.423596 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.546789 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.553023 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.550913 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_3" <= 4.702850) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.196355) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_3" <= 9.394617) THEN CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_0" <= 10.944258) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.579860) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.416523 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.129204 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.512296 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.301200 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.527672 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.554007 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.496070 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.550279 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.291880) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 1343.693481) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_0" <= 81.116760) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 13 ELSE 14 END END ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.400803 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.075015 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.509398 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.552516 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.478600 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.490859 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.496893 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.550279 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_3" <= 4.637295) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.206302) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.104052) THEN 15 ELSE 16 END END ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 580.013489) THEN CASE WHEN (model_input."X_2" <= 0.767325) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 1368.245972) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_2" <= 0.579860) THEN 21 ELSE 22 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.314118 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.142236 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.447805 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.306980 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.518218 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.181498 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.106119 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.051444 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.485098 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.551336 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_3" <= 4.702850) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 10.289057) THEN CASE WHEN (model_input."X_2" <= 0.196355) THEN 9 ELSE 10 END ELSE 6 END END ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 1343.693481) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 15 ELSE 16 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.345332 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.118273 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.521933 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.940360 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.251709 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.311552 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.553234 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.496893 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.550490 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_0" <= 36.218178) THEN CASE WHEN (model_input."X_1" <= 424.822449) THEN 7 ELSE CASE WHEN (model_input."X_1" <= 877.971680) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 5.155128) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 0.206302) THEN CASE WHEN (model_input."X_3" <= 9.478261) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_2" <= 0.536035) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.257464 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.513022 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.104129 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.931935 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.218924 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.041076 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.307848 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.546996 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.557524 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.561464 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.206302) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.104052) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_3" <= 5.369574) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 57.001556) THEN CASE WHEN (model_input."X_3" <= 7.704653) THEN 17 ELSE 18 END ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= 0.691585) THEN CASE WHEN (model_input."X_1" <= 1050.002075) THEN 15 ELSE 16 END ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.366522 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.117432 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.424004 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.041076 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.349844 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.510523 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.319618 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.336616 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.489694 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.343157 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.377180) THEN CASE WHEN (model_input."X_1" <= 897.372681) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_2" <= 0.767325) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 0.674841) THEN CASE WHEN (model_input."X_2" <= 0.569685) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.413251 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.029229 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.501872 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.540596 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.524835 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.553729 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN CASE WHEN (model_input."X_3" <= 9.478261) THEN 7 ELSE 8 END ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 424.822449) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN CASE WHEN (model_input."X_3" <= 3.394444) THEN 17 ELSE 18 END ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.375572 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.015249 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.495679 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.526184 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.051444 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.543792 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.485098 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.553234 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.550490 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.552182 AS "E"
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
    CASE WHEN (model_input."X_3" <= 5.369574) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN CASE WHEN (model_input."X_1" <= 1109.438599) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 40.385956) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 0.206302) THEN CASE WHEN (model_input."X_0" <= 45.078026) THEN 9 ELSE 10 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.331292 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.517690 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.186316 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.279518 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.111753 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.056628 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.258305 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.543497 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.498334 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.432316) THEN CASE WHEN (model_input."X_3" <= 4.702850) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_1" <= 619.029846) THEN 15 ELSE 16 END ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_2" <= 0.767325) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_2" <= 0.625969) THEN 21 ELSE CASE WHEN (model_input."X_0" <= 15.105726) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 25 ELSE 26 END END ELSE CASE WHEN (model_input."X_0" <= 81.116760) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.310042 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.089090 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.442614 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.204124 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.301200 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.306980 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.500742 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.527892 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.432869 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.548283 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.495246 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.432316) THEN CASE WHEN (model_input."X_1" <= 321.144562) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 897.372681) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_2" <= 0.767325) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 45.136101) THEN CASE WHEN (model_input."X_2" <= 0.625969) THEN 15 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_2" <= 0.752185) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.252206 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.967946 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.422762 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.512008 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.029229 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.551578 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.432869 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.558370 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.561464 AS "E"
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
    CASE WHEN (model_input."X_1" <= 195.097794) THEN 1 ELSE CASE WHEN (model_input."X_0" <= 16.021940) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 17 ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_2" <= 0.094105) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 543.382385) THEN CASE WHEN (model_input."X_2" <= 0.474950) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_2" <= 0.554881) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 5.870713) THEN 13 ELSE 14 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.328220 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.388442 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.547989 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.324624 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.352673 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.246466 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.405777 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.368653 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.480025 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.553584 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.549644 AS "E"
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 8.022598) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= 503.852051) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_0" <= 36.799007) THEN CASE WHEN (model_input."X_3" <= 7.108317) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 987.946411) THEN CASE WHEN (model_input."X_1" <= 738.913879) THEN 11 ELSE 12 END ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.323062 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.212521 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.465187 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.270709 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.538197 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.410430 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.380785 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.241730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.009971 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.481187) THEN CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 0.155190) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 832.676270) THEN CASE WHEN (model_input."X_2" <= 0.786171) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 5.355496) THEN CASE WHEN (model_input."X_2" <= 0.672608) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.277876 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.035382 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.466483 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.968648 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.202218 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.363788 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.517830 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.498334 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.495246 AS "E"
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
