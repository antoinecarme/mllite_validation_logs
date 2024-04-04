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
"DT_node_lookup_5" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.623736) THEN CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_2" <= 0.194355) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_0" <= 31.362381) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 434.835785 AS "E"
    UNION ALL
    SELECT 1 AS nid, 205.402649 AS "E"
    UNION ALL
    SELECT 2 AS nid, 893.702148 AS "E"
    UNION ALL
    SELECT 3 AS nid, 786.773376 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 6 AS nid, 235.762161 AS "E"
    UNION ALL
    SELECT 7 AS nid, 215.810745 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 10 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 11 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_0" <= 54.223907) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 347.401154) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_0" <= 32.136803) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 343.442780 AS "E"
    UNION ALL
    SELECT 1 AS nid, 164.000671 AS "E"
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
    SELECT 7 AS nid, 98.192802 AS "E"
    UNION ALL
    SELECT 8 AS nid, 295.616425 AS "E"
    UNION ALL
    SELECT 9 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 12 AS nid, 160.884338 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_3" <= 7.260583) THEN CASE WHEN (model_input."X_2" <= 0.389127) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 9.337334) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 1331.461548) THEN CASE WHEN (model_input."X_2" <= 0.689352) THEN 7 ELSE 8 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 372.917480 AS "E"
    UNION ALL
    SELECT 1 AS nid, 162.336273 AS "E"
    UNION ALL
    SELECT 2 AS nid, 794.079895 AS "E"
    UNION ALL
    SELECT 3 AS nid, 653.943604 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 245.737869 AS "E"
    UNION ALL
    SELECT 6 AS nid, 78.934700 AS "E"
    UNION ALL
    SELECT 7 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 8 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 9 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 10 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 11 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 12 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 23.814299) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 644.004639) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 6.412875) THEN 15 ELSE 16 END END ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN 9 ELSE 10 END ELSE 8 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 408.503174 AS "E"
    UNION ALL
    SELECT 1 AS nid, 190.809265 AS "E"
    UNION ALL
    SELECT 2 AS nid, 843.891052 AS "E"
    UNION ALL
    SELECT 3 AS nid, 720.358459 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 142.572601 AS "E"
    UNION ALL
    SELECT 7 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 9 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 10 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 11 AS nid, 127.924973 AS "E"
    UNION ALL
    SELECT 12 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 141.476898 AS "E"
    UNION ALL
    SELECT 15 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 16 AS nid, 152.198303 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.586430) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 60.929955) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 426.200348 AS "E"
    UNION ALL
    SELECT 1 AS nid, 156.193939 AS "E"
    UNION ALL
    SELECT 2 AS nid, 804.209351 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 4 AS nid, 701.639526 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 84.463791 AS "E"
    UNION ALL
    SELECT 7 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 8 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 9 AS nid, 64.556961 AS "E"
    UNION ALL
    SELECT 10 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 11 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_0" <= 54.223907) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 347.401154) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 729.139038) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 1331.461548) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 346.593109 AS "E"
    UNION ALL
    SELECT 1 AS nid, 164.901611 AS "E"
    UNION ALL
    SELECT 2 AS nid, 891.667542 AS "E"
    UNION ALL
    SELECT 3 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 119.495628 AS "E"
    UNION ALL
    SELECT 6 AS nid, 255.713577 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 9 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 10 AS nid, 145.819916 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 132.641312 AS "E"
    UNION ALL
    SELECT 1 AS nid, 114.197868 AS "E"
    UNION ALL
    SELECT 2 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 3 AS nid, 81.393349 AS "E"
    UNION ALL
    SELECT 4 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 5 AS nid, 68.221077 AS "E"
    UNION ALL
    SELECT 6 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 7 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 8 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 9 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 11 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 12 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.206302) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 213.641251) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_2" <= 0.729710) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 374.243256 AS "E"
    UNION ALL
    SELECT 1 AS nid, 192.349060 AS "E"
    UNION ALL
    SELECT 2 AS nid, 919.925720 AS "E"
    UNION ALL
    SELECT 3 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 151.443314 AS "E"
    UNION ALL
    SELECT 7 AS nid, 78.934700 AS "E"
    UNION ALL
    SELECT 8 AS nid, 180.446747 AS "E"
    UNION ALL
    SELECT 9 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 10 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 11 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 12 AS nid, 199.279037 AS "E"
    UNION ALL
    SELECT 13 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 14 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 215.810730 AS "E"
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
    CASE WHEN (model_input."X_1" <= 791.194702) THEN CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_0" <= 54.223907) THEN CASE WHEN (model_input."X_0" <= 31.599663) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 4.654071) THEN 9 ELSE 10 END END ELSE 6 END ELSE CASE WHEN (model_input."X_0" <= 37.636719) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 249.920166 AS "E"
    UNION ALL
    SELECT 1 AS nid, 156.822357 AS "E"
    UNION ALL
    SELECT 2 AS nid, 715.409180 AS "E"
    UNION ALL
    SELECT 3 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 4 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 5 AS nid, 112.148125 AS "E"
    UNION ALL
    SELECT 6 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 7 AS nid, 63.411926 AS "E"
    UNION ALL
    SELECT 8 AS nid, 160.884338 AS "E"
    UNION ALL
    SELECT 9 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 11 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 12 AS nid, 73.717247 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_0" <= 57.538895) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 17 ELSE 18 END ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 347.401154) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_3" <= 5.418353) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 328.393738 AS "E"
    UNION ALL
    SELECT 1 AS nid, 143.935303 AS "E"
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
    SELECT 7 AS nid, 106.298233 AS "E"
    UNION ALL
    SELECT 8 AS nid, 275.665009 AS "E"
    UNION ALL
    SELECT 9 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.890869 AS "E"
    UNION ALL
    SELECT 12 AS nid, 150.841385 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 64.556961 AS "E"
    UNION ALL
    SELECT 16 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 17 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 18 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN 13 ELSE 14 END ELSE 12 END ELSE CASE WHEN (model_input."X_3" <= 5.369574) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 373.632843 AS "E"
    UNION ALL
    SELECT 1 AS nid, 155.849258 AS "E"
    UNION ALL
    SELECT 2 AS nid, 678.529846 AS "E"
    UNION ALL
    SELECT 3 AS nid, 87.150429 AS "E"
    UNION ALL
    SELECT 4 AS nid, 247.447739 AS "E"
    UNION ALL
    SELECT 5 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 203.411957 AS "E"
    UNION ALL
    SELECT 9 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 10 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 11 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 12 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 13 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 16 AS nid, 215.810730 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 644.004639) THEN CASE WHEN (model_input."X_0" <= 26.054802) THEN 9 ELSE CASE WHEN (model_input."X_0" <= 52.070107) THEN 11 ELSE 12 END END ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 7.831765) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 369.831879 AS "E"
    UNION ALL
    SELECT 1 AS nid, 197.043274 AS "E"
    UNION ALL
    SELECT 2 AS nid, 715.409180 AS "E"
    UNION ALL
    SELECT 3 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 4 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 150.884598 AS "E"
    UNION ALL
    SELECT 7 AS nid, 118.421524 AS "E"
    UNION ALL
    SELECT 8 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 9 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 10 AS nid, 137.903091 AS "E"
    UNION ALL
    SELECT 11 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_0" <= 23.814299) THEN 7 ELSE CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_1" <= 351.548676) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 213.641251) THEN 15 ELSE 16 END END ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 354.086456 AS "E"
    UNION ALL
    SELECT 1 AS nid, 178.192307 AS "E"
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
    SELECT 8 AS nid, 158.526428 AS "E"
    UNION ALL
    SELECT 9 AS nid, 139.431671 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 100.788445 AS "E"
    UNION ALL
    SELECT 12 AS nid, 178.074905 AS "E"
    UNION ALL
    SELECT 13 AS nid, 85.804916 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 16 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 17 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 18 AS nid, 97.892578 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_0" <= 57.538895) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 13 ELSE 14 END ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 347.401154) THEN 9 ELSE 10 END END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 0.691585) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 378.724609 AS "E"
    UNION ALL
    SELECT 1 AS nid, 123.865524 AS "E"
    UNION ALL
    SELECT 2 AS nid, 735.527283 AS "E"
    UNION ALL
    SELECT 3 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 108.541321 AS "E"
    UNION ALL
    SELECT 6 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 7 AS nid, 82.369804 AS "E"
    UNION ALL
    SELECT 8 AS nid, 160.884338 AS "E"
    UNION ALL
    SELECT 9 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 10 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 11 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 12 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 1331.461548) THEN CASE WHEN (model_input."X_1" <= 791.194702) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 40.385956) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 347.401154) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 639.050476 AS "E"
    UNION ALL
    SELECT 1 AS nid, 447.237732 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 3 AS nid, 179.316193 AS "E"
    UNION ALL
    SELECT 4 AS nid, 661.574951 AS "E"
    UNION ALL
    SELECT 5 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 6 AS nid, 127.248505 AS "E"
    UNION ALL
    SELECT 7 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 8 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 9 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 10 AS nid, 160.884338 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 130.755493 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 15 ELSE 16 END ELSE 14 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_2" <= 0.689352) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 31.362381) THEN 11 ELSE 12 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 453.166382 AS "E"
    UNION ALL
    SELECT 1 AS nid, 178.200165 AS "E"
    UNION ALL
    SELECT 2 AS nid, 838.119141 AS "E"
    UNION ALL
    SELECT 3 AS nid, 744.026733 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 88.149849 AS "E"
    UNION ALL
    SELECT 6 AS nid, 245.737869 AS "E"
    UNION ALL
    SELECT 7 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 8 AS nid, 786.773376 AS "E"
    UNION ALL
    SELECT 9 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 10 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 11 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 12 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 13 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 14 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 736.464355) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_0" <= 31.362381) THEN 9 ELSE 10 END ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 550.784180 AS "E"
    UNION ALL
    SELECT 1 AS nid, 117.707718 AS "E"
    UNION ALL
    SELECT 2 AS nid, 860.124512 AS "E"
    UNION ALL
    SELECT 3 AS nid, 718.378784 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 786.773376 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 81.775696 AS "E"
    UNION ALL
    SELECT 8 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 9 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 10 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_0" <= 23.814299) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 4.588516) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.206302) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 213.641251) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 5.945848) THEN 13 ELSE 14 END END END END END ELSE CASE WHEN (model_input."X_3" <= 5.355496) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 263.756348 AS "E"
    UNION ALL
    SELECT 1 AS nid, 161.978760 AS "E"
    UNION ALL
    SELECT 2 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 3 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 4 AS nid, 142.696472 AS "E"
    UNION ALL
    SELECT 5 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 6 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 7 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 8 AS nid, 162.404816 AS "E"
    UNION ALL
    SELECT 9 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 10 AS nid, 188.209732 AS "E"
    UNION ALL
    SELECT 11 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 12 AS nid, 197.212585 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 215.810730 AS "E"
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
    CASE WHEN (model_input."X_1" <= 736.464355) THEN CASE WHEN (model_input."X_1" <= 503.852051) THEN CASE WHEN (model_input."X_3" <= 6.412875) THEN 9 ELSE 10 END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.728891) THEN CASE WHEN (model_input."X_3" <= 7.046886) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 489.211517 AS "E"
    UNION ALL
    SELECT 1 AS nid, 125.861160 AS "E"
    UNION ALL
    SELECT 2 AS nid, 997.901978 AS "E"
    UNION ALL
    SELECT 3 AS nid, 673.021973 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 146.837601 AS "E"
    UNION ALL
    SELECT 8 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 9 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 152.198303 AS "E"
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
    CASE WHEN (model_input."X_0" <= 20.977118) THEN 1 ELSE CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_3" <= 5.968805) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 7.704653) THEN CASE WHEN (model_input."X_1" <= 517.957886) THEN 9 ELSE 10 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 221.427811 AS "E"
    UNION ALL
    SELECT 1 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 2 AS nid, 167.463852 AS "E"
    UNION ALL
    SELECT 3 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 4 AS nid, 179.272675 AS "E"
    UNION ALL
    SELECT 5 AS nid, 200.932220 AS "E"
    UNION ALL
    SELECT 6 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 7 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 8 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 9 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
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
    CASE WHEN (model_input."X_1" <= 791.194702) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_0" <= 39.892754) THEN 11 ELSE CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 15 ELSE 16 END ELSE 14 END END ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_2" <= 0.689352) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 31.362381) THEN 9 ELSE 10 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 440.422882 AS "E"
    UNION ALL
    SELECT 1 AS nid, 156.354218 AS "E"
    UNION ALL
    SELECT 2 AS nid, 838.119141 AS "E"
    UNION ALL
    SELECT 3 AS nid, 744.026733 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 6 AS nid, 786.773376 AS "E"
    UNION ALL
    SELECT 7 AS nid, 126.493370 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 10 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 11 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 12 AS nid, 100.788445 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.437592) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN 15 ELSE 16 END ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 32.136803) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_1" <= 1057.156250) THEN 11 ELSE 12 END ELSE 8 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 487.245575 AS "E"
    UNION ALL
    SELECT 1 AS nid, 179.556259 AS "E"
    UNION ALL
    SELECT 2 AS nid, 918.010620 AS "E"
    UNION ALL
    SELECT 3 AS nid, 720.358459 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 92.511131 AS "E"
    UNION ALL
    SELECT 6 AS nid, 295.616425 AS "E"
    UNION ALL
    SELECT 7 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 9 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 10 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 11 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 12 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.615410 AS "E"
    UNION ALL
    SELECT 14 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 15 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 791.194702) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 15 ELSE 16 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 228.648972 AS "E"
    UNION ALL
    SELECT 1 AS nid, 139.774384 AS "E"
    UNION ALL
    SELECT 2 AS nid, 673.021973 AS "E"
    UNION ALL
    SELECT 3 AS nid, 118.024956 AS "E"
    UNION ALL
    SELECT 4 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 5 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 94.469147 AS "E"
    UNION ALL
    SELECT 8 AS nid, 165.136597 AS "E"
    UNION ALL
    SELECT 9 AS nid, 76.325974 AS "E"
    UNION ALL
    SELECT 10 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 69.137108 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 963.393921) THEN CASE WHEN (model_input."X_0" <= 48.215260) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 6.714046) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_1" <= 503.852051) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 517.957886) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 278.864166 AS "E"
    UNION ALL
    SELECT 1 AS nid, 131.685028 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1014.760071 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 4 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 5 AS nid, 89.902405 AS "E"
    UNION ALL
    SELECT 6 AS nid, 159.540115 AS "E"
    UNION ALL
    SELECT 7 AS nid, 119.801186 AS "E"
    UNION ALL
    SELECT 8 AS nid, 199.279037 AS "E"
    UNION ALL
    SELECT 9 AS nid, 69.137108 AS "E"
    UNION ALL
    SELECT 10 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 11 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 13 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 14 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 908.323730) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN CASE WHEN (model_input."X_2" <= 0.239544) THEN 15 ELSE 16 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 32.136803) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN CASE WHEN (model_input."X_3" <= 5.355496) THEN 11 ELSE 12 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 435.331940 AS "E"
    UNION ALL
    SELECT 1 AS nid, 156.214661 AS "E"
    UNION ALL
    SELECT 2 AS nid, 993.566467 AS "E"
    UNION ALL
    SELECT 3 AS nid, 772.644287 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 96.515335 AS "E"
    UNION ALL
    SELECT 6 AS nid, 255.713577 AS "E"
    UNION ALL
    SELECT 7 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 9 AS nid, 72.890869 AS "E"
    UNION ALL
    SELECT 10 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 11 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 12 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 13 AS nid, 64.556961 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 16 AS nid, 73.717247 AS "E"
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
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 15 ELSE 16 END ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.691585) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 290.493134 AS "E"
    UNION ALL
    SELECT 1 AS nid, 165.564240 AS "E"
    UNION ALL
    SELECT 2 AS nid, 915.137817 AS "E"
    UNION ALL
    SELECT 3 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 112.115120 AS "E"
    UNION ALL
    SELECT 6 AS nid, 245.737869 AS "E"
    UNION ALL
    SELECT 7 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 9 AS nid, 82.369804 AS "E"
    UNION ALL
    SELECT 10 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 11 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 12 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 13 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 14 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 15 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 16 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_1" <= 736.464355) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN 9 ELSE 10 END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.728891) THEN CASE WHEN (model_input."X_3" <= 7.046886) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 578.786804 AS "E"
    UNION ALL
    SELECT 1 AS nid, 99.083595 AS "E"
    UNION ALL
    SELECT 2 AS nid, 921.432068 AS "E"
    UNION ALL
    SELECT 3 AS nid, 701.639526 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 5 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 6 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 7 AS nid, 85.804916 AS "E"
    UNION ALL
    SELECT 8 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 9 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 10 AS nid, 73.717247 AS "E"
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
