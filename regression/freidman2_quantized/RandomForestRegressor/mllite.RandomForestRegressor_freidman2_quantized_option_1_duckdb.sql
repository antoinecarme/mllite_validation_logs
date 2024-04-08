WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_quantized" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 2.500000) THEN CASE WHEN (model_input."X_1" <= 8.500000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 3.000000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN 59 ELSE 60 END ELSE CASE WHEN (model_input."X_3" <= 6.000000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_1" <= 6.500000) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_1" <= 5.000000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN 39 ELSE 40 END ELSE 26 END END ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN CASE WHEN (model_input."X_3" <= 6.500000) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_3" <= 7.000000) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN 37 ELSE CASE WHEN (model_input."X_3" <= 5.000000) THEN 51 ELSE 52 END END ELSE 22 END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_1" <= 5.500000) THEN CASE WHEN (model_input."X_3" <= 7.500000) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_3" <= 7.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_3" <= 2.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= 7.000000) THEN CASE WHEN (model_input."X_3" <= 6.000000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_0" <= 4.500000) THEN 61 ELSE 62 END END ELSE CASE WHEN (model_input."X_2" <= 6.500000) THEN 9 ELSE 10 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 419.404419 AS "E"
    UNION ALL
    SELECT 1 AS nid, 181.097244 AS "E"
    UNION ALL
    SELECT 2 AS nid, 521.536072 AS "E"
    UNION ALL
    SELECT 3 AS nid, 254.867310 AS "E"
    UNION ALL
    SELECT 4 AS nid, 660.667480 AS "E"
    UNION ALL
    SELECT 5 AS nid, 474.721130 AS "E"
    UNION ALL
    SELECT 6 AS nid, 780.204590 AS "E"
    UNION ALL
    SELECT 7 AS nid, 661.174622 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1031.489990 AS "E"
    UNION ALL
    SELECT 9 AS nid, 881.628906 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1331.212280 AS "E"
    UNION ALL
    SELECT 11 AS nid, 400.485077 AS "E"
    UNION ALL
    SELECT 12 AS nid, 567.516174 AS "E"
    UNION ALL
    SELECT 13 AS nid, 196.535110 AS "E"
    UNION ALL
    SELECT 14 AS nid, 371.531677 AS "E"
    UNION ALL
    SELECT 15 AS nid, 160.794083 AS "E"
    UNION ALL
    SELECT 16 AS nid, 465.341675 AS "E"
    UNION ALL
    SELECT 17 AS nid, 780.121338 AS "E"
    UNION ALL
    SELECT 18 AS nid, 618.693542 AS "E"
    UNION ALL
    SELECT 19 AS nid, 513.797546 AS "E"
    UNION ALL
    SELECT 20 AS nid, 657.047302 AS "E"
    UNION ALL
    SELECT 21 AS nid, 334.418182 AS "E"
    UNION ALL
    SELECT 22 AS nid, 482.872253 AS "E"
    UNION ALL
    SELECT 23 AS nid, 129.736343 AS "E"
    UNION ALL
    SELECT 24 AS nid, 226.360428 AS "E"
    UNION ALL
    SELECT 25 AS nid, 191.496124 AS "E"
    UNION ALL
    SELECT 26 AS nid, 348.385529 AS "E"
    UNION ALL
    SELECT 27 AS nid, 157.193924 AS "E"
    UNION ALL
    SELECT 28 AS nid, 220.139816 AS "E"
    UNION ALL
    SELECT 29 AS nid, 178.753906 AS "E"
    UNION ALL
    SELECT 30 AS nid, 282.218719 AS "E"
    UNION ALL
    SELECT 31 AS nid, 85.309181 AS "E"
    UNION ALL
    SELECT 32 AS nid, 150.241180 AS "E"
    UNION ALL
    SELECT 33 AS nid, 119.681503 AS "E"
    UNION ALL
    SELECT 34 AS nid, 219.000473 AS "E"
    UNION ALL
    SELECT 35 AS nid, 181.126297 AS "E"
    UNION ALL
    SELECT 36 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 37 AS nid, 293.652832 AS "E"
    UNION ALL
    SELECT 38 AS nid, 354.800842 AS "E"
    UNION ALL
    SELECT 39 AS nid, 159.076691 AS "E"
    UNION ALL
    SELECT 40 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 41 AS nid, 758.245789 AS "E"
    UNION ALL
    SELECT 42 AS nid, 812.934692 AS "E"
    UNION ALL
    SELECT 43 AS nid, 204.555557 AS "E"
    UNION ALL
    SELECT 44 AS nid, 152.952225 AS "E"
    UNION ALL
    SELECT 45 AS nid, 378.283142 AS "E"
    UNION ALL
    SELECT 46 AS nid, 422.687012 AS "E"
    UNION ALL
    SELECT 47 AS nid, 467.230469 AS "E"
    UNION ALL
    SELECT 48 AS nid, 392.991364 AS "E"
    UNION ALL
    SELECT 49 AS nid, 303.889648 AS "E"
    UNION ALL
    SELECT 50 AS nid, 260.547760 AS "E"
    UNION ALL
    SELECT 51 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 52 AS nid, 374.082367 AS "E"
    UNION ALL
    SELECT 53 AS nid, 103.123215 AS "E"
    UNION ALL
    SELECT 54 AS nid, 140.379333 AS "E"
    UNION ALL
    SELECT 55 AS nid, 365.314606 AS "E"
    UNION ALL
    SELECT 56 AS nid, 397.735962 AS "E"
    UNION ALL
    SELECT 57 AS nid, 138.747253 AS "E"
    UNION ALL
    SELECT 58 AS nid, 166.417252 AS "E"
    UNION ALL
    SELECT 59 AS nid, 68.602699 AS "E"
    UNION ALL
    SELECT 60 AS nid, 93.662430 AS "E"
    UNION ALL
    SELECT 61 AS nid, 630.920105 AS "E"
    UNION ALL
    SELECT 62 AS nid, 613.803040 AS "E"
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
    CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_1" <= 5.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_3" <= 0.500000) THEN 47 ELSE CASE WHEN (model_input."X_0" <= 7.000000) THEN 53 ELSE 54 END END ELSE CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_0" <= 4.000000) THEN 51 ELSE 52 END ELSE 44 END END ELSE CASE WHEN (model_input."X_2" <= 0.500000) THEN 25 ELSE CASE WHEN (model_input."X_2" <= 1.500000) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_0" <= 4.500000) THEN 15 ELSE CASE WHEN (model_input."X_2" <= 2.500000) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN CASE WHEN (model_input."X_2" <= 8.500000) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_3" <= 2.000000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_2" <= 6.000000) THEN 37 ELSE 38 END END END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_1" <= 5.000000) THEN 29 ELSE CASE WHEN (model_input."X_0" <= 6.500000) THEN 49 ELSE 50 END END ELSE CASE WHEN (model_input."X_3" <= 5.500000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_1" <= 4.500000) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_2" <= 6.500000) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN 11 ELSE 12 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 442.150391 AS "E"
    UNION ALL
    SELECT 1 AS nid, 218.857651 AS "E"
    UNION ALL
    SELECT 2 AS nid, 584.911133 AS "E"
    UNION ALL
    SELECT 3 AS nid, 310.886749 AS "E"
    UNION ALL
    SELECT 4 AS nid, 739.488953 AS "E"
    UNION ALL
    SELECT 5 AS nid, 663.101624 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1088.688232 AS "E"
    UNION ALL
    SELECT 7 AS nid, 707.256836 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1374.761841 AS "E"
    UNION ALL
    SELECT 9 AS nid, 152.914124 AS "E"
    UNION ALL
    SELECT 10 AS nid, 474.389008 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1252.424316 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1497.099243 AS "E"
    UNION ALL
    SELECT 13 AS nid, 456.981567 AS "E"
    UNION ALL
    SELECT 14 AS nid, 731.808411 AS "E"
    UNION ALL
    SELECT 15 AS nid, 307.122009 AS "E"
    UNION ALL
    SELECT 16 AS nid, 530.144653 AS "E"
    UNION ALL
    SELECT 17 AS nid, 468.463348 AS "E"
    UNION ALL
    SELECT 18 AS nid, 591.825928 AS "E"
    UNION ALL
    SELECT 19 AS nid, 186.953308 AS "E"
    UNION ALL
    SELECT 20 AS nid, 338.427490 AS "E"
    UNION ALL
    SELECT 21 AS nid, 239.891403 AS "E"
    UNION ALL
    SELECT 22 AS nid, 376.325989 AS "E"
    UNION ALL
    SELECT 23 AS nid, 116.303276 AS "E"
    UNION ALL
    SELECT 24 AS nid, 242.407303 AS "E"
    UNION ALL
    SELECT 25 AS nid, 86.007874 AS "E"
    UNION ALL
    SELECT 26 AS nid, 320.606995 AS "E"
    UNION ALL
    SELECT 27 AS nid, 768.195496 AS "E"
    UNION ALL
    SELECT 28 AS nid, 643.439758 AS "E"
    UNION ALL
    SELECT 29 AS nid, 364.010071 AS "E"
    UNION ALL
    SELECT 30 AS nid, 487.972137 AS "E"
    UNION ALL
    SELECT 31 AS nid, 303.614288 AS "E"
    UNION ALL
    SELECT 32 AS nid, 408.642303 AS "E"
    UNION ALL
    SELECT 33 AS nid, 751.206482 AS "E"
    UNION ALL
    SELECT 34 AS nid, 895.612427 AS "E"
    UNION ALL
    SELECT 35 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 36 AS nid, 352.473175 AS "E"
    UNION ALL
    SELECT 37 AS nid, 348.592773 AS "E"
    UNION ALL
    SELECT 38 AS nid, 438.667084 AS "E"
    UNION ALL
    SELECT 39 AS nid, 340.071777 AS "E"
    UNION ALL
    SELECT 40 AS nid, 267.156799 AS "E"
    UNION ALL
    SELECT 41 AS nid, 93.237160 AS "E"
    UNION ALL
    SELECT 42 AS nid, 156.669006 AS "E"
    UNION ALL
    SELECT 43 AS nid, 104.000595 AS "E"
    UNION ALL
    SELECT 44 AS nid, 244.449661 AS "E"
    UNION ALL
    SELECT 45 AS nid, 595.745850 AS "E"
    UNION ALL
    SELECT 46 AS nid, 662.517273 AS "E"
    UNION ALL
    SELECT 47 AS nid, 150.176346 AS "E"
    UNION ALL
    SELECT 48 AS nid, 83.747276 AS "E"
    UNION ALL
    SELECT 49 AS nid, 507.281250 AS "E"
    UNION ALL
    SELECT 50 AS nid, 468.662933 AS "E"
    UNION ALL
    SELECT 51 AS nid, 125.626236 AS "E"
    UNION ALL
    SELECT 52 AS nid, 89.583496 AS "E"
    UNION ALL
    SELECT 53 AS nid, 78.789612 AS "E"
    UNION ALL
    SELECT 54 AS nid, 108.535683 AS "E"
    UNION ALL
    SELECT 55 AS nid, 246.139648 AS "E"
    UNION ALL
    SELECT 56 AS nid, 235.725906 AS "E"
    UNION ALL
    SELECT 57 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 58 AS nid, 182.893417 AS "E"
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
    CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN 61 ELSE 62 END ELSE CASE WHEN (model_input."X_3" <= 3.500000) THEN 59 ELSE 60 END END ELSE CASE WHEN (model_input."X_0" <= 6.500000) THEN 53 ELSE 54 END END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_3" <= 2.000000) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN CASE WHEN (model_input."X_3" <= 8.500000) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_0" <= 7.000000) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_0" <= 6.500000) THEN 49 ELSE 50 END ELSE 38 END END ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN 55 ELSE 56 END ELSE 30 END ELSE CASE WHEN (model_input."X_2" <= 2.500000) THEN CASE WHEN (model_input."X_1" <= 8.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_1" <= 8.500000) THEN CASE WHEN (model_input."X_1" <= 6.500000) THEN 31 ELSE 32 END ELSE 20 END END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 6.000000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN CASE WHEN (model_input."X_3" <= 2.000000) THEN 43 ELSE 44 END ELSE 36 END ELSE 34 END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN 9 ELSE 10 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 420.071198 AS "E"
    UNION ALL
    SELECT 1 AS nid, 238.479141 AS "E"
    UNION ALL
    SELECT 2 AS nid, 651.188171 AS "E"
    UNION ALL
    SELECT 3 AS nid, 407.168213 AS "E"
    UNION ALL
    SELECT 4 AS nid, 918.448120 AS "E"
    UNION ALL
    SELECT 5 AS nid, 746.409119 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1198.011475 AS "E"
    UNION ALL
    SELECT 7 AS nid, 127.313377 AS "E"
    UNION ALL
    SELECT 8 AS nid, 529.604736 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1091.935303 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1374.804810 AS "E"
    UNION ALL
    SELECT 11 AS nid, 160.937256 AS "E"
    UNION ALL
    SELECT 12 AS nid, 389.481781 AS "E"
    UNION ALL
    SELECT 13 AS nid, 311.975464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 680.130493 AS "E"
    UNION ALL
    SELECT 15 AS nid, 235.084930 AS "E"
    UNION ALL
    SELECT 16 AS nid, 427.311279 AS "E"
    UNION ALL
    SELECT 17 AS nid, 423.848389 AS "E"
    UNION ALL
    SELECT 18 AS nid, 577.675781 AS "E"
    UNION ALL
    SELECT 19 AS nid, 519.311462 AS "E"
    UNION ALL
    SELECT 20 AS nid, 647.713013 AS "E"
    UNION ALL
    SELECT 21 AS nid, 348.385529 AS "E"
    UNION ALL
    SELECT 22 AS nid, 474.156952 AS "E"
    UNION ALL
    SELECT 23 AS nid, 168.111298 AS "E"
    UNION ALL
    SELECT 24 AS nid, 288.663818 AS "E"
    UNION ALL
    SELECT 25 AS nid, 111.655380 AS "E"
    UNION ALL
    SELECT 26 AS nid, 225.619812 AS "E"
    UNION ALL
    SELECT 27 AS nid, 147.967545 AS "E"
    UNION ALL
    SELECT 28 AS nid, 325.458435 AS "E"
    UNION ALL
    SELECT 29 AS nid, 93.569336 AS "E"
    UNION ALL
    SELECT 30 AS nid, 211.673523 AS "E"
    UNION ALL
    SELECT 31 AS nid, 448.629913 AS "E"
    UNION ALL
    SELECT 32 AS nid, 554.652222 AS "E"
    UNION ALL
    SELECT 33 AS nid, 773.163940 AS "E"
    UNION ALL
    SELECT 34 AS nid, 657.226501 AS "E"
    UNION ALL
    SELECT 35 AS nid, 743.709106 AS "E"
    UNION ALL
    SELECT 36 AS nid, 841.891785 AS "E"
    UNION ALL
    SELECT 37 AS nid, 400.368835 AS "E"
    UNION ALL
    SELECT 38 AS nid, 481.196167 AS "E"
    UNION ALL
    SELECT 39 AS nid, 315.950348 AS "E"
    UNION ALL
    SELECT 40 AS nid, 247.733978 AS "E"
    UNION ALL
    SELECT 41 AS nid, 94.845558 AS "E"
    UNION ALL
    SELECT 42 AS nid, 165.446747 AS "E"
    UNION ALL
    SELECT 43 AS nid, 719.287048 AS "E"
    UNION ALL
    SELECT 44 AS nid, 776.271790 AS "E"
    UNION ALL
    SELECT 45 AS nid, 289.012756 AS "E"
    UNION ALL
    SELECT 46 AS nid, 340.036682 AS "E"
    UNION ALL
    SELECT 47 AS nid, 77.722672 AS "E"
    UNION ALL
    SELECT 48 AS nid, 111.968452 AS "E"
    UNION ALL
    SELECT 49 AS nid, 415.628906 AS "E"
    UNION ALL
    SELECT 50 AS nid, 385.108765 AS "E"
    UNION ALL
    SELECT 51 AS nid, 181.762527 AS "E"
    UNION ALL
    SELECT 52 AS nid, 154.460083 AS "E"
    UNION ALL
    SELECT 53 AS nid, 175.358521 AS "E"
    UNION ALL
    SELECT 54 AS nid, 150.579071 AS "E"
    UNION ALL
    SELECT 55 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 56 AS nid, 102.850288 AS "E"
    UNION ALL
    SELECT 57 AS nid, 138.674957 AS "E"
    UNION ALL
    SELECT 58 AS nid, 159.583298 AS "E"
    UNION ALL
    SELECT 59 AS nid, 122.228973 AS "E"
    UNION ALL
    SELECT 60 AS nid, 101.707916 AS "E"
    UNION ALL
    SELECT 61 AS nid, 67.559326 AS "E"
    UNION ALL
    SELECT 62 AS nid, 87.886032 AS "E"
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
    CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN 59 ELSE CASE WHEN (model_input."X_3" <= 6.500000) THEN 61 ELSE 62 END END ELSE CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_1" <= 8.500000) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_3" <= 4.000000) THEN 47 ELSE 48 END END END ELSE CASE WHEN (model_input."X_1" <= 3.000000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN 41 ELSE 42 END ELSE 24 END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 2.500000) THEN 31 ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN 51 ELSE 52 END END ELSE CASE WHEN (model_input."X_2" <= 2.500000) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 2.000000) THEN 29 ELSE 30 END END END END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN 27 ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN 55 ELSE 56 END END ELSE CASE WHEN (model_input."X_3" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 2.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 39 ELSE 40 END END END ELSE CASE WHEN (model_input."X_3" <= 5.000000) THEN CASE WHEN (model_input."X_3" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 6.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_3" <= 2.500000) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_1" <= 4.500000) THEN 33 ELSE 34 END END END ELSE CASE WHEN (model_input."X_2" <= 8.000000) THEN CASE WHEN (model_input."X_0" <= 6.000000) THEN 17 ELSE 18 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 457.495636 AS "E"
    UNION ALL
    SELECT 1 AS nid, 255.348206 AS "E"
    UNION ALL
    SELECT 2 AS nid, 659.642944 AS "E"
    UNION ALL
    SELECT 3 AS nid, 531.830688 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1241.898926 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1010.832520 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1530.732178 AS "E"
    UNION ALL
    SELECT 7 AS nid, 315.287354 AS "E"
    UNION ALL
    SELECT 8 AS nid, 718.845215 AS "E"
    UNION ALL
    SELECT 9 AS nid, 109.043922 AS "E"
    UNION ALL
    SELECT 10 AS nid, 370.301666 AS "E"
    UNION ALL
    SELECT 11 AS nid, 147.236542 AS "E"
    UNION ALL
    SELECT 12 AS nid, 444.656708 AS "E"
    UNION ALL
    SELECT 13 AS nid, 370.133331 AS "E"
    UNION ALL
    SELECT 14 AS nid, 565.757202 AS "E"
    UNION ALL
    SELECT 15 AS nid, 468.463348 AS "E"
    UNION ALL
    SELECT 16 AS nid, 624.133545 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1072.324707 AS "E"
    UNION ALL
    SELECT 18 AS nid, 918.594116 AS "E"
    UNION ALL
    SELECT 19 AS nid, 233.678818 AS "E"
    UNION ALL
    SELECT 20 AS nid, 374.638977 AS "E"
    UNION ALL
    SELECT 21 AS nid, 306.514679 AS "E"
    UNION ALL
    SELECT 22 AS nid, 456.388184 AS "E"
    UNION ALL
    SELECT 23 AS nid, 110.538490 AS "E"
    UNION ALL
    SELECT 24 AS nid, 238.981689 AS "E"
    UNION ALL
    SELECT 25 AS nid, 755.714600 AS "E"
    UNION ALL
    SELECT 26 AS nid, 639.839722 AS "E"
    UNION ALL
    SELECT 27 AS nid, 168.178024 AS "E"
    UNION ALL
    SELECT 28 AS nid, 272.979309 AS "E"
    UNION ALL
    SELECT 29 AS nid, 590.049927 AS "E"
    UNION ALL
    SELECT 30 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 31 AS nid, 296.475433 AS "E"
    UNION ALL
    SELECT 32 AS nid, 392.230713 AS "E"
    UNION ALL
    SELECT 33 AS nid, 607.032837 AS "E"
    UNION ALL
    SELECT 34 AS nid, 683.582092 AS "E"
    UNION ALL
    SELECT 35 AS nid, 710.834045 AS "E"
    UNION ALL
    SELECT 36 AS nid, 785.635010 AS "E"
    UNION ALL
    SELECT 37 AS nid, 889.016663 AS "E"
    UNION ALL
    SELECT 38 AS nid, 756.097351 AS "E"
    UNION ALL
    SELECT 39 AS nid, 415.824066 AS "E"
    UNION ALL
    SELECT 40 AS nid, 483.430939 AS "E"
    UNION ALL
    SELECT 41 AS nid, 84.113251 AS "E"
    UNION ALL
    SELECT 42 AS nid, 150.176346 AS "E"
    UNION ALL
    SELECT 43 AS nid, 81.326576 AS "E"
    UNION ALL
    SELECT 44 AS nid, 132.141708 AS "E"
    UNION ALL
    SELECT 45 AS nid, 108.237465 AS "E"
    UNION ALL
    SELECT 46 AS nid, 179.950165 AS "E"
    UNION ALL
    SELECT 47 AS nid, 125.626236 AS "E"
    UNION ALL
    SELECT 48 AS nid, 234.274078 AS "E"
    UNION ALL
    SELECT 49 AS nid, 735.967102 AS "E"
    UNION ALL
    SELECT 50 AS nid, 685.700989 AS "E"
    UNION ALL
    SELECT 51 AS nid, 372.093842 AS "E"
    UNION ALL
    SELECT 52 AS nid, 422.436005 AS "E"
    UNION ALL
    SELECT 53 AS nid, 289.189026 AS "E"
    UNION ALL
    SELECT 54 AS nid, 341.166046 AS "E"
    UNION ALL
    SELECT 55 AS nid, 244.704834 AS "E"
    UNION ALL
    SELECT 56 AS nid, 291.828949 AS "E"
    UNION ALL
    SELECT 57 AS nid, 90.564163 AS "E"
    UNION ALL
    SELECT 58 AS nid, 137.692978 AS "E"
    UNION ALL
    SELECT 59 AS nid, 60.661530 AS "E"
    UNION ALL
    SELECT 60 AS nid, 90.183022 AS "E"
    UNION ALL
    SELECT 61 AS nid, 87.099190 AS "E"
    UNION ALL
    SELECT 62 AS nid, 97.892578 AS "E"
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
    CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_0" <= 8.000000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN 57 ELSE 58 END ELSE 56 END ELSE CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 4.500000) THEN CASE WHEN (model_input."X_3" <= 6.500000) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_3" <= 4.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_3" <= 3.000000) THEN 39 ELSE 40 END END END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 4.000000) THEN 33 ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN 29 ELSE 30 END END ELSE CASE WHEN (model_input."X_2" <= 5.500000) THEN CASE WHEN (model_input."X_1" <= 5.500000) THEN CASE WHEN (model_input."X_3" <= 5.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 2.500000) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 31 ELSE 32 END END END END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 1.000000) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 3.000000) THEN CASE WHEN (model_input."X_3" <= 5.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN 59 ELSE 60 END ELSE 52 END ELSE 16 END END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 5.500000) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 9 ELSE 10 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 418.977631 AS "E"
    UNION ALL
    SELECT 1 AS nid, 315.076233 AS "E"
    UNION ALL
    SELECT 2 AS nid, 766.821411 AS "E"
    UNION ALL
    SELECT 3 AS nid, 454.303040 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1173.095337 AS "E"
    UNION ALL
    SELECT 5 AS nid, 989.727356 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1448.146851 AS "E"
    UNION ALL
    SELECT 7 AS nid, 129.093002 AS "E"
    UNION ALL
    SELECT 8 AS nid, 551.866089 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1313.528564 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1582.765259 AS "E"
    UNION ALL
    SELECT 11 AS nid, 114.149315 AS "E"
    UNION ALL
    SELECT 12 AS nid, 400.656189 AS "E"
    UNION ALL
    SELECT 13 AS nid, 189.616196 AS "E"
    UNION ALL
    SELECT 14 AS nid, 481.825531 AS "E"
    UNION ALL
    SELECT 15 AS nid, 474.156982 AS "E"
    UNION ALL
    SELECT 16 AS nid, 668.429626 AS "E"
    UNION ALL
    SELECT 17 AS nid, 402.954071 AS "E"
    UNION ALL
    SELECT 18 AS nid, 564.848022 AS "E"
    UNION ALL
    SELECT 19 AS nid, 421.710724 AS "E"
    UNION ALL
    SELECT 20 AS nid, 668.947815 AS "E"
    UNION ALL
    SELECT 21 AS nid, 345.995605 AS "E"
    UNION ALL
    SELECT 22 AS nid, 488.391785 AS "E"
    UNION ALL
    SELECT 23 AS nid, 411.127045 AS "E"
    UNION ALL
    SELECT 24 AS nid, 720.185913 AS "E"
    UNION ALL
    SELECT 25 AS nid, 331.885864 AS "E"
    UNION ALL
    SELECT 26 AS nid, 475.605652 AS "E"
    UNION ALL
    SELECT 27 AS nid, 142.647385 AS "E"
    UNION ALL
    SELECT 28 AS nid, 260.069397 AS "E"
    UNION ALL
    SELECT 29 AS nid, 204.555588 AS "E"
    UNION ALL
    SELECT 30 AS nid, 315.583221 AS "E"
    UNION ALL
    SELECT 31 AS nid, 737.099854 AS "E"
    UNION ALL
    SELECT 32 AS nid, 630.003784 AS "E"
    UNION ALL
    SELECT 33 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 34 AS nid, 162.341721 AS "E"
    UNION ALL
    SELECT 35 AS nid, 83.480736 AS "E"
    UNION ALL
    SELECT 36 AS nid, 130.505890 AS "E"
    UNION ALL
    SELECT 37 AS nid, 108.384323 AS "E"
    UNION ALL
    SELECT 38 AS nid, 174.748962 AS "E"
    UNION ALL
    SELECT 39 AS nid, 134.691574 AS "E"
    UNION ALL
    SELECT 40 AS nid, 201.453873 AS "E"
    UNION ALL
    SELECT 41 AS nid, 316.085876 AS "E"
    UNION ALL
    SELECT 42 AS nid, 360.950439 AS "E"
    UNION ALL
    SELECT 43 AS nid, 84.094681 AS "E"
    UNION ALL
    SELECT 44 AS nid, 124.577415 AS "E"
    UNION ALL
    SELECT 45 AS nid, 145.382401 AS "E"
    UNION ALL
    SELECT 46 AS nid, 184.954147 AS "E"
    UNION ALL
    SELECT 47 AS nid, 135.610703 AS "E"
    UNION ALL
    SELECT 48 AS nid, 102.510826 AS "E"
    UNION ALL
    SELECT 49 AS nid, 1004.532776 AS "E"
    UNION ALL
    SELECT 50 AS nid, 974.922058 AS "E"
    UNION ALL
    SELECT 51 AS nid, 465.341675 AS "E"
    UNION ALL
    SELECT 52 AS nid, 491.787506 AS "E"
    UNION ALL
    SELECT 53 AS nid, 77.669502 AS "E"
    UNION ALL
    SELECT 54 AS nid, 90.519867 AS "E"
    UNION ALL
    SELECT 55 AS nid, 78.680161 AS "E"
    UNION ALL
    SELECT 56 AS nid, 91.481682 AS "E"
    UNION ALL
    SELECT 57 AS nid, 77.228577 AS "E"
    UNION ALL
    SELECT 58 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 59 AS nid, 466.454956 AS "E"
    UNION ALL
    SELECT 60 AS nid, 464.228424 AS "E"
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
