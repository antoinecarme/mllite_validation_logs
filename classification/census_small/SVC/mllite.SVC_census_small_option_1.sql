WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"SV_data" AS
 ( SELECT 
   "Values".sv_idx AS sv_idx,
   CAST("Values".sv_0 AS FLOAT) sv_0,
   CAST("Values".sv_1 AS FLOAT) sv_1,
   CAST("Values".sv_2 AS FLOAT) sv_2,
   CAST("Values".sv_3 AS FLOAT) sv_3,
   CAST("Values".sv_4 AS FLOAT) sv_4,
   CAST("Values".sv_5 AS FLOAT) sv_5,
   CAST("Values".sv_6 AS FLOAT) sv_6,
   CAST("Values".sv_7 AS FLOAT) sv_7,
   CAST("Values".sv_8 AS FLOAT) sv_8,
   CAST("Values".sv_9 AS FLOAT) sv_9,
   CAST("Values".sv_10 AS FLOAT) sv_10,
   CAST("Values".sv_11 AS FLOAT) sv_11,
   CAST("Values".sv_12 AS FLOAT) sv_12,
   CAST("Values".sv_13 AS FLOAT) sv_13
  FROM
  (
     SELECT 0 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 159537.000000 AS sv_2, 0.000000 AS sv_3, 12.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 1 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 25806.000000 AS sv_2, 0.000000 AS sv_3, 16.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 2 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 126840.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 3 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 249368.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 4.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 4 AS sv_idx, 0.000000 AS sv_0, 0.000000 AS sv_1, 520759.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 1.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 5 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 421633.000000 AS sv_2, 0.000000 AS sv_3, 11.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 6 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 187919.000000 AS sv_2, 0.000000 AS sv_3, 14.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 2.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 7 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 210313.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 8 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 100301.000000 AS sv_2, 0.000000 AS sv_3, 6.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 0.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 9 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 144084.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 10 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 79036.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 11 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 150324.000000 AS sv_2, 0.000000 AS sv_3, 11.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 12 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 108386.000000 AS sv_2, 0.000000 AS sv_3, 12.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 13 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 162137.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 14 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 222504.000000 AS sv_2, 0.000000 AS sv_3, 11.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 15 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 171831.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 1.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 16 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 142297.000000 AS sv_2, 0.000000 AS sv_3, 6.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 0.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 17 AS sv_idx, 0.000000 AS sv_0, 0.000000 AS sv_1, 86745.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 18 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 54102.000000 AS sv_2, 0.000000 AS sv_3, 11.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 19 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 112963.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 20 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 121441.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 21 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 188950.000000 AS sv_2, 0.000000 AS sv_3, 14.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 22 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 129707.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 4.000000 AS sv_10, 0.000000 AS sv_11, 1.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 23 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 78530.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 4.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 24 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 96586.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 25 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 229656.000000 AS sv_2, 0.000000 AS sv_3, 14.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 1.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 26 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 192569.000000 AS sv_2, 0.000000 AS sv_3, 15.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 27 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 116975.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 2.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 28 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 161510.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 2.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 29 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 185145.000000 AS sv_2, 0.000000 AS sv_3, 16.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 30 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 106707.000000 AS sv_2, 0.000000 AS sv_3, 12.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 0.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 31 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 420749.000000 AS sv_2, 0.000000 AS sv_3, 12.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 32 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 187563.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 33 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 105582.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 4.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 34 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 111795.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
   ) AS "Values"
 )
,
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           exp(min(max(-32.0, -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2) + power(model_input."X_10" - "SV_data".sv_10, 2) + power(model_input."X_11" - "SV_data".sv_11, 2) + power(model_input."X_12" - "SV_data".sv_12, 2) + power(model_input."X_13" - "SV_data".sv_13, 2))), 32.0))  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t.prob_idx AS prob_idx, t.c_1 AS c_1, t.c_2 AS c_2, t.sv_idx AS sv_idx, t.coeff AS Coeff
   FROM
   (
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 1 AS sv_idx, 0.095958 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 3 AS sv_idx, 0.712106 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, 0.023269 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, 1.917226 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 6 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 7 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 8 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 9 AS sv_idx, 0.154210 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 10 AS sv_idx, 0.657380 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 11 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 12 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 13 AS sv_idx, 0.003725 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 14 AS sv_idx, 1.885129 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 15 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 16 AS sv_idx, 0.301364 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 17 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 18 AS sv_idx, 0.249633 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 19 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 20 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 21 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 22 AS sv_idx, 0.095958 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 23 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 24 AS sv_idx, 0.712106 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 25 AS sv_idx, 0.023269 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 26 AS sv_idx, 1.917226 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 27 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 28 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 29 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 30 AS sv_idx, 0.154210 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 31 AS sv_idx, 0.657380 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 32 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 33 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 34 AS sv_idx, 0.003725 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -1.002096 AS "rho", 66.264030 AS "probA", -67.509689 AS "probB"
   ) AS t
  )
,
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   t3."rho" + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
)
,"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1.c_1 == 0 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 0 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_0,
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1.c_1 == 1 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 1 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_1,
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
)
,
orig_cte AS 
( SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
)
,arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1" ) AS "Max_Proba"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte