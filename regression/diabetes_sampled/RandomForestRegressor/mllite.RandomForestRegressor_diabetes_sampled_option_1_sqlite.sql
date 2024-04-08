WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_9" <= 0.013420) THEN CASE WHEN (model_input."X_6" <= 0.021028) THEN CASE WHEN (model_input."X_1" <= 0.003019) THEN CASE WHEN (model_input."X_8" <= -0.063901) THEN CASE WHEN (model_input."X_9" <= -0.044570) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_5" <= 0.045502) THEN CASE WHEN (model_input."X_4" <= -0.027712) THEN 49 ELSE 50 END ELSE 36 END END ELSE CASE WHEN (model_input."X_8" <= -0.052420) THEN CASE WHEN (model_input."X_9" <= -0.052854) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_6" <= -0.001062) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_0" <= 0.019913) THEN 45 ELSE 46 END END END END ELSE CASE WHEN (model_input."X_0" <= 0.048974) THEN CASE WHEN (model_input."X_5" <= -0.081323) THEN 23 ELSE CASE WHEN (model_input."X_4" <= 0.014254) THEN CASE WHEN (model_input."X_3" <= -0.029770) THEN 39 ELSE 40 END ELSE 28 END END ELSE CASE WHEN (model_input."X_5" <= -0.020103) THEN CASE WHEN (model_input."X_5" <= -0.029497) THEN 53 ELSE 54 END ELSE 32 END END END ELSE CASE WHEN (model_input."X_2" <= 0.023973) THEN CASE WHEN (model_input."X_8" <= 0.030564) THEN CASE WHEN (model_input."X_9" <= 0.038272) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_4" <= 0.015630) THEN CASE WHEN (model_input."X_9" <= 0.069338) THEN 37 ELSE 38 END ELSE 8 END END ELSE CASE WHEN (model_input."X_5" <= -0.024957) THEN 13 ELSE CASE WHEN (model_input."X_4" <= 0.031454) THEN CASE WHEN (model_input."X_4" <= 0.021134) THEN CASE WHEN (model_input."X_8" <= 0.068475) THEN 51 ELSE 52 END ELSE 48 END ELSE 30 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 134.945450 AS "E"
    UNION ALL
    SELECT 1 AS nid, 92.891891 AS "E"
    UNION ALL
    SELECT 2 AS nid, 221.388885 AS "E"
    UNION ALL
    SELECT 3 AS nid, 182.454544 AS "E"
    UNION ALL
    SELECT 4 AS nid, 282.571442 AS "E"
    UNION ALL
    SELECT 5 AS nid, 128.666672 AS "E"
    UNION ALL
    SELECT 6 AS nid, 202.625000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 214.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 123.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 111.421051 AS "E"
    UNION ALL
    SELECT 10 AS nid, 73.333336 AS "E"
    UNION ALL
    SELECT 11 AS nid, 139.714279 AS "E"
    UNION ALL
    SELECT 12 AS nid, 94.916664 AS "E"
    UNION ALL
    SELECT 13 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 276.166656 AS "E"
    UNION ALL
    SELECT 15 AS nid, 63.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 101.300003 AS "E"
    UNION ALL
    SELECT 17 AS nid, 161.500000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 142.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 181.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 67.428574 AS "E"
    UNION ALL
    SELECT 22 AS nid, 94.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 63.846153 AS "E"
    UNION ALL
    SELECT 25 AS nid, 112.199997 AS "E"
    UNION ALL
    SELECT 26 AS nid, 90.400002 AS "E"
    UNION ALL
    SELECT 27 AS nid, 61.083332 AS "E"
    UNION ALL
    SELECT 28 AS nid, 97.000000 AS "E"
    UNION ALL
    SELECT 29 AS nid, 272.399994 AS "E"
    UNION ALL
    SELECT 30 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 89.333336 AS "E"
    UNION ALL
    SELECT 32 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 71.000000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 137.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 122.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 206.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 51.500000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 65.875000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 109.250000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 94.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 88.000000 AS "E"
    UNION ALL
    SELECT 47 AS nid, 276.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 49 AS nid, 135.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 51 AS nid, 275.000000 AS "E"
    UNION ALL
    SELECT 52 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 53 AS nid, 90.000000 AS "E"
    UNION ALL
    SELECT 54 AS nid, 89.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.063852) THEN CASE WHEN (model_input."X_8" <= 0.019839) THEN CASE WHEN (model_input."X_3" <= 0.037365) THEN CASE WHEN (model_input."X_2" <= 0.048762) THEN CASE WHEN (model_input."X_8" <= -0.061194) THEN CASE WHEN (model_input."X_8" <= -0.068505) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_9" <= -0.071494) THEN 29 ELSE 30 END END ELSE 20 END ELSE CASE WHEN (model_input."X_3" <= 0.053426) THEN 17 ELSE CASE WHEN (model_input."X_5" <= -0.025113) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_0" <= -0.009147) THEN CASE WHEN (model_input."X_7" <= 0.052759) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_8" <= 0.024383) THEN 9 ELSE CASE WHEN (model_input."X_4" <= 0.125707) THEN CASE WHEN (model_input."X_9" <= 0.011349) THEN 37 ELSE 38 END ELSE 24 END END END END ELSE CASE WHEN (model_input."X_9" <= -0.061138) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.003064) THEN CASE WHEN (model_input."X_5" <= -0.003819) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_4" <= -0.005697) THEN CASE WHEN (model_input."X_9" <= 0.025846) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_8" <= 0.088352) THEN 33 ELSE 34 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 150.054550 AS "E"
    UNION ALL
    SELECT 1 AS nid, 115.190475 AS "E"
    UNION ALL
    SELECT 2 AS nid, 262.692322 AS "E"
    UNION ALL
    SELECT 3 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 299.200012 AS "E"
    UNION ALL
    SELECT 5 AS nid, 95.558823 AS "E"
    UNION ALL
    SELECT 6 AS nid, 198.625000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 122.500000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 224.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 292.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 210.399994 AS "E"
    UNION ALL
    SELECT 11 AS nid, 248.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 312.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 333.500000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 290.500000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 89.133331 AS "E"
    UNION ALL
    SELECT 16 AS nid, 143.750000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 118.666664 AS "E"
    UNION ALL
    SELECT 19 AS nid, 85.785713 AS "E"
    UNION ALL
    SELECT 20 AS nid, 136.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 346.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 237.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 66.333336 AS "E"
    UNION ALL
    SELECT 28 AS nid, 91.090912 AS "E"
    UNION ALL
    SELECT 29 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 30 AS nid, 89.047623 AS "E"
    UNION ALL
    SELECT 31 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 222.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 123.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 122.000000 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.073013) THEN CASE WHEN (model_input."X_8" <= 0.008513) THEN CASE WHEN (model_input."X_2" <= 0.045529) THEN CASE WHEN (model_input."X_3" <= -0.079692) THEN CASE WHEN (model_input."X_5" <= -0.044685) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_6" <= -0.058127) THEN 31 ELSE CASE WHEN (model_input."X_9" <= -0.075636) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_7" <= -0.030453) THEN CASE WHEN (model_input."X_4" <= -0.064175) THEN 37 ELSE CASE WHEN (model_input."X_6" <= 0.000779) THEN 43 ELSE 44 END END ELSE 18 END END ELSE CASE WHEN (model_input."X_0" <= -0.005515) THEN CASE WHEN (model_input."X_7" <= -0.002592) THEN 19 ELSE CASE WHEN (model_input."X_0" <= -0.020045) THEN 41 ELSE CASE WHEN (model_input."X_0" <= -0.012780) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_0" <= 0.043525) THEN CASE WHEN (model_input."X_9" <= 0.092120) THEN CASE WHEN (model_input."X_6" <= -0.013948) THEN 29 ELSE 30 END ELSE 12 END ELSE CASE WHEN (model_input."X_6" <= -0.010266) THEN CASE WHEN (model_input."X_3" <= 0.008101) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_2" <= -0.002434) THEN 25 ELSE 26 END END END END END ELSE CASE WHEN (model_input."X_3" <= -0.009113) THEN 9 ELSE CASE WHEN (model_input."X_5" <= 0.011369) THEN CASE WHEN (model_input."X_8" <= 0.008827) THEN 33 ELSE 34 END ELSE 22 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 144.236359 AS "E"
    UNION ALL
    SELECT 1 AS nid, 123.666664 AS "E"
    UNION ALL
    SELECT 2 AS nid, 285.285706 AS "E"
    UNION ALL
    SELECT 3 AS nid, 91.156250 AS "E"
    UNION ALL
    SELECT 4 AS nid, 188.687500 AS "E"
    UNION ALL
    SELECT 5 AS nid, 115.400002 AS "E"
    UNION ALL
    SELECT 6 AS nid, 222.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 258.333344 AS "E"
    UNION ALL
    SELECT 8 AS nid, 178.399994 AS "E"
    UNION ALL
    SELECT 9 AS nid, 346.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 261.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 284.500000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 206.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 140.500000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 203.666672 AS "E"
    UNION ALL
    SELECT 15 AS nid, 82.041664 AS "E"
    UNION ALL
    SELECT 16 AS nid, 118.500000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 139.666672 AS "E"
    UNION ALL
    SELECT 18 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 85.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 123.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 267.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 237.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 52.333332 AS "E"
    UNION ALL
    SELECT 24 AS nid, 86.285713 AS "E"
    UNION ALL
    SELECT 25 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 28 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 29 AS nid, 293.500000 AS "E"
    UNION ALL
    SELECT 30 AS nid, 275.500000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 84.400002 AS "E"
    UNION ALL
    SELECT 33 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 275.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 82.842102 AS "E"
    UNION ALL
    SELECT 37 AS nid, 136.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 141.500000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 51.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 122.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 123.333336 AS "E"
    UNION ALL
    SELECT 43 AS nid, 142.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 123.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 124.000000 AS "E"
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
    CASE WHEN (model_input."X_3" <= -0.002228) THEN CASE WHEN (model_input."X_8" <= 0.017036) THEN CASE WHEN (model_input."X_6" <= 0.046799) THEN CASE WHEN (model_input."X_9" <= -0.056996) THEN CASE WHEN (model_input."X_7" <= -0.054438) THEN 37 ELSE CASE WHEN (model_input."X_9" <= -0.071494) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_7" <= -0.057944) THEN 25 ELSE CASE WHEN (model_input."X_8" <= -0.038815) THEN 27 ELSE 28 END END END ELSE CASE WHEN (model_input."X_4" <= 0.006687) THEN CASE WHEN (model_input."X_0" <= 0.027178) THEN CASE WHEN (model_input."X_9" <= -0.052854) THEN 49 ELSE 50 END ELSE 40 END ELSE CASE WHEN (model_input."X_9" <= -0.015575) THEN 41 ELSE 42 END END END ELSE CASE WHEN (model_input."X_0" <= 0.030811) THEN CASE WHEN (model_input."X_9" <= 0.009278) THEN CASE WHEN (model_input."X_9" <= -0.032143) THEN 51 ELSE 52 END ELSE 20 END ELSE CASE WHEN (model_input."X_9" <= 0.046557) THEN 45 ELSE 46 END END END ELSE CASE WHEN (model_input."X_2" <= 0.012117) THEN CASE WHEN (model_input."X_9" <= -0.003149) THEN CASE WHEN (model_input."X_9" <= -0.021788) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_2" <= 0.006189) THEN CASE WHEN (model_input."X_9" <= 0.027917) THEN 43 ELSE CASE WHEN (model_input."X_9" <= 0.065196) THEN 53 ELSE 54 END END ELSE 34 END END ELSE CASE WHEN (model_input."X_9" <= -0.038357) THEN 5 ELSE CASE WHEN (model_input."X_5" <= -0.024957) THEN 13 ELSE CASE WHEN (model_input."X_9" <= 0.050699) THEN CASE WHEN (model_input."X_4" <= -0.004321) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_9" <= 0.079693) THEN 35 ELSE 36 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 133.709091 AS "E"
    UNION ALL
    SELECT 1 AS nid, 98.333336 AS "E"
    UNION ALL
    SELECT 2 AS nid, 200.736847 AS "E"
    UNION ALL
    SELECT 3 AS nid, 141.666672 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.899994 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 266.444458 AS "E"
    UNION ALL
    SELECT 7 AS nid, 207.500000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 122.857140 AS "E"
    UNION ALL
    SELECT 9 AS nid, 85.275864 AS "E"
    UNION ALL
    SELECT 10 AS nid, 152.428574 AS "E"
    UNION ALL
    SELECT 11 AS nid, 109.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 210.333328 AS "E"
    UNION ALL
    SELECT 13 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 259.625000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 247.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 280.666656 AS "E"
    UNION ALL
    SELECT 17 AS nid, 278.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 226.333328 AS "E"
    UNION ALL
    SELECT 19 AS nid, 123.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 94.400002 AS "E"
    UNION ALL
    SELECT 22 AS nid, 65.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 85.250000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 136.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 78.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 62.285713 AS "E"
    UNION ALL
    SELECT 28 AS nid, 93.714287 AS "E"
    UNION ALL
    SELECT 29 AS nid, 54.333332 AS "E"
    UNION ALL
    SELECT 30 AS nid, 86.333336 AS "E"
    UNION ALL
    SELECT 31 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 118.333336 AS "E"
    UNION ALL
    SELECT 34 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 136.666672 AS "E"
    UNION ALL
    SELECT 39 AS nid, 49.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 65.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 97.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 123.500000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 206.000000 AS "E"
    UNION ALL
    SELECT 47 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 142.000000 AS "E"
    UNION ALL
    SELECT 49 AS nid, 51.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 47.000000 AS "E"
    UNION ALL
    SELECT 51 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 52 AS nid, 122.000000 AS "E"
    UNION ALL
    SELECT 53 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 54 AS nid, 123.000000 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.005226) THEN CASE WHEN (model_input."X_8" <= 0.030564) THEN CASE WHEN (model_input."X_2" <= -0.041774) THEN CASE WHEN (model_input."X_9" <= -0.019717) THEN CASE WHEN (model_input."X_9" <= -0.056996) THEN 15 ELSE 16 END ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 0.043525) THEN CASE WHEN (model_input."X_4" <= 0.028014) THEN CASE WHEN (model_input."X_2" <= 0.027745) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_6" <= 0.009983) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_9" <= -0.021788) THEN 41 ELSE 42 END END END ELSE CASE WHEN (model_input."X_9" <= 0.021704) THEN 9 ELSE CASE WHEN (model_input."X_2" <= -0.012134) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_2" <= 0.021817) THEN CASE WHEN (model_input."X_9" <= -0.003149) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.006189) THEN CASE WHEN (model_input."X_2" <= -0.022373) THEN 33 ELSE CASE WHEN (model_input."X_2" <= -0.006206) THEN 45 ELSE 46 END END ELSE 22 END END ELSE CASE WHEN (model_input."X_6" <= -0.013948) THEN CASE WHEN (model_input."X_2" <= 0.089719) THEN CASE WHEN (model_input."X_6" <= -0.030515) THEN CASE WHEN (model_input."X_9" <= 0.046557) THEN 43 ELSE 44 END ELSE 32 END ELSE 26 END ELSE CASE WHEN (model_input."X_6" <= 0.015505) THEN CASE WHEN (model_input."X_9" <= 0.005135) THEN 39 ELSE 40 END ELSE 24 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 151.527267 AS "E"
    UNION ALL
    SELECT 1 AS nid, 108.028572 AS "E"
    UNION ALL
    SELECT 2 AS nid, 227.649994 AS "E"
    UNION ALL
    SELECT 3 AS nid, 140.285721 AS "E"
    UNION ALL
    SELECT 4 AS nid, 274.692322 AS "E"
    UNION ALL
    SELECT 5 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 127.166664 AS "E"
    UNION ALL
    SELECT 7 AS nid, 101.031250 AS "E"
    UNION ALL
    SELECT 8 AS nid, 182.666672 AS "E"
    UNION ALL
    SELECT 9 AS nid, 122.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 213.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 144.333328 AS "E"
    UNION ALL
    SELECT 12 AS nid, 91.038460 AS "E"
    UNION ALL
    SELECT 13 AS nid, 162.199997 AS "E"
    UNION ALL
    SELECT 14 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 181.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 82.409088 AS "E"
    UNION ALL
    SELECT 18 AS nid, 138.500000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 293.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 115.750000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 267.799988 AS "E"
    UNION ALL
    SELECT 24 AS nid, 237.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 287.399994 AS "E"
    UNION ALL
    SELECT 26 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 76.823532 AS "E"
    UNION ALL
    SELECT 28 AS nid, 101.400002 AS "E"
    UNION ALL
    SELECT 29 AS nid, 70.153847 AS "E"
    UNION ALL
    SELECT 30 AS nid, 98.500000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 276.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 123.500000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 206.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 109.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 96.333336 AS "E"
    UNION ALL
    SELECT 39 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 275.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 123.000000 AS "E"
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
