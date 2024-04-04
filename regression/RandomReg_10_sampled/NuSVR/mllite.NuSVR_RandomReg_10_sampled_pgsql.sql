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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -0.648732 AS "sv_0", -0.880620 AS "sv_1", 0.202193 AS "sv_2", 0.525953 AS "sv_3", 0.655148 AS "sv_4", -0.647661 AS "sv_5", 0.272122 AS "sv_6", -2.437228 AS "sv_7", -0.548644 AS "sv_8", -0.541692 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -0.304252 AS "sv_0", -2.418750 AS "sv_1", 0.148738 AS "sv_2", -1.156809 AS "sv_3", 1.856268 AS "sv_4", 1.161673 AS "sv_5", 0.542158 AS "sv_6", -1.733213 AS "sv_7", -0.113479 AS "sv_8", -1.359821 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 2.688408 AS "sv_0", -0.118800 AS "sv_1", 0.359897 AS "sv_2", -0.489429 AS "sv_3", 0.996860 AS "sv_4", 0.599293 AS "sv_5", -1.045101 AS "sv_6", 2.004759 AS "sv_7", -0.462834 AS "sv_8", -0.129511 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", 0.375851 AS "sv_0", 2.459666 AS "sv_1", 2.331842 AS "sv_2", 1.801873 AS "sv_3", 0.883058 AS "sv_4", -1.030525 AS "sv_5", 2.246760 AS "sv_6", -1.930692 AS "sv_7", 0.035418 AS "sv_8", -1.673652 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", 1.174554 AS "sv_0", -0.660511 AS "sv_1", 1.243189 AS "sv_2", -2.320833 AS "sv_3", -0.455125 AS "sv_4", -1.586949 AS "sv_5", 0.584329 AS "sv_6", -1.353951 AS "sv_7", 0.417907 AS "sv_8", -0.191627 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", -1.273629 AS "sv_0", 0.460004 AS "sv_1", 0.682084 AS "sv_2", 1.147776 AS "sv_3", 0.922568 AS "sv_4", 1.290484 AS "sv_5", 1.237666 AS "sv_6", 0.035166 AS "sv_7", -0.239901 AS "sv_8", 0.264996 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -0.633869 AS "sv_0", 0.649171 AS "sv_1", -0.429065 AS "sv_2", 0.272523 AS "sv_3", 0.196698 AS "sv_4", -2.142921 AS "sv_5", -0.339599 AS "sv_6", 1.631220 AS "sv_7", -0.304749 AS "sv_8", -1.457891 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 1.310308 AS "sv_0", 0.643712 AS "sv_1", -0.298097 AS "sv_2", -1.490154 AS "sv_3", -0.054971 AS "sv_4", -0.032850 AS "sv_5", 1.903817 AS "sv_6", 1.941130 AS "sv_7", -0.032541 AS "sv_8", 1.639231 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -0.757129 AS "coeff", 0.335262 AS "sv_0", -0.707462 AS "sv_1", -1.092152 AS "sv_2", 0.398819 AS "sv_3", 0.575255 AS "sv_4", 2.060126 AS "sv_5", -0.139413 AS "sv_6", -0.972146 AS "sv_7", -0.959073 AS "sv_8", -0.534026 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 0.747064 AS "sv_0", -2.223174 AS "sv_1", -1.482916 AS "sv_2", -0.259218 AS "sv_3", 1.071458 AS "sv_4", 2.057120 AS "sv_5", 2.348745 AS "sv_6", -0.150693 AS "sv_7", 0.774286 AS "sv_8", 0.948420 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", -0.442130 AS "sv_0", 1.306160 AS "sv_1", -1.825507 AS "sv_2", 1.100284 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", -1.264657 AS "sv_6", -1.279199 AS "sv_7", -0.018147 AS "sv_8", 0.535711 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", -0.128471 AS "sv_0", 1.252242 AS "sv_1", -0.897563 AS "sv_2", -1.315457 AS "sv_3", -0.515139 AS "sv_4", -1.523841 AS "sv_5", 2.153701 AS "sv_6", 1.226570 AS "sv_7", 1.315538 AS "sv_8", 0.499118 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", -1.198866 AS "sv_0", 0.482600 AS "sv_1", 0.476120 AS "sv_2", -0.286784 AS "sv_3", 0.512076 AS "sv_4", -2.769409 AS "sv_5", 0.302831 AS "sv_6", 0.379012 AS "sv_7", -1.783432 AS "sv_8", 0.156183 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", 0.756962 AS "sv_0", -0.248595 AS "sv_1", -0.982614 AS "sv_2", -0.114596 AS "sv_3", -0.829428 AS "sv_4", 1.586725 AS "sv_5", 0.939967 AS "sv_6", 1.024227 AS "sv_7", -0.034959 AS "sv_8", 0.652720 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", 0.060826 AS "sv_0", -0.170877 AS "sv_1", -0.139461 AS "sv_2", 0.539132 AS "sv_3", -0.188248 AS "sv_4", 1.301965 AS "sv_5", -1.535071 AS "sv_6", -1.050273 AS "sv_7", -1.064890 AS "sv_8", 1.796465 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", -0.187884 AS "sv_0", 0.376811 AS "sv_1", 0.964727 AS "sv_2", 1.419989 AS "sv_3", -1.552071 AS "sv_4", -1.074179 AS "sv_5", 1.707673 AS "sv_6", -0.037415 AS "sv_7", -1.786444 AS "sv_8", 0.682144 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", -1.715822 AS "sv_0", -0.023007 AS "sv_1", -0.007626 AS "sv_2", -0.506174 AS "sv_3", -0.354594 AS "sv_4", -0.697372 AS "sv_5", -0.307631 AS "sv_6", -0.587886 AS "sv_7", -0.643622 AS "sv_8", 1.632221 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", -1.971602 AS "sv_0", -0.938173 AS "sv_1", 2.226125 AS "sv_2", -0.003377 AS "sv_3", 0.215672 AS "sv_4", -0.208693 AS "sv_5", -1.630048 AS "sv_6", -0.303311 AS "sv_7", 0.340269 AS "sv_8", -1.330856 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.000000 AS "coeff", 0.415124 AS "sv_0", -0.371661 AS "sv_1", -0.969137 AS "sv_2", -1.446053 AS "sv_3", 0.028876 AS "sv_4", -1.039658 AS "sv_5", -0.850981 AS "sv_6", -0.761545 AS "sv_7", 0.315557 AS "sv_8", 1.207732 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", 0.524310 AS "sv_0", 0.014469 AS "sv_1", 1.595374 AS "sv_2", -0.296571 AS "sv_3", -0.273733 AS "sv_4", -0.154071 AS "sv_5", -0.038919 AS "sv_6", 0.520472 AS "sv_7", -1.351202 AS "sv_8", 2.054339 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 1.000000 AS "coeff", 1.155595 AS "sv_0", 1.467125 AS "sv_1", -0.901383 AS "sv_2", -1.745011 AS "sv_3", -0.084406 AS "sv_4", -0.070069 AS "sv_5", 0.792448 AS "sv_6", -0.187857 AS "sv_7", -0.004986 AS "sv_8", -0.696601 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", -0.885169 AS "sv_0", 0.848285 AS "sv_1", 1.501806 AS "sv_2", 0.327893 AS "sv_3", -1.340787 AS "sv_4", 0.901386 AS "sv_5", 0.290686 AS "sv_6", 0.423296 AS "sv_7", -0.250458 AS "sv_8", 2.321921 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", 2.843495 AS "sv_0", 0.378264 AS "sv_1", -0.761153 AS "sv_2", -0.411312 AS "sv_3", -0.412171 AS "sv_4", -1.011106 AS "sv_5", -1.256169 AS "sv_6", -0.738574 AS "sv_7", 1.715647 AS "sv_8", 1.915487 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", -1.311457 AS "sv_0", -1.061103 AS "sv_1", -0.365120 AS "sv_2", 0.276259 AS "sv_3", 0.280019 AS "sv_4", 0.855360 AS "sv_5", -0.769762 AS "sv_6", 0.012511 AS "sv_7", -0.557793 AS "sv_8", -1.045207 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", -0.459859 AS "sv_0", -1.121887 AS "sv_1", 0.246469 AS "sv_2", -0.555671 AS "sv_3", 0.273551 AS "sv_4", -0.290018 AS "sv_5", -1.027835 AS "sv_6", -1.036359 AS "sv_7", 0.868149 AS "sv_8", 0.335445 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 0.424181 AS "sv_0", 0.811608 AS "sv_1", -0.540987 AS "sv_2", -0.571047 AS "sv_3", 1.436532 AS "sv_4", 0.264788 AS "sv_5", 0.487881 AS "sv_6", 1.055724 AS "sv_7", 0.861992 AS "sv_8", -1.562200 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.000000 AS "coeff", 1.021716 AS "sv_0", -1.179920 AS "sv_1", -0.153318 AS "sv_2", -0.899906 AS "sv_3", -0.345148 AS "sv_4", 0.995313 AS "sv_5", 0.912151 AS "sv_6", 0.737222 AS "sv_7", -1.214633 AS "sv_8", -0.051075 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", 1.254984 AS "sv_0", -0.885393 AS "sv_1", -0.478961 AS "sv_2", -1.236692 AS "sv_3", -1.555016 AS "sv_4", -0.583413 AS "sv_5", 1.485080 AS "sv_6", 0.601391 AS "sv_7", 0.456315 AS "sv_8", -2.114021 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.000000 AS "coeff", -3.011217 AS "sv_0", -0.237807 AS "sv_1", -2.809668 AS "sv_2", 0.002221 AS "sv_3", 0.782830 AS "sv_4", 1.331153 AS "sv_5", 1.409284 AS "sv_6", 0.359371 AS "sv_7", -1.268436 AS "sv_8", 0.620385 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.000000 AS "coeff", 0.693461 AS "sv_0", 0.067277 AS "sv_1", -0.590666 AS "sv_2", 0.203376 AS "sv_3", 0.216461 AS "sv_4", -0.498485 AS "sv_5", 1.064389 AS "sv_6", 1.318963 AS "sv_7", -0.714298 AS "sv_8", -0.807691 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -2.209772 AS "sv_0", 1.659902 AS "sv_1", 0.534130 AS "sv_2", -0.216920 AS "sv_3", -1.602769 AS "sv_4", -0.729682 AS "sv_5", -0.855423 AS "sv_6", 0.785937 AS "sv_7", 0.657501 AS "sv_8", 0.892502 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 0.946236 AS "sv_0", 0.224542 AS "sv_1", 0.563936 AS "sv_2", -0.866098 AS "sv_3", -1.133546 AS "sv_4", -0.038214 AS "sv_5", 0.153602 AS "sv_6", 0.261961 AS "sv_7", 1.581772 AS "sv_8", 1.090296 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", 1.612639 AS "sv_0", 0.137010 AS "sv_1", 0.240862 AS "sv_2", -0.977647 AS "sv_3", -0.844649 AS "sv_4", 1.151000 AS "sv_5", -0.252873 AS "sv_6", 0.974510 AS "sv_7", -1.655895 AS "sv_8", -0.763196 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -1.000000 AS "coeff", -0.298941 AS "sv_0", 2.979427 AS "sv_1", -0.648334 AS "sv_2", -2.380690 AS "sv_3", 1.529984 AS "sv_4", -0.616551 AS "sv_5", -1.916239 AS "sv_6", -1.084344 AS "sv_7", -0.697196 AS "sv_8", -0.576447 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", -0.949039 AS "sv_0", -0.622020 AS "sv_1", -0.116107 AS "sv_2", -0.779248 AS "sv_3", -1.497360 AS "sv_4", -0.673836 AS "sv_5", -0.997786 AS "sv_6", -1.144583 AS "sv_7", 0.638942 AS "sv_8", 0.178647 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 1.000000 AS "coeff", 1.326070 AS "sv_0", 0.524081 AS "sv_1", 0.079805 AS "sv_2", -0.452211 AS "sv_3", -2.538231 AS "sv_4", 1.326972 AS "sv_5", -0.258162 AS "sv_6", -0.813953 AS "sv_7", 1.179245 AS "sv_8", 1.232050 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", -2.405949 AS "sv_0", -0.596539 AS "sv_1", -1.128497 AS "sv_2", -0.106956 AS "sv_3", 1.527979 AS "sv_4", 1.407338 AS "sv_5", -0.548176 AS "sv_6", -1.147983 AS "sv_7", 0.530755 AS "sv_8", -1.229026 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.000000 AS "coeff", -0.127645 AS "sv_0", -1.415597 AS "sv_1", 0.189105 AS "sv_2", 0.677687 AS "sv_3", -0.175369 AS "sv_4", -1.337310 AS "sv_5", -0.330152 AS "sv_6", -0.351191 AS "sv_7", -0.277215 AS "sv_8", 0.556343 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.000000 AS "coeff", 1.452620 AS "sv_0", 0.705628 AS "sv_1", 0.216214 AS "sv_2", -0.906795 AS "sv_3", -1.136883 AS "sv_4", 0.741056 AS "sv_5", 0.189440 AS "sv_6", 1.620434 AS "sv_7", 0.030137 AS "sv_8", -0.426529 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.000000 AS "coeff", -1.700999 AS "sv_0", -1.245986 AS "sv_1", -0.797353 AS "sv_2", -0.003768 AS "sv_3", 0.299899 AS "sv_4", -1.131430 AS "sv_5", -0.597494 AS "sv_6", -0.864654 AS "sv_7", 0.602584 AS "sv_8", -0.224870 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", -0.507328 AS "sv_0", 2.039658 AS "sv_1", 0.340708 AS "sv_2", 1.854352 AS "sv_3", -0.552528 AS "sv_4", 0.162848 AS "sv_5", 1.359676 AS "sv_6", -1.207968 AS "sv_7", -0.026892 AS "sv_8", -0.044482 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -1.000000 AS "coeff", -1.467998 AS "sv_0", -0.174562 AS "sv_1", 0.118430 AS "sv_2", -0.535004 AS "sv_3", -0.511882 AS "sv_4", -2.109080 AS "sv_5", -0.262456 AS "sv_6", 1.736880 AS "sv_7", -1.075503 AS "sv_8", -0.324785 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -1.000000 AS "coeff", -1.769224 AS "sv_0", -1.166158 AS "sv_1", -0.095046 AS "sv_2", 0.337465 AS "sv_3", -0.252757 AS "sv_4", -0.331412 AS "sv_5", -0.408593 AS "sv_6", 0.186620 AS "sv_7", -0.383287 AS "sv_8", -0.100959 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", 0.633331 AS "sv_0", -0.491662 AS "sv_1", 1.202712 AS "sv_2", 1.286438 AS "sv_3", 0.522782 AS "sv_4", -1.325794 AS "sv_5", 1.753920 AS "sv_6", 1.384409 AS "sv_7", 1.091936 AS "sv_8", 2.598730 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -0.242871 AS "coeff", -0.900380 AS "sv_0", 0.301181 AS "sv_1", -0.980283 AS "sv_2", -1.842340 AS "sv_3", 0.854715 AS "sv_4", -0.066711 AS "sv_5", -0.151060 AS "sv_6", 1.140195 AS "sv_7", -0.097234 AS "sv_8", 1.106599 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", 0.102174 AS "sv_0", 1.273097 AS "sv_1", -0.407573 AS "sv_2", -0.568025 AS "sv_3", -0.054702 AS "sv_4", 0.398208 AS "sv_5", 0.879137 AS "sv_6", 1.433457 AS "sv_7", 1.034127 AS "sv_8", -1.247617 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", -1.000000 AS "coeff", -1.516481 AS "sv_0", 0.244067 AS "sv_1", -0.841790 AS "sv_2", 1.161233 AS "sv_3", 0.424393 AS "sv_4", 0.159596 AS "sv_5", -0.551305 AS "sv_6", -0.435383 AS "sv_7", 0.331110 AS "sv_8", 0.009439 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -1.000000 AS "coeff", 0.610623 AS "sv_0", -0.975684 AS "sv_1", -0.559904 AS "sv_2", -0.006026 AS "sv_3", 0.068502 AS "sv_4", -0.479809 AS "sv_5", -2.144871 AS "sv_6", 0.474430 AS "sv_7", -0.178466 AS "sv_8", -0.498425 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.000000 AS "coeff", -1.211765 AS "sv_0", -0.495684 AS "sv_1", -1.097931 AS "sv_2", -1.186133 AS "sv_3", -0.424517 AS "sv_4", 0.927788 AS "sv_5", 0.937034 AS "sv_6", 0.617983 AS "sv_7", -1.065573 AS "sv_8", 0.698033 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", 1.734685 AS "sv_0", -0.600885 AS "sv_1", 0.017007 AS "sv_2", 2.556288 AS "sv_3", -0.730615 AS "sv_4", 0.283637 AS "sv_5", 0.362679 AS "sv_6", 0.344474 AS "sv_7", 0.658571 AS "sv_8", -1.038015 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 1.000000 AS "coeff", 0.764710 AS "sv_0", -0.131963 AS "sv_1", 2.929883 AS "sv_2", 0.541185 AS "sv_3", 0.398369 AS "sv_4", 0.432224 AS "sv_5", -0.203324 AS "sv_6", -0.310808 AS "sv_7", -0.580665 AS "sv_8", 1.869243 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", 1.000000 AS "coeff", 2.499587 AS "sv_0", -0.341454 AS "sv_1", 0.891432 AS "sv_2", 1.111856 AS "sv_3", 1.535207 AS "sv_4", -0.643536 AS "sv_5", 0.520371 AS "sv_6", -1.605136 AS "sv_7", -0.505035 AS "sv_8", 1.338524 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", -0.680067 AS "sv_0", 0.341840 AS "sv_1", -0.356485 AS "sv_2", -1.184388 AS "sv_3", -1.019673 AS "sv_4", -0.047720 AS "sv_5", 1.149795 AS "sv_6", -1.400137 AS "sv_7", -2.695808 AS "sv_8", -0.152515 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", -1.000000 AS "coeff", -0.219555 AS "sv_0", -0.642240 AS "sv_1", -1.664284 AS "sv_2", -0.318518 AS "sv_3", -0.399825 AS "sv_4", -1.013035 AS "sv_5", -2.511321 AS "sv_6", 1.036544 AS "sv_7", 1.729494 AS "sv_8", 2.465637 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 1.000000 AS "coeff", 0.336069 AS "sv_0", 2.633529 AS "sv_1", -0.656871 AS "sv_2", 1.068770 AS "sv_3", 0.709615 AS "sv_4", -0.069356 AS "sv_5", 0.424737 AS "sv_6", 0.507780 AS "sv_7", -1.191376 AS "sv_8", -0.430199 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", -0.166372 AS "sv_0", -0.130838 AS "sv_1", -1.004811 AS "sv_2", 0.378066 AS "sv_3", -1.769074 AS "sv_4", -1.274597 AS "sv_5", -0.348532 AS "sv_6", -1.408014 AS "sv_7", 1.694823 AS "sv_8", -1.391582 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 1.000000 AS "coeff", 1.972422 AS "sv_0", -1.549817 AS "sv_1", -0.971554 AS "sv_2", -0.308196 AS "sv_3", 0.511942 AS "sv_4", 1.477210 AS "sv_5", 0.605879 AS "sv_6", 0.952018 AS "sv_7", 1.797731 AS "sv_8", 0.343225 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", -1.314494 AS "sv_0", -0.648566 AS "sv_1", 0.589049 AS "sv_2", 0.538790 AS "sv_3", 0.527542 AS "sv_4", -1.364554 AS "sv_5", -0.324772 AS "sv_6", 0.110675 AS "sv_7", 0.062874 AS "sv_8", 0.637909 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.000000 AS "coeff", 1.874425 AS "sv_0", 0.992036 AS "sv_1", -0.551415 AS "sv_2", -1.370129 AS "sv_3", 0.120467 AS "sv_4", 0.812942 AS "sv_5", 0.036991 AS "sv_6", -0.741349 AS "sv_7", -1.886467 AS "sv_8", 1.654243 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.000000 AS "coeff", 0.489235 AS "sv_0", 0.400164 AS "sv_1", 1.293302 AS "sv_2", 0.296031 AS "sv_3", 0.045590 AS "sv_4", 0.677102 AS "sv_5", 0.347311 AS "sv_6", 0.088336 AS "sv_7", -0.465157 AS "sv_8", 0.657557 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", -1.195755 AS "sv_0", -0.821789 AS "sv_1", 0.664526 AS "sv_2", -0.838979 AS "sv_3", -0.912095 AS "sv_4", 0.900980 AS "sv_5", -0.866091 AS "sv_6", 0.101323 AS "sv_7", 0.629155 AS "sv_8", -0.737221 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.000000 AS "coeff", -0.801091 AS "sv_0", -0.935738 AS "sv_1", 1.473933 AS "sv_2", -0.087027 AS "sv_3", -0.888636 AS "sv_4", 0.132174 AS "sv_5", -1.740075 AS "sv_6", -0.222850 AS "sv_7", -1.451853 AS "sv_8", -0.691932 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.000000 AS "coeff", -2.214869 AS "sv_0", 2.759677 AS "sv_1", 0.857991 AS "sv_2", -0.659019 AS "sv_3", 1.039180 AS "sv_4", -1.045347 AS "sv_5", -0.662365 AS "sv_6", -0.491267 AS "sv_7", -0.167392 AS "sv_8", -0.160259 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 1.000000 AS "coeff", 0.189147 AS "sv_0", 0.715404 AS "sv_1", -0.847843 AS "sv_2", -0.718441 AS "sv_3", -0.078793 AS "sv_4", -0.837326 AS "sv_5", 2.597545 AS "sv_6", -1.143960 AS "sv_7", -1.081071 AS "sv_8", 0.847987 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -1.000000 AS "coeff", 0.080743 AS "sv_0", 0.950698 AS "sv_1", -0.216079 AS "sv_2", -0.834473 AS "sv_3", -1.292433 AS "sv_4", -1.925633 AS "sv_5", -2.167341 AS "sv_6", 1.616820 AS "sv_7", -2.388599 AS "sv_8", 0.184237 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - 0.701752 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.094043 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
