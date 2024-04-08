WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_quantized" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3"
  FROM
  (
     SELECT 0 AS "sv_idx", 0.010929 AS "coeff", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.318041 AS "coeff", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 10.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.690345 AS "coeff", 3.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.064774 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 8.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.005792 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 9 AS "sv_idx", 0.298591 AS "coeff", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 11 AS "sv_idx", -0.384733 AS "coeff", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", 6.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 8.000000 AS "sv_1", 2.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 15 AS "sv_idx", -0.502435 AS "coeff", 7.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 16 AS "sv_idx", -0.060784 AS "coeff", 7.000000 AS "sv_0", 0.000000 AS "sv_1", 9.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 17 AS "sv_idx", 0.234055 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.000000 AS "coeff", 1.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 19 AS "sv_idx", 0.169776 AS "coeff", 4.000000 AS "sv_0", 10.000000 AS "sv_1", 0.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 20 AS "sv_idx", 0.784926 AS "coeff", 6.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 21 AS "sv_idx", 0.479502 AS "coeff", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 22 AS "sv_idx", -0.191797 AS "coeff", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.000000 AS "coeff", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 24 AS "sv_idx", -0.928424 AS "coeff", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 25 AS "sv_idx", -0.197953 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 9.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 26 AS "sv_idx", 0.041555 AS "coeff", 2.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 0.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 28 AS "sv_idx", -0.314588 AS "coeff", 4.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 29 AS "sv_idx", -0.807354 AS "coeff", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 30 AS "sv_idx", 0.217349 AS "coeff", 6.000000 AS "sv_0", 6.000000 AS "sv_1", 3.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 31 AS "sv_idx", -0.004622 AS "coeff", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 3.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 32 AS "sv_idx", -0.151110 AS "coeff", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 6.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 33 AS "sv_idx", -0.464960 AS "coeff", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 34 AS "sv_idx", 0.647214 AS "coeff", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 35 AS "sv_idx", 0.911852 AS "coeff", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 36 AS "sv_idx", 0.128461 AS "coeff", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 37 AS "sv_idx", 0.104475 AS "coeff", 1.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.000000 AS "coeff", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 39 AS "sv_idx", 0.749424 AS "coeff", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 10.000000 AS "sv_3"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 41 AS "sv_idx", -0.243491 AS "coeff", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 42 AS "sv_idx", -0.614882 AS "coeff", 8.000000 AS "sv_0", 6.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 43 AS "sv_idx", 0.039796 AS "coeff", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 44 AS "sv_idx", 0.039636 AS "coeff", 6.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 45 AS "sv_idx", 0.110423 AS "coeff", 0.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 46 AS "sv_idx", 0.162745 AS "coeff", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 47 AS "sv_idx", 0.826132 AS "coeff", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 48 AS "sv_idx", 1.000000 AS "coeff", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 50 AS "sv_idx", -0.228809 AS "coeff", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 51 AS "sv_idx", -0.275434 AS "coeff", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 52 AS "sv_idx", 0.114221 AS "coeff", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 53 AS "sv_idx", -0.169776 AS "coeff", 5.000000 AS "sv_0", 6.000000 AS "sv_1", 5.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 55 AS "sv_idx", 0.272399 AS "coeff", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 56 AS "sv_idx", -0.106114 AS "coeff", 1.000000 AS "sv_0", 3.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 57 AS "sv_idx", 0.136215 AS "coeff", 4.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 58 AS "sv_idx", 0.895241 AS "coeff", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 59 AS "sv_idx", -1.000000 AS "coeff", 10.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 61 AS "sv_idx", 0.135448 AS "coeff", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 4.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.000000 AS "coeff", 9.000000 AS "sv_0", 5.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 63 AS "sv_idx", 1.000000 AS "coeff", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 64 AS "sv_idx", -0.127950 AS "coeff", 2.000000 AS "sv_0", 2.000000 AS "sv_1", 1.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 65 AS "sv_idx", 0.151636 AS "coeff", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 9.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 66 AS "sv_idx", 0.290654 AS "coeff", 5.000000 AS "sv_0", 8.000000 AS "sv_1", 7.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 67 AS "sv_idx", 0.660498 AS "coeff", 7.000000 AS "sv_0", 9.000000 AS "sv_1", 3.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 68 AS "sv_idx", -0.350595 AS "coeff", 5.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 69 AS "sv_idx", 0.433707 AS "coeff", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -1.239799 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.030193 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
