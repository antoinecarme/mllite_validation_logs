WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"SV_data" AS
 ( SELECT 
   "Values".sv_idx AS sv_idx,
   CAST("Values".sv_0 AS FLOAT) sv_0,
   CAST("Values".sv_1 AS FLOAT) sv_1,
   CAST("Values".sv_2 AS FLOAT) sv_2,
   CAST("Values".sv_3 AS FLOAT) sv_3,
   CAST("Values".sv_4 AS FLOAT) sv_4,
   CAST("Values".sv_5 AS FLOAT) sv_5,
   CAST("Values".sv_6 AS FLOAT) sv_6,
   CAST("Values".sv_7 AS FLOAT) sv_7,
   CAST("Values".sv_8 AS FLOAT) sv_8,
   CAST("Values".sv_9 AS FLOAT) sv_9
  FROM
  (
     SELECT 0 AS sv_idx, 0.928858 AS sv_0, -1.177375 AS sv_1, 0.542731 AS sv_2, 1.248167 AS sv_3, -0.732359 AS sv_4, 0.692213 AS sv_5, 0.362028 AS sv_6, -0.053731 AS sv_7, 0.485529 AS sv_8, 1.106564 AS sv_9
     UNION ALL
     SELECT 1 AS sv_idx, -1.750210 AS sv_0, 1.576099 AS sv_1, 0.286503 AS sv_2, -1.740885 AS sv_3, -0.949967 AS sv_4, -0.384233 AS sv_5, 0.038996 AS sv_6, -1.160993 AS sv_7, -2.267550 AS sv_8, 1.213184 AS sv_9
     UNION ALL
     SELECT 2 AS sv_idx, -0.649409 AS sv_0, 1.030112 AS sv_1, 0.590313 AS sv_2, -1.432318 AS sv_3, 0.032630 AS sv_4, -0.008973 AS sv_5, -0.488904 AS sv_6, -0.064296 AS sv_7, -0.635514 AS sv_8, 0.255228 AS sv_9
     UNION ALL
     SELECT 3 AS sv_idx, -1.188768 AS sv_0, 0.337391 AS sv_1, 1.089971 AS sv_2, -0.582258 AS sv_3, -0.743904 AS sv_4, -0.229958 AS sv_5, 0.402639 AS sv_6, -2.571504 AS sv_7, -2.999698 AS sv_8, -0.753200 AS sv_9
     UNION ALL
     SELECT 4 AS sv_idx, -1.839352 AS sv_0, 2.261719 AS sv_1, -0.549117 AS sv_2, -2.560598 AS sv_3, 0.729968 AS sv_4, -0.786977 AS sv_5, -3.115862 AS sv_6, -1.393732 AS sv_7, 0.133436 AS sv_8, -0.008195 AS sv_9
     UNION ALL
     SELECT 5 AS sv_idx, 2.867865 AS sv_0, -1.912016 AS sv_1, 0.005109 AS sv_2, -0.897717 AS sv_3, -0.413690 AS sv_4, 1.138185 AS sv_5, -1.696764 AS sv_6, -1.535723 AS sv_7, -0.616466 AS sv_8, -0.572385 AS sv_9
     UNION ALL
     SELECT 6 AS sv_idx, 0.565428 AS sv_0, -1.269834 AS sv_1, 0.635504 AS sv_2, 2.015342 AS sv_3, -0.065637 AS sv_4, 1.535278 AS sv_5, -0.567976 AS sv_6, -0.752460 AS sv_7, 1.491703 AS sv_8, -1.376513 AS sv_9
     UNION ALL
     SELECT 7 AS sv_idx, 1.725204 AS sv_0, -2.392022 AS sv_1, -0.024752 AS sv_2, 2.720746 AS sv_3, -0.835031 AS sv_4, -0.452338 AS sv_5, 2.486438 AS sv_6, 0.519174 AS sv_7, -0.105711 AS sv_8, -0.832824 AS sv_9
     UNION ALL
     SELECT 8 AS sv_idx, -1.705554 AS sv_0, 0.634027 AS sv_1, 1.788292 AS sv_2, -0.654940 AS sv_3, -0.263412 AS sv_4, -1.061929 AS sv_5, -2.404255 AS sv_6, -4.245071 AS sv_7, -1.567195 AS sv_8, 1.138708 AS sv_9
     UNION ALL
     SELECT 9 AS sv_idx, -0.102391 AS sv_0, 0.424823 AS sv_1, -1.644819 AS sv_2, -0.805329 AS sv_3, 0.881708 AS sv_4, 0.086143 AS sv_5, 1.515527 AS sv_6, 0.917662 AS sv_7, -1.400397 AS sv_8, 0.029573 AS sv_9
     UNION ALL
     SELECT 10 AS sv_idx, 0.774314 AS sv_0, -1.319097 AS sv_1, -0.425435 AS sv_2, 1.480569 AS sv_3, 0.566889 AS sv_4, 1.119942 AS sv_5, -2.539389 AS sv_6, -2.031812 AS sv_7, 1.957035 AS sv_8, 0.702640 AS sv_9
     UNION ALL
     SELECT 11 AS sv_idx, 2.031553 AS sv_0, -1.784385 AS sv_1, 2.399862 AS sv_2, 0.485730 AS sv_3, 1.134490 AS sv_4, -1.070227 AS sv_5, -0.670047 AS sv_6, -0.914140 AS sv_7, 0.068923 AS sv_8, 0.060765 AS sv_9
     UNION ALL
     SELECT 12 AS sv_idx, 1.360290 AS sv_0, -2.420638 AS sv_1, -2.330260 AS sv_2, 3.185871 AS sv_3, 0.879701 AS sv_4, -1.961285 AS sv_5, 0.656604 AS sv_6, -0.778452 AS sv_7, 1.063473 AS sv_8, 0.943493 AS sv_9
     UNION ALL
     SELECT 13 AS sv_idx, -0.071107 AS sv_0, 1.219655 AS sv_1, 0.502317 AS sv_2, -1.961473 AS sv_3, 0.705807 AS sv_4, 0.659755 AS sv_5, -2.476790 AS sv_6, 0.571177 AS sv_7, 1.481645 AS sv_8, 1.238595 AS sv_9
     UNION ALL
     SELECT 14 AS sv_idx, 0.081388 AS sv_0, -0.911230 AS sv_1, -1.420232 AS sv_2, 1.773263 AS sv_3, 0.302626 AS sv_4, -0.692549 AS sv_5, -3.248362 AS sv_6, -2.278872 AS sv_7, 2.782200 AS sv_8, -0.049331 AS sv_9
     UNION ALL
     SELECT 15 AS sv_idx, -2.300030 AS sv_0, 2.981089 AS sv_1, 1.310992 AS sv_2, -2.644979 AS sv_3, 0.649899 AS sv_4, 1.855226 AS sv_5, -1.027931 AS sv_6, 0.945393 AS sv_7, 0.000418 AS sv_8, 0.598406 AS sv_9
     UNION ALL
     SELECT 16 AS sv_idx, -0.124049 AS sv_0, 0.768644 AS sv_1, -1.040184 AS sv_2, -1.041910 AS sv_3, -0.515943 AS sv_4, 1.480217 AS sv_5, -1.720070 AS sv_6, 0.342352 AS sv_7, 1.247335 AS sv_8, -1.413962 AS sv_9
     UNION ALL
     SELECT 17 AS sv_idx, -0.049861 AS sv_0, 1.019062 AS sv_1, -0.239901 AS sv_2, -1.762634 AS sv_3, 0.672174 AS sv_4, 0.659128 AS sv_5, -1.484999 AS sv_6, 0.600685 AS sv_7, 0.642133 AS sv_8, 0.460004 AS sv_9
     UNION ALL
     SELECT 18 AS sv_idx, -1.368644 AS sv_0, 0.716127 AS sv_1, 0.307297 AS sv_2, 0.899080 AS sv_3, -0.303330 AS sv_4, 1.272378 AS sv_5, -0.112382 AS sv_6, 0.215110 AS sv_7, 1.172710 AS sv_8, 1.728197 AS sv_9
     UNION ALL
     SELECT 19 AS sv_idx, -1.728087 AS sv_0, 2.393295 AS sv_1, 0.055107 AS sv_2, -1.740847 AS sv_3, -1.848529 AS sv_4, -0.978944 AS sv_5, 0.438442 AS sv_6, 2.200070 AS sv_7, 0.248741 AS sv_8, 1.048002 AS sv_9
     UNION ALL
     SELECT 20 AS sv_idx, -1.211760 AS sv_0, 1.142924 AS sv_1, 1.339303 AS sv_2, -0.829514 AS sv_3, -0.248514 AS sv_4, 1.220032 AS sv_5, -1.777777 AS sv_6, -0.916606 AS sv_7, 0.495779 AS sv_8, 0.931445 AS sv_9
     UNION ALL
     SELECT 21 AS sv_idx, -0.359051 AS sv_0, 0.093840 AS sv_1, -1.040202 AS sv_2, 0.237889 AS sv_3, -0.187741 AS sv_4, 0.767880 AS sv_5, 1.191305 AS sv_6, 0.265512 AS sv_7, -0.767644 AS sv_8, -0.358049 AS sv_9
     UNION ALL
     SELECT 22 AS sv_idx, 1.076219 AS sv_0, 0.555706 AS sv_1, -0.310657 AS sv_2, -1.854151 AS sv_3, 1.736608 AS sv_4, -0.380529 AS sv_5, -0.269973 AS sv_6, 2.328577 AS sv_7, 0.702019 AS sv_8, -0.746542 AS sv_9
     UNION ALL
     SELECT 23 AS sv_idx, 0.609771 AS sv_0, 0.842384 AS sv_1, 0.029904 AS sv_2, -1.886410 AS sv_3, 2.396950 AS sv_4, 0.951369 AS sv_5, -1.595453 AS sv_6, 1.495704 AS sv_7, 1.366675 AS sv_8, 0.117515 AS sv_9
     UNION ALL
     SELECT 24 AS sv_idx, 1.953073 AS sv_0, -0.650314 AS sv_1, 0.920725 AS sv_2, -0.838924 AS sv_3, -1.476252 AS sv_4, -0.535268 AS sv_5, -0.650624 AS sv_6, 1.355238 AS sv_7, 0.969818 AS sv_8, -0.487362 AS sv_9
     UNION ALL
     SELECT 25 AS sv_idx, 0.116568 AS sv_0, 0.976497 AS sv_1, 0.503976 AS sv_2, -1.585723 AS sv_3, 0.185032 AS sv_4, 0.564199 AS sv_5, -1.635908 AS sv_6, 1.068042 AS sv_7, 1.329987 AS sv_8, 0.789642 AS sv_9
     UNION ALL
     SELECT 26 AS sv_idx, 2.016849 AS sv_0, -1.191537 AS sv_1, -1.332499 AS sv_2, -0.119352 AS sv_3, 0.169375 AS sv_4, 0.420555 AS sv_5, -3.636702 AS sv_6, -0.911384 AS sv_7, 2.645946 AS sv_8, -0.221895 AS sv_9
     UNION ALL
     SELECT 27 AS sv_idx, -0.191931 AS sv_0, -0.162504 AS sv_1, 1.151646 AS sv_2, 1.053780 AS sv_3, 0.043356 AS sv_4, -0.163908 AS sv_5, -2.428284 AS sv_6, -0.792489 AS sv_7, 2.682316 AS sv_8, 0.789276 AS sv_9
     UNION ALL
     SELECT 28 AS sv_idx, -1.569218 AS sv_0, 2.574346 AS sv_1, 1.953913 AS sv_2, -2.971349 AS sv_3, 0.418451 AS sv_4, 0.443428 AS sv_5, -1.304433 AS sv_6, 0.796727 AS sv_7, -0.184424 AS sv_8, 0.413981 AS sv_9
     UNION ALL
     SELECT 29 AS sv_idx, -2.936037 AS sv_0, 2.067057 AS sv_1, -0.795721 AS sv_2, 1.232088 AS sv_3, 0.034662 AS sv_4, 1.141055 AS sv_5, 2.088878 AS sv_6, 2.590199 AS sv_7, 1.407819 AS sv_8, -0.067862 AS sv_9
     UNION ALL
     SELECT 30 AS sv_idx, -0.995873 AS sv_0, 1.788268 AS sv_1, -0.548994 AS sv_2, -1.646569 AS sv_3, 0.318899 AS sv_4, 0.257747 AS sv_5, -0.232644 AS sv_6, 1.704262 AS sv_7, 0.506640 AS sv_8, -0.698733 AS sv_9
     UNION ALL
     SELECT 31 AS sv_idx, 1.914430 AS sv_0, -1.187978 AS sv_1, -1.908593 AS sv_2, -0.003361 AS sv_3, -0.783720 AS sv_4, -1.616949 AS sv_5, -1.228041 AS sv_6, 0.100255 AS sv_7, 1.147780 AS sv_8, -0.640430 AS sv_9
     UNION ALL
     SELECT 32 AS sv_idx, 0.141928 AS sv_0, -0.408314 AS sv_1, 0.402207 AS sv_2, 0.513474 AS sv_3, 1.632655 AS sv_4, 0.113585 AS sv_5, -0.501597 AS sv_6, -0.685914 AS sv_7, 0.317499 AS sv_8, -0.049391 AS sv_9
     UNION ALL
     SELECT 33 AS sv_idx, -1.050659 AS sv_0, 0.920640 AS sv_1, -0.455125 AS sv_2, -0.050130 AS sv_3, -0.191627 AS sv_4, 0.584329 AS sv_5, 0.943031 AS sv_6, 1.021308 AS sv_7, -0.010797 AS sv_8, -1.586949 AS sv_9
     UNION ALL
     SELECT 34 AS sv_idx, 0.914030 AS sv_0, -0.385815 AS sv_1, 2.120265 AS sv_2, -1.074814 AS sv_3, 0.670472 AS sv_4, -0.572071 AS sv_5, -1.966973 AS sv_6, -1.398672 AS sv_7, -0.152956 AS sv_8, -0.427271 AS sv_9
     UNION ALL
     SELECT 35 AS sv_idx, -0.128543 AS sv_0, 1.029262 AS sv_1, -1.338428 AS sv_2, -2.145117 AS sv_3, 1.119838 AS sv_4, 0.882593 AS sv_5, -0.514950 AS sv_6, 0.340163 AS sv_7, -0.885099 AS sv_8, 0.307255 AS sv_9
     UNION ALL
     SELECT 36 AS sv_idx, 0.420960 AS sv_0, 0.508218 AS sv_1, 0.792587 AS sv_2, -1.824423 AS sv_3, -0.534459 AS sv_4, -0.802783 AS sv_5, -2.398403 AS sv_6, -0.576551 AS sv_7, 0.458008 AS sv_8, 1.340859 AS sv_9
     UNION ALL
     SELECT 37 AS sv_idx, -1.744387 AS sv_0, 1.663607 AS sv_1, -2.320833 AS sv_2, -0.977799 AS sv_3, -1.353951 AS sv_4, 1.243189 AS sv_5, 2.957223 AS sv_6, 1.604749 AS sv_7, -2.252546 AS sv_8, 1.174554 AS sv_9
     UNION ALL
     SELECT 38 AS sv_idx, -0.594587 AS sv_0, 1.369676 AS sv_1, 0.877953 AS sv_2, -2.593040 AS sv_3, 0.424603 AS sv_4, 0.667879 AS sv_5, -1.684506 AS sv_6, -0.795299 AS sv_7, -0.979715 AS sv_8, -1.954555 AS sv_9
     UNION ALL
     SELECT 39 AS sv_idx, 1.900405 AS sv_0, -1.479081 AS sv_1, 0.125657 AS sv_2, -0.313671 AS sv_3, -2.103942 AS sv_4, -0.193720 AS sv_5, 0.040858 AS sv_6, -0.894352 AS sv_7, -1.276576 AS sv_8, 0.145527 AS sv_9
     UNION ALL
     SELECT 40 AS sv_idx, -1.149210 AS sv_0, 1.354812 AS sv_1, -1.459610 AS sv_2, -0.738516 AS sv_3, -1.015174 AS sv_4, 0.275448 AS sv_5, 3.063931 AS sv_6, 2.428513 AS sv_7, -1.515062 AS sv_8, 0.931701 AS sv_9
     UNION ALL
     SELECT 41 AS sv_idx, 1.395205 AS sv_0, -0.687010 AS sv_1, -0.918347 AS sv_2, -1.586565 AS sv_3, -0.054809 AS sv_4, 0.371851 AS sv_5, -1.795299 AS sv_6, -1.874978 AS sv_7, -1.208421 AS sv_8, 0.434021 AS sv_9
     UNION ALL
     SELECT 42 AS sv_idx, -0.694214 AS sv_0, 0.299522 AS sv_1, 0.714899 AS sv_2, 0.542021 AS sv_3, 1.019968 AS sv_4, 0.342609 AS sv_5, 1.555436 AS sv_6, 0.732274 AS sv_7, -0.455815 AS sv_8, 0.537001 AS sv_9
     UNION ALL
     SELECT 43 AS sv_idx, 3.395908 AS sv_0, -4.726336 AS sv_1, 0.970956 AS sv_2, 2.775282 AS sv_3, -0.056961 AS sv_4, -0.984318 AS sv_5, 5.312751 AS sv_6, -2.457456 AS sv_7, -5.750276 AS sv_8, 1.529138 AS sv_9
     UNION ALL
     SELECT 44 AS sv_idx, -2.598929 AS sv_0, 3.463445 AS sv_1, -0.023906 AS sv_2, -4.292647 AS sv_3, 0.492410 AS sv_4, 0.036822 AS sv_5, 2.257645 AS sv_6, 1.190452 AS sv_7, -4.469301 AS sv_8, 0.138775 AS sv_9
     UNION ALL
     SELECT 45 AS sv_idx, 0.365485 AS sv_0, 1.000724 AS sv_1, 0.492872 AS sv_2, -2.667000 AS sv_3, 2.644866 AS sv_4, 0.112363 AS sv_5, -4.855680 AS sv_6, -1.163364 AS sv_7, 1.808733 AS sv_8, -1.585889 AS sv_9
     UNION ALL
     SELECT 46 AS sv_idx, 0.855164 AS sv_0, -0.934582 AS sv_1, -1.885349 AS sv_2, -0.051859 AS sv_3, 0.227505 AS sv_4, -0.483269 AS sv_5, 2.053155 AS sv_6, -0.362082 AS sv_7, -2.566222 AS sv_8, 0.077759 AS sv_9
     UNION ALL
     SELECT 47 AS sv_idx, 1.869880 AS sv_0, -2.312190 AS sv_1, -1.153852 AS sv_2, 1.292078 AS sv_3, -1.061729 AS sv_4, 2.042926 AS sv_5, 1.284271 AS sv_6, -1.335399 AS sv_7, -1.648043 AS sv_8, 2.109906 AS sv_9
     UNION ALL
     SELECT 48 AS sv_idx, -1.598324 AS sv_0, 1.482463 AS sv_1, 1.664691 AS sv_2, -0.791131 AS sv_3, -0.326916 AS sv_4, -0.073560 AS sv_5, -3.352625 AS sv_6, -1.347481 AS sv_7, 1.816532 AS sv_8, 0.637000 AS sv_9
     UNION ALL
     SELECT 49 AS sv_idx, 0.476411 AS sv_0, 0.555172 AS sv_1, 2.004011 AS sv_2, -1.439637 AS sv_3, -0.087655 AS sv_4, 0.899499 AS sv_5, -1.289876 AS sv_6, 0.803645 AS sv_7, 0.821823 AS sv_8, 0.485550 AS sv_9
     UNION ALL
     SELECT 50 AS sv_idx, 1.184632 AS sv_0, -1.691100 AS sv_1, -0.781676 AS sv_2, 1.327282 AS sv_3, 0.194338 AS sv_4, 2.642873 AS sv_5, 1.366181 AS sv_6, -0.742383 AS sv_7, -1.114233 AS sv_8, 0.622367 AS sv_9
     UNION ALL
     SELECT 51 AS sv_idx, 0.125473 AS sv_0, -0.174283 AS sv_1, 0.423296 AS sv_2, -0.360852 AS sv_3, -1.340787 AS sv_4, 0.901386 AS sv_5, -2.116680 AS sv_6, -1.806991 AS sv_7, 0.303962 AS sv_8, 1.501806 AS sv_9
     UNION ALL
     SELECT 52 AS sv_idx, 2.064895 AS sv_0, -1.945791 AS sv_1, -2.029140 AS sv_2, -0.311415 AS sv_3, 0.442332 AS sv_4, -0.193959 AS sv_5, -2.111351 AS sv_6, -3.219500 AS sv_7, -1.099663 AS sv_8, 0.012909 AS sv_9
     UNION ALL
     SELECT 53 AS sv_idx, -1.712743 AS sv_0, 1.902913 AS sv_1, -0.388714 AS sv_2, -1.923115 AS sv_3, -0.594852 AS sv_4, -0.739416 AS sv_5, -5.045153 AS sv_6, -2.419770 AS sv_7, 1.728457 AS sv_8, -0.154601 AS sv_9
     UNION ALL
     SELECT 54 AS sv_idx, -0.071947 AS sv_0, 0.242194 AS sv_1, 2.321921 AS sv_2, -0.381042 AS sv_3, -0.250458 AS sv_4, 0.848285 AS sv_5, 0.370140 AS sv_6, 0.366872 AS sv_7, -0.360941 AS sv_8, 0.290686 AS sv_9
     UNION ALL
     SELECT 55 AS sv_idx, -1.791246 AS sv_0, 1.543989 AS sv_1, -1.577224 AS sv_2, -0.787527 AS sv_3, -0.053480 AS sv_4, -1.015344 AS sv_5, -3.653436 AS sv_6, -1.771331 AS sv_7, 1.780666 AS sv_8, 0.078939 AS sv_9
     UNION ALL
     SELECT 56 AS sv_idx, 0.116964 AS sv_0, 0.764608 AS sv_1, -0.834473 AS sv_2, -1.648333 AS sv_3, 1.616820 AS sv_4, -0.216079 AS sv_5, -4.621155 AS sv_6, -1.207447 AS sv_7, 2.374713 AS sv_8, 0.080743 AS sv_9
     UNION ALL
     SELECT 57 AS sv_idx, 0.260177 AS sv_0, -0.981335 AS sv_1, 0.449974 AS sv_2, 0.980600 AS sv_3, 2.260404 AS sv_4, 0.329801 AS sv_5, 2.518242 AS sv_6, -0.499781 AS sv_7, -2.271735 AS sv_8, 0.741921 AS sv_9
     UNION ALL
     SELECT 58 AS sv_idx, 1.557540 AS sv_0, -2.478364 AS sv_1, 0.248819 AS sv_2, 2.184098 AS sv_3, 1.700319 AS sv_4, -0.140229 AS sv_5, 3.644297 AS sv_6, -0.479801 AS sv_7, -2.585171 AS sv_8, 0.530817 AS sv_9
     UNION ALL
     SELECT 59 AS sv_idx, -0.438059 AS sv_0, -0.593217 AS sv_1, 0.535711 AS sv_2, 2.307372 AS sv_3, -0.018147 AS sv_4, 1.306160 AS sv_5, 3.752574 AS sv_6, 1.507209 AS sv_7, -0.652815 AS sv_8, -1.264657 AS sv_9
   ) AS "Values"
 )
,
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           exp(min(max(-32.0, -0.046523 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2))), 32.0))  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t.prob_idx AS prob_idx, t.c_1 AS c_1, t.c_2 AS c_2, t.sv_idx AS sv_idx, t.coeff AS Coeff
   FROM
   (
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 1 AS sv_idx, 0.648330 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, 1.451968 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, 1.019572 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 6 AS sv_idx, 1.739095 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 8 AS sv_idx, 0.419899 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 9 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 10 AS sv_idx, 1.964526 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 11 AS sv_idx, 1.151451 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 12 AS sv_idx, 0.145490 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 13 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 14 AS sv_idx, 2.401644 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 15 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 16 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 17 AS sv_idx, 0.648330 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 18 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 20 AS sv_idx, 1.451968 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 21 AS sv_idx, 1.019572 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 22 AS sv_idx, 1.739095 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 24 AS sv_idx, 0.419899 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 25 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 26 AS sv_idx, 1.964526 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 27 AS sv_idx, 1.151451 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 28 AS sv_idx, 0.145490 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 29 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 30 AS sv_idx, 2.401644 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 31 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 0 AS sv_idx, 2.604827 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 1 AS sv_idx, 1.318233 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 2 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 3 AS sv_idx, 2.190563 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 4 AS sv_idx, 2.158118 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 5 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 7 AS sv_idx, 1.239346 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 8 AS sv_idx, 0.810344 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 9 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 11 AS sv_idx, 2.779849 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 12 AS sv_idx, 0.215754 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 13 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 14 AS sv_idx, 0.776381 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 15 AS sv_idx, 0.573567 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 33 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 34 AS sv_idx, 0.648330 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 35 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 37 AS sv_idx, 1.451968 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 38 AS sv_idx, 1.019572 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 39 AS sv_idx, 1.739095 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 41 AS sv_idx, 0.419899 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 42 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 43 AS sv_idx, 1.964526 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 44 AS sv_idx, 1.151451 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 45 AS sv_idx, 0.145490 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 46 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 0 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 2 AS sv_idx, 2.382571 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 3 AS sv_idx, 0.861617 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 4 AS sv_idx, 2.415722 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 5 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 6 AS sv_idx, 0.056104 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 7 AS sv_idx, 1.406481 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 8 AS sv_idx, 1.524108 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 9 AS sv_idx, 1.088045 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 10 AS sv_idx, 0.995181 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 11 AS sv_idx, 0.680617 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 13 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 14 AS sv_idx, 2.345154 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 15 AS sv_idx, 0.535725 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 47 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 48 AS sv_idx, 0.648330 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 49 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 51 AS sv_idx, 1.451968 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 52 AS sv_idx, 1.019572 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 53 AS sv_idx, 1.739095 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 55 AS sv_idx, 0.419899 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 56 AS sv_idx, 2.735493 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 57 AS sv_idx, 1.964526 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 58 AS sv_idx, 1.151451 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 59 AS sv_idx, 0.145490 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 16 AS sv_idx, 2.604827 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 17 AS sv_idx, 1.318233 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 18 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 19 AS sv_idx, 2.190563 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 20 AS sv_idx, 2.158118 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 21 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 23 AS sv_idx, 1.239346 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 24 AS sv_idx, 0.810344 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 25 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 27 AS sv_idx, 2.779849 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 28 AS sv_idx, 0.215754 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 29 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 30 AS sv_idx, 0.776381 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 31 AS sv_idx, 0.573567 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 32 AS sv_idx, 0.176338 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 33 AS sv_idx, 2.604827 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 34 AS sv_idx, 1.318233 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 35 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 36 AS sv_idx, 2.190563 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 37 AS sv_idx, 2.158118 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 38 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 40 AS sv_idx, 1.239346 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 41 AS sv_idx, 0.810344 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 42 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 44 AS sv_idx, 2.779849 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 45 AS sv_idx, 0.215754 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 46 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 16 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 18 AS sv_idx, 2.382571 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 19 AS sv_idx, 0.861617 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 20 AS sv_idx, 2.415722 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 21 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 22 AS sv_idx, 0.056104 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 23 AS sv_idx, 1.406481 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 24 AS sv_idx, 1.524108 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 25 AS sv_idx, 1.088045 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 26 AS sv_idx, 0.995181 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 27 AS sv_idx, 0.680617 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 29 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 30 AS sv_idx, 2.345154 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 31 AS sv_idx, 0.535725 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 32 AS sv_idx, 0.096983 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 47 AS sv_idx, 2.604827 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 48 AS sv_idx, 1.318233 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 49 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 50 AS sv_idx, 2.190563 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 51 AS sv_idx, 2.158118 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 52 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 54 AS sv_idx, 1.239346 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 55 AS sv_idx, 0.810344 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 56 AS sv_idx, 3.911195 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 58 AS sv_idx, 2.779849 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 59 AS sv_idx, 0.215754 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 33 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 35 AS sv_idx, 2.382571 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 36 AS sv_idx, 0.861617 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 37 AS sv_idx, 2.415722 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 38 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 39 AS sv_idx, 0.056104 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 40 AS sv_idx, 1.406481 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 41 AS sv_idx, 1.524108 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 42 AS sv_idx, 1.088045 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 43 AS sv_idx, 0.995181 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 44 AS sv_idx, 0.680617 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 46 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 47 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 49 AS sv_idx, 2.382571 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 50 AS sv_idx, 0.861617 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 51 AS sv_idx, 2.415722 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 52 AS sv_idx, 3.008700 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 53 AS sv_idx, 0.056104 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 54 AS sv_idx, 1.406481 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 55 AS sv_idx, 1.524108 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 56 AS sv_idx, 1.088045 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 57 AS sv_idx, 0.995181 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 58 AS sv_idx, 0.680617 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.572048 AS "rho", -0.926225 AS "probA", 0.045337 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", -0.004264 AS "rho", -0.371196 AS "probA", -0.128996 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", -0.033287 AS "rho", -1.774540 AS "probA", 0.153793 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", 0.258873 AS "rho", -1.361215 AS "probA", -0.046256 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", 0.246809 AS "rho", -2.523010 AS "probA", 0.076674 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", 0.100092 AS "rho", -2.000589 AS "probA", -0.043533 AS "probB"
   ) AS t
  )
,
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   t3."rho" + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
)
,"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1.c_1 == 0 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 0 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_0,
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1.c_1 == 1 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 1 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_1,
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1.c_1 == 2 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 2 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_2,
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   SUM( CASE WHEN (t1.c_1 == 3 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 3 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_3,
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
)
,
orig_cte AS 
 (SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba"
  FROM model_scores_cte AS t
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "orig_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
   WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3"
 END AS "DecisionProba"
FROM arg_max_cte