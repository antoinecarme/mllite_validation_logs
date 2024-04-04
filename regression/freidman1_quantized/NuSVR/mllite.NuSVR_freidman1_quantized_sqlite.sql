WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3",
   "Values"."sv_4" AS "sv_4",
   "Values"."sv_5" AS "sv_5",
   "Values"."sv_6" AS "sv_6",
   "Values"."sv_7" AS "sv_7",
   "Values"."sv_8" AS "sv_8",
   "Values"."sv_9" AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", -0.073227 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 0.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -0.709677 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 10.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -0.516637 AS "coeff", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 7.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.393581 AS "coeff", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 1.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 8.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 10.000000 AS "sv_3", 8.000000 AS "sv_4", 2.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 3.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -0.230306 AS "coeff", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.566533 AS "coeff", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 9.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 2.000000 AS "sv_6", 7.000000 AS "sv_7", 6.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 9.000000 AS "sv_7", 4.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 0.641196 AS "coeff", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", 9.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 4.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 8.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 7.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 0.093420 AS "coeff", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", 8.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.836865 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -0.450512 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 3.000000 AS "sv_3", 2.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 10.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 4.000000 AS "sv_4", 7.000000 AS "sv_5", 0.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 0.654314 AS "coeff", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", 9.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 0.715718 AS "coeff", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -0.198783 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 9.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 5.000000 AS "sv_3", 10.000000 AS "sv_4", 7.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 0.171421 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 7.000000 AS "sv_4", 9.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", -1.000000 AS "coeff", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 2.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 0.250282 AS "coeff", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 10.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 0.173684 AS "coeff", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 0.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", 0.749003 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -1.000000 AS "coeff", 10.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 0.640819 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", 0.113162 AS "coeff", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 8.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 0.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 7.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 1.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 10.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -0.820858 AS "coeff", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 7.000000 AS "sv_8", 0.000000 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.591139 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.011928 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t