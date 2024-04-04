WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < 0.562861) THEN CASE WHEN (t."X_6" < 0.279988) THEN CASE WHEN (t."X_2" < 0.002569) THEN CASE WHEN (t."X_0" < -0.855047) THEN CASE WHEN (t."X_6" < -0.818078) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_6" < -0.818078) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_0" < -0.551809) THEN CASE WHEN (t."X_8" < 0.458697) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_6" < -1.279846) THEN 37 ELSE 38 END END END ELSE CASE WHEN (t."X_2" < 0.002569) THEN CASE WHEN (t."X_1" < 0.460004) THEN CASE WHEN (t."X_0" < -0.265594) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_7" < 0.836800) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_2" < 1.314104) THEN CASE WHEN (t."X_0" < -0.855047) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_1" < -0.480312) THEN 45 ELSE 46 END END END END ELSE CASE WHEN (t."X_2" < -0.539937) THEN CASE WHEN (t."X_6" < -0.221437) THEN CASE WHEN (t."X_1" < -0.480312) THEN CASE WHEN (t."X_8" < -0.557793) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_0" < 1.301939) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_5" < 0.240995) THEN CASE WHEN (t."X_7" < -0.505977) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_1" < 0.747154) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_6" < -0.221437) THEN CASE WHEN (t."X_2" < 0.850333) THEN CASE WHEN (t."X_0" < 1.301939) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_2" < 1.314104) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_8" < -0.032541) THEN CASE WHEN (t."X_2" < 0.514777) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_6" < 0.279988) THEN 61 ELSE 62 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 31 AS nid,  -99.473167 AS "E"
    UNION ALL
    SELECT 32 AS nid,  -58.402798 AS "E"
    UNION ALL
    SELECT 33 AS nid,  -56.410275 AS "E"
    UNION ALL
    SELECT 34 AS nid,  -23.992634 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -38.940529 AS "E"
    UNION ALL
    SELECT 36 AS nid,  -5.884748 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -35.267807 AS "E"
    UNION ALL
    SELECT 38 AS nid,  2.910289 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -31.377987 AS "E"
    UNION ALL
    SELECT 40 AS nid,  -1.775949 AS "E"
    UNION ALL
    SELECT 41 AS nid,  6.151759 AS "E"
    UNION ALL
    SELECT 42 AS nid,  32.723454 AS "E"
    UNION ALL
    SELECT 43 AS nid,  -2.936543 AS "E"
    UNION ALL
    SELECT 44 AS nid,  28.526167 AS "E"
    UNION ALL
    SELECT 45 AS nid,  28.812193 AS "E"
    UNION ALL
    SELECT 46 AS nid,  74.235184 AS "E"
    UNION ALL
    SELECT 47 AS nid,  -24.223181 AS "E"
    UNION ALL
    SELECT 48 AS nid,  -52.758530 AS "E"
    UNION ALL
    SELECT 49 AS nid,  -6.172392 AS "E"
    UNION ALL
    SELECT 50 AS nid,  15.327153 AS "E"
    UNION ALL
    SELECT 51 AS nid,  -13.328255 AS "E"
    UNION ALL
    SELECT 52 AS nid,  16.739401 AS "E"
    UNION ALL
    SELECT 53 AS nid,  27.836044 AS "E"
    UNION ALL
    SELECT 54 AS nid,  57.120655 AS "E"
    UNION ALL
    SELECT 55 AS nid,  3.833526 AS "E"
    UNION ALL
    SELECT 56 AS nid,  36.177345 AS "E"
    UNION ALL
    SELECT 57 AS nid,  31.835453 AS "E"
    UNION ALL
    SELECT 58 AS nid,  53.366714 AS "E"
    UNION ALL
    SELECT 59 AS nid,  31.539486 AS "E"
    UNION ALL
    SELECT 60 AS nid,  59.520695 AS "E"
    UNION ALL
    SELECT 61 AS nid,  51.187485 AS "E"
    UNION ALL
    SELECT 62 AS nid,  80.320709 AS "E"
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
    CASE WHEN (t."X_0" < 0.001511) THEN CASE WHEN (t."X_6" < -0.221437) THEN CASE WHEN (t."X_2" < 0.514777) THEN CASE WHEN (t."X_1" < 0.460004) THEN CASE WHEN (t."X_6" < -1.279846) THEN 31 ELSE CASE WHEN (t."X_9" < 1.345375) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_7" < -0.250637) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_1" < -0.782761) THEN CASE WHEN (t."X_8" < 0.458697) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_4" < -0.836796) THEN 37 ELSE 38 END END END ELSE CASE WHEN (t."X_2" < -1.215465) THEN CASE WHEN (t."X_1" < 0.460004) THEN CASE WHEN (t."X_0" < -0.855047) THEN 39 ELSE 40 END ELSE 20 END ELSE CASE WHEN (t."X_2" < 0.850333) THEN CASE WHEN (t."X_6" < 1.372630) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_1" < -0.218059) THEN 43 ELSE 44 END END END END ELSE CASE WHEN (t."X_6" < -0.818078) THEN CASE WHEN (t."X_1" < -0.218059) THEN CASE WHEN (t."X_6" < -1.279846) THEN CASE WHEN (t."X_5" < 1.194946) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_7" < -0.012660) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_2" < 0.266756) THEN CASE WHEN (t."X_0" < 0.562861) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_2" < 1.314104) THEN 51 ELSE 52 END END END ELSE CASE WHEN (t."X_2" < 0.266756) THEN CASE WHEN (t."X_0" < 1.301939) THEN CASE WHEN (t."X_1" < 0.460004) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_1" < 0.244067) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_6" < 0.279988) THEN CASE WHEN (t."X_7" < -1.250920) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_1" < -0.782761) THEN 59 ELSE 60 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 20 AS nid,  -20.246246 AS "E"
    UNION ALL
    SELECT 31 AS nid,  -70.940735 AS "E"
    UNION ALL
    SELECT 33 AS nid,  -37.149506 AS "E"
    UNION ALL
    SELECT 34 AS nid,  -9.913078 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -56.625393 AS "E"
    UNION ALL
    SELECT 36 AS nid,  -31.379290 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -30.392424 AS "E"
    UNION ALL
    SELECT 38 AS nid,  -4.526973 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -65.850105 AS "E"
    UNION ALL
    SELECT 40 AS nid,  -40.501957 AS "E"
    UNION ALL
    SELECT 41 AS nid,  -9.683128 AS "E"
    UNION ALL
    SELECT 42 AS nid,  18.711781 AS "E"
    UNION ALL
    SELECT 43 AS nid,  5.985654 AS "E"
    UNION ALL
    SELECT 44 AS nid,  34.934074 AS "E"
    UNION ALL
    SELECT 45 AS nid,  -39.674171 AS "E"
    UNION ALL
    SELECT 46 AS nid,  -11.622193 AS "E"
    UNION ALL
    SELECT 47 AS nid,  -25.997110 AS "E"
    UNION ALL
    SELECT 48 AS nid,  2.516502 AS "E"
    UNION ALL
    SELECT 49 AS nid,  -26.756565 AS "E"
    UNION ALL
    SELECT 50 AS nid,  2.631582 AS "E"
    UNION ALL
    SELECT 51 AS nid,  10.326676 AS "E"
    UNION ALL
    SELECT 52 AS nid,  35.972294 AS "E"
    UNION ALL
    SELECT 53 AS nid,  1.480887 AS "E"
    UNION ALL
    SELECT 54 AS nid,  21.283482 AS "E"
    UNION ALL
    SELECT 55 AS nid,  26.229200 AS "E"
    UNION ALL
    SELECT 56 AS nid,  55.720280 AS "E"
    UNION ALL
    SELECT 57 AS nid,  -1.544960 AS "E"
    UNION ALL
    SELECT 58 AS nid,  29.664934 AS "E"
    UNION ALL
    SELECT 59 AS nid,  20.309172 AS "E"
    UNION ALL
    SELECT 60 AS nid,  55.738537 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -49.026516 AS "E"
    UNION ALL
    SELECT 62 AS nid,  -26.418671 AS "E"
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
    CASE WHEN (t."X_0" < 0.273402) THEN CASE WHEN (t."X_6" < 0.279988) THEN CASE WHEN (t."X_2" < -0.859350) THEN CASE WHEN (t."X_7" < -0.505977) THEN 15 ELSE CASE WHEN (t."X_4" < 1.282446) THEN CASE WHEN (t."X_5" < -0.012802) THEN 57 ELSE 58 END ELSE 32 END END ELSE CASE WHEN (t."X_1" < 0.008935) THEN CASE WHEN (t."X_0" < -0.855047) THEN CASE WHEN (t."X_7" < -0.505977) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_7" < 1.322444) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_8" < -0.032541) THEN 35 ELSE 36 END END END ELSE CASE WHEN (t."X_2" < 0.266756) THEN CASE WHEN (t."X_1" < 0.460004) THEN CASE WHEN (t."X_2" < -1.215465) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_0" < -0.855047) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_0" < -0.551809) THEN CASE WHEN (t."X_7" < 1.322444) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_3" < 0.536500) THEN 43 ELSE 44 END END END END ELSE CASE WHEN (t."X_6" < -1.279846) THEN CASE WHEN (t."X_1" < -0.218059) THEN CASE WHEN (t."X_5" < 0.793686) THEN CASE WHEN (t."X_1" < -1.237527) THEN 45 ELSE 46 END ELSE 24 END ELSE CASE WHEN (t."X_5" < 0.505171) THEN CASE WHEN (t."X_0" < 0.562861) THEN 47 ELSE 48 END ELSE 26 END END ELSE CASE WHEN (t."X_2" < -0.859350) THEN CASE WHEN (t."X_6" < 0.552253) THEN CASE WHEN (t."X_7" < -0.505977) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_5" < -0.231683) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_1" < -0.782761) THEN CASE WHEN (t."X_7" < -0.827529) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_6" < 1.372630) THEN 55 ELSE 56 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 15 AS nid,  -49.900307 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -12.543283 AS "E"
    UNION ALL
    SELECT 26 AS nid,  10.047287 AS "E"
    UNION ALL
    SELECT 32 AS nid,  -8.964136 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -12.832481 AS "E"
    UNION ALL
    SELECT 36 AS nid,  6.031199 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -34.245461 AS "E"
    UNION ALL
    SELECT 38 AS nid,  -10.285824 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -9.085630 AS "E"
    UNION ALL
    SELECT 40 AS nid,  14.366122 AS "E"
    UNION ALL
    SELECT 41 AS nid,  -1.354095 AS "E"
    UNION ALL
    SELECT 42 AS nid,  24.978531 AS "E"
    UNION ALL
    SELECT 43 AS nid,  18.363405 AS "E"
    UNION ALL
    SELECT 44 AS nid,  38.864422 AS "E"
    UNION ALL
    SELECT 45 AS nid,  -39.663681 AS "E"
    UNION ALL
    SELECT 46 AS nid,  -23.346916 AS "E"
    UNION ALL
    SELECT 47 AS nid,  -24.688641 AS "E"
    UNION ALL
    SELECT 48 AS nid,  -3.344828 AS "E"
    UNION ALL
    SELECT 49 AS nid,  -22.693558 AS "E"
    UNION ALL
    SELECT 50 AS nid,  -2.690006 AS "E"
    UNION ALL
    SELECT 51 AS nid,  -1.798839 AS "E"
    UNION ALL
    SELECT 52 AS nid,  19.970530 AS "E"
    UNION ALL
    SELECT 53 AS nid,  -12.622745 AS "E"
    UNION ALL
    SELECT 54 AS nid,  8.619819 AS "E"
    UNION ALL
    SELECT 55 AS nid,  24.808172 AS "E"
    UNION ALL
    SELECT 56 AS nid,  50.571571 AS "E"
    UNION ALL
    SELECT 57 AS nid,  -40.222492 AS "E"
    UNION ALL
    SELECT 58 AS nid,  -27.571203 AS "E"
    UNION ALL
    SELECT 59 AS nid,  -49.707123 AS "E"
    UNION ALL
    SELECT 60 AS nid,  -26.951982 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -17.827930 AS "E"
    UNION ALL
    SELECT 62 AS nid,  13.226557 AS "E"
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
    CASE WHEN (t."X_0" < -0.855047) THEN CASE WHEN (t."X_2" < 0.850333) THEN CASE WHEN (t."X_6" < -0.818078) THEN CASE WHEN (t."X_0" < -1.264217) THEN 15 ELSE CASE WHEN (t."X_1" < -0.480312) THEN CASE WHEN (t."X_6" < -1.279846) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_5" < -0.012802) THEN 57 ELSE 58 END END END ELSE CASE WHEN (t."X_1" < 0.008935) THEN CASE WHEN (t."X_0" < -1.264217) THEN CASE WHEN (t."X_2" < -0.539937) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_5" < -0.012802) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_6" < 0.859633) THEN 35 ELSE 36 END END END ELSE CASE WHEN (t."X_7" < -0.505977) THEN CASE WHEN (t."X_9" < -0.042875) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_9" < -0.880274) THEN 21 ELSE CASE WHEN (t."X_3" < -0.281021) THEN 37 ELSE 38 END END END END ELSE CASE WHEN (t."X_6" < 0.552253) THEN CASE WHEN (t."X_2" < 0.850333) THEN CASE WHEN (t."X_0" < 0.942791) THEN CASE WHEN (t."X_7" < -0.505977) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_2" < -0.539937) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_1" < -0.218059) THEN CASE WHEN (t."X_0" < 0.942791) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_7" < -0.505977) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_0" < 0.942791) THEN CASE WHEN (t."X_2" < 1.314104) THEN CASE WHEN (t."X_7" < -0.250637) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_3" < 0.536500) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_7" < -0.250637) THEN CASE WHEN (t."X_4" < 0.077926) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_1" < -0.480312) THEN 53 ELSE 54 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 15 AS nid,  -53.591042 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -19.741308 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -8.790812 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -12.046934 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -14.152005 AS "E"
    UNION ALL
    SELECT 36 AS nid,  4.542247 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -1.754521 AS "E"
    UNION ALL
    SELECT 38 AS nid,  13.680632 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -20.226887 AS "E"
    UNION ALL
    SELECT 40 AS nid,  -5.575043 AS "E"
    UNION ALL
    SELECT 41 AS nid,  -3.026935 AS "E"
    UNION ALL
    SELECT 42 AS nid,  15.133018 AS "E"
    UNION ALL
    SELECT 43 AS nid,  -2.849908 AS "E"
    UNION ALL
    SELECT 44 AS nid,  22.945650 AS "E"
    UNION ALL
    SELECT 45 AS nid,  3.471747 AS "E"
    UNION ALL
    SELECT 46 AS nid,  26.558699 AS "E"
    UNION ALL
    SELECT 47 AS nid,  1.731147 AS "E"
    UNION ALL
    SELECT 48 AS nid,  14.961165 AS "E"
    UNION ALL
    SELECT 49 AS nid,  21.381847 AS "E"
    UNION ALL
    SELECT 50 AS nid,  48.562805 AS "E"
    UNION ALL
    SELECT 51 AS nid,  6.937107 AS "E"
    UNION ALL
    SELECT 52 AS nid,  30.023832 AS "E"
    UNION ALL
    SELECT 53 AS nid,  22.023039 AS "E"
    UNION ALL
    SELECT 54 AS nid,  49.508205 AS "E"
    UNION ALL
    SELECT 55 AS nid,  -44.111816 AS "E"
    UNION ALL
    SELECT 56 AS nid,  -19.939461 AS "E"
    UNION ALL
    SELECT 57 AS nid,  -27.175636 AS "E"
    UNION ALL
    SELECT 58 AS nid,  -10.215473 AS "E"
    UNION ALL
    SELECT 59 AS nid,  -40.799576 AS "E"
    UNION ALL
    SELECT 60 AS nid,  -25.654215 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -24.020126 AS "E"
    UNION ALL
    SELECT 62 AS nid,  -5.592580 AS "E"
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
    CASE WHEN (t."X_6" < -0.221437) THEN CASE WHEN (t."X_0" < 0.001511) THEN CASE WHEN (t."X_2" < 1.314104) THEN CASE WHEN (t."X_6" < -1.279846) THEN CASE WHEN (t."X_1" < 0.747154) THEN CASE WHEN (t."X_5" < -0.012802) THEN 61 ELSE 62 END ELSE 32 END ELSE CASE WHEN (t."X_1" < 0.460004) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_9" < -0.579363) THEN 17 ELSE CASE WHEN (t."X_7" < -0.012660) THEN 35 ELSE 36 END END END ELSE CASE WHEN (t."X_2" < 0.514777) THEN CASE WHEN (t."X_6" < -1.279846) THEN CASE WHEN (t."X_5" < 0.240995) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_1" < -0.782761) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_9" < -0.286236) THEN CASE WHEN (t."X_6" < -1.279846) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_6" < -1.279846) THEN 43 ELSE 44 END END END END ELSE CASE WHEN (t."X_2" < -0.274533) THEN CASE WHEN (t."X_0" < 1.301939) THEN CASE WHEN (t."X_2" < -1.215465) THEN CASE WHEN (t."X_0" < -0.855047) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_7" < 0.266685) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_2" < -0.859350) THEN CASE WHEN (t."X_8" < 0.187149) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_7" < 0.266685) THEN 51 ELSE 52 END END END ELSE CASE WHEN (t."X_1" < -0.218059) THEN CASE WHEN (t."X_6" < 1.372630) THEN CASE WHEN (t."X_0" < 1.301939) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_7" < -0.505977) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_8" < -0.032541) THEN CASE WHEN (t."X_0" < -0.265594) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_6" < 1.372630) THEN 59 ELSE 60 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 17 AS nid,  -13.398509 AS "E"
    UNION ALL
    SELECT 32 AS nid,  -7.210938 AS "E"
    UNION ALL
    SELECT 33 AS nid,  -18.427710 AS "E"
    UNION ALL
    SELECT 34 AS nid,  -6.406117 AS "E"
    UNION ALL
    SELECT 35 AS nid,  2.003561 AS "E"
    UNION ALL
    SELECT 36 AS nid,  23.981340 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -19.941759 AS "E"
    UNION ALL
    SELECT 38 AS nid,  -5.187930 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -13.295569 AS "E"
    UNION ALL
    SELECT 40 AS nid,  1.182191 AS "E"
    UNION ALL
    SELECT 41 AS nid,  -9.982326 AS "E"
    UNION ALL
    SELECT 42 AS nid,  2.632004 AS "E"
    UNION ALL
    SELECT 43 AS nid,  3.174664 AS "E"
    UNION ALL
    SELECT 44 AS nid,  20.918915 AS "E"
    UNION ALL
    SELECT 45 AS nid,  -29.594992 AS "E"
    UNION ALL
    SELECT 46 AS nid,  -11.934498 AS "E"
    UNION ALL
    SELECT 47 AS nid,  -7.025051 AS "E"
    UNION ALL
    SELECT 48 AS nid,  5.922336 AS "E"
    UNION ALL
    SELECT 49 AS nid,  4.570674 AS "E"
    UNION ALL
    SELECT 50 AS nid,  16.365583 AS "E"
    UNION ALL
    SELECT 51 AS nid,  12.434287 AS "E"
    UNION ALL
    SELECT 52 AS nid,  33.579323 AS "E"
    UNION ALL
    SELECT 53 AS nid,  -3.767354 AS "E"
    UNION ALL
    SELECT 54 AS nid,  23.528740 AS "E"
    UNION ALL
    SELECT 55 AS nid,  12.200023 AS "E"
    UNION ALL
    SELECT 56 AS nid,  24.326200 AS "E"
    UNION ALL
    SELECT 57 AS nid,  4.297343 AS "E"
    UNION ALL
    SELECT 58 AS nid,  17.400826 AS "E"
    UNION ALL
    SELECT 59 AS nid,  19.512123 AS "E"
    UNION ALL
    SELECT 60 AS nid,  36.786434 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -37.680046 AS "E"
    UNION ALL
    SELECT 62 AS nid,  -20.709110 AS "E"
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
   4.245648 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"