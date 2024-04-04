WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
     SELECT 4 AS "sv_idx", 0.361659 AS "coeff", 63.010204 AS "sv_0", 221.354385 AS "sv_1", 0.814630 AS "sv_2", 5.897069 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.426084 AS "coeff", 22.605108 AS "sv_0", 1660.837036 AS "sv_1", 0.731124 AS "sv_2", 9.374556 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", 13.280704 AS "sv_0", 643.716797 AS "sv_1", 0.520814 AS "sv_2", 4.842079 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.714237 AS "coeff", 7.606344 AS "sv_0", 1112.226562 AS "sv_1", 0.732761 AS "sv_2", 6.140375 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.498019 AS "coeff", 94.566437 AS "sv_0", 663.266418 AS "sv_1", 0.852323 AS "sv_2", 6.919084 AS "sv_3"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", 38.088467 AS "sv_0", 1321.297485 AS "sv_1", 0.052941 AS "sv_2", 10.429984 AS "sv_3"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -1.334461 AS dot_product
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
