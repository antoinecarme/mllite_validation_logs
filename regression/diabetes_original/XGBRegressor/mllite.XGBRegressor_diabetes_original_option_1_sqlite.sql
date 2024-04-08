WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < -0.001496) THEN CASE WHEN (t."X_2" < 0.005650) THEN CASE WHEN (t."X_6" < 0.019187) THEN CASE WHEN (t."X_4" < 0.021822) THEN CASE WHEN (t."X_0" < 0.030811) THEN CASE WHEN (t."X_0" < -0.027310) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_5" < -0.024800) THEN 55 ELSE 56 END END ELSE 16 END ELSE CASE WHEN (t."X_3" < 0.025315) THEN CASE WHEN (t."X_3" < -0.040099) THEN 33 ELSE CASE WHEN (t."X_1" < 0.050680) THEN 57 ELSE 58 END END ELSE 18 END END ELSE CASE WHEN (t."X_3" < 0.025315) THEN CASE WHEN (t."X_5" < 0.008707) THEN CASE WHEN (t."X_6" < -0.006584) THEN 35 ELSE CASE WHEN (t."X_0" < -0.045472) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_6" < -0.017629) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_8" < -0.028323) THEN 21 ELSE CASE WHEN (t."X_9" < -0.001078) THEN 39 ELSE 40 END END END END ELSE CASE WHEN (t."X_2" < 0.005650) THEN CASE WHEN (t."X_8" < 0.025395) THEN CASE WHEN (t."X_7" < 0.034309) THEN CASE WHEN (t."X_5" < -0.037013) THEN 41 ELSE CASE WHEN (t."X_0" < 0.005383) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_2" < -0.029918) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_3" < -0.029770) THEN 25 ELSE CASE WHEN (t."X_3" < 0.063187) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_9" < 0.036201) THEN CASE WHEN (t."X_3" < 0.063187) THEN CASE WHEN (t."X_5" < 0.039709) THEN 47 ELSE 48 END ELSE 28 END ELSE CASE WHEN (t."X_5" < 0.039709) THEN CASE WHEN (t."X_3" < -0.005670) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_0" < 0.005383) THEN 51 ELSE 52 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 16 AS nid,  1.539954 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -10.502263 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -1.191467 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -7.335596 AS "E"
    UNION ALL
    SELECT 28 AS nid,  29.247656 AS "E"
    UNION ALL
    SELECT 33 AS nid,  -23.529610 AS "E"
    UNION ALL
    SELECT 35 AS nid,  3.452461 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -5.933371 AS "E"
    UNION ALL
    SELECT 38 AS nid,  13.037105 AS "E"
    UNION ALL
    SELECT 39 AS nid,  28.366629 AS "E"
    UNION ALL
    SELECT 40 AS nid,  4.851390 AS "E"
    UNION ALL
    SELECT 41 AS nid,  2.697738 AS "E"
    UNION ALL
    SELECT 43 AS nid,  -4.160040 AS "E"
    UNION ALL
    SELECT 44 AS nid,  8.295513 AS "E"
    UNION ALL
    SELECT 45 AS nid,  8.454439 AS "E"
    UNION ALL
    SELECT 46 AS nid,  22.294247 AS "E"
    UNION ALL
    SELECT 47 AS nid,  13.483457 AS "E"
    UNION ALL
    SELECT 48 AS nid,  2.492132 AS "E"
    UNION ALL
    SELECT 49 AS nid,  16.679962 AS "E"
    UNION ALL
    SELECT 50 AS nid,  33.842453 AS "E"
    UNION ALL
    SELECT 51 AS nid,  27.113295 AS "E"
    UNION ALL
    SELECT 52 AS nid,  3.716626 AS "E"
    UNION ALL
    SELECT 53 AS nid,  -11.007544 AS "E"
    UNION ALL
    SELECT 54 AS nid,  -20.583492 AS "E"
    UNION ALL
    SELECT 55 AS nid,  -1.577182 AS "E"
    UNION ALL
    SELECT 56 AS nid,  -12.066041 AS "E"
    UNION ALL
    SELECT 57 AS nid,  -16.532663 AS "E"
    UNION ALL
    SELECT 58 AS nid,  -23.037378 AS "E"
    UNION ALL
    SELECT 59 AS nid,  -3.548610 AS "E"
    UNION ALL
    SELECT 60 AS nid,  -13.890950 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -18.606041 AS "E"
    UNION ALL
    SELECT 62 AS nid,  -8.067735 AS "E"
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
    CASE WHEN (t."X_8" < -0.001496) THEN CASE WHEN (t."X_2" < 0.005650) THEN CASE WHEN (t."X_8" < -0.041176) THEN CASE WHEN (t."X_9" < -0.001078) THEN CASE WHEN (t."X_2" < -0.040696) THEN CASE WHEN (t."X_0" < -0.067268) THEN 47 ELSE 48 END ELSE 30 END ELSE CASE WHEN (t."X_4" < -0.026336) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_4" < -0.057983) THEN 17 ELSE CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_2" < -0.040696) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_0" < 0.030811) THEN 51 ELSE 52 END END END END ELSE CASE WHEN (t."X_8" < -0.041176) THEN CASE WHEN (t."X_7" < -0.008127) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < 0.025315) THEN CASE WHEN (t."X_2" < 0.042296) THEN CASE WHEN (t."X_8" < -0.018114) THEN 53 ELSE 54 END ELSE 36 END ELSE CASE WHEN (t."X_9" < -0.001078) THEN 37 ELSE 38 END END END END ELSE CASE WHEN (t."X_2" < 0.063852) THEN CASE WHEN (t."X_8" < 0.038968) THEN CASE WHEN (t."X_2" < -0.018062) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_6" < -0.006584) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_3" < 0.008101) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_6" < 0.037595) THEN CASE WHEN (t."X_3" < 0.025315) THEN 59 ELSE 60 END ELSE 42 END END ELSE CASE WHEN (t."X_9" < 0.036201) THEN CASE WHEN (t."X_5" < -0.024800) THEN 43 ELSE CASE WHEN (t."X_0" < -0.045472) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_3" < 0.049415) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_0" < -0.027310) THEN 13 ELSE CASE WHEN (t."X_5" < 0.039709) THEN 27 ELSE 28 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 13 AS nid,  12.743920 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.816764 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -10.745577 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.683266 AS "E"
    UNION ALL
    SELECT 27 AS nid,  28.792950 AS "E"
    UNION ALL
    SELECT 28 AS nid,  14.382472 AS "E"
    UNION ALL
    SELECT 30 AS nid,  -19.220266 AS "E"
    UNION ALL
    SELECT 31 AS nid,  -0.882065 AS "E"
    UNION ALL
    SELECT 32 AS nid,  -17.691748 AS "E"
    UNION ALL
    SELECT 36 AS nid,  -9.276037 AS "E"
    UNION ALL
    SELECT 37 AS nid,  19.266747 AS "E"
    UNION ALL
    SELECT 38 AS nid,  5.287941 AS "E"
    UNION ALL
    SELECT 42 AS nid,  -9.720695 AS "E"
    UNION ALL
    SELECT 43 AS nid,  17.685167 AS "E"
    UNION ALL
    SELECT 45 AS nid,  14.976899 AS "E"
    UNION ALL
    SELECT 46 AS nid,  23.011761 AS "E"
    UNION ALL
    SELECT 47 AS nid,  -9.196836 AS "E"
    UNION ALL
    SELECT 48 AS nid,  -15.021357 AS "E"
    UNION ALL
    SELECT 49 AS nid,  -13.606740 AS "E"
    UNION ALL
    SELECT 50 AS nid,  -3.674454 AS "E"
    UNION ALL
    SELECT 51 AS nid,  -17.400135 AS "E"
    UNION ALL
    SELECT 52 AS nid,  -7.004480 AS "E"
    UNION ALL
    SELECT 53 AS nid,  -2.447392 AS "E"
    UNION ALL
    SELECT 54 AS nid,  10.214491 AS "E"
    UNION ALL
    SELECT 55 AS nid,  -6.767089 AS "E"
    UNION ALL
    SELECT 56 AS nid,  6.519061 AS "E"
    UNION ALL
    SELECT 57 AS nid,  -10.533417 AS "E"
    UNION ALL
    SELECT 58 AS nid,  0.020048 AS "E"
    UNION ALL
    SELECT 59 AS nid,  2.624600 AS "E"
    UNION ALL
    SELECT 60 AS nid,  11.732995 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -10.921746 AS "E"
    UNION ALL
    SELECT 62 AS nid,  6.407938 AS "E"
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
    CASE WHEN (t."X_2" < 0.005650) THEN CASE WHEN (t."X_8" < 0.012551) THEN CASE WHEN (t."X_6" < 0.019187) THEN CASE WHEN (t."X_5" < 0.057558) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_0" < -0.027310) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_3" < 0.025315) THEN 49 ELSE 50 END END ELSE 16 END ELSE CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_3" < 0.025315) THEN CASE WHEN (t."X_6" < 0.063367) THEN 51 ELSE 52 END ELSE 32 END ELSE 18 END END ELSE CASE WHEN (t."X_3" < -0.040099) THEN 9 ELSE CASE WHEN (t."X_3" < -0.005670) THEN CASE WHEN (t."X_2" < -0.007284) THEN CASE WHEN (t."X_0" < -0.005515) THEN 53 ELSE 54 END ELSE 34 END ELSE CASE WHEN (t."X_0" < 0.063504) THEN CASE WHEN (t."X_7" < 0.071210) THEN 55 ELSE 56 END ELSE 36 END END END END ELSE CASE WHEN (t."X_9" < 0.036201) THEN CASE WHEN (t."X_3" < 0.008101) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_2" < 0.042296) THEN CASE WHEN (t."X_0" < -0.045472) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_7" < 0.034309) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_2" < 0.020739) THEN 39 ELSE CASE WHEN (t."X_4" < -0.004321) THEN 61 ELSE 62 END END END ELSE CASE WHEN (t."X_6" < -0.054446) THEN 23 ELSE CASE WHEN (t."X_3" < 0.063187) THEN 41 ELSE 42 END END END ELSE CASE WHEN (t."X_3" < 0.008101) THEN CASE WHEN (t."X_7" < 0.034309) THEN 25 ELSE CASE WHEN (t."X_1" < 0.050680) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_4" < 0.008063) THEN 27 ELSE CASE WHEN (t."X_1" < 0.050680) THEN 45 ELSE 46 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 9 AS nid,  -9.483201 AS "E"
    UNION ALL
    SELECT 16 AS nid,  8.347577 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -13.161795 AS "E"
    UNION ALL
    SELECT 23 AS nid,  20.845459 AS "E"
    UNION ALL
    SELECT 25 AS nid,  2.575993 AS "E"
    UNION ALL
    SELECT 27 AS nid,  20.960423 AS "E"
    UNION ALL
    SELECT 32 AS nid,  2.066968 AS "E"
    UNION ALL
    SELECT 34 AS nid,  18.473547 AS "E"
    UNION ALL
    SELECT 36 AS nid,  10.496723 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -13.757892 AS "E"
    UNION ALL
    SELECT 41 AS nid,  3.765212 AS "E"
    UNION ALL
    SELECT 42 AS nid,  14.100823 AS "E"
    UNION ALL
    SELECT 43 AS nid,  20.295040 AS "E"
    UNION ALL
    SELECT 44 AS nid,  4.890033 AS "E"
    UNION ALL
    SELECT 45 AS nid,  7.459849 AS "E"
    UNION ALL
    SELECT 46 AS nid,  15.276402 AS "E"
    UNION ALL
    SELECT 47 AS nid,  0.965266 AS "E"
    UNION ALL
    SELECT 48 AS nid,  -8.898603 AS "E"
    UNION ALL
    SELECT 49 AS nid,  -9.838048 AS "E"
    UNION ALL
    SELECT 50 AS nid,  -0.443254 AS "E"
    UNION ALL
    SELECT 51 AS nid,  -7.819924 AS "E"
    UNION ALL
    SELECT 52 AS nid,  -12.072952 AS "E"
    UNION ALL
    SELECT 53 AS nid,  -0.748757 AS "E"
    UNION ALL
    SELECT 54 AS nid,  9.638079 AS "E"
    UNION ALL
    SELECT 55 AS nid,  -2.557518 AS "E"
    UNION ALL
    SELECT 56 AS nid,  5.631234 AS "E"
    UNION ALL
    SELECT 57 AS nid,  20.015734 AS "E"
    UNION ALL
    SELECT 58 AS nid,  3.647476 AS "E"
    UNION ALL
    SELECT 59 AS nid,  -7.504065 AS "E"
    UNION ALL
    SELECT 60 AS nid,  3.946995 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -5.376748 AS "E"
    UNION ALL
    SELECT 62 AS nid,  0.026461 AS "E"
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
    CASE WHEN (t."X_8" < -0.001496) THEN CASE WHEN (t."X_2" < 0.020739) THEN CASE WHEN (t."X_0" < 0.030811) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_6" < -0.006584) THEN CASE WHEN (t."X_8" < -0.028323) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_9" < -0.025930) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_5" < -0.024800) THEN CASE WHEN (t."X_0" < -0.027310) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_6" < -0.006584) THEN 55 ELSE 56 END END END ELSE CASE WHEN (t."X_9" < 0.019633) THEN CASE WHEN (t."X_6" < -0.017629) THEN 35 ELSE CASE WHEN (t."X_0" < 0.041708) THEN 57 ELSE 58 END END ELSE 18 END END ELSE CASE WHEN (t."X_3" < -0.029770) THEN CASE WHEN (t."X_8" < -0.028323) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_4" < -0.004321) THEN CASE WHEN (t."X_2" < 0.042296) THEN 37 ELSE CASE WHEN (t."X_4" < -0.026336) THEN 59 ELSE 60 END END ELSE 22 END END END ELSE CASE WHEN (t."X_2" < 0.063852) THEN CASE WHEN (t."X_9" < 0.036201) THEN CASE WHEN (t."X_9" < -0.001078) THEN CASE WHEN (t."X_9" < -0.013504) THEN CASE WHEN (t."X_2" < -0.018062) THEN 61 ELSE 62 END ELSE 40 END ELSE CASE WHEN (t."X_6" < 0.008142) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_8" < 0.025395) THEN CASE WHEN (t."X_0" < 0.016281) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_3" < 0.063187) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_5" < 0.020293) THEN CASE WHEN (t."X_6" < -0.017629) THEN CASE WHEN (t."X_8" < 0.038968) THEN 47 ELSE 48 END ELSE 28 END ELSE CASE WHEN (t."X_8" < 0.063453) THEN 29 ELSE 30 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 18 AS nid,  5.921803 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -2.635023 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -8.916088 AS "E"
    UNION ALL
    SELECT 22 AS nid,  11.286426 AS "E"
    UNION ALL
    SELECT 28 AS nid,  7.000324 AS "E"
    UNION ALL
    SELECT 29 AS nid,  4.592019 AS "E"
    UNION ALL
    SELECT 30 AS nid,  13.122189 AS "E"
    UNION ALL
    SELECT 35 AS nid,  1.670612 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -6.313906 AS "E"
    UNION ALL
    SELECT 40 AS nid,  12.109415 AS "E"
    UNION ALL
    SELECT 41 AS nid,  0.485534 AS "E"
    UNION ALL
    SELECT 42 AS nid,  -9.571572 AS "E"
    UNION ALL
    SELECT 43 AS nid,  -6.252562 AS "E"
    UNION ALL
    SELECT 44 AS nid,  7.852700 AS "E"
    UNION ALL
    SELECT 45 AS nid,  6.392574 AS "E"
    UNION ALL
    SELECT 46 AS nid,  16.343481 AS "E"
    UNION ALL
    SELECT 47 AS nid,  22.546223 AS "E"
    UNION ALL
    SELECT 48 AS nid,  8.518842 AS "E"
    UNION ALL
    SELECT 49 AS nid,  0.042274 AS "E"
    UNION ALL
    SELECT 50 AS nid,  5.992634 AS "E"
    UNION ALL
    SELECT 51 AS nid,  -4.378432 AS "E"
    UNION ALL
    SELECT 52 AS nid,  -8.907104 AS "E"
    UNION ALL
    SELECT 53 AS nid,  -11.232644 AS "E"
    UNION ALL
    SELECT 54 AS nid,  1.977926 AS "E"
    UNION ALL
    SELECT 55 AS nid,  -14.993426 AS "E"
    UNION ALL
    SELECT 56 AS nid,  -9.410465 AS "E"
    UNION ALL
    SELECT 57 AS nid,  1.133446 AS "E"
    UNION ALL
    SELECT 58 AS nid,  -8.886162 AS "E"
    UNION ALL
    SELECT 59 AS nid,  13.396688 AS "E"
    UNION ALL
    SELECT 60 AS nid,  -0.442930 AS "E"
    UNION ALL
    SELECT 61 AS nid,  -3.823818 AS "E"
    UNION ALL
    SELECT 62 AS nid,  4.585392 AS "E"
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
    CASE WHEN (t."X_8" < 0.012551) THEN CASE WHEN (t."X_7" < 0.071210) THEN CASE WHEN (t."X_2" < 0.005650) THEN CASE WHEN (t."X_2" < -0.057941) THEN CASE WHEN (t."X_8" < -0.018114) THEN CASE WHEN (t."X_0" < -0.067268) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_0" < -0.045472) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_4" < -0.038720) THEN CASE WHEN (t."X_8" < -0.001496) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_1" < 0.050680) THEN 41 ELSE 42 END END END ELSE CASE WHEN (t."X_3" < -0.029770) THEN CASE WHEN (t."X_2" < 0.042296) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_2" < 0.042296) THEN CASE WHEN (t."X_8" < -0.028323) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_6" < -0.017629) THEN 45 ELSE 46 END END END END ELSE 4 END ELSE CASE WHEN (t."X_3" < -0.057313) THEN 5 ELSE CASE WHEN (t."X_2" < -0.007284) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_9" < -0.001078) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_5" < 0.057558) THEN CASE WHEN (t."X_4" < -0.004321) THEN 47 ELSE 48 END ELSE 30 END END ELSE CASE WHEN (t."X_9" < 0.019633) THEN CASE WHEN (t."X_5" < 0.039709) THEN CASE WHEN (t."X_0" < -0.027310) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_7" < 0.034309) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_3" < 0.063187) THEN CASE WHEN (t."X_5" < 0.008707) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_6" < -0.039719) THEN 55 ELSE 56 END END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  9.202376 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -10.952170 AS "E"
    UNION ALL
    SELECT 23 AS nid,  2.102216 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -8.178268 AS "E"
    UNION ALL
    SELECT 27 AS nid,  12.875289 AS "E"
    UNION ALL
    SELECT 28 AS nid,  -1.243538 AS "E"
    UNION ALL
    SELECT 30 AS nid,  -10.717604 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -3.554234 AS "E"
    UNION ALL
    SELECT 36 AS nid,  -9.105903 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -7.010917 AS "E"
    UNION ALL
    SELECT 38 AS nid,  1.767873 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -1.728426 AS "E"
    UNION ALL
    SELECT 40 AS nid,  5.494002 AS "E"
    UNION ALL
    SELECT 41 AS nid,  -2.524750 AS "E"
    UNION ALL
    SELECT 42 AS nid,  -7.263823 AS "E"
    UNION ALL
    SELECT 43 AS nid,  -8.301928 AS "E"
    UNION ALL
    SELECT 44 AS nid,  2.291941 AS "E"
    UNION ALL
    SELECT 45 AS nid,  11.387005 AS "E"
    UNION ALL
    SELECT 46 AS nid,  2.979087 AS "E"
    UNION ALL
    SELECT 47 AS nid,  -6.444797 AS "E"
    UNION ALL
    SELECT 48 AS nid,  3.733461 AS "E"
    UNION ALL
    SELECT 49 AS nid,  0.223880 AS "E"
    UNION ALL
    SELECT 50 AS nid,  7.934142 AS "E"
    UNION ALL
    SELECT 51 AS nid,  5.957561 AS "E"
    UNION ALL
    SELECT 52 AS nid,  -4.706613 AS "E"
    UNION ALL
    SELECT 53 AS nid,  5.115619 AS "E"
    UNION ALL
    SELECT 54 AS nid,  9.291851 AS "E"
    UNION ALL
    SELECT 55 AS nid,  5.989120 AS "E"
    UNION ALL
    SELECT 56 AS nid,  13.263271 AS "E"
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
   152.133484 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"