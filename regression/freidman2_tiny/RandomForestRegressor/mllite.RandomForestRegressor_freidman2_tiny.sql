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
"DT_node_lookup_5" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 28.476501) THEN CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_3" <= 5.155128) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_3" <= 2.749117) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_1" <= 745.069336) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 4.654071) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 354.731384 AS "E"
    UNION ALL
    SELECT 1 AS nid, 845.009521 AS "E"
    UNION ALL
    SELECT 2 AS nid, 191.305344 AS "E"
    UNION ALL
    SELECT 3 AS nid, 721.849854 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 6 AS nid, 143.225296 AS "E"
    UNION ALL
    SELECT 7 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 92.971848 AS "E"
    UNION ALL
    SELECT 10 AS nid, 185.103165 AS "E"
    UNION ALL
    SELECT 11 AS nid, 78.165230 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 14 AS nid, 195.972702 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 17 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 18 AS nid, 79.647888 AS "E"
  ) AS "Values"
 ),
"DT_output_5" AS 
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
    CASE WHEN (model_input."X_1" <= 598.761292) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN 17 ELSE 18 END ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 9.976569) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN CASE WHEN (model_input."X_2" <= 0.752185) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_1" <= 1368.245972) THEN CASE WHEN (model_input."X_0" <= 53.260082) THEN 19 ELSE 20 END ELSE 12 END ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 355.503479 AS "E"
    UNION ALL
    SELECT 1 AS nid, 113.192932 AS "E"
    UNION ALL
    SELECT 2 AS nid, 597.813965 AS "E"
    UNION ALL
    SELECT 3 AS nid, 671.837769 AS "E"
    UNION ALL
    SELECT 4 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 5 AS nid, 587.376892 AS "E"
    UNION ALL
    SELECT 6 AS nid, 735.183350 AS "E"
    UNION ALL
    SELECT 7 AS nid, 708.567322 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 87.252846 AS "E"
    UNION ALL
    SELECT 10 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 11 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 12 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 13 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 14 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 15 AS nid, 78.552315 AS "E"
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
"DT_output_6" AS 
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
    CASE WHEN (model_input."X_1" <= 598.761292) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_1" <= 503.852051) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_2" <= 0.767325) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_3" <= 6.529729) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 19 ELSE 20 END END ELSE 8 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 346.494843 AS "E"
    UNION ALL
    SELECT 1 AS nid, 129.975510 AS "E"
    UNION ALL
    SELECT 2 AS nid, 707.360413 AS "E"
    UNION ALL
    SELECT 3 AS nid, 734.198120 AS "E"
    UNION ALL
    SELECT 4 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 5 AS nid, 84.463791 AS "E"
    UNION ALL
    SELECT 6 AS nid, 175.487244 AS "E"
    UNION ALL
    SELECT 7 AS nid, 713.989746 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 64.556961 AS "E"
    UNION ALL
    SELECT 10 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 11 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 12 AS nid, 726.899963 AS "E"
    UNION ALL
    SELECT 13 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 14 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 15 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 16 AS nid, 97.892578 AS "E"
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
"DT_output_7" AS 
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
    CASE WHEN (model_input."X_2" <= 0.343018) THEN CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_0" <= 53.940392) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.770644) THEN CASE WHEN (model_input."X_3" <= 7.046886) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 15 ELSE 16 END END ELSE 8 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 509.141541 AS "E"
    UNION ALL
    SELECT 1 AS nid, 136.413437 AS "E"
    UNION ALL
    SELECT 2 AS nid, 732.778442 AS "E"
    UNION ALL
    SELECT 3 AS nid, 612.350830 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 672.541992 AS "E"
    UNION ALL
    SELECT 6 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 7 AS nid, 695.244019 AS "E"
    UNION ALL
    SELECT 8 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 9 AS nid, 120.533974 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 12 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 13 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 16 AS nid, 730.257019 AS "E"
  ) AS "Values"
 ),
"DT_output_8" AS 
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_2" <= 0.786171) THEN CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 15 ELSE 16 END ELSE 14 END ELSE 10 END ELSE 6 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.523577) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.672608) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 336.523834 AS "E"
    UNION ALL
    SELECT 1 AS nid, 178.875870 AS "E"
    UNION ALL
    SELECT 2 AS nid, 683.349548 AS "E"
    UNION ALL
    SELECT 3 AS nid, 139.446243 AS "E"
    UNION ALL
    SELECT 4 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 5 AS nid, 88.536568 AS "E"
    UNION ALL
    SELECT 6 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 7 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 8 AS nid, 700.240234 AS "E"
    UNION ALL
    SELECT 9 AS nid, 75.804222 AS "E"
    UNION ALL
    SELECT 10 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 11 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 12 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 13 AS nid, 70.282135 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 17 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 18 AS nid, 730.257019 AS "E"
  ) AS "Values"
 ),
"DT_output_9" AS 
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_2" <= 0.194355) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_1" <= 321.144562) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 213.641251) THEN 17 ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 21 ELSE 22 END END END END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.523577) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 53.260082) THEN 23 ELSE 24 END END END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 418.087524 AS "E"
    UNION ALL
    SELECT 1 AS nid, 138.125900 AS "E"
    UNION ALL
    SELECT 2 AS nid, 778.038208 AS "E"
    UNION ALL
    SELECT 3 AS nid, 705.296570 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 683.349548 AS "E"
    UNION ALL
    SELECT 6 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 7 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 8 AS nid, 700.240234 AS "E"
    UNION ALL
    SELECT 9 AS nid, 78.934700 AS "E"
    UNION ALL
    SELECT 10 AS nid, 155.037674 AS "E"
    UNION ALL
    SELECT 11 AS nid, 111.742744 AS "E"
    UNION ALL
    SELECT 12 AS nid, 187.508865 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 16 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 17 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 18 AS nid, 199.279053 AS "E"
    UNION ALL
    SELECT 19 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 20 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 21 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 22 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 23 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 24 AS nid, 730.257019 AS "E"
  ) AS "Values"
 ),
"DT_output_10" AS 
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 17 ELSE 18 END ELSE 16 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN 9 ELSE CASE WHEN (model_input."X_0" <= 32.841957) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 53.260082) THEN 19 ELSE 20 END END END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 524.886658 AS "E"
    UNION ALL
    SELECT 1 AS nid, 111.803650 AS "E"
    UNION ALL
    SELECT 2 AS nid, 846.173401 AS "E"
    UNION ALL
    SELECT 3 AS nid, 740.940491 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 685.372192 AS "E"
    UNION ALL
    SELECT 6 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 7 AS nid, 94.469147 AS "E"
    UNION ALL
    SELECT 8 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 9 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 10 AS nid, 708.567322 AS "E"
    UNION ALL
    SELECT 11 AS nid, 76.325974 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 14 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 15 AS nid, 69.137108 AS "E"
    UNION ALL
    SELECT 16 AS nid, 97.892578 AS "E"
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
"DT_output_11" AS 
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
    CASE WHEN (model_input."X_2" <= 0.343018) THEN CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_2" <= 0.184408) THEN CASE WHEN (model_input."X_2" <= 0.094105) THEN 17 ELSE 18 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 8.146820) THEN CASE WHEN (model_input."X_1" <= 442.310394) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 72.984093) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 15 ELSE 16 END ELSE 12 END END END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 521.927368 AS "E"
    UNION ALL
    SELECT 1 AS nid, 130.274918 AS "E"
    UNION ALL
    SELECT 2 AS nid, 756.918823 AS "E"
    UNION ALL
    SELECT 3 AS nid, 642.526367 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 6 AS nid, 707.028259 AS "E"
    UNION ALL
    SELECT 7 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 8 AS nid, 663.826965 AS "E"
    UNION ALL
    SELECT 9 AS nid, 87.507019 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 686.490723 AS "E"
    UNION ALL
    SELECT 12 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.090866 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 16 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 17 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 18 AS nid, 59.976818 AS "E"
  ) AS "Values"
 ),
"DT_output_12" AS 
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 57.614967) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.198379) THEN 15 ELSE 16 END END ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN CASE WHEN (model_input."X_2" <= 0.752185) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_3" <= 4.370250) THEN 7 ELSE 8 END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 341.335175 AS "E"
    UNION ALL
    SELECT 1 AS nid, 73.739174 AS "E"
    UNION ALL
    SELECT 2 AS nid, 685.387085 AS "E"
    UNION ALL
    SELECT 3 AS nid, 587.376892 AS "E"
    UNION ALL
    SELECT 4 AS nid, 758.894775 AS "E"
    UNION ALL
    SELECT 5 AS nid, 702.757996 AS "E"
    UNION ALL
    SELECT 6 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 7 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 8 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 9 AS nid, 66.612137 AS "E"
    UNION ALL
    SELECT 10 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 11 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 12 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 13 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 14 AS nid, 77.671013 AS "E"
    UNION ALL
    SELECT 15 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 16 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_13" AS 
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 57.614967) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 17 ELSE CASE WHEN (model_input."X_0" <= 41.763039) THEN 19 ELSE 20 END END ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_3" <= 5.369574) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 5.744851) THEN CASE WHEN (model_input."X_3" <= 4.370250) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 8.221119) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 303.777069 AS "E"
    UNION ALL
    SELECT 1 AS nid, 80.620354 AS "E"
    UNION ALL
    SELECT 2 AS nid, 437.670990 AS "E"
    UNION ALL
    SELECT 3 AS nid, 233.289673 AS "E"
    UNION ALL
    SELECT 4 AS nid, 642.052368 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 165.136597 AS "E"
    UNION ALL
    SELECT 7 AS nid, 702.757996 AS "E"
    UNION ALL
    SELECT 8 AS nid, 601.581848 AS "E"
    UNION ALL
    SELECT 9 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 10 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 11 AS nid, 70.593338 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 14 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 17 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 18 AS nid, 77.671013 AS "E"
    UNION ALL
    SELECT 19 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 20 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_14" AS 
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
    CASE WHEN (model_input."X_2" <= 0.723339) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 0.198379) THEN 19 ELSE 20 END END ELSE 16 END ELSE CASE WHEN (model_input."X_2" <= 0.245493) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_1" <= 442.310394) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 74.842430) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN 13 ELSE 14 END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 386.313660 AS "E"
    UNION ALL
    SELECT 1 AS nid, 138.450317 AS "E"
    UNION ALL
    SELECT 2 AS nid, 634.177063 AS "E"
    UNION ALL
    SELECT 3 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 4 AS nid, 697.486206 AS "E"
    UNION ALL
    SELECT 5 AS nid, 747.211975 AS "E"
    UNION ALL
    SELECT 6 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 110.297615 AS "E"
    UNION ALL
    SELECT 9 AS nid, 85.103416 AS "E"
    UNION ALL
    SELECT 10 AS nid, 173.283112 AS "E"
    UNION ALL
    SELECT 11 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 13 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 14 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 15 AS nid, 68.329697 AS "E"
    UNION ALL
    SELECT 16 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 17 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 18 AS nid, 76.682571 AS "E"
    UNION ALL
    SELECT 19 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 20 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_15" AS 
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
    CASE WHEN (model_input."X_2" <= 0.281933) THEN CASE WHEN (model_input."X_2" <= 0.094105) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_1" <= 432.535583) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 5.744851) THEN CASE WHEN (model_input."X_3" <= 4.370250) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 8.221119) THEN 13 ELSE 14 END END END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 492.955841 AS "E"
    UNION ALL
    SELECT 1 AS nid, 74.730118 AS "E"
    UNION ALL
    SELECT 2 AS nid, 632.364441 AS "E"
    UNION ALL
    SELECT 3 AS nid, 579.443909 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 263.266235 AS "E"
    UNION ALL
    SELECT 6 AS nid, 649.705688 AS "E"
    UNION ALL
    SELECT 7 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 702.757996 AS "E"
    UNION ALL
    SELECT 10 AS nid, 607.263916 AS "E"
    UNION ALL
    SELECT 11 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 12 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 13 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 14 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 15 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
  ) AS "Values"
 ),
"DT_output_16" AS 
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
    CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_2" <= 0.198379) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_3" <= 7.655873) THEN 17 ELSE 18 END ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN CASE WHEN (model_input."X_0" <= 81.116760) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 11 ELSE CASE WHEN (model_input."X_0" <= 34.700294) THEN 13 ELSE 14 END END END END END ELSE 2 END AS node_id
  FROM model_input
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 520.886047 AS "E"
    UNION ALL
    SELECT 1 AS nid, 421.800049 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 3 AS nid, 77.671013 AS "E"
    UNION ALL
    SELECT 4 AS nid, 515.653381 AS "E"
    UNION ALL
    SELECT 5 AS nid, 253.562515 AS "E"
    UNION ALL
    SELECT 6 AS nid, 665.419556 AS "E"
    UNION ALL
    SELECT 7 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 587.376892 AS "E"
    UNION ALL
    SELECT 10 AS nid, 723.951660 AS "E"
    UNION ALL
    SELECT 11 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 12 AS nid, 693.591614 AS "E"
    UNION ALL
    SELECT 13 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 14 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 15 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 16 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 17 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 18 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 19 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 20 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_17" AS 
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_1" <= 644.004639) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 57.614967) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 15 ELSE 16 END ELSE 12 END ELSE 10 END ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 53.260082) THEN 17 ELSE 18 END END ELSE 8 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 571.500000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 126.491722 AS "E"
    UNION ALL
    SELECT 2 AS nid, 773.776550 AS "E"
    UNION ALL
    SELECT 3 AS nid, 729.705322 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 104.161964 AS "E"
    UNION ALL
    SELECT 6 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 7 AS nid, 708.373840 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 88.149849 AS "E"
    UNION ALL
    SELECT 10 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 11 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 14 AS nid, 728.242798 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 17 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 18 AS nid, 730.257019 AS "E"
  ) AS "Values"
 ),
"DT_output_18" AS 
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
    CASE WHEN (model_input."X_2" <= 0.291880) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN CASE WHEN (model_input."X_0" <= 81.116760) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 15 ELSE 16 END END ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 576.815796 AS "E"
    UNION ALL
    SELECT 1 AS nid, 88.413635 AS "E"
    UNION ALL
    SELECT 2 AS nid, 739.616516 AS "E"
    UNION ALL
    SELECT 3 AS nid, 696.446350 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 594.479370 AS "E"
    UNION ALL
    SELECT 6 AS nid, 719.105713 AS "E"
    UNION ALL
    SELECT 7 AS nid, 707.114929 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 10 AS nid, 726.228638 AS "E"
    UNION ALL
    SELECT 11 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 12 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 13 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 16 AS nid, 730.257019 AS "E"
  ) AS "Values"
 ),
"DT_output_19" AS 
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
    CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 0.198379) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_3" <= 7.260583) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 580.013489) THEN CASE WHEN (model_input."X_3" <= 7.655873) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.523577) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 3.394444) THEN 19 ELSE 20 END END END END END ELSE 2 END AS node_id
  FROM model_input
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 405.523743 AS "E"
    UNION ALL
    SELECT 1 AS nid, 289.957336 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 3 AS nid, 117.500549 AS "E"
    UNION ALL
    SELECT 4 AS nid, 462.414093 AS "E"
    UNION ALL
    SELECT 5 AS nid, 165.136597 AS "E"
    UNION ALL
    SELECT 6 AS nid, 685.372192 AS "E"
    UNION ALL
    SELECT 7 AS nid, 73.247459 AS "E"
    UNION ALL
    SELECT 8 AS nid, 176.504684 AS "E"
    UNION ALL
    SELECT 9 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 10 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 11 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 12 AS nid, 708.567322 AS "E"
    UNION ALL
    SELECT 13 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 14 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 17 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 18 AS nid, 77.671013 AS "E"
    UNION ALL
    SELECT 19 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 20 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 21 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 22 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_20" AS 
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 41.763039) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 4.702850) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_0" <= 10.944258) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 1368.245972) THEN CASE WHEN (model_input."X_3" <= 3.394444) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 491.288513 AS "E"
    UNION ALL
    SELECT 1 AS nid, 121.348015 AS "E"
    UNION ALL
    SELECT 2 AS nid, 779.020081 AS "E"
    UNION ALL
    SELECT 3 AS nid, 724.586548 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 71.764801 AS "E"
    UNION ALL
    SELECT 6 AS nid, 187.458984 AS "E"
    UNION ALL
    SELECT 7 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 8 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 9 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 10 AS nid, 711.665833 AS "E"
    UNION ALL
    SELECT 11 AS nid, 726.228577 AS "E"
    UNION ALL
    SELECT 12 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 13 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 14 AS nid, 75.694130 AS "E"
    UNION ALL
    SELECT 15 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 16 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 17 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 18 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_21" AS 
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
    CASE WHEN (model_input."X_0" <= 24.315033) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 5.155128) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_2" <= 0.198379) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_3" <= 5.968805) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 281.028259 AS "E"
    UNION ALL
    SELECT 1 AS nid, 595.272095 AS "E"
    UNION ALL
    SELECT 2 AS nid, 138.190140 AS "E"
    UNION ALL
    SELECT 3 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 4 AS nid, 768.440674 AS "E"
    UNION ALL
    SELECT 5 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 6 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 7 AS nid, 90.599586 AS "E"
    UNION ALL
    SELECT 8 AS nid, 177.848923 AS "E"
    UNION ALL
    SELECT 9 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 10 AS nid, 209.611343 AS "E"
    UNION ALL
    SELECT 11 AS nid, 75.199905 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 17 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 18 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_22" AS 
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
    CASE WHEN (model_input."X_1" <= 1491.067261) THEN CASE WHEN (model_input."X_3" <= 3.530175) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 65.338646) THEN CASE WHEN (model_input."X_3" <= 7.260583) THEN CASE WHEN (model_input."X_0" <= 32.136803) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 517.957886) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_2" <= 0.437592) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 13 ELSE CASE WHEN (model_input."X_1" <= 927.776855) THEN 17 ELSE 18 END END ELSE 12 END END ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 432.575073 AS "E"
    UNION ALL
    SELECT 1 AS nid, 320.873108 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 3 AS nid, 720.185852 AS "E"
    UNION ALL
    SELECT 4 AS nid, 211.969589 AS "E"
    UNION ALL
    SELECT 5 AS nid, 171.587845 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 234.792923 AS "E"
    UNION ALL
    SELECT 8 AS nid, 108.382774 AS "E"
    UNION ALL
    SELECT 9 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 209.611343 AS "E"
    UNION ALL
    SELECT 11 AS nid, 79.172432 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 14 AS nid, 88.770233 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 17 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 18 AS nid, 79.647888 AS "E"
  ) AS "Values"
 ),
"DT_output_23" AS 
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
    CASE WHEN (model_input."X_1" <= 1491.067261) THEN CASE WHEN (model_input."X_0" <= 10.443523) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 2.814672) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 23.814299) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.143243) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.767325) THEN CASE WHEN (model_input."X_0" <= 52.070107) THEN 13 ELSE 14 END ELSE 12 END END END END END ELSE 2 END AS node_id
  FROM model_input
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 602.131714 AS "E"
    UNION ALL
    SELECT 1 AS nid, 323.787720 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 3 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 4 AS nid, 274.663361 AS "E"
    UNION ALL
    SELECT 5 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 6 AS nid, 225.160843 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 136.874069 AS "E"
    UNION ALL
    SELECT 9 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 10 AS nid, 151.180618 AS "E"
    UNION ALL
    SELECT 11 AS nid, 137.903091 AS "E"
    UNION ALL
    SELECT 12 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 13 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
  ) AS "Values"
 ),
"DT_output_24" AS 
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
    CASE WHEN (model_input."X_2" <= 0.723339) THEN CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN CASE WHEN (model_input."X_2" <= 0.198379) THEN 19 ELSE 20 END ELSE 18 END ELSE CASE WHEN (model_input."X_1" <= 791.194702) THEN CASE WHEN (model_input."X_3" <= 7.128378) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 6.846519) THEN CASE WHEN (model_input."X_2" <= 0.523577) THEN 15 ELSE 16 END ELSE 14 END END END ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN 11 ELSE 12 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 443.007996 AS "E"
    UNION ALL
    SELECT 1 AS nid, 332.950073 AS "E"
    UNION ALL
    SELECT 2 AS nid, 919.925720 AS "E"
    UNION ALL
    SELECT 3 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 82.726402 AS "E"
    UNION ALL
    SELECT 6 AS nid, 444.160553 AS "E"
    UNION ALL
    SELECT 7 AS nid, 262.190857 AS "E"
    UNION ALL
    SELECT 8 AS nid, 671.622681 AS "E"
    UNION ALL
    SELECT 9 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 11 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 12 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 13 AS nid, 690.234619 AS "E"
    UNION ALL
    SELECT 14 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 15 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 16 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 17 AS nid, 77.671013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 19 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 20 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_25" AS 
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
    CASE WHEN (model_input."X_3" <= 4.706348) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 1081.708740) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 7.260583) THEN CASE WHEN (model_input."X_3" <= 5.369574) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 517.957886) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_2" <= 0.437592) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.104052) THEN 15 ELSE 16 END END ELSE 8 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 349.541534 AS "E"
    UNION ALL
    SELECT 1 AS nid, 706.888733 AS "E"
    UNION ALL
    SELECT 2 AS nid, 135.133133 AS "E"
    UNION ALL
    SELECT 3 AS nid, 247.447739 AS "E"
    UNION ALL
    SELECT 4 AS nid, 86.998314 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 203.411957 AS "E"
    UNION ALL
    SELECT 7 AS nid, 76.131645 AS "E"
    UNION ALL
    SELECT 8 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 9 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 10 AS nid, 722.703735 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 13 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 14 AS nid, 84.209061 AS "E"
    UNION ALL
    SELECT 15 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 16 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 17 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 18 AS nid, 720.185852 AS "E"
  ) AS "Values"
 ),
"DT_output_26" AS 
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 82.179382) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 23 ELSE 24 END ELSE 22 END ELSE 18 END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= 729.139038) THEN 11 ELSE 12 END END ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 1411.084229) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN CASE WHEN (model_input."X_0" <= 53.260082) THEN 25 ELSE 26 END ELSE 14 END ELSE 10 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 388.047485 AS "E"
    UNION ALL
    SELECT 1 AS nid, 192.091751 AS "E"
    UNION ALL
    SELECT 2 AS nid, 819.150024 AS "E"
    UNION ALL
    SELECT 3 AS nid, 720.315308 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 153.983734 AS "E"
    UNION ALL
    SELECT 6 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 7 AS nid, 123.563431 AS "E"
    UNION ALL
    SELECT 8 AS nid, 275.665009 AS "E"
    UNION ALL
    SELECT 9 AS nid, 755.158142 AS "E"
    UNION ALL
    SELECT 10 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 11 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 12 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 13 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 14 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 15 AS nid, 98.619522 AS "E"
    UNION ALL
    SELECT 16 AS nid, 165.136597 AS "E"
    UNION ALL
    SELECT 17 AS nid, 77.195549 AS "E"
    UNION ALL
    SELECT 18 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 19 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 20 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 21 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 22 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 23 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 24 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 25 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 26 AS nid, 730.257019 AS "E"
  ) AS "Values"
 ),
"DT_output_27" AS 
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
    CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_1" <= 187.384659) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.767325) THEN CASE WHEN (model_input."X_3" <= 6.412875) THEN 17 ELSE 18 END ELSE 14 END END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 9.976569) THEN CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_1" <= 1025.449585) THEN CASE WHEN (model_input."X_1" <= 800.969482) THEN 15 ELSE 16 END ELSE 8 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 351.110199 AS "E"
    UNION ALL
    SELECT 1 AS nid, 150.460495 AS "E"
    UNION ALL
    SELECT 2 AS nid, 685.526367 AS "E"
    UNION ALL
    SELECT 3 AS nid, 806.702087 AS "E"
    UNION ALL
    SELECT 4 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 5 AS nid, 704.755432 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 7 AS nid, 594.479370 AS "E"
    UNION ALL
    SELECT 8 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 9 AS nid, 129.898422 AS "E"
    UNION ALL
    SELECT 10 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 11 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 12 AS nid, 157.988998 AS "E"
    UNION ALL
    SELECT 13 AS nid, 141.476898 AS "E"
    UNION ALL
    SELECT 14 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 15 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 16 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 17 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 18 AS nid, 152.198303 AS "E"
  ) AS "Values"
 ),
"DT_output_28" AS 
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
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 0.198379) THEN 19 ELSE 20 END END ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 653.491577) THEN CASE WHEN (model_input."X_0" <= 38.145454) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 1025.449585) THEN CASE WHEN (model_input."X_2" <= 0.752185) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_3" <= 5.155128) THEN CASE WHEN (model_input."X_0" <= 32.841957) THEN 13 ELSE 14 END ELSE 12 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 380.255798 AS "E"
    UNION ALL
    SELECT 1 AS nid, 119.780098 AS "E"
    UNION ALL
    SELECT 2 AS nid, 536.541138 AS "E"
    UNION ALL
    SELECT 3 AS nid, 239.181885 AS "E"
    UNION ALL
    SELECT 4 AS nid, 663.980896 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 7 AS nid, 71.764801 AS "E"
    UNION ALL
    SELECT 8 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 9 AS nid, 587.376892 AS "E"
    UNION ALL
    SELECT 10 AS nid, 721.433838 AS "E"
    UNION ALL
    SELECT 11 AS nid, 690.234619 AS "E"
    UNION ALL
    SELECT 12 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 13 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 14 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 15 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 16 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 17 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 18 AS nid, 75.694130 AS "E"
    UNION ALL
    SELECT 19 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 20 AS nid, 73.717247 AS "E"
  ) AS "Values"
 ),
"DT_output_29" AS 
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
    CASE WHEN (model_input."X_1" <= 987.946411) THEN CASE WHEN (model_input."X_2" <= 0.833477) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN CASE WHEN (model_input."X_1" <= 503.852051) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 213.641251) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 17 ELSE 18 END END END END ELSE 6 END ELSE CASE WHEN (model_input."X_3" <= 5.796413) THEN 3 ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 332.808838 AS "E"
    UNION ALL
    SELECT 1 AS nid, 242.161942 AS "E"
    UNION ALL
    SELECT 2 AS nid, 967.337280 AS "E"
    UNION ALL
    SELECT 3 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 186.993607 AS "E"
    UNION ALL
    SELECT 6 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 157.288498 AS "E"
    UNION ALL
    SELECT 9 AS nid, 96.208290 AS "E"
    UNION ALL
    SELECT 10 AS nid, 183.465714 AS "E"
    UNION ALL
    SELECT 11 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 12 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 13 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 14 AS nid, 195.972702 AS "E"
    UNION ALL
    SELECT 15 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 16 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 17 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 18 AS nid, 215.810730 AS "E"
  ) AS "Values"
 ),
"DT_output_30" AS 
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_2" <= 0.786171) THEN CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN 15 ELSE 16 END ELSE 14 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 9.902269) THEN CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_1" <= 1081.708740) THEN 17 ELSE 18 END ELSE 10 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 408.404633 AS "E"
    UNION ALL
    SELECT 1 AS nid, 170.499054 AS "E"
    UNION ALL
    SELECT 2 AS nid, 714.283203 AS "E"
    UNION ALL
    SELECT 3 AS nid, 820.055847 AS "E"
    UNION ALL
    SELECT 4 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 5 AS nid, 741.169312 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 7 AS nid, 120.164948 AS "E"
    UNION ALL
    SELECT 8 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 9 AS nid, 722.703735 AS "E"
    UNION ALL
    SELECT 10 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 11 AS nid, 106.501266 AS "E"
    UNION ALL
    SELECT 12 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 13 AS nid, 88.222450 AS "E"
    UNION ALL
    SELECT 14 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 15 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 16 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 17 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 18 AS nid, 720.185852 AS "E"
  ) AS "Values"
 ),
"DT_output_31" AS 
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
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
