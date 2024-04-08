WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_quantized" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3",
   CAST("Values"."sv_4" AS FLOAT) AS "sv_4",
   CAST("Values"."sv_5" AS FLOAT) AS "sv_5",
   CAST("Values"."sv_6" AS FLOAT) AS "sv_6",
   CAST("Values"."sv_7" AS FLOAT) AS "sv_7",
   CAST("Values"."sv_8" AS FLOAT) AS "sv_8",
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 4.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 6.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 0.000000 AS "sv_2", 9.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 5.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 2.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 8.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 5.000000 AS "sv_7", 1.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 3.000000 AS "sv_4", 8.000000 AS "sv_5", 7.000000 AS "sv_6", 9.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 2.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 7.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 2.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 9.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 9.000000 AS "sv_3", 7.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 9.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 6.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 7.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 4.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 9.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", 1.000000 AS "sv_0", 9.000000 AS "sv_1", 0.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", 8.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 9.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", 2.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", 0.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 3.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 0.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", 6.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", 5.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 2.000000 AS "sv_7", 0.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3", 7.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", 6.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", 6.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 5.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 4.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", 7.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", 3.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", 5.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", 0.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 4.000000 AS "sv_3", 0.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 3.000000 AS "sv_7", 7.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 5.000000 AS "sv_7", 5.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 9.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 4.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", 0.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 3.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 5.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 2.000000 AS "sv_5", 1.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 9.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", 9.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 5.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 1.000000 AS "sv_6", 2.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 0.000000 AS "sv_4", 4.000000 AS "sv_5", 1.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 4.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 7.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 3.000000 AS "sv_5", 1.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 9.000000 AS "sv_4", 1.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", 2.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 8.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", 9.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 6.000000 AS "sv_2", 9.000000 AS "sv_3", 4.000000 AS "sv_4", 6.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 7.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 7.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", 8.000000 AS "sv_0", 3.000000 AS "sv_1", 2.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 0.000000 AS "sv_7", 7.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 8.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 7.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 4.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", 8.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 222 AS "sv_idx", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 223 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 4.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 224 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 225 AS "sv_idx", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 226 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 10.000000 AS "sv_4", 4.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 227 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 228 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 229 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 230 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 231 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 9.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 232 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 233 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 9.000000 AS "sv_4", 3.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 234 AS "sv_idx", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 235 AS "sv_idx", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 9.000000 AS "sv_4", 4.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 236 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 237 AS "sv_idx", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 238 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 239 AS "sv_idx", 2.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 240 AS "sv_idx", 9.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 241 AS "sv_idx", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 5.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 242 AS "sv_idx", 6.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 5.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 243 AS "sv_idx", 7.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 244 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 245 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 5.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 246 AS "sv_idx", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 247 AS "sv_idx", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 248 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 249 AS "sv_idx", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 250 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 251 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 6.000000 AS "sv_5", 2.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 252 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 253 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 254 AS "sv_idx", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 6.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 255 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 6.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 256 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 257 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 258 AS "sv_idx", 5.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 6.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 259 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 3.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 260 AS "sv_idx", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 261 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 262 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 263 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 264 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 265 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 266 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 267 AS "sv_idx", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 268 AS "sv_idx", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 269 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 270 AS "sv_idx", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 271 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 272 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 273 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 274 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 275 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 7.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 276 AS "sv_idx", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 10.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 277 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 278 AS "sv_idx", 2.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 279 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 280 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 281 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 282 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 4.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 283 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 1.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 284 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 285 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 7.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 286 AS "sv_idx", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 287 AS "sv_idx", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 7.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 288 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 289 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 290 AS "sv_idx", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 291 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 292 AS "sv_idx", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 293 AS "sv_idx", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 9.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 294 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 295 AS "sv_idx", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 296 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 297 AS "sv_idx", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 298 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 299 AS "sv_idx", 8.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 3.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 300 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 301 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 302 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 303 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 304 AS "sv_idx", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 305 AS "sv_idx", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 9.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 306 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 4.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 307 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 308 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 2.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 309 AS "sv_idx", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 3.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 310 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 4.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 311 AS "sv_idx", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 6.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 312 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 313 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 314 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 315 AS "sv_idx", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 316 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 317 AS "sv_idx", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 318 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 319 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 7.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 320 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 321 AS "sv_idx", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 9.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 322 AS "sv_idx", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 323 AS "sv_idx", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 324 AS "sv_idx", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 325 AS "sv_idx", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 326 AS "sv_idx", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 7.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 327 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 328 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 329 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 330 AS "sv_idx", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 331 AS "sv_idx", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 332 AS "sv_idx", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 333 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 334 AS "sv_idx", 0.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 0.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 335 AS "sv_idx", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 336 AS "sv_idx", 3.000000 AS "sv_0", 3.000000 AS "sv_1", 9.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 1.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 337 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 338 AS "sv_idx", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 0.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 339 AS "sv_idx", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 340 AS "sv_idx", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 341 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 342 AS "sv_idx", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 343 AS "sv_idx", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 344 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 10.000000 AS "sv_7", 9.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 345 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 9.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 346 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 4.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 347 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 9.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 348 AS "sv_idx", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 349 AS "sv_idx", 7.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 350 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 351 AS "sv_idx", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 352 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 353 AS "sv_idx", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 354 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 355 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 356 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 357 AS "sv_idx", 1.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 358 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 4.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 359 AS "sv_idx", 2.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 360 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 361 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 362 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 363 AS "sv_idx", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 0.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 364 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 0.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 365 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 366 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 367 AS "sv_idx", 0.000000 AS "sv_0", 9.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 368 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 369 AS "sv_idx", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 7.000000 AS "sv_7", 7.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 370 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 7.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 371 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 372 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 373 AS "sv_idx", 8.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 374 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 375 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 0.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 376 AS "sv_idx", 5.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 377 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 5.000000 AS "sv_7", 1.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 378 AS "sv_idx", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 7.000000 AS "sv_7", 6.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 379 AS "sv_idx", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 380 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 381 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 6.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 382 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 383 AS "sv_idx", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 384 AS "sv_idx", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 385 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 8.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 386 AS "sv_idx", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 387 AS "sv_idx", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 388 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 0.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 389 AS "sv_idx", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 9.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 390 AS "sv_idx", 5.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 0.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 391 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 6.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 392 AS "sv_idx", 6.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 393 AS "sv_idx", 1.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 394 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 395 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 396 AS "sv_idx", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 397 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 7.000000 AS "sv_7", 5.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 398 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 399 AS "sv_idx", 8.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 400 AS "sv_idx", 3.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 401 AS "sv_idx", 6.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 402 AS "sv_idx", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 403 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 404 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 405 AS "sv_idx", 2.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 406 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 407 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 7.000000 AS "sv_7", 6.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 408 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 5.000000 AS "sv_5", 7.000000 AS "sv_6", 5.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 409 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 410 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 411 AS "sv_idx", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 412 AS "sv_idx", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 413 AS "sv_idx", 3.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 414 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 415 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 2.000000 AS "sv_3", 1.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 416 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 4.000000 AS "sv_7", 6.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 417 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 8.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 418 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 419 AS "sv_idx", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 420 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 9.000000 AS "sv_7", 2.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 421 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 422 AS "sv_idx", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 423 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 4.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 424 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 425 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 2.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 426 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 9.000000 AS "sv_2", 1.000000 AS "sv_3", 8.000000 AS "sv_4", 8.000000 AS "sv_5", 9.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 427 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 428 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 429 AS "sv_idx", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 430 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 8.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 3.000000 AS "sv_7", 6.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 431 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 1.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 432 AS "sv_idx", 7.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 8.000000 AS "sv_7", 7.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 433 AS "sv_idx", 8.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 1.000000 AS "sv_7", 4.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 434 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 8.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 6.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 435 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 436 AS "sv_idx", 4.000000 AS "sv_0", 10.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 437 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 438 AS "sv_idx", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 6.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 7.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 439 AS "sv_idx", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 440 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 6.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 441 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 6.000000 AS "sv_5", 7.000000 AS "sv_6", 2.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 442 AS "sv_idx", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 2.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 443 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 7.000000 AS "sv_4", 7.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 444 AS "sv_idx", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 445 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 6.000000 AS "sv_5", 8.000000 AS "sv_6", 8.000000 AS "sv_7", 4.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 446 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 5.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 447 AS "sv_idx", 1.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 0.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 448 AS "sv_idx", 7.000000 AS "sv_0", 3.000000 AS "sv_1", 9.000000 AS "sv_2", 5.000000 AS "sv_3", 8.000000 AS "sv_4", 9.000000 AS "sv_5", 9.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 449 AS "sv_idx", 4.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 1.000000 AS "sv_4", 8.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 450 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 9.000000 AS "sv_3", 5.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 7.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 451 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 1.000000 AS "sv_4", 9.000000 AS "sv_5", 7.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 452 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 7.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 453 AS "sv_idx", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 454 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 455 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 456 AS "sv_idx", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 2.000000 AS "sv_7", 5.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 457 AS "sv_idx", 3.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 9.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 458 AS "sv_idx", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 459 AS "sv_idx", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 1.000000 AS "sv_7", 8.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 460 AS "sv_idx", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 2.000000 AS "sv_2", 4.000000 AS "sv_3", 3.000000 AS "sv_4", 4.000000 AS "sv_5", 2.000000 AS "sv_6", 9.000000 AS "sv_7", 1.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 461 AS "sv_idx", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 2.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 7.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 462 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 8.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 463 AS "sv_idx", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 4.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 464 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 6.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 465 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 466 AS "sv_idx", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 9.000000 AS "sv_7", 2.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 467 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 7.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 468 AS "sv_idx", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 7.000000 AS "sv_7", 7.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 469 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 2.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 470 AS "sv_idx", 6.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 1.000000 AS "sv_7", 7.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 471 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 472 AS "sv_idx", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 0.000000 AS "sv_7", 1.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 473 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 474 AS "sv_idx", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 5.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 475 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 4.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 9.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 476 AS "sv_idx", 5.000000 AS "sv_0", 5.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 4.000000 AS "sv_6", 9.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 477 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 5.000000 AS "sv_7", 9.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 478 AS "sv_idx", 5.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 1.000000 AS "sv_5", 1.000000 AS "sv_6", 7.000000 AS "sv_7", 0.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 479 AS "sv_idx", 3.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3", 7.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 5.000000 AS "sv_7", 7.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 480 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 2.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 481 AS "sv_idx", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 5.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 482 AS "sv_idx", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 3.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 483 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 9.000000 AS "sv_8", 0.000000 AS "sv_9"
     UNION ALL
     SELECT 484 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 8.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 485 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 486 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 2.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 3.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 487 AS "sv_idx", 6.000000 AS "sv_0", 4.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 3.000000 AS "sv_6", 3.000000 AS "sv_7", 3.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 488 AS "sv_idx", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 4.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 489 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 490 AS "sv_idx", 5.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 491 AS "sv_idx", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 3.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 492 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 8.000000 AS "sv_7", 3.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 493 AS "sv_idx", 3.000000 AS "sv_0", 3.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3", 3.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 8.000000 AS "sv_7", 5.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 494 AS "sv_idx", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 8.000000 AS "sv_3", 4.000000 AS "sv_4", 4.000000 AS "sv_5", 3.000000 AS "sv_6", 6.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 495 AS "sv_idx", 2.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 4.000000 AS "sv_6", 1.000000 AS "sv_7", 1.000000 AS "sv_8", 8.000000 AS "sv_9"
     UNION ALL
     SELECT 496 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3", 7.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 3.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 497 AS "sv_idx", 6.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 0.000000 AS "sv_7", 4.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 498 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 3.000000 AS "sv_7", 2.000000 AS "sv_8", 3.000000 AS "sv_9"
     UNION ALL
     SELECT 499 AS "sv_idx", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 9.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 5.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 500 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3", 4.000000 AS "sv_4", 5.000000 AS "sv_5", 4.000000 AS "sv_6", 2.000000 AS "sv_7", 6.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 501 AS "sv_idx", 5.000000 AS "sv_0", 3.000000 AS "sv_1", 2.000000 AS "sv_2", 6.000000 AS "sv_3", 4.000000 AS "sv_4", 2.000000 AS "sv_5", 2.000000 AS "sv_6", 3.000000 AS "sv_7", 5.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 502 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 4.000000 AS "sv_7", 7.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 503 AS "sv_idx", 8.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3", 5.000000 AS "sv_4", 1.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 8.000000 AS "sv_8", 2.000000 AS "sv_9"
     UNION ALL
     SELECT 504 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 9.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 505 AS "sv_idx", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 3.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 2.000000 AS "sv_8", 9.000000 AS "sv_9"
     UNION ALL
     SELECT 506 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3", 2.000000 AS "sv_4", 6.000000 AS "sv_5", 4.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9"
     UNION ALL
     SELECT 507 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 3.000000 AS "sv_5", 3.000000 AS "sv_6", 2.000000 AS "sv_7", 7.000000 AS "sv_8", 5.000000 AS "sv_9"
     UNION ALL
     SELECT 508 AS "sv_idx", 9.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 5.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 6.000000 AS "sv_9"
     UNION ALL
     SELECT 509 AS "sv_idx", 1.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 1.000000 AS "sv_7", 2.000000 AS "sv_8", 4.000000 AS "sv_9"
     UNION ALL
     SELECT 510 AS "sv_idx", 2.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 1.000000 AS "sv_3", 6.000000 AS "sv_4", 3.000000 AS "sv_5", 5.000000 AS "sv_6", 2.000000 AS "sv_7", 8.000000 AS "sv_8", 1.000000 AS "sv_9"
     UNION ALL
     SELECT 511 AS "sv_idx", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3", 6.000000 AS "sv_4", 4.000000 AS "sv_5", 6.000000 AS "sv_6", 6.000000 AS "sv_7", 8.000000 AS "sv_8", 5.000000 AS "sv_9"
   ) AS "Values"
 ),
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.012735 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 54 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 65 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 70 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 71 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 73 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 74 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 76 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 77 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 81 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 84 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 86 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 89 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 91 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 94 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 95 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 96 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 97 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 98 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 99 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 100 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 101 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 102 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 103 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 104 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 105 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 106 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 107 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 108 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 109 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 110 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 111 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 112 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 113 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 114 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 115 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 116 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 117 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 118 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 119 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 120 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 121 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 122 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 123 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 124 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 125 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 126 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 127 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 128 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 129 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 130 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 131 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 132 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 133 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 134 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 135 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 136 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 137 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 138 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 139 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 140 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 141 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 142 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 143 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 144 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 145 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 146 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 147 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 148 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 149 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 150 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 151 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 152 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 153 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 154 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 155 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 156 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 157 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 158 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 159 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 160 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 161 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 162 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 163 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 164 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 165 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 166 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 167 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 168 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 169 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 170 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 171 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 172 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 173 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 174 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 175 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 176 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 177 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 178 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 179 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 180 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 181 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 182 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 183 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 184 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 185 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 186 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 187 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 188 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 189 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 190 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 191 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 192 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 193 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 194 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 195 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 196 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 197 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 198 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 199 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 200 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 201 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 202 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 203 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 204 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 205 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 206 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 207 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 208 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 209 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 210 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 211 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 212 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 213 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 214 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 215 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 216 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 217 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 218 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 219 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 220 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 221 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 222 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 223 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 224 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 225 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 226 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 227 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 228 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 229 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 230 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 231 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 232 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 233 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 234 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 235 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 236 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 237 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 238 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 239 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 240 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 241 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 242 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 243 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 244 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 245 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 246 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 247 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 248 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 249 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 250 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 251 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 252 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 253 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 254 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 255 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 256 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 257 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 258 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 259 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 260 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 261 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 262 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 263 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 264 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 265 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 266 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 267 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 268 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 269 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 270 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 271 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 272 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 273 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 274 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 275 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 276 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 277 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 278 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 279 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 280 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 281 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 282 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 283 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 284 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 285 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 286 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 287 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 288 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 289 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 290 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 291 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 292 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 293 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 294 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 295 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 296 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 297 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 298 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 299 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 300 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 301 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 302 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 303 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 304 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 305 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 306 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 307 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 308 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 309 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 310 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 311 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 312 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 313 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 314 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 315 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 316 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 317 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 318 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 319 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 320 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 321 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 322 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 323 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 324 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 325 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 326 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 327 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 328 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 329 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 330 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 331 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 332 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 333 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 334 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 335 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 336 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 337 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 338 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 339 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 340 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 341 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 342 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 343 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 344 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 345 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 346 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 347 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 348 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 349 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 350 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 351 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 352 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 353 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 354 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 355 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 356 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 357 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 358 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 359 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 360 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 361 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 362 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 363 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 364 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 365 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 366 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 367 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 368 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 369 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 370 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 371 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 372 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 373 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 374 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 375 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 376 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 377 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 378 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 379 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 380 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 381 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 382 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 383 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 384 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 385 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 386 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 387 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 388 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 389 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 390 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 391 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 392 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 393 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 394 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 395 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 396 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 397 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 398 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 399 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 400 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 401 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 402 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 403 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 404 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 405 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 406 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 407 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 408 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 409 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 410 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 411 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 412 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 413 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 414 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 415 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 416 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 417 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 418 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 419 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 420 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 421 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 422 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 423 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 424 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 425 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 426 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 427 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 428 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 429 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 430 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 431 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 432 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 433 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 434 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 435 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 436 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 437 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 438 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 439 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 440 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 441 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 442 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 443 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 444 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 445 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 446 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 447 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 448 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 449 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 450 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 451 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 452 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 453 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 454 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 455 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 456 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 457 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 458 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 459 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 460 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 461 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 462 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 463 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 464 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 465 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 466 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 467 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 468 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 469 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 470 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 471 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 472 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 473 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 474 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 475 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 476 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 477 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 478 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 479 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 480 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 481 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 482 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 483 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 484 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 485 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 486 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 487 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 488 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 489 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 490 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 491 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 492 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 493 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 494 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 495 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 496 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 497 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 498 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 499 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 500 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 501 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 502 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 503 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 504 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 505 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 506 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 507 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 508 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 509 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 510 AS "sv_idx", 0.125944 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 511 AS "sv_idx", 0.125944 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.033188 AS "rho", -2.144818 AS "probA", -0.162164 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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