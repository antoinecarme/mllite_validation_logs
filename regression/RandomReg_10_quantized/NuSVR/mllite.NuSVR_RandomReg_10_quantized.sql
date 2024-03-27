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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 7.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 9.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 9.000000 AS "sv_5", 1.000000 AS "sv_6", 7.000000 AS "sv_7", 2.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 0.000000 AS "sv_1", 9.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 9.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 0.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 0.000000 AS "sv_4", 6.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 9.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 9.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 1.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 2.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 9.000000 AS "sv_5", 4.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 8.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 7.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 9.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", 1.000000 AS "coeff", 2.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 9.000000 AS "sv_5", 2.000000 AS "sv_6", 5.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 9.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 4.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 2.000000 AS "sv_5", 8.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 3.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 2.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 9.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 4.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 9.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 1.000000 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 9.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 7.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3", 0.000000 AS "sv_4", 1.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 8.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", 1.000000 AS "coeff", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 8.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 9.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", -1.000000 AS "coeff", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 8.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 6.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 1.000000 AS "coeff", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 0.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 9.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 0.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 0.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 10.000000 AS "sv_4", 7.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 0.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 7.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 1.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", 1.000000 AS "coeff", 2.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 9.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 3.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3", 0.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", -1.000000 AS "coeff", 8.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3", 7.000000 AS "sv_4", 9.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 2.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 0.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3", 0.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 10.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 5.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 6.000000 AS "sv_5", 10.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 6.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 9.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 9.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 0.000000 AS "sv_4", 1.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 8.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 9.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 5.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 3.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 7.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 9.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", -1.000000 AS "coeff", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 8.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 9.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 0.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 9.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 9.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 0.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 5.000000 AS "sv_4", 8.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 8.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", 1.000000 AS "coeff", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 7.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 10.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", -1.000000 AS "coeff", 5.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", -1.000000 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 0.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 222 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 7.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 223 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 224 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 225 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 226 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3", 1.000000 AS "sv_4", 0.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 227 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 228 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 9.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 229 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 230 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 231 AS "sv_idx", -1.000000 AS "coeff", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 0.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 232 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 233 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 234 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 235 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 0.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 236 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 237 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 238 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 0.000000 AS "sv_4", 6.000000 AS "sv_5", 0.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 239 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 240 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 9.000000 AS "sv_6", 9.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 241 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 242 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 243 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 9.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 244 AS "sv_idx", 1.000000 AS "coeff", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 9.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 245 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 8.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 246 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 247 AS "sv_idx", 1.000000 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 248 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 1.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 249 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 250 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 251 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 0.000000 AS "sv_4", 7.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 252 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 253 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 254 AS "sv_idx", -1.000000 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 255 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - 3.740631 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  exp(min(max(-32.0, -0.012721 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2))), 32.0))  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
