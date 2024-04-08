WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 0.195970) THEN CASE WHEN (model_input."X_3" <= 0.420408) THEN CASE WHEN (model_input."X_6" <= 0.179540) THEN CASE WHEN (model_input."X_4" <= 0.313365) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_2" <= 0.577848) THEN CASE WHEN (model_input."X_7" <= 0.749487) THEN CASE WHEN (model_input."X_5" <= 0.059191) THEN 43 ELSE 44 END ELSE 38 END ELSE CASE WHEN (model_input."X_2" <= 0.786006) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_4" <= 0.412894) THEN CASE WHEN (model_input."X_8" <= 0.716979) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_5" <= 0.253101) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_3" <= 0.296503) THEN CASE WHEN (model_input."X_6" <= 0.249295) THEN CASE WHEN (model_input."X_5" <= 0.517185) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_9" <= 0.070037) THEN 41 ELSE CASE WHEN (model_input."X_2" <= 0.767484) THEN CASE WHEN (model_input."X_2" <= 0.314017) THEN 49 ELSE 50 END ELSE 48 END END END ELSE CASE WHEN (model_input."X_0" <= 0.357259) THEN CASE WHEN (model_input."X_4" <= 0.858199) THEN CASE WHEN (model_input."X_8" <= 0.731259) THEN CASE WHEN (model_input."X_8" <= 0.251676) THEN 39 ELSE 40 END ELSE 32 END ELSE CASE WHEN (model_input."X_5" <= 0.149025) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_6" <= 0.491654) THEN CASE WHEN (model_input."X_0" <= 0.848336) THEN CASE WHEN (model_input."X_4" <= 0.932818) THEN 25 ELSE 26 END ELSE 22 END ELSE CASE WHEN (model_input."X_9" <= 0.165012) THEN 29 ELSE CASE WHEN (model_input."X_3" <= 0.868442) THEN 33 ELSE 34 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.396136 AS "E"
    UNION ALL
    SELECT 1 AS nid, 9.337794 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.954103 AS "E"
    UNION ALL
    SELECT 3 AS nid, 13.072225 AS "E"
    UNION ALL
    SELECT 4 AS nid, 19.348928 AS "E"
    UNION ALL
    SELECT 5 AS nid, 16.391298 AS "E"
    UNION ALL
    SELECT 6 AS nid, 20.531973 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.275531 AS "E"
    UNION ALL
    SELECT 8 AS nid, 18.994753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 8.363431 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.066014 AS "E"
    UNION ALL
    SELECT 11 AS nid, 21.641077 AS "E"
    UNION ALL
    SELECT 12 AS nid, 18.560232 AS "E"
    UNION ALL
    SELECT 13 AS nid, 17.995974 AS "E"
    UNION ALL
    SELECT 14 AS nid, 20.992317 AS "E"
    UNION ALL
    SELECT 15 AS nid, 10.978375 AS "E"
    UNION ALL
    SELECT 16 AS nid, 13.697471 AS "E"
    UNION ALL
    SELECT 17 AS nid, 5.116668 AS "E"
    UNION ALL
    SELECT 18 AS nid, 8.904557 AS "E"
    UNION ALL
    SELECT 19 AS nid, 10.008883 AS "E"
    UNION ALL
    SELECT 20 AS nid, 7.358504 AS "E"
    UNION ALL
    SELECT 21 AS nid, 21.966394 AS "E"
    UNION ALL
    SELECT 22 AS nid, 16.761255 AS "E"
    UNION ALL
    SELECT 23 AS nid, 14.948753 AS "E"
    UNION ALL
    SELECT 24 AS nid, 12.603093 AS "E"
    UNION ALL
    SELECT 25 AS nid, 21.513647 AS "E"
    UNION ALL
    SELECT 26 AS nid, 23.777397 AS "E"
    UNION ALL
    SELECT 27 AS nid, 4.389987 AS "E"
    UNION ALL
    SELECT 28 AS nid, 5.843349 AS "E"
    UNION ALL
    SELECT 29 AS nid, 20.439077 AS "E"
    UNION ALL
    SELECT 30 AS nid, 18.325377 AS "E"
    UNION ALL
    SELECT 31 AS nid, 15.572395 AS "E"
    UNION ALL
    SELECT 32 AS nid, 14.533371 AS "E"
    UNION ALL
    SELECT 33 AS nid, 18.575457 AS "E"
    UNION ALL
    SELECT 34 AS nid, 17.575134 AS "E"
    UNION ALL
    SELECT 35 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 36 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 37 AS nid, 9.769091 AS "E"
    UNION ALL
    SELECT 38 AS nid, 10.608364 AS "E"
    UNION ALL
    SELECT 39 AS nid, 16.224360 AS "E"
    UNION ALL
    SELECT 40 AS nid, 15.409407 AS "E"
    UNION ALL
    SELECT 41 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 42 AS nid, 12.717691 AS "E"
    UNION ALL
    SELECT 43 AS nid, 9.196939 AS "E"
    UNION ALL
    SELECT 44 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 45 AS nid, 13.972727 AS "E"
    UNION ALL
    SELECT 46 AS nid, 13.422215 AS "E"
    UNION ALL
    SELECT 47 AS nid, 12.661132 AS "E"
    UNION ALL
    SELECT 48 AS nid, 13.057057 AS "E"
    UNION ALL
    SELECT 49 AS nid, 12.395770 AS "E"
    UNION ALL
    SELECT 50 AS nid, 12.714204 AS "E"
    UNION ALL
    SELECT 51 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 52 AS nid, 10.907791 AS "E"
    UNION ALL
    SELECT 53 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 54 AS nid, 14.885318 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.206782) THEN CASE WHEN (model_input."X_3" <= 0.500914) THEN CASE WHEN (model_input."X_5" <= 0.488824) THEN CASE WHEN (model_input."X_4" <= 0.560513) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_3" <= 0.122230) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_8" <= 0.329551) THEN CASE WHEN (model_input."X_8" <= 0.108014) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_4" <= 0.108862) THEN 45 ELSE CASE WHEN (model_input."X_4" <= 0.305034) THEN 49 ELSE 50 END END END END ELSE CASE WHEN (model_input."X_3" <= 0.757658) THEN CASE WHEN (model_input."X_2" <= 0.949171) THEN CASE WHEN (model_input."X_6" <= 0.082866) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 0.319052) THEN CASE WHEN (model_input."X_3" <= 0.163511) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_3" <= 0.410765) THEN 27 ELSE 28 END END END ELSE CASE WHEN (model_input."X_9" <= 0.204570) THEN 9 ELSE CASE WHEN (model_input."X_6" <= 0.848988) THEN CASE WHEN (model_input."X_9" <= 0.844793) THEN 41 ELSE 42 END ELSE 20 END END END ELSE CASE WHEN (model_input."X_0" <= 0.163721) THEN CASE WHEN (model_input."X_9" <= 0.432325) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_8" <= 0.861132) THEN CASE WHEN (model_input."X_0" <= 0.720200) THEN CASE WHEN (model_input."X_2" <= 0.602220) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_0" <= 0.749546) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_9" <= 0.380553) THEN 43 ELSE 44 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.417527 AS "E"
    UNION ALL
    SELECT 1 AS nid, 9.969875 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.085173 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.244240 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.882103 AS "E"
    UNION ALL
    SELECT 5 AS nid, 7.254260 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.346037 AS "E"
    UNION ALL
    SELECT 7 AS nid, 14.012341 AS "E"
    UNION ALL
    SELECT 8 AS nid, 18.529301 AS "E"
    UNION ALL
    SELECT 9 AS nid, 23.777397 AS "E"
    UNION ALL
    SELECT 10 AS nid, 17.873289 AS "E"
    UNION ALL
    SELECT 11 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 12 AS nid, 14.534876 AS "E"
    UNION ALL
    SELECT 13 AS nid, 16.523485 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.504763 AS "E"
    UNION ALL
    SELECT 15 AS nid, 13.758270 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.933807 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 18 AS nid, 17.893564 AS "E"
    UNION ALL
    SELECT 19 AS nid, 18.561850 AS "E"
    UNION ALL
    SELECT 20 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 21 AS nid, 13.408150 AS "E"
    UNION ALL
    SELECT 22 AS nid, 15.473819 AS "E"
    UNION ALL
    SELECT 23 AS nid, 8.862547 AS "E"
    UNION ALL
    SELECT 24 AS nid, 6.610944 AS "E"
    UNION ALL
    SELECT 25 AS nid, 14.885318 AS "E"
    UNION ALL
    SELECT 26 AS nid, 12.775077 AS "E"
    UNION ALL
    SELECT 27 AS nid, 18.579578 AS "E"
    UNION ALL
    SELECT 28 AS nid, 15.191477 AS "E"
    UNION ALL
    SELECT 29 AS nid, 21.100922 AS "E"
    UNION ALL
    SELECT 30 AS nid, 22.985512 AS "E"
    UNION ALL
    SELECT 31 AS nid, 20.324827 AS "E"
    UNION ALL
    SELECT 32 AS nid, 22.032234 AS "E"
    UNION ALL
    SELECT 33 AS nid, 21.277147 AS "E"
    UNION ALL
    SELECT 34 AS nid, 19.372507 AS "E"
    UNION ALL
    SELECT 35 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 36 AS nid, 9.513391 AS "E"
    UNION ALL
    SELECT 37 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 38 AS nid, 13.422215 AS "E"
    UNION ALL
    SELECT 39 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 40 AS nid, 6.254771 AS "E"
    UNION ALL
    SELECT 41 AS nid, 18.419981 AS "E"
    UNION ALL
    SELECT 42 AS nid, 19.271183 AS "E"
    UNION ALL
    SELECT 43 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 44 AS nid, 23.271549 AS "E"
    UNION ALL
    SELECT 45 AS nid, 10.588345 AS "E"
    UNION ALL
    SELECT 46 AS nid, 11.048962 AS "E"
    UNION ALL
    SELECT 47 AS nid, 22.121931 AS "E"
    UNION ALL
    SELECT 48 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 49 AS nid, 10.907791 AS "E"
    UNION ALL
    SELECT 50 AS nid, 11.119547 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.296503) THEN CASE WHEN (model_input."X_1" <= 0.209765) THEN CASE WHEN (model_input."X_1" <= 0.099625) THEN 11 ELSE CASE WHEN (model_input."X_8" <= 0.569252) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_6" <= 0.082866) THEN 19 ELSE CASE WHEN (model_input."X_4" <= 0.668765) THEN CASE WHEN (model_input."X_7" <= 0.874332) THEN CASE WHEN (model_input."X_1" <= 0.404686) THEN 35 ELSE 36 END ELSE 32 END ELSE CASE WHEN (model_input."X_7" <= 0.202190) THEN 23 ELSE CASE WHEN (model_input."X_9" <= 0.367653) THEN 41 ELSE 42 END END END END END ELSE CASE WHEN (model_input."X_1" <= 0.190403) THEN CASE WHEN (model_input."X_2" <= 0.235107) THEN CASE WHEN (model_input."X_7" <= 0.536246) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_3" <= 0.680225) THEN CASE WHEN (model_input."X_5" <= 0.225456) THEN 43 ELSE 44 END ELSE 26 END END ELSE CASE WHEN (model_input."X_9" <= 0.977907) THEN CASE WHEN (model_input."X_0" <= 0.468355) THEN CASE WHEN (model_input."X_4" <= 0.737057) THEN CASE WHEN (model_input."X_7" <= 0.899833) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_4" <= 0.886682) THEN 29 ELSE 30 END END ELSE CASE WHEN (model_input."X_6" <= 0.619181) THEN CASE WHEN (model_input."X_8" <= 0.913959) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_9" <= 0.767969) THEN 27 ELSE 28 END END END ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.571037 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.817974 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.403929 AS "E"
    UNION ALL
    SELECT 3 AS nid, 6.989649 AS "E"
    UNION ALL
    SELECT 4 AS nid, 12.954049 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.966754 AS "E"
    UNION ALL
    SELECT 6 AS nid, 18.418137 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.039722 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.787881 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.448952 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.496426 AS "E"
    UNION ALL
    SELECT 11 AS nid, 4.389987 AS "E"
    UNION ALL
    SELECT 12 AS nid, 7.856203 AS "E"
    UNION ALL
    SELECT 13 AS nid, 17.855879 AS "E"
    UNION ALL
    SELECT 14 AS nid, 20.223568 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.327553 AS "E"
    UNION ALL
    SELECT 16 AS nid, 19.005114 AS "E"
    UNION ALL
    SELECT 17 AS nid, 21.842928 AS "E"
    UNION ALL
    SELECT 18 AS nid, 18.604206 AS "E"
    UNION ALL
    SELECT 19 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 20 AS nid, 13.247150 AS "E"
    UNION ALL
    SELECT 21 AS nid, 12.736564 AS "E"
    UNION ALL
    SELECT 22 AS nid, 14.778914 AS "E"
    UNION ALL
    SELECT 23 AS nid, 12.395770 AS "E"
    UNION ALL
    SELECT 24 AS nid, 15.573296 AS "E"
    UNION ALL
    SELECT 25 AS nid, 9.909174 AS "E"
    UNION ALL
    SELECT 26 AS nid, 11.670927 AS "E"
    UNION ALL
    SELECT 27 AS nid, 19.029436 AS "E"
    UNION ALL
    SELECT 28 AS nid, 17.328516 AS "E"
    UNION ALL
    SELECT 29 AS nid, 19.651529 AS "E"
    UNION ALL
    SELECT 30 AS nid, 18.229416 AS "E"
    UNION ALL
    SELECT 31 AS nid, 12.529688 AS "E"
    UNION ALL
    SELECT 32 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 33 AS nid, 15.669365 AS "E"
    UNION ALL
    SELECT 34 AS nid, 13.960304 AS "E"
    UNION ALL
    SELECT 35 AS nid, 11.813584 AS "E"
    UNION ALL
    SELECT 36 AS nid, 12.938890 AS "E"
    UNION ALL
    SELECT 37 AS nid, 21.638840 AS "E"
    UNION ALL
    SELECT 38 AS nid, 23.271549 AS "E"
    UNION ALL
    SELECT 39 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 40 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 41 AS nid, 15.917285 AS "E"
    UNION ALL
    SELECT 42 AS nid, 14.885318 AS "E"
    UNION ALL
    SELECT 43 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 44 AS nid, 9.513391 AS "E"
    UNION ALL
    SELECT 45 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 46 AS nid, 13.972727 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.201483) THEN CASE WHEN (model_input."X_3" <= 0.500914) THEN CASE WHEN (model_input."X_2" <= 0.473789) THEN CASE WHEN (model_input."X_7" <= 0.749487) THEN CASE WHEN (model_input."X_9" <= 0.603761) THEN 61 ELSE 62 END ELSE 48 END ELSE CASE WHEN (model_input."X_1" <= 0.099625) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 0.250667) THEN 39 ELSE 40 END END END ELSE CASE WHEN (model_input."X_8" <= 0.329551) THEN CASE WHEN (model_input."X_9" <= 0.111259) THEN 25 ELSE CASE WHEN (model_input."X_4" <= 0.327754) THEN 41 ELSE CASE WHEN (model_input."X_9" <= 0.427759) THEN 57 ELSE 58 END END END ELSE CASE WHEN (model_input."X_6" <= 0.289920) THEN 59 ELSE 60 END END END ELSE CASE WHEN (model_input."X_3" <= 0.296503) THEN CASE WHEN (model_input."X_9" <= 0.080521) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 0.163511) THEN CASE WHEN (model_input."X_6" <= 0.469805) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_9" <= 0.326508) THEN 31 ELSE 32 END END END ELSE CASE WHEN (model_input."X_4" <= 0.732144) THEN CASE WHEN (model_input."X_0" <= 0.580910) THEN CASE WHEN (model_input."X_0" <= 0.363931) THEN CASE WHEN (model_input."X_7" <= 0.514091) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_9" <= 0.120584) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_3" <= 0.723434) THEN CASE WHEN (model_input."X_6" <= 0.432954) THEN 35 ELSE 36 END ELSE 20 END END ELSE CASE WHEN (model_input."X_0" <= 0.468770) THEN CASE WHEN (model_input."X_6" <= 0.246999) THEN CASE WHEN (model_input."X_0" <= 0.428412) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_9" <= 0.189473) THEN 55 ELSE 56 END END ELSE CASE WHEN (model_input."X_1" <= 0.654955) THEN CASE WHEN (model_input."X_1" <= 0.566286) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_9" <= 0.059289) THEN 45 ELSE 46 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.210360 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.596129 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.015930 AS "E"
    UNION ALL
    SELECT 3 AS nid, 12.879141 AS "E"
    UNION ALL
    SELECT 4 AS nid, 18.316057 AS "E"
    UNION ALL
    SELECT 5 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 6 AS nid, 13.904627 AS "E"
    UNION ALL
    SELECT 7 AS nid, 8.575105 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.212949 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.160562 AS "E"
    UNION ALL
    SELECT 10 AS nid, 6.989649 AS "E"
    UNION ALL
    SELECT 11 AS nid, 4.389987 AS "E"
    UNION ALL
    SELECT 12 AS nid, 7.856203 AS "E"
    UNION ALL
    SELECT 13 AS nid, 16.800484 AS "E"
    UNION ALL
    SELECT 14 AS nid, 19.326443 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.943336 AS "E"
    UNION ALL
    SELECT 16 AS nid, 18.657629 AS "E"
    UNION ALL
    SELECT 17 AS nid, 18.530846 AS "E"
    UNION ALL
    SELECT 18 AS nid, 21.872372 AS "E"
    UNION ALL
    SELECT 19 AS nid, 18.117620 AS "E"
    UNION ALL
    SELECT 20 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 21 AS nid, 20.913986 AS "E"
    UNION ALL
    SELECT 22 AS nid, 23.309944 AS "E"
    UNION ALL
    SELECT 23 AS nid, 13.154241 AS "E"
    UNION ALL
    SELECT 24 AS nid, 10.801007 AS "E"
    UNION ALL
    SELECT 25 AS nid, 11.670927 AS "E"
    UNION ALL
    SELECT 26 AS nid, 13.895898 AS "E"
    UNION ALL
    SELECT 27 AS nid, 15.566173 AS "E"
    UNION ALL
    SELECT 28 AS nid, 13.386242 AS "E"
    UNION ALL
    SELECT 29 AS nid, 15.229306 AS "E"
    UNION ALL
    SELECT 30 AS nid, 13.242287 AS "E"
    UNION ALL
    SELECT 31 AS nid, 12.888306 AS "E"
    UNION ALL
    SELECT 32 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 33 AS nid, 19.008787 AS "E"
    UNION ALL
    SELECT 34 AS nid, 17.734272 AS "E"
    UNION ALL
    SELECT 35 AS nid, 16.761255 AS "E"
    UNION ALL
    SELECT 36 AS nid, 18.388893 AS "E"
    UNION ALL
    SELECT 37 AS nid, 13.960304 AS "E"
    UNION ALL
    SELECT 38 AS nid, 12.812179 AS "E"
    UNION ALL
    SELECT 39 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 40 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 41 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 42 AS nid, 13.605718 AS "E"
    UNION ALL
    SELECT 43 AS nid, 14.885318 AS "E"
    UNION ALL
    SELECT 44 AS nid, 15.917285 AS "E"
    UNION ALL
    SELECT 45 AS nid, 23.777397 AS "E"
    UNION ALL
    SELECT 46 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 47 AS nid, 9.712759 AS "E"
    UNION ALL
    SELECT 48 AS nid, 10.608364 AS "E"
    UNION ALL
    SELECT 49 AS nid, 19.438000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 18.579578 AS "E"
    UNION ALL
    SELECT 51 AS nid, 16.076435 AS "E"
    UNION ALL
    SELECT 52 AS nid, 15.225999 AS "E"
    UNION ALL
    SELECT 53 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 54 AS nid, 20.439077 AS "E"
    UNION ALL
    SELECT 55 AS nid, 17.262075 AS "E"
    UNION ALL
    SELECT 56 AS nid, 17.970371 AS "E"
    UNION ALL
    SELECT 57 AS nid, 13.972727 AS "E"
    UNION ALL
    SELECT 58 AS nid, 13.422215 AS "E"
    UNION ALL
    SELECT 59 AS nid, 10.588345 AS "E"
    UNION ALL
    SELECT 60 AS nid, 11.013669 AS "E"
    UNION ALL
    SELECT 61 AS nid, 9.513391 AS "E"
    UNION ALL
    SELECT 62 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.201269) THEN CASE WHEN (model_input."X_3" <= 0.453734) THEN CASE WHEN (model_input."X_5" <= 0.287057) THEN CASE WHEN (model_input."X_7" <= 0.558246) THEN 27 ELSE CASE WHEN (model_input."X_9" <= 0.506076) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_8" <= 0.408046) THEN 35 ELSE CASE WHEN (model_input."X_2" <= 0.205762) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN CASE WHEN (model_input."X_7" <= 0.895699) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_9" <= 0.142399) THEN 51 ELSE 52 END END END ELSE CASE WHEN (model_input."X_3" <= 0.334554) THEN CASE WHEN (model_input."X_6" <= 0.832942) THEN CASE WHEN (model_input."X_2" <= 0.367719) THEN 17 ELSE CASE WHEN (model_input."X_6" <= 0.400762) THEN CASE WHEN (model_input."X_5" <= 0.391840) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_8" <= 0.811377) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_6" <= 0.911508) THEN CASE WHEN (model_input."X_7" <= 0.303156) THEN 53 ELSE 54 END ELSE 14 END END ELSE CASE WHEN (model_input."X_0" <= 0.357259) THEN CASE WHEN (model_input."X_2" <= 0.951131) THEN CASE WHEN (model_input."X_6" <= 0.621498) THEN CASE WHEN (model_input."X_9" <= 0.203937) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_5" <= 0.778080) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_2" <= 0.981001) THEN 55 ELSE 56 END END ELSE CASE WHEN (model_input."X_0" <= 0.769314) THEN CASE WHEN (model_input."X_3" <= 0.512628) THEN CASE WHEN (model_input."X_5" <= 0.814275) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_7" <= 0.121510) THEN 25 ELSE 26 END END ELSE CASE WHEN (model_input."X_9" <= 0.699387) THEN 33 ELSE 34 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.089979 AS "E"
    UNION ALL
    SELECT 1 AS nid, 9.150985 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.069643 AS "E"
    UNION ALL
    SELECT 3 AS nid, 12.961722 AS "E"
    UNION ALL
    SELECT 4 AS nid, 18.761137 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.982959 AS "E"
    UNION ALL
    SELECT 6 AS nid, 20.954439 AS "E"
    UNION ALL
    SELECT 7 AS nid, 7.585619 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.163596 AS "E"
    UNION ALL
    SELECT 9 AS nid, 9.129427 AS "E"
    UNION ALL
    SELECT 10 AS nid, 6.350574 AS "E"
    UNION ALL
    SELECT 11 AS nid, 12.120909 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.063761 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.844171 AS "E"
    UNION ALL
    SELECT 14 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 15 AS nid, 21.399881 AS "E"
    UNION ALL
    SELECT 16 AS nid, 17.168194 AS "E"
    UNION ALL
    SELECT 17 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 18 AS nid, 12.549404 AS "E"
    UNION ALL
    SELECT 19 AS nid, 19.710970 AS "E"
    UNION ALL
    SELECT 20 AS nid, 22.321106 AS "E"
    UNION ALL
    SELECT 21 AS nid, 20.913986 AS "E"
    UNION ALL
    SELECT 22 AS nid, 18.507952 AS "E"
    UNION ALL
    SELECT 23 AS nid, 15.488239 AS "E"
    UNION ALL
    SELECT 24 AS nid, 17.961838 AS "E"
    UNION ALL
    SELECT 25 AS nid, 20.417068 AS "E"
    UNION ALL
    SELECT 26 AS nid, 22.744225 AS "E"
    UNION ALL
    SELECT 27 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 28 AS nid, 9.435335 AS "E"
    UNION ALL
    SELECT 29 AS nid, 11.817811 AS "E"
    UNION ALL
    SELECT 30 AS nid, 12.915199 AS "E"
    UNION ALL
    SELECT 31 AS nid, 11.450376 AS "E"
    UNION ALL
    SELECT 32 AS nid, 10.446651 AS "E"
    UNION ALL
    SELECT 33 AS nid, 16.761255 AS "E"
    UNION ALL
    SELECT 34 AS nid, 17.575134 AS "E"
    UNION ALL
    SELECT 35 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 36 AS nid, 6.151916 AS "E"
    UNION ALL
    SELECT 37 AS nid, 15.189276 AS "E"
    UNION ALL
    SELECT 38 AS nid, 15.906790 AS "E"
    UNION ALL
    SELECT 39 AS nid, 9.196939 AS "E"
    UNION ALL
    SELECT 40 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 41 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 42 AS nid, 11.670926 AS "E"
    UNION ALL
    SELECT 43 AS nid, 15.298593 AS "E"
    UNION ALL
    SELECT 44 AS nid, 14.533371 AS "E"
    UNION ALL
    SELECT 45 AS nid, 13.149499 AS "E"
    UNION ALL
    SELECT 46 AS nid, 12.680898 AS "E"
    UNION ALL
    SELECT 47 AS nid, 16.002472 AS "E"
    UNION ALL
    SELECT 48 AS nid, 15.524062 AS "E"
    UNION ALL
    SELECT 49 AS nid, 6.254771 AS "E"
    UNION ALL
    SELECT 50 AS nid, 5.843349 AS "E"
    UNION ALL
    SELECT 51 AS nid, 10.588345 AS "E"
    UNION ALL
    SELECT 52 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 53 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 54 AS nid, 15.917285 AS "E"
    UNION ALL
    SELECT 55 AS nid, 17.893564 AS "E"
    UNION ALL
    SELECT 56 AS nid, 17.995974 AS "E"
    UNION ALL
    SELECT 57 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 58 AS nid, 11.800902 AS "E"
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
