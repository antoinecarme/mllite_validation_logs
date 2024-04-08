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
     SELECT 0 AS "sv_idx", 0.588360 AS "coeff", 7.606344 AS "sv_0", 1112.226562 AS "sv_1", 0.732761 AS "sv_2", 6.140375 AS "sv_3"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 75.648438 AS "sv_0", 442.560303 AS "sv_1", 0.035123 AS "sv_2", 1.334146 AS "sv_3"
     UNION ALL
     SELECT 2 AS "sv_idx", 0.701633 AS "coeff", 2.070305 AS "sv_0", 957.545105 AS "sv_1", 0.737876 AS "sv_2", 2.535709 AS "sv_3"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 85.409492 AS "sv_0", 865.747681 AS "sv_1", 0.002107 AS "sv_2", 1.657108 AS "sv_3"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.805240 AS "coeff", 7.737632 AS "sv_0", 682.638123 AS "sv_1", 0.943330 AS "sv_2", 1.569080 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", -0.199998 AS "coeff", 97.541664 AS "sv_0", 130.009232 AS "sv_1", 0.366127 AS "sv_2", 5.345118 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.104765 AS "coeff", 13.316919 AS "sv_0", 1592.958618 AS "sv_1", 0.993566 AS "sv_2", 7.946761 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", 85.125381 AS "sv_0", 1049.026855 AS "sv_1", 0.039136 AS "sv_2", 3.186899 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", 7.321981 AS "sv_0", 487.752838 AS "sv_1", 0.993317 AS "sv_2", 5.340956 AS "sv_3"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -1.015656 AS dot_product
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
