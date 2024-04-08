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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -0.478793 AS "sv_0", 2.502870 AS "sv_1", -0.103623 AS "sv_2", -1.067979 AS "sv_3", 0.855982 AS "sv_4", -2.105926 AS "sv_5", 1.322086 AS "sv_6", -0.735866 AS "sv_7", -1.647981 AS "sv_8", 0.327583 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 1.195055 AS "sv_0", -1.450382 AS "sv_1", -0.468737 AS "sv_2", 0.286455 AS "sv_3", 0.756183 AS "sv_4", 0.490645 AS "sv_5", -0.917510 AS "sv_6", 0.852386 AS "sv_7", 0.311669 AS "sv_8", 0.685749 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -0.648732 AS "sv_0", -0.880620 AS "sv_1", 0.202193 AS "sv_2", 0.525953 AS "sv_3", 0.655148 AS "sv_4", -0.647661 AS "sv_5", 0.272122 AS "sv_6", -2.437228 AS "sv_7", -0.548644 AS "sv_8", -0.541692 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -0.612877 AS "sv_0", 0.045409 AS "sv_1", 0.558935 AS "sv_2", -1.340482 AS "sv_3", 1.208114 AS "sv_4", -0.791942 AS "sv_5", 0.923041 AS "sv_6", 0.228382 AS "sv_7", -0.258238 AS "sv_8", -0.097936 AS "sv_9"
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
     SELECT 11 AS "sv_idx", -1.000000 AS "coeff", -0.361483 AS "sv_0", 0.387538 AS "sv_1", 0.595749 AS "sv_2", 1.134720 AS "sv_3", -1.522952 AS "sv_4", 0.311755 AS "sv_5", -0.186990 AS "sv_6", 0.556831 AS "sv_7", 0.382503 AS "sv_8", -1.402543 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", 1.174554 AS "sv_0", -0.660511 AS "sv_1", 1.243189 AS "sv_2", -2.320833 AS "sv_3", -0.455125 AS "sv_4", -1.586949 AS "sv_5", 0.584329 AS "sv_6", -1.353951 AS "sv_7", 0.417907 AS "sv_8", -0.191627 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", -0.406296 AS "sv_0", -1.114724 AS "sv_1", -0.690144 AS "sv_2", -0.042832 AS "sv_3", 0.738593 AS "sv_4", 0.753398 AS "sv_5", 1.110532 AS "sv_6", -0.872249 AS "sv_7", 1.572700 AS "sv_8", -0.719172 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", -0.119582 AS "sv_0", -0.489682 AS "sv_1", 0.671135 AS "sv_2", 0.153117 AS "sv_3", 0.091115 AS "sv_4", -2.239584 AS "sv_5", 1.111452 AS "sv_6", -0.253174 AS "sv_7", 1.680182 AS "sv_8", -0.191141 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -0.132642 AS "sv_0", -1.528494 AS "sv_1", 0.683175 AS "sv_2", -1.055146 AS "sv_3", 0.885415 AS "sv_4", -1.512621 AS "sv_5", 1.321708 AS "sv_6", -0.337466 AS "sv_7", -0.378033 AS "sv_8", -1.493023 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.000000 AS "coeff", -0.907102 AS "sv_0", 1.303877 AS "sv_1", -1.008951 AS "sv_2", 1.167445 AS "sv_3", 0.288001 AS "sv_4", -0.050094 AS "sv_5", 2.091479 AS "sv_6", -0.187530 AS "sv_7", 1.633787 AS "sv_8", -1.032467 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.000000 AS "coeff", -1.273629 AS "sv_0", 0.460004 AS "sv_1", 0.682084 AS "sv_2", 1.147776 AS "sv_3", 0.922568 AS "sv_4", 1.290484 AS "sv_5", 1.237666 AS "sv_6", 0.035166 AS "sv_7", -0.239901 AS "sv_8", 0.264996 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.000000 AS "coeff", -0.633869 AS "sv_0", 0.649171 AS "sv_1", -0.429065 AS "sv_2", 0.272523 AS "sv_3", 0.196698 AS "sv_4", -2.142921 AS "sv_5", -0.339599 AS "sv_6", 1.631220 AS "sv_7", -0.304749 AS "sv_8", -1.457891 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", 1.310308 AS "sv_0", 0.643712 AS "sv_1", -0.298097 AS "sv_2", -1.490154 AS "sv_3", -0.054971 AS "sv_4", -0.032850 AS "sv_5", 1.903817 AS "sv_6", 1.941130 AS "sv_7", -0.032541 AS "sv_8", 1.639231 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", 0.335262 AS "sv_0", -0.707462 AS "sv_1", -1.092152 AS "sv_2", 0.398819 AS "sv_3", 0.575255 AS "sv_4", 2.060126 AS "sv_5", -0.139413 AS "sv_6", -0.972146 AS "sv_7", -0.959073 AS "sv_8", -0.534026 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", 0.747064 AS "sv_0", -2.223174 AS "sv_1", -1.482916 AS "sv_2", -0.259218 AS "sv_3", 1.071458 AS "sv_4", 2.057120 AS "sv_5", 2.348745 AS "sv_6", -0.150693 AS "sv_7", 0.774286 AS "sv_8", 0.948420 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", 1.001108 AS "sv_0", 1.397044 AS "sv_1", 1.169186 AS "sv_2", 2.766832 AS "sv_3", -1.017981 AS "sv_4", 0.805435 AS "sv_5", -1.920587 AS "sv_6", -0.736221 AS "sv_7", -0.373943 AS "sv_8", -0.789666 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", -0.442130 AS "sv_0", 1.306160 AS "sv_1", -1.825507 AS "sv_2", 1.100284 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", -1.264657 AS "sv_6", -1.279199 AS "sv_7", -0.018147 AS "sv_8", 0.535711 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", -0.128471 AS "sv_0", 1.252242 AS "sv_1", -0.897563 AS "sv_2", -1.315457 AS "sv_3", -0.515139 AS "sv_4", -1.523841 AS "sv_5", 2.153701 AS "sv_6", 1.226570 AS "sv_7", 1.315538 AS "sv_8", 0.499118 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -1.000000 AS "coeff", -1.198866 AS "sv_0", 0.482600 AS "sv_1", 0.476120 AS "sv_2", -0.286784 AS "sv_3", 0.512076 AS "sv_4", -2.769409 AS "sv_5", 0.302831 AS "sv_6", 0.379012 AS "sv_7", -1.783432 AS "sv_8", 0.156183 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.000000 AS "coeff", 0.756962 AS "sv_0", -0.248595 AS "sv_1", -0.982614 AS "sv_2", -0.114596 AS "sv_3", -0.829428 AS "sv_4", 1.586725 AS "sv_5", 0.939967 AS "sv_6", 1.024227 AS "sv_7", -0.034959 AS "sv_8", 0.652720 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", 0.060826 AS "sv_0", -0.170877 AS "sv_1", -0.139461 AS "sv_2", 0.539132 AS "sv_3", -0.188248 AS "sv_4", 1.301965 AS "sv_5", -1.535071 AS "sv_6", -1.050273 AS "sv_7", -1.064890 AS "sv_8", 1.796465 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 1.000000 AS "coeff", -0.187884 AS "sv_0", 0.376811 AS "sv_1", 0.964727 AS "sv_2", 1.419989 AS "sv_3", -1.552071 AS "sv_4", -1.074179 AS "sv_5", 1.707673 AS "sv_6", -0.037415 AS "sv_7", -1.786444 AS "sv_8", 0.682144 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", -1.715822 AS "sv_0", -0.023007 AS "sv_1", -0.007626 AS "sv_2", -0.506174 AS "sv_3", -0.354594 AS "sv_4", -0.697372 AS "sv_5", -0.307631 AS "sv_6", -0.587886 AS "sv_7", -0.643622 AS "sv_8", 1.632221 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -0.638819 AS "sv_0", 0.585976 AS "sv_1", -0.174185 AS "sv_2", 0.968145 AS "sv_3", 0.450044 AS "sv_4", 1.077056 AS "sv_5", 0.321175 AS "sv_6", -0.426124 AS "sv_7", -2.999114 AS "sv_8", 0.562343 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.000000 AS "coeff", -1.971602 AS "sv_0", -0.938173 AS "sv_1", 2.226125 AS "sv_2", -0.003377 AS "sv_3", 0.215672 AS "sv_4", -0.208693 AS "sv_5", -1.630048 AS "sv_6", -0.303311 AS "sv_7", 0.340269 AS "sv_8", -1.330856 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", 0.491433 AS "sv_0", -2.286109 AS "sv_1", 0.188742 AS "sv_2", 0.387787 AS "sv_3", 0.087930 AS "sv_4", 1.280097 AS "sv_5", 0.715034 AS "sv_6", -0.635641 AS "sv_7", 1.369167 AS "sv_8", 0.305587 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -1.000000 AS "coeff", 0.415124 AS "sv_0", -0.371661 AS "sv_1", -0.969137 AS "sv_2", -1.446053 AS "sv_3", 0.028876 AS "sv_4", -1.039658 AS "sv_5", -0.850981 AS "sv_6", -0.761545 AS "sv_7", 0.315557 AS "sv_8", 1.207732 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 1.000000 AS "coeff", 0.942791 AS "sv_0", 0.566217 AS "sv_1", -0.409699 AS "sv_2", -0.562435 AS "sv_3", -0.525310 AS "sv_4", 0.810451 AS "sv_5", 0.002504 AS "sv_6", -0.097546 AS "sv_7", 0.078434 AS "sv_8", -0.405703 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 1.000000 AS "coeff", 0.309351 AS "sv_0", -0.433129 AS "sv_1", 0.361801 AS "sv_2", 1.764901 AS "sv_3", -1.205651 AS "sv_4", 0.627333 AS "sv_5", -0.308706 AS "sv_6", 0.239518 AS "sv_7", 1.708119 AS "sv_8", -0.423967 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", -0.409889 AS "sv_0", -0.554347 AS "sv_1", 1.577230 AS "sv_2", 0.414990 AS "sv_3", 0.582054 AS "sv_4", -0.610719 AS "sv_5", -0.238954 AS "sv_6", -0.433714 AS "sv_7", -0.985622 AS "sv_8", 0.488046 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.000000 AS "coeff", 0.524310 AS "sv_0", 0.014469 AS "sv_1", 1.595374 AS "sv_2", -0.296571 AS "sv_3", -0.273733 AS "sv_4", -0.154071 AS "sv_5", -0.038919 AS "sv_6", 0.520472 AS "sv_7", -1.351202 AS "sv_8", 2.054339 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.000000 AS "coeff", 1.155595 AS "sv_0", 1.467125 AS "sv_1", -0.901383 AS "sv_2", -1.745011 AS "sv_3", -0.084406 AS "sv_4", -0.070069 AS "sv_5", 0.792448 AS "sv_6", -0.187857 AS "sv_7", -0.004986 AS "sv_8", -0.696601 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.000000 AS "coeff", 0.493729 AS "sv_0", -1.992440 AS "sv_1", 1.310940 AS "sv_2", 0.766259 AS "sv_3", -0.075654 AS "sv_4", 0.256966 AS "sv_5", 0.131293 AS "sv_6", -1.402526 AS "sv_7", 1.267734 AS "sv_8", -2.135257 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", 0.031861 AS "sv_0", 0.414936 AS "sv_1", 1.266982 AS "sv_2", 0.027646 AS "sv_3", -0.967521 AS "sv_4", 0.497398 AS "sv_5", -0.870037 AS "sv_6", 0.008158 AS "sv_7", 0.075771 AS "sv_8", 0.466242 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "coeff", -0.885169 AS "sv_0", 0.848285 AS "sv_1", 1.501806 AS "sv_2", 0.327893 AS "sv_3", -1.340787 AS "sv_4", 0.901386 AS "sv_5", 0.290686 AS "sv_6", 0.423296 AS "sv_7", -0.250458 AS "sv_8", 2.321921 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 1.000000 AS "coeff", 2.843495 AS "sv_0", 0.378264 AS "sv_1", -0.761153 AS "sv_2", -0.411312 AS "sv_3", -0.412171 AS "sv_4", -1.011106 AS "sv_5", -1.256169 AS "sv_6", -0.738574 AS "sv_7", 1.715647 AS "sv_8", 1.915487 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", -1.000000 AS "coeff", -1.311457 AS "sv_0", -1.061103 AS "sv_1", -0.365120 AS "sv_2", 0.276259 AS "sv_3", 0.280019 AS "sv_4", 0.855360 AS "sv_5", -0.769762 AS "sv_6", 0.012511 AS "sv_7", -0.557793 AS "sv_8", -1.045207 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.000000 AS "coeff", -0.459859 AS "sv_0", -1.121887 AS "sv_1", 0.246469 AS "sv_2", -0.555671 AS "sv_3", 0.273551 AS "sv_4", -0.290018 AS "sv_5", -1.027835 AS "sv_6", -1.036359 AS "sv_7", 0.868149 AS "sv_8", 0.335445 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", 0.424181 AS "sv_0", 0.811608 AS "sv_1", -0.540987 AS "sv_2", -0.571047 AS "sv_3", 1.436532 AS "sv_4", 0.264788 AS "sv_5", 0.487881 AS "sv_6", 1.055724 AS "sv_7", 0.861992 AS "sv_8", -1.562200 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", 1.021716 AS "sv_0", -1.179920 AS "sv_1", -0.153318 AS "sv_2", -0.899906 AS "sv_3", -0.345148 AS "sv_4", 0.995313 AS "sv_5", 0.912151 AS "sv_6", 0.737222 AS "sv_7", -1.214633 AS "sv_8", -0.051075 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 1.000000 AS "coeff", 1.254984 AS "sv_0", -0.885393 AS "sv_1", -0.478961 AS "sv_2", -1.236692 AS "sv_3", -1.555016 AS "sv_4", -0.583413 AS "sv_5", 1.485080 AS "sv_6", 0.601391 AS "sv_7", 0.456315 AS "sv_8", -2.114021 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.000000 AS "coeff", -3.011217 AS "sv_0", -0.237807 AS "sv_1", -2.809668 AS "sv_2", 0.002221 AS "sv_3", 0.782830 AS "sv_4", 1.331153 AS "sv_5", 1.409284 AS "sv_6", 0.359371 AS "sv_7", -1.268436 AS "sv_8", 0.620385 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", -1.199299 AS "sv_0", -0.789208 AS "sv_1", 2.673526 AS "sv_2", 0.222732 AS "sv_3", 0.125217 AS "sv_4", -0.313901 AS "sv_5", 1.061773 AS "sv_6", -0.408591 AS "sv_7", -1.211440 AS "sv_8", 0.089529 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 1.000000 AS "coeff", 0.693461 AS "sv_0", 0.067277 AS "sv_1", -0.590666 AS "sv_2", 0.203376 AS "sv_3", 0.216461 AS "sv_4", -0.498485 AS "sv_5", 1.064389 AS "sv_6", 1.318963 AS "sv_7", -0.714298 AS "sv_8", -0.807691 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.000000 AS "coeff", 0.774383 AS "sv_0", -1.765383 AS "sv_1", -1.278092 AS "sv_2", -1.207370 AS "sv_3", 0.514810 AS "sv_4", -0.894882 AS "sv_5", 2.011952 AS "sv_6", -2.142732 AS "sv_7", -0.624888 AS "sv_8", 1.750911 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", -2.209772 AS "sv_0", 1.659902 AS "sv_1", 0.534130 AS "sv_2", -0.216920 AS "sv_3", -1.602769 AS "sv_4", -0.729682 AS "sv_5", -0.855423 AS "sv_6", 0.785937 AS "sv_7", 0.657501 AS "sv_8", 0.892502 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 1.000000 AS "coeff", 0.946236 AS "sv_0", 0.224542 AS "sv_1", 0.563936 AS "sv_2", -0.866098 AS "sv_3", -1.133546 AS "sv_4", -0.038214 AS "sv_5", 0.153602 AS "sv_6", 0.261961 AS "sv_7", 1.581772 AS "sv_8", 1.090296 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 1.000000 AS "coeff", 1.612639 AS "sv_0", 0.137010 AS "sv_1", 0.240862 AS "sv_2", -0.977647 AS "sv_3", -0.844649 AS "sv_4", 1.151000 AS "sv_5", -0.252873 AS "sv_6", 0.974510 AS "sv_7", -1.655895 AS "sv_8", -0.763196 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", -0.131708 AS "sv_0", 1.982605 AS "sv_1", 0.409291 AS "sv_2", -1.019111 AS "sv_3", 0.054471 AS "sv_4", 0.148208 AS "sv_5", -0.344642 AS "sv_6", -1.034381 AS "sv_7", -2.171592 AS "sv_8", -1.020880 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 1.000000 AS "coeff", 0.392462 AS "sv_0", 0.918988 AS "sv_1", -0.232649 AS "sv_2", -1.460397 AS "sv_3", 0.008083 AS "sv_4", -0.043307 AS "sv_5", -0.159300 AS "sv_6", 1.120638 AS "sv_7", 0.674655 AS "sv_8", -0.458370 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", -0.298941 AS "sv_0", 2.979427 AS "sv_1", -0.648334 AS "sv_2", -2.380690 AS "sv_3", 1.529984 AS "sv_4", -0.616551 AS "sv_5", -1.916239 AS "sv_6", -1.084344 AS "sv_7", -0.697196 AS "sv_8", -0.576447 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -1.000000 AS "coeff", 0.630628 AS "sv_0", -0.005918 AS "sv_1", -0.364337 AS "sv_2", -0.934736 AS "sv_3", 0.888379 AS "sv_4", 0.090590 AS "sv_5", -1.197056 AS "sv_6", 1.624618 AS "sv_7", -1.595217 AS "sv_8", 1.325606 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -1.000000 AS "coeff", -0.949039 AS "sv_0", -0.622020 AS "sv_1", -0.116107 AS "sv_2", -0.779248 AS "sv_3", -1.497360 AS "sv_4", -0.673836 AS "sv_5", -0.997786 AS "sv_6", -1.144583 AS "sv_7", 0.638942 AS "sv_8", 0.178647 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", -0.233714 AS "sv_0", 0.812617 AS "sv_1", -0.449537 AS "sv_2", 1.312712 AS "sv_3", 0.814627 AS "sv_4", -0.812043 AS "sv_5", 0.558854 AS "sv_6", -0.442987 AS "sv_7", -1.645225 AS "sv_8", -0.349997 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.000000 AS "coeff", -0.849231 AS "sv_0", 0.565608 AS "sv_1", -0.688562 AS "sv_2", 0.683244 AS "sv_3", -1.413348 AS "sv_4", -0.828030 AS "sv_5", 1.441087 AS "sv_6", 1.692641 AS "sv_7", 0.889139 AS "sv_8", -1.334005 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 1.000000 AS "coeff", 1.326070 AS "sv_0", 0.524081 AS "sv_1", 0.079805 AS "sv_2", -0.452211 AS "sv_3", -2.538231 AS "sv_4", 1.326972 AS "sv_5", -0.258162 AS "sv_6", -0.813953 AS "sv_7", 1.179245 AS "sv_8", 1.232050 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 1.000000 AS "coeff", 0.429757 AS "sv_0", -0.344502 AS "sv_1", 1.222327 AS "sv_2", 0.210234 AS "sv_3", 1.125307 AS "sv_4", -1.473361 AS "sv_5", 0.679868 AS "sv_6", -1.042908 AS "sv_7", -2.102686 AS "sv_8", 1.227033 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -48.495983 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.089082 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
