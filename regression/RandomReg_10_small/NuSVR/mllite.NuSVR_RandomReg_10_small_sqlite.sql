WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_small" AS "ADS" 
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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -0.648732 AS "sv_0", -0.880620 AS "sv_1", 0.202193 AS "sv_2", 0.525953 AS "sv_3", 0.655148 AS "sv_4", -0.647661 AS "sv_5", 0.272122 AS "sv_6", -2.437228 AS "sv_7", -0.548644 AS "sv_8", -0.541692 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -0.304252 AS "sv_0", -2.418750 AS "sv_1", 0.148738 AS "sv_2", -1.156809 AS "sv_3", 1.856268 AS "sv_4", 1.161673 AS "sv_5", 0.542158 AS "sv_6", -1.733213 AS "sv_7", -0.113479 AS "sv_8", -1.359821 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 2.688408 AS "sv_0", -0.118800 AS "sv_1", 0.359897 AS "sv_2", -0.489429 AS "sv_3", 0.996860 AS "sv_4", 0.599293 AS "sv_5", -1.045101 AS "sv_6", 2.004759 AS "sv_7", -0.462834 AS "sv_8", -0.129511 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", 0.375851 AS "sv_0", 2.459666 AS "sv_1", 2.331842 AS "sv_2", 1.801873 AS "sv_3", 0.883058 AS "sv_4", -1.030525 AS "sv_5", 2.246760 AS "sv_6", -1.930692 AS "sv_7", 0.035418 AS "sv_8", -1.673652 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", -0.633869 AS "sv_0", 0.649171 AS "sv_1", -0.429065 AS "sv_2", 0.272523 AS "sv_3", 0.196698 AS "sv_4", -2.142921 AS "sv_5", -0.339599 AS "sv_6", 1.631220 AS "sv_7", -0.304749 AS "sv_8", -1.457891 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", 1.310308 AS "sv_0", 0.643712 AS "sv_1", -0.298097 AS "sv_2", -1.490154 AS "sv_3", -0.054971 AS "sv_4", -0.032850 AS "sv_5", 1.903817 AS "sv_6", 1.941130 AS "sv_7", -0.032541 AS "sv_8", 1.639231 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", 0.335262 AS "sv_0", -0.707462 AS "sv_1", -1.092152 AS "sv_2", 0.398819 AS "sv_3", 0.575255 AS "sv_4", 2.060126 AS "sv_5", -0.139413 AS "sv_6", -0.972146 AS "sv_7", -0.959073 AS "sv_8", -0.534026 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 0.747064 AS "sv_0", -2.223174 AS "sv_1", -1.482916 AS "sv_2", -0.259218 AS "sv_3", 1.071458 AS "sv_4", 2.057120 AS "sv_5", 2.348745 AS "sv_6", -0.150693 AS "sv_7", 0.774286 AS "sv_8", 0.948420 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -0.442130 AS "sv_0", 1.306160 AS "sv_1", -1.825507 AS "sv_2", 1.100284 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", -1.264657 AS "sv_6", -1.279199 AS "sv_7", -0.018147 AS "sv_8", 0.535711 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", -0.128471 AS "sv_0", 1.252242 AS "sv_1", -0.897563 AS "sv_2", -1.315457 AS "sv_3", -0.515139 AS "sv_4", -1.523841 AS "sv_5", 2.153701 AS "sv_6", 1.226570 AS "sv_7", 1.315538 AS "sv_8", 0.499118 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", -1.198866 AS "sv_0", 0.482600 AS "sv_1", 0.476120 AS "sv_2", -0.286784 AS "sv_3", 0.512076 AS "sv_4", -2.769409 AS "sv_5", 0.302831 AS "sv_6", 0.379012 AS "sv_7", -1.783432 AS "sv_8", 0.156183 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", 0.756962 AS "sv_0", -0.248595 AS "sv_1", -0.982614 AS "sv_2", -0.114596 AS "sv_3", -0.829428 AS "sv_4", 1.586725 AS "sv_5", 0.939967 AS "sv_6", 1.024227 AS "sv_7", -0.034959 AS "sv_8", 0.652720 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", 0.060826 AS "sv_0", -0.170877 AS "sv_1", -0.139461 AS "sv_2", 0.539132 AS "sv_3", -0.188248 AS "sv_4", 1.301965 AS "sv_5", -1.535071 AS "sv_6", -1.050273 AS "sv_7", -1.064890 AS "sv_8", 1.796465 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", -0.187884 AS "sv_0", 0.376811 AS "sv_1", 0.964727 AS "sv_2", 1.419989 AS "sv_3", -1.552071 AS "sv_4", -1.074179 AS "sv_5", 1.707673 AS "sv_6", -0.037415 AS "sv_7", -1.786444 AS "sv_8", 0.682144 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", -1.715822 AS "sv_0", -0.023007 AS "sv_1", -0.007626 AS "sv_2", -0.506174 AS "sv_3", -0.354594 AS "sv_4", -0.697372 AS "sv_5", -0.307631 AS "sv_6", -0.587886 AS "sv_7", -0.643622 AS "sv_8", 1.632221 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -1.971602 AS "sv_0", -0.938173 AS "sv_1", 2.226125 AS "sv_2", -0.003377 AS "sv_3", 0.215672 AS "sv_4", -0.208693 AS "sv_5", -1.630048 AS "sv_6", -0.303311 AS "sv_7", 0.340269 AS "sv_8", -1.330856 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", 0.415124 AS "sv_0", -0.371661 AS "sv_1", -0.969137 AS "sv_2", -1.446053 AS "sv_3", 0.028876 AS "sv_4", -1.039658 AS "sv_5", -0.850981 AS "sv_6", -0.761545 AS "sv_7", 0.315557 AS "sv_8", 1.207732 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.000000 AS "coeff", 0.524310 AS "sv_0", 0.014469 AS "sv_1", 1.595374 AS "sv_2", -0.296571 AS "sv_3", -0.273733 AS "sv_4", -0.154071 AS "sv_5", -0.038919 AS "sv_6", 0.520472 AS "sv_7", -1.351202 AS "sv_8", 2.054339 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", 1.155595 AS "sv_0", 1.467125 AS "sv_1", -0.901383 AS "sv_2", -1.745011 AS "sv_3", -0.084406 AS "sv_4", -0.070069 AS "sv_5", 0.792448 AS "sv_6", -0.187857 AS "sv_7", -0.004986 AS "sv_8", -0.696601 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", -0.885169 AS "sv_0", 0.848285 AS "sv_1", 1.501806 AS "sv_2", 0.327893 AS "sv_3", -1.340787 AS "sv_4", 0.901386 AS "sv_5", 0.290686 AS "sv_6", 0.423296 AS "sv_7", -0.250458 AS "sv_8", 2.321921 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 1.000000 AS "coeff", 2.843495 AS "sv_0", 0.378264 AS "sv_1", -0.761153 AS "sv_2", -0.411312 AS "sv_3", -0.412171 AS "sv_4", -1.011106 AS "sv_5", -1.256169 AS "sv_6", -0.738574 AS "sv_7", 1.715647 AS "sv_8", 1.915487 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", -1.311457 AS "sv_0", -1.061103 AS "sv_1", -0.365120 AS "sv_2", 0.276259 AS "sv_3", 0.280019 AS "sv_4", 0.855360 AS "sv_5", -0.769762 AS "sv_6", 0.012511 AS "sv_7", -0.557793 AS "sv_8", -1.045207 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", -0.459859 AS "sv_0", -1.121887 AS "sv_1", 0.246469 AS "sv_2", -0.555671 AS "sv_3", 0.273551 AS "sv_4", -0.290018 AS "sv_5", -1.027835 AS "sv_6", -1.036359 AS "sv_7", 0.868149 AS "sv_8", 0.335445 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.000000 AS "coeff", 0.424181 AS "sv_0", 0.811608 AS "sv_1", -0.540987 AS "sv_2", -0.571047 AS "sv_3", 1.436532 AS "sv_4", 0.264788 AS "sv_5", 0.487881 AS "sv_6", 1.055724 AS "sv_7", 0.861992 AS "sv_8", -1.562200 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", 1.254984 AS "sv_0", -0.885393 AS "sv_1", -0.478961 AS "sv_2", -1.236692 AS "sv_3", -1.555016 AS "sv_4", -0.583413 AS "sv_5", 1.485080 AS "sv_6", 0.601391 AS "sv_7", 0.456315 AS "sv_8", -2.114021 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -1.000000 AS "coeff", -3.011217 AS "sv_0", -0.237807 AS "sv_1", -2.809668 AS "sv_2", 0.002221 AS "sv_3", 0.782830 AS "sv_4", 1.331153 AS "sv_5", 1.409284 AS "sv_6", 0.359371 AS "sv_7", -1.268436 AS "sv_8", 0.620385 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", -2.209772 AS "sv_0", 1.659902 AS "sv_1", 0.534130 AS "sv_2", -0.216920 AS "sv_3", -1.602769 AS "sv_4", -0.729682 AS "sv_5", -0.855423 AS "sv_6", 0.785937 AS "sv_7", 0.657501 AS "sv_8", 0.892502 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", 0.946236 AS "sv_0", 0.224542 AS "sv_1", 0.563936 AS "sv_2", -0.866098 AS "sv_3", -1.133546 AS "sv_4", -0.038214 AS "sv_5", 0.153602 AS "sv_6", 0.261961 AS "sv_7", 1.581772 AS "sv_8", 1.090296 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 1.000000 AS "coeff", 1.612639 AS "sv_0", 0.137010 AS "sv_1", 0.240862 AS "sv_2", -0.977647 AS "sv_3", -0.844649 AS "sv_4", 1.151000 AS "sv_5", -0.252873 AS "sv_6", 0.974510 AS "sv_7", -1.655895 AS "sv_8", -0.763196 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", -0.298941 AS "sv_0", 2.979427 AS "sv_1", -0.648334 AS "sv_2", -2.380690 AS "sv_3", 1.529984 AS "sv_4", -0.616551 AS "sv_5", -1.916239 AS "sv_6", -1.084344 AS "sv_7", -0.697196 AS "sv_8", -0.576447 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -0.949039 AS "sv_0", -0.622020 AS "sv_1", -0.116107 AS "sv_2", -0.779248 AS "sv_3", -1.497360 AS "sv_4", -0.673836 AS "sv_5", -0.997786 AS "sv_6", -1.144583 AS "sv_7", 0.638942 AS "sv_8", 0.178647 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 1.326070 AS "sv_0", 0.524081 AS "sv_1", 0.079805 AS "sv_2", -0.452211 AS "sv_3", -2.538231 AS "sv_4", 1.326972 AS "sv_5", -0.258162 AS "sv_6", -0.813953 AS "sv_7", 1.179245 AS "sv_8", 1.232050 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -13.816296 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.089082 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
