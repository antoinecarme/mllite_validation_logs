WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 0.325120) THEN CASE WHEN (model_input."X_6" <= 0.121476) THEN CASE WHEN (model_input."X_0" <= -0.849660) THEN CASE WHEN (model_input."X_2" <= 0.624526) THEN CASE WHEN (model_input."X_6" <= -0.864794) THEN CASE WHEN (model_input."X_4" <= 0.359626) THEN 65 ELSE 66 END ELSE 58 END ELSE CASE WHEN (model_input."X_1" <= -0.785461) THEN CASE WHEN (model_input."X_8" <= -0.087330) THEN 61 ELSE 62 END ELSE CASE WHEN (model_input."X_2" <= 1.816912) THEN 79 ELSE CASE WHEN (model_input."X_2" <= 2.468381) THEN 81 ELSE 82 END END END END ELSE CASE WHEN (model_input."X_6" <= -1.195889) THEN CASE WHEN (model_input."X_2" <= -0.659452) THEN CASE WHEN (model_input."X_5" <= -0.350799) THEN CASE WHEN (model_input."X_3" <= -0.542218) THEN 103 ELSE 104 END ELSE CASE WHEN (model_input."X_7" <= 0.264802) THEN 105 ELSE 106 END END ELSE 100 END ELSE CASE WHEN (model_input."X_2" <= -0.801243) THEN 83 ELSE 84 END END END ELSE CASE WHEN (model_input."X_2" <= 0.247674) THEN CASE WHEN (model_input."X_0" <= -1.025180) THEN CASE WHEN (model_input."X_2" <= -1.006902) THEN CASE WHEN (model_input."X_1" <= 0.612883) THEN CASE WHEN (model_input."X_2" <= -1.192168) THEN 109 ELSE CASE WHEN (model_input."X_2" <= -1.097147) THEN 115 ELSE 116 END END ELSE 108 END ELSE CASE WHEN (model_input."X_1" <= -0.002590) THEN 119 ELSE CASE WHEN (model_input."X_6" <= 0.301384) THEN 121 ELSE 122 END END END ELSE CASE WHEN (model_input."X_1" <= 0.453409) THEN CASE WHEN (model_input."X_6" <= 1.842848) THEN 71 ELSE CASE WHEN (model_input."X_2" <= -0.754314) THEN 73 ELSE CASE WHEN (model_input."X_1" <= -0.025760) THEN 75 ELSE 76 END END END ELSE CASE WHEN (model_input."X_6" <= 0.594654) THEN CASE WHEN (model_input."X_7" <= -0.004709) THEN 117 ELSE 118 END ELSE 92 END END END ELSE CASE WHEN (model_input."X_0" <= -0.612182) THEN CASE WHEN (model_input."X_5" <= 0.891539) THEN CASE WHEN (model_input."X_6" <= 0.903949) THEN 125 ELSE 126 END ELSE CASE WHEN (model_input."X_0" <= -1.058014) THEN 113 ELSE 114 END END ELSE CASE WHEN (model_input."X_6" <= 2.590928) THEN 95 ELSE CASE WHEN (model_input."X_5" <= 0.028292) THEN 97 ELSE 98 END END END END END ELSE CASE WHEN (model_input."X_6" <= -0.723972) THEN CASE WHEN (model_input."X_2" <= 1.103903) THEN CASE WHEN (model_input."X_0" <= 1.397489) THEN CASE WHEN (model_input."X_6" <= -1.315600) THEN CASE WHEN (model_input."X_1" <= 0.355366) THEN CASE WHEN (model_input."X_5" <= 1.198409) THEN 77 ELSE 78 END ELSE 34 END ELSE 32 END ELSE CASE WHEN (model_input."X_0" <= 1.903440) THEN CASE WHEN (model_input."X_0" <= 1.747582) THEN CASE WHEN (model_input."X_1" <= 0.971048) THEN 45 ELSE 46 END ELSE 16 END ELSE CASE WHEN (model_input."X_6" <= -1.142159) THEN 17 ELSE 18 END END END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.349259) THEN CASE WHEN (model_input."X_0" <= 1.320247) THEN 27 ELSE CASE WHEN (model_input."X_1" <= 0.028239) THEN CASE WHEN (model_input."X_8" <= -0.009986) THEN 49 ELSE CASE WHEN (model_input."X_6" <= 1.896726) THEN 51 ELSE 52 END END ELSE CASE WHEN (model_input."X_6" <= 0.804064) THEN 67 ELSE CASE WHEN (model_input."X_7" <= 0.044396) THEN 69 ELSE 70 END END END END ELSE CASE WHEN (model_input."X_6" <= 0.316310) THEN 25 ELSE CASE WHEN (model_input."X_8" <= 0.479645) THEN CASE WHEN (model_input."X_2" <= 1.432359) THEN CASE WHEN (model_input."X_0" <= 0.518342) THEN CASE WHEN (model_input."X_1" <= 0.027831) THEN 87 ELSE 88 END ELSE CASE WHEN (model_input."X_8" <= -1.598587) THEN 123 ELSE 124 END END ELSE CASE WHEN (model_input."X_9" <= 0.064972) THEN CASE WHEN (model_input."X_3" <= -0.205094) THEN 89 ELSE 90 END ELSE 42 END END ELSE CASE WHEN (model_input."X_7" <= 0.435801) THEN CASE WHEN (model_input."X_6" <= 2.225389) THEN 93 ELSE 94 END ELSE 38 END END END END END END AS node_id
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
    SELECT 37 AS nid, 289.772064 AS "E"
    UNION ALL
    SELECT 38 AS nid, 420.088013 AS "E"
    UNION ALL
    SELECT 39 AS nid, 193.381943 AS "E"
    UNION ALL
    SELECT 40 AS nid, 321.666199 AS "E"
    UNION ALL
    SELECT 41 AS nid, 370.935547 AS "E"
    UNION ALL
    SELECT 42 AS nid, 260.079559 AS "E"
    UNION ALL
    SELECT 43 AS nid, -41.196613 AS "E"
    UNION ALL
    SELECT 44 AS nid, 62.771507 AS "E"
    UNION ALL
    SELECT 45 AS nid, 27.527328 AS "E"
    UNION ALL
    SELECT 46 AS nid, 187.396164 AS "E"
    UNION ALL
    SELECT 47 AS nid, 128.760666 AS "E"
    UNION ALL
    SELECT 48 AS nid, 229.215027 AS "E"
    UNION ALL
    SELECT 49 AS nid, 26.574970 AS "E"
    UNION ALL
    SELECT 50 AS nid, 157.956573 AS "E"
    UNION ALL
    SELECT 51 AS nid, 144.321472 AS "E"
    UNION ALL
    SELECT 52 AS nid, 335.212830 AS "E"
    UNION ALL
    SELECT 53 AS nid, -181.964630 AS "E"
    UNION ALL
    SELECT 54 AS nid, -82.230431 AS "E"
    UNION ALL
    SELECT 55 AS nid, -231.226913 AS "E"
    UNION ALL
    SELECT 56 AS nid, -87.134750 AS "E"
    UNION ALL
    SELECT 57 AS nid, -328.526947 AS "E"
    UNION ALL
    SELECT 58 AS nid, -189.784286 AS "E"
    UNION ALL
    SELECT 59 AS nid, -206.536942 AS "E"
    UNION ALL
    SELECT 60 AS nid, -66.063789 AS "E"
    UNION ALL
    SELECT 61 AS nid, -295.937256 AS "E"
    UNION ALL
    SELECT 62 AS nid, -161.836792 AS "E"
    UNION ALL
    SELECT 63 AS nid, -179.868500 AS "E"
    UNION ALL
    SELECT 64 AS nid, -56.565552 AS "E"
    UNION ALL
    SELECT 65 AS nid, -289.527679 AS "E"
    UNION ALL
    SELECT 66 AS nid, -389.192505 AS "E"
    UNION ALL
    SELECT 67 AS nid, 200.739075 AS "E"
    UNION ALL
    SELECT 68 AS nid, 306.506927 AS "E"
    UNION ALL
    SELECT 69 AS nid, 229.882629 AS "E"
    UNION ALL
    SELECT 70 AS nid, 337.156677 AS "E"
    UNION ALL
    SELECT 71 AS nid, -54.432384 AS "E"
    UNION ALL
    SELECT 72 AS nid, 124.250526 AS "E"
    UNION ALL
    SELECT 73 AS nid, 34.846703 AS "E"
    UNION ALL
    SELECT 74 AS nid, 168.952454 AS "E"
    UNION ALL
    SELECT 75 AS nid, 138.117096 AS "E"
    UNION ALL
    SELECT 76 AS nid, 261.458496 AS "E"
    UNION ALL
    SELECT 77 AS nid, -176.198776 AS "E"
    UNION ALL
    SELECT 78 AS nid, -48.769573 AS "E"
    UNION ALL
    SELECT 79 AS nid, -87.396225 AS "E"
    UNION ALL
    SELECT 80 AS nid, 33.487637 AS "E"
    UNION ALL
    SELECT 81 AS nid, 59.810600 AS "E"
    UNION ALL
    SELECT 82 AS nid, -98.127182 AS "E"
    UNION ALL
    SELECT 83 AS nid, -146.533752 AS "E"
    UNION ALL
    SELECT 84 AS nid, -33.264465 AS "E"
    UNION ALL
    SELECT 85 AS nid, 119.280182 AS "E"
    UNION ALL
    SELECT 86 AS nid, 221.611191 AS "E"
    UNION ALL
    SELECT 87 AS nid, 69.807877 AS "E"
    UNION ALL
    SELECT 88 AS nid, 168.752472 AS "E"
    UNION ALL
    SELECT 89 AS nid, 462.066864 AS "E"
    UNION ALL
    SELECT 90 AS nid, 348.152710 AS "E"
    UNION ALL
    SELECT 91 AS nid, 5.259697 AS "E"
    UNION ALL
    SELECT 92 AS nid, 98.020683 AS "E"
    UNION ALL
    SELECT 93 AS nid, 276.924042 AS "E"
    UNION ALL
    SELECT 94 AS nid, 443.948181 AS "E"
    UNION ALL
    SELECT 95 AS nid, 129.958862 AS "E"
    UNION ALL
    SELECT 96 AS nid, 398.279602 AS "E"
    UNION ALL
    SELECT 97 AS nid, 487.341522 AS "E"
    UNION ALL
    SELECT 98 AS nid, 309.217712 AS "E"
    UNION ALL
    SELECT 99 AS nid, -239.628952 AS "E"
    UNION ALL
    SELECT 100 AS nid, -147.996262 AS "E"
    UNION ALL
    SELECT 101 AS nid, -321.482269 AS "E"
    UNION ALL
    SELECT 102 AS nid, -190.516983 AS "E"
    UNION ALL
    SELECT 103 AS nid, -441.539398 AS "E"
    UNION ALL
    SELECT 104 AS nid, -297.470856 AS "E"
    UNION ALL
    SELECT 105 AS nid, -226.985703 AS "E"
    UNION ALL
    SELECT 106 AS nid, -135.813904 AS "E"
    UNION ALL
    SELECT 107 AS nid, -251.080658 AS "E"
    UNION ALL
    SELECT 108 AS nid, -142.676254 AS "E"
    UNION ALL
    SELECT 109 AS nid, -294.004730 AS "E"
    UNION ALL
    SELECT 110 AS nid, -179.540543 AS "E"
    UNION ALL
    SELECT 111 AS nid, 11.115959 AS "E"
    UNION ALL
    SELECT 112 AS nid, 130.820557 AS "E"
    UNION ALL
    SELECT 113 AS nid, 68.514473 AS "E"
    UNION ALL
    SELECT 114 AS nid, 193.126648 AS "E"
    UNION ALL
    SELECT 115 AS nid, -119.084419 AS "E"
    UNION ALL
    SELECT 116 AS nid, -209.768616 AS "E"
    UNION ALL
    SELECT 117 AS nid, -39.673038 AS "E"
    UNION ALL
    SELECT 118 AS nid, 45.699158 AS "E"
    UNION ALL
    SELECT 119 AS nid, -145.182236 AS "E"
    UNION ALL
    SELECT 120 AS nid, -59.592365 AS "E"
    UNION ALL
    SELECT 121 AS nid, -185.760040 AS "E"
    UNION ALL
    SELECT 122 AS nid, -43.821411 AS "E"
    UNION ALL
    SELECT 123 AS nid, 410.605011 AS "E"
    UNION ALL
    SELECT 124 AS nid, 212.161499 AS "E"
    UNION ALL
    SELECT 125 AS nid, -20.743790 AS "E"
    UNION ALL
    SELECT 126 AS nid, 66.870522 AS "E"
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