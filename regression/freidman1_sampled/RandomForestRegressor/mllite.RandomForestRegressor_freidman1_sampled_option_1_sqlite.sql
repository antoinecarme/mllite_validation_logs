WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_9" <= 0.058724) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.592037) THEN CASE WHEN (model_input."X_9" <= 0.598821) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_5" <= 0.363800) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_9" <= 0.105143) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.761340 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.736606 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.835539 AS "E"
    UNION ALL
    SELECT 3 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.282282 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.025808 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.636816) THEN CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_7" <= 0.231928) THEN 13 ELSE CASE WHEN (model_input."X_8" <= 0.400081) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 0.191301) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.625883) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_4" <= 0.408002) THEN 3 ELSE CASE WHEN (model_input."X_5" <= 0.605965) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.844121 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.854951 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.028959 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.193403 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.195415 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.099604 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 14.889313 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_4" <= 0.435379) THEN CASE WHEN (model_input."X_3" <= 0.483014) THEN CASE WHEN (model_input."X_9" <= 0.504533) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_6" <= 0.590125) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.253560) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.253287 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.989056 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.781748 AS "E"
    UNION ALL
    SELECT 3 AS nid, 13.078081 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.174015 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.504805 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_9" <= 0.167484) THEN CASE WHEN (model_input."X_9" <= 0.045074) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.105143) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_9" <= 0.594401) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN CASE WHEN (model_input."X_3" <= 0.452142) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.073031 AS "E"
    UNION ALL
    SELECT 1 AS nid, 20.037123 AS "E"
    UNION ALL
    SELECT 2 AS nid, 12.084998 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.848354 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.703323 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.363574 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.509034) THEN CASE WHEN (model_input."X_8" <= 0.462191) THEN CASE WHEN (model_input."X_2" <= 0.726459) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.470460) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_6" <= 0.355530) THEN 3 ELSE CASE WHEN (model_input."X_7" <= 0.426837) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 12.710594 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.804104 AS "E"
    UNION ALL
    SELECT 2 AS nid, 16.523575 AS "E"
    UNION ALL
    SELECT 3 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.516663 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.309780 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.147826 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
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
