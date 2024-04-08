WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_medium" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3",
   CAST("Values"."sv_4" AS FLOAT) AS "sv_4",
   CAST("Values"."sv_5" AS FLOAT) AS "sv_5",
   CAST("Values"."sv_6" AS FLOAT) AS "sv_6",
   CAST("Values"."sv_7" AS FLOAT) AS "sv_7",
   CAST("Values"."sv_8" AS FLOAT) AS "sv_8",
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", -1.104915 AS "sv_0", 0.852920 AS "sv_1", 0.507679 AS "sv_2", -0.381407 AS "sv_3", -0.632111 AS "sv_4", 0.643056 AS "sv_5", 1.649989 AS "sv_6", 0.479871 AS "sv_7", -1.472978 AS "sv_8", -1.793182 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 2.867865 AS "sv_0", -1.912016 AS "sv_1", 0.005109 AS "sv_2", -0.897717 AS "sv_3", -0.413690 AS "sv_4", 1.138185 AS "sv_5", -1.696764 AS "sv_6", -1.535723 AS "sv_7", -0.616466 AS "sv_8", -0.572385 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -2.032250 AS "sv_0", 2.704248 AS "sv_1", 0.418422 AS "sv_2", -3.131191 AS "sv_3", 0.668531 AS "sv_4", -1.347752 AS "sv_5", -2.932146 AS "sv_6", -0.942749 AS "sv_7", -0.101570 AS "sv_8", -0.497837 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.705554 AS "sv_0", 0.634027 AS "sv_1", 1.788292 AS "sv_2", -0.654940 AS "sv_3", -0.263412 AS "sv_4", -1.061929 AS "sv_5", -2.404255 AS "sv_6", -4.245071 AS "sv_7", -1.567195 AS "sv_8", 1.138708 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.928858 AS "sv_0", -1.177375 AS "sv_1", 0.542731 AS "sv_2", 1.248167 AS "sv_3", -0.732359 AS "sv_4", 0.692213 AS "sv_5", 0.362028 AS "sv_6", -0.053731 AS "sv_7", 0.485529 AS "sv_8", 1.106564 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.293783 AS "sv_0", -0.486122 AS "sv_1", 1.374505 AS "sv_2", 0.881926 AS "sv_3", 2.750073 AS "sv_4", 1.502867 AS "sv_5", 0.231548 AS "sv_6", 0.284063 AS "sv_7", 0.687431 AS "sv_8", -2.425964 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.440527 AS "sv_0", 1.749469 AS "sv_1", -0.196737 AS "sv_2", -2.198527 AS "sv_3", -0.191269 AS "sv_4", 0.048749 AS "sv_5", 0.211840 AS "sv_6", -0.217663 AS "sv_7", -2.024594 AS "sv_8", 0.641245 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.419925 AS "sv_0", -0.517406 AS "sv_1", -1.412564 AS "sv_2", 0.380649 AS "sv_3", -0.547401 AS "sv_4", -0.258767 AS "sv_5", -2.639127 AS "sv_6", -1.520861 AS "sv_7", 1.657838 AS "sv_8", -0.337909 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.184003 AS "sv_0", 1.452044 AS "sv_1", -0.707396 AS "sv_2", -1.708548 AS "sv_3", -3.661373 AS "sv_4", 0.583309 AS "sv_5", -0.216198 AS "sv_6", -0.168083 AS "sv_7", -1.172766 AS "sv_8", -0.807668 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.188768 AS "sv_0", 0.337391 AS "sv_1", 1.089971 AS "sv_2", -0.582258 AS "sv_3", -0.743904 AS "sv_4", -0.229958 AS "sv_5", 0.402639 AS "sv_6", -2.571504 AS "sv_7", -2.999698 AS "sv_8", -0.753200 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.077219 AS "sv_0", 0.765530 AS "sv_1", 1.186702 AS "sv_2", -0.759292 AS "sv_3", -0.256810 AS "sv_4", -1.031922 AS "sv_5", 0.586839 AS "sv_6", -0.797902 AS "sv_7", -1.797583 AS "sv_8", 1.312910 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000684 AS "sv_0", -1.541287 AS "sv_1", 0.078434 AS "sv_2", 2.061074 AS "sv_3", -0.537548 AS "sv_4", -1.195390 AS "sv_5", 1.874511 AS "sv_6", 0.589305 AS "sv_7", 0.132752 AS "sv_8", 0.566217 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.509657 AS "sv_0", -1.875296 AS "sv_1", -0.151036 AS "sv_2", 1.967434 AS "sv_3", 1.272283 AS "sv_4", -0.329984 AS "sv_5", 2.454954 AS "sv_6", 0.836687 AS "sv_7", -0.379774 AS "sv_8", 1.317994 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.433748 AS "sv_0", -0.760959 AS "sv_1", 0.613844 AS "sv_2", 0.843999 AS "sv_3", -0.638433 AS "sv_4", 0.254495 AS "sv_5", -2.763319 AS "sv_6", -1.822103 AS "sv_7", 1.894741 AS "sv_8", -2.021345 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -0.149435 AS "sv_0", -0.389932 AS "sv_1", -0.132510 AS "sv_2", -0.120441 AS "sv_3", 0.447799 AS "sv_4", -0.115466 AS "sv_5", 1.546955 AS "sv_6", -1.345563 AS "sv_7", -2.849955 AS "sv_8", 1.492775 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 0.784578 AS "sv_0", -0.748334 AS "sv_1", 0.858337 AS "sv_2", 0.293301 AS "sv_3", 1.831441 AS "sv_4", 0.382369 AS "sv_5", -2.149922 AS "sv_6", -1.306068 AS "sv_7", 1.231421 AS "sv_8", 0.508121 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.669476 AS "sv_0", 2.593713 AS "sv_1", -0.501776 AS "sv_2", -2.808712 AS "sv_3", 0.019068 AS "sv_4", -0.230630 AS "sv_5", -3.999052 AS "sv_6", -0.421354 AS "sv_7", 1.674519 AS "sv_8", 0.440651 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.273094 AS "sv_0", 0.918157 AS "sv_1", -1.717797 AS "sv_2", -0.827797 AS "sv_3", -0.359509 AS "sv_4", -1.617450 AS "sv_5", 0.451236 AS "sv_6", -0.906706 AS "sv_7", -1.786882 AS "sv_8", -0.348129 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.190027 AS "sv_0", 1.838650 AS "sv_1", 1.771623 AS "sv_2", -1.899832 AS "sv_3", -0.037869 AS "sv_4", 0.297355 AS "sv_5", 0.980900 AS "sv_6", 1.576320 AS "sv_7", -1.039865 AS "sv_8", 1.194803 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.533508 AS "sv_0", 0.130053 AS "sv_1", -0.551350 AS "sv_2", 0.484704 AS "sv_3", 0.264375 AS "sv_4", 0.384442 AS "sv_5", 3.435939 AS "sv_6", -1.405024 AS "sv_7", -4.215978 AS "sv_8", 0.365284 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -0.781971 AS "sv_0", 1.193643 AS "sv_1", -0.354977 AS "sv_2", -1.545820 AS "sv_3", 1.529209 AS "sv_4", -0.215386 AS "sv_5", -1.253763 AS "sv_6", -0.313447 AS "sv_7", -0.141068 AS "sv_8", -0.947154 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 0.588554 AS "sv_0", -1.797316 AS "sv_1", -0.224213 AS "sv_2", 3.253352 AS "sv_3", -0.529723 AS "sv_4", 2.495001 AS "sv_5", 0.438471 AS "sv_6", -0.505704 AS "sv_7", 1.662698 AS "sv_8", -0.898118 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.800706 AS "sv_0", 1.792405 AS "sv_1", -0.590324 AS "sv_2", -1.850654 AS "sv_3", -0.033489 AS "sv_4", 1.165662 AS "sv_5", -0.003916 AS "sv_6", -0.646643 AS "sv_7", -1.857783 AS "sv_8", 0.260716 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.325212 AS "sv_0", 1.548374 AS "sv_1", 1.065818 AS "sv_2", -1.817713 AS "sv_3", 0.534058 AS "sv_4", 0.780480 AS "sv_5", -1.828732 AS "sv_6", -1.083100 AS "sv_7", -0.380137 AS "sv_8", 2.224059 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -0.963124 AS "sv_0", 1.851585 AS "sv_1", -0.001923 AS "sv_2", -2.431564 AS "sv_3", 1.797863 AS "sv_4", -0.142712 AS "sv_5", -2.392780 AS "sv_6", -0.061411 AS "sv_7", 0.559935 AS "sv_8", 0.156220 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -1.868106 AS "sv_0", 2.142793 AS "sv_1", -0.246466 AS "sv_2", -2.359747 AS "sv_3", 0.560021 AS "sv_4", -0.670183 AS "sv_5", -2.770293 AS "sv_6", -1.484869 AS "sv_7", -0.137764 AS "sv_8", 1.231428 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -0.309760 AS "sv_0", -0.793324 AS "sv_1", 0.806805 AS "sv_2", 2.365683 AS "sv_3", -0.451182 AS "sv_4", 0.418344 AS "sv_5", -2.231025 AS "sv_6", -1.593999 AS "sv_7", 2.848423 AS "sv_8", 0.617356 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -2.406940 AS "sv_0", 2.330806 AS "sv_1", 0.393758 AS "sv_2", -1.822977 AS "sv_3", -1.000181 AS "sv_4", -2.771903 AS "sv_5", -1.945625 AS "sv_6", -1.100931 AS "sv_7", -0.164282 AS "sv_8", -0.497479 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -0.823848 AS "sv_0", 0.275881 AS "sv_1", 2.087631 AS "sv_2", -0.954259 AS "sv_3", 1.263514 AS "sv_4", -2.533357 AS "sv_5", -1.114520 AS "sv_6", -3.035915 AS "sv_7", -2.177934 AS "sv_8", -1.005192 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.353625 AS "sv_0", -1.517632 AS "sv_1", -0.108237 AS "sv_2", 1.267992 AS "sv_3", 0.122275 AS "sv_4", 0.251875 AS "sv_5", 0.884937 AS "sv_6", 0.072877 AS "sv_7", 0.027323 AS "sv_8", -1.219738 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 1.465563 AS "sv_0", -2.373581 AS "sv_1", -1.091985 AS "sv_2", 2.789970 AS "sv_3", -2.816561 AS "sv_4", -0.115846 AS "sv_5", -0.201179 AS "sv_6", -1.262879 AS "sv_7", 1.196029 AS "sv_8", 0.481645 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.974563 AS "sv_0", 2.844033 AS "sv_1", -1.496666 AS "sv_2", -3.075019 AS "sv_3", -1.185618 AS "sv_4", -0.588577 AS "sv_5", -2.872384 AS "sv_6", -0.146819 AS "sv_7", 0.569863 AS "sv_8", 0.732148 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 2.549098 AS "sv_0", -1.885715 AS "sv_1", 0.659902 AS "sv_2", -0.047648 AS "sv_3", -0.658523 AS "sv_4", 1.261754 AS "sv_5", 0.907771 AS "sv_6", 0.090854 AS "sv_7", -1.166638 AS "sv_8", -0.083655 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.344017 AS "sv_0", -0.849509 AS "sv_1", -0.347619 AS "sv_2", -0.556069 AS "sv_3", 0.441373 AS "sv_4", -0.433625 AS "sv_5", -2.472636 AS "sv_6", -1.507389 AS "sv_7", 0.645617 AS "sv_8", -0.513053 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.900353 AS "sv_0", 2.469144 AS "sv_1", -1.512975 AS "sv_2", -2.450887 AS "sv_3", 0.663803 AS "sv_4", -0.453389 AS "sv_5", -0.535142 AS "sv_6", 0.578675 AS "sv_7", -0.713938 AS "sv_8", -0.721890 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -2.940096 AS "sv_0", 2.703038 AS "sv_1", -1.063824 AS "sv_2", -2.160604 AS "sv_3", 1.085152 AS "sv_4", 0.849654 AS "sv_5", -3.428053 AS "sv_6", -2.288120 AS "sv_7", 0.114637 AS "sv_8", -0.094576 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.166004 AS "sv_0", 2.539546 AS "sv_1", -0.424125 AS "sv_2", -2.912890 AS "sv_3", -0.211354 AS "sv_4", -1.046335 AS "sv_5", -3.205030 AS "sv_6", 0.962240 AS "sv_7", 1.924498 AS "sv_8", 1.788936 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 0.125617 AS "sv_0", -1.177229 AS "sv_1", -1.897877 AS "sv_2", 2.640943 AS "sv_3", 1.148056 AS "sv_4", 0.468882 AS "sv_5", -0.111820 AS "sv_6", -0.509591 AS "sv_7", 1.783261 AS "sv_8", 0.840524 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 0.420468 AS "sv_0", -0.490282 AS "sv_1", 3.513309 AS "sv_2", 0.536418 AS "sv_3", -0.643647 AS "sv_4", 0.992586 AS "sv_5", -0.749086 AS "sv_6", -0.323900 AS "sv_7", 0.877273 AS "sv_8", -0.201919 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.617020 AS "sv_0", 3.161658 AS "sv_1", -2.374163 AS "sv_2", -4.040318 AS "sv_3", -1.178075 AS "sv_4", -0.633095 AS "sv_5", -4.688046 AS "sv_6", -0.152588 AS "sv_7", 1.622694 AS "sv_8", 0.250495 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.634741 AS "sv_0", -1.693551 AS "sv_1", 1.735820 AS "sv_2", 1.016278 AS "sv_3", 1.420699 AS "sv_4", 1.090824 AS "sv_5", -0.316000 AS "sv_6", -0.741197 AS "sv_7", 0.323754 AS "sv_8", 0.672684 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -0.672859 AS "sv_0", 0.691194 AS "sv_1", -0.073622 AS "sv_2", -0.859686 AS "sv_3", -0.863473 AS "sv_4", -0.433400 AS "sv_5", -0.281290 AS "sv_6", -0.524287 AS "sv_7", -0.787359 AS "sv_8", 0.615175 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -0.109651 AS "sv_0", -0.104680 AS "sv_1", 1.707372 AS "sv_2", -0.037001 AS "sv_3", 0.944220 AS "sv_4", 1.861863 AS "sv_5", -0.813536 AS "sv_6", -1.125246 AS "sv_7", -0.160109 AS "sv_8", -0.295064 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.313001 AS "sv_0", -0.299556 AS "sv_1", -0.374758 AS "sv_2", -1.859579 AS "sv_3", -1.143750 AS "sv_4", -1.237060 AS "sv_5", -4.026582 AS "sv_6", -2.034715 AS "sv_7", 0.742844 AS "sv_8", -1.420144 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -0.649409 AS "sv_0", 1.030112 AS "sv_1", 0.590313 AS "sv_2", -1.432318 AS "sv_3", 0.032630 AS "sv_4", -0.008973 AS "sv_5", -0.488904 AS "sv_6", -0.064296 AS "sv_7", -0.635514 AS "sv_8", 0.255228 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -0.521891 AS "sv_0", 0.251977 AS "sv_1", -1.828214 AS "sv_2", -0.952850 AS "sv_3", 1.377844 AS "sv_4", 1.087301 AS "sv_5", 0.883165 AS "sv_6", -1.380205 AS "sv_7", -2.825831 AS "sv_8", -1.050581 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 0.496650 AS "sv_0", -0.588429 AS "sv_1", 1.382311 AS "sv_2", 0.556119 AS "sv_3", -0.385467 AS "sv_4", 0.641539 AS "sv_5", -1.286317 AS "sv_6", -0.712127 AS "sv_7", 1.100664 AS "sv_8", 0.765908 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 1.166004 AS "sv_0", -0.616427 AS "sv_1", 0.989485 AS "sv_2", -0.438297 AS "sv_3", 0.630905 AS "sv_4", 0.024575 AS "sv_5", -0.009049 AS "sv_6", 0.201910 AS "sv_7", -0.291414 AS "sv_8", 0.038295 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", 1.725204 AS "sv_0", -2.392022 AS "sv_1", -0.024752 AS "sv_2", 2.720746 AS "sv_3", -0.835031 AS "sv_4", -0.452338 AS "sv_5", 2.486438 AS "sv_6", 0.519174 AS "sv_7", -0.105711 AS "sv_8", -0.832824 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -1.645314 AS "sv_0", 1.122097 AS "sv_1", -0.811491 AS "sv_2", -0.943538 AS "sv_3", 0.206133 AS "sv_4", 1.573509 AS "sv_5", 0.774669 AS "sv_6", -1.152739 AS "sv_7", -2.388588 AS "sv_8", -0.337716 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 0.079378 AS "sv_0", 1.511148 AS "sv_1", -1.473656 AS "sv_2", -2.644187 AS "sv_3", 1.729585 AS "sv_4", -0.414845 AS "sv_5", -3.530380 AS "sv_6", 0.650396 AS "sv_7", 2.071981 AS "sv_8", -0.980863 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.811555 AS "sv_0", 1.873147 AS "sv_1", 0.405580 AS "sv_2", -2.067577 AS "sv_3", 1.733801 AS "sv_4", -0.290390 AS "sv_5", -2.742941 AS "sv_6", -1.938526 AS "sv_7", -0.332394 AS "sv_8", -1.099419 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -0.445166 AS "sv_0", 1.105307 AS "sv_1", 0.567103 AS "sv_2", -2.293164 AS "sv_3", -0.314299 AS "sv_4", 1.838232 AS "sv_5", -2.081706 AS "sv_6", -1.162084 AS "sv_7", -0.664353 AS "sv_8", 0.036149 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", -0.279309 AS "sv_0", 0.716632 AS "sv_1", -0.268029 AS "sv_2", -1.564833 AS "sv_3", -0.726558 AS "sv_4", -1.367336 AS "sv_5", 0.216496 AS "sv_6", -0.112564 AS "sv_7", -1.551237 AS "sv_8", 0.982460 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -0.612529 AS "sv_0", 0.049932 AS "sv_1", -0.101694 AS "sv_2", -0.243436 AS "sv_3", 1.465527 AS "sv_4", -0.767822 AS "sv_5", 1.004251 AS "sv_6", -1.349820 AS "sv_7", -2.343609 AS "sv_8", 0.159631 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -0.193369 AS "sv_0", 1.149251 AS "sv_1", -0.225629 AS "sv_2", -2.235354 AS "sv_3", -1.606311 AS "sv_4", 0.824476 AS "sv_5", 0.081961 AS "sv_6", 0.771607 AS "sv_7", -1.190347 AS "sv_8", 0.432575 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 1.250767 AS "sv_0", -1.944707 AS "sv_1", -1.370166 AS "sv_2", 2.430042 AS "sv_3", 0.445817 AS "sv_4", 0.187923 AS "sv_5", 1.209146 AS "sv_6", -0.061660 AS "sv_7", 0.521836 AS "sv_8", -0.868197 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.934704 AS "sv_0", 2.534981 AS "sv_1", -0.913350 AS "sv_2", -2.497659 AS "sv_3", -0.413903 AS "sv_4", -0.339974 AS "sv_5", -0.974107 AS "sv_6", 0.467925 AS "sv_7", -0.391711 AS "sv_8", -0.429019 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -2.178994 AS "sv_0", 1.629255 AS "sv_1", 1.326329 AS "sv_2", -1.448429 AS "sv_3", -0.135087 AS "sv_4", 0.800477 AS "sv_5", -1.041350 AS "sv_6", -2.214886 AS "sv_7", -1.791115 AS "sv_8", -2.571504 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.011153 AS "sv_0", -1.418340 AS "sv_1", -0.503893 AS "sv_2", 1.335264 AS "sv_3", -1.902296 AS "sv_4", -0.028247 AS "sv_5", -2.162335 AS "sv_6", -1.795119 AS "sv_7", 1.632345 AS "sv_8", 0.157859 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -0.385933 AS "sv_0", 1.313454 AS "sv_1", 1.121612 AS "sv_2", -1.561955 AS "sv_3", -0.976292 AS "sv_4", -0.293142 AS "sv_5", -1.407281 AS "sv_6", 1.126191 AS "sv_7", 1.217445 AS "sv_8", 0.678355 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -0.825049 AS "sv_0", 0.407773 AS "sv_1", -0.687957 AS "sv_2", -0.527283 AS "sv_3", 1.032600 AS "sv_4", -0.062434 AS "sv_5", 0.810701 AS "sv_6", -1.049019 AS "sv_7", -2.087539 AS "sv_8", 1.542523 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 0.562410 AS "sv_0", 0.045846 AS "sv_1", -0.553406 AS "sv_2", -1.142347 AS "sv_3", 0.187816 AS "sv_4", 0.916315 AS "sv_5", -2.812567 AS "sv_6", -1.193890 AS "sv_7", 0.880867 AS "sv_8", 0.001511 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", -0.259151 AS "sv_0", 0.049920 AS "sv_1", 1.632221 AS "sv_2", -0.299069 AS "sv_3", -0.643622 AS "sv_4", -0.023007 AS "sv_5", 0.223194 AS "sv_6", -0.828538 AS "sv_7", -1.165800 AS "sv_8", -0.307631 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", 1.694680 AS "sv_0", -1.805905 AS "sv_1", 1.016541 AS "sv_2", 1.171946 AS "sv_3", -1.723862 AS "sv_4", 0.257285 AS "sv_5", -0.060486 AS "sv_6", -0.671015 AS "sv_7", 0.240305 AS "sv_8", -0.203871 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", -0.627777 AS "sv_0", -0.041215 AS "sv_1", -0.982223 AS "sv_2", 0.279263 AS "sv_3", -0.543692 AS "sv_4", -1.004934 AS "sv_5", 0.214130 AS "sv_6", -1.374100 AS "sv_7", -1.127454 AS "sv_8", 0.939147 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", -1.780684 AS "sv_0", 0.943343 AS "sv_1", -0.493488 AS "sv_2", 0.095875 AS "sv_3", 0.006727 AS "sv_4", -0.960127 AS "sv_5", 0.310285 AS "sv_6", -0.964940 AS "sv_7", -0.894842 AS "sv_8", 1.353807 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 2.466959 AS "sv_0", -2.638876 AS "sv_1", -1.034381 AS "sv_2", 1.771593 AS "sv_3", 0.054471 AS "sv_4", 0.148208 AS "sv_5", 1.380131 AS "sv_6", -0.244076 AS "sv_7", -0.472922 AS "sv_8", 0.409291 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", -0.071107 AS "sv_0", 1.219655 AS "sv_1", 0.502317 AS "sv_2", -1.961473 AS "sv_3", 0.705807 AS "sv_4", 0.659755 AS "sv_5", -2.476790 AS "sv_6", 0.571177 AS "sv_7", 1.481645 AS "sv_8", 1.238595 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", 1.360290 AS "sv_0", -2.420638 AS "sv_1", -2.330260 AS "sv_2", 3.185871 AS "sv_3", 0.879701 AS "sv_4", -1.961285 AS "sv_5", 0.656604 AS "sv_6", -0.778452 AS "sv_7", 1.063473 AS "sv_8", 0.943493 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -0.991753 AS "sv_0", -0.445016 AS "sv_1", 0.105001 AS "sv_2", 0.656237 AS "sv_3", -0.445270 AS "sv_4", 1.348760 AS "sv_5", 1.213646 AS "sv_6", -2.913959 AS "sv_7", -3.158973 AS "sv_8", -1.948864 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -0.132394 AS "sv_0", -0.404361 AS "sv_1", -0.795053 AS "sv_2", 0.005025 AS "sv_3", 0.064106 AS "sv_4", -0.692042 AS "sv_5", 0.471296 AS "sv_6", -1.676639 AS "sv_7", -1.929933 AS "sv_8", -1.048304 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", 2.234241 AS "sv_0", -1.064360 AS "sv_1", -1.352393 AS "sv_2", -1.815365 AS "sv_3", 1.224994 AS "sv_4", 0.108727 AS "sv_5", -3.637136 AS "sv_6", -2.205323 AS "sv_7", 0.129968 AS "sv_8", -0.351756 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", 2.069803 AS "sv_0", -1.375740 AS "sv_1", 0.348611 AS "sv_2", -0.676904 AS "sv_3", 0.950233 AS "sv_4", 0.301410 AS "sv_5", -2.558414 AS "sv_6", -1.749943 AS "sv_7", 0.348146 AS "sv_8", 1.140800 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", -1.356113 AS "sv_0", 2.336598 AS "sv_1", -0.320205 AS "sv_2", -2.561068 AS "sv_3", 0.989920 AS "sv_4", 0.639712 AS "sv_5", -1.299638 AS "sv_6", 1.044763 AS "sv_7", 0.334456 AS "sv_8", -0.021523 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", 1.631885 AS "sv_0", -1.800769 AS "sv_1", -0.590251 AS "sv_2", 1.230176 AS "sv_3", -1.559754 AS "sv_4", -0.308192 AS "sv_5", -0.497729 AS "sv_6", -0.943035 AS "sv_7", 0.507678 AS "sv_8", -0.954589 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", -0.277965 AS "sv_0", 0.731143 AS "sv_1", 0.106440 AS "sv_2", -1.096631 AS "sv_3", -0.483706 AS "sv_4", -1.135180 AS "sv_5", 0.497225 AS "sv_6", 0.730428 AS "sv_7", -0.729070 AS "sv_8", 1.174173 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", 1.384156 AS "sv_0", -0.970498 AS "sv_1", 1.524966 AS "sv_2", -0.426932 AS "sv_3", -1.146429 AS "sv_4", -0.841180 AS "sv_5", -3.507811 AS "sv_6", -2.158156 AS "sv_7", 1.245628 AS "sv_8", 1.282457 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 1.020380 AS "sv_0", -1.296666 AS "sv_1", 0.257919 AS "sv_2", 1.402981 AS "sv_3", -0.385577 AS "sv_4", -0.646885 AS "sv_5", 0.945205 AS "sv_6", 0.226236 AS "sv_7", 0.242973 AS "sv_8", -1.645061 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", 0.001395 AS "sv_0", -1.099660 AS "sv_1", -0.160155 AS "sv_2", 2.475825 AS "sv_3", -0.688680 AS "sv_4", 1.490163 AS "sv_5", -1.860899 AS "sv_6", -1.591321 AS "sv_7", 2.524528 AS "sv_8", 0.277419 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", -1.371374 AS "sv_0", 1.253618 AS "sv_1", 1.715636 AS "sv_2", -1.317327 AS "sv_3", 1.564291 AS "sv_4", 0.468153 AS "sv_5", -0.687696 AS "sv_6", -1.105508 AS "sv_7", -1.168984 AS "sv_8", 0.151451 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", -0.858393 AS "sv_0", 0.245482 AS "sv_1", 0.823636 AS "sv_2", -0.396669 AS "sv_3", 0.019703 AS "sv_4", 0.558747 AS "sv_5", 0.566781 AS "sv_6", -1.688845 AS "sv_7", -2.285153 AS "sv_8", -0.422067 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", 0.363677 AS "sv_0", -1.192038 AS "sv_1", -0.253352 AS "sv_2", 1.839187 AS "sv_3", 1.485463 AS "sv_4", -0.551506 AS "sv_5", -3.400032 AS "sv_6", -2.560496 AS "sv_7", 2.716120 AS "sv_8", 0.960289 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 0.511151 AS "sv_0", -0.191612 AS "sv_1", -1.783432 AS "sv_2", -0.816210 AS "sv_3", 0.203376 AS "sv_4", 0.693461 AS "sv_5", -5.546315 AS "sv_6", -3.047791 AS "sv_7", 2.352161 AS "sv_8", 0.482600 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", -0.211856 AS "sv_0", 0.188376 AS "sv_1", 0.312049 AS "sv_2", -0.944176 AS "sv_3", -0.496941 AS "sv_4", -0.852460 AS "sv_5", 0.399899 AS "sv_6", -0.991578 AS "sv_7", -2.014487 AS "sv_8", -2.540307 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", 1.729610 AS "sv_0", -1.802206 AS "sv_1", 0.104409 AS "sv_2", 1.216887 AS "sv_3", -0.054401 AS "sv_4", 0.602568 AS "sv_5", 0.670918 AS "sv_6", -0.160807 AS "sv_7", -0.036804 AS "sv_8", -2.286199 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -0.843890 AS "sv_0", 0.782294 AS "sv_1", -0.071923 AS "sv_2", -1.209107 AS "sv_3", 0.924666 AS "sv_4", -1.310072 AS "sv_5", -0.122576 AS "sv_6", -1.056490 AS "sv_7", -1.678165 AS "sv_8", 1.091627 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", 0.311427 AS "sv_0", -0.894730 AS "sv_1", 1.022353 AS "sv_2", 1.634100 AS "sv_3", -1.272713 AS "sv_4", -0.183930 AS "sv_5", -0.475193 AS "sv_6", -0.502170 AS "sv_7", 1.334404 AS "sv_8", -0.223735 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", 0.617570 AS "sv_0", -0.491662 AS "sv_1", 0.605017 AS "sv_2", -0.242433 AS "sv_3", 0.769918 AS "sv_4", 0.075679 AS "sv_5", 0.000103 AS "sv_6", -0.535000 AS "sv_7", -0.727411 AS "sv_8", 2.164213 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 1.411826 AS "sv_0", -1.608419 AS "sv_1", -0.445387 AS "sv_2", 1.114700 AS "sv_3", -0.489306 AS "sv_4", -0.034184 AS "sv_5", -1.246573 AS "sv_6", -1.315442 AS "sv_7", 0.885852 AS "sv_8", 0.637893 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", -0.939895 AS "sv_0", 1.042113 AS "sv_1", -1.315631 AS "sv_2", -0.688855 AS "sv_3", 0.977092 AS "sv_4", 1.422527 AS "sv_5", -3.589352 AS "sv_6", -1.203753 AS "sv_7", 2.198317 AS "sv_8", 1.625137 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", 1.084002 AS "sv_0", -0.903485 AS "sv_1", -0.043012 AS "sv_2", 0.097379 AS "sv_3", -2.101363 AS "sv_4", -1.036888 AS "sv_5", -1.975890 AS "sv_6", -1.277116 AS "sv_7", 0.887613 AS "sv_8", -0.248111 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", 0.348080 AS "sv_0", -1.228215 AS "sv_1", 1.198369 AS "sv_2", 2.327683 AS "sv_3", 1.538708 AS "sv_4", -1.325194 AS "sv_5", -0.105474 AS "sv_6", -0.534119 AS "sv_7", 1.479531 AS "sv_8", 1.304640 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", 2.058176 AS "sv_0", -1.496818 AS "sv_1", -1.339787 AS "sv_2", -0.034605 AS "sv_3", 0.141595 AS "sv_4", -0.024599 AS "sv_5", 0.667437 AS "sv_6", 0.146578 AS "sv_7", -0.807430 AS "sv_8", 0.315350 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", -1.013877 AS "sv_0", 2.497999 AS "sv_1", -0.002923 AS "sv_2", -2.932299 AS "sv_3", -0.255595 AS "sv_4", -1.275466 AS "sv_5", -3.639962 AS "sv_6", 0.988928 AS "sv_7", 2.364592 AS "sv_8", 0.055927 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", -0.782600 AS "sv_0", 0.949935 AS "sv_1", -0.658807 AS "sv_2", -1.255443 AS "sv_3", 0.969023 AS "sv_4", 0.771544 AS "sv_5", -0.242917 AS "sv_6", -0.371088 AS "sv_7", -1.000220 AS "sv_8", -0.154326 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", -1.311673 AS "sv_0", 1.452018 AS "sv_1", -0.031430 AS "sv_2", -1.478799 AS "sv_3", -0.946160 AS "sv_4", -0.968188 AS "sv_5", -0.545703 AS "sv_6", -0.346629 AS "sv_7", -0.790067 AS "sv_8", -0.221073 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", -0.059361 AS "sv_0", -0.256410 AS "sv_1", -0.841143 AS "sv_2", 0.257613 AS "sv_3", -0.739997 AS "sv_4", 0.341926 AS "sv_5", -0.972588 AS "sv_6", -1.229115 AS "sv_7", 0.145160 AS "sv_8", -0.561226 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", 1.324302 AS "sv_0", -1.737198 AS "sv_1", 0.366189 AS "sv_2", 1.785390 AS "sv_3", -0.951707 AS "sv_4", -0.901404 AS "sv_5", 0.779030 AS "sv_6", -0.170189 AS "sv_7", 0.344184 AS "sv_8", 0.944441 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", 1.253987 AS "sv_0", -0.735194 AS "sv_1", -0.309362 AS "sv_2", -0.436961 AS "sv_3", 1.193462 AS "sv_4", 0.315837 AS "sv_5", -0.925981 AS "sv_6", -0.434202 AS "sv_7", 0.091456 AS "sv_8", 0.452317 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 0.864503 AS "sv_0", -1.484510 AS "sv_1", -1.290793 AS "sv_2", 1.975493 AS "sv_3", 0.906587 AS "sv_4", 0.214740 AS "sv_5", 0.104406 AS "sv_6", -0.502818 AS "sv_7", 0.951936 AS "sv_8", 1.151012 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", -1.422038 AS "sv_0", -0.453116 AS "sv_1", 1.049300 AS "sv_2", 0.762478 AS "sv_3", -0.687421 AS "sv_4", -0.927215 AS "sv_5", 2.499718 AS "sv_6", -3.370840 AS "sv_7", -4.752631 AS "sv_8", 0.118273 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", -3.481928 AS "sv_0", 3.794396 AS "sv_1", 0.652892 AS "sv_2", -3.289704 AS "sv_3", -0.534939 AS "sv_4", 0.370288 AS "sv_5", -3.171871 AS "sv_6", -1.058164 AS "sv_7", 0.071690 AS "sv_8", -0.628325 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 0.948793 AS "sv_0", -0.371163 AS "sv_1", -0.169104 AS "sv_2", -1.007859 AS "sv_3", -0.993452 AS "sv_4", -1.461332 AS "sv_5", -3.223370 AS "sv_6", -1.736056 AS "sv_7", 0.899016 AS "sv_8", 1.169136 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", -0.387062 AS "sv_0", -0.858128 AS "sv_1", 0.748420 AS "sv_2", 2.914483 AS "sv_3", -0.194122 AS "sv_4", 0.396880 AS "sv_5", 0.703887 AS "sv_6", 0.073384 AS "sv_7", 1.724884 AS "sv_8", 0.364648 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", 1.267472 AS "sv_0", -1.090015 AS "sv_1", 0.053820 AS "sv_2", 0.451186 AS "sv_3", 1.236225 AS "sv_4", -0.558700 AS "sv_5", 0.363760 AS "sv_6", 0.087004 AS "sv_7", -0.071030 AS "sv_8", -0.753997 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", -0.247606 AS "sv_0", -1.732901 AS "sv_1", 0.839360 AS "sv_2", 4.399007 AS "sv_3", 1.040506 AS "sv_4", -0.302269 AS "sv_5", -0.884487 AS "sv_6", -1.544060 AS "sv_7", 3.132977 AS "sv_8", 1.863660 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", -0.816428 AS "sv_0", 1.060664 AS "sv_1", -1.755447 AS "sv_2", -1.659707 AS "sv_3", 3.437996 AS "sv_4", 1.131133 AS "sv_5", -1.042079 AS "sv_6", -0.975337 AS "sv_7", -1.024543 AS "sv_8", 0.312728 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", 0.834960 AS "sv_0", -0.625366 AS "sv_1", 0.124024 AS "sv_2", -0.354538 AS "sv_3", 1.193555 AS "sv_4", 0.743149 AS "sv_5", -4.569151 AS "sv_6", -2.724610 AS "sv_7", 1.963163 AS "sv_8", -2.362978 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", -1.060391 AS "sv_0", 1.572765 AS "sv_1", -0.328946 AS "sv_2", -1.987644 AS "sv_3", -0.153512 AS "sv_4", -1.380966 AS "sv_5", -2.735580 AS "sv_6", -0.927333 AS "sv_7", 0.526144 AS "sv_8", -1.184211 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", -0.866304 AS "sv_0", 0.083571 AS "sv_1", -0.820119 AS "sv_2", 0.005836 AS "sv_3", -0.710395 AS "sv_4", -0.856557 AS "sv_5", 0.840631 AS "sv_6", -1.638696 AS "sv_7", -2.199094 AS "sv_8", -0.898369 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", -0.606609 AS "sv_0", 1.059221 AS "sv_1", -0.203361 AS "sv_2", -1.743798 AS "sv_3", -0.365506 AS "sv_4", 0.963563 AS "sv_5", -1.256085 AS "sv_6", -0.627087 AS "sv_7", -0.590148 AS "sv_8", -1.440930 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", 0.377241 AS "sv_0", -1.091754 AS "sv_1", 0.032081 AS "sv_2", 2.033396 AS "sv_3", 1.658847 AS "sv_4", -1.858523 AS "sv_5", -0.031244 AS "sv_6", -0.311330 AS "sv_7", 1.357257 AS "sv_8", -0.465549 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", -2.837179 AS "sv_0", 1.477195 AS "sv_1", 0.565303 AS "sv_2", 1.382117 AS "sv_3", 1.268693 AS "sv_4", -0.104379 AS "sv_5", 0.291605 AS "sv_6", -0.012256 AS "sv_7", 1.102744 AS "sv_8", 1.483759 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 1.467602 AS "sv_0", -0.425150 AS "sv_1", -1.049671 AS "sv_2", -0.794918 AS "sv_3", -0.987827 AS "sv_4", -1.661965 AS "sv_5", -4.440504 AS "sv_6", -0.797506 AS "sv_7", 3.089035 AS "sv_8", -0.801872 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", -1.250209 AS "sv_0", 1.558808 AS "sv_1", 1.237566 AS "sv_2", -0.817481 AS "sv_3", -0.105782 AS "sv_4", -1.555203 AS "sv_5", -1.182081 AS "sv_6", 0.857134 AS "sv_7", 1.441690 AS "sv_8", -0.264504 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", -0.877365 AS "sv_0", 0.741773 AS "sv_1", -0.447679 AS "sv_2", -0.262705 AS "sv_3", 0.191993 AS "sv_4", -1.099775 AS "sv_5", -0.295379 AS "sv_6", -0.059701 AS "sv_7", 0.134508 AS "sv_8", -0.143877 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.591073 AS "sv_0", 0.157791 AS "sv_1", -0.836796 AS "sv_2", -1.741156 AS "sv_3", 1.140010 AS "sv_4", 1.167627 AS "sv_5", -3.384017 AS "sv_6", 0.927686 AS "sv_7", 2.728810 AS "sv_8", -0.338076 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 3.351554 AS "sv_0", -1.153192 AS "sv_1", -1.611809 AS "sv_2", -1.412830 AS "sv_3", -1.084661 AS "sv_4", 0.718141 AS "sv_5", -0.958300 AS "sv_6", 2.294332 AS "sv_7", 1.495336 AS "sv_8", 2.081210 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", 0.364829 AS "sv_0", -0.276213 AS "sv_1", -0.829992 AS "sv_2", 0.087255 AS "sv_3", 0.286715 AS "sv_4", 2.563963 AS "sv_5", -1.531283 AS "sv_6", -0.648256 AS "sv_7", 1.045683 AS "sv_8", -0.844272 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.569218 AS "sv_0", 2.574346 AS "sv_1", 1.953913 AS "sv_2", -2.971349 AS "sv_3", 0.418451 AS "sv_4", 0.443428 AS "sv_5", -1.304433 AS "sv_6", 0.796727 AS "sv_7", -0.184424 AS "sv_8", 0.413981 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", -1.109247 AS "sv_0", 0.688105 AS "sv_1", -1.598145 AS "sv_2", 1.136794 AS "sv_3", -0.210802 AS "sv_4", 0.129612 AS "sv_5", 0.257308 AS "sv_6", 1.316399 AS "sv_7", 1.915370 AS "sv_8", -1.727536 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", -1.202944 AS "sv_0", 1.799945 AS "sv_1", 0.494136 AS "sv_2", -2.248967 AS "sv_3", -1.821113 AS "sv_4", -0.683715 AS "sv_5", -0.674347 AS "sv_6", 0.140042 AS "sv_7", -0.864477 AS "sv_8", -0.571051 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", -0.191931 AS "sv_0", -0.162504 AS "sv_1", 1.151646 AS "sv_2", 1.053780 AS "sv_3", 0.043356 AS "sv_4", -0.163908 AS "sv_5", -2.428284 AS "sv_6", -0.792489 AS "sv_7", 2.682316 AS "sv_8", 0.789276 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", 2.295973 AS "sv_0", -1.158862 AS "sv_1", 1.564398 AS "sv_2", -0.440855 AS "sv_3", -1.595744 AS "sv_4", -0.248971 AS "sv_5", -1.258982 AS "sv_6", 0.622698 AS "sv_7", 1.242522 AS "sv_8", -1.638903 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", -0.398535 AS "sv_0", 1.718568 AS "sv_1", -0.326721 AS "sv_2", -2.699155 AS "sv_3", 0.106809 AS "sv_4", -0.578145 AS "sv_5", -1.759368 AS "sv_6", 0.885016 AS "sv_7", 0.456372 AS "sv_8", 0.643280 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", 0.141928 AS "sv_0", -0.408314 AS "sv_1", 0.402207 AS "sv_2", 0.513474 AS "sv_3", 1.632655 AS "sv_4", 0.113585 AS "sv_5", -0.501597 AS "sv_6", -0.685914 AS "sv_7", 0.317499 AS "sv_8", -0.049391 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", -0.398527 AS "sv_0", 1.041805 AS "sv_1", -0.373574 AS "sv_2", -1.219798 AS "sv_3", 0.622254 AS "sv_4", 1.240527 AS "sv_5", -2.001124 AS "sv_6", 0.259418 AS "sv_7", 1.350946 AS "sv_8", -0.809748 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", -2.279803 AS "sv_0", 2.449969 AS "sv_1", 0.841959 AS "sv_2", -0.905085 AS "sv_3", -0.446692 AS "sv_4", -1.757634 AS "sv_5", 1.038640 AS "sv_6", 2.362052 AS "sv_7", 0.502248 AS "sv_8", 1.254844 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", 0.885078 AS "sv_0", 0.245221 AS "sv_1", 0.019122 AS "sv_2", -1.224950 AS "sv_3", 2.429237 AS "sv_4", 0.116498 AS "sv_5", -1.953037 AS "sv_6", 0.725562 AS "sv_7", 1.567107 AS "sv_8", -1.239216 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", -0.328485 AS "sv_0", 0.878035 AS "sv_1", -0.958506 AS "sv_2", -1.292152 AS "sv_3", 0.130561 AS "sv_4", 0.837286 AS "sv_5", -2.503006 AS "sv_6", -0.507985 AS "sv_7", 1.133817 AS "sv_8", -0.210518 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", -3.181201 AS "sv_0", 1.427110 AS "sv_1", 1.652395 AS "sv_2", 2.673573 AS "sv_3", -0.089580 AS "sv_4", 0.495584 AS "sv_5", 1.994989 AS "sv_6", 1.454160 AS "sv_7", 1.700394 AS "sv_8", 1.468157 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", 0.537799 AS "sv_0", -0.011539 AS "sv_1", 0.173001 AS "sv_2", -0.482009 AS "sv_3", -1.330073 AS "sv_4", 1.975185 AS "sv_5", -0.731161 AS "sv_6", 0.405935 AS "sv_7", 0.662974 AS "sv_8", 0.356436 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", 1.914430 AS "sv_0", -1.187978 AS "sv_1", -1.908593 AS "sv_2", -0.003361 AS "sv_3", -0.783720 AS "sv_4", -1.616949 AS "sv_5", -1.228041 AS "sv_6", 0.100255 AS "sv_7", 1.147780 AS "sv_8", -0.640430 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", -0.166531 AS "sv_0", 1.170774 AS "sv_1", -0.075051 AS "sv_2", -1.618681 AS "sv_3", -1.296364 AS "sv_4", -0.101588 AS "sv_5", 0.568882 AS "sv_6", 2.013449 AS "sv_7", -0.116306 AS "sv_8", -0.470121 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", -1.271310 AS "sv_0", 1.312382 AS "sv_1", -1.657995 AS "sv_2", -0.792106 AS "sv_3", 0.492202 AS "sv_4", -0.344175 AS "sv_5", -2.448642 AS "sv_6", -0.690395 AS "sv_7", 1.421453 AS "sv_8", 0.254472 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", 0.037806 AS "sv_0", 0.883917 AS "sv_1", -0.276127 AS "sv_2", -1.358794 AS "sv_3", -0.430977 AS "sv_4", -1.510851 AS "sv_5", -0.119506 AS "sv_6", 1.519576 AS "sv_7", 0.350572 AS "sv_8", 0.256819 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", 1.017406 AS "sv_0", -0.329035 AS "sv_1", -1.647778 AS "sv_2", -0.472246 AS "sv_3", 0.693451 AS "sv_4", 2.108780 AS "sv_5", -0.534753 AS "sv_6", 0.603265 AS "sv_7", 0.589281 AS "sv_8", 0.842916 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", -1.477594 AS "sv_0", 1.374992 AS "sv_1", 0.708349 AS "sv_2", -0.619475 AS "sv_3", -1.251171 AS "sv_4", -1.279053 AS "sv_5", 1.405863 AS "sv_6", 1.012186 AS "sv_7", -0.908990 AS "sv_8", -1.536729 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", -0.642006 AS "sv_0", 1.480972 AS "sv_1", -3.517868 AS "sv_2", -2.520107 AS "sv_3", 0.043394 AS "sv_4", -0.620498 AS "sv_5", -2.417182 AS "sv_6", -0.736866 AS "sv_7", -0.109271 AS "sv_8", 0.480139 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 2.968485 AS "sv_0", -2.110220 AS "sv_1", 0.540510 AS "sv_2", 0.438975 AS "sv_3", 0.045168 AS "sv_4", -0.058284 AS "sv_5", -2.188066 AS "sv_6", -0.377836 AS "sv_7", 1.965070 AS "sv_8", 0.540905 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", -2.526411 AS "sv_0", 2.075601 AS "sv_1", 2.697455 AS "sv_2", 0.397888 AS "sv_3", 1.108868 AS "sv_4", 0.016813 AS "sv_5", 1.012766 AS "sv_6", 2.072729 AS "sv_7", 1.351620 AS "sv_8", 0.686095 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", -0.608854 AS "sv_0", 1.218548 AS "sv_1", -0.085546 AS "sv_2", -1.177294 AS "sv_3", 0.796803 AS "sv_4", 0.195863 AS "sv_5", -2.209919 AS "sv_6", 0.324517 AS "sv_7", 1.679661 AS "sv_8", 0.240260 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", -1.343010 AS "sv_0", 1.993031 AS "sv_1", 1.715647 AS "sv_2", -1.183498 AS "sv_3", 1.474197 AS "sv_4", -0.013412 AS "sv_5", 0.844861 AS "sv_6", 2.687075 AS "sv_7", 0.661794 AS "sv_8", 0.378264 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", -0.359051 AS "sv_0", 0.093840 AS "sv_1", -1.040202 AS "sv_2", 0.237889 AS "sv_3", -0.187741 AS "sv_4", 0.767880 AS "sv_5", 1.191305 AS "sv_6", 0.265512 AS "sv_7", -0.767644 AS "sv_8", -0.358049 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", 1.821935 AS "sv_0", -0.508873 AS "sv_1", -1.196185 AS "sv_2", -0.903881 AS "sv_3", 0.136112 AS "sv_4", 1.388059 AS "sv_5", 0.504295 AS "sv_6", 1.981742 AS "sv_7", 0.286472 AS "sv_8", -0.351289 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", -2.812452 AS "sv_0", 4.009672 AS "sv_1", 1.524404 AS "sv_2", -3.729012 AS "sv_3", 0.302494 AS "sv_4", 1.617980 AS "sv_5", 0.390761 AS "sv_6", 2.616714 AS "sv_7", -0.823656 AS "sv_8", 0.318097 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", -0.594119 AS "sv_0", 1.338113 AS "sv_1", -0.247653 AS "sv_2", -1.773764 AS "sv_3", 1.398441 AS "sv_4", 0.967609 AS "sv_5", -0.265833 AS "sv_6", 0.886589 AS "sv_7", -0.317197 AS "sv_8", -0.749045 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", -1.728087 AS "sv_0", 2.393295 AS "sv_1", 0.055107 AS "sv_2", -1.740847 AS "sv_3", -1.848529 AS "sv_4", -0.978944 AS "sv_5", 0.438442 AS "sv_6", 2.200070 AS "sv_7", 0.248741 AS "sv_8", 1.048002 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -1.261595 AS "sv_0", 2.527657 AS "sv_1", 0.645366 AS "sv_2", -2.918777 AS "sv_3", 1.884428 AS "sv_4", -1.023331 AS "sv_5", 1.186670 AS "sv_6", 2.680716 AS "sv_7", -1.101655 AS "sv_8", 1.378079 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", -1.735843 AS "sv_0", 2.184429 AS "sv_1", -1.034626 AS "sv_2", -1.562440 AS "sv_3", 0.556101 AS "sv_4", -1.013472 AS "sv_5", -0.406226 AS "sv_6", 1.241021 AS "sv_7", 0.428195 AS "sv_8", -0.317365 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", 1.076219 AS "sv_0", 0.555706 AS "sv_1", -0.310657 AS "sv_2", -1.854151 AS "sv_3", 1.736608 AS "sv_4", -0.380529 AS "sv_5", -0.269973 AS "sv_6", 2.328577 AS "sv_7", 0.702019 AS "sv_8", -0.746542 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", 1.126231 AS "sv_0", -0.791891 AS "sv_1", -0.032095 AS "sv_2", 0.112247 AS "sv_3", 2.001647 AS "sv_4", -0.545657 AS "sv_5", -1.040442 AS "sv_6", -0.283264 AS "sv_7", 0.796760 AS "sv_8", 0.714492 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", -1.529809 AS "sv_0", 1.370562 AS "sv_1", -1.364171 AS "sv_2", 0.066514 AS "sv_3", -1.238316 AS "sv_4", 1.185086 AS "sv_5", -0.456836 AS "sv_6", 0.950001 AS "sv_7", 1.515826 AS "sv_8", -0.575423 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", -0.271985 AS "sv_0", 0.623441 AS "sv_1", -1.064963 AS "sv_2", -0.698945 AS "sv_3", 2.937669 AS "sv_4", 0.534871 AS "sv_5", -2.029847 AS "sv_6", -0.277547 AS "sv_7", 1.318131 AS "sv_8", 0.270592 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", -1.518703 AS "sv_0", 2.031850 AS "sv_1", 0.716214 AS "sv_2", -1.718178 AS "sv_3", -0.738879 AS "sv_4", 0.774364 AS "sv_5", -0.460095 AS "sv_6", 1.006853 AS "sv_7", 0.131133 AS "sv_8", -0.245817 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", -1.417017 AS "sv_0", 1.843085 AS "sv_1", -0.485481 AS "sv_2", -1.442436 AS "sv_3", -0.890030 AS "sv_4", -0.217024 AS "sv_5", 0.090377 AS "sv_6", 1.203347 AS "sv_7", -0.054221 AS "sv_8", 2.283275 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 0.587764 AS "sv_0", -0.531360 AS "sv_1", -0.250216 AS "sv_2", 0.255121 AS "sv_3", -0.334561 AS "sv_4", -0.838360 AS "sv_5", -4.379068 AS "sv_6", -2.098284 AS "sv_7", 2.830201 AS "sv_8", 3.062791 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", -1.726931 AS "sv_0", 0.546068 AS "sv_1", -0.043197 AS "sv_2", 0.838583 AS "sv_3", 0.936275 AS "sv_4", 2.240391 AS "sv_5", 1.178930 AS "sv_6", -0.894190 AS "sv_7", -1.137084 AS "sv_8", -0.073077 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", -1.297293 AS "sv_0", 1.762658 AS "sv_1", -0.517579 AS "sv_2", -1.359603 AS "sv_3", 1.428937 AS "sv_4", 0.304982 AS "sv_5", 1.182142 AS "sv_6", 1.842889 AS "sv_7", -0.568789 AS "sv_8", 1.070702 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", -2.540732 AS "sv_0", 2.557817 AS "sv_1", -0.591067 AS "sv_2", -0.448219 AS "sv_3", 0.355015 AS "sv_4", -0.406366 AS "sv_5", 2.025187 AS "sv_6", 3.158858 AS "sv_7", 0.574874 AS "sv_8", -0.055302 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -0.552599 AS "sv_0", 1.076007 AS "sv_1", 0.809486 AS "sv_2", -1.702144 AS "sv_3", -0.443347 AS "sv_4", -0.158225 AS "sv_5", -3.253163 AS "sv_6", -1.282050 AS "sv_7", 0.926509 AS "sv_8", -0.277718 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", -1.281172 AS "sv_0", 2.220311 AS "sv_1", -0.321756 AS "sv_2", -2.661306 AS "sv_3", 0.105664 AS "sv_4", 0.075154 AS "sv_5", -1.616451 AS "sv_6", 0.518400 AS "sv_7", 0.113640 AS "sv_8", 0.529279 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", -0.124049 AS "sv_0", 0.768644 AS "sv_1", -1.040184 AS "sv_2", -1.041910 AS "sv_3", -0.515943 AS "sv_4", 1.480217 AS "sv_5", -1.720070 AS "sv_6", 0.342352 AS "sv_7", 1.247335 AS "sv_8", -1.413962 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", 1.597349 AS "sv_0", -1.517362 AS "sv_1", -1.716131 AS "sv_2", 0.853779 AS "sv_3", -0.720950 AS "sv_4", -0.241207 AS "sv_5", -0.885380 AS "sv_6", -0.661443 AS "sv_7", 0.853790 AS "sv_8", -0.753512 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", -0.265869 AS "sv_0", 0.856546 AS "sv_1", 0.055358 AS "sv_2", -1.068897 AS "sv_3", -0.707670 AS "sv_4", 0.616768 AS "sv_5", -3.099524 AS "sv_6", -0.383819 AS "sv_7", 2.030415 AS "sv_8", -1.149011 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", -2.026119 AS "sv_0", 2.249142 AS "sv_1", 0.607541 AS "sv_2", -1.524179 AS "sv_3", -1.455024 AS "sv_4", -0.009194 AS "sv_5", -0.059147 AS "sv_6", 0.912899 AS "sv_7", -0.154244 AS "sv_8", 0.332222 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", -1.979419 AS "sv_0", 2.019696 AS "sv_1", 0.629069 AS "sv_2", -1.102857 AS "sv_3", -0.533053 AS "sv_4", -0.257772 AS "sv_5", -0.372625 AS "sv_6", 0.608513 AS "sv_7", 0.237841 AS "sv_8", -0.101317 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", 0.342967 AS "sv_0", 0.196788 AS "sv_1", 1.148211 AS "sv_2", -0.605739 AS "sv_3", 2.101292 AS "sv_4", -2.001013 AS "sv_5", -2.127164 AS "sv_6", -0.147926 AS "sv_7", 1.541139 AS "sv_8", -0.411208 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 1.198174 AS "sv_0", -0.448049 AS "sv_1", 0.974410 AS "sv_2", -0.452757 AS "sv_3", -0.875906 AS "sv_4", 0.014741 AS "sv_5", -1.921816 AS "sv_6", 0.026240 AS "sv_7", 1.513349 AS "sv_8", -2.148955 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", 1.807884 AS "sv_0", -1.453958 AS "sv_1", 0.473504 AS "sv_2", 0.535365 AS "sv_3", -0.426605 AS "sv_4", -0.297745 AS "sv_5", -1.279131 AS "sv_6", -0.474511 AS "sv_7", 1.144255 AS "sv_8", 0.318236 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", 0.665606 AS "sv_0", 1.269597 AS "sv_1", -1.079834 AS "sv_2", -3.947758 AS "sv_3", 0.059515 AS "sv_4", 1.176403 AS "sv_5", -4.520449 AS "sv_6", -0.956709 AS "sv_7", 0.580369 AS "sv_8", -0.092376 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", -0.608441 AS "sv_0", -0.157669 AS "sv_1", -0.130133 AS "sv_2", 0.856426 AS "sv_3", 0.272428 AS "sv_4", 0.505403 AS "sv_5", -1.471946 AS "sv_6", -1.739313 AS "sv_7", 0.755753 AS "sv_8", 1.825129 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", 1.661031 AS "sv_0", -0.798698 AS "sv_1", 1.717274 AS "sv_2", -0.343362 AS "sv_3", 0.376445 AS "sv_4", 0.348570 AS "sv_5", -2.849752 AS "sv_6", -0.329359 AS "sv_7", 2.199257 AS "sv_8", -0.104781 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", 2.785573 AS "sv_0", -2.134180 AS "sv_1", -0.847303 AS "sv_2", 0.700216 AS "sv_3", -0.300223 AS "sv_4", 1.166382 AS "sv_5", 1.512431 AS "sv_6", 1.110708 AS "sv_7", -0.324309 AS "sv_8", 0.350286 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", 0.884999 AS "sv_0", 0.549215 AS "sv_1", -0.492350 AS "sv_2", -1.667443 AS "sv_3", -1.335243 AS "sv_4", -1.877447 AS "sv_5", 0.375880 AS "sv_6", 2.343787 AS "sv_7", 0.219708 AS "sv_8", 0.797554 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", -1.436062 AS "sv_0", 0.653389 AS "sv_1", -1.095512 AS "sv_2", -0.003856 AS "sv_3", -1.155150 AS "sv_4", 0.229151 AS "sv_5", -0.893853 AS "sv_6", -1.830395 AS "sv_7", -0.524339 AS "sv_8", 1.581495 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", -0.160083 AS "sv_0", 0.968624 AS "sv_1", 0.847045 AS "sv_2", -1.329805 AS "sv_3", 0.846167 AS "sv_4", -0.867955 AS "sv_5", -2.217911 AS "sv_6", 0.374423 AS "sv_7", 1.560931 AS "sv_8", 0.769254 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", -0.697885 AS "sv_0", 1.078031 AS "sv_1", -0.037153 AS "sv_2", -0.868509 AS "sv_3", -0.069725 AS "sv_4", 1.817546 AS "sv_5", -1.044162 AS "sv_6", 0.517484 AS "sv_7", 0.903454 AS "sv_8", 0.859633 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", 2.814393 AS "sv_0", -2.102287 AS "sv_1", -0.393958 AS "sv_2", 0.585428 AS "sv_3", 0.599844 AS "sv_4", 0.134051 AS "sv_5", 0.849108 AS "sv_6", 0.843388 AS "sv_7", 0.031359 AS "sv_8", 0.379521 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", -1.725369 AS "sv_0", 1.372966 AS "sv_1", 1.878403 AS "sv_2", 0.314206 AS "sv_3", -0.748524 AS "sv_4", -1.198498 AS "sv_5", -0.739740 AS "sv_6", 0.642842 AS "sv_7", 1.759975 AS "sv_8", -0.508412 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", -2.328020 AS "sv_0", 1.389374 AS "sv_1", -2.298276 AS "sv_2", 0.913343 AS "sv_3", 0.336366 AS "sv_4", -0.143118 AS "sv_5", -0.580813 AS "sv_6", -0.021888 AS "sv_7", 1.562773 AS "sv_8", 1.450231 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", -2.187265 AS "sv_0", 2.446781 AS "sv_1", 0.845839 AS "sv_2", -1.767580 AS "sv_3", -1.731538 AS "sv_4", 1.740497 AS "sv_5", -0.906979 AS "sv_6", 0.496253 AS "sv_7", 0.178231 AS "sv_8", 0.118096 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", 0.322804 AS "sv_0", -0.575938 AS "sv_1", -1.239711 AS "sv_2", 0.596346 AS "sv_3", -0.850829 AS "sv_4", 0.061034 AS "sv_5", -1.158763 AS "sv_6", -1.021762 AS "sv_7", 0.749981 AS "sv_8", 0.747154 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", 2.675156 AS "sv_0", -0.373313 AS "sv_1", 0.061754 AS "sv_2", -1.927643 AS "sv_3", 0.860912 AS "sv_4", -1.331563 AS "sv_5", 0.835195 AS "sv_6", 3.540319 AS "sv_7", 0.389383 AS "sv_8", 0.196063 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", 0.397959 AS "sv_0", 0.689584 AS "sv_1", 2.171299 AS "sv_2", -1.400069 AS "sv_3", 0.639806 AS "sv_4", 0.452828 AS "sv_5", 0.124406 AS "sv_6", 1.812564 AS "sv_7", 0.282914 AS "sv_8", 0.312649 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", -2.936037 AS "sv_0", 2.067057 AS "sv_1", -0.795721 AS "sv_2", 1.232088 AS "sv_3", 0.034662 AS "sv_4", 1.141055 AS "sv_5", 2.088878 AS "sv_6", 2.590199 AS "sv_7", 1.407819 AS "sv_8", -0.067862 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", 4.073988 AS "sv_0", -1.560065 AS "sv_1", 1.852559 AS "sv_2", -1.490237 AS "sv_3", -1.817526 AS "sv_4", 1.345710 AS "sv_5", -2.044557 AS "sv_6", 2.095593 AS "sv_7", 2.303360 AS "sv_8", -0.287140 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", 1.032158 AS "sv_0", 0.377531 AS "sv_1", -0.835470 AS "sv_2", -2.143527 AS "sv_3", -0.564668 AS "sv_4", -0.623986 AS "sv_5", -1.514433 AS "sv_6", 0.549383 AS "sv_7", 0.206097 AS "sv_8", 1.560484 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", -1.368644 AS "sv_0", 0.716127 AS "sv_1", 0.307297 AS "sv_2", 0.899080 AS "sv_3", -0.303330 AS "sv_4", 1.272378 AS "sv_5", -0.112382 AS "sv_6", 0.215110 AS "sv_7", 1.172710 AS "sv_8", 1.728197 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", -0.651388 AS "sv_0", 1.534263 AS "sv_1", 0.397206 AS "sv_2", -2.254488 AS "sv_3", 0.589252 AS "sv_4", 0.244271 AS "sv_5", -1.086421 AS "sv_6", 0.427619 AS "sv_7", -0.251791 AS "sv_8", 1.194020 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", -0.775176 AS "sv_0", 0.918643 AS "sv_1", 0.922568 AS "sv_2", -0.333638 AS "sv_3", 0.264996 AS "sv_4", 1.237666 AS "sv_5", -2.081549 AS "sv_6", -0.033022 AS "sv_7", 1.932221 AS "sv_8", 1.290484 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", 0.132347 AS "sv_0", 0.759427 AS "sv_1", -1.116520 AS "sv_2", -1.314918 AS "sv_3", 0.698639 AS "sv_4", -0.230043 AS "sv_5", -3.272410 AS "sv_6", -0.095580 AS "sv_7", 2.219697 AS "sv_8", 1.147635 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", -1.370633 AS "sv_0", 2.352460 AS "sv_1", -0.006829 AS "sv_2", -2.447560 AS "sv_3", 0.565811 AS "sv_4", 0.521019 AS "sv_5", -1.438689 AS "sv_6", 1.160034 AS "sv_7", 0.671298 AS "sv_8", 0.980883 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", -2.009697 AS "sv_0", 2.394544 AS "sv_1", -0.219556 AS "sv_2", -0.976727 AS "sv_3", -1.288144 AS "sv_4", -0.369427 AS "sv_5", 1.035307 AS "sv_6", 2.783171 AS "sv_7", 0.786481 AS "sv_8", -0.750877 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", 1.098034 AS "sv_0", -1.162464 AS "sv_1", -0.014109 AS "sv_2", 0.766009 AS "sv_3", 1.487847 AS "sv_4", -1.037305 AS "sv_5", 1.012227 AS "sv_6", 0.090103 AS "sv_7", -0.465799 AS "sv_8", -0.056145 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", -0.855209 AS "sv_0", 0.493690 AS "sv_1", -0.473989 AS "sv_2", 0.074562 AS "sv_3", -0.184752 AS "sv_4", -0.003572 AS "sv_5", -1.912964 AS "sv_6", -1.222644 AS "sv_7", 1.058113 AS "sv_8", -1.942388 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", -0.680014 AS "sv_0", 1.116144 AS "sv_1", -2.414785 AS "sv_2", -0.020651 AS "sv_3", 1.592387 AS "sv_4", -0.012289 AS "sv_5", 1.510202 AS "sv_6", 3.077718 AS "sv_7", 1.181535 AS "sv_8", -0.695245 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", -0.943258 AS "sv_0", 1.114234 AS "sv_1", -1.557613 AS "sv_2", -0.903339 AS "sv_3", 0.047159 AS "sv_4", 1.004317 AS "sv_5", -1.767834 AS "sv_6", -0.394812 AS "sv_7", 0.852514 AS "sv_8", 0.313995 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", 0.157232 AS "sv_0", 1.001761 AS "sv_1", -0.765981 AS "sv_2", -1.957951 AS "sv_3", 0.079239 AS "sv_4", -0.745090 AS "sv_5", -2.220036 AS "sv_6", 0.484603 AS "sv_7", 1.119865 AS "sv_8", -0.274533 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", 0.494035 AS "sv_0", -0.210009 AS "sv_1", 0.062904 AS "sv_2", -0.124288 AS "sv_3", -0.430038 AS "sv_4", 0.335920 AS "sv_5", -0.410665 AS "sv_6", 0.178257 AS "sv_7", 0.426438 AS "sv_8", -1.183821 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", 1.054478 AS "sv_0", -0.310691 AS "sv_1", -0.858398 AS "sv_2", -0.482701 AS "sv_3", 0.195413 AS "sv_4", -1.708931 AS "sv_5", -1.062431 AS "sv_6", 0.515229 AS "sv_7", 1.044455 AS "sv_8", 0.156734 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", -0.147215 AS "sv_0", 1.210914 AS "sv_1", 0.680777 AS "sv_2", -2.765225 AS "sv_3", -0.027242 AS "sv_4", -0.556619 AS "sv_5", -3.111186 AS "sv_6", -1.085431 AS "sv_7", 0.052739 AS "sv_8", -0.783902 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", -0.253422 AS "sv_0", 1.180504 AS "sv_1", -0.202320 AS "sv_2", -1.601430 AS "sv_3", -1.601221 AS "sv_4", 2.157065 AS "sv_5", -1.502630 AS "sv_6", 0.880108 AS "sv_7", 1.055359 AS "sv_8", 0.209518 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", 0.425630 AS "sv_0", -1.120338 AS "sv_1", 0.779076 AS "sv_2", 1.303797 AS "sv_3", -0.474686 AS "sv_4", 0.521500 AS "sv_5", -1.577283 AS "sv_6", -2.023416 AS "sv_7", 0.866766 AS "sv_8", 0.149225 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", -0.112945 AS "sv_0", 0.807003 AS "sv_1", 1.387225 AS "sv_2", -1.088988 AS "sv_3", -1.001430 AS "sv_4", -0.556402 AS "sv_5", -0.884661 AS "sv_6", 0.839528 AS "sv_7", 0.780054 AS "sv_8", -1.156320 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", 2.430256 AS "sv_0", -1.325422 AS "sv_1", 0.301599 AS "sv_2", -0.297465 AS "sv_3", 0.294931 AS "sv_4", -0.503931 AS "sv_5", -2.019088 AS "sv_6", 0.201202 AS "sv_7", 1.760170 AS "sv_8", -1.189890 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", -0.706692 AS "sv_0", 0.906265 AS "sv_1", 0.522010 AS "sv_2", -0.567436 AS "sv_3", 0.371505 AS "sv_4", -1.793946 AS "sv_5", -1.249749 AS "sv_6", 0.164098 AS "sv_7", 1.050645 AS "sv_8", -0.516722 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", -1.139775 AS "sv_0", 1.725284 AS "sv_1", 0.303728 AS "sv_2", -1.451476 AS "sv_3", -0.339445 AS "sv_4", 0.213285 AS "sv_5", 0.889622 AS "sv_6", 1.864787 AS "sv_7", -0.338666 AS "sv_8", 0.563929 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", 1.998214 AS "sv_0", -1.388847 AS "sv_1", 0.327921 AS "sv_2", -0.142832 AS "sv_3", -1.120785 AS "sv_4", 2.547697 AS "sv_5", -1.759038 AS "sv_6", -0.878497 AS "sv_7", 0.720918 AS "sv_8", 0.544365 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", -0.011704 AS "sv_0", 0.404802 AS "sv_1", 0.640962 AS "sv_2", -2.146659 AS "sv_3", -0.813768 AS "sv_4", -0.586316 AS "sv_5", 0.140441 AS "sv_6", -1.422379 AS "sv_7", -3.111623 AS "sv_8", -1.405005 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", -1.237862 AS "sv_0", 1.203999 AS "sv_1", 1.371318 AS "sv_2", -0.831447 AS "sv_3", -1.106356 AS "sv_4", 0.032150 AS "sv_5", 0.488773 AS "sv_6", 0.291267 AS "sv_7", -0.787730 AS "sv_8", 1.249816 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", -1.849118 AS "sv_0", 2.073962 AS "sv_1", -0.135315 AS "sv_2", -1.804262 AS "sv_3", 1.916087 AS "sv_4", -0.819829 AS "sv_5", 0.907011 AS "sv_6", 0.781659 AS "sv_7", -1.509514 AS "sv_8", 1.676792 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", -0.155516 AS "sv_0", 0.601374 AS "sv_1", 0.823993 AS "sv_2", -0.909418 AS "sv_3", 0.532215 AS "sv_4", -0.224022 AS "sv_5", 1.486575 AS "sv_6", 1.287675 AS "sv_7", -1.126032 AS "sv_8", 0.828645 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", 0.442618 AS "sv_0", 0.650231 AS "sv_1", -1.256712 AS "sv_2", -2.594180 AS "sv_3", 1.074646 AS "sv_4", -0.279495 AS "sv_5", -3.855834 AS "sv_6", -1.725891 AS "sv_7", 0.337320 AS "sv_8", -1.383480 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", -0.498067 AS "sv_0", 1.848932 AS "sv_1", -0.272696 AS "sv_2", -3.297554 AS "sv_3", -0.308196 AS "sv_4", 1.972422 AS "sv_5", -2.735830 AS "sv_6", -0.176185 AS "sv_7", 0.067235 AS "sv_8", 2.012281 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", -1.438337 AS "sv_0", 1.993363 AS "sv_1", 0.626181 AS "sv_2", -1.573307 AS "sv_3", 0.231375 AS "sv_4", 0.611807 AS "sv_5", 1.390001 AS "sv_6", 2.136869 AS "sv_7", -0.683862 AS "sv_8", -1.021298 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", -1.425526 AS "sv_0", 0.774339 AS "sv_1", 1.419989 AS "sv_2", 0.866557 AS "sv_3", -0.037415 AS "sv_4", 0.964727 AS "sv_5", 1.487323 AS "sv_6", 0.977157 AS "sv_7", 0.166963 AS "sv_8", -0.187884 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", -1.962561 AS "sv_0", 1.651374 AS "sv_1", 0.972507 AS "sv_2", -1.327302 AS "sv_3", -3.225186 AS "sv_4", 0.362805 AS "sv_5", -0.419877 AS "sv_6", -1.085568 AS "sv_7", -1.372993 AS "sv_8", 0.043956 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", -1.715016 AS "sv_0", 1.705483 AS "sv_1", -0.875635 AS "sv_2", -2.118045 AS "sv_3", 0.921156 AS "sv_4", -0.726115 AS "sv_5", 0.674459 AS "sv_6", -0.804919 AS "sv_7", -2.919855 AS "sv_8", 0.552427 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", -0.368699 AS "sv_0", 1.185638 AS "sv_1", 1.210300 AS "sv_2", -1.064544 AS "sv_3", -0.044962 AS "sv_4", 0.927011 AS "sv_5", 1.591867 AS "sv_6", 2.768152 AS "sv_7", -0.045935 AS "sv_8", -0.036524 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", 2.056038 AS "sv_0", -1.766804 AS "sv_1", -0.172388 AS "sv_2", 0.284379 AS "sv_3", 1.167445 AS "sv_4", -0.907102 AS "sv_5", 2.650384 AS "sv_6", 0.474345 AS "sv_7", -2.310056 AS "sv_8", 1.195274 AS "sv_9"
     UNION ALL
     SELECT 222 AS "sv_idx", 1.176951 AS "sv_0", -0.565315 AS "sv_1", -0.794474 AS "sv_2", -0.807118 AS "sv_3", -0.250861 AS "sv_4", -0.443221 AS "sv_5", -0.375744 AS "sv_6", -0.258381 AS "sv_7", -0.612534 AS "sv_8", 0.006702 AS "sv_9"
     UNION ALL
     SELECT 223 AS "sv_idx", -0.592478 AS "sv_0", 1.129907 AS "sv_1", 1.009589 AS "sv_2", -2.525318 AS "sv_3", -1.420899 AS "sv_4", 0.244524 AS "sv_5", -3.306473 AS "sv_6", -2.359632 AS "sv_7", -0.616392 AS "sv_8", -2.202467 AS "sv_9"
     UNION ALL
     SELECT 224 AS "sv_idx", -0.896751 AS "sv_0", 1.531220 AS "sv_1", -0.403102 AS "sv_2", -2.207405 AS "sv_3", 0.951295 AS "sv_4", -0.561331 AS "sv_5", 0.737776 AS "sv_6", 0.658921 AS "sv_7", -1.867752 AS "sv_8", 2.207520 AS "sv_9"
     UNION ALL
     SELECT 225 AS "sv_idx", 1.070009 AS "sv_0", -0.565984 AS "sv_1", 1.901781 AS "sv_2", -0.879432 AS "sv_3", -1.041408 AS "sv_4", 1.707003 AS "sv_5", -0.395594 AS "sv_6", -0.661789 AS "sv_7", -0.990634 AS "sv_8", -0.407881 AS "sv_9"
     UNION ALL
     SELECT 226 AS "sv_idx", 2.128451 AS "sv_0", -1.656084 AS "sv_1", 0.004531 AS "sv_2", 0.182202 AS "sv_3", -2.262798 AS "sv_4", -2.943059 AS "sv_5", -0.500073 AS "sv_6", -0.506979 AS "sv_7", -0.005993 AS "sv_8", 0.356628 AS "sv_9"
     UNION ALL
     SELECT 227 AS "sv_idx", -0.800924 AS "sv_0", 0.602622 AS "sv_1", 1.178377 AS "sv_2", 0.321794 AS "sv_3", -0.893038 AS "sv_4", -0.243805 AS "sv_5", 1.945666 AS "sv_6", 1.470878 AS "sv_7", -0.380220 AS "sv_8", -1.176722 AS "sv_9"
     UNION ALL
     SELECT 228 AS "sv_idx", 1.834144 AS "sv_0", -1.800300 AS "sv_1", 0.394685 AS "sv_2", 0.433284 AS "sv_3", -1.657981 AS "sv_4", -1.156439 AS "sv_5", -0.164418 AS "sv_6", -1.350682 AS "sv_7", -0.854478 AS "sv_8", -1.416498 AS "sv_9"
     UNION ALL
     SELECT 229 AS "sv_idx", 1.073936 AS "sv_0", -1.118467 AS "sv_1", -0.987720 AS "sv_2", -0.045174 AS "sv_3", 0.465139 AS "sv_4", 0.970476 AS "sv_5", 1.288032 AS "sv_6", -0.813329 AS "sv_7", -2.188357 AS "sv_8", 1.184137 AS "sv_9"
     UNION ALL
     SELECT 230 AS "sv_idx", -0.304356 AS "sv_0", 0.185047 AS "sv_1", 0.695920 AS "sv_2", 0.266985 AS "sv_3", -0.624851 AS "sv_4", -0.946601 AS "sv_5", 2.158566 AS "sv_6", 1.250106 AS "sv_7", -0.889258 AS "sv_8", 0.839911 AS "sv_9"
     UNION ALL
     SELECT 231 AS "sv_idx", -0.049277 AS "sv_0", 1.603128 AS "sv_1", 0.657879 AS "sv_2", -2.347600 AS "sv_3", -0.431226 AS "sv_4", 0.064629 AS "sv_5", 0.600406 AS "sv_6", 2.976956 AS "sv_7", 0.092139 AS "sv_8", -0.838759 AS "sv_9"
     UNION ALL
     SELECT 232 AS "sv_idx", -1.067863 AS "sv_0", 0.728836 AS "sv_1", 1.338623 AS "sv_2", 0.344031 AS "sv_3", 0.290533 AS "sv_4", -0.551809 AS "sv_5", 2.344952 AS "sv_6", 1.442460 AS "sv_7", -0.770565 AS "sv_8", 0.644973 AS "sv_9"
     UNION ALL
     SELECT 233 AS "sv_idx", -1.642027 AS "sv_0", 2.382181 AS "sv_1", -2.896833 AS "sv_2", -2.597493 AS "sv_3", 0.453807 AS "sv_4", -1.736239 AS "sv_5", 1.076789 AS "sv_6", 1.490093 AS "sv_7", -1.727404 AS "sv_8", 0.321363 AS "sv_9"
     UNION ALL
     SELECT 234 AS "sv_idx", -1.924309 AS "sv_0", 1.236216 AS "sv_1", 0.775559 AS "sv_2", -0.512039 AS "sv_3", -2.024612 AS "sv_4", 0.478127 AS "sv_5", -0.162645 AS "sv_6", -1.306641 AS "sv_7", -1.178976 AS "sv_8", 0.609822 AS "sv_9"
     UNION ALL
     SELECT 235 AS "sv_idx", 0.836908 AS "sv_0", -0.003113 AS "sv_1", 0.956128 AS "sv_2", -1.385592 AS "sv_3", -0.751165 AS "sv_4", 1.982933 AS "sv_5", -2.424466 AS "sv_6", -0.794828 AS "sv_7", 0.603524 AS "sv_8", -0.248975 AS "sv_9"
     UNION ALL
     SELECT 236 AS "sv_idx", 1.900405 AS "sv_0", -1.479081 AS "sv_1", 0.125657 AS "sv_2", -0.313671 AS "sv_3", -2.103942 AS "sv_4", -0.193720 AS "sv_5", 0.040858 AS "sv_6", -0.894352 AS "sv_7", -1.276576 AS "sv_8", 0.145527 AS "sv_9"
     UNION ALL
     SELECT 237 AS "sv_idx", 1.982011 AS "sv_0", -2.211427 AS "sv_1", -0.335135 AS "sv_2", 0.232787 AS "sv_3", -0.514929 AS "sv_4", -2.018981 AS "sv_5", -0.378010 AS "sv_6", -2.895429 AS "sv_7", -2.158186 AS "sv_8", -1.163903 AS "sv_9"
     UNION ALL
     SELECT 238 AS "sv_idx", -1.907395 AS "sv_0", 2.777863 AS "sv_1", 0.111678 AS "sv_2", -2.388667 AS "sv_3", 0.216066 AS "sv_4", 0.395042 AS "sv_5", 1.146462 AS "sv_6", 2.601650 AS "sv_7", -0.633759 AS "sv_8", 0.733782 AS "sv_9"
     UNION ALL
     SELECT 239 AS "sv_idx", 1.428648 AS "sv_0", -1.115770 AS "sv_1", -1.513938 AS "sv_2", -0.455363 AS "sv_3", -2.635314 AS "sv_4", 1.188565 AS "sv_5", -1.862803 AS "sv_6", -1.869829 AS "sv_7", -0.227389 AS "sv_8", -1.148789 AS "sv_9"
     UNION ALL
     SELECT 240 AS "sv_idx", -0.466241 AS "sv_0", 0.277225 AS "sv_1", -0.042625 AS "sv_2", 0.478449 AS "sv_3", 0.306182 AS "sv_4", -0.993709 AS "sv_5", -0.619745 AS "sv_6", 0.171663 AS "sv_7", 1.223622 AS "sv_8", -0.174393 AS "sv_9"
     UNION ALL
     SELECT 241 AS "sv_idx", -1.543461 AS "sv_0", 1.563020 AS "sv_1", -0.009024 AS "sv_2", -0.532413 AS "sv_3", -1.124743 AS "sv_4", -0.430382 AS "sv_5", 1.160188 AS "sv_6", 1.558123 AS "sv_7", -0.102477 AS "sv_8", -1.692070 AS "sv_9"
     UNION ALL
     SELECT 242 AS "sv_idx", -1.302275 AS "sv_0", 1.559735 AS "sv_1", -0.255920 AS "sv_2", -1.717328 AS "sv_3", -1.027402 AS "sv_4", 1.822545 AS "sv_5", 1.532763 AS "sv_6", 0.718011 AS "sv_7", -2.198665 AS "sv_8", -1.203239 AS "sv_9"
     UNION ALL
     SELECT 243 AS "sv_idx", 0.143992 AS "sv_0", -0.007326 AS "sv_1", 0.390979 AS "sv_2", -1.331103 AS "sv_3", -0.023706 AS "sv_4", -0.086113 AS "sv_5", -1.857120 AS "sv_6", -2.355487 AS "sv_7", -1.224921 AS "sv_8", -0.210721 AS "sv_9"
     UNION ALL
     SELECT 244 AS "sv_idx", -1.589142 AS "sv_0", 1.391623 AS "sv_1", 1.399658 AS "sv_2", -0.100238 AS "sv_3", 0.881366 AS "sv_4", -0.207511 AS "sv_5", 2.236804 AS "sv_6", 1.882300 AS "sv_7", -0.577627 AS "sv_8", 0.534369 AS "sv_9"
     UNION ALL
     SELECT 245 AS "sv_idx", -2.598929 AS "sv_0", 3.463445 AS "sv_1", -0.023906 AS "sv_2", -4.292647 AS "sv_3", 0.492410 AS "sv_4", 0.036822 AS "sv_5", 2.257645 AS "sv_6", 1.190452 AS "sv_7", -4.469301 AS "sv_8", 0.138775 AS "sv_9"
     UNION ALL
     SELECT 246 AS "sv_idx", 0.463715 AS "sv_0", -0.438244 AS "sv_1", -1.839275 AS "sv_2", -1.032279 AS "sv_3", -1.353071 AS "sv_4", 0.983311 AS "sv_5", 0.356989 AS "sv_6", -1.687842 AS "sv_7", -2.720098 AS "sv_8", 0.882305 AS "sv_9"
     UNION ALL
     SELECT 247 AS "sv_idx", 2.387556 AS "sv_0", -2.594020 AS "sv_1", -0.816144 AS "sv_2", 0.716492 AS "sv_3", 1.443774 AS "sv_4", -0.394504 AS "sv_5", 1.295179 AS "sv_6", -1.802228 AS "sv_7", -2.584677 AS "sv_8", -0.045584 AS "sv_9"
     UNION ALL
     SELECT 248 AS "sv_idx", -1.184171 AS "sv_0", 0.933188 AS "sv_1", 0.677740 AS "sv_2", -1.633569 AS "sv_3", -0.206484 AS "sv_4", 0.435429 AS "sv_5", -3.793216 AS "sv_6", -3.697171 AS "sv_7", -0.499893 AS "sv_8", -0.343456 AS "sv_9"
     UNION ALL
     SELECT 249 AS "sv_idx", 2.767989 AS "sv_0", -2.887271 AS "sv_1", 0.294503 AS "sv_2", 1.501834 AS "sv_3", 2.184623 AS "sv_4", -0.397962 AS "sv_5", 3.233045 AS "sv_6", 0.107273 AS "sv_7", -2.326967 AS "sv_8", -1.522666 AS "sv_9"
     UNION ALL
     SELECT 250 AS "sv_idx", -0.025523 AS "sv_0", 1.187181 AS "sv_1", -0.779050 AS "sv_2", -2.114725 AS "sv_3", -0.848241 AS "sv_4", 1.171101 AS "sv_5", 0.984662 AS "sv_6", 1.958577 AS "sv_7", -1.007272 AS "sv_8", 0.984886 AS "sv_9"
     UNION ALL
     SELECT 251 AS "sv_idx", 1.662878 AS "sv_0", -0.408722 AS "sv_1", -1.159508 AS "sv_2", -1.411683 AS "sv_3", -0.201078 AS "sv_4", -1.413037 AS "sv_5", -2.509928 AS "sv_6", -0.172642 AS "sv_7", 1.125324 AS "sv_8", -0.626561 AS "sv_9"
     UNION ALL
     SELECT 252 AS "sv_idx", -1.358471 AS "sv_0", 1.916761 AS "sv_1", -1.016608 AS "sv_2", -2.082366 AS "sv_3", 2.631478 AS "sv_4", -0.597205 AS "sv_5", -0.331523 AS "sv_6", 0.554156 AS "sv_7", -0.706377 AS "sv_8", -0.539130 AS "sv_9"
     UNION ALL
     SELECT 253 AS "sv_idx", -1.123043 AS "sv_0", 1.342440 AS "sv_1", 0.659906 AS "sv_2", -1.999727 AS "sv_3", -1.001844 AS "sv_4", 1.881842 AS "sv_5", -1.291807 AS "sv_6", -1.324783 AS "sv_7", -1.312703 AS "sv_8", 0.946601 AS "sv_9"
     UNION ALL
     SELECT 254 AS "sv_idx", -0.594587 AS "sv_0", 1.369676 AS "sv_1", 0.877953 AS "sv_2", -2.593040 AS "sv_3", 0.424603 AS "sv_4", 0.667879 AS "sv_5", -1.684506 AS "sv_6", -0.795299 AS "sv_7", -0.979715 AS "sv_8", -1.954555 AS "sv_9"
     UNION ALL
     SELECT 255 AS "sv_idx", -0.426356 AS "sv_0", 1.107155 AS "sv_1", -1.003999 AS "sv_2", -0.464555 AS "sv_3", 0.334930 AS "sv_4", 0.324729 AS "sv_5", 1.487118 AS "sv_6", 3.101970 AS "sv_7", 0.842226 AS "sv_8", -0.932318 AS "sv_9"
     UNION ALL
     SELECT 256 AS "sv_idx", 2.359184 AS "sv_0", -1.856519 AS "sv_1", 1.256771 AS "sv_2", 0.143268 AS "sv_3", 0.176867 AS "sv_4", -0.322368 AS "sv_5", -1.174072 AS "sv_6", -1.010405 AS "sv_7", 0.194393 AS "sv_8", -1.638601 AS "sv_9"
     UNION ALL
     SELECT 257 AS "sv_idx", 0.077684 AS "sv_0", 0.461836 AS "sv_1", -0.667609 AS "sv_2", -1.517880 AS "sv_3", 0.134695 AS "sv_4", 1.030484 AS "sv_5", -1.272707 AS "sv_6", -0.737287 AS "sv_7", -0.560045 AS "sv_8", 0.287143 AS "sv_9"
     UNION ALL
     SELECT 258 AS "sv_idx", 1.097936 AS "sv_0", 0.040656 AS "sv_1", -0.911045 AS "sv_2", -1.393021 AS "sv_3", -0.218440 AS "sv_4", -0.317373 AS "sv_5", -3.074984 AS "sv_6", -0.229855 AS "sv_7", 1.733402 AS "sv_8", 0.832678 AS "sv_9"
     UNION ALL
     SELECT 259 AS "sv_idx", 0.914030 AS "sv_0", -0.385815 AS "sv_1", 2.120265 AS "sv_2", -1.074814 AS "sv_3", 0.670472 AS "sv_4", -0.572071 AS "sv_5", -1.966973 AS "sv_6", -1.398672 AS "sv_7", -0.152956 AS "sv_8", -0.427271 AS "sv_9"
     UNION ALL
     SELECT 260 AS "sv_idx", 0.689986 AS "sv_0", 0.347762 AS "sv_1", 1.781123 AS "sv_2", -1.765107 AS "sv_3", 2.251021 AS "sv_4", -1.181159 AS "sv_5", -1.102815 AS "sv_6", 0.225044 AS "sv_7", -0.160310 AS "sv_8", -0.349326 AS "sv_9"
     UNION ALL
     SELECT 261 AS "sv_idx", 1.674680 AS "sv_0", -0.942082 AS "sv_1", 1.167921 AS "sv_2", -1.078052 AS "sv_3", -0.663313 AS "sv_4", -0.496328 AS "sv_5", -1.854286 AS "sv_6", -1.404890 AS "sv_7", -0.358132 AS "sv_8", -0.381627 AS "sv_9"
     UNION ALL
     SELECT 262 AS "sv_idx", 1.040967 AS "sv_0", -0.896017 AS "sv_1", -0.899182 AS "sv_2", -0.957206 AS "sv_3", -0.448472 AS "sv_4", -0.836368 AS "sv_5", -1.827886 AS "sv_6", -2.770494 AS "sv_7", -1.411410 AS "sv_8", -0.257140 AS "sv_9"
     UNION ALL
     SELECT 263 AS "sv_idx", 0.139210 AS "sv_0", 0.055910 AS "sv_1", 0.620311 AS "sv_2", -0.875009 AS "sv_3", 1.917547 AS "sv_4", -0.450244 AS "sv_5", 0.930922 AS "sv_6", -0.200252 AS "sv_7", -1.853918 AS "sv_8", -1.939052 AS "sv_9"
     UNION ALL
     SELECT 264 AS "sv_idx", 0.855164 AS "sv_0", -0.934582 AS "sv_1", -1.885349 AS "sv_2", -0.051859 AS "sv_3", 0.227505 AS "sv_4", -0.483269 AS "sv_5", 2.053155 AS "sv_6", -0.362082 AS "sv_7", -2.566222 AS "sv_8", 0.077759 AS "sv_9"
     UNION ALL
     SELECT 265 AS "sv_idx", 1.634184 AS "sv_0", -1.055950 AS "sv_1", -1.468038 AS "sv_2", -0.702791 AS "sv_3", -1.465764 AS "sv_4", -0.117288 AS "sv_5", -0.192341 AS "sv_6", -0.655960 AS "sv_7", -1.113044 AS "sv_8", 0.789504 AS "sv_9"
     UNION ALL
     SELECT 266 AS "sv_idx", -0.511581 AS "sv_0", 1.491927 AS "sv_1", -0.614580 AS "sv_2", -1.975133 AS "sv_3", -0.291699 AS "sv_4", -1.009282 AS "sv_5", 1.205990 AS "sv_6", 2.097032 AS "sv_7", -0.950790 AS "sv_8", 0.254415 AS "sv_9"
     UNION ALL
     SELECT 267 AS "sv_idx", 0.879973 AS "sv_0", -0.449295 AS "sv_1", 0.343225 AS "sv_2", -0.224473 AS "sv_3", 1.797731 AS "sv_4", -1.549817 AS "sv_5", 1.959260 AS "sv_6", 1.271211 AS "sv_7", -1.186812 AS "sv_8", 0.605879 AS "sv_9"
     UNION ALL
     SELECT 268 AS "sv_idx", 1.312271 AS "sv_0", -1.440400 AS "sv_1", 0.412432 AS "sv_2", 0.347022 AS "sv_3", 1.108338 AS "sv_4", -0.912101 AS "sv_5", 2.148540 AS "sv_6", -0.447104 AS "sv_7", -2.466320 AS "sv_8", -0.725013 AS "sv_9"
     UNION ALL
     SELECT 269 AS "sv_idx", 0.674535 AS "sv_0", -0.349946 AS "sv_1", -1.241974 AS "sv_2", -1.049251 AS "sv_3", -0.569342 AS "sv_4", -1.297940 AS "sv_5", -0.577524 AS "sv_6", -1.234251 AS "sv_7", -1.396742 AS "sv_8", -0.966864 AS "sv_9"
     UNION ALL
     SELECT 270 AS "sv_idx", -0.390501 AS "sv_0", -0.475462 AS "sv_1", 0.847291 AS "sv_2", 1.726086 AS "sv_3", -1.185284 AS "sv_4", 1.750336 AS "sv_5", -0.849033 AS "sv_6", -0.855584 AS "sv_7", 1.560563 AS "sv_8", -0.955622 AS "sv_9"
     UNION ALL
     SELECT 271 AS "sv_idx", -1.474927 AS "sv_0", 1.790264 AS "sv_1", -0.366856 AS "sv_2", -1.971835 AS "sv_3", -2.001769 AS "sv_4", 0.034034 AS "sv_5", 0.952395 AS "sv_6", 0.503734 AS "sv_7", -1.973338 AS "sv_8", -0.702300 AS "sv_9"
     UNION ALL
     SELECT 272 AS "sv_idx", -2.282059 AS "sv_0", 2.596397 AS "sv_1", -1.779926 AS "sv_2", -2.427222 AS "sv_3", -1.657168 AS "sv_4", 2.073428 AS "sv_5", 1.153756 AS "sv_6", 0.840944 AS "sv_7", -2.167686 AS "sv_8", -0.265594 AS "sv_9"
     UNION ALL
     SELECT 273 AS "sv_idx", -1.899081 AS "sv_0", 1.919137 AS "sv_1", 0.042180 AS "sv_2", -1.355431 AS "sv_3", 0.856443 AS "sv_4", 0.309242 AS "sv_5", 1.270352 AS "sv_6", 0.850669 AS "sv_7", -1.457560 AS "sv_8", 0.491478 AS "sv_9"
     UNION ALL
     SELECT 274 AS "sv_idx", -0.690543 AS "sv_0", 1.721003 AS "sv_1", 0.161201 AS "sv_2", -2.350797 AS "sv_3", -1.207443 AS "sv_4", 0.846429 AS "sv_5", 1.119331 AS "sv_6", 1.919212 AS "sv_7", -1.299774 AS "sv_8", -0.101282 AS "sv_9"
     UNION ALL
     SELECT 275 AS "sv_idx", -1.015836 AS "sv_0", 2.233100 AS "sv_1", -0.522036 AS "sv_2", -3.684135 AS "sv_3", -0.218675 AS "sv_4", 1.301117 AS "sv_5", -0.338061 AS "sv_6", 0.450748 AS "sv_7", -2.115460 AS "sv_8", 0.946423 AS "sv_9"
     UNION ALL
     SELECT 276 AS "sv_idx", 0.585524 AS "sv_0", -0.117165 AS "sv_1", -0.363097 AS "sv_2", -1.539262 AS "sv_3", 0.920180 AS "sv_4", 1.482371 AS "sv_5", -1.625691 AS "sv_6", -1.758072 AS "sv_7", -1.157235 AS "sv_8", 1.194446 AS "sv_9"
     UNION ALL
     SELECT 277 AS "sv_idx", -0.184160 AS "sv_0", 1.393352 AS "sv_1", -0.225524 AS "sv_2", -2.375202 AS "sv_3", -0.442866 AS "sv_4", -0.676457 AS "sv_5", -3.163405 AS "sv_6", 0.030565 AS "sv_7", 1.397528 AS "sv_8", 0.929806 AS "sv_9"
     UNION ALL
     SELECT 278 AS "sv_idx", -1.120984 AS "sv_0", 0.713444 AS "sv_1", 1.186073 AS "sv_2", -0.075300 AS "sv_3", 0.946018 AS "sv_4", -0.742854 AS "sv_5", 2.443390 AS "sv_6", 0.699090 AS "sv_7", -1.852131 AS "sv_8", -0.391551 AS "sv_9"
     UNION ALL
     SELECT 279 AS "sv_idx", -1.054467 AS "sv_0", 0.394599 AS "sv_1", 1.238242 AS "sv_2", 0.970451 AS "sv_3", -0.669607 AS "sv_4", 0.346652 AS "sv_5", 3.392596 AS "sv_6", 1.564250 AS "sv_7", -1.242243 AS "sv_8", -1.102637 AS "sv_9"
     UNION ALL
     SELECT 280 AS "sv_idx", -0.757317 AS "sv_0", 1.477212 AS "sv_1", 0.036993 AS "sv_2", -3.016469 AS "sv_3", -0.173819 AS "sv_4", -0.309609 AS "sv_5", -2.544888 AS "sv_6", -1.817151 AS "sv_7", -1.306726 AS "sv_8", -1.447145 AS "sv_9"
     UNION ALL
     SELECT 281 AS "sv_idx", -0.253598 AS "sv_0", 0.523619 AS "sv_1", -0.333898 AS "sv_2", -1.699160 AS "sv_3", 0.270537 AS "sv_4", 0.860703 AS "sv_5", -1.559971 AS "sv_6", -1.788229 AS "sv_7", -1.290758 AS "sv_8", 0.682770 AS "sv_9"
     UNION ALL
     SELECT 282 AS "sv_idx", 2.403703 AS "sv_0", -1.907151 AS "sv_1", -1.230513 AS "sv_2", 0.184932 AS "sv_3", -1.007814 AS "sv_4", 0.798517 AS "sv_5", -2.295723 AS "sv_6", -1.543203 AS "sv_7", 0.915594 AS "sv_8", -1.451065 AS "sv_9"
     UNION ALL
     SELECT 283 AS "sv_idx", -1.504006 AS "sv_0", 1.122246 AS "sv_1", -0.079766 AS "sv_2", -0.343970 AS "sv_3", -0.104416 AS "sv_4", -0.243344 AS "sv_5", -1.084117 AS "sv_6", -0.790439 AS "sv_7", 0.312173 AS "sv_8", -0.905650 AS "sv_9"
     UNION ALL
     SELECT 284 AS "sv_idx", -1.034274 AS "sv_0", 1.456907 AS "sv_1", -1.117348 AS "sv_2", -0.532888 AS "sv_3", -0.225675 AS "sv_4", 0.133119 AS "sv_5", 5.347556 AS "sv_6", 4.473999 AS "sv_7", -1.933781 AS "sv_8", -0.269460 AS "sv_9"
     UNION ALL
     SELECT 285 AS "sv_idx", 0.946585 AS "sv_0", -0.399403 AS "sv_1", -0.441337 AS "sv_2", -0.611780 AS "sv_3", 1.573483 AS "sv_4", -3.091728 AS "sv_5", -1.498431 AS "sv_6", -0.498327 AS "sv_7", 0.518011 AS "sv_8", -1.130983 AS "sv_9"
     UNION ALL
     SELECT 286 AS "sv_idx", 0.692739 AS "sv_0", -0.113373 AS "sv_1", 0.188895 AS "sv_2", -0.978275 AS "sv_3", -1.050732 AS "sv_4", -1.920995 AS "sv_5", -1.516992 AS "sv_6", -0.618178 AS "sv_7", 0.164676 AS "sv_8", 1.092563 AS "sv_9"
     UNION ALL
     SELECT 287 AS "sv_idx", 1.577569 AS "sv_0", -1.568232 AS "sv_1", -0.779248 AS "sv_2", -0.503561 AS "sv_3", -1.144583 AS "sv_4", -0.116107 AS "sv_5", -1.703721 AS "sv_6", -3.184129 AS "sv_7", -1.592102 AS "sv_8", -0.949039 AS "sv_9"
     UNION ALL
     SELECT 288 AS "sv_idx", 0.619235 AS "sv_0", 0.003050 AS "sv_1", -1.032467 AS "sv_2", -1.503561 AS "sv_3", 1.633787 AS "sv_4", 1.303877 AS "sv_5", -1.023220 AS "sv_6", -0.879444 AS "sv_7", -0.987419 AS "sv_8", 2.091479 AS "sv_9"
     UNION ALL
     SELECT 289 AS "sv_idx", -0.242152 AS "sv_0", -1.232000 AS "sv_1", -0.904557 AS "sv_2", 1.972111 AS "sv_3", -0.004749 AS "sv_4", -0.262166 AS "sv_5", -3.333381 AS "sv_6", -4.142853 AS "sv_7", 1.439083 AS "sv_8", 0.305147 AS "sv_9"
     UNION ALL
     SELECT 290 AS "sv_idx", 1.956339 AS "sv_0", -1.687747 AS "sv_1", 0.543923 AS "sv_2", 0.383776 AS "sv_3", -0.301454 AS "sv_4", 1.299213 AS "sv_5", 0.144872 AS "sv_6", -0.515476 AS "sv_7", -0.498105 AS "sv_8", -0.408863 AS "sv_9"
     UNION ALL
     SELECT 291 AS "sv_idx", -0.062081 AS "sv_0", 0.817813 AS "sv_1", -3.562217 AS "sv_2", -1.670871 AS "sv_3", 0.915147 AS "sv_4", -1.566007 AS "sv_5", -0.635636 AS "sv_6", 0.321244 AS "sv_7", -0.402473 AS "sv_8", -0.078130 AS "sv_9"
     UNION ALL
     SELECT 292 AS "sv_idx", -1.376635 AS "sv_0", 1.563467 AS "sv_1", 0.530557 AS "sv_2", -1.665121 AS "sv_3", 1.244921 AS "sv_4", -0.579466 AS "sv_5", 5.062438 AS "sv_6", 2.236096 AS "sv_7", -4.465878 AS "sv_8", -0.176994 AS "sv_9"
     UNION ALL
     SELECT 293 AS "sv_idx", 0.014819 AS "sv_0", 0.396270 AS "sv_1", -0.612279 AS "sv_2", -1.258182 AS "sv_3", 0.444234 AS "sv_4", 1.372630 AS "sv_5", -0.112432 AS "sv_6", -0.258522 AS "sv_7", -1.123691 AS "sv_8", -1.843021 AS "sv_9"
     UNION ALL
     SELECT 294 AS "sv_idx", 3.456737 AS "sv_0", -2.798536 AS "sv_1", -0.037979 AS "sv_2", 0.936076 AS "sv_3", -0.830931 AS "sv_4", -0.521484 AS "sv_5", 0.608368 AS "sv_6", 0.312771 AS "sv_7", 0.030913 AS "sv_8", 1.106937 AS "sv_9"
     UNION ALL
     SELECT 295 AS "sv_idx", -0.568526 AS "sv_0", 1.099473 AS "sv_1", 0.421175 AS "sv_2", -1.871542 AS "sv_3", 1.674134 AS "sv_4", 1.557129 AS "sv_5", -1.110721 AS "sv_6", -0.481319 AS "sv_7", -0.719856 AS "sv_8", -0.068387 AS "sv_9"
     UNION ALL
     SELECT 296 AS "sv_idx", 1.620848 AS "sv_0", -1.561627 AS "sv_1", 1.801873 AS "sv_2", -0.264193 AS "sv_3", -1.930692 AS "sv_4", 2.331842 AS "sv_5", 0.674002 AS "sv_6", -1.606837 AS "sv_7", -2.481339 AS "sv_8", 0.375851 AS "sv_9"
     UNION ALL
     SELECT 297 AS "sv_idx", -0.246404 AS "sv_0", 0.006008 AS "sv_1", -1.453710 AS "sv_2", 0.814147 AS "sv_3", 0.789954 AS "sv_4", 1.610682 AS "sv_5", 0.397509 AS "sv_6", 0.674593 AS "sv_7", 0.859669 AS "sv_8", 0.455650 AS "sv_9"
     UNION ALL
     SELECT 298 AS "sv_idx", 0.770342 AS "sv_0", 0.114120 AS "sv_1", 0.581963 AS "sv_2", -2.165277 AS "sv_3", 1.333333 AS "sv_4", 0.562800 AS "sv_5", -2.732917 AS "sv_6", -1.760726 AS "sv_7", -0.540979 AS "sv_8", -0.017192 AS "sv_9"
     UNION ALL
     SELECT 299 AS "sv_idx", 1.559279 AS "sv_0", -0.950454 AS "sv_1", -0.246310 AS "sv_2", -0.575815 AS "sv_3", -0.049953 AS "sv_4", 0.988762 AS "sv_5", -2.284848 AS "sv_6", -1.247972 AS "sv_7", 0.639322 AS "sv_8", 0.003222 AS "sv_9"
     UNION ALL
     SELECT 300 AS "sv_idx", -2.033218 AS "sv_0", 1.092739 AS "sv_1", -0.624142 AS "sv_2", 0.280926 AS "sv_3", 0.949100 AS "sv_4", -0.193741 AS "sv_5", 3.133560 AS "sv_6", 0.483121 AS "sv_7", -2.368593 AS "sv_8", 0.941232 AS "sv_9"
     UNION ALL
     SELECT 301 AS "sv_idx", -1.025035 AS "sv_0", 1.016202 AS "sv_1", 0.161542 AS "sv_2", -0.925656 AS "sv_3", 0.480246 AS "sv_4", -1.027584 AS "sv_5", 0.584447 AS "sv_6", 0.066236 AS "sv_7", -1.181094 AS "sv_8", -0.144545 AS "sv_9"
     UNION ALL
     SELECT 302 AS "sv_idx", 2.359742 AS "sv_0", -2.484733 AS "sv_1", 1.762635 AS "sv_2", 0.505061 AS "sv_3", 0.649553 AS "sv_4", -0.822479 AS "sv_5", 1.283835 AS "sv_6", -1.761732 AS "sv_7", -2.704880 AS "sv_8", 1.872097 AS "sv_9"
     UNION ALL
     SELECT 303 AS "sv_idx", -2.204791 AS "sv_0", 1.664591 AS "sv_1", 1.307435 AS "sv_2", -2.132646 AS "sv_3", -0.978430 AS "sv_4", 0.454171 AS "sv_5", 0.255064 AS "sv_6", -2.506387 AS "sv_7", -3.930482 AS "sv_8", 0.885481 AS "sv_9"
     UNION ALL
     SELECT 304 AS "sv_idx", -0.690715 AS "sv_0", 1.315148 AS "sv_1", -0.429217 AS "sv_2", -2.144156 AS "sv_3", -0.911920 AS "sv_4", -0.558340 AS "sv_5", -1.268858 AS "sv_6", -0.445038 AS "sv_7", -0.731526 AS "sv_8", 1.534169 AS "sv_9"
     UNION ALL
     SELECT 305 AS "sv_idx", -0.424381 AS "sv_0", 0.685257 AS "sv_1", 1.788183 AS "sv_2", 0.425824 AS "sv_3", 1.382237 AS "sv_4", -1.243709 AS "sv_5", 4.179320 AS "sv_6", 3.988093 AS "sv_7", -0.445676 AS "sv_8", 1.186660 AS "sv_9"
     UNION ALL
     SELECT 306 AS "sv_idx", -0.680405 AS "sv_0", 1.426208 AS "sv_1", 0.035418 AS "sv_2", -2.826660 AS "sv_3", 0.485836 AS "sv_4", -1.947352 AS "sv_5", -3.198868 AS "sv_6", -1.839987 AS "sv_7", -0.507475 AS "sv_8", 2.459666 AS "sv_9"
     UNION ALL
     SELECT 307 AS "sv_idx", -1.077300 AS "sv_0", 1.378530 AS "sv_1", 0.166770 AS "sv_2", -1.884631 AS "sv_3", -0.433196 AS "sv_4", 0.771021 AS "sv_5", 0.283146 AS "sv_6", -0.173390 AS "sv_7", -1.845533 AS "sv_8", -0.134608 AS "sv_9"
     UNION ALL
     SELECT 308 AS "sv_idx", 0.058928 AS "sv_0", 1.548501 AS "sv_1", -0.374757 AS "sv_2", -2.474966 AS "sv_3", 0.533567 AS "sv_4", 0.490379 AS "sv_5", -1.616525 AS "sv_6", 1.859120 AS "sv_7", 1.290171 AS "sv_8", 0.687146 AS "sv_9"
     UNION ALL
     SELECT 309 AS "sv_idx", -0.846548 AS "sv_0", 2.120536 AS "sv_1", 0.638942 AS "sv_2", -3.736450 AS "sv_3", -1.213579 AS "sv_4", 0.198026 AS "sv_5", -3.665593 AS "sv_6", -1.130966 AS "sv_7", -0.122421 AS "sv_8", -0.622020 AS "sv_9"
     UNION ALL
     SELECT 310 AS "sv_idx", -1.516230 AS "sv_0", 1.329821 AS "sv_1", -0.775713 AS "sv_2", 0.508179 AS "sv_3", 0.480603 AS "sv_4", 0.946843 AS "sv_5", 4.589952 AS "sv_6", 3.783518 AS "sv_7", -0.865188 AS "sv_8", 2.191014 AS "sv_9"
     UNION ALL
     SELECT 311 AS "sv_idx", -2.309576 AS "sv_0", 2.032344 AS "sv_1", -0.171370 AS "sv_2", -1.503210 AS "sv_3", -0.016654 AS "sv_4", 0.989038 AS "sv_5", 0.218782 AS "sv_6", -0.526277 AS "sv_7", -1.648766 AS "sv_8", -0.500294 AS "sv_9"
     UNION ALL
     SELECT 312 AS "sv_idx", -1.395032 AS "sv_0", 0.715347 AS "sv_1", -1.246410 AS "sv_2", 0.131946 AS "sv_3", -1.093365 AS "sv_4", -0.657179 AS "sv_5", 0.378149 AS "sv_6", -0.704406 AS "sv_7", -0.749663 AS "sv_8", 1.599328 AS "sv_9"
     UNION ALL
     SELECT 313 AS "sv_idx", 2.438772 AS "sv_0", -1.661028 AS "sv_1", -1.497360 AS "sv_2", -0.075190 AS "sv_3", 0.178647 AS "sv_4", -0.997786 AS "sv_5", -1.188524 AS "sv_6", -0.360560 AS "sv_7", 0.591629 AS "sv_8", -0.673836 AS "sv_9"
     UNION ALL
     SELECT 314 AS "sv_idx", 1.845877 AS "sv_0", -1.230132 AS "sv_1", 0.868872 AS "sv_2", -1.364713 AS "sv_3", 1.380191 AS "sv_4", -0.607884 AS "sv_5", -4.832707 AS "sv_6", -3.816458 AS "sv_7", 0.362403 AS "sv_8", -0.619445 AS "sv_9"
     UNION ALL
     SELECT 315 AS "sv_idx", -0.817915 AS "sv_0", 0.349464 AS "sv_1", -0.778337 AS "sv_2", 0.031169 AS "sv_3", 1.098361 AS "sv_4", -0.002341 AS "sv_5", -0.448573 AS "sv_6", -1.054359 AS "sv_7", -0.344547 AS "sv_8", -0.450057 AS "sv_9"
     UNION ALL
     SELECT 316 AS "sv_idx", 0.627850 AS "sv_0", -0.661039 AS "sv_1", 0.736399 AS "sv_2", -0.073318 AS "sv_3", 0.728113 AS "sv_4", -2.099873 AS "sv_5", -1.669177 AS "sv_6", -1.688945 AS "sv_7", 0.123285 AS "sv_8", 0.825280 AS "sv_9"
     UNION ALL
     SELECT 317 AS "sv_idx", 1.481868 AS "sv_0", -1.825928 AS "sv_1", -0.002637 AS "sv_2", 0.460978 AS "sv_3", 0.212693 AS "sv_4", -1.452695 AS "sv_5", -0.002793 AS "sv_6", -2.292352 AS "sv_7", -1.782508 AS "sv_8", 1.314423 AS "sv_9"
     UNION ALL
     SELECT 318 AS "sv_idx", 0.562631 AS "sv_0", -1.326500 AS "sv_1", 0.344877 AS "sv_2", 1.714813 AS "sv_3", 1.789038 AS "sv_4", -1.182933 AS "sv_5", 2.483257 AS "sv_6", 0.015652 AS "sv_7", -1.227450 AS "sv_8", 1.540253 AS "sv_9"
     UNION ALL
     SELECT 319 AS "sv_idx", 0.677836 AS "sv_0", -1.615530 AS "sv_1", 0.033110 AS "sv_2", 2.346079 AS "sv_3", 0.693834 AS "sv_4", 0.326701 AS "sv_5", 3.759634 AS "sv_6", 0.699109 AS "sv_7", -1.452254 AS "sv_8", -2.511596 AS "sv_9"
     UNION ALL
     SELECT 320 AS "sv_idx", -0.583481 AS "sv_0", 0.485629 AS "sv_1", 2.180144 AS "sv_2", -0.370406 AS "sv_3", 1.294042 AS "sv_4", 0.098589 AS "sv_5", -0.066088 AS "sv_6", -0.282086 AS "sv_7", -0.413855 AS "sv_8", 0.631763 AS "sv_9"
     UNION ALL
     SELECT 321 AS "sv_idx", 0.116964 AS "sv_0", 0.764608 AS "sv_1", -0.834473 AS "sv_2", -1.648333 AS "sv_3", 1.616820 AS "sv_4", -0.216079 AS "sv_5", -4.621155 AS "sv_6", -1.207447 AS "sv_7", 2.374713 AS "sv_8", 0.080743 AS "sv_9"
     UNION ALL
     SELECT 322 AS "sv_idx", -0.917320 AS "sv_0", 1.121595 AS "sv_1", -2.388599 AS "sv_2", -0.767021 AS "sv_3", 1.068770 AS "sv_4", 0.336069 AS "sv_5", -3.086536 AS "sv_6", -0.715897 AS "sv_7", 2.039732 AS "sv_8", 0.950698 AS "sv_9"
     UNION ALL
     SELECT 323 AS "sv_idx", 0.125473 AS "sv_0", -0.174283 AS "sv_1", 0.423296 AS "sv_2", -0.360852 AS "sv_3", -1.340787 AS "sv_4", 0.901386 AS "sv_5", -2.116680 AS "sv_6", -1.806991 AS "sv_7", 0.303962 AS "sv_8", 1.501806 AS "sv_9"
     UNION ALL
     SELECT 324 AS "sv_idx", -0.171709 AS "sv_0", 0.830847 AS "sv_1", -0.210164 AS "sv_2", -1.574659 AS "sv_3", -1.421085 AS "sv_4", 0.263585 AS "sv_5", -4.743746 AS "sv_6", -1.693212 AS "sv_7", 2.167612 AS "sv_8", 1.742538 AS "sv_9"
     UNION ALL
     SELECT 325 AS "sv_idx", 1.657866 AS "sv_0", -1.958320 AS "sv_1", -0.427989 AS "sv_2", 1.155026 AS "sv_3", -0.639601 AS "sv_4", 0.214690 AS "sv_5", 0.620213 AS "sv_6", -1.060964 AS "sv_7", -0.811542 AS "sv_8", 0.217098 AS "sv_9"
     UNION ALL
     SELECT 326 AS "sv_idx", 1.398208 AS "sv_0", -0.234892 AS "sv_1", 0.212835 AS "sv_2", -1.746562 AS "sv_3", 0.327893 AS "sv_4", -0.885169 AS "sv_5", -1.906284 AS "sv_6", -0.417711 AS "sv_7", 0.047608 AS "sv_8", -0.204971 AS "sv_9"
     UNION ALL
     SELECT 327 AS "sv_idx", -2.649454 AS "sv_0", 1.970150 AS "sv_1", 0.320342 AS "sv_2", -0.526725 AS "sv_3", -2.157020 AS "sv_4", 1.546642 AS "sv_5", -1.514176 AS "sv_6", -1.124654 AS "sv_7", 0.439108 AS "sv_8", -0.550982 AS "sv_9"
     UNION ALL
     SELECT 328 AS "sv_idx", 0.963951 AS "sv_0", -1.123809 AS "sv_1", -1.892670 AS "sv_2", 0.684698 AS "sv_3", -0.602014 AS "sv_4", 0.946490 AS "sv_5", -0.418862 AS "sv_6", -0.902607 AS "sv_7", 0.093590 AS "sv_8", 0.688711 AS "sv_9"
     UNION ALL
     SELECT 329 AS "sv_idx", -0.866965 AS "sv_0", 0.256501 AS "sv_1", -0.537470 AS "sv_2", 0.156984 AS "sv_3", 1.458992 AS "sv_4", 0.678898 AS "sv_5", -0.217802 AS "sv_6", -1.259607 AS "sv_7", -0.655065 AS "sv_8", -1.252533 AS "sv_9"
     UNION ALL
     SELECT 330 AS "sv_idx", 0.048520 AS "sv_0", -0.321894 AS "sv_1", 1.103516 AS "sv_2", 0.461933 AS "sv_3", 0.416712 AS "sv_4", -0.673028 AS "sv_5", -0.451780 AS "sv_6", -0.659208 AS "sv_7", 0.257851 AS "sv_8", -1.668709 AS "sv_9"
     UNION ALL
     SELECT 331 AS "sv_idx", -0.354404 AS "sv_0", 0.994055 AS "sv_1", -1.885759 AS "sv_2", -1.177462 AS "sv_3", 0.292567 AS "sv_4", 0.362734 AS "sv_5", -1.819099 AS "sv_6", 0.340618 AS "sv_7", 1.263372 AS "sv_8", -0.029287 AS "sv_9"
     UNION ALL
     SELECT 332 AS "sv_idx", 0.122599 AS "sv_0", -0.523998 AS "sv_1", -1.292433 AS "sv_2", -0.079009 AS "sv_3", 0.184237 AS "sv_4", -2.167341 AS "sv_5", -1.072632 AS "sv_6", -2.271520 AS "sv_7", -0.950848 AS "sv_8", -1.925633 AS "sv_9"
     UNION ALL
     SELECT 333 AS "sv_idx", 0.851381 AS "sv_0", 0.407929 AS "sv_1", -1.051274 AS "sv_2", -2.096791 AS "sv_3", -0.755022 AS "sv_4", -0.037872 AS "sv_5", -4.707700 AS "sv_6", -1.238100 AS "sv_7", 1.998185 AS "sv_8", 0.340898 AS "sv_9"
     UNION ALL
     SELECT 334 AS "sv_idx", -0.511555 AS "sv_0", 1.349893 AS "sv_1", -0.478693 AS "sv_2", -1.457144 AS "sv_3", 0.519958 AS "sv_4", -0.335038 AS "sv_5", -2.389800 AS "sv_6", 0.615593 AS "sv_7", 1.883413 AS "sv_8", 0.311229 AS "sv_9"
     UNION ALL
     SELECT 335 AS "sv_idx", 0.134087 AS "sv_0", -0.344334 AS "sv_1", 0.437394 AS "sv_2", -0.873010 AS "sv_3", 0.318334 AS "sv_4", -0.563782 AS "sv_5", -1.988657 AS "sv_6", -3.088318 AS "sv_7", -1.358466 AS "sv_8", -0.800712 AS "sv_9"
     UNION ALL
     SELECT 336 AS "sv_idx", -1.261684 AS "sv_0", 0.979856 AS "sv_1", -1.388126 AS "sv_2", -0.580187 AS "sv_3", 0.833583 AS "sv_4", -0.938560 AS "sv_5", -3.979545 AS "sv_6", -2.344408 AS "sv_7", 1.727908 AS "sv_8", -1.344622 AS "sv_9"
     UNION ALL
     SELECT 337 AS "sv_idx", 1.515851 AS "sv_0", -1.863098 AS "sv_1", -2.034282 AS "sv_2", 1.382391 AS "sv_3", 1.632208 AS "sv_4", 0.896508 AS "sv_5", 1.017107 AS "sv_6", -0.582556 AS "sv_7", -0.605685 AS "sv_8", -0.256977 AS "sv_9"
     UNION ALL
     SELECT 338 AS "sv_idx", -0.847049 AS "sv_0", 0.769808 AS "sv_1", 1.079078 AS "sv_2", -0.593639 AS "sv_3", 0.502120 AS "sv_4", 2.343416 AS "sv_5", -1.872527 AS "sv_6", -1.062429 AS "sv_7", 0.617417 AS "sv_8", 0.523638 AS "sv_9"
     UNION ALL
     SELECT 339 AS "sv_idx", 0.077719 AS "sv_0", -0.237237 AS "sv_1", 0.201077 AS "sv_2", 0.240155 AS "sv_3", 1.417506 AS "sv_4", 1.065277 AS "sv_5", 0.894470 AS "sv_6", 0.055958 AS "sv_7", -0.688817 AS "sv_8", 0.054897 AS "sv_9"
     UNION ALL
     SELECT 340 AS "sv_idx", 2.690542 AS "sv_0", -2.752879 AS "sv_1", 2.443571 AS "sv_2", 0.107339 AS "sv_3", 0.654298 AS "sv_4", 0.387160 AS "sv_5", -0.994223 AS "sv_6", -3.494772 AS "sv_7", -2.221496 AS "sv_8", 0.087042 AS "sv_9"
     UNION ALL
     SELECT 341 AS "sv_idx", -1.337527 AS "sv_0", 2.241263 AS "sv_1", 0.507780 AS "sv_2", -2.190145 AS "sv_3", 0.709615 AS "sv_4", -0.069356 AS "sv_5", -2.640731 AS "sv_6", 0.629506 AS "sv_7", 1.652266 AS "sv_8", -0.656871 AS "sv_9"
     UNION ALL
     SELECT 342 AS "sv_idx", 2.034415 AS "sv_0", -2.792239 AS "sv_1", -1.245384 AS "sv_2", 1.539301 AS "sv_3", 2.990697 AS "sv_4", 1.474728 AS "sv_5", 2.504064 AS "sv_6", -1.808982 AS "sv_7", -3.137699 AS "sv_8", -1.470129 AS "sv_9"
     UNION ALL
     SELECT 343 AS "sv_idx", -1.408848 AS "sv_0", 1.567165 AS "sv_1", 2.292650 AS "sv_2", -1.535133 AS "sv_3", 0.419436 AS "sv_4", -1.121895 AS "sv_5", -5.048262 AS "sv_6", -2.333484 AS "sv_7", 2.086850 AS "sv_8", 0.279029 AS "sv_9"
     UNION ALL
     SELECT 344 AS "sv_idx", 2.453564 AS "sv_0", -2.747622 AS "sv_1", 0.490504 AS "sv_2", 1.605446 AS "sv_3", 0.007540 AS "sv_4", -1.186399 AS "sv_5", 1.230416 AS "sv_6", -0.996533 AS "sv_7", -1.106889 AS "sv_8", 2.068245 AS "sv_9"
     UNION ALL
     SELECT 345 AS "sv_idx", 0.524657 AS "sv_0", -1.162416 AS "sv_1", -1.229369 AS "sv_2", 1.478182 AS "sv_3", -1.659332 AS "sv_4", -0.350237 AS "sv_5", 1.843683 AS "sv_6", -0.088378 AS "sv_7", -0.844862 AS "sv_8", 1.280778 AS "sv_9"
     UNION ALL
     SELECT 346 AS "sv_idx", 2.746169 AS "sv_0", -2.734885 AS "sv_1", -1.256727 AS "sv_2", 0.393122 AS "sv_3", 1.409297 AS "sv_4", -0.521507 AS "sv_5", -0.940327 AS "sv_6", -2.850772 AS "sv_7", -1.491461 AS "sv_8", -0.325701 AS "sv_9"
     UNION ALL
     SELECT 347 AS "sv_idx", -1.049982 AS "sv_0", 1.143642 AS "sv_1", -1.663153 AS "sv_2", -0.523404 AS "sv_3", -1.562414 AS "sv_4", -0.099876 AS "sv_5", -2.306733 AS "sv_6", -0.291242 AS "sv_7", 1.815839 AS "sv_8", -0.207988 AS "sv_9"
     UNION ALL
     SELECT 348 AS "sv_idx", -0.783984 AS "sv_0", 1.475225 AS "sv_1", 0.003973 AS "sv_2", -1.477091 AS "sv_3", 1.112985 AS "sv_4", -0.360010 AS "sv_5", -2.093558 AS "sv_6", 0.462280 AS "sv_7", 1.457088 AS "sv_8", 0.617802 AS "sv_9"
     UNION ALL
     SELECT 349 AS "sv_idx", 0.678282 AS "sv_0", -1.114875 AS "sv_1", -0.727378 AS "sv_2", 1.084346 AS "sv_3", 0.296031 AS "sv_4", 0.489235 AS "sv_5", 0.841172 AS "sv_6", -0.503622 AS "sv_7", -0.506179 AS "sv_8", 1.725314 AS "sv_9"
     UNION ALL
     SELECT 350 AS "sv_idx", 0.258611 AS "sv_0", -0.518760 AS "sv_1", -1.321263 AS "sv_2", 0.319089 AS "sv_3", 1.100284 AS "sv_4", -0.442130 AS "sv_5", -0.578596 AS "sv_6", -1.097139 AS "sv_7", -0.130506 AS "sv_8", -1.374796 AS "sv_9"
     UNION ALL
     SELECT 351 AS "sv_idx", 1.869880 AS "sv_0", -2.312190 AS "sv_1", -1.153852 AS "sv_2", 1.292078 AS "sv_3", -1.061729 AS "sv_4", 2.042926 AS "sv_5", 1.284271 AS "sv_6", -1.335399 AS "sv_7", -1.648043 AS "sv_8", 2.109906 AS "sv_9"
     UNION ALL
     SELECT 352 AS "sv_idx", -0.852308 AS "sv_0", 1.702440 AS "sv_1", 0.286455 AS "sv_2", -2.296059 AS "sv_3", 0.852386 AS "sv_4", -0.468737 AS "sv_5", -5.240663 AS "sv_6", -1.457211 AS "sv_7", 2.377718 AS "sv_8", 1.195055 AS "sv_9"
     UNION ALL
     SELECT 353 AS "sv_idx", -0.054629 AS "sv_0", -0.505824 AS "sv_1", -0.855324 AS "sv_2", 1.438989 AS "sv_3", -1.036250 AS "sv_4", 1.604961 AS "sv_5", 1.453114 AS "sv_6", 0.605458 AS "sv_7", 0.193060 AS "sv_8", 1.087726 AS "sv_9"
     UNION ALL
     SELECT 354 AS "sv_idx", -0.064542 AS "sv_0", 0.081555 AS "sv_1", 0.708553 AS "sv_2", -0.785544 AS "sv_3", -0.333683 AS "sv_4", -1.226340 AS "sv_5", -2.670425 AS "sv_6", -2.197399 AS "sv_7", 0.213122 AS "sv_8", 2.041780 AS "sv_9"
     UNION ALL
     SELECT 355 AS "sv_idx", 0.309135 AS "sv_0", -0.495864 AS "sv_1", 0.210234 AS "sv_2", 0.381070 AS "sv_3", -1.042908 AS "sv_4", 1.222327 AS "sv_5", -0.737087 AS "sv_6", -0.859252 AS "sv_7", 0.284910 AS "sv_8", 0.429757 AS "sv_9"
     UNION ALL
     SELECT 356 AS "sv_idx", -0.875566 AS "sv_0", 0.127713 AS "sv_1", -1.672932 AS "sv_2", 0.508330 AS "sv_3", -1.320599 AS "sv_4", -0.665654 AS "sv_5", 1.698001 AS "sv_6", -0.396848 AS "sv_7", -1.595221 AS "sv_8", 0.288043 AS "sv_9"
     UNION ALL
     SELECT 357 AS "sv_idx", -3.135649 AS "sv_0", 1.709768 AS "sv_1", -0.108658 AS "sv_2", 0.519971 AS "sv_3", 1.858464 AS "sv_4", -1.221336 AS "sv_5", -0.457015 AS "sv_6", -1.487462 AS "sv_7", -0.073516 AS "sv_8", 0.306272 AS "sv_9"
     UNION ALL
     SELECT 358 AS "sv_idx", 2.418322 AS "sv_0", -2.798912 AS "sv_1", 1.317417 AS "sv_2", 1.447493 AS "sv_3", -0.718773 AS "sv_4", -0.161991 AS "sv_5", 1.319804 AS "sv_6", -1.467214 AS "sv_7", -1.732879 AS "sv_8", -1.508750 AS "sv_9"
     UNION ALL
     SELECT 359 AS "sv_idx", 0.482137 AS "sv_0", -0.869780 AS "sv_1", 0.436631 AS "sv_2", 0.574530 AS "sv_3", 2.022251 AS "sv_4", -0.165529 AS "sv_5", 0.072953 AS "sv_6", -1.169806 AS "sv_7", -0.684112 AS "sv_8", -0.509412 AS "sv_9"
     UNION ALL
     SELECT 360 AS "sv_idx", -0.920938 AS "sv_0", 1.735846 AS "sv_1", -0.104017 AS "sv_2", -2.050461 AS "sv_3", 0.061896 AS "sv_4", 0.522222 AS "sv_5", -4.210891 AS "sv_6", -0.696798 AS "sv_7", 2.183528 AS "sv_8", 0.451280 AS "sv_9"
     UNION ALL
     SELECT 361 AS "sv_idx", -1.501774 AS "sv_0", 0.984185 AS "sv_1", -0.026391 AS "sv_2", -0.349670 AS "sv_3", -0.262839 AS "sv_4", 0.437319 AS "sv_5", 0.074404 AS "sv_6", -0.782789 AS "sv_7", -0.880982 AS "sv_8", 1.263565 AS "sv_9"
     UNION ALL
     SELECT 362 AS "sv_idx", -0.851639 AS "sv_0", 1.143328 AS "sv_1", 0.750095 AS "sv_2", -1.043425 AS "sv_3", 0.112975 AS "sv_4", 0.519502 AS "sv_5", -2.594335 AS "sv_6", -0.612969 AS "sv_7", 1.392324 AS "sv_8", 0.276778 AS "sv_9"
     UNION ALL
     SELECT 363 AS "sv_idx", 1.645652 AS "sv_0", -2.081330 AS "sv_1", 1.430708 AS "sv_2", 1.086896 AS "sv_3", -0.573585 AS "sv_4", -1.003636 AS "sv_5", 0.973040 AS "sv_6", -1.495159 AS "sv_7", -1.607605 AS "sv_8", -0.746882 AS "sv_9"
     UNION ALL
     SELECT 364 AS "sv_idx", 0.927128 AS "sv_0", -1.322987 AS "sv_1", 1.125307 AS "sv_2", 0.615366 AS "sv_3", 1.227033 AS "sv_4", 0.679868 AS "sv_5", 0.251928 AS "sv_6", -1.548696 AS "sv_7", -1.213558 AS "sv_8", -1.473361 AS "sv_9"
     UNION ALL
     SELECT 365 AS "sv_idx", -1.899796 AS "sv_0", 2.715397 AS "sv_1", -0.701981 AS "sv_2", -2.483560 AS "sv_3", -2.252331 AS "sv_4", -0.828796 AS "sv_5", -5.578036 AS "sv_6", -0.859571 AS "sv_7", 3.207328 AS "sv_8", 0.040178 AS "sv_9"
     UNION ALL
     SELECT 366 AS "sv_idx", 0.132702 AS "sv_0", -0.828041 AS "sv_1", -3.195565 AS "sv_2", 1.247939 AS "sv_3", -0.526521 AS "sv_4", -0.155073 AS "sv_5", 1.715525 AS "sv_6", -0.259579 AS "sv_7", -1.005569 AS "sv_8", -0.701417 AS "sv_9"
     UNION ALL
     SELECT 367 AS "sv_idx", 0.665760 AS "sv_0", -1.408911 AS "sv_1", -0.177873 AS "sv_2", 0.974903 AS "sv_3", -0.150948 AS "sv_4", -1.099258 AS "sv_5", 3.361383 AS "sv_6", -0.645776 AS "sv_7", -3.316451 AS "sv_8", 1.094357 AS "sv_9"
     UNION ALL
     SELECT 368 AS "sv_idx", -0.416510 AS "sv_0", 0.908877 AS "sv_1", -0.499699 AS "sv_2", -1.132359 AS "sv_3", -0.421780 AS "sv_4", 0.948938 AS "sv_5", -3.632411 AS "sv_6", -0.928889 AS "sv_7", 2.069759 AS "sv_8", -0.850839 AS "sv_9"
     UNION ALL
     SELECT 369 AS "sv_idx", -2.064254 AS "sv_0", 0.982612 AS "sv_1", -0.468726 AS "sv_2", 0.978581 AS "sv_3", -0.624265 AS "sv_4", -0.990992 AS "sv_5", 0.352859 AS "sv_6", -0.332958 AS "sv_7", 0.352919 AS "sv_8", -1.295690 AS "sv_9"
     UNION ALL
     SELECT 370 AS "sv_idx", 1.546206 AS "sv_0", -1.919110 AS "sv_1", -0.740263 AS "sv_2", 1.587584 AS "sv_3", -0.650283 AS "sv_4", -0.380991 AS "sv_5", 1.290116 AS "sv_6", -0.300658 AS "sv_7", -0.479569 AS "sv_8", 0.269175 AS "sv_9"
     UNION ALL
     SELECT 371 AS "sv_idx", 0.025713 AS "sv_0", -0.483927 AS "sv_1", -0.610915 AS "sv_2", 0.726770 AS "sv_3", 0.787438 AS "sv_4", 0.624015 AS "sv_5", 0.450503 AS "sv_6", -0.551597 AS "sv_7", -0.363426 AS "sv_8", -0.197931 AS "sv_9"
     UNION ALL
     SELECT 372 AS "sv_idx", 0.393759 AS "sv_0", -1.486843 AS "sv_1", 1.410740 AS "sv_2", 3.026787 AS "sv_3", -0.439976 AS "sv_4", 0.731564 AS "sv_5", 4.831630 AS "sv_6", 1.864730 AS "sv_7", -0.963558 AS "sv_8", 1.028692 AS "sv_9"
     UNION ALL
     SELECT 373 AS "sv_idx", -0.386935 AS "sv_0", -0.420413 AS "sv_1", 0.956936 AS "sv_2", 0.583983 AS "sv_3", 0.107229 AS "sv_4", 0.282941 AS "sv_5", 1.987489 AS "sv_6", -0.919301 AS "sv_7", -2.340455 AS "sv_8", -1.043233 AS "sv_9"
     UNION ALL
     SELECT 374 AS "sv_idx", -2.428132 AS "sv_0", 2.090098 AS "sv_1", -0.141264 AS "sv_2", -0.679954 AS "sv_3", -1.001107 AS "sv_4", 0.339935 AS "sv_5", -1.793500 AS "sv_6", -0.409077 AS "sv_7", 1.204294 AS "sv_8", 0.826816 AS "sv_9"
     UNION ALL
     SELECT 375 AS "sv_idx", -1.065796 AS "sv_0", 1.111608 AS "sv_1", 1.061922 AS "sv_2", -0.753216 AS "sv_3", -1.207370 AS "sv_4", 0.774383 AS "sv_5", -2.641678 AS "sv_6", -0.932407 AS "sv_7", 1.418989 AS "sv_8", 2.155526 AS "sv_9"
     UNION ALL
     SELECT 376 AS "sv_idx", -0.342167 AS "sv_0", -0.190052 AS "sv_1", -1.663547 AS "sv_2", 0.516611 AS "sv_3", 0.347971 AS "sv_4", 1.374517 AS "sv_5", 0.383946 AS "sv_6", -0.755240 AS "sv_7", -0.602357 AS "sv_8", -0.757296 AS "sv_9"
     UNION ALL
     SELECT 377 AS "sv_idx", 2.575570 AS "sv_0", -3.218397 AS "sv_1", 0.376806 AS "sv_2", 2.608257 AS "sv_3", -0.160321 AS "sv_4", -0.106040 AS "sv_5", 3.402169 AS "sv_6", -0.054275 AS "sv_7", -1.731284 AS "sv_8", 0.932698 AS "sv_9"
     UNION ALL
     SELECT 378 AS "sv_idx", -0.603984 AS "sv_0", 1.077836 AS "sv_1", -0.581492 AS "sv_2", -1.309117 AS "sv_3", 1.364773 AS "sv_4", 0.392369 AS "sv_5", -3.519884 AS "sv_6", -0.989027 AS "sv_7", 1.778927 AS "sv_8", -0.117233 AS "sv_9"
     UNION ALL
     SELECT 379 AS "sv_idx", 1.839764 AS "sv_0", -1.752803 AS "sv_1", 0.589104 AS "sv_2", 0.130268 AS "sv_3", 0.788001 AS "sv_4", 0.044416 AS "sv_5", -1.600704 AS "sv_6", -2.242143 AS "sv_7", -0.394751 AS "sv_8", 0.780144 AS "sv_9"
     UNION ALL
     SELECT 380 AS "sv_idx", -2.793506 AS "sv_0", 3.078639 AS "sv_1", 2.036519 AS "sv_2", -2.320290 AS "sv_3", 0.097845 AS "sv_4", 0.576312 AS "sv_5", -8.443496 AS "sv_6", -3.001012 AS "sv_7", 4.522289 AS "sv_8", -0.090024 AS "sv_9"
     UNION ALL
     SELECT 381 AS "sv_idx", 2.019276 AS "sv_0", -2.598879 AS "sv_1", 0.296001 AS "sv_2", 1.883273 AS "sv_3", -1.293185 AS "sv_4", -1.490953 AS "sv_5", 2.348054 AS "sv_6", -0.704432 AS "sv_7", -1.735215 AS "sv_8", -0.493654 AS "sv_9"
     UNION ALL
     SELECT 382 AS "sv_idx", -1.293406 AS "sv_0", 0.898972 AS "sv_1", -0.056513 AS "sv_2", -0.454718 AS "sv_3", 0.950042 AS "sv_4", 0.296989 AS "sv_5", -0.498415 AS "sv_6", -0.953197 AS "sv_7", -0.545426 AS "sv_8", -0.855696 AS "sv_9"
     UNION ALL
     SELECT 383 AS "sv_idx", 0.265466 AS "sv_0", -0.992520 AS "sv_1", 0.523799 AS "sv_2", 1.329343 AS "sv_3", 1.050769 AS "sv_4", -2.813570 AS "sv_5", 1.926285 AS "sv_6", -0.314698 AS "sv_7", -1.219627 AS "sv_8", -0.989711 AS "sv_9"
     UNION ALL
     SELECT 384 AS "sv_idx", -1.056696 AS "sv_0", 0.966483 AS "sv_1", 0.204093 AS "sv_2", -0.888854 AS "sv_3", 0.176161 AS "sv_4", -0.406466 AS "sv_5", -1.767335 AS "sv_6", -1.246039 AS "sv_7", 0.133508 AS "sv_8", 0.125232 AS "sv_9"
     UNION ALL
     SELECT 385 AS "sv_idx", -0.960899 AS "sv_0", 0.936560 AS "sv_1", 1.249715 AS "sv_2", -0.810532 AS "sv_3", 1.439970 AS "sv_4", -0.733024 AS "sv_5", -1.633010 AS "sv_6", -0.928212 AS "sv_7", 0.324928 AS "sv_8", -0.993398 AS "sv_9"
     UNION ALL
     SELECT 386 AS "sv_idx", -0.700574 AS "sv_0", 2.080045 AS "sv_1", 0.596395 AS "sv_2", -2.617237 AS "sv_3", -0.029872 AS "sv_4", -1.011586 AS "sv_5", -5.758330 AS "sv_6", -0.293190 AS "sv_7", 3.651994 AS "sv_8", -1.105183 AS "sv_9"
     UNION ALL
     SELECT 387 AS "sv_idx", 0.020878 AS "sv_0", -0.351641 AS "sv_1", -0.692692 AS "sv_2", 0.269582 AS "sv_3", 0.883897 AS "sv_4", 0.092123 AS "sv_5", -0.480807 AS "sv_6", -1.129926 AS "sv_7", -0.274521 AS "sv_8", 1.488428 AS "sv_9"
     UNION ALL
     SELECT 388 AS "sv_idx", -2.336607 AS "sv_0", 2.011303 AS "sv_1", 1.509615 AS "sv_2", -0.547113 AS "sv_3", -0.456734 AS "sv_4", 1.737557 AS "sv_5", -0.899187 AS "sv_6", 0.138567 AS "sv_7", 0.856516 AS "sv_8", 0.911344 AS "sv_9"
     UNION ALL
     SELECT 389 AS "sv_idx", 2.157362 AS "sv_0", -1.664817 AS "sv_1", -0.305026 AS "sv_2", -0.787103 AS "sv_3", -1.169307 AS "sv_4", -1.306326 AS "sv_5", -3.775011 AS "sv_6", -3.331089 AS "sv_7", 0.126381 AS "sv_8", 2.038918 AS "sv_9"
     UNION ALL
     SELECT 390 AS "sv_idx", -0.264861 AS "sv_0", 0.477529 AS "sv_1", -0.430199 AS "sv_2", -0.880118 AS "sv_3", -1.191376 AS "sv_4", 2.633529 AS "sv_5", -3.881899 AS "sv_6", -1.924543 AS "sv_7", 1.645846 AS "sv_8", 0.424737 AS "sv_9"
     UNION ALL
     SELECT 391 AS "sv_idx", -0.165953 AS "sv_0", -0.218314 AS "sv_1", -1.094143 AS "sv_2", -0.043397 AS "sv_3", 0.172142 AS "sv_4", -0.386320 AS "sv_5", -1.071158 AS "sv_6", -1.839692 AS "sv_7", -0.516486 AS "sv_8", 2.169299 AS "sv_9"
     UNION ALL
     SELECT 392 AS "sv_idx", 0.260177 AS "sv_0", -0.981335 AS "sv_1", 0.449974 AS "sv_2", 0.980600 AS "sv_3", 2.260404 AS "sv_4", 0.329801 AS "sv_5", 2.518242 AS "sv_6", -0.499781 AS "sv_7", -2.271735 AS "sv_8", 0.741921 AS "sv_9"
     UNION ALL
     SELECT 393 AS "sv_idx", -2.552794 AS "sv_0", 2.687872 AS "sv_1", 0.744705 AS "sv_2", -1.428588 AS "sv_3", 0.468484 AS "sv_4", 0.041460 AS "sv_5", -2.069427 AS "sv_6", 0.357935 AS "sv_7", 1.568405 AS "sv_8", -0.031120 AS "sv_9"
     UNION ALL
     SELECT 394 AS "sv_idx", 0.500287 AS "sv_0", -0.965287 AS "sv_1", -1.279199 AS "sv_2", 1.016811 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", 0.811468 AS "sv_6", -0.525072 AS "sv_7", -0.529665 AS "sv_8", -1.825507 AS "sv_9"
     UNION ALL
     SELECT 395 AS "sv_idx", -1.062755 AS "sv_0", 0.623633 AS "sv_1", 0.657557 AS "sv_2", 0.439026 AS "sv_3", -0.465157 AS "sv_4", 0.400164 AS "sv_5", -0.100124 AS "sv_6", 0.056689 AS "sv_7", 0.619110 AS "sv_8", 0.347311 AS "sv_9"
     UNION ALL
     SELECT 396 AS "sv_idx", 0.476411 AS "sv_0", 0.555172 AS "sv_1", 2.004011 AS "sv_2", -1.439637 AS "sv_3", -0.087655 AS "sv_4", 0.899499 AS "sv_5", -1.289876 AS "sv_6", 0.803645 AS "sv_7", 0.821823 AS "sv_8", 0.485550 AS "sv_9"
     UNION ALL
     SELECT 397 AS "sv_idx", 0.664809 AS "sv_0", -0.860282 AS "sv_1", -1.214640 AS "sv_2", 0.285591 AS "sv_3", -1.958105 AS "sv_4", -1.215565 AS "sv_5", -0.785248 AS "sv_6", -1.437853 AS "sv_7", -0.284597 AS "sv_8", 1.157643 AS "sv_9"
     UNION ALL
     SELECT 398 AS "sv_idx", 1.275199 AS "sv_0", -1.368902 AS "sv_1", 1.536570 AS "sv_2", 0.381964 AS "sv_3", -0.216730 AS "sv_4", 0.245716 AS "sv_5", -0.855430 AS "sv_6", -1.616202 AS "sv_7", -0.355075 AS "sv_8", 0.771413 AS "sv_9"
     UNION ALL
     SELECT 399 AS "sv_idx", 0.128806 AS "sv_0", -0.501144 AS "sv_1", -0.404243 AS "sv_2", 0.566768 AS "sv_3", 0.480164 AS "sv_4", -0.158566 AS "sv_5", -0.029670 AS "sv_6", -0.782755 AS "sv_7", -0.209436 AS "sv_8", -0.861735 AS "sv_9"
     UNION ALL
     SELECT 400 AS "sv_idx", -1.830869 AS "sv_0", 2.006808 AS "sv_1", -1.825340 AS "sv_2", -1.266861 AS "sv_3", 1.602707 AS "sv_4", -0.252513 AS "sv_5", -3.839318 AS "sv_6", -0.869906 AS "sv_7", 2.376801 AS "sv_8", -0.355790 AS "sv_9"
     UNION ALL
     SELECT 401 AS "sv_idx", 1.664495 AS "sv_0", -1.735642 AS "sv_1", 0.167350 AS "sv_2", 0.410648 AS "sv_3", -0.141452 AS "sv_4", 2.168024 AS "sv_5", -0.826617 AS "sv_6", -1.903198 AS "sv_7", -0.653362 AS "sv_8", 1.615264 AS "sv_9"
     UNION ALL
     SELECT 402 AS "sv_idx", -2.756748 AS "sv_0", 1.765232 AS "sv_1", -0.913777 AS "sv_2", -0.092355 AS "sv_3", -0.153823 AS "sv_4", -0.814707 AS "sv_5", -0.897325 AS "sv_6", -1.305388 AS "sv_7", 0.006269 AS "sv_8", -0.445654 AS "sv_9"
     UNION ALL
     SELECT 403 AS "sv_idx", 1.524098 AS "sv_0", -1.442744 AS "sv_1", -0.621512 AS "sv_2", -0.433436 AS "sv_3", -1.910635 AS "sv_4", -0.350793 AS "sv_5", -2.213816 AS "sv_6", -2.988973 AS "sv_7", -0.833653 AS "sv_8", 1.482458 AS "sv_9"
     UNION ALL
     SELECT 404 AS "sv_idx", -0.902895 AS "sv_0", 0.966970 AS "sv_1", -1.149125 AS "sv_2", -0.891424 AS "sv_3", -1.413548 AS "sv_4", 0.311766 AS "sv_5", -2.977356 AS "sv_6", -1.389595 AS "sv_7", 1.238030 AS "sv_8", 0.032754 AS "sv_9"
     UNION ALL
     SELECT 405 AS "sv_idx", -0.445700 AS "sv_0", 1.124369 AS "sv_1", -0.388652 AS "sv_2", -1.399869 AS "sv_3", -1.363536 AS "sv_4", 1.517939 AS "sv_5", -3.787282 AS "sv_6", -0.631913 AS "sv_7", 2.276246 AS "sv_8", -1.096364 AS "sv_9"
     UNION ALL
     SELECT 406 AS "sv_idx", 0.687966 AS "sv_0", -1.027474 AS "sv_1", 0.253590 AS "sv_2", 0.633428 AS "sv_3", -0.218217 AS "sv_4", 0.258181 AS "sv_5", 0.056120 AS "sv_6", -1.137213 AS "sv_7", -0.612820 AS "sv_8", 0.952193 AS "sv_9"
     UNION ALL
     SELECT 407 AS "sv_idx", 0.742101 AS "sv_0", -0.853654 AS "sv_1", 0.338078 AS "sv_2", 0.177135 AS "sv_3", 0.707962 AS "sv_4", 0.475640 AS "sv_5", -1.127228 AS "sv_6", -1.512257 AS "sv_7", -0.092238 AS "sv_8", 1.498615 AS "sv_9"
     UNION ALL
     SELECT 408 AS "sv_idx", -0.381426 AS "sv_0", -0.972017 AS "sv_1", -0.451578 AS "sv_2", 2.250460 AS "sv_3", 0.319469 AS "sv_4", -0.896324 AS "sv_5", 4.705030 AS "sv_6", 0.577857 AS "sv_7", -2.497429 AS "sv_8", 0.799205 AS "sv_9"
     UNION ALL
     SELECT 409 AS "sv_idx", -0.474859 AS "sv_0", 0.897753 AS "sv_1", -0.242116 AS "sv_2", -1.044256 AS "sv_3", -1.406136 AS "sv_4", 1.876952 AS "sv_5", -3.545543 AS "sv_6", -0.966607 AS "sv_7", 2.024386 AS "sv_8", -1.426875 AS "sv_9"
     UNION ALL
     SELECT 410 AS "sv_idx", 1.634527 AS "sv_0", -2.278719 AS "sv_1", -1.959134 AS "sv_2", 1.635015 AS "sv_3", -1.072475 AS "sv_4", 1.464075 AS "sv_5", 2.204232 AS "sv_6", -0.942671 AS "sv_7", -1.953483 AS "sv_8", -1.566525 AS "sv_9"
     UNION ALL
     SELECT 411 AS "sv_idx", 0.483180 AS "sv_0", -0.798519 AS "sv_1", 0.140970 AS "sv_2", 0.502161 AS "sv_3", -1.239860 AS "sv_4", 0.760980 AS "sv_5", -0.195929 AS "sv_6", -1.120753 AS "sv_7", -0.422350 AS "sv_8", -1.563481 AS "sv_9"
     UNION ALL
     SELECT 412 AS "sv_idx", -1.468354 AS "sv_0", 1.068258 AS "sv_1", 0.133676 AS "sv_2", -0.446964 AS "sv_3", -1.480801 AS "sv_4", 0.551133 AS "sv_5", -1.600289 AS "sv_6", -1.282107 AS "sv_7", 0.329206 AS "sv_8", -0.608756 AS "sv_9"
     UNION ALL
     SELECT 413 AS "sv_idx", 1.920275 AS "sv_0", -2.110023 AS "sv_1", 0.820741 AS "sv_2", 0.555575 AS "sv_3", 1.123207 AS "sv_4", 0.674955 AS "sv_5", -0.280745 AS "sv_6", -2.180578 AS "sv_7", -1.368840 AS "sv_8", -2.114189 AS "sv_9"
     UNION ALL
     SELECT 414 AS "sv_idx", -2.544228 AS "sv_0", 1.392179 AS "sv_1", -0.672328 AS "sv_2", 0.648784 AS "sv_3", 0.929451 AS "sv_4", 0.611075 AS "sv_5", 0.098322 AS "sv_6", -0.654219 AS "sv_7", 0.120963 AS "sv_8", -1.127765 AS "sv_9"
     UNION ALL
     SELECT 415 AS "sv_idx", -2.491780 AS "sv_0", 1.677861 AS "sv_1", 0.934968 AS "sv_2", -0.190773 AS "sv_3", 1.728370 AS "sv_4", 1.078664 AS "sv_5", -1.149306 AS "sv_6", -1.172499 AS "sv_7", 0.274657 AS "sv_8", 0.434440 AS "sv_9"
   ) AS "Values"
 ),
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
           EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.051649 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.143029 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 0.013580 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 0.315489 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 0.079768 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 0.018982 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 0.386294 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 0.107991 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 0.323390 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", 0.019903 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", 0.205524 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 73 AS "sv_idx", 0.209659 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 74 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", 0.385988 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 76 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 77 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", 0.448428 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", 0.178162 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", 0.331961 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", 0.421101 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", 0.131860 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", 0.296440 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 91 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", 0.118737 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 94 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 95 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 96 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 97 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 99 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 100 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 101 AS "sv_idx", 0.127840 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 102 AS "sv_idx", 0.325555 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 103 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 104 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 105 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 107 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 108 AS "sv_idx", 0.356135 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 109 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 111 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 112 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 113 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 114 AS "sv_idx", 0.143029 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 117 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 118 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 119 AS "sv_idx", 0.013580 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 120 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 121 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 125 AS "sv_idx", 0.315489 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 126 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 128 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 129 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 131 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 132 AS "sv_idx", 0.079768 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 133 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 135 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 136 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 137 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 139 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 140 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 142 AS "sv_idx", 0.018982 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 144 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 145 AS "sv_idx", 0.386294 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 146 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 147 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 149 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 150 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 151 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 152 AS "sv_idx", 0.107991 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 154 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 155 AS "sv_idx", 0.323390 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 156 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 157 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 159 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 160 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 163 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 165 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 166 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 168 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 170 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 172 AS "sv_idx", 0.019903 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 173 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 175 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 179 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 181 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 185 AS "sv_idx", 0.205524 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 186 AS "sv_idx", 0.209659 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 187 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 188 AS "sv_idx", 0.385988 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 189 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 190 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 191 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 192 AS "sv_idx", 0.448428 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 193 AS "sv_idx", 0.178162 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 195 AS "sv_idx", 0.331961 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 196 AS "sv_idx", 0.421101 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 198 AS "sv_idx", 0.131860 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 200 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 201 AS "sv_idx", 0.296440 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 203 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 204 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 205 AS "sv_idx", 0.118737 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 206 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 207 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 0.233745 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 1.190737 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 6 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 7 AS "sv_idx", 1.140937 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 0.552702 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 0.472274 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 12 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 13 AS "sv_idx", 0.528675 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 14 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 17 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 18 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 19 AS "sv_idx", 1.698570 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 20 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 21 AS "sv_idx", 0.530924 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 22 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 23 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 25 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 28 AS "sv_idx", 1.534384 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 30 AS "sv_idx", 0.128614 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 32 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 33 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 34 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 36 AS "sv_idx", 0.946672 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 38 AS "sv_idx", 1.461506 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 39 AS "sv_idx", 1.192003 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 41 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 42 AS "sv_idx", 1.542820 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 43 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 44 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 45 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 47 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 49 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 50 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 52 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 53 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 55 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 58 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 60 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 61 AS "sv_idx", 1.469568 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 62 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 63 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 64 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 67 AS "sv_idx", 1.334763 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 68 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 69 AS "sv_idx", 0.262018 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 71 AS "sv_idx", 0.948513 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 72 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 73 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 74 AS "sv_idx", 1.949536 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 75 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 76 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 77 AS "sv_idx", 0.795377 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 79 AS "sv_idx", 0.686562 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 83 AS "sv_idx", 0.644141 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 84 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 85 AS "sv_idx", 1.540930 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 86 AS "sv_idx", 1.679532 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 88 AS "sv_idx", 1.452324 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 91 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 93 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 95 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 96 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 97 AS "sv_idx", 1.830166 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 99 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 102 AS "sv_idx", 0.470721 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 103 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 105 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 106 AS "sv_idx", 0.601884 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 107 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 108 AS "sv_idx", 0.650265 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 109 AS "sv_idx", 0.416207 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 111 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 208 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 209 AS "sv_idx", 0.143029 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 212 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 213 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 214 AS "sv_idx", 0.013580 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 215 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 216 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 220 AS "sv_idx", 0.315489 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 221 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 223 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 224 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 226 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 227 AS "sv_idx", 0.079768 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 228 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 230 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 231 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 232 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 234 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 235 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 237 AS "sv_idx", 0.018982 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 239 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 240 AS "sv_idx", 0.386294 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 241 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 242 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 244 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 245 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 246 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 247 AS "sv_idx", 0.107991 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 249 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 250 AS "sv_idx", 0.323390 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 251 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 252 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 254 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 255 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 258 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 260 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 261 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 263 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 265 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 267 AS "sv_idx", 0.019903 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 268 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 270 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 274 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 276 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 280 AS "sv_idx", 0.205524 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 281 AS "sv_idx", 0.209659 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 282 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 283 AS "sv_idx", 0.385988 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 284 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 285 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 286 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 287 AS "sv_idx", 0.448428 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 288 AS "sv_idx", 0.178162 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 290 AS "sv_idx", 0.331961 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 291 AS "sv_idx", 0.421101 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 293 AS "sv_idx", 0.131860 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 295 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 296 AS "sv_idx", 0.296440 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 298 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 299 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 300 AS "sv_idx", 0.118737 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 301 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 302 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 303 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 304 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 305 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 307 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 308 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 309 AS "sv_idx", 0.127840 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 310 AS "sv_idx", 0.325555 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 311 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 312 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 313 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 0 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 1 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 3 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 4 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 5 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 7 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 8 AS "sv_idx", 0.312140 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 11 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 0.559232 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 16 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 19 AS "sv_idx", 0.202269 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 20 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 23 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 24 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 27 AS "sv_idx", 0.126291 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 28 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 29 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 30 AS "sv_idx", 0.422316 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 32 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 33 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 35 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 36 AS "sv_idx", 1.057340 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 37 AS "sv_idx", 0.732727 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 38 AS "sv_idx", 0.698889 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 39 AS "sv_idx", 0.565296 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 40 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 41 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 42 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 43 AS "sv_idx", 0.895571 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 46 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 48 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 50 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 51 AS "sv_idx", 1.117536 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 52 AS "sv_idx", 0.244800 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 54 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 56 AS "sv_idx", 0.472396 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 60 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 61 AS "sv_idx", 0.905316 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 62 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 63 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 65 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 66 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 67 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 68 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 70 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 71 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 72 AS "sv_idx", 0.305406 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 73 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 77 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 78 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 79 AS "sv_idx", 0.089666 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 80 AS "sv_idx", 0.572186 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 81 AS "sv_idx", 0.770141 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 83 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 85 AS "sv_idx", 0.490377 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 88 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 89 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 90 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 91 AS "sv_idx", 0.921784 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 93 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 94 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 95 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 97 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 98 AS "sv_idx", 0.962592 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 99 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 100 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 103 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 105 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 108 AS "sv_idx", 1.158406 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 109 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 110 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 111 AS "sv_idx", 0.901855 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 112 AS "sv_idx", 1.053807 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 314 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 315 AS "sv_idx", 0.143029 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 318 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 319 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 320 AS "sv_idx", 0.013580 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 321 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 322 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 326 AS "sv_idx", 0.315489 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 327 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 329 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 330 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 332 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 333 AS "sv_idx", 0.079768 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 334 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 336 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 337 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 338 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 340 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 341 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 343 AS "sv_idx", 0.018982 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 345 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 346 AS "sv_idx", 0.386294 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 347 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 348 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 350 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 351 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 352 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 353 AS "sv_idx", 0.107991 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 355 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 356 AS "sv_idx", 0.323390 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 357 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 358 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 360 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 361 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 364 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 366 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 367 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 369 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 371 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 373 AS "sv_idx", 0.019903 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 374 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 376 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 380 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 382 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 386 AS "sv_idx", 0.205524 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 387 AS "sv_idx", 0.209659 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 388 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 389 AS "sv_idx", 0.385988 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 390 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 391 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 392 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 393 AS "sv_idx", 0.448428 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 394 AS "sv_idx", 0.178162 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 396 AS "sv_idx", 0.331961 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 397 AS "sv_idx", 0.421101 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 399 AS "sv_idx", 0.131860 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 401 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 402 AS "sv_idx", 0.296440 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 404 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 405 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 406 AS "sv_idx", 0.118737 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 407 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 408 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 409 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 410 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 411 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 413 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 414 AS "sv_idx", 0.460076 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 415 AS "sv_idx", 0.127840 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 113 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 114 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 115 AS "sv_idx", 0.233745 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 116 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 118 AS "sv_idx", 1.190737 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 119 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 120 AS "sv_idx", 1.140937 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 121 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 122 AS "sv_idx", 0.552702 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 123 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 124 AS "sv_idx", 0.472274 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 125 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 126 AS "sv_idx", 0.528675 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 127 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 130 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 131 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 132 AS "sv_idx", 1.698570 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 133 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 134 AS "sv_idx", 0.530924 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 135 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 136 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 138 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 141 AS "sv_idx", 1.534384 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 143 AS "sv_idx", 0.128614 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 145 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 146 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 147 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 149 AS "sv_idx", 0.946672 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 151 AS "sv_idx", 1.461506 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 152 AS "sv_idx", 1.192003 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 154 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 155 AS "sv_idx", 1.542820 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 156 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 157 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 158 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 160 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 162 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 163 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 165 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 166 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 168 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 171 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 173 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 174 AS "sv_idx", 1.469568 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 175 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 176 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 177 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 180 AS "sv_idx", 1.334763 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 181 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 182 AS "sv_idx", 0.262018 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 184 AS "sv_idx", 0.948513 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 185 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 186 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 187 AS "sv_idx", 1.949536 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 188 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 189 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 190 AS "sv_idx", 0.795377 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 192 AS "sv_idx", 0.686562 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 196 AS "sv_idx", 0.644141 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 197 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 198 AS "sv_idx", 1.540930 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 199 AS "sv_idx", 1.679532 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 201 AS "sv_idx", 1.452324 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 204 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 206 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 208 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 209 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 210 AS "sv_idx", 0.233745 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 211 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 213 AS "sv_idx", 1.190737 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 214 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 215 AS "sv_idx", 1.140937 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 216 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 217 AS "sv_idx", 0.552702 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 218 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 219 AS "sv_idx", 0.472274 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 220 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 221 AS "sv_idx", 0.528675 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 222 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 225 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 226 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 227 AS "sv_idx", 1.698570 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 228 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 229 AS "sv_idx", 0.530924 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 230 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 231 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 233 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 236 AS "sv_idx", 1.534384 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 238 AS "sv_idx", 0.128614 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 240 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 241 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 242 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 244 AS "sv_idx", 0.946672 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 246 AS "sv_idx", 1.461506 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 247 AS "sv_idx", 1.192003 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 249 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 250 AS "sv_idx", 1.542820 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 251 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 252 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 253 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 255 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 257 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 258 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 260 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 261 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 263 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 266 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 268 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 269 AS "sv_idx", 1.469568 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 270 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 271 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 272 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 275 AS "sv_idx", 1.334763 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 276 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 277 AS "sv_idx", 0.262018 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 279 AS "sv_idx", 0.948513 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 280 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 281 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 282 AS "sv_idx", 1.949536 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 283 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 284 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 285 AS "sv_idx", 0.795377 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 287 AS "sv_idx", 0.686562 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 291 AS "sv_idx", 0.644141 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 292 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 293 AS "sv_idx", 1.540930 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 294 AS "sv_idx", 1.679532 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 296 AS "sv_idx", 1.452324 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 299 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 301 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 303 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 304 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 305 AS "sv_idx", 1.830166 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 307 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 310 AS "sv_idx", 0.470721 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 311 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 313 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 113 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 114 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 116 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 117 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 118 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 120 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 121 AS "sv_idx", 0.312140 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 124 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 125 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 126 AS "sv_idx", 0.559232 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 127 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 128 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 129 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 132 AS "sv_idx", 0.202269 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 133 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 136 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 137 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 140 AS "sv_idx", 0.126291 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 141 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 142 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 143 AS "sv_idx", 0.422316 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 145 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 146 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 148 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 149 AS "sv_idx", 1.057340 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 150 AS "sv_idx", 0.732727 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 151 AS "sv_idx", 0.698889 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 152 AS "sv_idx", 0.565296 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 153 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 154 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 155 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 156 AS "sv_idx", 0.895571 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 159 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 161 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 163 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 164 AS "sv_idx", 1.117536 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 165 AS "sv_idx", 0.244800 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 167 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 169 AS "sv_idx", 0.472396 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 173 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 174 AS "sv_idx", 0.905316 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 175 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 176 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 178 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 179 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 180 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 181 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 183 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 184 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 185 AS "sv_idx", 0.305406 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 186 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 190 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 191 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 192 AS "sv_idx", 0.089666 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 193 AS "sv_idx", 0.572186 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 194 AS "sv_idx", 0.770141 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 196 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 198 AS "sv_idx", 0.490377 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 201 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 202 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 203 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 204 AS "sv_idx", 0.921784 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 206 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 207 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 314 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 315 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 316 AS "sv_idx", 0.233745 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 317 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 319 AS "sv_idx", 1.190737 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 320 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 321 AS "sv_idx", 1.140937 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 322 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 323 AS "sv_idx", 0.552702 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 324 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 325 AS "sv_idx", 0.472274 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 326 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 327 AS "sv_idx", 0.528675 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 328 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 331 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 332 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 333 AS "sv_idx", 1.698570 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 334 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 335 AS "sv_idx", 0.530924 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 336 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 337 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 339 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 342 AS "sv_idx", 1.534384 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 344 AS "sv_idx", 0.128614 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 346 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 347 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 348 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 350 AS "sv_idx", 0.946672 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 352 AS "sv_idx", 1.461506 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 353 AS "sv_idx", 1.192003 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 355 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 356 AS "sv_idx", 1.542820 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 357 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 358 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 359 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 361 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 363 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 364 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 366 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 367 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 369 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 372 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 374 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 375 AS "sv_idx", 1.469568 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 376 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 377 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 378 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 381 AS "sv_idx", 1.334763 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 382 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 383 AS "sv_idx", 0.262018 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 385 AS "sv_idx", 0.948513 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 386 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 387 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 388 AS "sv_idx", 1.949536 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 389 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 390 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 391 AS "sv_idx", 0.795377 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 393 AS "sv_idx", 0.686562 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 397 AS "sv_idx", 0.644141 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 398 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 399 AS "sv_idx", 1.540930 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 400 AS "sv_idx", 1.679532 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 402 AS "sv_idx", 1.452324 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 405 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 407 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 409 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 410 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 411 AS "sv_idx", 1.830166 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 413 AS "sv_idx", 1.959808 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 208 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 209 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 211 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 212 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 213 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 215 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 216 AS "sv_idx", 0.312140 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 219 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 220 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 221 AS "sv_idx", 0.559232 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 222 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 223 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 224 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 227 AS "sv_idx", 0.202269 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 228 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 231 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 232 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 235 AS "sv_idx", 0.126291 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 236 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 237 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 238 AS "sv_idx", 0.422316 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 240 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 241 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 243 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 244 AS "sv_idx", 1.057340 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 245 AS "sv_idx", 0.732727 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 246 AS "sv_idx", 0.698889 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 247 AS "sv_idx", 0.565296 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 248 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 249 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 250 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 251 AS "sv_idx", 0.895571 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 254 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 256 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 258 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 259 AS "sv_idx", 1.117536 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 260 AS "sv_idx", 0.244800 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 262 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 264 AS "sv_idx", 0.472396 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 268 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 269 AS "sv_idx", 0.905316 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 270 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 271 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 273 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 274 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 275 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 276 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 278 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 279 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 280 AS "sv_idx", 0.305406 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 281 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 285 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 286 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 287 AS "sv_idx", 0.089666 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 288 AS "sv_idx", 0.572186 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 289 AS "sv_idx", 0.770141 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 291 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 293 AS "sv_idx", 0.490377 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 296 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 297 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 298 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 299 AS "sv_idx", 0.921784 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 301 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 302 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 303 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 305 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 306 AS "sv_idx", 0.962592 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 307 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 308 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 311 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 313 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 314 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 315 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 317 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 318 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 319 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 321 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 322 AS "sv_idx", 0.312140 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 325 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 326 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 327 AS "sv_idx", 0.559232 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 328 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 329 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 330 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 333 AS "sv_idx", 0.202269 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 334 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 337 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 338 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 341 AS "sv_idx", 0.126291 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 342 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 343 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 344 AS "sv_idx", 0.422316 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 346 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 347 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 349 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 350 AS "sv_idx", 1.057340 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 351 AS "sv_idx", 0.732727 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 352 AS "sv_idx", 0.698889 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 353 AS "sv_idx", 0.565296 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 354 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 355 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 356 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 357 AS "sv_idx", 0.895571 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 360 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 362 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 364 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 365 AS "sv_idx", 1.117536 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 366 AS "sv_idx", 0.244800 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 368 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 370 AS "sv_idx", 0.472396 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 374 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 375 AS "sv_idx", 0.905316 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 376 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 377 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 379 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 380 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 381 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 382 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 384 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 385 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 386 AS "sv_idx", 0.305406 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 387 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 391 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 392 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 393 AS "sv_idx", 0.089666 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 394 AS "sv_idx", 0.572186 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 395 AS "sv_idx", 0.770141 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 397 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 399 AS "sv_idx", 0.490377 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 402 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 403 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 404 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 405 AS "sv_idx", 0.921784 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 407 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 408 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 409 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 411 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 412 AS "sv_idx", 0.962592 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 413 AS "sv_idx", 1.294862 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 414 AS "sv_idx", 1.294862 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.387419 AS "rho", -2.498702 AS "probA", 0.285571 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", 0.487717 AS "rho", -1.749393 AS "probA", -0.056745 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", -0.401367 AS "rho", -3.355976 AS "probA", -0.038154 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", 0.236928 AS "rho", -2.315140 AS "probA", 0.104788 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", 0.158948 AS "rho", -2.672644 AS "probA", -0.353208 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", -0.117502 AS "rho", -2.939791 AS "probA", -0.307017 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1."c_1" == 2 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 2 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   SUM( CASE WHEN (t1."c_1" == 3 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 3 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
( SELECT t."index" AS "index", 
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
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte