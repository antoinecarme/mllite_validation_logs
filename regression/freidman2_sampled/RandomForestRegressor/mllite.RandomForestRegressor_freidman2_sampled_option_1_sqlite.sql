WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_3" <= 4.126575) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 5.369574) THEN 7 ELSE CASE WHEN (model_input."X_1" <= 517.957886) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_0" <= 31.362381) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 530.624817 AS "E"
    UNION ALL
    SELECT 1 AS nid, 193.771118 AS "E"
    UNION ALL
    SELECT 2 AS nid, 867.478577 AS "E"
    UNION ALL
    SELECT 3 AS nid, 798.076599 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 102.236374 AS "E"
    UNION ALL
    SELECT 6 AS nid, 239.538483 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 207.544876 AS "E"
    UNION ALL
    SELECT 9 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 10 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 11 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 215.810730 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_3" <= 9.781403) THEN CASE WHEN (model_input."X_1" <= 187.384659) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 339.688019) THEN 15 ELSE 16 END END ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 729.139038) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 381.303131 AS "E"
    UNION ALL
    SELECT 1 AS nid, 164.318024 AS "E"
    UNION ALL
    SELECT 2 AS nid, 815.273499 AS "E"
    UNION ALL
    SELECT 3 AS nid, 682.201721 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 109.480667 AS "E"
    UNION ALL
    SELECT 8 AS nid, 255.713577 AS "E"
    UNION ALL
    SELECT 9 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 121.856636 AS "E"
    UNION ALL
    SELECT 12 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 137.903091 AS "E"
    UNION ALL
    SELECT 15 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 16 AS nid, 130.755493 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 32.136803) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 4.654071) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 517.957886) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_1" <= 1057.156250) THEN 9 ELSE 10 END ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 583.284058 AS "E"
    UNION ALL
    SELECT 1 AS nid, 199.144577 AS "E"
    UNION ALL
    SELECT 2 AS nid, 967.423523 AS "E"
    UNION ALL
    SELECT 3 AS nid, 720.358459 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 171.869614 AS "E"
    UNION ALL
    SELECT 9 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 10 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 11 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 199.279053 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 215.810730 AS "E"
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 15 ELSE 16 END ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_3" <= 5.418353) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_3" <= 5.355496) THEN 7 ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 260.801331 AS "E"
    UNION ALL
    SELECT 1 AS nid, 158.432739 AS "E"
    UNION ALL
    SELECT 2 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 3 AS nid, 116.740944 AS "E"
    UNION ALL
    SELECT 4 AS nid, 255.713577 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 7 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 94.795029 AS "E"
    UNION ALL
    SELECT 10 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 85.804916 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 97.892578 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 7.260583) THEN CASE WHEN (model_input."X_3" <= 5.945848) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 9.337334) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 373.239655 AS "E"
    UNION ALL
    SELECT 1 AS nid, 203.729904 AS "E"
    UNION ALL
    SELECT 2 AS nid, 881.769043 AS "E"
    UNION ALL
    SELECT 3 AS nid, 715.409180 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 166.075775 AS "E"
    UNION ALL
    SELECT 9 AS nid, 200.932205 AS "E"
    UNION ALL
    SELECT 10 AS nid, 78.934700 AS "E"
    UNION ALL
    SELECT 11 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 12 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 215.810730 AS "E"
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
