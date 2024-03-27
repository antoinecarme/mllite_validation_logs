WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 5.491227) THEN CASE WHEN (model_input."X_3" <= 4.706348) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.386503 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.049681 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.498777 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.546355 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.513225 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.559607 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.561464 AS "E"
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
    CASE WHEN (model_input."X_3" <= 4.126575) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN CASE WHEN (model_input."X_3" <= 8.071378) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 424.822449) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 15 ELSE 16 END END ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.313850 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.427115 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.311552 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.484897 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.513245 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.548283 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.561464 AS "E"
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
    CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_2" <= 0.625969) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.376847 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.121190 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.504675 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.529307 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.549843 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.554503 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552183 AS "E"
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 34.199562) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE 14 END ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.222602 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.059829 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.450485 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.968204 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.529305 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.009232 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.546334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_3" <= 8.022598) THEN 9 ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN 13 ELSE 14 END END ELSE 8 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.357104 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.196799 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.471607 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.243506 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.527348 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.544013 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552182 AS "E"
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
