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
     SELECT 1 AS "sv_idx", 0.167186 AS "coeff", 0.226051 AS "sv_0", 0.939732 AS "sv_1", 0.731124 AS "sv_2", 0.837456 AS "sv_3", 0.782448 AS "sv_4", 0.352927 AS "sv_5", 0.183212 AS "sv_6", 0.843453 AS "sv_7", 0.185038 AS "sv_8", 0.248943 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.764610 AS "sv_0", 0.378970 AS "sv_1", 0.823855 AS "sv_2", 0.913603 AS "sv_3", 0.553400 AS "sv_4", 0.055048 AS "sv_5", 0.588332 AS "sv_6", 0.361050 AS "sv_7", 0.814980 AS "sv_8", 0.123688 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 0.368356 AS "sv_0", 0.189593 AS "sv_1", 0.403483 AS "sv_2", 0.670145 AS "sv_3", 0.411066 AS "sv_4", 0.464093 AS "sv_5", 0.307388 AS "sv_6", 0.840440 AS "sv_7", 0.462841 AS "sv_8", 0.813023 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", 0.888102 AS "sv_0", 0.149216 AS "sv_1", 0.426902 AS "sv_2", 0.180039 AS "sv_3", 0.792176 AS "sv_4", 0.085835 AS "sv_5", 0.603319 AS "sv_6", 0.653572 AS "sv_7", 0.865909 AS "sv_8", 0.986362 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", 0.235384 AS "sv_0", 0.117604 AS "sv_1", 0.514017 AS "sv_2", 0.633968 AS "sv_3", 0.618557 AS "sv_4", 0.121827 AS "sv_5", 0.576931 AS "sv_6", 0.091568 AS "sv_7", 0.527227 AS "sv_8", 0.211281 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.452518 AS "coeff", 0.399336 AS "sv_0", 0.628863 AS "sv_1", 0.606025 AS "sv_2", 0.837489 AS "sv_3", 0.772643 AS "sv_4", 0.257624 AS "sv_5", 0.166252 AS "sv_6", 0.040244 AS "sv_7", 0.521303 AS "sv_8", 0.455322 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 0.634220 AS "sv_0", 0.486969 AS "sv_1", 0.969793 AS "sv_2", 0.441636 AS "sv_3", 0.814121 AS "sv_4", 0.690923 AS "sv_5", 0.194226 AS "sv_6", 0.716476 AS "sv_7", 0.697923 AS "sv_8", 0.212891 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.641231 AS "coeff", 0.772433 AS "sv_0", 0.764512 AS "sv_1", 0.960643 AS "sv_2", 0.302594 AS "sv_3", 0.292439 AS "sv_4", 0.441128 AS "sv_5", 0.688884 AS "sv_6", 0.145406 AS "sv_7", 0.532042 AS "sv_8", 0.749330 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 0.604811 AS "sv_0", 0.984899 AS "sv_1", 0.598416 AS "sv_2", 0.783427 AS "sv_3", 0.739098 AS "sv_4", 0.893643 AS "sv_5", 0.193266 AS "sv_6", 0.096950 AS "sv_7", 0.547724 AS "sv_8", 0.389115 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", 0.480054 AS "sv_0", 0.664308 AS "sv_1", 0.985340 AS "sv_2", 0.567078 AS "sv_3", 0.994149 AS "sv_4", 0.780890 AS "sv_5", 0.232756 AS "sv_6", 0.567089 AS "sv_7", 0.093123 AS "sv_8", 0.031981 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -1.000000 AS "coeff", 0.257439 AS "sv_0", 0.499463 AS "sv_1", 0.260146 AS "sv_2", 0.239901 AS "sv_3", 0.156860 AS "sv_4", 0.590953 AS "sv_5", 0.077376 AS "sv_6", 0.340943 AS "sv_7", 0.943330 AS "sv_8", 0.056908 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", 0.010500 AS "sv_0", 0.200190 AS "sv_1", 0.192366 AS "sv_2", 0.175831 AS "sv_3", 0.507530 AS "sv_4", 0.721218 AS "sv_5", 0.719388 AS "sv_6", 0.114770 AS "sv_7", 0.417354 AS "sv_8", 0.783886 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", 0.341289 AS "sv_0", 0.059388 AS "sv_1", 0.275743 AS "sv_2", 0.885258 AS "sv_3", 0.018723 AS "sv_4", 0.985191 AS "sv_5", 0.272452 AS "sv_6", 0.138076 AS "sv_7", 0.832781 AS "sv_8", 0.073518 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", 0.759884 AS "sv_0", 0.645603 AS "sv_1", 0.858346 AS "sv_2", 0.414192 AS "sv_3", 0.746659 AS "sv_4", 0.476919 AS "sv_5", 0.729435 AS "sv_6", 0.314409 AS "sv_7", 0.340241 AS "sv_8", 0.086284 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", 0.361047 AS "sv_0", 0.160106 AS "sv_1", 0.219158 AS "sv_2", 0.010201 AS "sv_3", 0.471566 AS "sv_4", 0.488280 AS "sv_5", 0.020705 AS "sv_6", 0.852158 AS "sv_7", 0.667965 AS "sv_8", 0.378921 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -0.937348 AS "coeff", 0.707837 AS "sv_0", 0.144074 AS "sv_1", 0.012616 AS "sv_2", 0.030879 AS "sv_3", 0.479881 AS "sv_4", 0.891077 AS "sv_5", 0.451813 AS "sv_6", 0.845402 AS "sv_7", 0.259907 AS "sv_8", 0.331544 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", 0.387013 AS "sv_0", 0.186144 AS "sv_1", 0.843217 AS "sv_2", 0.273500 AS "sv_3", 0.175361 AS "sv_4", 0.010880 AS "sv_5", 0.338375 AS "sv_6", 0.530580 AS "sv_7", 0.739766 AS "sv_8", 0.316235 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -0.222402 AS "coeff", 0.468597 AS "sv_0", 0.178458 AS "sv_1", 0.334268 AS "sv_2", 0.726481 AS "sv_3", 0.251948 AS "sv_4", 0.416145 AS "sv_5", 0.033750 AS "sv_6", 0.950958 AS "sv_7", 0.192608 AS "sv_8", 0.099539 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", 0.705919 AS "sv_0", 0.335669 AS "sv_1", 0.829238 AS "sv_2", 0.863314 AS "sv_3", 0.287537 AS "sv_4", 0.639683 AS "sv_5", 0.745771 AS "sv_6", 0.787558 AS "sv_7", 0.582418 AS "sv_8", 0.363306 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", 0.975417 AS "sv_0", 0.002660 AS "sv_1", 0.366127 AS "sv_2", 0.434512 AS "sv_3", 0.945664 AS "sv_4", 0.329085 AS "sv_5", 0.852323 AS "sv_6", 0.591908 AS "sv_7", 0.151237 AS "sv_8", 0.221160 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", 0.479223 AS "sv_0", 0.684603 AS "sv_1", 0.324254 AS "sv_2", 0.801230 AS "sv_3", 0.871487 AS "sv_4", 0.937278 AS "sv_5", 0.292127 AS "sv_6", 0.900755 AS "sv_7", 0.827968 AS "sv_8", 0.568796 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", 0.457487 AS "sv_0", 0.414129 AS "sv_1", 0.014223 AS "sv_2", 0.378696 AS "sv_3", 0.893256 AS "sv_4", 0.937627 AS "sv_5", 0.113897 AS "sv_6", 0.460844 AS "sv_7", 0.008495 AS "sv_8", 0.149271 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.000000 AS "coeff", 0.734481 AS "sv_0", 0.482054 AS "sv_1", 0.789831 AS "sv_2", 0.806913 AS "sv_3", 0.681106 AS "sv_4", 0.602843 AS "sv_5", 0.333277 AS "sv_6", 0.147743 AS "sv_7", 0.020703 AS "sv_8", 0.509223 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", 0.993297 AS "sv_0", 0.015448 AS "sv_1", 0.073074 AS "sv_2", 0.123516 AS "sv_3", 0.766918 AS "sv_4", 0.032547 AS "sv_5", 0.970468 AS "sv_6", 0.585911 AS "sv_7", 0.580508 AS "sv_8", 0.025791 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 0.437265 AS "coeff", 0.774018 AS "sv_0", 0.202348 AS "sv_1", 0.142057 AS "sv_2", 0.873570 AS "sv_3", 0.310546 AS "sv_4", 0.683928 AS "sv_5", 0.650031 AS "sv_6", 0.492748 AS "sv_7", 0.253903 AS "sv_8", 0.786608 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", 0.343479 AS "sv_0", 0.049133 AS "sv_1", 0.720020 AS "sv_2", 0.841468 AS "sv_3", 0.199002 AS "sv_4", 0.085445 AS "sv_5", 0.635873 AS "sv_6", 0.354635 AS "sv_7", 0.971117 AS "sv_8", 0.361298 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", 0.366207 AS "sv_0", 0.096199 AS "sv_1", 0.520676 AS "sv_2", 0.250113 AS "sv_3", 0.155164 AS "sv_4", 0.752654 AS "sv_5", 0.007439 AS "sv_6", 0.025310 AS "sv_7", 0.924844 AS "sv_8", 0.961402 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.802660 AS "coeff", 0.827680 AS "sv_0", 0.741216 AS "sv_1", 0.967589 AS "sv_2", 0.359411 AS "sv_3", 0.243325 AS "sv_4", 0.911669 AS "sv_5", 0.829354 AS "sv_6", 0.787352 AS "sv_7", 0.791034 AS "sv_8", 0.782214 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.000000 AS "coeff", 0.663564 AS "sv_0", 0.399281 AS "sv_1", 0.158547 AS "sv_2", 0.930965 AS "sv_3", 0.846977 AS "sv_4", 0.986627 AS "sv_5", 0.132816 AS "sv_6", 0.426558 AS "sv_7", 0.999950 AS "sv_8", 0.674509 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -0.829068 AS "coeff", 0.849990 AS "sv_0", 0.916139 AS "sv_1", 0.864912 AS "sv_2", 0.228437 AS "sv_3", 0.340806 AS "sv_4", 0.227606 AS "sv_5", 0.447862 AS "sv_6", 0.068150 AS "sv_7", 0.472487 AS "sv_8", 0.104133 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 0.499141 AS "coeff", 0.823836 AS "sv_0", 0.504187 AS "sv_1", 0.034569 AS "sv_2", 0.308381 AS "sv_3", 0.003390 AS "sv_4", 0.039580 AS "sv_5", 0.879070 AS "sv_6", 0.101112 AS "sv_7", 0.747507 AS "sv_8", 0.958859 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", -1.000000 AS "coeff", 0.221163 AS "sv_0", 0.634851 AS "sv_1", 0.675740 AS "sv_2", 0.393459 AS "sv_3", 0.593254 AS "sv_4", 0.877299 AS "sv_5", 0.742170 AS "sv_6", 0.322286 AS "sv_7", 0.749472 AS "sv_8", 0.996954 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -0.011183 AS "coeff", 0.509773 AS "sv_0", 0.341051 AS "sv_1", 0.395373 AS "sv_2", 0.566571 AS "sv_3", 0.346628 AS "sv_4", 0.931609 AS "sv_5", 0.107350 AS "sv_6", 0.085550 AS "sv_7", 0.260950 AS "sv_8", 0.128551 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 1.000000 AS "coeff", 0.246418 AS "sv_0", 0.754389 AS "sv_1", 0.264436 AS "sv_2", 0.996826 AS "sv_3", 0.880107 AS "sv_4", 0.261948 AS "sv_5", 0.595422 AS "sv_6", 0.306809 AS "sv_7", 0.390167 AS "sv_8", 0.471118 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -1.000000 AS "coeff", 0.804101 AS "sv_0", 0.103050 AS "sv_1", 0.728795 AS "sv_2", 0.068628 AS "sv_3", 0.567613 AS "sv_4", 0.648562 AS "sv_5", 0.495718 AS "sv_6", 0.628355 AS "sv_7", 0.398738 AS "sv_8", 0.185100 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 1.000000 AS "coeff", 0.133169 AS "sv_0", 0.898182 AS "sv_1", 0.993566 AS "sv_2", 0.694676 AS "sv_3", 0.756484 AS "sv_4", 0.193983 AS "sv_5", 0.035123 AS "sv_6", 0.033415 AS "sv_7", 0.014059 AS "sv_8", 0.907372 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.879629 AS dot_product
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
