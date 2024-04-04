WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 0.325120) THEN CASE WHEN (model_input."X_6" <= 0.121476) THEN CASE WHEN (model_input."X_0" <= -0.849660) THEN CASE WHEN (model_input."X_2" <= 0.624526) THEN CASE WHEN (model_input."X_6" <= -0.864794) THEN CASE WHEN (model_input."X_4" <= 0.359626) THEN 59 ELSE 60 END ELSE 52 END ELSE CASE WHEN (model_input."X_1" <= -0.785461) THEN CASE WHEN (model_input."X_8" <= -0.087330) THEN 55 ELSE 56 END ELSE 54 END END ELSE CASE WHEN (model_input."X_6" <= -1.195889) THEN 57 ELSE 58 END END ELSE CASE WHEN (model_input."X_2" <= 0.247674) THEN CASE WHEN (model_input."X_0" <= -1.025180) THEN CASE WHEN (model_input."X_2" <= -1.006902) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_1" <= 0.453409) THEN 41 ELSE 42 END END ELSE CASE WHEN (model_input."X_0" <= -0.612182) THEN 29 ELSE 30 END END END ELSE CASE WHEN (model_input."X_6" <= -0.723972) THEN CASE WHEN (model_input."X_2" <= 1.103903) THEN CASE WHEN (model_input."X_0" <= 1.397489) THEN CASE WHEN (model_input."X_6" <= -1.315600) THEN CASE WHEN (model_input."X_1" <= 0.355366) THEN 33 ELSE 34 END ELSE 32 END ELSE CASE WHEN (model_input."X_0" <= 1.903440) THEN CASE WHEN (model_input."X_0" <= 1.747582) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_6" <= -1.142159) THEN 17 ELSE 18 END END END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.349259) THEN CASE WHEN (model_input."X_0" <= 1.320247) THEN 27 ELSE CASE WHEN (model_input."X_1" <= 0.028239) THEN CASE WHEN (model_input."X_8" <= -0.009986) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_6" <= 0.804064) THEN 61 ELSE 62 END END END ELSE CASE WHEN (model_input."X_6" <= 0.316310) THEN 25 ELSE CASE WHEN (model_input."X_8" <= 0.479645) THEN CASE WHEN (model_input."X_2" <= 1.432359) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_7" <= 0.435801) THEN 37 ELSE 38 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 4.245648 AS "E"
    UNION ALL
    SELECT 1 AS nid, -52.819820 AS "E"
    UNION ALL
    SELECT 2 AS nid, 98.175125 AS "E"
    UNION ALL
    SELECT 3 AS nid, -116.753777 AS "E"
    UNION ALL
    SELECT 4 AS nid, 19.453373 AS "E"
    UNION ALL
    SELECT 5 AS nid, -14.335038 AS "E"
    UNION ALL
    SELECT 6 AS nid, 133.765045 AS "E"
    UNION ALL
    SELECT 7 AS nid, -45.018951 AS "E"
    UNION ALL
    SELECT 8 AS nid, 174.489044 AS "E"
    UNION ALL
    SELECT 9 AS nid, -78.183517 AS "E"
    UNION ALL
    SELECT 10 AS nid, 77.885040 AS "E"
    UNION ALL
    SELECT 11 AS nid, 24.972820 AS "E"
    UNION ALL
    SELECT 12 AS nid, 153.473907 AS "E"
    UNION ALL
    SELECT 13 AS nid, -33.004288 AS "E"
    UNION ALL
    SELECT 14 AS nid, 92.474426 AS "E"
    UNION ALL
    SELECT 15 AS nid, 45.290535 AS "E"
    UNION ALL
    SELECT 16 AS nid, -157.886566 AS "E"
    UNION ALL
    SELECT 17 AS nid, 103.492889 AS "E"
    UNION ALL
    SELECT 18 AS nid, 220.115311 AS "E"
    UNION ALL
    SELECT 19 AS nid, -128.939392 AS "E"
    UNION ALL
    SELECT 20 AS nid, -1.514124 AS "E"
    UNION ALL
    SELECT 21 AS nid, -229.399780 AS "E"
    UNION ALL
    SELECT 22 AS nid, -98.496872 AS "E"
    UNION ALL
    SELECT 23 AS nid, 91.892197 AS "E"
    UNION ALL
    SELECT 24 AS nid, 202.798737 AS "E"
    UNION ALL
    SELECT 25 AS nid, 142.963242 AS "E"
    UNION ALL
    SELECT 26 AS nid, 259.484863 AS "E"
    UNION ALL
    SELECT 27 AS nid, 61.431606 AS "E"
    UNION ALL
    SELECT 28 AS nid, 188.120102 AS "E"
    UNION ALL
    SELECT 29 AS nid, 29.532047 AS "E"
    UNION ALL
    SELECT 30 AS nid, 137.310104 AS "E"
    UNION ALL
    SELECT 31 AS nid, -129.901733 AS "E"
    UNION ALL
    SELECT 32 AS nid, -28.081514 AS "E"
    UNION ALL
    SELECT 33 AS nid, -155.810104 AS "E"
    UNION ALL
    SELECT 34 AS nid, -21.950117 AS "E"
    UNION ALL
    SELECT 35 AS nid, 223.765030 AS "E"
    UNION ALL
    SELECT 36 AS nid, 330.924438 AS "E"
    UNION ALL
    SELECT 37 AS nid, 289.772034 AS "E"
    UNION ALL
    SELECT 38 AS nid, 420.088013 AS "E"
    UNION ALL
    SELECT 39 AS nid, 193.381927 AS "E"
    UNION ALL
    SELECT 40 AS nid, 321.666229 AS "E"
    UNION ALL
    SELECT 41 AS nid, -41.196613 AS "E"
    UNION ALL
    SELECT 42 AS nid, 62.771507 AS "E"
    UNION ALL
    SELECT 43 AS nid, 128.760666 AS "E"
    UNION ALL
    SELECT 44 AS nid, 229.215027 AS "E"
    UNION ALL
    SELECT 45 AS nid, 26.574970 AS "E"
    UNION ALL
    SELECT 46 AS nid, 157.956573 AS "E"
    UNION ALL
    SELECT 47 AS nid, -181.964630 AS "E"
    UNION ALL
    SELECT 48 AS nid, -82.230431 AS "E"
    UNION ALL
    SELECT 49 AS nid, -231.226913 AS "E"
    UNION ALL
    SELECT 50 AS nid, -87.134750 AS "E"
    UNION ALL
    SELECT 51 AS nid, -328.526947 AS "E"
    UNION ALL
    SELECT 52 AS nid, -189.784286 AS "E"
    UNION ALL
    SELECT 53 AS nid, -206.536942 AS "E"
    UNION ALL
    SELECT 54 AS nid, -66.063789 AS "E"
    UNION ALL
    SELECT 55 AS nid, -295.937256 AS "E"
    UNION ALL
    SELECT 56 AS nid, -161.836792 AS "E"
    UNION ALL
    SELECT 57 AS nid, -179.868500 AS "E"
    UNION ALL
    SELECT 58 AS nid, -56.565552 AS "E"
    UNION ALL
    SELECT 59 AS nid, -289.527679 AS "E"
    UNION ALL
    SELECT 60 AS nid, -389.192505 AS "E"
    UNION ALL
    SELECT 61 AS nid, 200.739075 AS "E"
    UNION ALL
    SELECT 62 AS nid, 306.506927 AS "E"
  ) AS "Values"
 ),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   "DT_Output"."E" AS "Estimator"
FROM "DT_Output"