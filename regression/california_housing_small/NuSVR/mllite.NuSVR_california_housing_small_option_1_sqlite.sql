WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
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
   "Values"."sv_8" AS "sv_8"
  FROM
  (
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -121.580002 AS "sv_0", 39.500000 AS "sv_1", 29.000000 AS "sv_2", 1947.000000 AS "sv_3", 383.000000 AS "sv_4", 925.000000 AS "sv_5", 337.000000 AS "sv_6", 2.165800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.199998 AS "coeff", -118.419998 AS "sv_0", 34.040001 AS "sv_1", 46.000000 AS "sv_2", 1508.000000 AS "sv_3", 276.000000 AS "sv_4", 639.000000 AS "sv_5", 273.000000 AS "sv_6", 4.925000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 2 AS "sv_idx", -0.199998 AS "coeff", -121.430000 AS "sv_0", 38.619999 AS "sv_1", 36.000000 AS "sv_2", 1765.000000 AS "sv_3", 438.000000 AS "sv_4", 1008.000000 AS "sv_5", 382.000000 AS "sv_6", 2.063900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -122.599998 AS "sv_0", 38.930000 AS "sv_1", 16.000000 AS "sv_2", 1657.000000 AS "sv_3", 390.000000 AS "sv_4", 572.000000 AS "sv_5", 301.000000 AS "sv_6", 1.476700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -117.720001 AS "sv_0", 33.430000 AS "sv_1", 5.000000 AS "sv_2", 1889.000000 AS "sv_3", 359.000000 AS "sv_4", 616.000000 AS "sv_5", 246.000000 AS "sv_6", 3.899200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -121.440002 AS "sv_0", 38.520000 AS "sv_1", 36.000000 AS "sv_2", 3446.000000 AS "sv_3", 950.000000 AS "sv_4", 2460.000000 AS "sv_5", 847.000000 AS "sv_6", 1.652100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", -118.389999 AS "sv_0", 33.880001 AS "sv_1", 31.000000 AS "sv_2", 1448.000000 AS "sv_3", 244.000000 AS "sv_4", 607.000000 AS "sv_5", 259.000000 AS "sv_6", 8.151300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", -117.940002 AS "sv_0", 33.889999 AS "sv_1", 30.000000 AS "sv_2", 2577.000000 AS "sv_3", 404.000000 AS "sv_4", 1076.000000 AS "sv_5", 374.000000 AS "sv_6", 6.752800 AS "sv_7", 0.000000 AS "sv_8"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -241399.687500 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
