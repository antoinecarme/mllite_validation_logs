WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.046038) THEN 1 ELSE CASE WHEN (model_input."X_1" <= 167.968674) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.184658) THEN CASE WHEN (model_input."X_0" <= 26.606060) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 9.932256) THEN CASE WHEN (model_input."X_3" <= 8.980533) THEN 23 ELSE 24 END ELSE 22 END END ELSE CASE WHEN (model_input."X_1" <= 344.174316) THEN CASE WHEN (model_input."X_3" <= 7.012589) THEN CASE WHEN (model_input."X_3" <= 4.366154) THEN 19 ELSE 20 END ELSE 16 END ELSE CASE WHEN (model_input."X_2" <= 0.515294) THEN CASE WHEN (model_input."X_0" <= 31.466614) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 75.354439) THEN 17 ELSE 18 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.363009 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.377512 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.392407 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.184592 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.423194 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.044679 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.209847 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.449862 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.378073 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.505700 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.515090 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.345833 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.183185 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.521872 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.412708 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.218874 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.159392 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.017177 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.024383 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.081339) THEN CASE WHEN (model_input."X_0" <= 85.267441) THEN CASE WHEN (model_input."X_3" <= 2.260522) THEN 5 ELSE 6 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 478.564087) THEN CASE WHEN (model_input."X_0" <= 44.058414) THEN CASE WHEN (model_input."X_1" <= 450.402283) THEN CASE WHEN (model_input."X_1" <= 425.773285) THEN 27 ELSE 28 END ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 0.466075) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_2" <= 0.681450) THEN 25 ELSE CASE WHEN (model_input."X_3" <= 7.185313) THEN 31 ELSE 32 END END END END ELSE CASE WHEN (model_input."X_2" <= 0.163961) THEN CASE WHEN (model_input."X_3" <= 5.446107) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= 39.541840) THEN CASE WHEN (model_input."X_2" <= 0.303743) THEN CASE WHEN (model_input."X_3" <= 4.623189) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_0" <= 10.509168) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_1" <= 730.325134) THEN CASE WHEN (model_input."X_2" <= 0.650670) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_1" <= 1658.128784) THEN 37 ELSE 38 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.259650 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.160187 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.394672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.264320 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.168046 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.442890 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.279971 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.093429 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.212801 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.114816 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.465259 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.244749 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.385638 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.535365 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.425199 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.343940 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.477777 AS "E"
    UNION ALL
    SELECT 23 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.159392 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.239505 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.193958 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.320002 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.385831 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.218874 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.260137 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.486921 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.542286 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.469628 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.504214 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.487139 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.447350 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.562332 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.531148 AS "E"
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
    CASE WHEN (model_input."X_1" <= 443.382568) THEN CASE WHEN (model_input."X_0" <= 69.329323) THEN CASE WHEN (model_input."X_1" <= 187.384659) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN CASE WHEN (model_input."X_3" <= 4.036556) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_2" <= 0.722582) THEN 29 ELSE 30 END END END ELSE CASE WHEN (model_input."X_1" <= 286.284760) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= 0.046038) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 36.727303) THEN CASE WHEN (model_input."X_3" <= 2.450693) THEN 21 ELSE CASE WHEN (model_input."X_2" <= 0.323565) THEN CASE WHEN (model_input."X_1" <= 789.536987) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_0" <= 28.985626) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_2" <= 0.232638) THEN CASE WHEN (model_input."X_3" <= 9.297373) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_1" <= 730.325134) THEN CASE WHEN (model_input."X_0" <= 95.839081) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_2" <= 0.326872) THEN 23 ELSE 24 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.353726 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.942892 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.438993 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.157651 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.370203 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.308243 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.458025 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.214292 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.370877 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.519240 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.409475 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.204272 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.442307 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.384665 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.474730 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.528092 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.405309 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.484648 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.393909 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.310721 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.193958 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.384737 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.492382 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.538595 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.503732 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.542664 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.473486 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_3" <= 2.260522) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 187.384659) THEN CASE WHEN (model_input."X_3" <= 4.312540) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_0" <= 29.494867) THEN CASE WHEN (model_input."X_2" <= 0.233328) THEN CASE WHEN (model_input."X_1" <= 557.734497) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_2" <= 0.726488) THEN CASE WHEN (model_input."X_2" <= 0.342909) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_0" <= 4.696143) THEN 31 ELSE 32 END END END ELSE CASE WHEN (model_input."X_2" <= 0.246412) THEN CASE WHEN (model_input."X_0" <= 75.602219) THEN CASE WHEN (model_input."X_2" <= 0.234465) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 730.325134) THEN CASE WHEN (model_input."X_0" <= 51.769024) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_2" <= 0.326872) THEN 21 ELSE 22 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.344886 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.326003 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.377753 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.680325 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.401001 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.528085 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.342108 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.137619 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.391682 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.071209 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.295773 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.454022 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.040521 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.193958 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.370351 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.249162 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.367552 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.469282 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.454530 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.541877 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.528132 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.559549 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.469628 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.502286 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.531363 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.567866 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.556223 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_0" <= 85.267441) THEN CASE WHEN (model_input."X_3" <= 2.260522) THEN 7 ELSE 8 END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 0.198223) THEN CASE WHEN (model_input."X_1" <= 510.606812) THEN CASE WHEN (model_input."X_1" <= 455.227905) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_2" <= 0.188719) THEN CASE WHEN (model_input."X_1" <= 1011.756042) THEN CASE WHEN (model_input."X_2" <= 0.169188) THEN 39 ELSE 40 END ELSE 32 END ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 529.568237) THEN CASE WHEN (model_input."X_0" <= 51.769024) THEN CASE WHEN (model_input."X_0" <= 26.929173) THEN 27 ELSE CASE WHEN (model_input."X_1" <= 412.930267) THEN 41 ELSE 42 END END ELSE CASE WHEN (model_input."X_3" <= 4.906644) THEN CASE WHEN (model_input."X_2" <= 0.410939) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_1" <= 427.257812) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_2" <= 0.260938) THEN CASE WHEN (model_input."X_1" <= 744.723328) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_0" <= 60.888954) THEN CASE WHEN (model_input."X_2" <= 0.350243) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_0" <= 79.692429) THEN 29 ELSE 30 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.257028 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.160187 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.391727 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.143134 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.451173 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.264320 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.288265 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.088709 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.035512 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.314502 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.489138 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.422264 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.206741 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.083573 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.288853 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.159392 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.247382 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.371796 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.306535 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.499879 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.521794 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.439002 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.385188 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.459286 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.398434 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.017177 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.280815 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.452385 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.531259 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.024383 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.384737 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.385638 AS "E"
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
