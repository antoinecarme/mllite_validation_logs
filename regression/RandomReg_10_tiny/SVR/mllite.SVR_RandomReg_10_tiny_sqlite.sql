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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -0.478793 AS "sv_0", 2.502870 AS "sv_1", -0.103623 AS "sv_2", -1.067979 AS "sv_3", 0.855982 AS "sv_4", -2.105926 AS "sv_5", 1.322086 AS "sv_6", -0.735866 AS "sv_7", -1.647981 AS "sv_8", 0.327583 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 1.195055 AS "sv_0", -1.450382 AS "sv_1", -0.468737 AS "sv_2", 0.286455 AS "sv_3", 0.756183 AS "sv_4", 0.490645 AS "sv_5", -0.917510 AS "sv_6", 0.852386 AS "sv_7", 0.311669 AS "sv_8", 0.685749 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -0.648732 AS "sv_0", -0.880620 AS "sv_1", 0.202193 AS "sv_2", 0.525953 AS "sv_3", 0.655148 AS "sv_4", -0.647661 AS "sv_5", 0.272122 AS "sv_6", -2.437228 AS "sv_7", -0.548644 AS "sv_8", -0.541692 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", -0.612877 AS "sv_0", 0.045409 AS "sv_1", 0.558935 AS "sv_2", -1.340482 AS "sv_3", 1.208114 AS "sv_4", -0.791942 AS "sv_5", 0.923041 AS "sv_6", 0.228382 AS "sv_7", -0.258238 AS "sv_8", -0.097936 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -0.749045 AS "sv_0", -0.067925 AS "sv_1", 0.967609 AS "sv_2", -0.247653 AS "sv_3", -0.722261 AS "sv_4", 0.462846 AS "sv_5", 0.128738 AS "sv_6", 1.398441 AS "sv_7", 0.132868 AS "sv_8", -0.324339 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -0.695245 AS "sv_0", 0.529279 AS "sv_1", -0.012289 AS "sv_2", -2.414785 AS "sv_3", -0.786910 AS "sv_4", 0.363615 AS "sv_5", -0.447424 AS "sv_6", 1.592387 AS "sv_7", -0.321756 AS "sv_8", 0.330976 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -0.304252 AS "sv_0", -2.418750 AS "sv_1", 0.148738 AS "sv_2", -1.156809 AS "sv_3", 1.856268 AS "sv_4", 1.161673 AS "sv_5", 0.542158 AS "sv_6", -1.733213 AS "sv_7", -0.113479 AS "sv_8", -1.359821 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 2.688408 AS "sv_0", -0.118800 AS "sv_1", 0.359897 AS "sv_2", -0.489429 AS "sv_3", 0.996860 AS "sv_4", 0.599293 AS "sv_5", -1.045101 AS "sv_6", 2.004759 AS "sv_7", -0.462834 AS "sv_8", -0.129511 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", 1.092563 AS "sv_0", 0.944507 AS "sv_1", -1.920995 AS "sv_2", 0.188895 AS "sv_3", 0.929317 AS "sv_4", 0.175927 AS "sv_5", 0.125330 AS "sv_6", -1.050732 AS "sv_7", -1.156224 AS "sv_8", 1.876815 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", 0.316403 AS "sv_0", 0.549981 AS "sv_1", -0.016203 AS "sv_2", -1.294070 AS "sv_3", 0.278531 AS "sv_4", -0.274334 AS "sv_5", -0.927009 AS "sv_6", -0.240115 AS "sv_7", -1.068699 AS "sv_8", 0.480429 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", 0.375851 AS "sv_0", 2.459666 AS "sv_1", 2.331842 AS "sv_2", 1.801873 AS "sv_3", 0.883058 AS "sv_4", -1.030525 AS "sv_5", 2.246760 AS "sv_6", -1.930692 AS "sv_7", 0.035418 AS "sv_8", -1.673652 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", -0.361483 AS "sv_0", 0.387538 AS "sv_1", 0.595749 AS "sv_2", 1.134720 AS "sv_3", -1.522952 AS "sv_4", 0.311755 AS "sv_5", -0.186990 AS "sv_6", 0.556831 AS "sv_7", 0.382503 AS "sv_8", -1.402543 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", 1.174554 AS "sv_0", -0.660511 AS "sv_1", 1.243189 AS "sv_2", -2.320833 AS "sv_3", -0.455125 AS "sv_4", -1.586949 AS "sv_5", 0.584329 AS "sv_6", -1.353951 AS "sv_7", 0.417907 AS "sv_8", -0.191627 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", -0.406296 AS "sv_0", -1.114724 AS "sv_1", -0.690144 AS "sv_2", -0.042832 AS "sv_3", 0.738593 AS "sv_4", 0.753398 AS "sv_5", 1.110532 AS "sv_6", -0.872249 AS "sv_7", 1.572700 AS "sv_8", -0.719172 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", -0.119582 AS "sv_0", -0.489682 AS "sv_1", 0.671135 AS "sv_2", 0.153117 AS "sv_3", 0.091115 AS "sv_4", -2.239584 AS "sv_5", 1.111452 AS "sv_6", -0.253174 AS "sv_7", 1.680182 AS "sv_8", -0.191141 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -0.132642 AS "sv_0", -1.528494 AS "sv_1", 0.683175 AS "sv_2", -1.055146 AS "sv_3", 0.885415 AS "sv_4", -1.512621 AS "sv_5", 1.321708 AS "sv_6", -0.337466 AS "sv_7", -0.378033 AS "sv_8", -1.493023 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.936592 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.088583 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
