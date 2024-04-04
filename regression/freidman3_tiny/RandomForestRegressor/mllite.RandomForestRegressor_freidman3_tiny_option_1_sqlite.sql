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
