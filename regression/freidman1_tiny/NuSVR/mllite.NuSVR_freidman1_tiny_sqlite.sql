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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", 0.652811 AS "sv_0", 0.757719 AS "sv_1", 0.306902 AS "sv_2", 0.828286 AS "sv_3", 0.763064 AS "sv_4", 0.859003 AS "sv_5", 0.873377 AS "sv_6", 0.146070 AS "sv_7", 0.894295 AS "sv_8", 0.086598 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.393959 AS "coeff", 0.226051 AS "sv_0", 0.939732 AS "sv_1", 0.731124 AS "sv_2", 0.837456 AS "sv_3", 0.782448 AS "sv_4", 0.352927 AS "sv_5", 0.183212 AS "sv_6", 0.843453 AS "sv_7", 0.185038 AS "sv_8", 0.248943 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.764610 AS "sv_0", 0.378970 AS "sv_1", 0.823855 AS "sv_2", 0.913603 AS "sv_3", 0.553400 AS "sv_4", 0.055048 AS "sv_5", 0.588332 AS "sv_6", 0.361050 AS "sv_7", 0.814980 AS "sv_8", 0.123688 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 0.368356 AS "sv_0", 0.189593 AS "sv_1", 0.403483 AS "sv_2", 0.670145 AS "sv_3", 0.411066 AS "sv_4", 0.464093 AS "sv_5", 0.307388 AS "sv_6", 0.840440 AS "sv_7", 0.462841 AS "sv_8", 0.813023 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", 0.888102 AS "sv_0", 0.149216 AS "sv_1", 0.426902 AS "sv_2", 0.180039 AS "sv_3", 0.792176 AS "sv_4", 0.085835 AS "sv_5", 0.603319 AS "sv_6", 0.653572 AS "sv_7", 0.865909 AS "sv_8", 0.986362 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", 0.235384 AS "sv_0", 0.117604 AS "sv_1", 0.514017 AS "sv_2", 0.633968 AS "sv_3", 0.618557 AS "sv_4", 0.121827 AS "sv_5", 0.576931 AS "sv_6", 0.091568 AS "sv_7", 0.527227 AS "sv_8", 0.211281 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", 0.830477 AS "sv_0", 0.389094 AS "sv_1", 0.475292 AS "sv_2", 0.147457 AS "sv_3", 0.363702 AS "sv_4", 0.741192 AS "sv_5", 0.291713 AS "sv_6", 0.634453 AS "sv_7", 0.479506 AS "sv_8", 0.035941 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.606041 AS "coeff", 0.399336 AS "sv_0", 0.628863 AS "sv_1", 0.606025 AS "sv_2", 0.837489 AS "sv_3", 0.772643 AS "sv_4", 0.257624 AS "sv_5", 0.166252 AS "sv_6", 0.040244 AS "sv_7", 0.521303 AS "sv_8", 0.455322 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", 0.634220 AS "sv_0", 0.486969 AS "sv_1", 0.969793 AS "sv_2", 0.441636 AS "sv_3", 0.814121 AS "sv_4", 0.690923 AS "sv_5", 0.194226 AS "sv_6", 0.716476 AS "sv_7", 0.697923 AS "sv_8", 0.212891 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -15.660941 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -1.117303 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
