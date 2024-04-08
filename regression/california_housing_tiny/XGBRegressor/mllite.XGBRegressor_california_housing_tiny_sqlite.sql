WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_0" < -122.440002) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  28129.501953 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -22512.421875 AS "E"
    UNION ALL
    SELECT 7 AS nid,  2637.187500 AS "E"
    UNION ALL
    SELECT 8 AS nid,  14896.250977 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -5312.812500 AS "E"
    UNION ALL
    SELECT 10 AS nid,  57.187504 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_5" < 514.000000) THEN 7 ELSE CASE WHEN (t."X_0" < -121.580002) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  5677.762695 AS "E"
    UNION ALL
    SELECT 6 AS nid,  23884.144531 AS "E"
    UNION ALL
    SELECT 7 AS nid,  48.609379 AS "E"
    UNION ALL
    SELECT 9 AS nid,  2241.609375 AS "E"
    UNION ALL
    SELECT 10 AS nid,  11917.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -6331.226562 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -17551.626953 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_2" < 16.000000) THEN 7 ELSE CASE WHEN (t."X_0" < -121.580002) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  4826.097656 AS "E"
    UNION ALL
    SELECT 6 AS nid,  18510.212891 AS "E"
    UNION ALL
    SELECT 7 AS nid,  41.317970 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1905.368042 AS "E"
    UNION ALL
    SELECT 10 AS nid,  9533.600586 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -5064.981445 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -13038.353516 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_2" < 16.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  13117.204102 AS "E"
    UNION ALL
    SELECT 5 AS nid,  35.121094 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -8883.931641 AS "E"
    UNION ALL
    SELECT 7 AS nid,  1619.561768 AS "E"
    UNION ALL
    SELECT 8 AS nid,  7626.881348 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_1" < 38.000000) THEN CASE WHEN (t."X_0" < -122.440002) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_1" < 37.180000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 418.000000) THEN 13 ELSE CASE WHEN (t."X_3" < 2351.000000) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  2134.603271 AS "E"
    UNION ALL
    SELECT 8 AS nid,  13259.093750 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1473.869629 AS "E"
    UNION ALL
    SELECT 10 AS nid,  1376.627441 AS "E"
    UNION ALL
    SELECT 11 AS nid,  3614.771973 AS "E"
    UNION ALL
    SELECT 12 AS nid,  29.852345 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -9622.294922 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1296.484497 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -4435.859863 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_1" < 38.000000) THEN CASE WHEN (t."X_0" < -122.440002) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_1" < 37.180000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 418.000000) THEN 13 ELSE CASE WHEN (t."X_3" < 2351.000000) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  1814.411743 AS "E"
    UNION ALL
    SELECT 8 AS nid,  10275.796875 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1252.788330 AS "E"
    UNION ALL
    SELECT 10 AS nid,  1170.133667 AS "E"
    UNION ALL
    SELECT 11 AS nid,  2891.817383 AS "E"
    UNION ALL
    SELECT 12 AS nid,  25.373438 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -7457.278320 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1037.187622 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -3548.687500 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_0" < -122.440002) THEN 7 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_2" < 23.000000) THEN 17 ELSE 18 END ELSE 14 END END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_0" < -121.919998) THEN CASE WHEN (t."X_0" < -122.440002) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  1295.039062 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1064.871094 AS "E"
    UNION ALL
    SELECT 10 AS nid,  2820.325928 AS "E"
    UNION ALL
    SELECT 11 AS nid,  1542.250854 AS "E"
    UNION ALL
    SELECT 12 AS nid,  8971.062500 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -6400.568848 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -741.243774 AS "E"
    UNION ALL
    SELECT 16 AS nid,  21.567188 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -3650.072021 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -829.750000 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < -121.919998) THEN CASE WHEN (t."X_0" < -122.440002) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  1100.784424 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -2388.219482 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -5602.841309 AS "E"
    UNION ALL
    SELECT 11 AS nid,  1310.913330 AS "E"
    UNION ALL
    SELECT 12 AS nid,  7176.850586 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -630.057434 AS "E"
    UNION ALL
    SELECT 14 AS nid,  18.332813 AS "E"
    UNION ALL
    SELECT 15 AS nid,  571.563293 AS "E"
    UNION ALL
    SELECT 16 AS nid,  2533.293945 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_2" < 23.000000) THEN 11 ELSE CASE WHEN (t."X_0" < -120.239998) THEN 17 ELSE CASE WHEN (t."X_0" < -117.410004) THEN 19 ELSE 20 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  2146.777832 AS "E"
    UNION ALL
    SELECT 6 AS nid,  6368.611328 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -4762.414551 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -2442.414307 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -535.549255 AS "E"
    UNION ALL
    SELECT 14 AS nid,  15.583594 AS "E"
    UNION ALL
    SELECT 15 AS nid,  485.828918 AS "E"
    UNION ALL
    SELECT 16 AS nid,  2026.634399 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -1511.010254 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -252.117203 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -27.117189 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_7" < 2.419600) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1663.752075 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5413.317383 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -4048.052490 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -610.187744 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1880.541260 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -455.217194 AS "E"
    UNION ALL
    SELECT 14 AS nid,  13.246876 AS "E"
    UNION ALL
    SELECT 15 AS nid,  412.954712 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1621.306274 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_1" < 38.000000) THEN CASE WHEN (t."X_0" < -122.440002) THEN 7 ELSE CASE WHEN (t."X_0" < -121.919998) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_1" < 37.180000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_2" < 23.000000) THEN 17 ELSE CASE WHEN (t."X_0" < -117.410004) THEN 19 ELSE 20 END END ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  542.697693 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -228.726578 AS "E"
    UNION ALL
    SELECT 10 AS nid,  351.011719 AS "E"
    UNION ALL
    SELECT 11 AS nid,  792.662537 AS "E"
    UNION ALL
    SELECT 12 AS nid,  11.259376 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -3101.146973 AS "E"
    UNION ALL
    SELECT 15 AS nid,  4182.234375 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1120.659424 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -1704.858643 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -339.803925 AS "E"
    UNION ALL
    SELECT 20 AS nid,  259.031250 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_2" < 42.000000) THEN CASE WHEN (t."X_1" < 38.439999) THEN CASE WHEN (t."X_1" < 37.779999) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_1" < 37.180000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 15 ELSE CASE WHEN (t."X_0" < -120.239998) THEN 17 ELSE CASE WHEN (t."X_0" < -117.410004) THEN 19 ELSE 20 END END END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  3973.987549 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -194.416412 AS "E"
    UNION ALL
    SELECT 9 AS nid,  634.131226 AS "E"
    UNION ALL
    SELECT 10 AS nid,  9.569531 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -2975.671875 AS "E"
    UNION ALL
    SELECT 13 AS nid,  1229.273438 AS "E"
    UNION ALL
    SELECT 14 AS nid,  298.359375 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1707.266113 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -710.115845 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -71.800781 AS "E"
    UNION ALL
    SELECT 20 AS nid,  220.176575 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_2" < 42.000000) THEN CASE WHEN (t."X_1" < 38.439999) THEN CASE WHEN (t."X_3" < 3090.000000) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_0" < -118.290001) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 17 ELSE CASE WHEN (t."X_0" < -120.239998) THEN 19 ELSE CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END END END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  3377.887695 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -165.253128 AS "E"
    UNION ALL
    SELECT 10 AS nid,  610.889099 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -2529.321289 AS "E"
    UNION ALL
    SELECT 13 AS nid,  353.670319 AS "E"
    UNION ALL
    SELECT 14 AS nid,  1085.646973 AS "E"
    UNION ALL
    SELECT 15 AS nid,  150.070312 AS "E"
    UNION ALL
    SELECT 16 AS nid,  8.135157 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -1451.176270 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -550.339478 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -61.031254 AS "E"
    UNION ALL
    SELECT 22 AS nid,  187.149612 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_2" < 42.000000) THEN CASE WHEN (t."X_1" < 38.439999) THEN CASE WHEN (t."X_3" < 3090.000000) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_0" < -118.290001) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 17 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_1" < 38.369999) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  2871.206299 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -140.465637 AS "E"
    UNION ALL
    SELECT 10 AS nid,  519.255493 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -2149.923096 AS "E"
    UNION ALL
    SELECT 13 AS nid,  282.935944 AS "E"
    UNION ALL
    SELECT 14 AS nid,  868.517273 AS "E"
    UNION ALL
    SELECT 15 AS nid,  127.560944 AS "E"
    UNION ALL
    SELECT 16 AS nid,  6.914063 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -1233.499268 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -197.594543 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -556.635986 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -51.876564 AS "E"
    UNION ALL
    SELECT 24 AS nid,  159.077347 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_2" < 42.000000) THEN CASE WHEN (t."X_1" < 38.439999) THEN CASE WHEN (t."X_3" < 3090.000000) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_0" < -118.290001) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 17 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_1" < 38.369999) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  2440.523438 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -119.395317 AS "E"
    UNION ALL
    SELECT 10 AS nid,  441.367981 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1827.434814 AS "E"
    UNION ALL
    SELECT 13 AS nid,  226.348450 AS "E"
    UNION ALL
    SELECT 14 AS nid,  694.812561 AS "E"
    UNION ALL
    SELECT 15 AS nid,  108.426567 AS "E"
    UNION ALL
    SELECT 16 AS nid,  5.875782 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -1048.474243 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -158.075775 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -473.141022 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -44.095314 AS "E"
    UNION ALL
    SELECT 24 AS nid,  135.215637 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -121.910004) THEN CASE WHEN (t."X_2" < 42.000000) THEN CASE WHEN (t."X_1" < 38.439999) THEN CASE WHEN (t."X_3" < 3090.000000) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_5" < 925.000000) THEN CASE WHEN (t."X_0" < -118.290001) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 17 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_1" < 38.369999) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  2074.443848 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -101.486725 AS "E"
    UNION ALL
    SELECT 10 AS nid,  375.161743 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1553.319214 AS "E"
    UNION ALL
    SELECT 13 AS nid,  181.079681 AS "E"
    UNION ALL
    SELECT 14 AS nid,  555.850037 AS "E"
    UNION ALL
    SELECT 15 AS nid,  92.160942 AS "E"
    UNION ALL
    SELECT 16 AS nid,  4.994532 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -891.202759 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -126.460159 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -402.169952 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -37.481251 AS "E"
    UNION ALL
    SELECT 24 AS nid,  114.932816 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_0" < -121.919998) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  1763.278198 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1320.321167 AS "E"
    UNION ALL
    SELECT 11 AS nid,  333.246887 AS "E"
    UNION ALL
    SELECT 12 AS nid,  78.337502 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -757.522278 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -74.575783 AS "E"
    UNION ALL
    SELECT 16 AS nid,  4.244532 AS "E"
    UNION ALL
    SELECT 17 AS nid,  97.000786 AS "E"
    UNION ALL
    SELECT 18 AS nid,  404.223480 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -108.960167 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -341.844147 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -31.858595 AS "E"
    UNION ALL
    SELECT 24 AS nid,  97.693367 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  1498.786011 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1122.273071 AS "E"
    UNION ALL
    SELECT 11 AS nid,  91.262505 AS "E"
    UNION ALL
    SELECT 12 AS nid,  329.587524 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -643.893799 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -63.389065 AS "E"
    UNION ALL
    SELECT 16 AS nid,  3.607031 AS "E"
    UNION ALL
    SELECT 17 AS nid,  82.450783 AS "E"
    UNION ALL
    SELECT 18 AS nid,  323.379700 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -87.168755 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -290.567596 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -27.079689 AS "E"
    UNION ALL
    SELECT 24 AS nid,  83.039062 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  1273.968750 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -953.932068 AS "E"
    UNION ALL
    SELECT 11 AS nid,  73.010941 AS "E"
    UNION ALL
    SELECT 12 AS nid,  280.148438 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -547.310181 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -53.880470 AS "E"
    UNION ALL
    SELECT 16 AS nid,  3.065625 AS "E"
    UNION ALL
    SELECT 17 AS nid,  70.082817 AS "E"
    UNION ALL
    SELECT 18 AS nid,  258.704681 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -69.734383 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -246.982040 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -23.017969 AS "E"
    UNION ALL
    SELECT 24 AS nid,  70.583206 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  1082.873535 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -810.842041 AS "E"
    UNION ALL
    SELECT 10 AS nid,  185.007431 AS "E"
    UNION ALL
    SELECT 11 AS nid,  58.409378 AS "E"
    UNION ALL
    SELECT 12 AS nid,  238.125015 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -465.213287 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -45.798050 AS "E"
    UNION ALL
    SELECT 16 AS nid,  2.606250 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -55.787502 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -209.934387 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -19.565626 AS "E"
    UNION ALL
    SELECT 22 AS nid,  59.995316 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_1" < 37.779999) THEN 9 ELSE CASE WHEN (t."X_1" < 38.369999) THEN 15 ELSE CASE WHEN (t."X_0" < -121.919998) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  920.442200 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -689.215454 AS "E"
    UNION ALL
    SELECT 9 AS nid,  169.962509 AS "E"
    UNION ALL
    SELECT 11 AS nid,  46.728127 AS "E"
    UNION ALL
    SELECT 12 AS nid,  202.406265 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -395.431671 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -38.928516 AS "E"
    UNION ALL
    SELECT 19 AS nid,  31.821095 AS "E"
    UNION ALL
    SELECT 20 AS nid,  2.214844 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -30.372658 AS "E"
    UNION ALL
    SELECT 22 AS nid,  50.996487 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -38.017971 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -178.443756 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_1" < 37.779999) THEN 9 ELSE CASE WHEN (t."X_1" < 38.369999) THEN 15 ELSE CASE WHEN (t."X_0" < -121.919998) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  782.376587 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -585.833252 AS "E"
    UNION ALL
    SELECT 9 AS nid,  135.968750 AS "E"
    UNION ALL
    SELECT 11 AS nid,  37.382812 AS "E"
    UNION ALL
    SELECT 12 AS nid,  172.045319 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -336.117188 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -33.089066 AS "E"
    UNION ALL
    SELECT 19 AS nid,  27.046877 AS "E"
    UNION ALL
    SELECT 20 AS nid,  1.882031 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -24.297657 AS "E"
    UNION ALL
    SELECT 22 AS nid,  43.346485 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -32.315628 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -151.676956 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  665.020325 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -497.958405 AS "E"
    UNION ALL
    SELECT 11 AS nid,  29.906252 AS "E"
    UNION ALL
    SELECT 12 AS nid,  146.240631 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -285.699615 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -28.126173 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.600781 AS "E"
    UNION ALL
    SELECT 17 AS nid,  22.989845 AS "E"
    UNION ALL
    SELECT 18 AS nid,  108.775009 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -19.438282 AS "E"
    UNION ALL
    SELECT 22 AS nid,  36.844925 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -27.468752 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -128.925003 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  565.265625 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -423.264862 AS "E"
    UNION ALL
    SELECT 11 AS nid,  23.925001 AS "E"
    UNION ALL
    SELECT 12 AS nid,  124.303131 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -242.844147 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -23.907423 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.361719 AS "E"
    UNION ALL
    SELECT 17 AS nid,  19.542189 AS "E"
    UNION ALL
    SELECT 18 AS nid,  87.018753 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -15.550782 AS "E"
    UNION ALL
    SELECT 22 AS nid,  31.318361 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -23.348438 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -109.586723 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  480.478149 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -359.775024 AS "E"
    UNION ALL
    SELECT 11 AS nid,  19.139063 AS "E"
    UNION ALL
    SELECT 12 AS nid,  105.656258 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -206.417587 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -20.321486 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.157813 AS "E"
    UNION ALL
    SELECT 17 AS nid,  16.610157 AS "E"
    UNION ALL
    SELECT 18 AS nid,  69.614067 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -23.550001 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -93.148834 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -3.181641 AS "E"
    UNION ALL
    SELECT 24 AS nid,  26.620314 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  408.407837 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -305.808990 AS "E"
    UNION ALL
    SELECT 11 AS nid,  15.312501 AS "E"
    UNION ALL
    SELECT 12 AS nid,  89.807816 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -175.455475 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -17.273438 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.984375 AS "E"
    UNION ALL
    SELECT 17 AS nid,  14.118751 AS "E"
    UNION ALL
    SELECT 18 AS nid,  55.690628 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -9.767188 AS "E"
    UNION ALL
    SELECT 22 AS nid,  22.627735 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -16.314844 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -79.176567 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.919998) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  347.146881 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -259.937714 AS "E"
    UNION ALL
    SELECT 11 AS nid,  12.250000 AS "E"
    UNION ALL
    SELECT 12 AS nid,  76.335938 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -149.137512 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -14.682423 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.836719 AS "E"
    UNION ALL
    SELECT 17 AS nid,  12.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid,  44.553127 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -7.814063 AS "E"
    UNION ALL
    SELECT 22 AS nid,  19.233986 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -13.867970 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -67.299614 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.910004) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  295.073456 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -220.947083 AS "E"
    UNION ALL
    SELECT 11 AS nid,  9.800001 AS "E"
    UNION ALL
    SELECT 12 AS nid,  64.884377 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -126.766411 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -12.480470 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.710156 AS "E"
    UNION ALL
    SELECT 17 AS nid,  14.137501 AS "E"
    UNION ALL
    SELECT 18 AS nid,  42.457031 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -14.064063 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -57.205082 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.067969 AS "E"
    UNION ALL
    SELECT 24 AS nid,  16.348829 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.910004) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  250.814072 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -187.805283 AS "E"
    UNION ALL
    SELECT 11 AS nid,  7.839063 AS "E"
    UNION ALL
    SELECT 12 AS nid,  55.153126 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -107.751564 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -10.607813 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.604688 AS "E"
    UNION ALL
    SELECT 17 AS nid,  11.310938 AS "E"
    UNION ALL
    SELECT 18 AS nid,  36.089066 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -4.838281 AS "E"
    UNION ALL
    SELECT 22 AS nid,  13.896094 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -9.677344 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -48.624611 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.910004) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  213.192200 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -159.634583 AS "E"
    UNION ALL
    SELECT 11 AS nid,  6.270313 AS "E"
    UNION ALL
    SELECT 12 AS nid,  46.879688 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -91.589066 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -9.016407 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.513281 AS "E"
    UNION ALL
    SELECT 17 AS nid,  9.048438 AS "E"
    UNION ALL
    SELECT 18 AS nid,  30.675001 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -9.800781 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -41.330860 AS "E"
    UNION ALL
    SELECT 23 AS nid,  0.667969 AS "E"
    UNION ALL
    SELECT 24 AS nid,  11.811329 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_1" < 38.369999) THEN CASE WHEN (t."X_0" < -117.410004) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < -122.440002) THEN 23 ELSE 24 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.910004) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  181.214066 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -135.689651 AS "E"
    UNION ALL
    SELECT 11 AS nid,  5.015625 AS "E"
    UNION ALL
    SELECT 12 AS nid,  39.848438 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -77.851173 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -7.664063 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.435938 AS "E"
    UNION ALL
    SELECT 17 AS nid,  7.237500 AS "E"
    UNION ALL
    SELECT 18 AS nid,  26.074221 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -2.957813 AS "E"
    UNION ALL
    SELECT 22 AS nid,  10.039454 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -6.757031 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -35.131641 AS "E"
  ) AS "Values"
 )
,
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
 )
,
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 36.000000) THEN CASE WHEN (t."X_7" < 3.479200) THEN CASE WHEN (t."X_1" < 39.349998) THEN CASE WHEN (t."X_1" < 33.930000) THEN 13 ELSE CASE WHEN (t."X_0" < -120.239998) THEN CASE WHEN (t."X_3" < 1814.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_0" < -117.410004) THEN 25 ELSE 26 END END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 4.781300) THEN CASE WHEN (t."X_0" < -121.580002) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -121.910004) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 37.779999) THEN CASE WHEN (t."X_3" < 1814.000000) THEN CASE WHEN (t."X_0" < -122.440002) THEN 19 ELSE 20 END ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  154.031250 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -115.335945 AS "E"
    UNION ALL
    SELECT 12 AS nid,  33.871876 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -66.173439 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -6.514453 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.370313 AS "E"
    UNION ALL
    SELECT 17 AS nid,  5.789062 AS "E"
    UNION ALL
    SELECT 18 AS nid,  22.162500 AS "E"
    UNION ALL
    SELECT 19 AS nid,  4.867969 AS "E"
    UNION ALL
    SELECT 20 AS nid,  1.153125 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -6.869532 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -29.861719 AS "E"
    UNION ALL
    SELECT 25 AS nid,  1.011328 AS "E"
    UNION ALL
    SELECT 26 AS nid,  8.533594 AS "E"
  ) AS "Values"
 )
,
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
 )
,
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
   180418.750000 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"