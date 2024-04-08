WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_small" AS "ADS" 
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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", 0.652811 AS "sv_0", 0.757719 AS "sv_1", 0.306902 AS "sv_2", 0.828286 AS "sv_3", 0.763064 AS "sv_4", 0.859003 AS "sv_5", 0.873377 AS "sv_6", 0.146070 AS "sv_7", 0.894295 AS "sv_8", 0.086598 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.027869 AS "coeff", 0.764610 AS "sv_0", 0.378970 AS "sv_1", 0.823855 AS "sv_2", 0.913603 AS "sv_3", 0.553400 AS "sv_4", 0.055048 AS "sv_5", 0.588332 AS "sv_6", 0.361050 AS "sv_7", 0.814980 AS "sv_8", 0.123688 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.480054 AS "sv_0", 0.664308 AS "sv_1", 0.985340 AS "sv_2", 0.567078 AS "sv_3", 0.994149 AS "sv_4", 0.780890 AS "sv_5", 0.232756 AS "sv_6", 0.567089 AS "sv_7", 0.093123 AS "sv_8", 0.031981 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 0.010500 AS "sv_0", 0.200190 AS "sv_1", 0.192366 AS "sv_2", 0.175831 AS "sv_3", 0.507530 AS "sv_4", 0.721218 AS "sv_5", 0.719388 AS "sv_6", 0.114770 AS "sv_7", 0.417354 AS "sv_8", 0.783886 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", 0.361047 AS "sv_0", 0.160106 AS "sv_1", 0.219158 AS "sv_2", 0.010201 AS "sv_3", 0.471566 AS "sv_4", 0.488280 AS "sv_5", 0.020705 AS "sv_6", 0.852158 AS "sv_7", 0.667965 AS "sv_8", 0.378921 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.172130 AS "coeff", 0.734481 AS "sv_0", 0.482054 AS "sv_1", 0.789831 AS "sv_2", 0.806913 AS "sv_3", 0.681106 AS "sv_4", 0.602843 AS "sv_5", 0.333277 AS "sv_6", 0.147743 AS "sv_7", 0.020703 AS "sv_8", 0.509223 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", 0.366207 AS "sv_0", 0.096199 AS "sv_1", 0.520676 AS "sv_2", 0.250113 AS "sv_3", 0.155164 AS "sv_4", 0.752654 AS "sv_5", 0.007439 AS "sv_6", 0.025310 AS "sv_7", 0.924844 AS "sv_8", 0.961402 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 0.663564 AS "sv_0", 0.399281 AS "sv_1", 0.158547 AS "sv_2", 0.930965 AS "sv_3", 0.846977 AS "sv_4", 0.986627 AS "sv_5", 0.132816 AS "sv_6", 0.426558 AS "sv_7", 0.999950 AS "sv_8", 0.674509 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -0.199998 AS "coeff", 0.804101 AS "sv_0", 0.103050 AS "sv_1", 0.728795 AS "sv_2", 0.068628 AS "sv_3", 0.567613 AS "sv_4", 0.648562 AS "sv_5", 0.495718 AS "sv_6", 0.628355 AS "sv_7", 0.398738 AS "sv_8", 0.185100 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.503784 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -1.117212 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
