WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_tiny" AS "ADS" 
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
     SELECT 0 AS "sv_idx", 0.923499 AS "coeff", 0.544738 AS "sv_0", 0.515912 AS "sv_1", 0.990435 AS "sv_2", 0.255145 AS "sv_3", 0.143953 AS "sv_4", 0.332351 AS "sv_5", 0.868622 AS "sv_6", 0.041089 AS "sv_7", 0.898018 AS "sv_8", 0.377159 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.817335 AS "coeff", 0.783459 AS "sv_0", 0.095321 AS "sv_1", 0.135945 AS "sv_2", 0.858711 AS "sv_3", 0.240785 AS "sv_4", 0.083671 AS "sv_5", 0.052374 AS "sv_6", 0.422766 AS "sv_7", 0.019766 AS "sv_8", 0.833486 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 2.000000 AS "coeff", 0.652811 AS "sv_0", 0.757719 AS "sv_1", 0.306902 AS "sv_2", 0.828286 AS "sv_3", 0.763064 AS "sv_4", 0.859003 AS "sv_5", 0.873377 AS "sv_6", 0.146070 AS "sv_7", 0.894295 AS "sv_8", 0.086598 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 2.000000 AS "coeff", 0.226051 AS "sv_0", 0.939732 AS "sv_1", 0.731124 AS "sv_2", 0.837456 AS "sv_3", 0.782448 AS "sv_4", 0.352927 AS "sv_5", 0.183212 AS "sv_6", 0.843453 AS "sv_7", 0.185038 AS "sv_8", 0.248943 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 2.000000 AS "coeff", 0.764610 AS "sv_0", 0.378970 AS "sv_1", 0.823855 AS "sv_2", 0.913603 AS "sv_3", 0.553400 AS "sv_4", 0.055048 AS "sv_5", 0.588332 AS "sv_6", 0.361050 AS "sv_7", 0.814980 AS "sv_8", 0.123688 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -2.000000 AS "coeff", 0.368356 AS "sv_0", 0.189593 AS "sv_1", 0.403483 AS "sv_2", 0.670145 AS "sv_3", 0.411066 AS "sv_4", 0.464093 AS "sv_5", 0.307388 AS "sv_6", 0.840440 AS "sv_7", 0.462841 AS "sv_8", 0.813023 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -2.000000 AS "coeff", 0.888102 AS "sv_0", 0.149216 AS "sv_1", 0.426902 AS "sv_2", 0.180039 AS "sv_3", 0.792176 AS "sv_4", 0.085835 AS "sv_5", 0.603319 AS "sv_6", 0.653572 AS "sv_7", 0.865909 AS "sv_8", 0.986362 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.879556 AS "coeff", 0.825366 AS "sv_0", 0.284076 AS "sv_1", 0.971058 AS "sv_2", 0.191878 AS "sv_3", 0.387555 AS "sv_4", 0.062500 AS "sv_5", 0.206877 AS "sv_6", 0.900471 AS "sv_7", 0.780397 AS "sv_8", 0.355315 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -2.000000 AS "coeff", 0.235384 AS "sv_0", 0.117604 AS "sv_1", 0.514017 AS "sv_2", 0.633968 AS "sv_3", 0.618557 AS "sv_4", 0.121827 AS "sv_5", 0.576931 AS "sv_6", 0.091568 AS "sv_7", 0.527227 AS "sv_8", 0.211281 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.809747 AS "coeff", 0.834709 AS "sv_0", 0.502155 AS "sv_1", 0.670056 AS "sv_2", 0.169213 AS "sv_3", 0.154568 AS "sv_4", 0.685113 AS "sv_5", 0.954394 AS "sv_6", 0.848192 AS "sv_7", 0.038824 AS "sv_8", 0.113899 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.474443 AS "coeff", 0.287599 AS "sv_0", 0.939261 AS "sv_1", 0.380885 AS "sv_2", 0.731889 AS "sv_3", 0.052941 AS "sv_4", 0.942998 AS "sv_5", 0.527849 AS "sv_6", 0.812585 AS "sv_7", 0.329620 AS "sv_8", 0.003549 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -2.000000 AS "coeff", 0.992031 AS "sv_0", 0.233387 AS "sv_1", 0.782862 AS "sv_2", 0.234139 AS "sv_3", 0.252201 AS "sv_4", 0.042487 AS "sv_5", 0.353661 AS "sv_6", 0.403574 AS "sv_7", 0.461541 AS "sv_8", 0.895167 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.285085 AS "coeff", 0.020119 AS "sv_0", 0.541789 AS "sv_1", 0.751033 AS "sv_2", 0.996253 AS "sv_3", 0.717629 AS "sv_4", 0.991604 AS "sv_5", 0.412097 AS "sv_6", 0.708677 AS "sv_7", 0.950842 AS "sv_8", 0.143679 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -2.000000 AS "coeff", 0.830477 AS "sv_0", 0.389094 AS "sv_1", 0.475292 AS "sv_2", 0.147457 AS "sv_3", 0.363702 AS "sv_4", 0.741192 AS "sv_5", 0.291713 AS "sv_6", 0.634453 AS "sv_7", 0.479506 AS "sv_8", 0.035941 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 2.000000 AS "coeff", 0.399336 AS "sv_0", 0.628863 AS "sv_1", 0.606025 AS "sv_2", 0.837489 AS "sv_3", 0.772643 AS "sv_4", 0.257624 AS "sv_5", 0.166252 AS "sv_6", 0.040244 AS "sv_7", 0.521303 AS "sv_8", 0.455322 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 2.000000 AS "coeff", 0.634220 AS "sv_0", 0.486969 AS "sv_1", 0.969793 AS "sv_2", 0.441636 AS "sv_3", 0.814121 AS "sv_4", 0.690923 AS "sv_5", 0.194226 AS "sv_6", 0.716476 AS "sv_7", 0.697923 AS "sv_8", 0.212891 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.980626 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -1.117303 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
