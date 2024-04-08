WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_small" AS "ADS" 
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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", 45.437614 AS "sv_0", 168.841202 AS "sv_1", 0.343817 AS "sv_2", 3.279963 AS "sv_3"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 69.792320 AS "sv_0", 473.447937 AS "sv_1", 0.233546 AS "sv_2", 3.411072 AS "sv_3"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", 52.067585 AS "sv_0", 534.256165 AS "sv_1", 0.155164 AS "sv_2", 8.526538 AS "sv_3"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", 34.347893 AS "sv_0", 205.928116 AS "sv_1", 0.720020 AS "sv_2", 9.414678 AS "sv_3"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", 13.280704 AS "sv_0", 643.716797 AS "sv_1", 0.520814 AS "sv_2", 4.842079 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", 7.606344 AS "sv_0", 1112.226562 AS "sv_1", 0.732761 AS "sv_2", 6.140375 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", 38.088467 AS "sv_0", 1321.297485 AS "sv_1", 0.052941 AS "sv_2", 10.429984 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", 75.648438 AS "sv_0", 442.560303 AS "sv_1", 0.035123 AS "sv_2", 1.334146 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", 85.409492 AS "sv_0", 865.747681 AS "sv_1", 0.002107 AS "sv_2", 1.657108 AS "sv_3"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 7.737632 AS "sv_0", 682.638123 AS "sv_1", 0.943330 AS "sv_2", 1.569080 AS "sv_3"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", 22.116344 AS "sv_0", 1162.774048 AS "sv_1", 0.675740 AS "sv_2", 4.934592 AS "sv_3"
     UNION ALL
     SELECT 11 AS "sv_idx", 0.282564 AS "coeff", 65.455681 AS "sv_0", 755.864746 AS "sv_1", 0.990681 AS "sv_2", 3.455762 AS "sv_3"
     UNION ALL
     SELECT 12 AS "sv_idx", 0.952080 AS "coeff", 11.179132 AS "sv_0", 444.204834 AS "sv_1", 0.202220 AS "sv_2", 7.809537 AS "sv_3"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", 78.244774 AS "sv_0", 702.214600 AS "sv_1", 0.183212 AS "sv_2", 9.434527 AS "sv_3"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", 18.503828 AS "sv_0", 532.344482 AS "sv_1", 0.721851 AS "sv_2", 10.655538 AS "sv_3"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", 97.541664 AS "sv_0", 130.009232 AS "sv_1", 0.366127 AS "sv_2", 5.345118 AS "sv_3"
     UNION ALL
     SELECT 16 AS "sv_idx", 0.700887 AS "coeff", 13.316919 AS "sv_0", 1592.958618 AS "sv_1", 0.993566 AS "sv_2", 7.946761 AS "sv_3"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", 44.357746 AS "sv_0", 674.885315 AS "sv_1", 0.220269 AS "sv_2", 3.032311 AS "sv_3"
     UNION ALL
     SELECT 18 AS "sv_idx", 0.607691 AS "coeff", 39.016674 AS "sv_0", 895.294678 AS "sv_1", 0.992031 AS "sv_2", 3.333866 AS "sv_3"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", 81.412109 AS "sv_0", 1254.374390 AS "sv_1", 0.194226 AS "sv_2", 8.164762 AS "sv_3"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", 39.873802 AS "sv_0", 428.048248 AS "sv_1", 0.235384 AS "sv_2", 2.176043 AS "sv_3"
     UNION ALL
     SELECT 21 AS "sv_idx", 0.456778 AS "coeff", 44.762737 AS "sv_0", 1255.201538 AS "sv_1", 0.591546 AS "sv_2", 2.754247 AS "sv_3"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", 85.125381 AS "sv_0", 1049.026855 AS "sv_1", 0.039136 AS "sv_2", 3.186899 AS "sv_3"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.000000 AS "coeff", 48.198017 AS "sv_0", 353.104248 AS "sv_1", 0.725143 AS "sv_2", 10.405507 AS "sv_3"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", 17.373148 AS "sv_0", 483.680237 AS "sv_1", 0.685229 AS "sv_2", 2.728044 AS "sv_3"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 7.321981 AS "sv_0", 487.752838 AS "sv_1", 0.993317 AS "sv_2", 5.340956 AS "sv_3"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -1.276027 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.000001 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
