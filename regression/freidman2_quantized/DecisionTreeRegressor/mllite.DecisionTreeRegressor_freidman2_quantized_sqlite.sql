WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 5.500000) THEN 99 ELSE CASE WHEN (model_input."X_2" <= 0.500000) THEN 101 ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN 103 ELSE 104 END END END ELSE CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN 109 ELSE CASE WHEN (model_input."X_0" <= 3.500000) THEN 121 ELSE 122 END END ELSE CASE WHEN (model_input."X_0" <= 4.000000) THEN 93 ELSE 94 END END END ELSE CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN CASE WHEN (model_input."X_2" <= 7.500000) THEN 87 ELSE CASE WHEN (model_input."X_0" <= 3.000000) THEN 89 ELSE 90 END END ELSE CASE WHEN (model_input."X_2" <= 6.500000) THEN 59 ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN 111 ELSE 112 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 83 ELSE 84 END END END END ELSE CASE WHEN (model_input."X_3" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 5.500000) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 6.000000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN 125 ELSE 126 END ELSE CASE WHEN (model_input."X_0" <= 3.500000) THEN 75 ELSE 76 END END ELSE CASE WHEN (model_input."X_0" <= 8.000000) THEN CASE WHEN (model_input."X_3" <= 6.000000) THEN CASE WHEN (model_input."X_3" <= 1.500000) THEN 63 ELSE 64 END ELSE 62 END ELSE CASE WHEN (model_input."X_3" <= 5.500000) THEN 49 ELSE 50 END END END END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_1" <= 7.500000) THEN 107 ELSE CASE WHEN (model_input."X_0" <= 5.500000) THEN 123 ELSE 124 END END ELSE CASE WHEN (model_input."X_0" <= 4.500000) THEN 85 ELSE 86 END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN 95 ELSE CASE WHEN (model_input."X_1" <= 6.500000) THEN 113 ELSE 114 END END ELSE CASE WHEN (model_input."X_1" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 5.500000) THEN 105 ELSE 106 END ELSE 36 END END ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 0.500000) THEN CASE WHEN (model_input."X_1" <= 8.500000) THEN 53 ELSE 54 END ELSE 52 END ELSE CASE WHEN (model_input."X_0" <= 0.500000) THEN 119 ELSE 120 END END END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 6.000000) THEN CASE WHEN (model_input."X_2" <= 8.000000) THEN CASE WHEN (model_input."X_3" <= 2.000000) THEN CASE WHEN (model_input."X_1" <= 6.500000) THEN 117 ELSE 118 END ELSE CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN 115 ELSE 116 END ELSE CASE WHEN (model_input."X_2" <= 6.500000) THEN 91 ELSE 92 END END END ELSE 38 END ELSE CASE WHEN (model_input."X_0" <= 6.500000) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 8.500000) THEN CASE WHEN (model_input."X_3" <= 5.000000) THEN 27 ELSE 28 END ELSE 26 END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_1" <= 8.500000) THEN 67 ELSE 68 END ELSE 66 END END ELSE CASE WHEN (model_input."X_3" <= 2.500000) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 5.000000) THEN 97 ELSE 98 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 441.435455 AS "E"
    UNION ALL
    SELECT 1 AS nid, 249.000427 AS "E"
    UNION ALL
    SELECT 2 AS nid, 633.870178 AS "E"
    UNION ALL
    SELECT 3 AS nid, 371.088440 AS "E"
    UNION ALL
    SELECT 4 AS nid, 942.353088 AS "E"
    UNION ALL
    SELECT 5 AS nid, 740.801819 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1204.369873 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1066.676392 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1525.654663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 134.555862 AS "E"
    UNION ALL
    SELECT 10 AS nid, 470.681122 AS "E"
    UNION ALL
    SELECT 11 AS nid, 960.343445 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1208.453491 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1374.632690 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1601.165527 AS "E"
    UNION ALL
    SELECT 15 AS nid, 114.036491 AS "E"
    UNION ALL
    SELECT 16 AS nid, 331.720276 AS "E"
    UNION ALL
    SELECT 17 AS nid, 242.206589 AS "E"
    UNION ALL
    SELECT 18 AS nid, 473.450287 AS "E"
    UNION ALL
    SELECT 19 AS nid, 373.291565 AS "E"
    UNION ALL
    SELECT 20 AS nid, 613.672485 AS "E"
    UNION ALL
    SELECT 21 AS nid, 671.331360 AS "E"
    UNION ALL
    SELECT 22 AS nid, 527.184021 AS "E"
    UNION ALL
    SELECT 23 AS nid, 784.215942 AS "E"
    UNION ALL
    SELECT 24 AS nid, 643.120239 AS "E"
    UNION ALL
    SELECT 25 AS nid, 900.404846 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1020.282043 AS "E"
    UNION ALL
    SELECT 27 AS nid, 825.887634 AS "E"
    UNION ALL
    SELECT 28 AS nid, 974.922058 AS "E"
    UNION ALL
    SELECT 29 AS nid, 414.266602 AS "E"
    UNION ALL
    SELECT 30 AS nid, 533.363892 AS "E"
    UNION ALL
    SELECT 31 AS nid, 496.724915 AS "E"
    UNION ALL
    SELECT 32 AS nid, 661.600220 AS "E"
    UNION ALL
    SELECT 33 AS nid, 364.415863 AS "E"
    UNION ALL
    SELECT 34 AS nid, 489.042633 AS "E"
    UNION ALL
    SELECT 35 AS nid, 455.307587 AS "E"
    UNION ALL
    SELECT 36 AS nid, 590.247803 AS "E"
    UNION ALL
    SELECT 37 AS nid, 753.330627 AS "E"
    UNION ALL
    SELECT 38 AS nid, 892.314575 AS "E"
    UNION ALL
    SELECT 39 AS nid, 101.316460 AS "E"
    UNION ALL
    SELECT 40 AS nid, 234.274078 AS "E"
    UNION ALL
    SELECT 41 AS nid, 205.840546 AS "E"
    UNION ALL
    SELECT 42 AS nid, 320.999756 AS "E"
    UNION ALL
    SELECT 43 AS nid, 264.085358 AS "E"
    UNION ALL
    SELECT 44 AS nid, 434.828552 AS "E"
    UNION ALL
    SELECT 45 AS nid, 385.108765 AS "E"
    UNION ALL
    SELECT 46 AS nid, 484.548340 AS "E"
    UNION ALL
    SELECT 47 AS nid, 615.836182 AS "E"
    UNION ALL
    SELECT 48 AS nid, 724.972351 AS "E"
    UNION ALL
    SELECT 49 AS nid, 481.196167 AS "E"
    UNION ALL
    SELECT 50 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 51 AS nid, 564.339233 AS "E"
    UNION ALL
    SELECT 52 AS nid, 469.679199 AS "E"
    UNION ALL
    SELECT 53 AS nid, 481.879089 AS "E"
    UNION ALL
    SELECT 54 AS nid, 646.799377 AS "E"
    UNION ALL
    SELECT 55 AS nid, 241.485184 AS "E"
    UNION ALL
    SELECT 56 AS nid, 331.885864 AS "E"
    UNION ALL
    SELECT 57 AS nid, 164.355225 AS "E"
    UNION ALL
    SELECT 58 AS nid, 241.399384 AS "E"
    UNION ALL
    SELECT 59 AS nid, 163.000275 AS "E"
    UNION ALL
    SELECT 60 AS nid, 272.759003 AS "E"
    UNION ALL
    SELECT 61 AS nid, 697.837158 AS "E"
    UNION ALL
    SELECT 62 AS nid, 618.319824 AS "E"
    UNION ALL
    SELECT 63 AS nid, 643.998474 AS "E"
    UNION ALL
    SELECT 64 AS nid, 751.675842 AS "E"
    UNION ALL
    SELECT 65 AS nid, 1186.468018 AS "E"
    UNION ALL
    SELECT 66 AS nid, 1252.424316 AS "E"
    UNION ALL
    SELECT 67 AS nid, 1158.447266 AS "E"
    UNION ALL
    SELECT 68 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 69 AS nid, 93.262383 AS "E"
    UNION ALL
    SELECT 70 AS nid, 149.649246 AS "E"
    UNION ALL
    SELECT 71 AS nid, 130.971313 AS "E"
    UNION ALL
    SELECT 72 AS nid, 196.344055 AS "E"
    UNION ALL
    SELECT 73 AS nid, 356.356628 AS "E"
    UNION ALL
    SELECT 74 AS nid, 415.628906 AS "E"
    UNION ALL
    SELECT 75 AS nid, 384.718445 AS "E"
    UNION ALL
    SELECT 76 AS nid, 446.539368 AS "E"
    UNION ALL
    SELECT 77 AS nid, 723.531982 AS "E"
    UNION ALL
    SELECT 78 AS nid, 775.679626 AS "E"
    UNION ALL
    SELECT 79 AS nid, 800.537842 AS "E"
    UNION ALL
    SELECT 80 AS nid, 750.821350 AS "E"
    UNION ALL
    SELECT 81 AS nid, 244.704834 AS "E"
    UNION ALL
    SELECT 82 AS nid, 291.461792 AS "E"
    UNION ALL
    SELECT 83 AS nid, 340.071777 AS "E"
    UNION ALL
    SELECT 84 AS nid, 267.156799 AS "E"
    UNION ALL
    SELECT 85 AS nid, 211.673523 AS "E"
    UNION ALL
    SELECT 86 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 87 AS nid, 143.110428 AS "E"
    UNION ALL
    SELECT 88 AS nid, 185.600021 AS "E"
    UNION ALL
    SELECT 89 AS nid, 154.460083 AS "E"
    UNION ALL
    SELECT 90 AS nid, 201.169983 AS "E"
    UNION ALL
    SELECT 91 AS nid, 771.385681 AS "E"
    UNION ALL
    SELECT 92 AS nid, 730.257019 AS "E"
    UNION ALL
    SELECT 93 AS nid, 176.877380 AS "E"
    UNION ALL
    SELECT 94 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 95 AS nid, 350.989197 AS "E"
    UNION ALL
    SELECT 96 AS nid, 391.269226 AS "E"
    UNION ALL
    SELECT 97 AS nid, 1582.765259 AS "E"
    UNION ALL
    SELECT 98 AS nid, 1619.565796 AS "E"
    UNION ALL
    SELECT 99 AS nid, 78.563095 AS "E"
    UNION ALL
    SELECT 100 AS nid, 113.841385 AS "E"
    UNION ALL
    SELECT 101 AS nid, 77.228577 AS "E"
    UNION ALL
    SELECT 102 AS nid, 122.994583 AS "E"
    UNION ALL
    SELECT 103 AS nid, 105.523254 AS "E"
    UNION ALL
    SELECT 104 AS nid, 140.465912 AS "E"
    UNION ALL
    SELECT 105 AS nid, 431.461823 AS "E"
    UNION ALL
    SELECT 106 AS nid, 467.230469 AS "E"
    UNION ALL
    SELECT 107 AS nid, 89.578186 AS "E"
    UNION ALL
    SELECT 108 AS nid, 124.793007 AS "E"
    UNION ALL
    SELECT 109 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 110 AS nid, 139.240982 AS "E"
    UNION ALL
    SELECT 111 AS nid, 228.861908 AS "E"
    UNION ALL
    SELECT 112 AS nid, 260.547760 AS "E"
    UNION ALL
    SELECT 113 AS nid, 376.313873 AS "E"
    UNION ALL
    SELECT 114 AS nid, 406.224579 AS "E"
    UNION ALL
    SELECT 115 AS nid, 786.044189 AS "E"
    UNION ALL
    SELECT 116 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 117 AS nid, 713.369080 AS "E"
    UNION ALL
    SELECT 118 AS nid, 743.857788 AS "E"
    UNION ALL
    SELECT 119 AS nid, 647.941467 AS "E"
    UNION ALL
    SELECT 120 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 121 AS nid, 125.626236 AS "E"
    UNION ALL
    SELECT 122 AS nid, 152.855743 AS "E"
    UNION ALL
    SELECT 123 AS nid, 137.692978 AS "E"
    UNION ALL
    SELECT 124 AS nid, 111.893036 AS "E"
    UNION ALL
    SELECT 125 AS nid, 346.710541 AS "E"
    UNION ALL
    SELECT 126 AS nid, 370.825806 AS "E"
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