WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_medium" AS "ADS" 
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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -0.406366 AS "sv_0", 0.195863 AS "sv_1", 2.332328 AS "sv_2", 0.355015 AS "sv_3", 0.302075 AS "sv_4", 0.065250 AS "sv_5", 0.240260 AS "sv_6", 0.515021 AS "sv_7", 0.796803 AS "sv_8", -0.085546 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 1.116729 AS "sv_0", -0.779234 AS "sv_1", 0.112861 AS "sv_2", 1.093308 AS "sv_3", -0.301061 AS "sv_4", 1.046624 AS "sv_5", 0.085038 AS "sv_6", 0.440683 AS "sv_7", 1.410749 AS "sv_8", -0.260525 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.056620 AS "sv_0", 1.388059 AS "sv_1", 0.106218 AS "sv_2", 2.474450 AS "sv_3", -0.013625 AS "sv_4", -0.642533 AS "sv_5", -0.351289 AS "sv_6", 0.488660 AS "sv_7", 0.136112 AS "sv_8", -1.196185 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -0.442130 AS "sv_0", 1.306160 AS "sv_1", -1.825507 AS "sv_2", 1.100284 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", -1.264657 AS "sv_6", -1.279199 AS "sv_7", -0.018147 AS "sv_8", 0.535711 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", -0.557622 AS "sv_0", 1.133998 AS "sv_1", 0.321773 AS "sv_2", -0.459391 AS "sv_3", 0.596671 AS "sv_4", -0.745758 AS "sv_5", -0.877383 AS "sv_6", -1.030974 AS "sv_7", -1.452814 AS "sv_8", 0.777269 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -1.266257 AS "sv_0", -1.746121 AS "sv_1", -0.209535 AS "sv_2", -0.355189 AS "sv_3", 0.255283 AS "sv_4", 0.085304 AS "sv_5", -0.325927 AS "sv_6", -0.056176 AS "sv_7", -0.728405 AS "sv_8", 0.703417 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -0.627034 AS "sv_0", -0.434269 AS "sv_1", 0.939743 AS "sv_2", -1.837928 AS "sv_3", 0.791122 AS "sv_4", 0.510513 AS "sv_5", -0.232547 AS "sv_6", 0.285120 AS "sv_7", -0.758368 AS "sv_8", 0.576378 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", 0.941049 AS "sv_0", 0.078866 AS "sv_1", 0.064271 AS "sv_2", 0.432550 AS "sv_3", -0.370192 AS "sv_4", -0.902377 AS "sv_5", -0.461151 AS "sv_6", 0.094830 AS "sv_7", -2.410517 AS "sv_8", -0.143216 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -0.638819 AS "sv_0", 0.585976 AS "sv_1", -0.174185 AS "sv_2", 0.968145 AS "sv_3", 0.450044 AS "sv_4", 1.077056 AS "sv_5", 0.321175 AS "sv_6", -0.426124 AS "sv_7", -2.999114 AS "sv_8", 0.562343 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", -0.885169 AS "sv_0", 0.848285 AS "sv_1", 1.501806 AS "sv_2", 0.327893 AS "sv_3", -1.340787 AS "sv_4", 0.901386 AS "sv_5", 0.290686 AS "sv_6", 0.423296 AS "sv_7", -0.250458 AS "sv_8", 2.321921 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", -1.374292 AS "sv_0", 0.952290 AS "sv_1", 2.746056 AS "sv_2", -1.845000 AS "sv_3", -2.896833 AS "sv_4", 0.321363 AS "sv_5", -1.736239 AS "sv_6", -1.954561 AS "sv_7", -0.382955 AS "sv_8", 0.453807 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", -0.900223 AS "sv_0", 0.644973 AS "sv_1", 2.097126 AS "sv_2", -2.952712 AS "sv_3", -0.614580 AS "sv_4", 0.254415 AS "sv_5", -1.009282 AS "sv_6", 0.294529 AS "sv_7", 1.338623 AS "sv_8", -0.291699 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", 1.338781 AS "sv_0", 1.229024 AS "sv_1", 1.175752 AS "sv_2", -0.686974 AS "sv_3", 0.516739 AS "sv_4", -0.514400 AS "sv_5", -0.773586 AS "sv_6", 0.433121 AS "sv_7", -0.752163 AS "sv_8", -1.100302 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", -0.351463 AS "sv_0", 2.141306 AS "sv_1", 0.028096 AS "sv_2", 1.300035 AS "sv_3", 0.477383 AS "sv_4", -0.546999 AS "sv_5", 0.636127 AS "sv_6", 0.435370 AS "sv_7", 0.200816 AS "sv_8", -0.285506 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", -0.013412 AS "sv_0", -0.365319 AS "sv_1", 1.314013 AS "sv_2", 1.474197 AS "sv_3", -1.187904 AS "sv_4", -0.162873 AS "sv_5", 0.494522 AS "sv_6", -0.128099 AS "sv_7", 0.463265 AS "sv_8", 1.669436 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -0.438605 AS "sv_0", 0.413285 AS "sv_1", 0.956243 AS "sv_2", -1.641346 AS "sv_3", 0.002898 AS "sv_4", 0.533693 AS "sv_5", -0.717768 AS "sv_6", -0.614492 AS "sv_7", -0.503437 AS "sv_8", 0.375122 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.000000 AS "coeff", 0.628081 AS "sv_0", 0.947698 AS "sv_1", 0.138157 AS "sv_2", 0.872672 AS "sv_3", 0.614655 AS "sv_4", 1.156751 AS "sv_5", 0.769285 AS "sv_6", -1.757843 AS "sv_7", 1.038613 AS "sv_8", -1.782648 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.000000 AS "coeff", 2.291062 AS "sv_0", 0.310182 AS "sv_1", -0.550877 AS "sv_2", -1.151886 AS "sv_3", 0.513024 AS "sv_4", -0.001948 AS "sv_5", -1.841409 AS "sv_6", 0.644342 AS "sv_7", -0.711092 AS "sv_8", 0.620596 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", -0.838360 AS "sv_0", 0.480715 AS "sv_1", 0.129656 AS "sv_2", -0.334561 AS "sv_3", 0.156336 AS "sv_4", 0.301399 AS "sv_5", 2.919152 AS "sv_6", -1.000807 AS "sv_7", -0.154567 AS "sv_8", 2.536169 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", -1.002396 AS "sv_0", 0.007294 AS "sv_1", -0.031584 AS "sv_2", 0.722509 AS "sv_3", -0.743610 AS "sv_4", 0.457051 AS "sv_5", 1.112818 AS "sv_6", -0.399740 AS "sv_7", -1.707500 AS "sv_8", 1.047650 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", -0.700210 AS "sv_0", -0.535484 AS "sv_1", 0.850333 AS "sv_2", -0.518304 AS "sv_3", -1.361624 AS "sv_4", -0.844349 AS "sv_5", -1.521565 AS "sv_6", -0.562634 AS "sv_7", 0.134447 AS "sv_8", 1.044012 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", 0.688711 AS "sv_0", 1.488428 AS "sv_1", 0.946490 AS "sv_2", -1.892670 AS "sv_3", 0.589104 AS "sv_4", 0.780144 AS "sv_5", 0.044416 AS "sv_6", -0.602014 AS "sv_7", -0.692692 AS "sv_8", 0.788001 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", -0.368737 AS "sv_0", 0.589330 AS "sv_1", -0.759470 AS "sv_2", -0.586332 AS "sv_3", 1.234111 AS "sv_4", 0.806525 AS "sv_5", 0.587931 AS "sv_6", -1.389752 AS "sv_7", -0.639369 AS "sv_8", -0.227328 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", 0.323906 AS "sv_0", -0.926691 AS "sv_1", -1.404808 AS "sv_2", 1.784029 AS "sv_3", 0.137714 AS "sv_4", 0.143527 AS "sv_5", -0.350046 AS "sv_6", -1.200215 AS "sv_7", 1.548356 AS "sv_8", -1.052874 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", -0.550982 AS "sv_0", 0.523638 AS "sv_1", 1.546642 AS "sv_2", 0.320342 AS "sv_3", -0.510307 AS "sv_4", 0.676737 AS "sv_5", 0.248933 AS "sv_6", -2.157020 AS "sv_7", 1.079078 AS "sv_8", 0.681275 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", -1.405005 AS "sv_0", 2.366142 AS "sv_1", -0.586316 AS "sv_2", 0.640962 AS "sv_3", 0.327921 AS "sv_4", 0.544365 AS "sv_5", 2.547697 AS "sv_6", -0.813768 AS "sv_7", -2.009058 AS "sv_8", -1.120785 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.000000 AS "coeff", 0.256222 AS "sv_0", 1.361781 AS "sv_1", 1.279240 AS "sv_2", -0.104759 AS "sv_3", 0.357473 AS "sv_4", -0.637769 AS "sv_5", -0.978575 AS "sv_6", -0.770151 AS "sv_7", -0.316287 AS "sv_8", -1.136309 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", -0.117233 AS "sv_0", 0.072324 AS "sv_1", 0.392369 AS "sv_2", -0.581492 AS "sv_3", 0.956936 AS "sv_4", -1.043233 AS "sv_5", 0.282941 AS "sv_6", 1.364773 AS "sv_7", 0.434086 AS "sv_8", 0.107229 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.000000 AS "coeff", -1.073093 AS "sv_0", 1.825129 AS "sv_1", -0.883563 AS "sv_2", 1.367823 AS "sv_3", 0.739356 AS "sv_4", 0.285353 AS "sv_5", -0.738560 AS "sv_6", 0.040085 AS "sv_7", -0.130133 AS "sv_8", 0.789688 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.000000 AS "coeff", 0.298224 AS "sv_0", -0.248111 AS "sv_1", -0.166471 AS "sv_2", 0.913253 AS "sv_3", -0.224213 AS "sv_4", -0.898118 AS "sv_5", 2.495001 AS "sv_6", -0.753878 AS "sv_7", -0.043012 AS "sv_8", -0.529723 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 1.000000 AS "coeff", 1.021716 AS "sv_0", -1.179920 AS "sv_1", -0.153318 AS "sv_2", -0.899906 AS "sv_3", -0.345148 AS "sv_4", 0.995313 AS "sv_5", 0.912151 AS "sv_6", 0.737222 AS "sv_7", -1.214633 AS "sv_8", -0.051075 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 0.091527 AS "sv_0", 0.635844 AS "sv_1", -0.049753 AS "sv_2", -1.118609 AS "sv_3", -0.323714 AS "sv_4", 0.213315 AS "sv_5", 1.487168 AS "sv_6", 0.488179 AS "sv_7", -0.735410 AS "sv_8", 2.308997 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", -1.000000 AS "coeff", -0.384233 AS "sv_0", -1.135180 AS "sv_1", -0.570944 AS "sv_2", -0.949967 AS "sv_3", 0.753236 AS "sv_4", -1.497403 AS "sv_5", 1.174173 AS "sv_6", -0.673985 AS "sv_7", -0.483706 AS "sv_8", 0.106440 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.000000 AS "coeff", 0.741921 AS "sv_0", -0.718755 AS "sv_1", 0.329801 AS "sv_2", 0.449974 AS "sv_3", 0.204093 AS "sv_4", 0.125232 AS "sv_5", -0.406466 AS "sv_6", 2.260404 AS "sv_7", 0.106232 AS "sv_8", 0.176161 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", 0.956396 AS "sv_0", -1.161523 AS "sv_1", -0.695046 AS "sv_2", 0.133317 AS "sv_3", 0.624673 AS "sv_4", 0.806220 AS "sv_5", -0.079259 AS "sv_6", -0.926678 AS "sv_7", -1.451013 AS "sv_8", 0.854377 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -1.000000 AS "coeff", -1.151978 AS "sv_0", -0.228769 AS "sv_1", -1.297762 AS "sv_2", 0.639863 AS "sv_3", -1.102823 AS "sv_4", 2.217112 AS "sv_5", -0.316381 AS "sv_6", 1.931267 AS "sv_7", 0.801408 AS "sv_8", 0.785679 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", 0.162472 AS "sv_0", -1.504634 AS "sv_1", 0.192129 AS "sv_2", -0.666638 AS "sv_3", -0.615624 AS "sv_4", -1.023723 AS "sv_5", 0.941816 AS "sv_6", -0.777367 AS "sv_7", 0.176500 AS "sv_8", 1.000895 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.000000 AS "coeff", 1.733387 AS "sv_0", 1.179237 AS "sv_1", -0.514713 AS "sv_2", -0.636198 AS "sv_3", 0.807121 AS "sv_4", 0.692319 AS "sv_5", 0.984058 AS "sv_6", 0.511947 AS "sv_7", 1.594198 AS "sv_8", 1.066414 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.000000 AS "coeff", 0.946236 AS "sv_0", 0.224542 AS "sv_1", 0.563936 AS "sv_2", -0.866098 AS "sv_3", -1.133546 AS "sv_4", -0.038214 AS "sv_5", 0.153602 AS "sv_6", 0.261961 AS "sv_7", 1.581772 AS "sv_8", 1.090296 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.000000 AS "coeff", -0.749163 AS "sv_0", -0.252277 AS "sv_1", -0.805132 AS "sv_2", -1.953430 AS "sv_3", 0.443222 AS "sv_4", -0.521000 AS "sv_5", -0.397126 AS "sv_6", 0.494798 AS "sv_7", -0.544369 AS "sv_8", 1.119875 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", -0.169654 AS "sv_0", 0.502651 AS "sv_1", 0.212284 AS "sv_2", 0.880810 AS "sv_3", -0.285401 AS "sv_4", -0.853432 AS "sv_5", 1.787683 AS "sv_6", -2.587676 AS "sv_7", -0.577512 AS "sv_8", 0.207197 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -1.000000 AS "coeff", -0.633869 AS "sv_0", 0.649171 AS "sv_1", -0.429065 AS "sv_2", 0.272523 AS "sv_3", 0.196698 AS "sv_4", -2.142921 AS "sv_5", -0.339599 AS "sv_6", 1.631220 AS "sv_7", -0.304749 AS "sv_8", -1.457891 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 1.000000 AS "coeff", -0.062538 AS "sv_0", -1.090320 AS "sv_1", -0.556338 AS "sv_2", 1.656803 AS "sv_3", 0.922421 AS "sv_4", 1.937135 AS "sv_5", 2.545112 AS "sv_6", 0.375756 AS "sv_7", 0.024549 AS "sv_8", -1.054865 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", 1.474728 AS "sv_0", 0.053094 AS "sv_1", 0.155212 AS "sv_2", 2.990697 AS "sv_3", 0.960796 AS "sv_4", -0.050440 AS "sv_5", 0.687820 AS "sv_6", 0.125471 AS "sv_7", 1.248574 AS "sv_8", -0.145925 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.000000 AS "coeff", -0.459859 AS "sv_0", -1.121887 AS "sv_1", 0.246469 AS "sv_2", -0.555671 AS "sv_3", 0.273551 AS "sv_4", -0.290018 AS "sv_5", -1.027835 AS "sv_6", -1.036359 AS "sv_7", 0.868149 AS "sv_8", 0.335445 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -1.000000 AS "coeff", -0.030744 AS "sv_0", -0.727315 AS "sv_1", -0.854907 AS "sv_2", -0.500627 AS "sv_3", 0.648306 AS "sv_4", 1.913786 AS "sv_5", -1.279846 AS "sv_6", 0.549463 AS "sv_7", -0.635780 AS "sv_8", -0.325681 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", 1.074576 AS "sv_0", -1.654674 AS "sv_1", 1.668710 AS "sv_2", -0.257313 AS "sv_3", -0.913359 AS "sv_4", 1.129132 AS "sv_5", -0.249505 AS "sv_6", -0.156152 AS "sv_7", 0.034004 AS "sv_8", -0.646124 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 1.000000 AS "coeff", -0.461301 AS "sv_0", -2.005121 AS "sv_1", 0.856856 AS "sv_2", -1.323917 AS "sv_3", -0.450816 AS "sv_4", 0.058939 AS "sv_5", 0.316408 AS "sv_6", 1.644972 AS "sv_7", -0.493446 AS "sv_8", 1.737844 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.000000 AS "coeff", -1.344622 AS "sv_0", -0.608756 AS "sv_1", -0.938560 AS "sv_2", -1.388126 AS "sv_3", -1.094143 AS "sv_4", 2.169299 AS "sv_5", -0.386320 AS "sv_6", 0.833583 AS "sv_7", 0.133676 AS "sv_8", 0.172142 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", -0.128471 AS "sv_0", 1.252242 AS "sv_1", -0.897563 AS "sv_2", -1.315457 AS "sv_3", -0.515139 AS "sv_4", -1.523841 AS "sv_5", 2.153701 AS "sv_6", 1.226570 AS "sv_7", 1.315538 AS "sv_8", 0.499118 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 1.000000 AS "coeff", 0.631763 AS "sv_0", -1.242527 AS "sv_1", 0.098589 AS "sv_2", 2.180144 AS "sv_3", 1.440897 AS "sv_4", 0.128355 AS "sv_5", -0.234787 AS "sv_6", 1.294042 AS "sv_7", 0.101318 AS "sv_8", 0.577853 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", 1.000000 AS "coeff", 0.429757 AS "sv_0", -0.344502 AS "sv_1", 1.222327 AS "sv_2", 0.210234 AS "sv_3", 1.125307 AS "sv_4", -1.473361 AS "sv_5", 0.679868 AS "sv_6", -1.042908 AS "sv_7", -2.102686 AS "sv_8", 1.227033 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", 1.000000 AS "coeff", 1.892159 AS "sv_0", -0.574533 AS "sv_1", -1.568173 AS "sv_2", -1.250887 AS "sv_3", -1.200433 AS "sv_4", -0.142039 AS "sv_5", 0.197568 AS "sv_6", 0.408823 AS "sv_7", -0.469868 AS "sv_8", 1.168787 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 1.000000 AS "coeff", 1.155595 AS "sv_0", 1.467125 AS "sv_1", -0.901383 AS "sv_2", -1.745011 AS "sv_3", -0.084406 AS "sv_4", -0.070069 AS "sv_5", 0.792448 AS "sv_6", -0.187857 AS "sv_7", -0.004986 AS "sv_8", -0.696601 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", -0.362758 AS "sv_0", -0.204971 AS "sv_1", 0.568984 AS "sv_2", 2.011088 AS "sv_3", -0.701981 AS "sv_4", 0.040178 AS "sv_5", -0.828796 AS "sv_6", -0.547383 AS "sv_7", 0.212835 AS "sv_8", -2.252331 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", -2.943059 AS "sv_0", -0.309609 AS "sv_1", -0.072162 AS "sv_2", -2.262798 AS "sv_3", 0.736537 AS "sv_4", -2.108314 AS "sv_5", -1.447145 AS "sv_6", 0.637392 AS "sv_7", -0.173819 AS "sv_8", 0.036993 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 1.000000 AS "coeff", 1.278994 AS "sv_0", -1.212895 AS "sv_1", 0.242669 AS "sv_2", 0.337923 AS "sv_3", -1.611809 AS "sv_4", 2.081210 AS "sv_5", 0.718141 AS "sv_6", -0.244784 AS "sv_7", 0.849006 AS "sv_8", -1.084661 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", -2.905886 AS "sv_0", 2.223541 AS "sv_1", -0.915853 AS "sv_2", 0.500393 AS "sv_3", -0.767481 AS "sv_4", 0.182158 AS "sv_5", -0.209842 AS "sv_6", -0.493502 AS "sv_7", 0.987150 AS "sv_8", 0.441366 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -1.000000 AS "coeff", 0.494318 AS "sv_0", -0.783902 AS "sv_1", -0.718515 AS "sv_2", 0.297955 AS "sv_3", 0.530631 AS "sv_4", 1.377133 AS "sv_5", -1.502087 AS "sv_6", 0.840417 AS "sv_7", 0.680777 AS "sv_8", 1.931457 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.000000 AS "coeff", 1.606742 AS "sv_0", -0.061793 AS "sv_1", 1.159803 AS "sv_2", -0.355272 AS "sv_3", -2.021618 AS "sv_4", 0.302908 AS "sv_5", -1.014397 AS "sv_6", 0.403337 AS "sv_7", -0.993190 AS "sv_8", 1.575417 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 1.000000 AS "coeff", 1.449470 AS "sv_0", 1.560258 AS "sv_1", -0.515504 AS "sv_2", 0.338266 AS "sv_3", 1.592135 AS "sv_4", -0.473202 AS "sv_5", 1.675387 AS "sv_6", -1.800911 AS "sv_7", -0.799427 AS "sv_8", -0.136208 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", 1.000000 AS "coeff", 0.825458 AS "sv_0", -0.253899 AS "sv_1", 1.441337 AS "sv_2", -0.471922 AS "sv_3", 0.031705 AS "sv_4", -0.948673 AS "sv_5", 1.379371 AS "sv_6", -0.031670 AS "sv_7", 1.729351 AS "sv_8", -1.127272 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 1.000000 AS "coeff", -0.073077 AS "sv_0", 2.365016 AS "sv_1", 2.240391 AS "sv_2", -0.043197 AS "sv_3", 0.319032 AS "sv_4", 1.172624 AS "sv_5", 0.516884 AS "sv_6", 0.936275 AS "sv_7", 1.530299 AS "sv_8", 0.760551 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 1.000000 AS "coeff", 1.155000 AS "sv_0", 0.368091 AS "sv_1", 1.783268 AS "sv_2", 0.256439 AS "sv_3", 0.705056 AS "sv_4", 1.181344 AS "sv_5", -0.862248 AS "sv_6", -0.122000 AS "sv_7", 2.028982 AS "sv_8", 1.282302 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -1.000000 AS "coeff", -1.310072 AS "sv_0", -0.293142 AS "sv_1", -0.008195 AS "sv_2", 0.924666 AS "sv_3", 0.729968 AS "sv_4", -0.786977 AS "sv_5", 0.678355 AS "sv_6", -0.549117 AS "sv_7", -0.976292 AS "sv_8", 1.121612 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 1.000000 AS "coeff", 1.135001 AS "sv_0", 0.440651 AS "sv_1", 0.781879 AS "sv_2", -0.485641 AS "sv_3", -0.132510 AS "sv_4", 1.492775 AS "sv_5", -0.115466 AS "sv_6", 0.370077 AS "sv_7", -0.501776 AS "sv_8", 0.447799 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", 1.000000 AS "coeff", -0.029287 AS "sv_0", -0.052686 AS "sv_1", 0.362734 AS "sv_2", -1.885759 AS "sv_3", -1.852636 AS "sv_4", 0.371933 AS "sv_5", 0.528020 AS "sv_6", 0.292567 AS "sv_7", 0.018831 AS "sv_8", -0.948735 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 1.000000 AS "coeff", 0.396490 AS "sv_0", 0.145376 AS "sv_1", 0.469022 AS "sv_2", -1.209962 AS "sv_3", -0.817190 AS "sv_4", 1.331903 AS "sv_5", 0.184177 AS "sv_6", 0.374255 AS "sv_7", -0.663036 AS "sv_8", 1.144677 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", -1.000000 AS "coeff", -0.954328 AS "sv_0", -1.585818 AS "sv_1", -1.063495 AS "sv_2", -1.275574 AS "sv_3", 0.925778 AS "sv_4", -0.721438 AS "sv_5", -0.067949 AS "sv_6", -0.734094 AS "sv_7", 0.737898 AS "sv_8", 0.452645 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", -1.000000 AS "coeff", -1.195755 AS "sv_0", -0.821789 AS "sv_1", 0.664526 AS "sv_2", -0.838979 AS "sv_3", -0.912095 AS "sv_4", 0.900980 AS "sv_5", -0.866091 AS "sv_6", 0.101323 AS "sv_7", 0.629155 AS "sv_8", -0.737221 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -1.000000 AS "coeff", 0.729090 AS "sv_0", -2.511596 AS "sv_1", -0.204914 AS "sv_2", 0.666727 AS "sv_3", -2.082274 AS "sv_4", 1.156589 AS "sv_5", -0.748398 AS "sv_6", 1.003117 AS "sv_7", 0.033110 AS "sv_8", 0.729130 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -1.000000 AS "coeff", -0.273459 AS "sv_0", 0.111628 AS "sv_1", 0.329083 AS "sv_2", -1.221938 AS "sv_3", 0.040139 AS "sv_4", -1.703387 AS "sv_5", 0.303686 AS "sv_6", -1.382261 AS "sv_7", -0.357540 AS "sv_8", -0.378885 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", 1.000000 AS "coeff", 0.713786 AS "sv_0", 0.119190 AS "sv_1", -1.006791 AS "sv_2", -0.634865 AS "sv_3", -1.073516 AS "sv_4", -0.239190 AS "sv_5", 1.438449 AS "sv_6", -0.441674 AS "sv_7", 1.011515 AS "sv_8", -1.440050 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", 1.000000 AS "coeff", 0.599381 AS "sv_0", 0.768523 AS "sv_1", -1.277363 AS "sv_2", -1.895549 AS "sv_3", 1.602564 AS "sv_4", -0.188814 AS "sv_5", 1.656401 AS "sv_6", 0.518484 AS "sv_7", 0.082604 AS "sv_8", 0.410124 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", -1.000000 AS "coeff", -0.574253 AS "sv_0", 0.115934 AS "sv_1", -0.202616 AS "sv_2", 0.963432 AS "sv_3", 1.203743 AS "sv_4", 0.658905 AS "sv_5", -0.975495 AS "sv_6", -0.295840 AS "sv_7", -0.674137 AS "sv_8", -0.042875 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", 1.000000 AS "coeff", -0.898009 AS "sv_0", 0.196063 AS "sv_1", 0.250824 AS "sv_2", -1.210788 AS "sv_3", -0.393958 AS "sv_4", 0.379521 AS "sv_5", 0.134051 AS "sv_6", 1.999832 AS "sv_7", 0.061754 AS "sv_8", 0.599844 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", -1.000000 AS "coeff", 0.972605 AS "sv_0", 0.170710 AS "sv_1", -1.593674 AS "sv_2", -0.582493 AS "sv_3", 0.438575 AS "sv_4", -0.175570 AS "sv_5", -0.446581 AS "sv_6", 0.462780 AS "sv_7", -0.880542 AS "sv_8", 0.196692 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", -1.000000 AS "coeff", -0.296359 AS "sv_0", 0.641270 AS "sv_1", -0.875837 AS "sv_2", -0.249421 AS "sv_3", 0.554041 AS "sv_4", 0.101460 AS "sv_5", -0.460705 AS "sv_6", -0.430443 AS "sv_7", 0.839165 AS "sv_8", 0.780897 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 1.000000 AS "coeff", 1.970864 AS "sv_0", 0.096055 AS "sv_1", -0.628993 AS "sv_2", -2.052415 AS "sv_3", -1.352846 AS "sv_4", -0.743140 AS "sv_5", -0.279215 AS "sv_6", 0.533131 AS "sv_7", 0.490947 AS "sv_8", 0.827397 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", -1.000000 AS "coeff", 0.201143 AS "sv_0", -0.350033 AS "sv_1", -0.714674 AS "sv_2", 0.067705 AS "sv_3", 0.556005 AS "sv_4", 0.957226 AS "sv_5", -0.573118 AS "sv_6", 2.221461 AS "sv_7", -0.556536 AS "sv_8", -0.023583 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", 1.000000 AS "coeff", -0.386534 AS "sv_0", -0.560026 AS "sv_1", 1.108057 AS "sv_2", -1.829677 AS "sv_3", -0.783626 AS "sv_4", 0.804758 AS "sv_5", 1.650159 AS "sv_6", 1.746120 AS "sv_7", -1.443411 AS "sv_8", -0.607299 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 1.000000 AS "coeff", 0.747064 AS "sv_0", -2.223174 AS "sv_1", -1.482916 AS "sv_2", -0.259218 AS "sv_3", 1.071458 AS "sv_4", 2.057120 AS "sv_5", 2.348745 AS "sv_6", -0.150693 AS "sv_7", 0.774286 AS "sv_8", 0.948420 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", 1.000000 AS "coeff", 0.493729 AS "sv_0", -1.992440 AS "sv_1", 1.310940 AS "sv_2", 0.766259 AS "sv_3", -0.075654 AS "sv_4", 0.256966 AS "sv_5", 0.131293 AS "sv_6", -1.402526 AS "sv_7", 1.267734 AS "sv_8", -2.135257 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 1.000000 AS "coeff", 1.486090 AS "sv_0", -0.072711 AS "sv_1", 0.415122 AS "sv_2", 0.037538 AS "sv_3", 0.203125 AS "sv_4", 0.500876 AS "sv_5", 0.438541 AS "sv_6", 0.423014 AS "sv_7", -1.229875 AS "sv_8", 0.060725 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", 1.000000 AS "coeff", 0.455839 AS "sv_0", -1.449214 AS "sv_1", 0.247438 AS "sv_2", 0.642673 AS "sv_3", -1.129929 AS "sv_4", 1.653715 AS "sv_5", 0.209476 AS "sv_6", 2.646193 AS "sv_7", -0.231834 AS "sv_8", -0.851412 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", 1.000000 AS "coeff", 1.464533 AS "sv_0", 0.651427 AS "sv_1", 0.950147 AS "sv_2", -0.236708 AS "sv_3", 0.470402 AS "sv_4", -0.753523 AS "sv_5", 0.561353 AS "sv_6", 0.848216 AS "sv_7", -1.274374 AS "sv_8", 1.578779 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -1.000000 AS "coeff", -0.949039 AS "sv_0", -0.622020 AS "sv_1", -0.116107 AS "sv_2", -0.779248 AS "sv_3", -1.497360 AS "sv_4", -0.673836 AS "sv_5", -0.997786 AS "sv_6", -1.144583 AS "sv_7", 0.638942 AS "sv_8", 0.178647 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", 1.000000 AS "coeff", -0.594095 AS "sv_0", 0.971136 AS "sv_1", 1.021674 AS "sv_2", 1.422532 AS "sv_3", -0.021681 AS "sv_4", -0.176862 AS "sv_5", 0.242150 AS "sv_6", 0.574227 AS "sv_7", 0.779418 AS "sv_8", 1.117651 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -1.000000 AS "coeff", -1.137054 AS "sv_0", -3.538038 AS "sv_1", 0.812275 AS "sv_2", -0.776307 AS "sv_3", -0.902616 AS "sv_4", 0.682718 AS "sv_5", -0.477214 AS "sv_6", 0.605484 AS "sv_7", -1.034789 AS "sv_8", -2.564028 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", -1.000000 AS "coeff", -1.490395 AS "sv_0", 0.454227 AS "sv_1", -1.486632 AS "sv_2", -0.253958 AS "sv_3", 0.219704 AS "sv_4", 1.595474 AS "sv_5", -0.627615 AS "sv_6", 0.237835 AS "sv_7", -0.067377 AS "sv_8", -1.208932 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", 1.000000 AS "coeff", 0.496109 AS "sv_0", 1.263565 AS "sv_1", 0.410587 AS "sv_2", -0.063343 AS "sv_3", -0.537470 AS "sv_4", -1.252533 AS "sv_5", 0.678898 AS "sv_6", -1.311284 AS "sv_7", -0.026391 AS "sv_8", 1.458992 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", 1.000000 AS "coeff", 0.092123 AS "sv_0", 1.604961 AS "sv_1", 0.593321 AS "sv_2", 0.883897 AS "sv_3", 0.738904 AS "sv_4", 1.878232 AS "sv_5", 1.087726 AS "sv_6", -0.053055 AS "sv_7", -1.036250 AS "sv_8", -0.855324 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", 1.000000 AS "coeff", 0.518680 AS "sv_0", 0.380992 AS "sv_1", 2.365259 AS "sv_2", 1.120010 AS "sv_3", 0.887410 AS "sv_4", 0.716484 AS "sv_5", 0.840450 AS "sv_6", -0.543144 AS "sv_7", 0.628204 AS "sv_8", -1.724641 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", -1.000000 AS "coeff", 0.551133 AS "sv_0", 0.007788 AS "sv_1", -0.806454 AS "sv_2", -1.480801 AS "sv_3", 2.071547 AS "sv_4", -0.155452 AS "sv_5", -2.120732 AS "sv_6", -0.139627 AS "sv_7", 0.105622 AS "sv_8", 0.313330 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", 1.000000 AS "coeff", 0.003966 AS "sv_0", 0.291902 AS "sv_1", 1.304853 AS "sv_2", -0.514271 AS "sv_3", -0.102153 AS "sv_4", 0.385557 AS "sv_5", 0.494962 AS "sv_6", -1.504513 AS "sv_7", -1.402903 AS "sv_8", -0.451846 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", 1.000000 AS "coeff", 0.798068 AS "sv_0", -0.608593 AS "sv_1", -0.152450 AS "sv_2", -1.134553 AS "sv_3", 0.410798 AS "sv_4", 0.738932 AS "sv_5", -0.500215 AS "sv_6", 0.995195 AS "sv_7", 1.532538 AS "sv_8", 0.328044 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", 1.000000 AS "coeff", 0.520330 AS "sv_0", 0.378835 AS "sv_1", -0.028921 AS "sv_2", 0.947595 AS "sv_3", -0.373574 AS "sv_4", -0.809748 AS "sv_5", 1.240527 AS "sv_6", -0.240742 AS "sv_7", -0.013681 AS "sv_8", 0.622254 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", -1.000000 AS "coeff", -2.025332 AS "sv_0", 0.323725 AS "sv_1", 0.185556 AS "sv_2", -0.602472 AS "sv_3", 0.002524 AS "sv_4", 0.724881 AS "sv_5", -1.211576 AS "sv_6", -0.600575 AS "sv_7", -1.267722 AS "sv_8", -1.387488 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", 1.000000 AS "coeff", -0.085714 AS "sv_0", -0.594423 AS "sv_1", 1.201933 AS "sv_2", -0.377730 AS "sv_3", -0.091199 AS "sv_4", -0.928357 AS "sv_5", 0.579585 AS "sv_6", 1.324783 AS "sv_7", -0.253467 AS "sv_8", 0.470455 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", -1.000000 AS "coeff", -1.347752 AS "sv_0", 1.611971 AS "sv_1", 1.581495 AS "sv_2", 0.668531 AS "sv_3", -1.155150 AS "sv_4", 0.229151 AS "sv_5", -1.181275 AS "sv_6", -1.095512 AS "sv_7", 0.556166 AS "sv_8", -0.360972 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 1.000000 AS "coeff", 0.753420 AS "sv_0", 0.576312 AS "sv_1", -0.878524 AS "sv_2", -0.139043 AS "sv_3", 0.781455 AS "sv_4", 1.549164 AS "sv_5", -0.090024 AS "sv_6", 0.241947 AS "sv_7", 0.097845 AS "sv_8", 2.036519 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 1.000000 AS "coeff", 1.670764 AS "sv_0", 1.418329 AS "sv_1", 0.167686 AS "sv_2", 0.144686 AS "sv_3", 0.584213 AS "sv_4", -0.038908 AS "sv_5", 0.027819 AS "sv_6", -0.675901 AS "sv_7", -0.598295 AS "sv_8", -0.940226 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", -1.000000 AS "coeff", -0.057046 AS "sv_0", -0.472137 AS "sv_1", -0.411949 AS "sv_2", -2.798368 AS "sv_3", -0.503884 AS "sv_4", -0.619719 AS "sv_5", 0.734654 AS "sv_6", 0.206729 AS "sv_7", 0.338092 AS "sv_8", -0.619528 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 1.000000 AS "coeff", 0.647493 AS "sv_0", 0.994382 AS "sv_1", -0.015821 AS "sv_2", 0.737268 AS "sv_3", -0.407066 AS "sv_4", 0.047413 AS "sv_5", 0.160295 AS "sv_6", 1.167504 AS "sv_7", 0.301800 AS "sv_8", -1.225472 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", -1.000000 AS "coeff", -0.224744 AS "sv_0", -2.284432 AS "sv_1", -0.910936 AS "sv_2", -0.765917 AS "sv_3", -0.441337 AS "sv_4", -1.130983 AS "sv_5", -3.091728 AS "sv_6", -0.870308 AS "sv_7", 1.408795 AS "sv_8", 1.573483 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", -1.000000 AS "coeff", -1.478946 AS "sv_0", 1.273109 AS "sv_1", -0.339711 AS "sv_2", -1.240515 AS "sv_3", 1.097866 AS "sv_4", -1.278937 AS "sv_5", 0.727263 AS "sv_6", -0.274402 AS "sv_7", 0.065690 AS "sv_8", -1.011118 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", -1.000000 AS "coeff", 0.800477 AS "sv_0", -0.968188 AS "sv_1", -0.954273 AS "sv_2", -0.135087 AS "sv_3", -1.383184 AS "sv_4", 0.974786 AS "sv_5", -0.221073 AS "sv_6", 0.912865 AS "sv_7", -0.946160 AS "sv_8", -0.031430 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", -1.000000 AS "coeff", -1.663189 AS "sv_0", -2.813570 AS "sv_1", -0.911721 AS "sv_2", 0.330630 AS "sv_3", -1.203015 AS "sv_4", 1.128912 AS "sv_5", -0.989711 AS "sv_6", 0.544166 AS "sv_7", 1.050769 AS "sv_8", 0.523799 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", -1.000000 AS "coeff", 0.028131 AS "sv_0", 0.980802 AS "sv_1", -0.101751 AS "sv_2", -0.448563 AS "sv_3", -0.575466 AS "sv_4", -1.329808 AS "sv_5", -0.416332 AS "sv_6", 0.002315 AS "sv_7", 0.622103 AS "sv_8", -0.460801 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 1.000000 AS "coeff", 1.450914 AS "sv_0", 0.947874 AS "sv_1", -0.761664 AS "sv_2", -0.117374 AS "sv_3", -0.351617 AS "sv_4", 1.425146 AS "sv_5", 2.352939 AS "sv_6", 1.412653 AS "sv_7", -1.109344 AS "sv_8", -0.478533 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", 1.000000 AS "coeff", -1.058400 AS "sv_0", 2.000126 AS "sv_1", 1.853064 AS "sv_2", 1.634310 AS "sv_3", -0.282957 AS "sv_4", 0.138495 AS "sv_5", -1.487147 AS "sv_6", -0.098169 AS "sv_7", 0.581405 AS "sv_8", 1.252550 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", -1.000000 AS "coeff", -0.545445 AS "sv_0", -1.004934 AS "sv_1", 0.156220 AS "sv_2", -2.398673 AS "sv_3", 1.797863 AS "sv_4", -0.142712 AS "sv_5", 0.939147 AS "sv_6", -0.001923 AS "sv_7", -0.543692 AS "sv_8", -0.982223 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", -1.000000 AS "coeff", -0.052653 AS "sv_0", 0.170277 AS "sv_1", 0.995648 AS "sv_2", 0.631547 AS "sv_3", 0.002702 AS "sv_4", -0.066073 AS "sv_5", -2.973031 AS "sv_6", 1.829880 AS "sv_7", -1.134067 AS "sv_8", -2.541804 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", -1.000000 AS "coeff", -1.608947 AS "sv_0", -0.110878 AS "sv_1", -0.578317 AS "sv_2", 0.632556 AS "sv_3", -0.648973 AS "sv_4", -0.153837 AS "sv_5", 0.642141 AS "sv_6", -1.270234 AS "sv_7", 0.547818 AS "sv_8", 0.318607 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", -1.000000 AS "coeff", 0.006702 AS "sv_0", -1.638601 AS "sv_1", -0.443221 AS "sv_2", -0.794474 AS "sv_3", -1.338428 AS "sv_4", 0.307255 AS "sv_5", 0.882593 AS "sv_6", -0.250861 AS "sv_7", 1.256771 AS "sv_8", 1.119838 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", 1.000000 AS "coeff", 0.334171 AS "sv_0", 0.493869 AS "sv_1", 0.055350 AS "sv_2", 1.072069 AS "sv_3", -1.663547 AS "sv_4", -0.757296 AS "sv_5", 1.374517 AS "sv_6", 0.945889 AS "sv_7", -0.081061 AS "sv_8", 0.347971 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", -1.000000 AS "coeff", -0.106040 AS "sv_0", 0.554465 AS "sv_1", -1.566525 AS "sv_2", -0.160321 AS "sv_3", -1.072475 AS "sv_4", 1.464075 AS "sv_5", 0.528203 AS "sv_6", -1.959134 AS "sv_7", 0.231237 AS "sv_8", 0.801712 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.000000 AS "coeff", -0.394026 AS "sv_0", 1.756431 AS "sv_1", -1.100255 AS "sv_2", 0.416977 AS "sv_3", -0.775713 AS "sv_4", 2.191014 AS "sv_5", 0.946843 AS "sv_6", 1.159506 AS "sv_7", 0.437682 AS "sv_8", 0.480603 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 1.000000 AS "coeff", 0.275448 AS "sv_0", -0.946601 AS "sv_1", 0.552427 AS "sv_2", -1.015174 AS "sv_3", 0.921156 AS "sv_4", -0.726115 AS "sv_5", 0.839911 AS "sv_6", -0.875635 AS "sv_7", -0.624851 AS "sv_8", 0.695920 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", -1.000000 AS "coeff", 0.826008 AS "sv_0", -1.356935 AS "sv_1", 0.325480 AS "sv_2", 0.533356 AS "sv_3", 1.599108 AS "sv_4", -0.020136 AS "sv_5", 0.565080 AS "sv_6", -1.073570 AS "sv_7", -2.569733 AS "sv_8", -1.114368 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.000000 AS "coeff", -0.325784 AS "sv_0", 0.544713 AS "sv_1", -0.565585 AS "sv_2", -0.776204 AS "sv_3", 0.063292 AS "sv_4", 0.646033 AS "sv_5", -1.266168 AS "sv_6", -0.485120 AS "sv_7", -1.267543 AS "sv_8", 0.617552 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", -1.000000 AS "coeff", -0.925916 AS "sv_0", -0.828297 AS "sv_1", -2.221536 AS "sv_2", 1.946958 AS "sv_3", 1.157058 AS "sv_4", 0.337418 AS "sv_5", -1.568780 AS "sv_6", -1.992355 AS "sv_7", 1.054428 AS "sv_8", 0.416875 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", -1.000000 AS "coeff", -1.097718 AS "sv_0", -2.490587 AS "sv_1", -0.330219 AS "sv_2", -1.033579 AS "sv_3", -0.368915 AS "sv_4", -0.866985 AS "sv_5", 0.976061 AS "sv_6", 1.002410 AS "sv_7", 0.018745 AS "sv_8", 0.910585 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", -1.000000 AS "coeff", -0.433400 AS "sv_0", 0.600470 AS "sv_1", -1.099419 AS "sv_2", -0.863473 AS "sv_3", 1.733801 AS "sv_4", -0.290390 AS "sv_5", -1.378977 AS "sv_6", 0.405580 AS "sv_7", 1.052950 AS "sv_8", 0.994111 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", 1.000000 AS "coeff", 1.863660 AS "sv_0", 0.428986 AS "sv_1", -0.302269 AS "sv_2", 0.839360 AS "sv_3", -0.425435 AS "sv_4", 0.702640 AS "sv_5", 1.119942 AS "sv_6", 1.040506 AS "sv_7", 0.143258 AS "sv_8", 0.566889 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", 1.000000 AS "coeff", 0.919782 AS "sv_0", 0.530121 AS "sv_1", 0.937204 AS "sv_2", -0.830475 AS "sv_3", 1.055029 AS "sv_4", -1.203472 AS "sv_5", -0.146592 AS "sv_6", 1.587162 AS "sv_7", 1.349057 AS "sv_8", 0.397316 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", 1.000000 AS "coeff", 1.410538 AS "sv_0", -0.402047 AS "sv_1", 1.925810 AS "sv_2", 0.152478 AS "sv_3", 0.245884 AS "sv_4", 0.425667 AS "sv_5", -0.375167 AS "sv_6", 0.407218 AS "sv_7", -0.229369 AS "sv_8", -1.069667 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", -1.000000 AS "coeff", -2.058599 AS "sv_0", -0.736095 AS "sv_1", -0.948822 AS "sv_2", 1.243205 AS "sv_3", 0.095037 AS "sv_4", 0.514737 AS "sv_5", 0.553996 AS "sv_6", -0.527445 AS "sv_7", 0.700148 AS "sv_8", -0.574288 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", 1.000000 AS "coeff", 0.375851 AS "sv_0", 2.459666 AS "sv_1", 2.331842 AS "sv_2", 1.801873 AS "sv_3", 0.883058 AS "sv_4", -1.030525 AS "sv_5", 2.246760 AS "sv_6", -1.930692 AS "sv_7", 0.035418 AS "sv_8", -1.673652 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", 1.000000 AS "coeff", 1.543145 AS "sv_0", -0.705658 AS "sv_1", 1.425266 AS "sv_2", -0.336943 AS "sv_3", 0.136952 AS "sv_4", -0.089278 AS "sv_5", 0.784997 AS "sv_6", -0.380565 AS "sv_7", 0.251435 AS "sv_8", -0.588666 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", -1.000000 AS "coeff", -1.168473 AS "sv_0", -0.188691 AS "sv_1", 0.486838 AS "sv_2", -1.163411 AS "sv_3", -0.537047 AS "sv_4", -0.411441 AS "sv_5", -0.362828 AS "sv_6", -1.942761 AS "sv_7", -0.779343 AS "sv_8", -0.015843 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 1.000000 AS "coeff", 0.381543 AS "sv_0", 2.164917 AS "sv_1", 0.073801 AS "sv_2", -1.092912 AS "sv_3", 0.042834 AS "sv_4", -0.659196 AS "sv_5", 0.827127 AS "sv_6", 0.304218 AS "sv_7", 1.037430 AS "sv_8", -0.413486 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", -1.000000 AS "coeff", -1.500866 AS "sv_0", -0.869898 AS "sv_1", -0.550293 AS "sv_2", -0.165722 AS "sv_3", -0.963508 AS "sv_4", -1.148148 AS "sv_5", -0.873892 AS "sv_6", -1.059741 AS "sv_7", -0.563514 AS "sv_8", 0.014577 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", 1.000000 AS "coeff", 0.979486 AS "sv_0", 0.742885 AS "sv_1", 0.831373 AS "sv_2", -0.050735 AS "sv_3", 1.847543 AS "sv_4", -0.813007 AS "sv_5", 2.967019 AS "sv_6", -0.577383 AS "sv_7", 1.682021 AS "sv_8", 1.122447 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", -1.000000 AS "coeff", -1.107613 AS "sv_0", -0.161997 AS "sv_1", -1.614147 AS "sv_2", 0.121461 AS "sv_3", 0.786732 AS "sv_4", -0.362704 AS "sv_5", -0.480999 AS "sv_6", -0.997136 AS "sv_7", 1.274944 AS "sv_8", 1.860701 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", 1.000000 AS "coeff", 1.906117 AS "sv_0", 0.252612 AS "sv_1", -0.746882 AS "sv_2", 1.260270 AS "sv_3", -0.573585 AS "sv_4", -1.003636 AS "sv_5", 0.236988 AS "sv_6", 1.430708 AS "sv_7", 0.608683 AS "sv_8", -0.216157 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", -1.000000 AS "coeff", -0.527387 AS "sv_0", 0.060356 AS "sv_1", -1.493396 AS "sv_2", 0.580760 AS "sv_3", -1.828214 AS "sv_4", -1.050581 AS "sv_5", 1.087301 AS "sv_6", -0.945604 AS "sv_7", -1.278393 AS "sv_8", 1.377844 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", -1.000000 AS "coeff", -0.986054 AS "sv_0", -1.393974 AS "sv_1", -0.144443 AS "sv_2", -1.128891 AS "sv_3", -0.154411 AS "sv_4", 1.263897 AS "sv_5", -0.041089 AS "sv_6", 0.155194 AS "sv_7", -0.661821 AS "sv_8", 0.635477 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", -1.000000 AS "coeff", -0.806604 AS "sv_0", -0.455982 AS "sv_1", -1.562249 AS "sv_2", -1.037062 AS "sv_3", -0.698902 AS "sv_4", 1.108033 AS "sv_5", -0.748614 AS "sv_6", -0.768446 AS "sv_7", 0.565498 AS "sv_8", 1.210210 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", 1.000000 AS "coeff", -0.279495 AS "sv_0", 0.041777 AS "sv_1", 1.218553 AS "sv_2", 1.074646 AS "sv_3", -0.202758 AS "sv_4", 0.369031 AS "sv_5", 1.853189 AS "sv_6", -0.121784 AS "sv_7", 0.294438 AS "sv_8", 0.806669 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 1.000000 AS "coeff", 0.947411 AS "sv_0", 0.186246 AS "sv_1", -0.025547 AS "sv_2", -0.846941 AS "sv_3", -2.542595 AS "sv_4", 0.243797 AS "sv_5", 0.669231 AS "sv_6", 1.686505 AS "sv_7", -0.592685 AS "sv_8", 0.342615 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", -1.000000 AS "coeff", -1.175223 AS "sv_0", -0.881866 AS "sv_1", -2.038557 AS "sv_2", 0.355348 AS "sv_3", 0.204878 AS "sv_4", -0.418047 AS "sv_5", 0.090892 AS "sv_6", 1.532446 AS "sv_7", -0.926707 AS "sv_8", 0.242572 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", 1.000000 AS "coeff", -0.253283 AS "sv_0", -0.127452 AS "sv_1", 1.617493 AS "sv_2", 0.432972 AS "sv_3", -0.006303 AS "sv_4", 0.243702 AS "sv_5", 1.293280 AS "sv_6", 1.712064 AS "sv_7", -1.691803 AS "sv_8", 0.400836 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", 1.000000 AS "coeff", 0.203478 AS "sv_0", 0.392410 AS "sv_1", 1.003861 AS "sv_2", -0.143601 AS "sv_3", -0.113465 AS "sv_4", 0.358366 AS "sv_5", 1.099564 AS "sv_6", 1.791070 AS "sv_7", -1.417830 AS "sv_8", 1.095923 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", 1.000000 AS "coeff", 0.570724 AS "sv_0", -0.372611 AS "sv_1", 0.849741 AS "sv_2", 0.406101 AS "sv_3", -0.042738 AS "sv_4", -1.542207 AS "sv_5", 2.841484 AS "sv_6", -0.726685 AS "sv_7", -0.494578 AS "sv_8", -0.069218 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", 1.000000 AS "coeff", 0.562861 AS "sv_0", -0.282435 AS "sv_1", 1.411885 AS "sv_2", -0.463856 AS "sv_3", 0.404580 AS "sv_4", 1.464486 AS "sv_5", 0.805772 AS "sv_6", 1.688969 AS "sv_7", 0.293860 AS "sv_8", -2.861903 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 1.000000 AS "coeff", 0.166117 AS "sv_0", 2.012281 AS "sv_1", 0.348674 AS "sv_2", 2.196123 AS "sv_3", 0.956128 AS "sv_4", -0.248975 AS "sv_5", 1.982933 AS "sv_6", -1.144011 AS "sv_7", -0.272696 AS "sv_8", -0.751165 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", 1.000000 AS "coeff", 0.376560 AS "sv_0", 2.001071 AS "sv_1", -0.683533 AS "sv_2", -0.923408 AS "sv_3", 0.696195 AS "sv_4", 0.511309 AS "sv_5", 1.618659 AS "sv_6", 0.889583 AS "sv_7", -0.238975 AS "sv_8", 0.344978 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", -1.000000 AS "coeff", -2.354863 AS "sv_0", -0.222578 AS "sv_1", 0.733180 AS "sv_2", -0.619249 AS "sv_3", -1.126744 AS "sv_4", -1.709969 AS "sv_5", -0.093028 AS "sv_6", -0.689115 AS "sv_7", 1.977593 AS "sv_8", 0.955872 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -1.000000 AS "coeff", -0.033080 AS "sv_0", 0.603971 AS "sv_1", 0.124123 AS "sv_2", 2.040166 AS "sv_3", -0.656934 AS "sv_4", -0.892375 AS "sv_5", -1.860965 AS "sv_6", -2.166648 AS "sv_7", -0.589536 AS "sv_8", 1.717924 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", -1.000000 AS "coeff", -0.322164 AS "sv_0", -1.210989 AS "sv_1", -0.341897 AS "sv_2", -0.782794 AS "sv_3", 0.181047 AS "sv_4", -0.234633 AS "sv_5", -0.508986 AS "sv_6", 0.734150 AS "sv_7", 1.209745 AS "sv_8", -0.801233 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", 1.000000 AS "coeff", 2.369399 AS "sv_0", 0.638177 AS "sv_1", -0.480462 AS "sv_2", 0.470591 AS "sv_3", 2.399159 AS "sv_4", -0.359512 AS "sv_5", 0.115684 AS "sv_6", 1.227851 AS "sv_7", 0.992660 AS "sv_8", 0.585489 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", -1.000000 AS "coeff", 0.419345 AS "sv_0", -0.899691 AS "sv_1", -1.037358 AS "sv_2", 1.470959 AS "sv_3", -1.309848 AS "sv_4", -0.228479 AS "sv_5", -2.777180 AS "sv_6", 2.425021 AS "sv_7", -0.906905 AS "sv_8", 0.999864 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", 1.000000 AS "coeff", 0.989313 AS "sv_0", 1.299769 AS "sv_1", 0.638123 AS "sv_2", -0.057128 AS "sv_3", 0.263195 AS "sv_4", -0.552314 AS "sv_5", 2.397088 AS "sv_6", 0.764131 AS "sv_7", 1.959339 AS "sv_8", 0.016881 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", -1.000000 AS "coeff", 0.410448 AS "sv_0", -2.398402 AS "sv_1", -0.153693 AS "sv_2", -0.966201 AS "sv_3", 0.863361 AS "sv_4", 0.701428 AS "sv_5", -1.699755 AS "sv_6", 0.644641 AS "sv_7", -1.246362 AS "sv_8", -0.619547 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", -1.000000 AS "coeff", -0.881164 AS "sv_0", -0.243344 AS "sv_1", -0.932318 AS "sv_2", -1.238473 AS "sv_3", 0.334930 AS "sv_4", 0.324729 AS "sv_5", -0.905650 AS "sv_6", -1.003999 AS "sv_7", -0.104416 AS "sv_8", -0.079766 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", -1.000000 AS "coeff", -1.928247 AS "sv_0", 0.706265 AS "sv_1", -1.960199 AS "sv_2", 0.421517 AS "sv_3", -0.724456 AS "sv_4", -0.439961 AS "sv_5", 0.646495 AS "sv_6", 0.720300 AS "sv_7", 0.519555 AS "sv_8", 1.233451 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 1.000000 AS "coeff", 1.778479 AS "sv_0", -0.107321 AS "sv_1", 0.499717 AS "sv_2", 1.012944 AS "sv_3", 3.581633 AS "sv_4", 0.529848 AS "sv_5", 2.348272 AS "sv_6", 0.759198 AS "sv_7", 0.891340 AS "sv_8", 0.160584 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", 1.000000 AS "coeff", 0.079525 AS "sv_0", 1.102138 AS "sv_1", 0.475806 AS "sv_2", 1.101115 AS "sv_3", 0.476652 AS "sv_4", 0.347404 AS "sv_5", 1.506621 AS "sv_6", 0.394562 AS "sv_7", -1.962569 AS "sv_8", 0.670875 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", -1.000000 AS "coeff", -2.114189 AS "sv_0", -1.374796 AS "sv_1", 0.674955 AS "sv_2", 0.820741 AS "sv_3", 0.101122 AS "sv_4", -0.340801 AS "sv_5", 0.549036 AS "sv_6", 1.123207 AS "sv_7", -1.321263 AS "sv_8", 0.187468 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", -1.000000 AS "coeff", -0.053547 AS "sv_0", -1.030065 AS "sv_1", -1.674985 AS "sv_2", -0.652352 AS "sv_3", -0.152519 AS "sv_4", -0.138631 AS "sv_5", -1.005193 AS "sv_6", -1.103286 AS "sv_7", 0.548890 AS "sv_8", 0.329599 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -1.000000 AS "coeff", -1.638903 AS "sv_0", -0.745994 AS "sv_1", -0.248971 AS "sv_2", 1.564398 AS "sv_3", -0.836796 AS "sv_4", -0.338076 AS "sv_5", 1.167627 AS "sv_6", -1.595744 AS "sv_7", -1.422866 AS "sv_8", 1.140010 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", -1.000000 AS "coeff", -0.648732 AS "sv_0", -0.880620 AS "sv_1", 0.202193 AS "sv_2", 0.525953 AS "sv_3", 0.655148 AS "sv_4", -0.647661 AS "sv_5", 0.272122 AS "sv_6", -2.437228 AS "sv_7", -0.548644 AS "sv_8", -0.541692 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", -1.000000 AS "coeff", -2.148728 AS "sv_0", -0.425004 AS "sv_1", 1.286981 AS "sv_2", -0.792685 AS "sv_3", 0.464994 AS "sv_4", -0.194228 AS "sv_5", -0.221437 AS "sv_6", -1.026447 AS "sv_7", -0.274799 AS "sv_8", 1.014900 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", 1.000000 AS "coeff", 1.972422 AS "sv_0", -1.549817 AS "sv_1", -0.971554 AS "sv_2", -0.308196 AS "sv_3", 0.511942 AS "sv_4", 1.477210 AS "sv_5", 0.605879 AS "sv_6", 0.952018 AS "sv_7", 1.797731 AS "sv_8", 0.343225 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", 1.000000 AS "coeff", 1.326070 AS "sv_0", 0.524081 AS "sv_1", 0.079805 AS "sv_2", -0.452211 AS "sv_3", -2.538231 AS "sv_4", 1.326972 AS "sv_5", -0.258162 AS "sv_6", -0.813953 AS "sv_7", 1.179245 AS "sv_8", 1.232050 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", -1.000000 AS "coeff", -1.715822 AS "sv_0", -0.023007 AS "sv_1", -0.007626 AS "sv_2", -0.506174 AS "sv_3", -0.354594 AS "sv_4", -0.697372 AS "sv_5", -0.307631 AS "sv_6", -0.587886 AS "sv_7", -0.643622 AS "sv_8", 1.632221 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", -1.000000 AS "coeff", 0.273402 AS "sv_0", -0.244592 AS "sv_1", -1.367898 AS "sv_2", -0.708309 AS "sv_3", -0.003283 AS "sv_4", 0.462958 AS "sv_5", -1.105756 AS "sv_6", -0.062074 AS "sv_7", 0.044579 AS "sv_8", 0.177273 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", -1.000000 AS "coeff", 0.080743 AS "sv_0", 0.950698 AS "sv_1", -0.216079 AS "sv_2", -0.834473 AS "sv_3", -1.292433 AS "sv_4", -1.925633 AS "sv_5", -2.167341 AS "sv_6", 1.616820 AS "sv_7", -2.388599 AS "sv_8", 0.184237 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", -1.000000 AS "coeff", -1.907118 AS "sv_0", -1.301630 AS "sv_1", -1.286405 AS "sv_2", 0.278706 AS "sv_3", -2.650542 AS "sv_4", -1.882334 AS "sv_5", 0.644878 AS "sv_6", 0.536429 AS "sv_7", 1.666265 AS "sv_8", 1.740341 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", -1.000000 AS "coeff", -0.200071 AS "sv_0", 0.129612 AS "sv_1", -0.790449 AS "sv_2", -0.606438 AS "sv_3", -0.807512 AS "sv_4", 0.021321 AS "sv_5", -1.727536 AS "sv_6", -0.607904 AS "sv_7", -0.210802 AS "sv_8", -1.598145 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", 1.000000 AS "coeff", 0.476856 AS "sv_0", 0.357010 AS "sv_1", 2.383705 AS "sv_2", 2.012480 AS "sv_3", 0.393192 AS "sv_4", 0.220910 AS "sv_5", -0.482723 AS "sv_6", 0.795890 AS "sv_7", -0.502188 AS "sv_8", 0.940083 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", 1.000000 AS "coeff", 2.192019 AS "sv_0", -0.104379 AS "sv_1", 0.480139 AS "sv_2", -0.772840 AS "sv_3", 0.043394 AS "sv_4", -0.620498 AS "sv_5", 1.483759 AS "sv_6", -3.517868 AS "sv_7", 1.268693 AS "sv_8", 0.565303 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", 1.000000 AS "coeff", 0.418344 AS "sv_0", 0.267556 AS "sv_1", 1.317994 AS "sv_2", -0.451182 AS "sv_3", 1.272283 AS "sv_4", -0.329984 AS "sv_5", 0.315520 AS "sv_6", -0.151036 AS "sv_7", 0.495518 AS "sv_8", 1.145385 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", -1.000000 AS "coeff", 0.831062 AS "sv_0", -1.383483 AS "sv_1", -0.631457 AS "sv_2", 1.791726 AS "sv_3", -0.502297 AS "sv_4", -0.306153 AS "sv_5", -2.144301 AS "sv_6", -0.788068 AS "sv_7", 0.643208 AS "sv_8", -1.116545 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", 1.000000 AS "coeff", 1.825200 AS "sv_0", 0.077000 AS "sv_1", -0.317323 AS "sv_2", 0.982492 AS "sv_3", -1.195058 AS "sv_4", -0.290629 AS "sv_5", 0.997010 AS "sv_6", 1.428728 AS "sv_7", 0.921160 AS "sv_8", 0.195723 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 1.000000 AS "coeff", 2.433735 AS "sv_0", -0.224022 AS "sv_1", 0.946601 AS "sv_2", -0.239396 AS "sv_3", -1.001844 AS "sv_4", 1.881842 AS "sv_5", 0.828645 AS "sv_6", 0.659906 AS "sv_7", 0.532215 AS "sv_8", 0.823993 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", -1.000000 AS "coeff", -1.147616 AS "sv_0", -0.920748 AS "sv_1", -0.494365 AS "sv_2", 0.717301 AS "sv_3", -0.242116 AS "sv_4", -1.426875 AS "sv_5", 1.876952 AS "sv_6", -1.043267 AS "sv_7", 0.269698 AS "sv_8", -1.406136 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", -1.000000 AS "coeff", -2.051004 AS "sv_0", -0.185512 AS "sv_1", -0.783408 AS "sv_2", -1.718820 AS "sv_3", -0.361232 AS "sv_4", -0.630054 AS "sv_5", 0.971188 AS "sv_6", 0.914262 AS "sv_7", -0.410210 AS "sv_8", 0.472067 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", -1.000000 AS "coeff", -0.564204 AS "sv_0", -1.078653 AS "sv_1", -0.275140 AS "sv_2", -1.267582 AS "sv_3", 0.225346 AS "sv_4", 1.066525 AS "sv_5", -0.810301 AS "sv_6", 0.613956 AS "sv_7", -1.523011 AS "sv_8", 0.510009 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", -1.000000 AS "coeff", -0.652742 AS "sv_0", -2.617394 AS "sv_1", 0.521494 AS "sv_2", -0.042029 AS "sv_3", 0.987763 AS "sv_4", -2.192085 AS "sv_5", -1.255113 AS "sv_6", 0.402326 AS "sv_7", -0.466969 AS "sv_8", -1.275339 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", -1.000000 AS "coeff", 0.780117 AS "sv_0", -2.529522 AS "sv_1", -1.406706 AS "sv_2", -1.689343 AS "sv_3", -0.058462 AS "sv_4", 0.106278 AS "sv_5", -1.358300 AS "sv_6", -0.051814 AS "sv_7", 0.549110 AS "sv_8", 0.026033 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", 1.000000 AS "coeff", -0.566777 AS "sv_0", -0.107356 AS "sv_1", 1.701696 AS "sv_2", 0.609468 AS "sv_3", 0.495924 AS "sv_4", -0.037368 AS "sv_5", 1.983282 AS "sv_6", 1.803535 AS "sv_7", 0.044597 AS "sv_8", 1.139575 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", -1.000000 AS "coeff", -0.282563 AS "sv_0", -0.395411 AS "sv_1", -1.346035 AS "sv_2", -1.144138 AS "sv_3", -3.015377 AS "sv_4", -0.290943 AS "sv_5", -0.903477 AS "sv_6", 0.082759 AS "sv_7", 0.197027 AS "sv_8", 0.377285 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", 1.000000 AS "coeff", 2.259198 AS "sv_0", 0.660802 AS "sv_1", -0.359369 AS "sv_2", 0.254461 AS "sv_3", 0.338733 AS "sv_4", 0.999390 AS "sv_5", 0.896915 AS "sv_6", 0.337849 AS "sv_7", 1.643787 AS "sv_8", 0.393010 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", 1.000000 AS "coeff", 0.075401 AS "sv_0", 0.218176 AS "sv_1", 0.891136 AS "sv_2", -0.524541 AS "sv_3", 1.165188 AS "sv_4", -0.591407 AS "sv_5", 1.742593 AS "sv_6", -0.250581 AS "sv_7", 0.095166 AS "sv_8", -0.316811 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", -1.000000 AS "coeff", -3.011217 AS "sv_0", -0.237807 AS "sv_1", -2.809668 AS "sv_2", 0.002221 AS "sv_3", 0.782830 AS "sv_4", 1.331153 AS "sv_5", 1.409284 AS "sv_6", 0.359371 AS "sv_7", -1.268436 AS "sv_8", 0.620385 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", 1.000000 AS "coeff", 0.964759 AS "sv_0", 0.971596 AS "sv_1", 1.508504 AS "sv_2", 1.003045 AS "sv_3", 1.023814 AS "sv_4", -2.328585 AS "sv_5", 0.625941 AS "sv_6", -0.705894 AS "sv_7", 0.330650 AS "sv_8", 1.413018 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", -1.000000 AS "coeff", 0.032754 AS "sv_0", -0.445654 AS "sv_1", 0.311766 AS "sv_2", -1.149125 AS "sv_3", 0.316378 AS "sv_4", -0.828036 AS "sv_5", 0.064451 AS "sv_6", -1.413548 AS "sv_7", -0.913777 AS "sv_8", -0.281119 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", 1.000000 AS "coeff", 1.592630 AS "sv_0", -0.066335 AS "sv_1", 1.591133 AS "sv_2", 0.520360 AS "sv_3", 0.648423 AS "sv_4", 0.415493 AS "sv_5", 0.318371 AS "sv_6", -0.244695 AS "sv_7", 0.296384 AS "sv_8", 0.741941 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", -1.000000 AS "coeff", -1.669459 AS "sv_0", -0.044092 AS "sv_1", -0.303567 AS "sv_2", 1.700493 AS "sv_3", -0.000139 AS "sv_4", -2.143022 AS "sv_5", 0.304266 AS "sv_6", 0.060054 AS "sv_7", 1.434788 AS "sv_8", -1.018245 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", 1.000000 AS "coeff", 1.035806 AS "sv_0", 0.532776 AS "sv_1", 0.294015 AS "sv_2", 1.116240 AS "sv_3", -0.682790 AS "sv_4", -0.174736 AS "sv_5", 0.456464 AS "sv_6", 1.535780 AS "sv_7", -0.215267 AS "sv_8", -0.885298 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", -1.000000 AS "coeff", 0.129468 AS "sv_0", -1.176417 AS "sv_1", 0.409373 AS "sv_2", -1.037899 AS "sv_3", 1.815804 AS "sv_4", -0.605308 AS "sv_5", -0.307703 AS "sv_6", -1.912901 AS "sv_7", 0.177815 AS "sv_8", -2.340592 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", 1.000000 AS "coeff", 1.178419 AS "sv_0", 0.193465 AS "sv_1", 1.163731 AS "sv_2", 1.207158 AS "sv_3", 1.921013 AS "sv_4", 0.576898 AS "sv_5", 0.816608 AS "sv_6", -0.976293 AS "sv_7", -0.649716 AS "sv_8", -0.588066 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", -1.000000 AS "coeff", 1.769492 AS "sv_0", -1.042066 AS "sv_1", -1.457392 AS "sv_2", -0.077377 AS "sv_3", -0.484194 AS "sv_4", 0.312525 AS "sv_5", -1.229191 AS "sv_6", -0.794655 AS "sv_7", -1.171378 AS "sv_8", -0.559796 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", -1.000000 AS "coeff", 0.982460 AS "sv_0", -2.571504 AS "sv_1", -1.367336 AS "sv_2", -0.268029 AS "sv_3", 2.087631 AS "sv_4", -1.005192 AS "sv_5", -2.533357 AS "sv_6", -0.726558 AS "sv_7", 1.326329 AS "sv_8", 1.263514 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", 1.000000 AS "coeff", 2.418498 AS "sv_0", 0.602050 AS "sv_1", -0.539424 AS "sv_2", 1.569187 AS "sv_3", 0.844071 AS "sv_4", 0.250577 AS "sv_5", -0.886751 AS "sv_6", 0.446464 AS "sv_7", -0.020161 AS "sv_8", 0.888178 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", -1.000000 AS "coeff", -1.927612 AS "sv_0", -0.316783 AS "sv_1", 0.290627 AS "sv_2", 0.406365 AS "sv_3", -1.352393 AS "sv_4", -0.351756 AS "sv_5", 0.108727 AS "sv_6", -0.073745 AS "sv_7", -0.977294 AS "sv_8", 1.224994 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", -1.000000 AS "coeff", -0.604931 AS "sv_0", -1.028771 AS "sv_1", -0.294286 AS "sv_2", 1.036856 AS "sv_3", 0.259735 AS "sv_4", 1.238218 AS "sv_5", -1.984622 AS "sv_6", 0.567350 AS "sv_7", -0.923314 AS "sv_8", 1.783791 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", 1.000000 AS "coeff", 0.945076 AS "sv_0", 0.662082 AS "sv_1", 0.142446 AS "sv_2", -0.802173 AS "sv_3", 0.605017 AS "sv_4", 2.164213 AS "sv_5", 0.075679 AS "sv_6", 1.761466 AS "sv_7", -1.026264 AS "sv_8", 0.769918 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", -1.000000 AS "coeff", 0.415124 AS "sv_0", -0.371661 AS "sv_1", -0.969137 AS "sv_2", -1.446053 AS "sv_3", 0.028876 AS "sv_4", -1.039658 AS "sv_5", -0.850981 AS "sv_6", -0.761545 AS "sv_7", 0.315557 AS "sv_8", 1.207732 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", -1.000000 AS "coeff", -1.036888 AS "sv_0", -0.024599 AS "sv_1", -1.392098 AS "sv_2", -2.101363 AS "sv_3", -0.440851 AS "sv_4", -0.508293 AS "sv_5", 0.315350 AS "sv_6", -1.595709 AS "sv_7", 0.141595 AS "sv_8", -1.339787 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", 1.000000 AS "coeff", 0.207437 AS "sv_0", -0.626561 AS "sv_1", 1.178284 AS "sv_2", 1.906174 AS "sv_3", 0.421175 AS "sv_4", -0.068387 AS "sv_5", 1.557129 AS "sv_6", 0.080892 AS "sv_7", -1.159508 AS "sv_8", 1.674134 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", -1.000000 AS "coeff", -0.820466 AS "sv_0", -0.092899 AS "sv_1", -0.354745 AS "sv_2", 0.287695 AS "sv_3", -0.803035 AS "sv_4", 0.139564 AS "sv_5", -0.457806 AS "sv_6", 0.582238 AS "sv_7", -0.568445 AS "sv_8", -0.757459 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", -1.000000 AS "coeff", 0.401742 AS "sv_0", -1.658722 AS "sv_1", -1.476686 AS "sv_2", -1.654730 AS "sv_3", -1.787120 AS "sv_4", -0.615741 AS "sv_5", 0.613185 AS "sv_6", 1.071325 AS "sv_7", -0.811402 AS "sv_8", 0.163981 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", -1.000000 AS "coeff", -0.870149 AS "sv_0", -0.752639 AS "sv_1", -0.214174 AS "sv_2", 1.249193 AS "sv_3", -0.937758 AS "sv_4", 0.148611 AS "sv_5", -0.875522 AS "sv_6", -0.961511 AS "sv_7", -1.062297 AS "sv_8", -0.739897 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", 1.000000 AS "coeff", -0.698733 AS "sv_0", 3.062791 AS "sv_1", 0.257747 AS "sv_2", -0.548994 AS "sv_3", -0.517579 AS "sv_4", 1.070702 AS "sv_5", 0.304982 AS "sv_6", 0.318899 AS "sv_7", -0.250216 AS "sv_8", 1.428937 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", -1.000000 AS "coeff", -0.956213 AS "sv_0", -1.712332 AS "sv_1", 0.158220 AS "sv_2", 0.473843 AS "sv_3", -1.513727 AS "sv_4", 0.699988 AS "sv_5", -1.415951 AS "sv_6", -2.027736 AS "sv_7", 0.160639 AS "sv_8", 0.843978 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", 1.000000 AS "coeff", 1.194446 AS "sv_0", -0.017192 AS "sv_1", 1.482371 AS "sv_2", -0.363097 AS "sv_3", 2.120265 AS "sv_4", -0.427271 AS "sv_5", -0.572071 AS "sv_6", 0.920180 AS "sv_7", 0.581963 AS "sv_8", 0.670472 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", -1.000000 AS "coeff", -0.580622 AS "sv_0", -0.779140 AS "sv_1", 0.104456 AS "sv_2", -0.149149 AS "sv_3", 0.520101 AS "sv_4", 0.022676 AS "sv_5", -0.583748 AS "sv_6", 0.004068 AS "sv_7", -0.835186 AS "sv_8", -2.311487 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", -1.000000 AS "coeff", -1.114936 AS "sv_0", -0.193959 AS "sv_1", -1.508750 AS "sv_2", -2.419705 AS "sv_3", -0.718773 AS "sv_4", -0.161991 AS "sv_5", 0.012909 AS "sv_6", 1.317417 AS "sv_7", 0.442332 AS "sv_8", -2.029140 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", 1.000000 AS "coeff", 2.484432 AS "sv_0", -0.599458 AS "sv_1", 0.119987 AS "sv_2", 0.825037 AS "sv_3", -2.195806 AS "sv_4", -1.082385 AS "sv_5", 1.976712 AS "sv_6", -0.208409 AS "sv_7", 1.452886 AS "sv_8", -0.901476 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", -1.000000 AS "coeff", 0.722757 AS "sv_0", -0.514667 AS "sv_1", -0.360033 AS "sv_2", 0.824692 AS "sv_3", -1.697258 AS "sv_4", 0.935447 AS "sv_5", -1.579319 AS "sv_6", -1.742050 AS "sv_7", 0.861355 AS "sv_8", -1.584822 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", 1.000000 AS "coeff", 0.688381 AS "sv_0", 0.502706 AS "sv_1", 1.565170 AS "sv_2", -0.803346 AS "sv_3", 2.194218 AS "sv_4", -1.093374 AS "sv_5", 1.993191 AS "sv_6", 1.369458 AS "sv_7", 0.664299 AS "sv_8", 1.399513 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", 1.000000 AS "coeff", 1.038429 AS "sv_0", 1.946351 AS "sv_1", 0.359601 AS "sv_2", 1.905624 AS "sv_3", -0.649079 AS "sv_4", -0.630081 AS "sv_5", -0.131833 AS "sv_6", 1.301790 AS "sv_7", -0.945896 AS "sv_8", 1.058907 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", -1.000000 AS "coeff", -0.556619 AS "sv_0", -0.453353 AS "sv_1", -0.954313 AS "sv_2", -0.027242 AS "sv_3", 0.410704 AS "sv_4", -2.106026 AS "sv_5", -0.979750 AS "sv_6", 1.118346 AS "sv_7", -1.917618 AS "sv_8", -0.429714 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", 1.000000 AS "coeff", 0.764710 AS "sv_0", -0.131963 AS "sv_1", 2.929883 AS "sv_2", 0.541185 AS "sv_3", 0.398369 AS "sv_4", 0.432224 AS "sv_5", -0.203324 AS "sv_6", -0.310808 AS "sv_7", -0.580665 AS "sv_8", 1.869243 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", 1.000000 AS "coeff", 1.615264 AS "sv_0", 1.280778 AS "sv_1", 2.168024 AS "sv_2", 0.167350 AS "sv_3", 1.848855 AS "sv_4", -0.371764 AS "sv_5", 0.448637 AS "sv_6", -0.141452 AS "sv_7", -1.229369 AS "sv_8", -1.308475 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", 1.000000 AS "coeff", 1.721651 AS "sv_0", 1.302834 AS "sv_1", -0.569156 AS "sv_2", -0.343857 AS "sv_3", 1.679954 AS "sv_4", 0.834037 AS "sv_5", 0.198805 AS "sv_6", 1.229313 AS "sv_7", -0.088277 AS "sv_8", -2.103784 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", 1.000000 AS "coeff", 0.951369 AS "sv_0", 0.000628 AS "sv_1", 2.025298 AS "sv_2", 2.396950 AS "sv_3", 1.078692 AS "sv_4", -1.270538 AS "sv_5", 1.671911 AS "sv_6", 0.644695 AS "sv_7", -0.525940 AS "sv_8", -0.173784 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", 1.000000 AS "coeff", 1.226346 AS "sv_0", -0.046585 AS "sv_1", 0.608226 AS "sv_2", -0.124441 AS "sv_3", 0.544270 AS "sv_4", 1.103332 AS "sv_5", 1.136774 AS "sv_6", -1.031263 AS "sv_7", -0.173082 AS "sv_8", -0.285045 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", -1.000000 AS "coeff", -0.752556 AS "sv_0", -0.336265 AS "sv_1", -0.271180 AS "sv_2", 0.398863 AS "sv_3", -0.709494 AS "sv_4", -1.413439 AS "sv_5", 0.329690 AS "sv_6", 0.594172 AS "sv_7", -1.129702 AS "sv_8", 0.098405 AS "sv_9"
     UNION ALL
     SELECT 222 AS "sv_idx", -1.000000 AS "coeff", -0.798181 AS "sv_0", -1.284449 AS "sv_1", -0.344344 AS "sv_2", 0.280106 AS "sv_3", 0.749310 AS "sv_4", -0.090137 AS "sv_5", -0.358191 AS "sv_6", 1.216005 AS "sv_7", -1.776875 AS "sv_8", -0.465551 AS "sv_9"
     UNION ALL
     SELECT 223 AS "sv_idx", 1.000000 AS "coeff", -0.089211 AS "sv_0", 0.312728 AS "sv_1", 1.315380 AS "sv_2", 1.087081 AS "sv_3", -1.489479 AS "sv_4", 0.281810 AS "sv_5", 3.358608 AS "sv_6", 0.065406 AS "sv_7", -1.755447 AS "sv_8", -1.047703 AS "sv_9"
     UNION ALL
     SELECT 224 AS "sv_idx", 1.000000 AS "coeff", -0.295064 AS "sv_0", 1.194803 AS "sv_1", 1.861863 AS "sv_2", 1.707372 AS "sv_3", 0.633005 AS "sv_4", -0.225227 AS "sv_5", 2.782754 AS "sv_6", 0.944220 AS "sv_7", 1.771623 AS "sv_8", 0.845925 AS "sv_9"
     UNION ALL
     SELECT 225 AS "sv_idx", -1.000000 AS "coeff", -0.962087 AS "sv_0", -0.811300 AS "sv_1", -0.860895 AS "sv_2", -0.618786 AS "sv_3", 1.154862 AS "sv_4", -0.109392 AS "sv_5", -1.451841 AS "sv_6", -1.351123 AS "sv_7", -0.609824 AS "sv_8", 1.677988 AS "sv_9"
     UNION ALL
     SELECT 226 AS "sv_idx", 1.000000 AS "coeff", 0.685767 AS "sv_0", 0.122114 AS "sv_1", 0.384816 AS "sv_2", -0.749826 AS "sv_3", -0.200196 AS "sv_4", 0.598082 AS "sv_5", 1.780668 AS "sv_6", 0.301875 AS "sv_7", 0.041167 AS "sv_8", -1.846989 AS "sv_9"
     UNION ALL
     SELECT 227 AS "sv_idx", -1.000000 AS "coeff", -0.050998 AS "sv_0", 0.721293 AS "sv_1", -1.241004 AS "sv_2", 1.204157 AS "sv_3", 0.516402 AS "sv_4", -2.292508 AS "sv_5", -0.535152 AS "sv_6", -1.413580 AS "sv_7", 0.146811 AS "sv_8", -0.863599 AS "sv_9"
     UNION ALL
     SELECT 228 AS "sv_idx", -1.000000 AS "coeff", 0.246489 AS "sv_0", -0.143877 AS "sv_1", -0.284765 AS "sv_2", 1.535324 AS "sv_3", 0.708349 AS "sv_4", -1.536729 AS "sv_5", -1.279053 AS "sv_6", 1.137312 AS "sv_7", -0.447679 AS "sv_8", -1.251171 AS "sv_9"
     UNION ALL
     SELECT 229 AS "sv_idx", 1.000000 AS "coeff", 0.718688 AS "sv_0", 2.345176 AS "sv_1", 1.140082 AS "sv_2", -0.255796 AS "sv_3", -0.541699 AS "sv_4", -0.267152 AS "sv_5", 0.477413 AS "sv_6", 0.211695 AS "sv_7", 1.671833 AS "sv_8", 0.021005 AS "sv_9"
     UNION ALL
     SELECT 230 AS "sv_idx", -1.000000 AS "coeff", -2.540307 AS "sv_0", 0.615175 AS "sv_1", -0.852460 AS "sv_2", 0.312049 AS "sv_3", 0.384321 AS "sv_4", -0.691277 AS "sv_5", -1.518534 AS "sv_6", -0.496941 AS "sv_7", -0.073622 AS "sv_8", 0.594182 AS "sv_9"
     UNION ALL
     SELECT 231 AS "sv_idx", -1.000000 AS "coeff", -0.936137 AS "sv_0", -0.536943 AS "sv_1", 0.395361 AS "sv_2", 0.985637 AS "sv_3", 0.651706 AS "sv_4", -1.064311 AS "sv_5", -1.857782 AS "sv_6", -3.020075 AS "sv_7", -0.219744 AS "sv_8", -0.860749 AS "sv_9"
     UNION ALL
     SELECT 232 AS "sv_idx", 1.000000 AS "coeff", 0.489235 AS "sv_0", 0.400164 AS "sv_1", 1.293302 AS "sv_2", 0.296031 AS "sv_3", 0.045590 AS "sv_4", 0.677102 AS "sv_5", 0.347311 AS "sv_6", 0.088336 AS "sv_7", -0.465157 AS "sv_8", 0.657557 AS "sv_9"
     UNION ALL
     SELECT 233 AS "sv_idx", -1.000000 AS "coeff", 0.393102 AS "sv_0", 0.307817 AS "sv_1", -1.134850 AS "sv_2", 0.832917 AS "sv_3", 0.171390 AS "sv_4", -0.701044 AS "sv_5", -1.324874 AS "sv_6", -1.957513 AS "sv_7", 0.378248 AS "sv_8", -1.682409 AS "sv_9"
     UNION ALL
     SELECT 234 AS "sv_idx", -1.000000 AS "coeff", -0.763466 AS "sv_0", -1.490953 AS "sv_1", 0.504608 AS "sv_2", 0.272247 AS "sv_3", 1.371819 AS "sv_4", -0.872367 AS "sv_5", -0.493654 AS "sv_6", -1.418165 AS "sv_7", -1.293185 AS "sv_8", 0.296001 AS "sv_9"
     UNION ALL
     SELECT 235 AS "sv_idx", -1.000000 AS "coeff", -0.300907 AS "sv_0", 0.092844 AS "sv_1", -1.798404 AS "sv_2", 0.844823 AS "sv_3", 1.148211 AS "sv_4", -0.411208 AS "sv_5", -2.001013 AS "sv_6", -0.332793 AS "sv_7", -1.111466 AS "sv_8", 2.101292 AS "sv_9"
     UNION ALL
     SELECT 236 AS "sv_idx", 1.000000 AS "coeff", 0.407709 AS "sv_0", 1.731959 AS "sv_1", 2.029409 AS "sv_2", 0.944727 AS "sv_3", 0.109421 AS "sv_4", 0.459821 AS "sv_5", 0.789806 AS "sv_6", -0.526205 AS "sv_7", -0.132555 AS "sv_8", -1.108467 AS "sv_9"
     UNION ALL
     SELECT 237 AS "sv_idx", 1.000000 AS "coeff", 2.220948 AS "sv_0", -0.482871 AS "sv_1", 1.353956 AS "sv_2", 0.294475 AS "sv_3", -0.686710 AS "sv_4", -1.214868 AS "sv_5", -0.624203 AS "sv_6", 0.918528 AS "sv_7", 1.336011 AS "sv_8", -0.088408 AS "sv_9"
     UNION ALL
     SELECT 238 AS "sv_idx", -1.000000 AS "coeff", -0.260382 AS "sv_0", 0.402392 AS "sv_1", -0.670571 AS "sv_2", 1.286237 AS "sv_3", -0.656967 AS "sv_4", -0.619251 AS "sv_5", -1.976581 AS "sv_6", -1.946761 AS "sv_7", -0.154320 AS "sv_8", -0.966909 AS "sv_9"
     UNION ALL
     SELECT 239 AS "sv_idx", -1.000000 AS "coeff", -0.801091 AS "sv_0", -0.935738 AS "sv_1", 1.473933 AS "sv_2", -0.087027 AS "sv_3", -0.888636 AS "sv_4", 0.132174 AS "sv_5", -1.740075 AS "sv_6", -0.222850 AS "sv_7", -1.451853 AS "sv_8", -0.691932 AS "sv_9"
     UNION ALL
     SELECT 240 AS "sv_idx", 1.000000 AS "coeff", 2.403274 AS "sv_0", 0.375416 AS "sv_1", 1.439453 AS "sv_2", -0.577537 AS "sv_3", 0.724526 AS "sv_4", 1.642020 AS "sv_5", 0.606415 AS "sv_6", 1.273062 AS "sv_7", 0.348294 AS "sv_8", -1.197603 AS "sv_9"
     UNION ALL
     SELECT 241 AS "sv_idx", 1.000000 AS "coeff", 1.332758 AS "sv_0", 0.047543 AS "sv_1", -0.391760 AS "sv_2", -1.981232 AS "sv_3", -0.337585 AS "sv_4", -0.296093 AS "sv_5", 1.721876 AS "sv_6", -0.249057 AS "sv_7", 2.038069 AS "sv_8", 0.290300 AS "sv_9"
     UNION ALL
     SELECT 242 AS "sv_idx", -1.000000 AS "coeff", -0.465549 AS "sv_0", 0.089483 AS "sv_1", -1.858523 AS "sv_2", 0.032081 AS "sv_3", -0.024752 AS "sv_4", -0.832824 AS "sv_5", -0.452338 AS "sv_6", 1.658847 AS "sv_7", -1.260691 AS "sv_8", -0.835031 AS "sv_9"
     UNION ALL
     SELECT 243 AS "sv_idx", -1.000000 AS "coeff", -0.088077 AS "sv_0", -1.135769 AS "sv_1", -0.185608 AS "sv_2", 1.541978 AS "sv_3", -0.723740 AS "sv_4", -0.000635 AS "sv_5", -0.595570 AS "sv_6", -2.303279 AS "sv_7", -1.347914 AS "sv_8", 0.640191 AS "sv_9"
     UNION ALL
     SELECT 244 AS "sv_idx", 1.000000 AS "coeff", 0.408465 AS "sv_0", 0.361389 AS "sv_1", 0.107384 AS "sv_2", -0.822352 AS "sv_3", 0.946769 AS "sv_4", 0.505171 AS "sv_5", 1.615504 AS "sv_6", -1.799496 AS "sv_7", 1.402252 AS "sv_8", 0.819418 AS "sv_9"
     UNION ALL
     SELECT 245 AS "sv_idx", -1.000000 AS "coeff", -1.111266 AS "sv_0", -0.153776 AS "sv_1", -1.654098 AS "sv_2", -0.529378 AS "sv_3", -2.084757 AS "sv_4", -1.174514 AS "sv_5", 0.751192 AS "sv_6", 0.452218 AS "sv_7", -1.975403 AS "sv_8", -2.083950 AS "sv_9"
     UNION ALL
     SELECT 246 AS "sv_idx", -1.000000 AS "coeff", -0.166372 AS "sv_0", -0.130838 AS "sv_1", -1.004811 AS "sv_2", 0.378066 AS "sv_3", -1.769074 AS "sv_4", -1.274597 AS "sv_5", -0.348532 AS "sv_6", -1.408014 AS "sv_7", 1.694823 AS "sv_8", -1.391582 AS "sv_9"
     UNION ALL
     SELECT 247 AS "sv_idx", -1.000000 AS "coeff", -1.154770 AS "sv_0", -1.982372 AS "sv_1", -0.428635 AS "sv_2", 0.212139 AS "sv_3", 0.228449 AS "sv_4", 1.279009 AS "sv_5", -0.197016 AS "sv_6", 1.138560 AS "sv_7", -0.455936 AS "sv_8", 0.296664 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -1.751305 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.094635 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
