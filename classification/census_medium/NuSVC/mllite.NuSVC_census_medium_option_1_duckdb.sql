WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_medium" AS "ADS" 
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
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9",
   CAST("Values"."sv_10" AS FLOAT) AS "sv_10",
   CAST("Values"."sv_11" AS FLOAT) AS "sv_11",
   CAST("Values"."sv_12" AS FLOAT) AS "sv_12",
   CAST("Values"."sv_13" AS FLOAT) AS "sv_13"
  FROM
  (
     SELECT 0 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 77516.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 1.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 1 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 83311.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 2 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 215646.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 3 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 234721.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 338409.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 5 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 284582.000000 AS "sv_2", 0.000000 AS "sv_3", 14.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 6 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 160187.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 122272.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 205019.000000 AS "sv_2", 0.000000 AS "sv_3", 12.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 245487.000000 AS "sv_2", 0.000000 AS "sv_3", 4.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 176756.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 186824.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 12 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 302146.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 76845.000000 AS "sv_2", 0.000000 AS "sv_3", 5.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 14 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 117037.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 3.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 15 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 109015.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 16 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 168294.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 17 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 367260.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 4.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 18 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 193366.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 19 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 190709.000000 AS "sv_2", 0.000000 AS "sv_3", 12.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 20 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 266015.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 21 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 386940.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 1.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 59951.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 23 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 311512.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 24 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 242406.000000 AS "sv_2", 0.000000 AS "sv_3", 7.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 25 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 226956.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 213921.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 446839.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 432376.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 29 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 175374.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 30 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 494223.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 2.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 31 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 235485.000000 AS "sv_2", 0.000000 AS "sv_3", 12.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 428030.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 483777.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 34 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 633742.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 35 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 24215.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 36 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 170525.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 37 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 171328.000000 AS "sv_2", 0.000000 AS "sv_3", 6.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 38 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 477983.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 39 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 173960.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 40 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 860348.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 423158.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 42 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 410439.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 43 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 25429.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 44 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 416103.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 45 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 191073.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 46 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 206399.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 47 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 180374.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 48 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 164427.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 49 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 403107.000000 AS "sv_2", 0.000000 AS "sv_3", 3.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 50 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 141944.000000 AS "sv_2", 0.000000 AS "sv_3", 11.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 1.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 51 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 209642.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 52 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 45781.000000 AS "sv_2", 0.000000 AS "sv_3", 14.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 4.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 53 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 159449.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 2.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 54 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 280464.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 4.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 55 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 141297.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 56 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 121772.000000 AS "sv_2", 0.000000 AS "sv_3", 11.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 57 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 292175.000000 AS "sv_2", 0.000000 AS "sv_3", 14.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 58 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 193524.000000 AS "sv_2", 0.000000 AS "sv_3", 16.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 59 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 216851.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 60 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 180211.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 61 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 84154.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 62 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 337895.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 63 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 51835.000000 AS "sv_2", 0.000000 AS "sv_3", 15.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 3.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 64 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 251585.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 65 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 237993.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 66 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 116632.000000 AS "sv_2", 0.000000 AS "sv_3", 16.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 67 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 169846.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 68 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 191681.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 69 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 162298.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 4.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 70 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 343591.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 4.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 71 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 268234.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 72 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 410867.000000 AS "sv_2", 0.000000 AS "sv_3", 16.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 73 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 191277.000000 AS "sv_2", 0.000000 AS "sv_3", 16.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 3.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 74 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 202683.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 75 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 124191.000000 AS "sv_2", 0.000000 AS "sv_3", 14.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 76 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 317660.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 3.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 77 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 65324.000000 AS "sv_2", 0.000000 AS "sv_3", 15.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 78 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 335605.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 2.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 79 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 287828.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 80 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 81973.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 81 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 56795.000000 AS "sv_2", 0.000000 AS "sv_3", 14.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 4.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 82 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 635913.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 83 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 76714.000000 AS "sv_2", 0.000000 AS "sv_3", 15.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 84 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 303044.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 85 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 69867.000000 AS "sv_2", 0.000000 AS "sv_3", 9.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 86 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 279472.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 2.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 87 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 97688.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 2.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 88 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 34987.000000 AS "sv_2", 0.000000 AS "sv_3", 10.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 89 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 296478.000000 AS "sv_2", 0.000000 AS "sv_3", 11.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 2.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 90 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 372020.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 91 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 96129.000000 AS "sv_2", 0.000000 AS "sv_3", 11.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 92 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 86872.000000 AS "sv_2", 0.000000 AS "sv_3", 13.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 3.000000 AS "sv_12", 0.000000 AS "sv_13"
     UNION ALL
     SELECT 93 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 72887.000000 AS "sv_2", 0.000000 AS "sv_3", 11.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 2.000000 AS "sv_12", 0.000000 AS "sv_13"
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.000000 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2) + power(model_input."X_10" - "SV_data"."sv_10", 2) + power(model_input."X_11" - "SV_data"."sv_11", 2) + power(model_input."X_12" - "SV_data"."sv_12", 2) + power(model_input."X_13" - "SV_data"."sv_13", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", -11115.979492 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", -10454.689453 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", -9483.231445 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", -10932.204102 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", -10912.412109 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", -11168.389648 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", -2211.541504 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", -4786.991699 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", -10224.250000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", -6720.905762 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", -374.516876 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", -196.008224 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", -709.206787 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", -379.691528 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", -132.257401 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", -453.385620 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", -2625.841064 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", -267.237396 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", -556.855286 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", -42.167576 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", -204.343414 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", -1154.582397 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", -1168.648804 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", -246.409027 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", -104.271225 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", -275.052246 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", -78.062286 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", -2484.843994 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", -77.748825 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", -146.937134 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", -118.790627 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", -560.161072 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", -588.180542 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", -69.864471 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", -6526.396484 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", -11115.979492 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", -10454.689453 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 54 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", -9483.231445 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", -10932.204102 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", -10912.412109 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", -11168.389648 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 65 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 70 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 71 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", -2211.541504 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 73 AS "sv_idx", -4786.991699 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 74 AS "sv_idx", -10224.250000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", -6720.905762 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 76 AS "sv_idx", -374.516876 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 77 AS "sv_idx", -196.008224 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", -709.206787 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", -379.691528 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", -132.257401 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 81 AS "sv_idx", -453.385620 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", -2625.841064 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", -267.237396 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 84 AS "sv_idx", -556.855286 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", -42.167576 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 86 AS "sv_idx", -11203.460938 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", -204.343414 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", -1154.582397 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 89 AS "sv_idx", -1168.648804 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", -246.409027 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 91 AS "sv_idx", -104.271225 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", -275.052246 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", -78.062286 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -4.799751 AS "rho", -0.010797 AS "probA", -1.258992 AS "probB"
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