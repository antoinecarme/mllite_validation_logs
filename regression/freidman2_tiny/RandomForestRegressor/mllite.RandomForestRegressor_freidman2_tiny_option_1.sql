WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 736.464355) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN 13 ELSE 14 END ELSE 6 END ELSE CASE WHEN (model_input."X_3" <= 9.976569) THEN CASE WHEN (model_input."X_2" <= 0.692404) THEN CASE WHEN (model_input."X_0" <= 59.534416) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 11 ELSE 12 END ELSE 10 END ELSE 8 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 413.520447 AS "E"
    UNION ALL
    SELECT 1 AS nid, 144.197113 AS "E"
    UNION ALL
    SELECT 2 AS nid, 622.994141 AS "E"
    UNION ALL
    SELECT 3 AS nid, 690.912476 AS "E"
    UNION ALL
    SELECT 4 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 5 AS nid, 81.775696 AS "E"
    UNION ALL
    SELECT 6 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 7 AS nid, 673.181152 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 682.746826 AS "E"
    UNION ALL
    SELECT 10 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 11 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 12 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
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
    CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN 17 ELSE 18 END ELSE 16 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN CASE WHEN (model_input."X_3" <= 8.221119) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.523577) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 19 ELSE 20 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 459.943359 AS "E"
    UNION ALL
    SELECT 1 AS nid, 156.232590 AS "E"
    UNION ALL
    SELECT 2 AS nid, 696.162781 AS "E"
    UNION ALL
    SELECT 3 AS nid, 126.351494 AS "E"
    UNION ALL
    SELECT 4 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 5 AS nid, 594.479370 AS "E"
    UNION ALL
    SELECT 6 AS nid, 725.215271 AS "E"
    UNION ALL
    SELECT 7 AS nid, 94.020645 AS "E"
    UNION ALL
    SELECT 8 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 9 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 10 AS nid, 710.245850 AS "E"
    UNION ALL
    SELECT 11 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 12 AS nid, 727.739258 AS "E"
    UNION ALL
    SELECT 13 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 14 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 15 AS nid, 81.775688 AS "E"
    UNION ALL
    SELECT 16 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 17 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 18 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 19 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 20 AS nid, 730.257019 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_3" <= 6.854973) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_0" <= 51.530243) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_1" <= 432.535583) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_1" <= 1025.449585) THEN CASE WHEN (model_input."X_2" <= 0.752185) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_3" <= 5.155128) THEN CASE WHEN (model_input."X_3" <= 3.194077) THEN 17 ELSE 18 END ELSE 12 END END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 460.447357 AS "E"
    UNION ALL
    SELECT 1 AS nid, 119.564781 AS "E"
    UNION ALL
    SELECT 2 AS nid, 615.393921 AS "E"
    UNION ALL
    SELECT 3 AS nid, 287.350586 AS "E"
    UNION ALL
    SELECT 4 AS nid, 738.410156 AS "E"
    UNION ALL
    SELECT 5 AS nid, 670.399048 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 7 AS nid, 587.376892 AS "E"
    UNION ALL
    SELECT 8 AS nid, 732.665588 AS "E"
    UNION ALL
    SELECT 9 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 10 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 11 AS nid, 705.210266 AS "E"
    UNION ALL
    SELECT 12 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 13 AS nid, 76.682571 AS "E"
    UNION ALL
    SELECT 14 AS nid, 148.152939 AS "E"
    UNION ALL
    SELECT 15 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 16 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 17 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 18 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 19 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 20 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 21 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 22 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 23 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 24 AS nid, 79.647888 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 21 ELSE 22 END ELSE 16 END ELSE CASE WHEN (model_input."X_3" <= 7.260583) THEN CASE WHEN (model_input."X_3" <= 5.945848) THEN 19 ELSE 20 END ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 0.240769) THEN 3 ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.689352) THEN CASE WHEN (model_input."X_3" <= 6.846519) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_3" <= 5.355496) THEN 9 ELSE 10 END END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 338.232849 AS "E"
    UNION ALL
    SELECT 1 AS nid, 128.125488 AS "E"
    UNION ALL
    SELECT 2 AS nid, 688.411865 AS "E"
    UNION ALL
    SELECT 3 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 4 AS nid, 810.164612 AS "E"
    UNION ALL
    SELECT 5 AS nid, 709.083618 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 7 AS nid, 645.522949 AS "E"
    UNION ALL
    SELECT 8 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 10 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 11 AS nid, 97.587524 AS "E"
    UNION ALL
    SELECT 12 AS nid, 173.932419 AS "E"
    UNION ALL
    SELECT 13 AS nid, 199.279037 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 70.282143 AS "E"
    UNION ALL
    SELECT 16 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 17 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 18 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 19 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 20 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 21 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 22 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 822.901428) THEN CASE WHEN (model_input."X_1" <= 533.607544) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 0.767325) THEN 15 ELSE 16 END END ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 9.902269) THEN CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 19 ELSE 20 END END ELSE 12 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 446.114716 AS "E"
    UNION ALL
    SELECT 1 AS nid, 176.584320 AS "E"
    UNION ALL
    SELECT 2 AS nid, 715.645020 AS "E"
    UNION ALL
    SELECT 3 AS nid, 806.501831 AS "E"
    UNION ALL
    SELECT 4 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 5 AS nid, 738.503967 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 7 AS nid, 123.605995 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 69.137108 AS "E"
    UNION ALL
    SELECT 10 AS nid, 178.074905 AS "E"
    UNION ALL
    SELECT 11 AS nid, 700.240234 AS "E"
    UNION ALL
    SELECT 12 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 13 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 14 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 15 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 16 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 17 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 18 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 19 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 20 AS nid, 730.257019 AS "E"
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
