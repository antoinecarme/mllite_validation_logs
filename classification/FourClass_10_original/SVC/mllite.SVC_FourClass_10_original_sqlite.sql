WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
     SELECT 10 AS "sv_idx", 1.000684 AS "sv_0", -1.541287 AS "sv_1", 0.078434 AS "sv_2", 2.061074 AS "sv_3", -0.537548 AS "sv_4", -1.195390 AS "sv_5", 1.874511 AS "sv_6", 0.589305 AS "sv_7", 0.132752 AS "sv_8", 0.566217 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.509657 AS "sv_0", -1.875296 AS "sv_1", -0.151036 AS "sv_2", 1.967434 AS "sv_3", 1.272283 AS "sv_4", -0.329984 AS "sv_5", 2.454954 AS "sv_6", 0.836687 AS "sv_7", -0.379774 AS "sv_8", 1.317994 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -0.149435 AS "sv_0", -0.389932 AS "sv_1", -0.132510 AS "sv_2", -0.120441 AS "sv_3", 0.447799 AS "sv_4", -0.115466 AS "sv_5", 1.546955 AS "sv_6", -1.345563 AS "sv_7", -2.849955 AS "sv_8", 1.492775 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.784578 AS "sv_0", -0.748334 AS "sv_1", 0.858337 AS "sv_2", 0.293301 AS "sv_3", 1.831441 AS "sv_4", 0.382369 AS "sv_5", -2.149922 AS "sv_6", -1.306068 AS "sv_7", 1.231421 AS "sv_8", 0.508121 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.669476 AS "sv_0", 2.593713 AS "sv_1", -0.501776 AS "sv_2", -2.808712 AS "sv_3", 0.019068 AS "sv_4", -0.230630 AS "sv_5", -3.999052 AS "sv_6", -0.421354 AS "sv_7", 1.674519 AS "sv_8", 0.440651 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.190027 AS "sv_0", 1.838650 AS "sv_1", 1.771623 AS "sv_2", -1.899832 AS "sv_3", -0.037869 AS "sv_4", 0.297355 AS "sv_5", 0.980900 AS "sv_6", 1.576320 AS "sv_7", -1.039865 AS "sv_8", 1.194803 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -0.781971 AS "sv_0", 1.193643 AS "sv_1", -0.354977 AS "sv_2", -1.545820 AS "sv_3", 1.529209 AS "sv_4", -0.215386 AS "sv_5", -1.253763 AS "sv_6", -0.313447 AS "sv_7", -0.141068 AS "sv_8", -0.947154 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.800706 AS "sv_0", 1.792405 AS "sv_1", -0.590324 AS "sv_2", -1.850654 AS "sv_3", -0.033489 AS "sv_4", 1.165662 AS "sv_5", -0.003916 AS "sv_6", -0.646643 AS "sv_7", -1.857783 AS "sv_8", 0.260716 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.325212 AS "sv_0", 1.548374 AS "sv_1", 1.065818 AS "sv_2", -1.817713 AS "sv_3", 0.534058 AS "sv_4", 0.780480 AS "sv_5", -1.828732 AS "sv_6", -1.083100 AS "sv_7", -0.380137 AS "sv_8", 2.224059 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -0.963124 AS "sv_0", 1.851585 AS "sv_1", -0.001923 AS "sv_2", -2.431564 AS "sv_3", 1.797863 AS "sv_4", -0.142712 AS "sv_5", -2.392780 AS "sv_6", -0.061411 AS "sv_7", 0.559935 AS "sv_8", 0.156220 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -0.309760 AS "sv_0", -0.793324 AS "sv_1", 0.806805 AS "sv_2", 2.365683 AS "sv_3", -0.451182 AS "sv_4", 0.418344 AS "sv_5", -2.231025 AS "sv_6", -1.593999 AS "sv_7", 2.848423 AS "sv_8", 0.617356 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -2.406940 AS "sv_0", 2.330806 AS "sv_1", 0.393758 AS "sv_2", -1.822977 AS "sv_3", -1.000181 AS "sv_4", -2.771903 AS "sv_5", -1.945625 AS "sv_6", -1.100931 AS "sv_7", -0.164282 AS "sv_8", -0.497479 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -0.823848 AS "sv_0", 0.275881 AS "sv_1", 2.087631 AS "sv_2", -0.954259 AS "sv_3", 1.263514 AS "sv_4", -2.533357 AS "sv_5", -1.114520 AS "sv_6", -3.035915 AS "sv_7", -2.177934 AS "sv_8", -1.005192 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.353625 AS "sv_0", -1.517632 AS "sv_1", -0.108237 AS "sv_2", 1.267992 AS "sv_3", 0.122275 AS "sv_4", 0.251875 AS "sv_5", 0.884937 AS "sv_6", 0.072877 AS "sv_7", 0.027323 AS "sv_8", -1.219738 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.974563 AS "sv_0", 2.844033 AS "sv_1", -1.496666 AS "sv_2", -3.075019 AS "sv_3", -1.185618 AS "sv_4", -0.588577 AS "sv_5", -2.872384 AS "sv_6", -0.146819 AS "sv_7", 0.569863 AS "sv_8", 0.732148 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 2.549098 AS "sv_0", -1.885715 AS "sv_1", 0.659902 AS "sv_2", -0.047648 AS "sv_3", -0.658523 AS "sv_4", 1.261754 AS "sv_5", 0.907771 AS "sv_6", 0.090854 AS "sv_7", -1.166638 AS "sv_8", -0.083655 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.344017 AS "sv_0", -0.849509 AS "sv_1", -0.347619 AS "sv_2", -0.556069 AS "sv_3", 0.441373 AS "sv_4", -0.433625 AS "sv_5", -2.472636 AS "sv_6", -1.507389 AS "sv_7", 0.645617 AS "sv_8", -0.513053 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.900353 AS "sv_0", 2.469144 AS "sv_1", -1.512975 AS "sv_2", -2.450887 AS "sv_3", 0.663803 AS "sv_4", -0.453389 AS "sv_5", -0.535142 AS "sv_6", 0.578675 AS "sv_7", -0.713938 AS "sv_8", -0.721890 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.166004 AS "sv_0", 2.539546 AS "sv_1", -0.424125 AS "sv_2", -2.912890 AS "sv_3", -0.211354 AS "sv_4", -1.046335 AS "sv_5", -3.205030 AS "sv_6", 0.962240 AS "sv_7", 1.924498 AS "sv_8", 1.788936 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 0.125617 AS "sv_0", -1.177229 AS "sv_1", -1.897877 AS "sv_2", 2.640943 AS "sv_3", 1.148056 AS "sv_4", 0.468882 AS "sv_5", -0.111820 AS "sv_6", -0.509591 AS "sv_7", 1.783261 AS "sv_8", 0.840524 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 0.420468 AS "sv_0", -0.490282 AS "sv_1", 3.513309 AS "sv_2", 0.536418 AS "sv_3", -0.643647 AS "sv_4", 0.992586 AS "sv_5", -0.749086 AS "sv_6", -0.323900 AS "sv_7", 0.877273 AS "sv_8", -0.201919 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.617020 AS "sv_0", 3.161658 AS "sv_1", -2.374163 AS "sv_2", -4.040318 AS "sv_3", -1.178075 AS "sv_4", -0.633095 AS "sv_5", -4.688046 AS "sv_6", -0.152588 AS "sv_7", 1.622694 AS "sv_8", 0.250495 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.634741 AS "sv_0", -1.693551 AS "sv_1", 1.735820 AS "sv_2", 1.016278 AS "sv_3", 1.420699 AS "sv_4", 1.090824 AS "sv_5", -0.316000 AS "sv_6", -0.741197 AS "sv_7", 0.323754 AS "sv_8", 0.672684 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -0.672859 AS "sv_0", 0.691194 AS "sv_1", -0.073622 AS "sv_2", -0.859686 AS "sv_3", -0.863473 AS "sv_4", -0.433400 AS "sv_5", -0.281290 AS "sv_6", -0.524287 AS "sv_7", -0.787359 AS "sv_8", 0.615175 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -0.109651 AS "sv_0", -0.104680 AS "sv_1", 1.707372 AS "sv_2", -0.037001 AS "sv_3", 0.944220 AS "sv_4", 1.861863 AS "sv_5", -0.813536 AS "sv_6", -1.125246 AS "sv_7", -0.160109 AS "sv_8", -0.295064 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 1.313001 AS "sv_0", -0.299556 AS "sv_1", -0.374758 AS "sv_2", -1.859579 AS "sv_3", -1.143750 AS "sv_4", -1.237060 AS "sv_5", -4.026582 AS "sv_6", -2.034715 AS "sv_7", 0.742844 AS "sv_8", -1.420144 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -0.649409 AS "sv_0", 1.030112 AS "sv_1", 0.590313 AS "sv_2", -1.432318 AS "sv_3", 0.032630 AS "sv_4", -0.008973 AS "sv_5", -0.488904 AS "sv_6", -0.064296 AS "sv_7", -0.635514 AS "sv_8", 0.255228 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -0.521891 AS "sv_0", 0.251977 AS "sv_1", -1.828214 AS "sv_2", -0.952850 AS "sv_3", 1.377844 AS "sv_4", 1.087301 AS "sv_5", 0.883165 AS "sv_6", -1.380205 AS "sv_7", -2.825831 AS "sv_8", -1.050581 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 0.496650 AS "sv_0", -0.588429 AS "sv_1", 1.382311 AS "sv_2", 0.556119 AS "sv_3", -0.385467 AS "sv_4", 0.641539 AS "sv_5", -1.286317 AS "sv_6", -0.712127 AS "sv_7", 1.100664 AS "sv_8", 0.765908 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 1.166004 AS "sv_0", -0.616427 AS "sv_1", 0.989485 AS "sv_2", -0.438297 AS "sv_3", 0.630905 AS "sv_4", 0.024575 AS "sv_5", -0.009049 AS "sv_6", 0.201910 AS "sv_7", -0.291414 AS "sv_8", 0.038295 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.725204 AS "sv_0", -2.392022 AS "sv_1", -0.024752 AS "sv_2", 2.720746 AS "sv_3", -0.835031 AS "sv_4", -0.452338 AS "sv_5", 2.486438 AS "sv_6", 0.519174 AS "sv_7", -0.105711 AS "sv_8", -0.832824 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -1.645314 AS "sv_0", 1.122097 AS "sv_1", -0.811491 AS "sv_2", -0.943538 AS "sv_3", 0.206133 AS "sv_4", 1.573509 AS "sv_5", 0.774669 AS "sv_6", -1.152739 AS "sv_7", -2.388588 AS "sv_8", -0.337716 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 0.079378 AS "sv_0", 1.511148 AS "sv_1", -1.473656 AS "sv_2", -2.644187 AS "sv_3", 1.729585 AS "sv_4", -0.414845 AS "sv_5", -3.530380 AS "sv_6", 0.650396 AS "sv_7", 2.071981 AS "sv_8", -0.980863 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", -1.811555 AS "sv_0", 1.873147 AS "sv_1", 0.405580 AS "sv_2", -2.067577 AS "sv_3", 1.733801 AS "sv_4", -0.290390 AS "sv_5", -2.742941 AS "sv_6", -1.938526 AS "sv_7", -0.332394 AS "sv_8", -1.099419 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -0.445166 AS "sv_0", 1.105307 AS "sv_1", 0.567103 AS "sv_2", -2.293164 AS "sv_3", -0.314299 AS "sv_4", 1.838232 AS "sv_5", -2.081706 AS "sv_6", -1.162084 AS "sv_7", -0.664353 AS "sv_8", 0.036149 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -0.279309 AS "sv_0", 0.716632 AS "sv_1", -0.268029 AS "sv_2", -1.564833 AS "sv_3", -0.726558 AS "sv_4", -1.367336 AS "sv_5", 0.216496 AS "sv_6", -0.112564 AS "sv_7", -1.551237 AS "sv_8", 0.982460 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", -0.612529 AS "sv_0", 0.049932 AS "sv_1", -0.101694 AS "sv_2", -0.243436 AS "sv_3", 1.465527 AS "sv_4", -0.767822 AS "sv_5", 1.004251 AS "sv_6", -1.349820 AS "sv_7", -2.343609 AS "sv_8", 0.159631 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -0.193369 AS "sv_0", 1.149251 AS "sv_1", -0.225629 AS "sv_2", -2.235354 AS "sv_3", -1.606311 AS "sv_4", 0.824476 AS "sv_5", 0.081961 AS "sv_6", 0.771607 AS "sv_7", -1.190347 AS "sv_8", 0.432575 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.934704 AS "sv_0", 2.534981 AS "sv_1", -0.913350 AS "sv_2", -2.497659 AS "sv_3", -0.413903 AS "sv_4", -0.339974 AS "sv_5", -0.974107 AS "sv_6", 0.467925 AS "sv_7", -0.391711 AS "sv_8", -0.429019 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -2.178994 AS "sv_0", 1.629255 AS "sv_1", 1.326329 AS "sv_2", -1.448429 AS "sv_3", -0.135087 AS "sv_4", 0.800477 AS "sv_5", -1.041350 AS "sv_6", -2.214886 AS "sv_7", -1.791115 AS "sv_8", -2.571504 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -0.385933 AS "sv_0", 1.313454 AS "sv_1", 1.121612 AS "sv_2", -1.561955 AS "sv_3", -0.976292 AS "sv_4", -0.293142 AS "sv_5", -1.407281 AS "sv_6", 1.126191 AS "sv_7", 1.217445 AS "sv_8", 0.678355 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -0.825049 AS "sv_0", 0.407773 AS "sv_1", -0.687957 AS "sv_2", -0.527283 AS "sv_3", 1.032600 AS "sv_4", -0.062434 AS "sv_5", 0.810701 AS "sv_6", -1.049019 AS "sv_7", -2.087539 AS "sv_8", 1.542523 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", 0.562410 AS "sv_0", 0.045846 AS "sv_1", -0.553406 AS "sv_2", -1.142347 AS "sv_3", 0.187816 AS "sv_4", 0.916315 AS "sv_5", -2.812567 AS "sv_6", -1.193890 AS "sv_7", 0.880867 AS "sv_8", 0.001511 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", -0.259151 AS "sv_0", 0.049920 AS "sv_1", 1.632221 AS "sv_2", -0.299069 AS "sv_3", -0.643622 AS "sv_4", -0.023007 AS "sv_5", 0.223194 AS "sv_6", -0.828538 AS "sv_7", -1.165800 AS "sv_8", -0.307631 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 1.694680 AS "sv_0", -1.805905 AS "sv_1", 1.016541 AS "sv_2", 1.171946 AS "sv_3", -1.723862 AS "sv_4", 0.257285 AS "sv_5", -0.060486 AS "sv_6", -0.671015 AS "sv_7", 0.240305 AS "sv_8", -0.203871 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -0.627777 AS "sv_0", -0.041215 AS "sv_1", -0.982223 AS "sv_2", 0.279263 AS "sv_3", -0.543692 AS "sv_4", -1.004934 AS "sv_5", 0.214130 AS "sv_6", -1.374100 AS "sv_7", -1.127454 AS "sv_8", 0.939147 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", -1.780684 AS "sv_0", 0.943343 AS "sv_1", -0.493488 AS "sv_2", 0.095875 AS "sv_3", 0.006727 AS "sv_4", -0.960127 AS "sv_5", 0.310285 AS "sv_6", -0.964940 AS "sv_7", -0.894842 AS "sv_8", 1.353807 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 2.466959 AS "sv_0", -2.638876 AS "sv_1", -1.034381 AS "sv_2", 1.771593 AS "sv_3", 0.054471 AS "sv_4", 0.148208 AS "sv_5", 1.380131 AS "sv_6", -0.244076 AS "sv_7", -0.472922 AS "sv_8", 0.409291 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -0.071107 AS "sv_0", 1.219655 AS "sv_1", 0.502317 AS "sv_2", -1.961473 AS "sv_3", 0.705807 AS "sv_4", 0.659755 AS "sv_5", -2.476790 AS "sv_6", 0.571177 AS "sv_7", 1.481645 AS "sv_8", 1.238595 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -0.132394 AS "sv_0", -0.404361 AS "sv_1", -0.795053 AS "sv_2", 0.005025 AS "sv_3", 0.064106 AS "sv_4", -0.692042 AS "sv_5", 0.471296 AS "sv_6", -1.676639 AS "sv_7", -1.929933 AS "sv_8", -1.048304 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 2.234241 AS "sv_0", -1.064360 AS "sv_1", -1.352393 AS "sv_2", -1.815365 AS "sv_3", 1.224994 AS "sv_4", 0.108727 AS "sv_5", -3.637136 AS "sv_6", -2.205323 AS "sv_7", 0.129968 AS "sv_8", -0.351756 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", 2.069803 AS "sv_0", -1.375740 AS "sv_1", 0.348611 AS "sv_2", -0.676904 AS "sv_3", 0.950233 AS "sv_4", 0.301410 AS "sv_5", -2.558414 AS "sv_6", -1.749943 AS "sv_7", 0.348146 AS "sv_8", 1.140800 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.356113 AS "sv_0", 2.336598 AS "sv_1", -0.320205 AS "sv_2", -2.561068 AS "sv_3", 0.989920 AS "sv_4", 0.639712 AS "sv_5", -1.299638 AS "sv_6", 1.044763 AS "sv_7", 0.334456 AS "sv_8", -0.021523 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 1.631885 AS "sv_0", -1.800769 AS "sv_1", -0.590251 AS "sv_2", 1.230176 AS "sv_3", -1.559754 AS "sv_4", -0.308192 AS "sv_5", -0.497729 AS "sv_6", -0.943035 AS "sv_7", 0.507678 AS "sv_8", -0.954589 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -0.277965 AS "sv_0", 0.731143 AS "sv_1", 0.106440 AS "sv_2", -1.096631 AS "sv_3", -0.483706 AS "sv_4", -1.135180 AS "sv_5", 0.497225 AS "sv_6", 0.730428 AS "sv_7", -0.729070 AS "sv_8", 1.174173 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 1.384156 AS "sv_0", -0.970498 AS "sv_1", 1.524966 AS "sv_2", -0.426932 AS "sv_3", -1.146429 AS "sv_4", -0.841180 AS "sv_5", -3.507811 AS "sv_6", -2.158156 AS "sv_7", 1.245628 AS "sv_8", 1.282457 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", -1.371374 AS "sv_0", 1.253618 AS "sv_1", 1.715636 AS "sv_2", -1.317327 AS "sv_3", 1.564291 AS "sv_4", 0.468153 AS "sv_5", -0.687696 AS "sv_6", -1.105508 AS "sv_7", -1.168984 AS "sv_8", 0.151451 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 0.363677 AS "sv_0", -1.192038 AS "sv_1", -0.253352 AS "sv_2", 1.839187 AS "sv_3", 1.485463 AS "sv_4", -0.551506 AS "sv_5", -3.400032 AS "sv_6", -2.560496 AS "sv_7", 2.716120 AS "sv_8", 0.960289 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", 0.511151 AS "sv_0", -0.191612 AS "sv_1", -1.783432 AS "sv_2", -0.816210 AS "sv_3", 0.203376 AS "sv_4", 0.693461 AS "sv_5", -5.546315 AS "sv_6", -3.047791 AS "sv_7", 2.352161 AS "sv_8", 0.482600 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", -0.211856 AS "sv_0", 0.188376 AS "sv_1", 0.312049 AS "sv_2", -0.944176 AS "sv_3", -0.496941 AS "sv_4", -0.852460 AS "sv_5", 0.399899 AS "sv_6", -0.991578 AS "sv_7", -2.014487 AS "sv_8", -2.540307 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", 1.729610 AS "sv_0", -1.802206 AS "sv_1", 0.104409 AS "sv_2", 1.216887 AS "sv_3", -0.054401 AS "sv_4", 0.602568 AS "sv_5", 0.670918 AS "sv_6", -0.160807 AS "sv_7", -0.036804 AS "sv_8", -2.286199 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -0.843890 AS "sv_0", 0.782294 AS "sv_1", -0.071923 AS "sv_2", -1.209107 AS "sv_3", 0.924666 AS "sv_4", -1.310072 AS "sv_5", -0.122576 AS "sv_6", -1.056490 AS "sv_7", -1.678165 AS "sv_8", 1.091627 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", 0.311427 AS "sv_0", -0.894730 AS "sv_1", 1.022353 AS "sv_2", 1.634100 AS "sv_3", -1.272713 AS "sv_4", -0.183930 AS "sv_5", -0.475193 AS "sv_6", -0.502170 AS "sv_7", 1.334404 AS "sv_8", -0.223735 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", 0.617570 AS "sv_0", -0.491662 AS "sv_1", 0.605017 AS "sv_2", -0.242433 AS "sv_3", 0.769918 AS "sv_4", 0.075679 AS "sv_5", 0.000103 AS "sv_6", -0.535000 AS "sv_7", -0.727411 AS "sv_8", 2.164213 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", 1.411826 AS "sv_0", -1.608419 AS "sv_1", -0.445387 AS "sv_2", 1.114700 AS "sv_3", -0.489306 AS "sv_4", -0.034184 AS "sv_5", -1.246573 AS "sv_6", -1.315442 AS "sv_7", 0.885852 AS "sv_8", 0.637893 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", -0.939895 AS "sv_0", 1.042113 AS "sv_1", -1.315631 AS "sv_2", -0.688855 AS "sv_3", 0.977092 AS "sv_4", 1.422527 AS "sv_5", -3.589352 AS "sv_6", -1.203753 AS "sv_7", 2.198317 AS "sv_8", 1.625137 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", 1.084002 AS "sv_0", -0.903485 AS "sv_1", -0.043012 AS "sv_2", 0.097379 AS "sv_3", -2.101363 AS "sv_4", -1.036888 AS "sv_5", -1.975890 AS "sv_6", -1.277116 AS "sv_7", 0.887613 AS "sv_8", -0.248111 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", -1.275894 AS "sv_0", 0.883772 AS "sv_1", 0.286100 AS "sv_2", -1.131069 AS "sv_3", 0.726211 AS "sv_4", -0.858111 AS "sv_5", 0.522355 AS "sv_6", -1.436231 AS "sv_7", -2.565750 AS "sv_8", -0.301609 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 2.058176 AS "sv_0", -1.496818 AS "sv_1", -1.339787 AS "sv_2", -0.034605 AS "sv_3", 0.141595 AS "sv_4", -0.024599 AS "sv_5", 0.667437 AS "sv_6", 0.146578 AS "sv_7", -0.807430 AS "sv_8", 0.315350 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", -1.013877 AS "sv_0", 2.497999 AS "sv_1", -0.002923 AS "sv_2", -2.932299 AS "sv_3", -0.255595 AS "sv_4", -1.275466 AS "sv_5", -3.639962 AS "sv_6", 0.988928 AS "sv_7", 2.364592 AS "sv_8", 0.055927 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", -0.782600 AS "sv_0", 0.949935 AS "sv_1", -0.658807 AS "sv_2", -1.255443 AS "sv_3", 0.969023 AS "sv_4", 0.771544 AS "sv_5", -0.242917 AS "sv_6", -0.371088 AS "sv_7", -1.000220 AS "sv_8", -0.154326 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", -1.311673 AS "sv_0", 1.452018 AS "sv_1", -0.031430 AS "sv_2", -1.478799 AS "sv_3", -0.946160 AS "sv_4", -0.968188 AS "sv_5", -0.545703 AS "sv_6", -0.346629 AS "sv_7", -0.790067 AS "sv_8", -0.221073 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", -0.059361 AS "sv_0", -0.256410 AS "sv_1", -0.841143 AS "sv_2", 0.257613 AS "sv_3", -0.739997 AS "sv_4", 0.341926 AS "sv_5", -0.972588 AS "sv_6", -1.229115 AS "sv_7", 0.145160 AS "sv_8", -0.561226 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 1.253987 AS "sv_0", -0.735194 AS "sv_1", -0.309362 AS "sv_2", -0.436961 AS "sv_3", 1.193462 AS "sv_4", 0.315837 AS "sv_5", -0.925981 AS "sv_6", -0.434202 AS "sv_7", 0.091456 AS "sv_8", 0.452317 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", 0.864503 AS "sv_0", -1.484510 AS "sv_1", -1.290793 AS "sv_2", 1.975493 AS "sv_3", 0.906587 AS "sv_4", 0.214740 AS "sv_5", 0.104406 AS "sv_6", -0.502818 AS "sv_7", 0.951936 AS "sv_8", 1.151012 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", 0.948793 AS "sv_0", -0.371163 AS "sv_1", -0.169104 AS "sv_2", -1.007859 AS "sv_3", -0.993452 AS "sv_4", -1.461332 AS "sv_5", -3.223370 AS "sv_6", -1.736056 AS "sv_7", 0.899016 AS "sv_8", 1.169136 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -0.387062 AS "sv_0", -0.858128 AS "sv_1", 0.748420 AS "sv_2", 2.914483 AS "sv_3", -0.194122 AS "sv_4", 0.396880 AS "sv_5", 0.703887 AS "sv_6", 0.073384 AS "sv_7", 1.724884 AS "sv_8", 0.364648 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", 1.267472 AS "sv_0", -1.090015 AS "sv_1", 0.053820 AS "sv_2", 0.451186 AS "sv_3", 1.236225 AS "sv_4", -0.558700 AS "sv_5", 0.363760 AS "sv_6", 0.087004 AS "sv_7", -0.071030 AS "sv_8", -0.753997 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -0.816428 AS "sv_0", 1.060664 AS "sv_1", -1.755447 AS "sv_2", -1.659707 AS "sv_3", 3.437996 AS "sv_4", 1.131133 AS "sv_5", -1.042079 AS "sv_6", -0.975337 AS "sv_7", -1.024543 AS "sv_8", 0.312728 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 0.834960 AS "sv_0", -0.625366 AS "sv_1", 0.124024 AS "sv_2", -0.354538 AS "sv_3", 1.193555 AS "sv_4", 0.743149 AS "sv_5", -4.569151 AS "sv_6", -2.724610 AS "sv_7", 1.963163 AS "sv_8", -2.362978 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", -1.060391 AS "sv_0", 1.572765 AS "sv_1", -0.328946 AS "sv_2", -1.987644 AS "sv_3", -0.153512 AS "sv_4", -1.380966 AS "sv_5", -2.735580 AS "sv_6", -0.927333 AS "sv_7", 0.526144 AS "sv_8", -1.184211 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", -0.866304 AS "sv_0", 0.083571 AS "sv_1", -0.820119 AS "sv_2", 0.005836 AS "sv_3", -0.710395 AS "sv_4", -0.856557 AS "sv_5", 0.840631 AS "sv_6", -1.638696 AS "sv_7", -2.199094 AS "sv_8", -0.898369 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", -0.606609 AS "sv_0", 1.059221 AS "sv_1", -0.203361 AS "sv_2", -1.743798 AS "sv_3", -0.365506 AS "sv_4", 0.963563 AS "sv_5", -1.256085 AS "sv_6", -0.627087 AS "sv_7", -0.590148 AS "sv_8", -1.440930 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", 0.377241 AS "sv_0", -1.091754 AS "sv_1", 0.032081 AS "sv_2", 2.033396 AS "sv_3", 1.658847 AS "sv_4", -1.858523 AS "sv_5", -0.031244 AS "sv_6", -0.311330 AS "sv_7", 1.357257 AS "sv_8", -0.465549 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", -1.081162 AS "sv_0", 0.250674 AS "sv_1", -0.802173 AS "sv_2", -0.024843 AS "sv_3", 1.761466 AS "sv_4", 0.142446 AS "sv_5", 2.380698 AS "sv_6", -0.915795 AS "sv_7", -3.159168 AS "sv_8", 0.945076 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", 0.729288 AS "sv_0", -0.077316 AS "sv_1", -0.699815 AS "sv_2", -1.122283 AS "sv_3", -0.102343 AS "sv_4", -0.053293 AS "sv_5", -2.448229 AS "sv_6", -1.013388 AS "sv_7", 0.660842 AS "sv_8", -0.111527 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", -0.965499 AS "sv_0", 1.397130 AS "sv_1", 0.068715 AS "sv_2", -1.629732 AS "sv_3", -1.313268 AS "sv_4", 0.351784 AS "sv_5", -3.501616 AS "sv_6", -1.193525 AS "sv_7", 1.362177 AS "sv_8", 0.694782 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 1.492570 AS "sv_0", -0.961894 AS "sv_1", 0.708036 AS "sv_2", -0.472434 AS "sv_3", 1.030236 AS "sv_4", 0.737426 AS "sv_5", -1.534595 AS "sv_6", -0.981356 AS "sv_7", 0.188221 AS "sv_8", -0.388135 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", -2.162419 AS "sv_0", 2.045811 AS "sv_1", -0.253497 AS "sv_2", -1.925997 AS "sv_3", -0.393093 AS "sv_4", -0.830895 AS "sv_5", 0.556763 AS "sv_6", -0.509294 AS "sv_7", -2.338522 AS "sv_8", -1.210474 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", -0.657800 AS "sv_0", 0.616924 AS "sv_1", -0.467554 AS "sv_2", -1.148031 AS "sv_3", -0.382448 AS "sv_4", 0.642065 AS "sv_5", -0.260381 AS "sv_6", -1.159738 AS "sv_7", -1.596683 AS "sv_8", 0.110983 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", -0.500306 AS "sv_0", 1.374836 AS "sv_1", 0.580760 AS "sv_2", -1.676827 AS "sv_3", -0.945604 AS "sv_4", -1.493396 AS "sv_5", 0.027709 AS "sv_6", 1.552823 AS "sv_7", 0.028975 AS "sv_8", -0.527387 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", -1.126649 AS "sv_0", 1.696744 AS "sv_1", 0.709711 AS "sv_2", -1.666160 AS "sv_3", -0.232743 AS "sv_4", 0.031047 AS "sv_5", -0.803509 AS "sv_6", 0.708366 AS "sv_7", 0.225263 AS "sv_8", -0.133448 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", -1.508433 AS "sv_0", 0.247151 AS "sv_1", -1.103784 AS "sv_2", 0.056440 AS "sv_3", -0.065252 AS "sv_4", -0.279329 AS "sv_5", -0.899703 AS "sv_6", -3.494589 AS "sv_7", -1.913150 AS "sv_8", 0.245556 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", -1.716225 AS "sv_0", 3.266160 AS "sv_1", 0.148587 AS "sv_2", -3.850634 AS "sv_3", -0.461058 AS "sv_4", 1.252918 AS "sv_5", 5.206801 AS "sv_6", 4.819162 AS "sv_7", -4.085444 AS "sv_8", 0.374271 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", -0.271169 AS "sv_0", 0.596816 AS "sv_1", 0.219789 AS "sv_2", -0.701865 AS "sv_3", -0.894588 AS "sv_4", 1.232131 AS "sv_5", -2.694305 AS "sv_6", -0.688348 AS "sv_7", 1.642882 AS "sv_8", -0.103824 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", -0.269027 AS "sv_0", -0.605304 AS "sv_1", -1.489479 AS "sv_2", 0.607394 AS "sv_3", -1.047703 AS "sv_4", 3.358608 AS "sv_5", 0.962325 AS "sv_6", -1.745451 AS "sv_7", -1.997061 AS "sv_8", 0.281810 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", 0.946859 AS "sv_0", -1.012335 AS "sv_1", -0.877413 AS "sv_2", 0.449092 AS "sv_3", 0.763588 AS "sv_4", -0.184166 AS "sv_5", -3.330955 AS "sv_6", -2.200445 AS "sv_7", 1.777931 AS "sv_8", 0.349522 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", 0.263949 AS "sv_0", -0.978615 AS "sv_1", -0.447072 AS "sv_2", 1.759598 AS "sv_3", 0.196254 AS "sv_4", -0.309277 AS "sv_5", -1.895076 AS "sv_6", -1.432649 AS "sv_7", 2.093737 AS "sv_8", 0.318682 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", 0.864404 AS "sv_0", -0.444607 AS "sv_1", 0.461863 AS "sv_2", -0.605445 AS "sv_3", 0.578241 AS "sv_4", 0.360035 AS "sv_5", -2.882612 AS "sv_6", -1.525592 AS "sv_7", 1.063907 AS "sv_8", -0.754225 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 2.558678 AS "sv_0", -2.516112 AS "sv_1", 0.170667 AS "sv_2", 1.384605 AS "sv_3", -0.176273 AS "sv_4", -1.001222 AS "sv_5", 1.855290 AS "sv_6", 0.152483 AS "sv_7", -0.938498 AS "sv_8", -0.283685 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", 1.183922 AS "sv_0", -1.369564 AS "sv_1", 1.222674 AS "sv_2", 1.170182 AS "sv_3", 0.082184 AS "sv_4", 0.127420 AS "sv_5", -0.055594 AS "sv_6", -0.395528 AS "sv_7", 0.528377 AS "sv_8", -0.480312 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", 1.143185 AS "sv_0", -1.130658 AS "sv_1", -1.260691 AS "sv_2", 0.622884 AS "sv_3", 0.039605 AS "sv_4", -0.703814 AS "sv_5", -0.670862 AS "sv_6", -0.644550 AS "sv_7", 0.509717 AS "sv_8", 0.089483 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", 2.290521 AS "sv_0", -2.344196 AS "sv_1", -0.384225 AS "sv_2", 1.334826 AS "sv_3", 1.051803 AS "sv_4", 0.642634 AS "sv_5", 0.348160 AS "sv_6", -0.687596 AS "sv_7", -0.127951 AS "sv_8", -1.082928 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", -0.019360 AS "sv_0", -1.329357 AS "sv_1", 0.384321 AS "sv_2", 1.805173 AS "sv_3", 0.594182 AS "sv_4", -1.518534 AS "sv_5", 4.356536 AS "sv_6", -0.584052 AS "sv_7", -3.547984 AS "sv_8", -0.691277 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 0.688153 AS "sv_0", -0.238902 AS "sv_1", 0.785937 AS "sv_2", -0.707680 AS "sv_3", -1.602769 AS "sv_4", -0.729682 AS "sv_5", -2.583062 AS "sv_6", -1.224469 AS "sv_7", 0.953948 AS "sv_8", 0.534130 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", -1.115818 AS "sv_0", 1.088068 AS "sv_1", -0.360972 AS "sv_2", -1.532706 AS "sv_3", 0.556166 AS "sv_4", 1.611971 AS "sv_5", -2.674427 AS "sv_6", -2.262296 AS "sv_7", -0.328878 AS "sv_8", -1.181275 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", 1.576722 AS "sv_0", -1.509968 AS "sv_1", -1.595709 AS "sv_2", 0.986816 AS "sv_3", -0.440851 AS "sv_4", -0.508293 AS "sv_5", 1.824049 AS "sv_6", 0.750083 AS "sv_7", -0.600920 AS "sv_8", -1.392098 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 2.031553 AS "sv_0", -1.784385 AS "sv_1", 2.399862 AS "sv_2", 0.485730 AS "sv_3", 1.134490 AS "sv_4", -1.070227 AS "sv_5", -0.670047 AS "sv_6", -0.914140 AS "sv_7", 0.068923 AS "sv_8", 0.060765 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 0.324511 AS "sv_0", -1.586308 AS "sv_1", 1.587482 AS "sv_2", 1.644170 AS "sv_3", 0.591117 AS "sv_4", -0.544138 AS "sv_5", 1.983032 AS "sv_6", -1.952318 AS "sv_7", -2.458950 AS "sv_8", -0.041776 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", -1.910417 AS "sv_0", 1.739639 AS "sv_1", 0.580837 AS "sv_2", -1.426923 AS "sv_3", 1.525881 AS "sv_4", 0.659718 AS "sv_5", -2.252946 AS "sv_6", -1.594541 AS "sv_7", -0.011726 AS "sv_8", 0.073648 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", 0.092205 AS "sv_0", -1.407129 AS "sv_1", 0.994111 AS "sv_2", 1.640799 AS "sv_3", 1.052950 AS "sv_4", 0.600470 AS "sv_5", 2.012027 AS "sv_6", -1.891741 AS "sv_7", -2.414041 AS "sv_8", -1.378977 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", -0.332930 AS "sv_0", 0.475885 AS "sv_1", -0.382945 AS "sv_2", -1.138887 AS "sv_3", 0.033755 AS "sv_4", -0.054012 AS "sv_5", -1.452296 AS "sv_6", -1.353276 AS "sv_7", -0.563187 AS "sv_8", 0.266756 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", -0.582256 AS "sv_0", -0.749386 AS "sv_1", 0.377072 AS "sv_2", 1.515605 AS "sv_3", -0.335111 AS "sv_4", -0.828253 AS "sv_5", 1.857997 AS "sv_6", -1.462894 AS "sv_7", -1.910255 AS "sv_8", 0.604137 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", 0.920184 AS "sv_0", -0.713256 AS "sv_1", 1.521653 AS "sv_2", -0.032039 AS "sv_3", 1.247514 AS "sv_4", -0.605569 AS "sv_5", -2.145892 AS "sv_6", -1.256433 AS "sv_7", 0.994262 AS "sv_8", 0.071459 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", -1.254031 AS "sv_0", 0.993912 AS "sv_1", 0.912865 AS "sv_2", -0.623521 AS "sv_3", -1.383184 AS "sv_4", 0.974786 AS "sv_5", -1.252446 AS "sv_6", -1.068849 AS "sv_7", -0.008546 AS "sv_8", -0.954273 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", 0.145413 AS "sv_0", -0.469691 AS "sv_1", 1.956279 AS "sv_2", 0.901707 AS "sv_3", 0.667989 AS "sv_4", -0.188575 AS "sv_5", -1.332549 AS "sv_6", -0.752522 AS "sv_7", 1.428644 AS "sv_8", -1.295717 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", -0.097966 AS "sv_0", -0.385242 AS "sv_1", 1.154551 AS "sv_2", 0.964339 AS "sv_3", -0.159443 AS "sv_4", -1.397669 AS "sv_5", -3.290021 AS "sv_6", -1.910085 AS "sv_7", 2.514731 AS "sv_8", -2.583064 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", -1.067250 AS "sv_0", 0.633001 AS "sv_1", 1.087081 AS "sv_2", -0.515353 AS "sv_3", 0.065406 AS "sv_4", 1.315380 AS "sv_5", -1.160563 AS "sv_6", -1.743791 AS "sv_7", -0.624636 AS "sv_8", -0.089211 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", -1.579648 AS "sv_0", 1.459869 AS "sv_1", 0.792111 AS "sv_2", -0.699365 AS "sv_3", -0.892220 AS "sv_4", -2.931138 AS "sv_5", 0.449706 AS "sv_6", 0.504487 AS "sv_7", -0.418853 AS "sv_8", 1.301792 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", 1.187620 AS "sv_0", -1.028994 AS "sv_1", -2.188798 AS "sv_2", 0.538502 AS "sv_3", -0.320354 AS "sv_4", 0.901118 AS "sv_5", 1.073303 AS "sv_6", 0.552928 AS "sv_7", -0.317886 AS "sv_8", -1.014692 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", -1.007321 AS "sv_0", 1.978426 AS "sv_1", -1.843402 AS "sv_2", -2.711768 AS "sv_3", -0.083681 AS "sv_4", -1.607959 AS "sv_5", -3.781405 AS "sv_6", -0.731790 AS "sv_7", 1.186931 AS "sv_8", -0.069191 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 1.036848 AS "sv_0", -1.541622 AS "sv_1", -0.143216 AS "sv_2", 1.185535 AS "sv_3", -2.410517 AS "sv_4", 0.078866 AS "sv_5", 3.468331 AS "sv_6", 0.200481 AS "sv_7", -2.558826 AS "sv_8", -0.461151 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", 0.993229 AS "sv_0", -0.459828 AS "sv_1", -1.438838 AS "sv_2", -0.701276 AS "sv_3", 0.011404 AS "sv_4", -0.601894 AS "sv_5", -2.010989 AS "sv_6", -0.964137 AS "sv_7", 0.563558 AS "sv_8", -0.326650 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", -0.351744 AS "sv_0", 0.599999 AS "sv_1", -0.377903 AS "sv_2", -0.542337 AS "sv_3", -2.398673 AS "sv_4", -0.545445 AS "sv_5", -1.256065 AS "sv_6", -0.006913 AS "sv_7", 0.890493 AS "sv_8", -1.310682 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", -0.649094 AS "sv_0", 0.762921 AS "sv_1", 1.209745 AS "sv_2", -1.097589 AS "sv_3", 0.317595 AS "sv_4", -0.609755 AS "sv_5", -2.159743 AS "sv_6", -1.387643 AS "sv_7", 0.203442 AS "sv_8", -1.210989 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", 1.380536 AS "sv_0", -0.843081 AS "sv_1", 1.434788 AS "sv_2", -0.648447 AS "sv_3", 0.033406 AS "sv_4", 1.202273 AS "sv_5", -3.278434 AS "sv_6", -1.885493 AS "sv_7", 1.068869 AS "sv_8", -0.044092 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", 0.473987 AS "sv_0", 0.500364 AS "sv_1", 1.723881 AS "sv_2", -1.182411 AS "sv_3", -0.574647 AS "sv_4", -0.204689 AS "sv_5", 2.087384 AS "sv_6", 2.509938 AS "sv_7", -0.966707 AS "sv_8", -0.731005 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", 0.656161 AS "sv_0", 0.494579 AS "sv_1", -1.249168 AS "sv_2", -1.516192 AS "sv_3", -1.356776 AS "sv_4", 0.825493 AS "sv_5", -1.558538 AS "sv_6", 0.829868 AS "sv_7", 1.041074 AS "sv_8", 0.094301 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", -2.291734 AS "sv_0", 2.242303 AS "sv_1", -0.912768 AS "sv_2", -2.121534 AS "sv_3", -0.899297 AS "sv_4", -0.152621 AS "sv_5", -3.504546 AS "sv_6", -2.263655 AS "sv_7", 0.177350 AS "sv_8", -1.412462 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", -0.271613 AS "sv_0", -1.059578 AS "sv_1", 0.102509 AS "sv_2", 1.136093 AS "sv_3", -0.545997 AS "sv_4", 1.400387 AS "sv_5", 1.510888 AS "sv_6", -2.492246 AS "sv_7", -2.788247 AS "sv_8", 0.186746 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 0.348996 AS "sv_0", -0.620160 AS "sv_1", 0.256799 AS "sv_2", 0.729737 AS "sv_3", -1.019111 AS "sv_4", -0.131708 AS "sv_5", -2.393530 AS "sv_6", -1.504107 AS "sv_7", 1.707629 AS "sv_8", -0.550072 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", 1.137871 AS "sv_0", -1.384059 AS "sv_1", 1.565996 AS "sv_2", 1.384514 AS "sv_3", 0.109974 AS "sv_4", -0.713405 AS "sv_5", 1.013037 AS "sv_6", 0.217894 AS "sv_7", 0.138369 AS "sv_8", -0.418722 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", -0.598158 AS "sv_0", 0.629641 AS "sv_1", 1.754569 AS "sv_2", -0.586489 AS "sv_3", -0.267227 AS "sv_4", -0.968763 AS "sv_5", 0.196006 AS "sv_6", 0.046530 AS "sv_7", -0.570026 AS "sv_8", 1.113417 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", -2.162375 AS "sv_0", 2.632622 AS "sv_1", 1.439044 AS "sv_2", -2.802985 AS "sv_3", -0.763004 AS "sv_4", -0.325520 AS "sv_5", -5.778668 AS "sv_6", -2.427935 AS "sv_7", 1.817599 AS "sv_8", 0.286213 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", 0.069860 AS "sv_0", -0.052813 AS "sv_1", 0.466901 AS "sv_2", -0.381726 AS "sv_3", -0.383667 AS "sv_4", 0.637958 AS "sv_5", 1.694077 AS "sv_6", 0.238940 AS "sv_7", -1.853750 AS "sv_8", -0.634799 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", -0.139298 AS "sv_0", -1.183940 AS "sv_1", -1.599737 AS "sv_2", 3.452623 AS "sv_3", -1.616775 AS "sv_4", 1.247383 AS "sv_5", 2.781168 AS "sv_6", 1.217290 AS "sv_7", 0.986386 AS "sv_8", -0.469726 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 0.326571 AS "sv_0", -1.660301 AS "sv_1", 0.402525 AS "sv_2", 1.622845 AS "sv_3", 0.753651 AS "sv_4", -0.544536 AS "sv_5", 3.864514 AS "sv_6", -1.388185 AS "sv_7", -3.925169 AS "sv_8", 0.212135 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", 0.044826 AS "sv_0", -0.744259 AS "sv_1", -0.000139 AS "sv_2", 1.593426 AS "sv_3", -1.018245 AS "sv_4", 0.304266 AS "sv_5", -1.923168 AS "sv_6", -1.379705 AS "sv_7", 2.058439 AS "sv_8", -2.143022 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", 0.773790 AS "sv_0", -1.721519 AS "sv_1", 0.181047 AS "sv_2", 1.303970 AS "sv_3", -0.801233 AS "sv_4", -0.508986 AS "sv_5", 1.573103 AS "sv_6", -1.911796 AS "sv_7", -2.322387 AS "sv_8", -0.234633 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", 0.040438 AS "sv_0", 0.017217 AS "sv_1", 0.373755 AS "sv_2", -0.543629 AS "sv_3", 0.373126 AS "sv_4", 0.868893 AS "sv_5", 0.005211 AS "sv_6", -0.581543 AS "sv_7", -0.954296 AS "sv_8", -2.858094 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", 0.880473 AS "sv_0", -0.450266 AS "sv_1", -0.562435 AS "sv_2", -0.834106 AS "sv_3", -0.097546 AS "sv_4", -0.409699 AS "sv_5", -4.713199 AS "sv_6", -2.669887 AS "sv_7", 1.768630 AS "sv_8", 0.942791 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", 0.952703 AS "sv_0", -1.959044 AS "sv_1", 0.613657 AS "sv_2", 2.747101 AS "sv_3", -0.827529 AS "sv_4", -0.519608 AS "sv_5", -0.973308 AS "sv_6", -1.493160 AS "sv_7", 1.811729 AS "sv_8", -1.145657 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", -2.300030 AS "sv_0", 2.981089 AS "sv_1", 1.310992 AS "sv_2", -2.644979 AS "sv_3", 0.649899 AS "sv_4", 1.855226 AS "sv_5", -1.027931 AS "sv_6", 0.945393 AS "sv_7", 0.000418 AS "sv_8", 0.598406 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", -0.102391 AS "sv_0", 0.424823 AS "sv_1", -1.644819 AS "sv_2", -0.805329 AS "sv_3", 0.881708 AS "sv_4", 0.086143 AS "sv_5", 1.515527 AS "sv_6", 0.917662 AS "sv_7", -1.400397 AS "sv_8", 0.029573 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", 0.830809 AS "sv_0", -0.972292 AS "sv_1", -0.807691 AS "sv_2", 0.708982 AS "sv_3", -0.714298 AS "sv_4", 0.067277 AS "sv_5", -1.936745 AS "sv_6", -1.355031 AS "sv_7", 1.298490 AS "sv_8", 1.064389 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", 1.076087 AS "sv_0", -1.652074 AS "sv_1", 0.181322 AS "sv_2", 1.886562 AS "sv_3", -2.946433 AS "sv_4", -1.597664 AS "sv_5", -0.735681 AS "sv_6", -1.079635 AS "sv_7", 1.221442 AS "sv_8", 2.503274 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", -0.409778 AS "sv_0", 0.366478 AS "sv_1", 0.279951 AS "sv_2", -0.662609 AS "sv_3", -2.143034 AS "sv_4", -0.520560 AS "sv_5", -1.403085 AS "sv_6", -1.291139 AS "sv_7", -0.168252 AS "sv_8", 1.079303 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 0.195219 AS "sv_0", 0.635149 AS "sv_1", 0.207893 AS "sv_2", -1.932431 AS "sv_3", -0.322529 AS "sv_4", 1.347879 AS "sv_5", -4.237800 AS "sv_6", -1.707967 AS "sv_7", 1.305879 AS "sv_8", 0.559559 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", -1.022336 AS "sv_0", 0.688210 AS "sv_1", 1.086751 AS "sv_2", -0.265651 AS "sv_3", -0.127171 AS "sv_4", 1.025244 AS "sv_5", -0.593763 AS "sv_6", -0.800110 AS "sv_7", -0.190253 AS "sv_8", 0.737684 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", 0.023580 AS "sv_0", -1.792764 AS "sv_1", -0.485641 AS "sv_2", 1.616686 AS "sv_3", 0.370077 AS "sv_4", 0.781879 AS "sv_5", 2.619173 AS "sv_6", -3.301519 AS "sv_7", -4.281651 AS "sv_8", 1.135001 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", -1.486179 AS "sv_0", 1.962028 AS "sv_1", -0.587886 AS "sv_2", -2.734293 AS "sv_3", -0.354594 AS "sv_4", -0.697372 AS "sv_5", -2.261580 AS "sv_6", -1.424076 AS "sv_7", -0.951573 AS "sv_8", -0.007626 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -1.750210 AS "sv_0", 1.576099 AS "sv_1", 0.286503 AS "sv_2", -1.740885 AS "sv_3", -0.949967 AS "sv_4", -0.384233 AS "sv_5", 0.038996 AS "sv_6", -1.160993 AS "sv_7", -2.267550 AS "sv_8", 1.213184 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", -0.134194 AS "sv_0", 0.600499 AS "sv_1", 1.864327 AS "sv_2", -1.130981 AS "sv_3", 0.049264 AS "sv_4", -0.305435 AS "sv_5", -3.500119 AS "sv_6", -1.274369 AS "sv_7", 1.603143 AS "sv_8", -0.381918 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", -0.146036 AS "sv_0", 0.314684 AS "sv_1", -0.071369 AS "sv_2", -0.141028 AS "sv_3", -0.214754 AS "sv_4", -0.018822 AS "sv_5", -1.521478 AS "sv_6", -0.097912 AS "sv_7", 1.386038 AS "sv_8", 0.292913 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", -1.494493 AS "sv_0", 1.117752 AS "sv_1", -0.673985 AS "sv_2", -0.960834 AS "sv_3", 0.753236 AS "sv_4", -1.497403 AS "sv_5", -0.738098 AS "sv_6", -1.483457 AS "sv_7", -1.146516 AS "sv_8", -0.570944 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", -2.613588 AS "sv_0", 2.913682 AS "sv_1", -0.782794 AS "sv_2", -2.839297 AS "sv_3", 0.734150 AS "sv_4", -0.341897 AS "sv_5", -4.327835 AS "sv_6", -1.962018 AS "sv_7", 0.746102 AS "sv_8", -0.322164 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", 0.518310 AS "sv_0", -1.234552 AS "sv_1", -1.400364 AS "sv_2", 1.912366 AS "sv_3", -0.105788 AS "sv_4", 2.467227 AS "sv_5", -1.104217 AS "sv_6", -1.137947 AS "sv_7", 1.630839 AS "sv_8", -0.148326 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", 1.338595 AS "sv_0", -1.558609 AS "sv_1", -0.750347 AS "sv_2", 1.294788 AS "sv_3", -1.100434 AS "sv_4", -1.380261 AS "sv_5", 0.257416 AS "sv_6", -0.377107 AS "sv_7", 0.305411 AS "sv_8", -0.234435 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", -0.732433 AS "sv_0", 0.936505 AS "sv_1", 1.243140 AS "sv_2", -0.941944 AS "sv_3", -0.339980 AS "sv_4", 1.607117 AS "sv_5", -0.103083 AS "sv_6", 0.216729 AS "sv_7", -0.384929 AS "sv_8", 0.012544 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 0.731363 AS "sv_0", -0.569414 AS "sv_1", 0.299197 AS "sv_2", -0.023184 AS "sv_3", 1.201188 AS "sv_4", 0.961168 AS "sv_5", -2.055670 AS "sv_6", -1.167010 AS "sv_7", 1.006383 AS "sv_8", 0.586072 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", -1.525289 AS "sv_0", 0.747571 AS "sv_1", -0.197193 AS "sv_2", -0.031182 AS "sv_3", 0.232402 AS "sv_4", 0.782879 AS "sv_5", 1.657635 AS "sv_6", -0.571491 AS "sv_7", -2.070985 AS "sv_8", -2.442397 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", -0.193789 AS "sv_0", 0.092603 AS "sv_1", 0.262988 AS "sv_2", -0.546925 AS "sv_3", -0.861350 AS "sv_4", 2.835485 AS "sv_5", -0.668723 AS "sv_6", -1.247068 AS "sv_7", -0.817175 AS "sv_8", 0.298955 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", 1.998581 AS "sv_0", -1.326699 AS "sv_1", -1.020880 AS "sv_2", -0.716185 AS "sv_3", -2.171592 AS "sv_4", 1.982605 AS "sv_5", -2.469753 AS "sv_6", -1.770369 AS "sv_7", 0.214842 AS "sv_8", -0.344642 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", 1.999266 AS "sv_0", -3.002589 AS "sv_1", 0.512076 AS "sv_2", 3.644342 AS "sv_3", 0.156183 AS "sv_4", 0.302831 AS "sv_5", 3.579533 AS "sv_6", 0.731931 AS "sv_7", -0.333494 AS "sv_8", -2.769409 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", 0.188206 AS "sv_0", -0.402905 AS "sv_1", -0.576757 AS "sv_2", 0.314418 AS "sv_3", 0.432550 AS "sv_4", 0.941049 AS "sv_5", 0.405945 AS "sv_6", -0.397738 AS "sv_7", -0.532485 AS "sv_8", 1.196586 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", -0.986929 AS "sv_0", 0.387707 AS "sv_1", 0.633005 AS "sv_2", -0.198440 AS "sv_3", 0.845925 AS "sv_4", 2.782754 AS "sv_5", 0.667000 AS "sv_6", -1.172546 AS "sv_7", -1.765126 AS "sv_8", -0.225227 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 0.735969 AS "sv_0", 0.241809 AS "sv_1", 1.027176 AS "sv_2", -1.862503 AS "sv_3", 0.535039 AS "sv_4", -1.681379 AS "sv_5", -2.957060 AS "sv_6", -1.047943 AS "sv_7", 0.559074 AS "sv_8", 0.946764 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", 0.903709 AS "sv_0", -1.558050 AS "sv_1", 1.575394 AS "sv_2", 1.154207 AS "sv_3", 0.220475 AS "sv_4", -0.576768 AS "sv_5", 2.738988 AS "sv_6", -0.605210 AS "sv_7", -2.520082 AS "sv_8", 0.077487 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", 1.204247 AS "sv_0", -2.092080 AS "sv_1", 0.892502 AS "sv_2", 2.939305 AS "sv_3", 0.657501 AS "sv_4", 1.659902 AS "sv_5", 2.185951 AS "sv_6", 0.413368 AS "sv_7", 0.343307 AS "sv_8", -0.855423 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", -0.729437 AS "sv_0", -0.639083 AS "sv_1", 0.094830 AS "sv_2", 1.312227 AS "sv_3", -0.370192 AS "sv_4", -0.902377 AS "sv_5", 2.456887 AS "sv_6", -1.449366 AS "sv_7", -2.664243 AS "sv_8", 0.064271 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", -0.604914 AS "sv_0", 1.236459 AS "sv_1", 1.466627 AS "sv_2", -1.959462 AS "sv_3", -0.507129 AS "sv_4", 0.631139 AS "sv_5", -2.478298 AS "sv_6", -0.813412 AS "sv_7", 0.334325 AS "sv_8", -0.148856 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", -0.461074 AS "sv_0", -0.331512 AS "sv_1", -0.794653 AS "sv_2", 0.264204 AS "sv_3", -1.676542 AS "sv_4", 0.748684 AS "sv_5", 0.420894 AS "sv_6", -1.953358 AS "sv_7", -1.875658 AS "sv_8", 0.125495 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", -0.262690 AS "sv_0", -0.388371 AS "sv_1", 0.255188 AS "sv_2", 0.570378 AS "sv_3", 2.636853 AS "sv_4", -0.175386 AS "sv_5", 1.644399 AS "sv_6", -0.637184 AS "sv_7", -1.764740 AS "sv_8", -1.004354 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", -1.084956 AS "sv_0", 0.589937 AS "sv_1", -1.026264 AS "sv_2", -1.119966 AS "sv_3", 1.376393 AS "sv_4", -0.075119 AS "sv_5", -1.665924 AS "sv_6", -3.034635 AS "sv_7", -1.713648 AS "sv_8", 0.662082 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", -0.149305 AS "sv_0", -0.930982 AS "sv_1", -0.253174 AS "sv_2", 2.530446 AS "sv_3", 0.091115 AS "sv_4", -2.239584 AS "sv_5", -0.845005 AS "sv_6", -0.811386 AS "sv_7", 2.216693 AS "sv_8", 0.671135 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", 0.979439 AS "sv_0", -0.819126 AS "sv_1", -1.198582 AS "sv_2", 0.265929 AS "sv_3", -0.216920 AS "sv_4", -2.209772 AS "sv_5", -0.490991 AS "sv_6", -0.317150 AS "sv_7", 0.339770 AS "sv_8", -1.851972 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", 0.277550 AS "sv_0", -0.211440 AS "sv_1", -1.368835 AS "sv_2", -0.314864 AS "sv_3", -1.648674 AS "sv_4", 0.099834 AS "sv_5", -4.892241 AS "sv_6", -2.755234 AS "sv_7", 2.360948 AS "sv_8", 0.053569 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", -2.103857 AS "sv_0", 1.477015 AS "sv_1", 0.135541 AS "sv_2", -0.877712 AS "sv_3", -1.282602 AS "sv_4", 0.032433 AS "sv_5", 1.740861 AS "sv_6", -0.506641 AS "sv_7", -2.720089 AS "sv_8", 0.214696 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", -2.837179 AS "sv_0", 1.477195 AS "sv_1", 0.565303 AS "sv_2", 1.382117 AS "sv_3", 1.268693 AS "sv_4", -0.104379 AS "sv_5", 0.291605 AS "sv_6", -0.012256 AS "sv_7", 1.102744 AS "sv_8", 1.483759 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", 1.467602 AS "sv_0", -0.425150 AS "sv_1", -1.049671 AS "sv_2", -0.794918 AS "sv_3", -0.987827 AS "sv_4", -1.661965 AS "sv_5", -4.440504 AS "sv_6", -0.797506 AS "sv_7", 3.089035 AS "sv_8", -0.801872 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", -0.877365 AS "sv_0", 0.741773 AS "sv_1", -0.447679 AS "sv_2", -0.262705 AS "sv_3", 0.191993 AS "sv_4", -1.099775 AS "sv_5", -0.295379 AS "sv_6", -0.059701 AS "sv_7", 0.134508 AS "sv_8", -0.143877 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", 0.364829 AS "sv_0", -0.276213 AS "sv_1", -0.829992 AS "sv_2", 0.087255 AS "sv_3", 0.286715 AS "sv_4", 2.563963 AS "sv_5", -1.531283 AS "sv_6", -0.648256 AS "sv_7", 1.045683 AS "sv_8", -0.844272 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", -1.569218 AS "sv_0", 2.574346 AS "sv_1", 1.953913 AS "sv_2", -2.971349 AS "sv_3", 0.418451 AS "sv_4", 0.443428 AS "sv_5", -1.304433 AS "sv_6", 0.796727 AS "sv_7", -0.184424 AS "sv_8", 0.413981 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", -1.202944 AS "sv_0", 1.799945 AS "sv_1", 0.494136 AS "sv_2", -2.248967 AS "sv_3", -1.821113 AS "sv_4", -0.683715 AS "sv_5", -0.674347 AS "sv_6", 0.140042 AS "sv_7", -0.864477 AS "sv_8", -0.571051 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", -0.191931 AS "sv_0", -0.162504 AS "sv_1", 1.151646 AS "sv_2", 1.053780 AS "sv_3", 0.043356 AS "sv_4", -0.163908 AS "sv_5", -2.428284 AS "sv_6", -0.792489 AS "sv_7", 2.682316 AS "sv_8", 0.789276 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", -0.398535 AS "sv_0", 1.718568 AS "sv_1", -0.326721 AS "sv_2", -2.699155 AS "sv_3", 0.106809 AS "sv_4", -0.578145 AS "sv_5", -1.759368 AS "sv_6", 0.885016 AS "sv_7", 0.456372 AS "sv_8", 0.643280 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", 0.141928 AS "sv_0", -0.408314 AS "sv_1", 0.402207 AS "sv_2", 0.513474 AS "sv_3", 1.632655 AS "sv_4", 0.113585 AS "sv_5", -0.501597 AS "sv_6", -0.685914 AS "sv_7", 0.317499 AS "sv_8", -0.049391 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", -0.398527 AS "sv_0", 1.041805 AS "sv_1", -0.373574 AS "sv_2", -1.219798 AS "sv_3", 0.622254 AS "sv_4", 1.240527 AS "sv_5", -2.001124 AS "sv_6", 0.259418 AS "sv_7", 1.350946 AS "sv_8", -0.809748 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", -0.328485 AS "sv_0", 0.878035 AS "sv_1", -0.958506 AS "sv_2", -1.292152 AS "sv_3", 0.130561 AS "sv_4", 0.837286 AS "sv_5", -2.503006 AS "sv_6", -0.507985 AS "sv_7", 1.133817 AS "sv_8", -0.210518 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", -3.181201 AS "sv_0", 1.427110 AS "sv_1", 1.652395 AS "sv_2", 2.673573 AS "sv_3", -0.089580 AS "sv_4", 0.495584 AS "sv_5", 1.994989 AS "sv_6", 1.454160 AS "sv_7", 1.700394 AS "sv_8", 1.468157 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", 0.537799 AS "sv_0", -0.011539 AS "sv_1", 0.173001 AS "sv_2", -0.482009 AS "sv_3", -1.330073 AS "sv_4", 1.975185 AS "sv_5", -0.731161 AS "sv_6", 0.405935 AS "sv_7", 0.662974 AS "sv_8", 0.356436 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", 1.914430 AS "sv_0", -1.187978 AS "sv_1", -1.908593 AS "sv_2", -0.003361 AS "sv_3", -0.783720 AS "sv_4", -1.616949 AS "sv_5", -1.228041 AS "sv_6", 0.100255 AS "sv_7", 1.147780 AS "sv_8", -0.640430 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", -0.166531 AS "sv_0", 1.170774 AS "sv_1", -0.075051 AS "sv_2", -1.618681 AS "sv_3", -1.296364 AS "sv_4", -0.101588 AS "sv_5", 0.568882 AS "sv_6", 2.013449 AS "sv_7", -0.116306 AS "sv_8", -0.470121 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", -1.271310 AS "sv_0", 1.312382 AS "sv_1", -1.657995 AS "sv_2", -0.792106 AS "sv_3", 0.492202 AS "sv_4", -0.344175 AS "sv_5", -2.448642 AS "sv_6", -0.690395 AS "sv_7", 1.421453 AS "sv_8", 0.254472 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", 1.017406 AS "sv_0", -0.329035 AS "sv_1", -1.647778 AS "sv_2", -0.472246 AS "sv_3", 0.693451 AS "sv_4", 2.108780 AS "sv_5", -0.534753 AS "sv_6", 0.603265 AS "sv_7", 0.589281 AS "sv_8", 0.842916 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", -1.477594 AS "sv_0", 1.374992 AS "sv_1", 0.708349 AS "sv_2", -0.619475 AS "sv_3", -1.251171 AS "sv_4", -1.279053 AS "sv_5", 1.405863 AS "sv_6", 1.012186 AS "sv_7", -0.908990 AS "sv_8", -1.536729 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", -0.642006 AS "sv_0", 1.480972 AS "sv_1", -3.517868 AS "sv_2", -2.520107 AS "sv_3", 0.043394 AS "sv_4", -0.620498 AS "sv_5", -2.417182 AS "sv_6", -0.736866 AS "sv_7", -0.109271 AS "sv_8", 0.480139 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", 2.968485 AS "sv_0", -2.110220 AS "sv_1", 0.540510 AS "sv_2", 0.438975 AS "sv_3", 0.045168 AS "sv_4", -0.058284 AS "sv_5", -2.188066 AS "sv_6", -0.377836 AS "sv_7", 1.965070 AS "sv_8", 0.540905 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", -0.608854 AS "sv_0", 1.218548 AS "sv_1", -0.085546 AS "sv_2", -1.177294 AS "sv_3", 0.796803 AS "sv_4", 0.195863 AS "sv_5", -2.209919 AS "sv_6", 0.324517 AS "sv_7", 1.679661 AS "sv_8", 0.240260 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", -0.359051 AS "sv_0", 0.093840 AS "sv_1", -1.040202 AS "sv_2", 0.237889 AS "sv_3", -0.187741 AS "sv_4", 0.767880 AS "sv_5", 1.191305 AS "sv_6", 0.265512 AS "sv_7", -0.767644 AS "sv_8", -0.358049 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", -2.812452 AS "sv_0", 4.009672 AS "sv_1", 1.524404 AS "sv_2", -3.729012 AS "sv_3", 0.302494 AS "sv_4", 1.617980 AS "sv_5", 0.390761 AS "sv_6", 2.616714 AS "sv_7", -0.823656 AS "sv_8", 0.318097 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", -0.594119 AS "sv_0", 1.338113 AS "sv_1", -0.247653 AS "sv_2", -1.773764 AS "sv_3", 1.398441 AS "sv_4", 0.967609 AS "sv_5", -0.265833 AS "sv_6", 0.886589 AS "sv_7", -0.317197 AS "sv_8", -0.749045 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", -1.728087 AS "sv_0", 2.393295 AS "sv_1", 0.055107 AS "sv_2", -1.740847 AS "sv_3", -1.848529 AS "sv_4", -0.978944 AS "sv_5", 0.438442 AS "sv_6", 2.200070 AS "sv_7", 0.248741 AS "sv_8", 1.048002 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", -1.261595 AS "sv_0", 2.527657 AS "sv_1", 0.645366 AS "sv_2", -2.918777 AS "sv_3", 1.884428 AS "sv_4", -1.023331 AS "sv_5", 1.186670 AS "sv_6", 2.680716 AS "sv_7", -1.101655 AS "sv_8", 1.378079 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", 1.126231 AS "sv_0", -0.791891 AS "sv_1", -0.032095 AS "sv_2", 0.112247 AS "sv_3", 2.001647 AS "sv_4", -0.545657 AS "sv_5", -1.040442 AS "sv_6", -0.283264 AS "sv_7", 0.796760 AS "sv_8", 0.714492 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", -0.271985 AS "sv_0", 0.623441 AS "sv_1", -1.064963 AS "sv_2", -0.698945 AS "sv_3", 2.937669 AS "sv_4", 0.534871 AS "sv_5", -2.029847 AS "sv_6", -0.277547 AS "sv_7", 1.318131 AS "sv_8", 0.270592 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", -1.518703 AS "sv_0", 2.031850 AS "sv_1", 0.716214 AS "sv_2", -1.718178 AS "sv_3", -0.738879 AS "sv_4", 0.774364 AS "sv_5", -0.460095 AS "sv_6", 1.006853 AS "sv_7", 0.131133 AS "sv_8", -0.245817 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", -1.417017 AS "sv_0", 1.843085 AS "sv_1", -0.485481 AS "sv_2", -1.442436 AS "sv_3", -0.890030 AS "sv_4", -0.217024 AS "sv_5", 0.090377 AS "sv_6", 1.203347 AS "sv_7", -0.054221 AS "sv_8", 2.283275 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", 0.587764 AS "sv_0", -0.531360 AS "sv_1", -0.250216 AS "sv_2", 0.255121 AS "sv_3", -0.334561 AS "sv_4", -0.838360 AS "sv_5", -4.379068 AS "sv_6", -2.098284 AS "sv_7", 2.830201 AS "sv_8", 3.062791 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", -1.726931 AS "sv_0", 0.546068 AS "sv_1", -0.043197 AS "sv_2", 0.838583 AS "sv_3", 0.936275 AS "sv_4", 2.240391 AS "sv_5", 1.178930 AS "sv_6", -0.894190 AS "sv_7", -1.137084 AS "sv_8", -0.073077 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", -1.297293 AS "sv_0", 1.762658 AS "sv_1", -0.517579 AS "sv_2", -1.359603 AS "sv_3", 1.428937 AS "sv_4", 0.304982 AS "sv_5", 1.182142 AS "sv_6", 1.842889 AS "sv_7", -0.568789 AS "sv_8", 1.070702 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", -2.540732 AS "sv_0", 2.557817 AS "sv_1", -0.591067 AS "sv_2", -0.448219 AS "sv_3", 0.355015 AS "sv_4", -0.406366 AS "sv_5", 2.025187 AS "sv_6", 3.158858 AS "sv_7", 0.574874 AS "sv_8", -0.055302 AS "sv_9"
     UNION ALL
     SELECT 222 AS "sv_idx", -0.552599 AS "sv_0", 1.076007 AS "sv_1", 0.809486 AS "sv_2", -1.702144 AS "sv_3", -0.443347 AS "sv_4", -0.158225 AS "sv_5", -3.253163 AS "sv_6", -1.282050 AS "sv_7", 0.926509 AS "sv_8", -0.277718 AS "sv_9"
     UNION ALL
     SELECT 223 AS "sv_idx", -1.281172 AS "sv_0", 2.220311 AS "sv_1", -0.321756 AS "sv_2", -2.661306 AS "sv_3", 0.105664 AS "sv_4", 0.075154 AS "sv_5", -1.616451 AS "sv_6", 0.518400 AS "sv_7", 0.113640 AS "sv_8", 0.529279 AS "sv_9"
     UNION ALL
     SELECT 224 AS "sv_idx", -0.124049 AS "sv_0", 0.768644 AS "sv_1", -1.040184 AS "sv_2", -1.041910 AS "sv_3", -0.515943 AS "sv_4", 1.480217 AS "sv_5", -1.720070 AS "sv_6", 0.342352 AS "sv_7", 1.247335 AS "sv_8", -1.413962 AS "sv_9"
     UNION ALL
     SELECT 225 AS "sv_idx", 1.597349 AS "sv_0", -1.517362 AS "sv_1", -1.716131 AS "sv_2", 0.853779 AS "sv_3", -0.720950 AS "sv_4", -0.241207 AS "sv_5", -0.885380 AS "sv_6", -0.661443 AS "sv_7", 0.853790 AS "sv_8", -0.753512 AS "sv_9"
     UNION ALL
     SELECT 226 AS "sv_idx", -0.265869 AS "sv_0", 0.856546 AS "sv_1", 0.055358 AS "sv_2", -1.068897 AS "sv_3", -0.707670 AS "sv_4", 0.616768 AS "sv_5", -3.099524 AS "sv_6", -0.383819 AS "sv_7", 2.030415 AS "sv_8", -1.149011 AS "sv_9"
     UNION ALL
     SELECT 227 AS "sv_idx", -2.026119 AS "sv_0", 2.249142 AS "sv_1", 0.607541 AS "sv_2", -1.524179 AS "sv_3", -1.455024 AS "sv_4", -0.009194 AS "sv_5", -0.059147 AS "sv_6", 0.912899 AS "sv_7", -0.154244 AS "sv_8", 0.332222 AS "sv_9"
     UNION ALL
     SELECT 228 AS "sv_idx", -1.979419 AS "sv_0", 2.019696 AS "sv_1", 0.629069 AS "sv_2", -1.102857 AS "sv_3", -0.533053 AS "sv_4", -0.257772 AS "sv_5", -0.372625 AS "sv_6", 0.608513 AS "sv_7", 0.237841 AS "sv_8", -0.101317 AS "sv_9"
     UNION ALL
     SELECT 229 AS "sv_idx", 0.342967 AS "sv_0", 0.196788 AS "sv_1", 1.148211 AS "sv_2", -0.605739 AS "sv_3", 2.101292 AS "sv_4", -2.001013 AS "sv_5", -2.127164 AS "sv_6", -0.147926 AS "sv_7", 1.541139 AS "sv_8", -0.411208 AS "sv_9"
     UNION ALL
     SELECT 230 AS "sv_idx", 1.198174 AS "sv_0", -0.448049 AS "sv_1", 0.974410 AS "sv_2", -0.452757 AS "sv_3", -0.875906 AS "sv_4", 0.014741 AS "sv_5", -1.921816 AS "sv_6", 0.026240 AS "sv_7", 1.513349 AS "sv_8", -2.148955 AS "sv_9"
     UNION ALL
     SELECT 231 AS "sv_idx", 1.807884 AS "sv_0", -1.453958 AS "sv_1", 0.473504 AS "sv_2", 0.535365 AS "sv_3", -0.426605 AS "sv_4", -0.297745 AS "sv_5", -1.279131 AS "sv_6", -0.474511 AS "sv_7", 1.144255 AS "sv_8", 0.318236 AS "sv_9"
     UNION ALL
     SELECT 232 AS "sv_idx", 0.665606 AS "sv_0", 1.269597 AS "sv_1", -1.079834 AS "sv_2", -3.947758 AS "sv_3", 0.059515 AS "sv_4", 1.176403 AS "sv_5", -4.520449 AS "sv_6", -0.956709 AS "sv_7", 0.580369 AS "sv_8", -0.092376 AS "sv_9"
     UNION ALL
     SELECT 233 AS "sv_idx", -0.608441 AS "sv_0", -0.157669 AS "sv_1", -0.130133 AS "sv_2", 0.856426 AS "sv_3", 0.272428 AS "sv_4", 0.505403 AS "sv_5", -1.471946 AS "sv_6", -1.739313 AS "sv_7", 0.755753 AS "sv_8", 1.825129 AS "sv_9"
     UNION ALL
     SELECT 234 AS "sv_idx", 1.661031 AS "sv_0", -0.798698 AS "sv_1", 1.717274 AS "sv_2", -0.343362 AS "sv_3", 0.376445 AS "sv_4", 0.348570 AS "sv_5", -2.849752 AS "sv_6", -0.329359 AS "sv_7", 2.199257 AS "sv_8", -0.104781 AS "sv_9"
     UNION ALL
     SELECT 235 AS "sv_idx", 2.785573 AS "sv_0", -2.134180 AS "sv_1", -0.847303 AS "sv_2", 0.700216 AS "sv_3", -0.300223 AS "sv_4", 1.166382 AS "sv_5", 1.512431 AS "sv_6", 1.110708 AS "sv_7", -0.324309 AS "sv_8", 0.350286 AS "sv_9"
     UNION ALL
     SELECT 236 AS "sv_idx", 0.884999 AS "sv_0", 0.549215 AS "sv_1", -0.492350 AS "sv_2", -1.667443 AS "sv_3", -1.335243 AS "sv_4", -1.877447 AS "sv_5", 0.375880 AS "sv_6", 2.343787 AS "sv_7", 0.219708 AS "sv_8", 0.797554 AS "sv_9"
     UNION ALL
     SELECT 237 AS "sv_idx", -1.436062 AS "sv_0", 0.653389 AS "sv_1", -1.095512 AS "sv_2", -0.003856 AS "sv_3", -1.155150 AS "sv_4", 0.229151 AS "sv_5", -0.893853 AS "sv_6", -1.830395 AS "sv_7", -0.524339 AS "sv_8", 1.581495 AS "sv_9"
     UNION ALL
     SELECT 238 AS "sv_idx", 2.814393 AS "sv_0", -2.102287 AS "sv_1", -0.393958 AS "sv_2", 0.585428 AS "sv_3", 0.599844 AS "sv_4", 0.134051 AS "sv_5", 0.849108 AS "sv_6", 0.843388 AS "sv_7", 0.031359 AS "sv_8", 0.379521 AS "sv_9"
     UNION ALL
     SELECT 239 AS "sv_idx", -1.725369 AS "sv_0", 1.372966 AS "sv_1", 1.878403 AS "sv_2", 0.314206 AS "sv_3", -0.748524 AS "sv_4", -1.198498 AS "sv_5", -0.739740 AS "sv_6", 0.642842 AS "sv_7", 1.759975 AS "sv_8", -0.508412 AS "sv_9"
     UNION ALL
     SELECT 240 AS "sv_idx", -2.328020 AS "sv_0", 1.389374 AS "sv_1", -2.298276 AS "sv_2", 0.913343 AS "sv_3", 0.336366 AS "sv_4", -0.143118 AS "sv_5", -0.580813 AS "sv_6", -0.021888 AS "sv_7", 1.562773 AS "sv_8", 1.450231 AS "sv_9"
     UNION ALL
     SELECT 241 AS "sv_idx", -2.187265 AS "sv_0", 2.446781 AS "sv_1", 0.845839 AS "sv_2", -1.767580 AS "sv_3", -1.731538 AS "sv_4", 1.740497 AS "sv_5", -0.906979 AS "sv_6", 0.496253 AS "sv_7", 0.178231 AS "sv_8", 0.118096 AS "sv_9"
     UNION ALL
     SELECT 242 AS "sv_idx", 0.322804 AS "sv_0", -0.575938 AS "sv_1", -1.239711 AS "sv_2", 0.596346 AS "sv_3", -0.850829 AS "sv_4", 0.061034 AS "sv_5", -1.158763 AS "sv_6", -1.021762 AS "sv_7", 0.749981 AS "sv_8", 0.747154 AS "sv_9"
     UNION ALL
     SELECT 243 AS "sv_idx", 0.397959 AS "sv_0", 0.689584 AS "sv_1", 2.171299 AS "sv_2", -1.400069 AS "sv_3", 0.639806 AS "sv_4", 0.452828 AS "sv_5", 0.124406 AS "sv_6", 1.812564 AS "sv_7", 0.282914 AS "sv_8", 0.312649 AS "sv_9"
     UNION ALL
     SELECT 244 AS "sv_idx", 1.032158 AS "sv_0", 0.377531 AS "sv_1", -0.835470 AS "sv_2", -2.143527 AS "sv_3", -0.564668 AS "sv_4", -0.623986 AS "sv_5", -1.514433 AS "sv_6", 0.549383 AS "sv_7", 0.206097 AS "sv_8", 1.560484 AS "sv_9"
     UNION ALL
     SELECT 245 AS "sv_idx", -1.368644 AS "sv_0", 0.716127 AS "sv_1", 0.307297 AS "sv_2", 0.899080 AS "sv_3", -0.303330 AS "sv_4", 1.272378 AS "sv_5", -0.112382 AS "sv_6", 0.215110 AS "sv_7", 1.172710 AS "sv_8", 1.728197 AS "sv_9"
     UNION ALL
     SELECT 246 AS "sv_idx", -0.651388 AS "sv_0", 1.534263 AS "sv_1", 0.397206 AS "sv_2", -2.254488 AS "sv_3", 0.589252 AS "sv_4", 0.244271 AS "sv_5", -1.086421 AS "sv_6", 0.427619 AS "sv_7", -0.251791 AS "sv_8", 1.194020 AS "sv_9"
     UNION ALL
     SELECT 247 AS "sv_idx", -0.775176 AS "sv_0", 0.918643 AS "sv_1", 0.922568 AS "sv_2", -0.333638 AS "sv_3", 0.264996 AS "sv_4", 1.237666 AS "sv_5", -2.081549 AS "sv_6", -0.033022 AS "sv_7", 1.932221 AS "sv_8", 1.290484 AS "sv_9"
     UNION ALL
     SELECT 248 AS "sv_idx", 0.132347 AS "sv_0", 0.759427 AS "sv_1", -1.116520 AS "sv_2", -1.314918 AS "sv_3", 0.698639 AS "sv_4", -0.230043 AS "sv_5", -3.272410 AS "sv_6", -0.095580 AS "sv_7", 2.219697 AS "sv_8", 1.147635 AS "sv_9"
     UNION ALL
     SELECT 249 AS "sv_idx", -1.370633 AS "sv_0", 2.352460 AS "sv_1", -0.006829 AS "sv_2", -2.447560 AS "sv_3", 0.565811 AS "sv_4", 0.521019 AS "sv_5", -1.438689 AS "sv_6", 1.160034 AS "sv_7", 0.671298 AS "sv_8", 0.980883 AS "sv_9"
     UNION ALL
     SELECT 250 AS "sv_idx", 1.098034 AS "sv_0", -1.162464 AS "sv_1", -0.014109 AS "sv_2", 0.766009 AS "sv_3", 1.487847 AS "sv_4", -1.037305 AS "sv_5", 1.012227 AS "sv_6", 0.090103 AS "sv_7", -0.465799 AS "sv_8", -0.056145 AS "sv_9"
     UNION ALL
     SELECT 251 AS "sv_idx", -0.855209 AS "sv_0", 0.493690 AS "sv_1", -0.473989 AS "sv_2", 0.074562 AS "sv_3", -0.184752 AS "sv_4", -0.003572 AS "sv_5", -1.912964 AS "sv_6", -1.222644 AS "sv_7", 1.058113 AS "sv_8", -1.942388 AS "sv_9"
     UNION ALL
     SELECT 252 AS "sv_idx", -0.680014 AS "sv_0", 1.116144 AS "sv_1", -2.414785 AS "sv_2", -0.020651 AS "sv_3", 1.592387 AS "sv_4", -0.012289 AS "sv_5", 1.510202 AS "sv_6", 3.077718 AS "sv_7", 1.181535 AS "sv_8", -0.695245 AS "sv_9"
     UNION ALL
     SELECT 253 AS "sv_idx", -0.943258 AS "sv_0", 1.114234 AS "sv_1", -1.557613 AS "sv_2", -0.903339 AS "sv_3", 0.047159 AS "sv_4", 1.004317 AS "sv_5", -1.767834 AS "sv_6", -0.394812 AS "sv_7", 0.852514 AS "sv_8", 0.313995 AS "sv_9"
     UNION ALL
     SELECT 254 AS "sv_idx", 0.157232 AS "sv_0", 1.001761 AS "sv_1", -0.765981 AS "sv_2", -1.957951 AS "sv_3", 0.079239 AS "sv_4", -0.745090 AS "sv_5", -2.220036 AS "sv_6", 0.484603 AS "sv_7", 1.119865 AS "sv_8", -0.274533 AS "sv_9"
     UNION ALL
     SELECT 255 AS "sv_idx", 0.494035 AS "sv_0", -0.210009 AS "sv_1", 0.062904 AS "sv_2", -0.124288 AS "sv_3", -0.430038 AS "sv_4", 0.335920 AS "sv_5", -0.410665 AS "sv_6", 0.178257 AS "sv_7", 0.426438 AS "sv_8", -1.183821 AS "sv_9"
     UNION ALL
     SELECT 256 AS "sv_idx", -0.147215 AS "sv_0", 1.210914 AS "sv_1", 0.680777 AS "sv_2", -2.765225 AS "sv_3", -0.027242 AS "sv_4", -0.556619 AS "sv_5", -3.111186 AS "sv_6", -1.085431 AS "sv_7", 0.052739 AS "sv_8", -0.783902 AS "sv_9"
     UNION ALL
     SELECT 257 AS "sv_idx", 0.425630 AS "sv_0", -1.120338 AS "sv_1", 0.779076 AS "sv_2", 1.303797 AS "sv_3", -0.474686 AS "sv_4", 0.521500 AS "sv_5", -1.577283 AS "sv_6", -2.023416 AS "sv_7", 0.866766 AS "sv_8", 0.149225 AS "sv_9"
     UNION ALL
     SELECT 258 AS "sv_idx", 2.430256 AS "sv_0", -1.325422 AS "sv_1", 0.301599 AS "sv_2", -0.297465 AS "sv_3", 0.294931 AS "sv_4", -0.503931 AS "sv_5", -2.019088 AS "sv_6", 0.201202 AS "sv_7", 1.760170 AS "sv_8", -1.189890 AS "sv_9"
     UNION ALL
     SELECT 259 AS "sv_idx", -0.706692 AS "sv_0", 0.906265 AS "sv_1", 0.522010 AS "sv_2", -0.567436 AS "sv_3", 0.371505 AS "sv_4", -1.793946 AS "sv_5", -1.249749 AS "sv_6", 0.164098 AS "sv_7", 1.050645 AS "sv_8", -0.516722 AS "sv_9"
     UNION ALL
     SELECT 260 AS "sv_idx", -0.375921 AS "sv_0", 0.962862 AS "sv_1", -0.511878 AS "sv_2", -1.107499 AS "sv_3", 0.998618 AS "sv_4", 0.083255 AS "sv_5", -0.055237 AS "sv_6", 1.077001 AS "sv_7", 0.144649 AS "sv_8", -0.606782 AS "sv_9"
     UNION ALL
     SELECT 261 AS "sv_idx", 1.050982 AS "sv_0", 2.000064 AS "sv_1", 1.600926 AS "sv_2", -4.115875 AS "sv_3", -0.521525 AS "sv_4", -0.225661 AS "sv_5", -0.418142 AS "sv_6", 4.539102 AS "sv_7", 0.964586 AS "sv_8", 0.140819 AS "sv_9"
     UNION ALL
     SELECT 262 AS "sv_idx", 0.490351 AS "sv_0", 0.463471 AS "sv_1", -0.241435 AS "sv_2", -1.164617 AS "sv_3", -0.358915 AS "sv_4", -2.555086 AS "sv_5", -0.508174 AS "sv_6", 1.237751 AS "sv_7", 0.613892 AS "sv_8", -0.714418 AS "sv_9"
     UNION ALL
     SELECT 263 AS "sv_idx", 0.587243 AS "sv_0", 0.737527 AS "sv_1", -1.709445 AS "sv_2", -1.665004 AS "sv_3", 0.184956 AS "sv_4", -0.313781 AS "sv_5", 1.244601 AS "sv_6", 2.657930 AS "sv_7", -0.368818 AS "sv_8", -0.283591 AS "sv_9"
     UNION ALL
     SELECT 264 AS "sv_idx", -2.681692 AS "sv_0", 1.421767 AS "sv_1", 0.020609 AS "sv_2", 1.902269 AS "sv_3", -0.005155 AS "sv_4", 0.273220 AS "sv_5", 1.158450 AS "sv_6", 1.326729 AS "sv_7", 1.778229 AS "sv_8", -2.514627 AS "sv_9"
     UNION ALL
     SELECT 265 AS "sv_idx", -0.280304 AS "sv_0", 0.223052 AS "sv_1", 0.427076 AS "sv_2", -0.098993 AS "sv_3", -0.355189 AS "sv_4", -1.266257 AS "sv_5", -2.196628 AS "sv_6", -1.065859 AS "sv_7", 1.286574 AS "sv_8", -0.676327 AS "sv_9"
     UNION ALL
     SELECT 266 AS "sv_idx", 1.629600 AS "sv_0", -1.031516 AS "sv_1", 0.832917 AS "sv_2", 0.052847 AS "sv_3", -1.957513 AS "sv_4", -1.134850 AS "sv_5", -0.688971 AS "sv_6", 0.250688 AS "sv_7", 0.798442 AS "sv_8", 0.393102 AS "sv_9"
     UNION ALL
     SELECT 267 AS "sv_idx", -1.861946 AS "sv_0", 1.477705 AS "sv_1", 0.947595 AS "sv_2", 1.175099 AS "sv_3", -0.240742 AS "sv_4", -0.028921 AS "sv_5", 2.145436 AS "sv_6", 3.208629 AS "sv_7", 1.728591 AS "sv_8", 0.520330 AS "sv_9"
     UNION ALL
     SELECT 268 AS "sv_idx", 3.405204 AS "sv_0", -1.900950 AS "sv_1", 0.149108 AS "sv_2", -0.334577 AS "sv_3", 0.797357 AS "sv_4", 1.076963 AS "sv_5", -1.956746 AS "sv_6", 0.633336 AS "sv_7", 1.939082 AS "sv_8", -0.005785 AS "sv_9"
     UNION ALL
     SELECT 269 AS "sv_idx", 0.420004 AS "sv_0", 0.179251 AS "sv_1", 1.412653 AS "sv_2", -0.706970 AS "sv_3", -0.351617 AS "sv_4", 1.425146 AS "sv_5", -4.232407 AS "sv_6", -1.120853 AS "sv_7", 2.774668 AS "sv_8", -0.761664 AS "sv_9"
     UNION ALL
     SELECT 270 AS "sv_idx", -1.211760 AS "sv_0", 1.142924 AS "sv_1", 1.339303 AS "sv_2", -0.829514 AS "sv_3", -0.248514 AS "sv_4", 1.220032 AS "sv_5", -1.777777 AS "sv_6", -0.916606 AS "sv_7", 0.495779 AS "sv_8", 0.931445 AS "sv_9"
     UNION ALL
     SELECT 271 AS "sv_idx", -2.500623 AS "sv_0", 3.306433 AS "sv_1", -1.357628 AS "sv_2", -2.257851 AS "sv_3", 0.351750 AS "sv_4", 1.251274 AS "sv_5", 0.286536 AS "sv_6", 2.789805 AS "sv_7", 0.585697 AS "sv_8", -1.038055 AS "sv_9"
     UNION ALL
     SELECT 272 AS "sv_idx", -0.783649 AS "sv_0", 1.268499 AS "sv_1", 0.585126 AS "sv_2", -1.169966 AS "sv_3", -0.296571 AS "sv_4", 0.524310 AS "sv_5", -1.256644 AS "sv_6", 0.491206 AS "sv_7", 0.866203 AS "sv_8", 0.151408 AS "sv_9"
     UNION ALL
     SELECT 273 AS "sv_idx", 1.181623 AS "sv_0", -0.003123 AS "sv_1", -0.008265 AS "sv_2", -2.263461 AS "sv_3", 1.171386 AS "sv_4", 1.068778 AS "sv_5", -4.148750 AS "sv_6", -1.882222 AS "sv_7", 0.690726 AS "sv_8", 1.571458 AS "sv_9"
     UNION ALL
     SELECT 274 AS "sv_idx", -0.030030 AS "sv_0", 0.407792 AS "sv_1", -0.502535 AS "sv_2", -0.556883 AS "sv_3", -0.028940 AS "sv_4", 0.866424 AS "sv_5", 0.004595 AS "sv_6", 0.697456 AS "sv_7", 0.158375 AS "sv_8", 0.350515 AS "sv_9"
     UNION ALL
     SELECT 275 AS "sv_idx", 2.016849 AS "sv_0", -1.191537 AS "sv_1", -1.332499 AS "sv_2", -0.119352 AS "sv_3", 0.169375 AS "sv_4", 0.420555 AS "sv_5", -3.636702 AS "sv_6", -0.911384 AS "sv_7", 2.645946 AS "sv_8", -0.221895 AS "sv_9"
     UNION ALL
     SELECT 276 AS "sv_idx", -0.480189 AS "sv_0", 0.283936 AS "sv_1", 0.556629 AS "sv_2", 0.092997 AS "sv_3", -1.388302 AS "sv_4", 1.077759 AS "sv_5", -0.101965 AS "sv_6", -0.139620 AS "sv_7", 0.109365 AS "sv_8", -0.942505 AS "sv_9"
     UNION ALL
     SELECT 277 AS "sv_idx", 1.388965 AS "sv_0", -0.219377 AS "sv_1", -0.155087 AS "sv_2", -0.870568 AS "sv_3", 0.041480 AS "sv_4", 0.272753 AS "sv_5", 2.791250 AS "sv_6", 3.013512 AS "sv_7", -1.099987 AS "sv_8", -0.629249 AS "sv_9"
     UNION ALL
     SELECT 278 AS "sv_idx", -1.822914 AS "sv_0", 2.127483 AS "sv_1", 0.815324 AS "sv_2", -1.233640 AS "sv_3", -0.626088 AS "sv_4", 1.333181 AS "sv_5", 0.431844 AS "sv_6", 1.634338 AS "sv_7", 0.180585 AS "sv_8", 1.075449 AS "sv_9"
     UNION ALL
     SELECT 279 AS "sv_idx", -2.564241 AS "sv_0", 0.971698 AS "sv_1", 1.207732 AS "sv_2", 2.721469 AS "sv_3", 0.315557 AS "sv_4", -0.371661 AS "sv_5", 0.333491 AS "sv_6", 0.692603 AS "sv_7", 2.723102 AS "sv_8", -0.850981 AS "sv_9"
     UNION ALL
     SELECT 280 AS "sv_idx", 2.799270 AS "sv_0", 0.581931 AS "sv_1", 0.821461 AS "sv_2", -3.636125 AS "sv_3", 0.342726 AS "sv_4", 1.051786 AS "sv_5", -2.518498 AS "sv_6", 3.581586 AS "sv_7", 2.496353 AS "sv_8", -0.369940 AS "sv_9"
     UNION ALL
     SELECT 281 AS "sv_idx", -2.131999 AS "sv_0", 2.009773 AS "sv_1", -2.311953 AS "sv_2", -0.131219 AS "sv_3", 0.635414 AS "sv_4", -1.462748 AS "sv_5", 0.952564 AS "sv_6", 2.126580 AS "sv_7", 0.992856 AS "sv_8", 1.381634 AS "sv_9"
     UNION ALL
     SELECT 282 AS "sv_idx", 1.242906 AS "sv_0", -1.005002 AS "sv_1", -1.210788 AS "sv_2", 0.400974 AS "sv_3", 1.999832 AS "sv_4", 0.250824 AS "sv_5", 0.083791 AS "sv_6", 0.144726 AS "sv_7", 0.230285 AS "sv_8", -0.898009 AS "sv_9"
     UNION ALL
     SELECT 283 AS "sv_idx", 2.537229 AS "sv_0", -0.782747 AS "sv_1", 1.241015 AS "sv_2", -1.195984 AS "sv_3", 1.070763 AS "sv_4", -2.036306 AS "sv_5", 1.033490 AS "sv_6", 2.718185 AS "sv_7", 0.071555 AS "sv_8", -0.318126 AS "sv_9"
     UNION ALL
     SELECT 284 AS "sv_idx", 0.125182 AS "sv_0", 0.154520 AS "sv_1", 1.118346 AS "sv_2", -0.278761 AS "sv_3", 0.410704 AS "sv_4", -2.106026 AS "sv_5", -2.881439 AS "sv_6", -0.793141 AS "sv_7", 2.042919 AS "sv_8", -0.954313 AS "sv_9"
     UNION ALL
     SELECT 285 AS "sv_idx", 0.432954 AS "sv_0", 0.170214 AS "sv_1", 0.378248 AS "sv_2", -0.607846 AS "sv_3", -0.230470 AS "sv_4", 0.212856 AS "sv_5", 0.941869 AS "sv_6", 1.412263 AS "sv_7", -0.275412 AS "sv_8", 0.307817 AS "sv_9"
     UNION ALL
     SELECT 286 AS "sv_idx", 0.385124 AS "sv_0", 0.605404 AS "sv_1", -0.225993 AS "sv_2", -1.251343 AS "sv_3", -0.178366 AS "sv_4", -1.172041 AS "sv_5", 1.286632 AS "sv_6", 2.202183 AS "sv_7", -0.455113 AS "sv_8", 0.978269 AS "sv_9"
     UNION ALL
     SELECT 287 AS "sv_idx", -0.545240 AS "sv_0", 0.575595 AS "sv_1", -1.956758 AS "sv_2", -0.354670 AS "sv_3", 2.474450 AS "sv_4", 0.056620 AS "sv_5", -2.302198 AS "sv_6", -0.847658 AS "sv_7", 1.408119 AS "sv_8", 1.785979 AS "sv_9"
     UNION ALL
     SELECT 288 AS "sv_idx", -0.338403 AS "sv_0", -0.569141 AS "sv_1", 0.739356 AS "sv_2", 1.218281 AS "sv_3", 0.789688 AS "sv_4", -0.738560 AS "sv_5", -1.526765 AS "sv_6", -2.094215 AS "sv_7", 0.765368 AS "sv_8", 0.285353 AS "sv_9"
     UNION ALL
     SELECT 289 AS "sv_idx", -1.774119 AS "sv_0", 1.740505 AS "sv_1", 0.763915 AS "sv_2", -0.644393 AS "sv_3", -0.663538 AS "sv_4", 0.661702 AS "sv_5", -0.358720 AS "sv_6", 0.748839 AS "sv_7", 0.693020 AS "sv_8", 1.368927 AS "sv_9"
     UNION ALL
     SELECT 290 AS "sv_idx", -2.241294 AS "sv_0", 2.529173 AS "sv_1", 1.147776 AS "sv_2", -1.089895 AS "sv_3", 0.035166 AS "sv_4", 0.682084 AS "sv_5", 0.939710 AS "sv_6", 2.464758 AS "sv_7", 0.541002 AS "sv_8", -1.273629 AS "sv_9"
     UNION ALL
     SELECT 291 AS "sv_idx", 1.404970 AS "sv_0", -0.974415 AS "sv_1", 0.849006 AS "sv_2", 0.190609 AS "sv_3", 0.001805 AS "sv_4", 1.028648 AS "sv_5", -0.708030 AS "sv_6", 0.041574 AS "sv_7", 0.770541 AS "sv_8", -1.212895 AS "sv_9"
     UNION ALL
     SELECT 292 AS "sv_idx", -0.976588 AS "sv_0", 1.177742 AS "sv_1", -1.187126 AS "sv_2", -0.819757 AS "sv_3", -0.201344 AS "sv_4", -1.964172 AS "sv_5", -0.966237 AS "sv_6", 0.244402 AS "sv_7", 0.653849 AS "sv_8", 0.123949 AS "sv_9"
     UNION ALL
     SELECT 293 AS "sv_idx", -0.221645 AS "sv_0", 1.523442 AS "sv_1", 0.337923 AS "sv_2", -2.134299 AS "sv_3", -0.244784 AS "sv_4", 0.242669 AS "sv_5", -3.680486 AS "sv_6", 0.522077 AS "sv_7", 2.557341 AS "sv_8", 1.278994 AS "sv_9"
     UNION ALL
     SELECT 294 AS "sv_idx", -2.095947 AS "sv_0", 1.150604 AS "sv_1", -0.769613 AS "sv_2", 0.963906 AS "sv_3", -2.120117 AS "sv_4", -0.931899 AS "sv_5", 0.555355 AS "sv_6", 0.294667 AS "sv_7", 0.682855 AS "sv_8", 1.279327 AS "sv_9"
     UNION ALL
     SELECT 295 AS "sv_idx", -1.410429 AS "sv_0", 1.154063 AS "sv_1", 2.536169 AS "sv_2", 0.181060 AS "sv_3", -0.154567 AS "sv_4", 0.480715 AS "sv_5", -0.681255 AS "sv_6", 0.505115 AS "sv_7", 1.438894 AS "sv_8", 2.919152 AS "sv_9"
     UNION ALL
     SELECT 296 AS "sv_idx", 1.688161 AS "sv_0", 0.028733 AS "sv_1", -0.128099 AS "sv_2", -2.843398 AS "sv_3", -1.187904 AS "sv_4", -0.162873 AS "sv_5", -3.516989 AS "sv_6", -0.902031 AS "sv_7", 0.373083 AS "sv_8", 1.314013 AS "sv_9"
     UNION ALL
     SELECT 297 AS "sv_idx", -0.274159 AS "sv_0", 0.454297 AS "sv_1", -0.098533 AS "sv_2", -0.397740 AS "sv_3", 0.306364 AS "sv_4", -0.294076 AS "sv_5", -2.209386 AS "sv_6", -0.590676 AS "sv_7", 1.472956 AS "sv_8", -0.441005 AS "sv_9"
     UNION ALL
     SELECT 298 AS "sv_idx", -2.239860 AS "sv_0", 2.592465 AS "sv_1", 0.023868 AS "sv_2", -1.489614 AS "sv_3", -1.659804 AS "sv_4", 0.478356 AS "sv_5", 0.275295 AS "sv_6", 1.844154 AS "sv_7", 0.363336 AS "sv_8", -2.436730 AS "sv_9"
     UNION ALL
     SELECT 299 AS "sv_idx", -1.609529 AS "sv_0", 2.417390 AS "sv_1", 0.805215 AS "sv_2", -2.319756 AS "sv_3", 1.361029 AS "sv_4", -1.308387 AS "sv_5", 0.555984 AS "sv_6", 1.859749 AS "sv_7", -0.647798 AS "sv_8", 0.143034 AS "sv_9"
     UNION ALL
     SELECT 300 AS "sv_idx", -1.444538 AS "sv_0", 1.582483 AS "sv_1", 1.671367 AS "sv_2", -0.730412 AS "sv_3", 0.007580 AS "sv_4", -0.776542 AS "sv_5", 0.558277 AS "sv_6", 1.346087 AS "sv_7", 0.163618 AS "sv_8", -1.835422 AS "sv_9"
     UNION ALL
     SELECT 301 AS "sv_idx", 0.249740 AS "sv_0", 0.416549 AS "sv_1", 1.535324 AS "sv_2", -0.847279 AS "sv_3", 1.137312 AS "sv_4", -0.284765 AS "sv_5", -0.496481 AS "sv_6", 0.853665 AS "sv_7", 0.547944 AS "sv_8", 0.246489 AS "sv_9"
     UNION ALL
     SELECT 302 AS "sv_idx", -0.587799 AS "sv_0", 1.085911 AS "sv_1", -0.314505 AS "sv_2", -1.662052 AS "sv_3", -0.699783 AS "sv_4", 0.754400 AS "sv_5", -2.503707 AS "sv_6", -0.937198 AS "sv_7", 0.490156 AS "sv_8", 0.342475 AS "sv_9"
     UNION ALL
     SELECT 303 AS "sv_idx", 0.645174 AS "sv_0", 0.676601 AS "sv_1", 0.623600 AS "sv_2", -2.692415 AS "sv_3", 2.618876 AS "sv_4", -0.254780 AS "sv_5", -4.377183 AS "sv_6", -1.453284 AS "sv_7", 1.012170 AS "sv_8", 0.525517 AS "sv_9"
     UNION ALL
     SELECT 304 AS "sv_idx", 0.788248 AS "sv_0", -1.077184 AS "sv_1", -0.761545 AS "sv_2", 1.211603 AS "sv_3", 0.028876 AS "sv_4", -1.039658 AS "sv_5", -2.374369 AS "sv_6", -1.370921 AS "sv_7", 2.145110 AS "sv_8", -0.969137 AS "sv_9"
     UNION ALL
     SELECT 305 AS "sv_idx", 0.208121 AS "sv_0", 0.667379 AS "sv_1", 1.367823 AS "sv_2", -1.198327 AS "sv_3", 0.040085 AS "sv_4", -0.883563 AS "sv_5", -0.022232 AS "sv_6", 1.425961 AS "sv_7", 0.279646 AS "sv_8", -1.073093 AS "sv_9"
     UNION ALL
     SELECT 306 AS "sv_idx", -2.638068 AS "sv_0", 3.534578 AS "sv_1", -0.116661 AS "sv_2", -2.627048 AS "sv_3", 2.368790 AS "sv_4", -0.252480 AS "sv_5", 0.656124 AS "sv_6", 2.941389 AS "sv_7", 0.054108 AS "sv_8", -1.727522 AS "sv_9"
     UNION ALL
     SELECT 307 AS "sv_idx", -3.450124 AS "sv_0", 3.939782 AS "sv_1", 0.223140 AS "sv_2", -2.485747 AS "sv_3", 1.445034 AS "sv_4", -1.916120 AS "sv_5", 2.154141 AS "sv_6", 3.169958 AS "sv_7", -1.091671 AS "sv_8", -0.643208 AS "sv_9"
     UNION ALL
     SELECT 308 AS "sv_idx", 0.388731 AS "sv_0", 0.708288 AS "sv_1", 0.687680 AS "sv_2", -2.071353 AS "sv_3", -0.898904 AS "sv_4", 1.225651 AS "sv_5", -1.906408 AS "sv_6", -0.018616 AS "sv_7", 0.241687 AS "sv_8", -0.112338 AS "sv_9"
     UNION ALL
     SELECT 309 AS "sv_idx", -1.097684 AS "sv_0", 1.393089 AS "sv_1", 0.703417 AS "sv_2", -1.493738 AS "sv_3", -0.728405 AS "sv_4", -1.746121 AS "sv_5", -1.728488 AS "sv_6", -0.557842 AS "sv_7", 0.211010 AS "sv_8", -0.325927 AS "sv_9"
     UNION ALL
     SELECT 310 AS "sv_idx", -0.049861 AS "sv_0", 1.019062 AS "sv_1", -0.239901 AS "sv_2", -1.762634 AS "sv_3", 0.672174 AS "sv_4", 0.659128 AS "sv_5", -1.484999 AS "sv_6", 0.600685 AS "sv_7", 0.642133 AS "sv_8", 0.460004 AS "sv_9"
     UNION ALL
     SELECT 311 AS "sv_idx", 1.544946 AS "sv_0", 0.268710 AS "sv_1", -0.704356 AS "sv_2", -1.846329 AS "sv_3", -2.409714 AS "sv_4", 1.060185 AS "sv_5", 0.354163 AS "sv_6", 2.807816 AS "sv_7", 0.432534 AS "sv_8", -0.584979 AS "sv_9"
     UNION ALL
     SELECT 312 AS "sv_idx", -0.663021 AS "sv_0", 2.482822 AS "sv_1", 0.209989 AS "sv_2", -3.629548 AS "sv_3", -0.012660 AS "sv_4", -1.280495 AS "sv_5", -0.555811 AS "sv_6", 2.337371 AS "sv_7", -0.239431 AS "sv_8", 0.439867 AS "sv_9"
     UNION ALL
     SELECT 313 AS "sv_idx", 1.660700 AS "sv_0", -0.993182 AS "sv_1", -0.125264 AS "sv_2", -0.025712 AS "sv_3", -0.260143 AS "sv_4", 0.061732 AS "sv_5", -0.625445 AS "sv_6", 0.401020 AS "sv_7", 0.797458 AS "sv_8", 1.505260 AS "sv_9"
     UNION ALL
     SELECT 314 AS "sv_idx", -0.086675 AS "sv_0", 1.072224 AS "sv_1", 1.530299 AS "sv_2", -1.576202 AS "sv_3", 0.126326 AS "sv_4", 0.140919 AS "sv_5", -2.801867 AS "sv_6", 0.354561 AS "sv_7", 1.939831 AS "sv_8", 2.365016 AS "sv_9"
     UNION ALL
     SELECT 315 AS "sv_idx", -2.981845 AS "sv_0", 2.789607 AS "sv_1", 0.519357 AS "sv_2", -0.297002 AS "sv_3", -0.772840 AS "sv_4", 2.192019 AS "sv_5", 2.371957 AS "sv_6", 3.215551 AS "sv_7", 0.435250 AS "sv_8", 0.236337 AS "sv_9"
     UNION ALL
     SELECT 316 AS "sv_idx", -0.351246 AS "sv_0", 0.686483 AS "sv_1", 0.132868 AS "sv_2", -0.942889 AS "sv_3", -1.446053 AS "sv_4", 0.415124 AS "sv_5", -2.120616 AS "sv_6", -0.635386 AS "sv_7", 0.911833 AS "sv_8", -0.067925 AS "sv_9"
     UNION ALL
     SELECT 317 AS "sv_idx", -1.558801 AS "sv_0", 0.813766 AS "sv_1", -0.013681 AS "sv_2", 0.887160 AS "sv_3", 1.255606 AS "sv_4", -1.298635 AS "sv_5", 0.236513 AS "sv_6", 0.215375 AS "sv_7", 0.823693 AS "sv_8", 0.378835 AS "sv_9"
     UNION ALL
     SELECT 318 AS "sv_idx", -1.767122 AS "sv_0", 1.184160 AS "sv_1", -0.509099 AS "sv_2", 0.245887 AS "sv_3", 0.087291 AS "sv_4", -1.716992 AS "sv_5", 0.035194 AS "sv_6", 0.072496 AS "sv_7", 0.412788 AS "sv_8", 0.042496 AS "sv_9"
     UNION ALL
     SELECT 319 AS "sv_idx", 1.837459 AS "sv_0", -0.908331 AS "sv_1", 1.558325 AS "sv_2", -0.313151 AS "sv_3", -0.437700 AS "sv_4", -0.882877 AS "sv_5", -0.228246 AS "sv_6", 0.987147 AS "sv_7", 0.648665 AS "sv_8", -0.057258 AS "sv_9"
     UNION ALL
     SELECT 320 AS "sv_idx", -0.408017 AS "sv_0", 0.680944 AS "sv_1", -0.019870 AS "sv_2", -0.712753 AS "sv_3", -0.909009 AS "sv_4", 0.377715 AS "sv_5", -1.496008 AS "sv_6", -0.200299 AS "sv_7", 0.838195 AS "sv_8", -1.682855 AS "sv_9"
     UNION ALL
     SELECT 321 AS "sv_idx", -1.371768 AS "sv_0", 0.944861 AS "sv_1", -0.572092 AS "sv_2", 0.462633 AS "sv_3", 2.001663 AS "sv_4", 0.621091 AS "sv_5", -1.597567 AS "sv_6", -0.218074 AS "sv_7", 1.975999 AS "sv_8", -0.689301 AS "sv_9"
     UNION ALL
     SELECT 322 AS "sv_idx", -1.139775 AS "sv_0", 1.725284 AS "sv_1", 0.303728 AS "sv_2", -1.451476 AS "sv_3", -0.339445 AS "sv_4", 0.213285 AS "sv_5", 0.889622 AS "sv_6", 1.864787 AS "sv_7", -0.338666 AS "sv_8", 0.563929 AS "sv_9"
     UNION ALL
     SELECT 323 AS "sv_idx", 1.998214 AS "sv_0", -1.388847 AS "sv_1", 0.327921 AS "sv_2", -0.142832 AS "sv_3", -1.120785 AS "sv_4", 2.547697 AS "sv_5", -1.759038 AS "sv_6", -0.878497 AS "sv_7", 0.720918 AS "sv_8", 0.544365 AS "sv_9"
     UNION ALL
     SELECT 324 AS "sv_idx", -1.237862 AS "sv_0", 1.203999 AS "sv_1", 1.371318 AS "sv_2", -0.831447 AS "sv_3", -1.106356 AS "sv_4", 0.032150 AS "sv_5", 0.488773 AS "sv_6", 0.291267 AS "sv_7", -0.787730 AS "sv_8", 1.249816 AS "sv_9"
     UNION ALL
     SELECT 325 AS "sv_idx", 0.442618 AS "sv_0", 0.650231 AS "sv_1", -1.256712 AS "sv_2", -2.594180 AS "sv_3", 1.074646 AS "sv_4", -0.279495 AS "sv_5", -3.855834 AS "sv_6", -1.725891 AS "sv_7", 0.337320 AS "sv_8", -1.383480 AS "sv_9"
     UNION ALL
     SELECT 326 AS "sv_idx", -0.498067 AS "sv_0", 1.848932 AS "sv_1", -0.272696 AS "sv_2", -3.297554 AS "sv_3", -0.308196 AS "sv_4", 1.972422 AS "sv_5", -2.735830 AS "sv_6", -0.176185 AS "sv_7", 0.067235 AS "sv_8", 2.012281 AS "sv_9"
     UNION ALL
     SELECT 327 AS "sv_idx", -1.438337 AS "sv_0", 1.993363 AS "sv_1", 0.626181 AS "sv_2", -1.573307 AS "sv_3", 0.231375 AS "sv_4", 0.611807 AS "sv_5", 1.390001 AS "sv_6", 2.136869 AS "sv_7", -0.683862 AS "sv_8", -1.021298 AS "sv_9"
     UNION ALL
     SELECT 328 AS "sv_idx", -1.425526 AS "sv_0", 0.774339 AS "sv_1", 1.419989 AS "sv_2", 0.866557 AS "sv_3", -0.037415 AS "sv_4", 0.964727 AS "sv_5", 1.487323 AS "sv_6", 0.977157 AS "sv_7", 0.166963 AS "sv_8", -0.187884 AS "sv_9"
     UNION ALL
     SELECT 329 AS "sv_idx", -1.962561 AS "sv_0", 1.651374 AS "sv_1", 0.972507 AS "sv_2", -1.327302 AS "sv_3", -3.225186 AS "sv_4", 0.362805 AS "sv_5", -0.419877 AS "sv_6", -1.085568 AS "sv_7", -1.372993 AS "sv_8", 0.043956 AS "sv_9"
     UNION ALL
     SELECT 330 AS "sv_idx", -1.715016 AS "sv_0", 1.705483 AS "sv_1", -0.875635 AS "sv_2", -2.118045 AS "sv_3", 0.921156 AS "sv_4", -0.726115 AS "sv_5", 0.674459 AS "sv_6", -0.804919 AS "sv_7", -2.919855 AS "sv_8", 0.552427 AS "sv_9"
     UNION ALL
     SELECT 331 AS "sv_idx", -0.368699 AS "sv_0", 1.185638 AS "sv_1", 1.210300 AS "sv_2", -1.064544 AS "sv_3", -0.044962 AS "sv_4", 0.927011 AS "sv_5", 1.591867 AS "sv_6", 2.768152 AS "sv_7", -0.045935 AS "sv_8", -0.036524 AS "sv_9"
     UNION ALL
     SELECT 332 AS "sv_idx", 1.176951 AS "sv_0", -0.565315 AS "sv_1", -0.794474 AS "sv_2", -0.807118 AS "sv_3", -0.250861 AS "sv_4", -0.443221 AS "sv_5", -0.375744 AS "sv_6", -0.258381 AS "sv_7", -0.612534 AS "sv_8", 0.006702 AS "sv_9"
     UNION ALL
     SELECT 333 AS "sv_idx", -0.592478 AS "sv_0", 1.129907 AS "sv_1", 1.009589 AS "sv_2", -2.525318 AS "sv_3", -1.420899 AS "sv_4", 0.244524 AS "sv_5", -3.306473 AS "sv_6", -2.359632 AS "sv_7", -0.616392 AS "sv_8", -2.202467 AS "sv_9"
     UNION ALL
     SELECT 334 AS "sv_idx", 2.128451 AS "sv_0", -1.656084 AS "sv_1", 0.004531 AS "sv_2", 0.182202 AS "sv_3", -2.262798 AS "sv_4", -2.943059 AS "sv_5", -0.500073 AS "sv_6", -0.506979 AS "sv_7", -0.005993 AS "sv_8", 0.356628 AS "sv_9"
     UNION ALL
     SELECT 335 AS "sv_idx", -0.800924 AS "sv_0", 0.602622 AS "sv_1", 1.178377 AS "sv_2", 0.321794 AS "sv_3", -0.893038 AS "sv_4", -0.243805 AS "sv_5", 1.945666 AS "sv_6", 1.470878 AS "sv_7", -0.380220 AS "sv_8", -1.176722 AS "sv_9"
     UNION ALL
     SELECT 336 AS "sv_idx", 1.834144 AS "sv_0", -1.800300 AS "sv_1", 0.394685 AS "sv_2", 0.433284 AS "sv_3", -1.657981 AS "sv_4", -1.156439 AS "sv_5", -0.164418 AS "sv_6", -1.350682 AS "sv_7", -0.854478 AS "sv_8", -1.416498 AS "sv_9"
     UNION ALL
     SELECT 337 AS "sv_idx", 1.073936 AS "sv_0", -1.118467 AS "sv_1", -0.987720 AS "sv_2", -0.045174 AS "sv_3", 0.465139 AS "sv_4", 0.970476 AS "sv_5", 1.288032 AS "sv_6", -0.813329 AS "sv_7", -2.188357 AS "sv_8", 1.184137 AS "sv_9"
     UNION ALL
     SELECT 338 AS "sv_idx", -0.049277 AS "sv_0", 1.603128 AS "sv_1", 0.657879 AS "sv_2", -2.347600 AS "sv_3", -0.431226 AS "sv_4", 0.064629 AS "sv_5", 0.600406 AS "sv_6", 2.976956 AS "sv_7", 0.092139 AS "sv_8", -0.838759 AS "sv_9"
     UNION ALL
     SELECT 339 AS "sv_idx", -1.924309 AS "sv_0", 1.236216 AS "sv_1", 0.775559 AS "sv_2", -0.512039 AS "sv_3", -2.024612 AS "sv_4", 0.478127 AS "sv_5", -0.162645 AS "sv_6", -1.306641 AS "sv_7", -1.178976 AS "sv_8", 0.609822 AS "sv_9"
     UNION ALL
     SELECT 340 AS "sv_idx", 0.836908 AS "sv_0", -0.003113 AS "sv_1", 0.956128 AS "sv_2", -1.385592 AS "sv_3", -0.751165 AS "sv_4", 1.982933 AS "sv_5", -2.424466 AS "sv_6", -0.794828 AS "sv_7", 0.603524 AS "sv_8", -0.248975 AS "sv_9"
     UNION ALL
     SELECT 341 AS "sv_idx", 1.982011 AS "sv_0", -2.211427 AS "sv_1", -0.335135 AS "sv_2", 0.232787 AS "sv_3", -0.514929 AS "sv_4", -2.018981 AS "sv_5", -0.378010 AS "sv_6", -2.895429 AS "sv_7", -2.158186 AS "sv_8", -1.163903 AS "sv_9"
     UNION ALL
     SELECT 342 AS "sv_idx", -1.907395 AS "sv_0", 2.777863 AS "sv_1", 0.111678 AS "sv_2", -2.388667 AS "sv_3", 0.216066 AS "sv_4", 0.395042 AS "sv_5", 1.146462 AS "sv_6", 2.601650 AS "sv_7", -0.633759 AS "sv_8", 0.733782 AS "sv_9"
     UNION ALL
     SELECT 343 AS "sv_idx", 1.428648 AS "sv_0", -1.115770 AS "sv_1", -1.513938 AS "sv_2", -0.455363 AS "sv_3", -2.635314 AS "sv_4", 1.188565 AS "sv_5", -1.862803 AS "sv_6", -1.869829 AS "sv_7", -0.227389 AS "sv_8", -1.148789 AS "sv_9"
     UNION ALL
     SELECT 344 AS "sv_idx", -0.466241 AS "sv_0", 0.277225 AS "sv_1", -0.042625 AS "sv_2", 0.478449 AS "sv_3", 0.306182 AS "sv_4", -0.993709 AS "sv_5", -0.619745 AS "sv_6", 0.171663 AS "sv_7", 1.223622 AS "sv_8", -0.174393 AS "sv_9"
     UNION ALL
     SELECT 345 AS "sv_idx", -1.543461 AS "sv_0", 1.563020 AS "sv_1", -0.009024 AS "sv_2", -0.532413 AS "sv_3", -1.124743 AS "sv_4", -0.430382 AS "sv_5", 1.160188 AS "sv_6", 1.558123 AS "sv_7", -0.102477 AS "sv_8", -1.692070 AS "sv_9"
     UNION ALL
     SELECT 346 AS "sv_idx", 0.143992 AS "sv_0", -0.007326 AS "sv_1", 0.390979 AS "sv_2", -1.331103 AS "sv_3", -0.023706 AS "sv_4", -0.086113 AS "sv_5", -1.857120 AS "sv_6", -2.355487 AS "sv_7", -1.224921 AS "sv_8", -0.210721 AS "sv_9"
     UNION ALL
     SELECT 347 AS "sv_idx", -2.598929 AS "sv_0", 3.463445 AS "sv_1", -0.023906 AS "sv_2", -4.292647 AS "sv_3", 0.492410 AS "sv_4", 0.036822 AS "sv_5", 2.257645 AS "sv_6", 1.190452 AS "sv_7", -4.469301 AS "sv_8", 0.138775 AS "sv_9"
     UNION ALL
     SELECT 348 AS "sv_idx", 2.387556 AS "sv_0", -2.594020 AS "sv_1", -0.816144 AS "sv_2", 0.716492 AS "sv_3", 1.443774 AS "sv_4", -0.394504 AS "sv_5", 1.295179 AS "sv_6", -1.802228 AS "sv_7", -2.584677 AS "sv_8", -0.045584 AS "sv_9"
     UNION ALL
     SELECT 349 AS "sv_idx", -1.184171 AS "sv_0", 0.933188 AS "sv_1", 0.677740 AS "sv_2", -1.633569 AS "sv_3", -0.206484 AS "sv_4", 0.435429 AS "sv_5", -3.793216 AS "sv_6", -3.697171 AS "sv_7", -0.499893 AS "sv_8", -0.343456 AS "sv_9"
     UNION ALL
     SELECT 350 AS "sv_idx", 2.767989 AS "sv_0", -2.887271 AS "sv_1", 0.294503 AS "sv_2", 1.501834 AS "sv_3", 2.184623 AS "sv_4", -0.397962 AS "sv_5", 3.233045 AS "sv_6", 0.107273 AS "sv_7", -2.326967 AS "sv_8", -1.522666 AS "sv_9"
     UNION ALL
     SELECT 351 AS "sv_idx", -0.025523 AS "sv_0", 1.187181 AS "sv_1", -0.779050 AS "sv_2", -2.114725 AS "sv_3", -0.848241 AS "sv_4", 1.171101 AS "sv_5", 0.984662 AS "sv_6", 1.958577 AS "sv_7", -1.007272 AS "sv_8", 0.984886 AS "sv_9"
     UNION ALL
     SELECT 352 AS "sv_idx", 1.662878 AS "sv_0", -0.408722 AS "sv_1", -1.159508 AS "sv_2", -1.411683 AS "sv_3", -0.201078 AS "sv_4", -1.413037 AS "sv_5", -2.509928 AS "sv_6", -0.172642 AS "sv_7", 1.125324 AS "sv_8", -0.626561 AS "sv_9"
     UNION ALL
     SELECT 353 AS "sv_idx", -1.358471 AS "sv_0", 1.916761 AS "sv_1", -1.016608 AS "sv_2", -2.082366 AS "sv_3", 2.631478 AS "sv_4", -0.597205 AS "sv_5", -0.331523 AS "sv_6", 0.554156 AS "sv_7", -0.706377 AS "sv_8", -0.539130 AS "sv_9"
     UNION ALL
     SELECT 354 AS "sv_idx", -1.123043 AS "sv_0", 1.342440 AS "sv_1", 0.659906 AS "sv_2", -1.999727 AS "sv_3", -1.001844 AS "sv_4", 1.881842 AS "sv_5", -1.291807 AS "sv_6", -1.324783 AS "sv_7", -1.312703 AS "sv_8", 0.946601 AS "sv_9"
     UNION ALL
     SELECT 355 AS "sv_idx", -0.594587 AS "sv_0", 1.369676 AS "sv_1", 0.877953 AS "sv_2", -2.593040 AS "sv_3", 0.424603 AS "sv_4", 0.667879 AS "sv_5", -1.684506 AS "sv_6", -0.795299 AS "sv_7", -0.979715 AS "sv_8", -1.954555 AS "sv_9"
     UNION ALL
     SELECT 356 AS "sv_idx", -0.426356 AS "sv_0", 1.107155 AS "sv_1", -1.003999 AS "sv_2", -0.464555 AS "sv_3", 0.334930 AS "sv_4", 0.324729 AS "sv_5", 1.487118 AS "sv_6", 3.101970 AS "sv_7", 0.842226 AS "sv_8", -0.932318 AS "sv_9"
     UNION ALL
     SELECT 357 AS "sv_idx", 2.359184 AS "sv_0", -1.856519 AS "sv_1", 1.256771 AS "sv_2", 0.143268 AS "sv_3", 0.176867 AS "sv_4", -0.322368 AS "sv_5", -1.174072 AS "sv_6", -1.010405 AS "sv_7", 0.194393 AS "sv_8", -1.638601 AS "sv_9"
     UNION ALL
     SELECT 358 AS "sv_idx", 0.077684 AS "sv_0", 0.461836 AS "sv_1", -0.667609 AS "sv_2", -1.517880 AS "sv_3", 0.134695 AS "sv_4", 1.030484 AS "sv_5", -1.272707 AS "sv_6", -0.737287 AS "sv_7", -0.560045 AS "sv_8", 0.287143 AS "sv_9"
     UNION ALL
     SELECT 359 AS "sv_idx", 1.097936 AS "sv_0", 0.040656 AS "sv_1", -0.911045 AS "sv_2", -1.393021 AS "sv_3", -0.218440 AS "sv_4", -0.317373 AS "sv_5", -3.074984 AS "sv_6", -0.229855 AS "sv_7", 1.733402 AS "sv_8", 0.832678 AS "sv_9"
     UNION ALL
     SELECT 360 AS "sv_idx", 0.914030 AS "sv_0", -0.385815 AS "sv_1", 2.120265 AS "sv_2", -1.074814 AS "sv_3", 0.670472 AS "sv_4", -0.572071 AS "sv_5", -1.966973 AS "sv_6", -1.398672 AS "sv_7", -0.152956 AS "sv_8", -0.427271 AS "sv_9"
     UNION ALL
     SELECT 361 AS "sv_idx", 0.689986 AS "sv_0", 0.347762 AS "sv_1", 1.781123 AS "sv_2", -1.765107 AS "sv_3", 2.251021 AS "sv_4", -1.181159 AS "sv_5", -1.102815 AS "sv_6", 0.225044 AS "sv_7", -0.160310 AS "sv_8", -0.349326 AS "sv_9"
     UNION ALL
     SELECT 362 AS "sv_idx", 1.040967 AS "sv_0", -0.896017 AS "sv_1", -0.899182 AS "sv_2", -0.957206 AS "sv_3", -0.448472 AS "sv_4", -0.836368 AS "sv_5", -1.827886 AS "sv_6", -2.770494 AS "sv_7", -1.411410 AS "sv_8", -0.257140 AS "sv_9"
     UNION ALL
     SELECT 363 AS "sv_idx", 0.139210 AS "sv_0", 0.055910 AS "sv_1", 0.620311 AS "sv_2", -0.875009 AS "sv_3", 1.917547 AS "sv_4", -0.450244 AS "sv_5", 0.930922 AS "sv_6", -0.200252 AS "sv_7", -1.853918 AS "sv_8", -1.939052 AS "sv_9"
     UNION ALL
     SELECT 364 AS "sv_idx", 0.855164 AS "sv_0", -0.934582 AS "sv_1", -1.885349 AS "sv_2", -0.051859 AS "sv_3", 0.227505 AS "sv_4", -0.483269 AS "sv_5", 2.053155 AS "sv_6", -0.362082 AS "sv_7", -2.566222 AS "sv_8", 0.077759 AS "sv_9"
     UNION ALL
     SELECT 365 AS "sv_idx", -0.511581 AS "sv_0", 1.491927 AS "sv_1", -0.614580 AS "sv_2", -1.975133 AS "sv_3", -0.291699 AS "sv_4", -1.009282 AS "sv_5", 1.205990 AS "sv_6", 2.097032 AS "sv_7", -0.950790 AS "sv_8", 0.254415 AS "sv_9"
     UNION ALL
     SELECT 366 AS "sv_idx", 0.879973 AS "sv_0", -0.449295 AS "sv_1", 0.343225 AS "sv_2", -0.224473 AS "sv_3", 1.797731 AS "sv_4", -1.549817 AS "sv_5", 1.959260 AS "sv_6", 1.271211 AS "sv_7", -1.186812 AS "sv_8", 0.605879 AS "sv_9"
     UNION ALL
     SELECT 367 AS "sv_idx", 1.312271 AS "sv_0", -1.440400 AS "sv_1", 0.412432 AS "sv_2", 0.347022 AS "sv_3", 1.108338 AS "sv_4", -0.912101 AS "sv_5", 2.148540 AS "sv_6", -0.447104 AS "sv_7", -2.466320 AS "sv_8", -0.725013 AS "sv_9"
     UNION ALL
     SELECT 368 AS "sv_idx", -0.390501 AS "sv_0", -0.475462 AS "sv_1", 0.847291 AS "sv_2", 1.726086 AS "sv_3", -1.185284 AS "sv_4", 1.750336 AS "sv_5", -0.849033 AS "sv_6", -0.855584 AS "sv_7", 1.560563 AS "sv_8", -0.955622 AS "sv_9"
     UNION ALL
     SELECT 369 AS "sv_idx", -0.184160 AS "sv_0", 1.393352 AS "sv_1", -0.225524 AS "sv_2", -2.375202 AS "sv_3", -0.442866 AS "sv_4", -0.676457 AS "sv_5", -3.163405 AS "sv_6", 0.030565 AS "sv_7", 1.397528 AS "sv_8", 0.929806 AS "sv_9"
     UNION ALL
     SELECT 370 AS "sv_idx", -1.120984 AS "sv_0", 0.713444 AS "sv_1", 1.186073 AS "sv_2", -0.075300 AS "sv_3", 0.946018 AS "sv_4", -0.742854 AS "sv_5", 2.443390 AS "sv_6", 0.699090 AS "sv_7", -1.852131 AS "sv_8", -0.391551 AS "sv_9"
     UNION ALL
     SELECT 371 AS "sv_idx", -1.054467 AS "sv_0", 0.394599 AS "sv_1", 1.238242 AS "sv_2", 0.970451 AS "sv_3", -0.669607 AS "sv_4", 0.346652 AS "sv_5", 3.392596 AS "sv_6", 1.564250 AS "sv_7", -1.242243 AS "sv_8", -1.102637 AS "sv_9"
     UNION ALL
     SELECT 372 AS "sv_idx", -0.757317 AS "sv_0", 1.477212 AS "sv_1", 0.036993 AS "sv_2", -3.016469 AS "sv_3", -0.173819 AS "sv_4", -0.309609 AS "sv_5", -2.544888 AS "sv_6", -1.817151 AS "sv_7", -1.306726 AS "sv_8", -1.447145 AS "sv_9"
     UNION ALL
     SELECT 373 AS "sv_idx", -0.253598 AS "sv_0", 0.523619 AS "sv_1", -0.333898 AS "sv_2", -1.699160 AS "sv_3", 0.270537 AS "sv_4", 0.860703 AS "sv_5", -1.559971 AS "sv_6", -1.788229 AS "sv_7", -1.290758 AS "sv_8", 0.682770 AS "sv_9"
     UNION ALL
     SELECT 374 AS "sv_idx", 2.403703 AS "sv_0", -1.907151 AS "sv_1", -1.230513 AS "sv_2", 0.184932 AS "sv_3", -1.007814 AS "sv_4", 0.798517 AS "sv_5", -2.295723 AS "sv_6", -1.543203 AS "sv_7", 0.915594 AS "sv_8", -1.451065 AS "sv_9"
     UNION ALL
     SELECT 375 AS "sv_idx", -1.504006 AS "sv_0", 1.122246 AS "sv_1", -0.079766 AS "sv_2", -0.343970 AS "sv_3", -0.104416 AS "sv_4", -0.243344 AS "sv_5", -1.084117 AS "sv_6", -0.790439 AS "sv_7", 0.312173 AS "sv_8", -0.905650 AS "sv_9"
     UNION ALL
     SELECT 376 AS "sv_idx", 0.946585 AS "sv_0", -0.399403 AS "sv_1", -0.441337 AS "sv_2", -0.611780 AS "sv_3", 1.573483 AS "sv_4", -3.091728 AS "sv_5", -1.498431 AS "sv_6", -0.498327 AS "sv_7", 0.518011 AS "sv_8", -1.130983 AS "sv_9"
     UNION ALL
     SELECT 377 AS "sv_idx", 0.692739 AS "sv_0", -0.113373 AS "sv_1", 0.188895 AS "sv_2", -0.978275 AS "sv_3", -1.050732 AS "sv_4", -1.920995 AS "sv_5", -1.516992 AS "sv_6", -0.618178 AS "sv_7", 0.164676 AS "sv_8", 1.092563 AS "sv_9"
     UNION ALL
     SELECT 378 AS "sv_idx", 1.577569 AS "sv_0", -1.568232 AS "sv_1", -0.779248 AS "sv_2", -0.503561 AS "sv_3", -1.144583 AS "sv_4", -0.116107 AS "sv_5", -1.703721 AS "sv_6", -3.184129 AS "sv_7", -1.592102 AS "sv_8", -0.949039 AS "sv_9"
     UNION ALL
     SELECT 379 AS "sv_idx", 0.619235 AS "sv_0", 0.003050 AS "sv_1", -1.032467 AS "sv_2", -1.503561 AS "sv_3", 1.633787 AS "sv_4", 1.303877 AS "sv_5", -1.023220 AS "sv_6", -0.879444 AS "sv_7", -0.987419 AS "sv_8", 2.091479 AS "sv_9"
     UNION ALL
     SELECT 380 AS "sv_idx", -0.242152 AS "sv_0", -1.232000 AS "sv_1", -0.904557 AS "sv_2", 1.972111 AS "sv_3", -0.004749 AS "sv_4", -0.262166 AS "sv_5", -3.333381 AS "sv_6", -4.142853 AS "sv_7", 1.439083 AS "sv_8", 0.305147 AS "sv_9"
     UNION ALL
     SELECT 381 AS "sv_idx", 1.956339 AS "sv_0", -1.687747 AS "sv_1", 0.543923 AS "sv_2", 0.383776 AS "sv_3", -0.301454 AS "sv_4", 1.299213 AS "sv_5", 0.144872 AS "sv_6", -0.515476 AS "sv_7", -0.498105 AS "sv_8", -0.408863 AS "sv_9"
     UNION ALL
     SELECT 382 AS "sv_idx", -0.062081 AS "sv_0", 0.817813 AS "sv_1", -3.562217 AS "sv_2", -1.670871 AS "sv_3", 0.915147 AS "sv_4", -1.566007 AS "sv_5", -0.635636 AS "sv_6", 0.321244 AS "sv_7", -0.402473 AS "sv_8", -0.078130 AS "sv_9"
     UNION ALL
     SELECT 383 AS "sv_idx", 0.014819 AS "sv_0", 0.396270 AS "sv_1", -0.612279 AS "sv_2", -1.258182 AS "sv_3", 0.444234 AS "sv_4", 1.372630 AS "sv_5", -0.112432 AS "sv_6", -0.258522 AS "sv_7", -1.123691 AS "sv_8", -1.843021 AS "sv_9"
     UNION ALL
     SELECT 384 AS "sv_idx", 3.456737 AS "sv_0", -2.798536 AS "sv_1", -0.037979 AS "sv_2", 0.936076 AS "sv_3", -0.830931 AS "sv_4", -0.521484 AS "sv_5", 0.608368 AS "sv_6", 0.312771 AS "sv_7", 0.030913 AS "sv_8", 1.106937 AS "sv_9"
     UNION ALL
     SELECT 385 AS "sv_idx", -0.568526 AS "sv_0", 1.099473 AS "sv_1", 0.421175 AS "sv_2", -1.871542 AS "sv_3", 1.674134 AS "sv_4", 1.557129 AS "sv_5", -1.110721 AS "sv_6", -0.481319 AS "sv_7", -0.719856 AS "sv_8", -0.068387 AS "sv_9"
     UNION ALL
     SELECT 386 AS "sv_idx", -0.246404 AS "sv_0", 0.006008 AS "sv_1", -1.453710 AS "sv_2", 0.814147 AS "sv_3", 0.789954 AS "sv_4", 1.610682 AS "sv_5", 0.397509 AS "sv_6", 0.674593 AS "sv_7", 0.859669 AS "sv_8", 0.455650 AS "sv_9"
     UNION ALL
     SELECT 387 AS "sv_idx", 1.559279 AS "sv_0", -0.950454 AS "sv_1", -0.246310 AS "sv_2", -0.575815 AS "sv_3", -0.049953 AS "sv_4", 0.988762 AS "sv_5", -2.284848 AS "sv_6", -1.247972 AS "sv_7", 0.639322 AS "sv_8", 0.003222 AS "sv_9"
     UNION ALL
     SELECT 388 AS "sv_idx", -2.033218 AS "sv_0", 1.092739 AS "sv_1", -0.624142 AS "sv_2", 0.280926 AS "sv_3", 0.949100 AS "sv_4", -0.193741 AS "sv_5", 3.133560 AS "sv_6", 0.483121 AS "sv_7", -2.368593 AS "sv_8", 0.941232 AS "sv_9"
     UNION ALL
     SELECT 389 AS "sv_idx", -1.025035 AS "sv_0", 1.016202 AS "sv_1", 0.161542 AS "sv_2", -0.925656 AS "sv_3", 0.480246 AS "sv_4", -1.027584 AS "sv_5", 0.584447 AS "sv_6", 0.066236 AS "sv_7", -1.181094 AS "sv_8", -0.144545 AS "sv_9"
     UNION ALL
     SELECT 390 AS "sv_idx", 2.359742 AS "sv_0", -2.484733 AS "sv_1", 1.762635 AS "sv_2", 0.505061 AS "sv_3", 0.649553 AS "sv_4", -0.822479 AS "sv_5", 1.283835 AS "sv_6", -1.761732 AS "sv_7", -2.704880 AS "sv_8", 1.872097 AS "sv_9"
     UNION ALL
     SELECT 391 AS "sv_idx", -2.204791 AS "sv_0", 1.664591 AS "sv_1", 1.307435 AS "sv_2", -2.132646 AS "sv_3", -0.978430 AS "sv_4", 0.454171 AS "sv_5", 0.255064 AS "sv_6", -2.506387 AS "sv_7", -3.930482 AS "sv_8", 0.885481 AS "sv_9"
     UNION ALL
     SELECT 392 AS "sv_idx", -0.690715 AS "sv_0", 1.315148 AS "sv_1", -0.429217 AS "sv_2", -2.144156 AS "sv_3", -0.911920 AS "sv_4", -0.558340 AS "sv_5", -1.268858 AS "sv_6", -0.445038 AS "sv_7", -0.731526 AS "sv_8", 1.534169 AS "sv_9"
     UNION ALL
     SELECT 393 AS "sv_idx", -0.424381 AS "sv_0", 0.685257 AS "sv_1", 1.788183 AS "sv_2", 0.425824 AS "sv_3", 1.382237 AS "sv_4", -1.243709 AS "sv_5", 4.179320 AS "sv_6", 3.988093 AS "sv_7", -0.445676 AS "sv_8", 1.186660 AS "sv_9"
     UNION ALL
     SELECT 394 AS "sv_idx", -0.680405 AS "sv_0", 1.426208 AS "sv_1", 0.035418 AS "sv_2", -2.826660 AS "sv_3", 0.485836 AS "sv_4", -1.947352 AS "sv_5", -3.198868 AS "sv_6", -1.839987 AS "sv_7", -0.507475 AS "sv_8", 2.459666 AS "sv_9"
     UNION ALL
     SELECT 395 AS "sv_idx", -1.077300 AS "sv_0", 1.378530 AS "sv_1", 0.166770 AS "sv_2", -1.884631 AS "sv_3", -0.433196 AS "sv_4", 0.771021 AS "sv_5", 0.283146 AS "sv_6", -0.173390 AS "sv_7", -1.845533 AS "sv_8", -0.134608 AS "sv_9"
     UNION ALL
     SELECT 396 AS "sv_idx", 0.058928 AS "sv_0", 1.548501 AS "sv_1", -0.374757 AS "sv_2", -2.474966 AS "sv_3", 0.533567 AS "sv_4", 0.490379 AS "sv_5", -1.616525 AS "sv_6", 1.859120 AS "sv_7", 1.290171 AS "sv_8", 0.687146 AS "sv_9"
     UNION ALL
     SELECT 397 AS "sv_idx", -0.846548 AS "sv_0", 2.120536 AS "sv_1", 0.638942 AS "sv_2", -3.736450 AS "sv_3", -1.213579 AS "sv_4", 0.198026 AS "sv_5", -3.665593 AS "sv_6", -1.130966 AS "sv_7", -0.122421 AS "sv_8", -0.622020 AS "sv_9"
     UNION ALL
     SELECT 398 AS "sv_idx", -1.516230 AS "sv_0", 1.329821 AS "sv_1", -0.775713 AS "sv_2", 0.508179 AS "sv_3", 0.480603 AS "sv_4", 0.946843 AS "sv_5", 4.589952 AS "sv_6", 3.783518 AS "sv_7", -0.865188 AS "sv_8", 2.191014 AS "sv_9"
     UNION ALL
     SELECT 399 AS "sv_idx", -2.309576 AS "sv_0", 2.032344 AS "sv_1", -0.171370 AS "sv_2", -1.503210 AS "sv_3", -0.016654 AS "sv_4", 0.989038 AS "sv_5", 0.218782 AS "sv_6", -0.526277 AS "sv_7", -1.648766 AS "sv_8", -0.500294 AS "sv_9"
     UNION ALL
     SELECT 400 AS "sv_idx", -1.395032 AS "sv_0", 0.715347 AS "sv_1", -1.246410 AS "sv_2", 0.131946 AS "sv_3", -1.093365 AS "sv_4", -0.657179 AS "sv_5", 0.378149 AS "sv_6", -0.704406 AS "sv_7", -0.749663 AS "sv_8", 1.599328 AS "sv_9"
     UNION ALL
     SELECT 401 AS "sv_idx", 2.438772 AS "sv_0", -1.661028 AS "sv_1", -1.497360 AS "sv_2", -0.075190 AS "sv_3", 0.178647 AS "sv_4", -0.997786 AS "sv_5", -1.188524 AS "sv_6", -0.360560 AS "sv_7", 0.591629 AS "sv_8", -0.673836 AS "sv_9"
     UNION ALL
     SELECT 402 AS "sv_idx", -1.716952 AS "sv_0", 1.958056 AS "sv_1", -1.845000 AS "sv_2", -2.456126 AS "sv_3", -1.954561 AS "sv_4", 2.746056 AS "sv_5", -1.505446 AS "sv_6", -1.327960 AS "sv_7", -1.399273 AS "sv_8", -1.374292 AS "sv_9"
     UNION ALL
     SELECT 403 AS "sv_idx", 2.243731 AS "sv_0", -2.021375 AS "sv_1", 0.948310 AS "sv_2", 0.042177 AS "sv_3", 2.801809 AS "sv_4", 0.977779 AS "sv_5", -0.672503 AS "sv_6", -1.861983 AS "sv_7", -1.134576 AS "sv_8", -0.775442 AS "sv_9"
     UNION ALL
     SELECT 404 AS "sv_idx", -1.050659 AS "sv_0", 0.920640 AS "sv_1", -0.455125 AS "sv_2", -0.050130 AS "sv_3", -0.191627 AS "sv_4", 0.584329 AS "sv_5", 0.943031 AS "sv_6", 1.021308 AS "sv_7", -0.010797 AS "sv_8", -1.586949 AS "sv_9"
     UNION ALL
     SELECT 405 AS "sv_idx", -1.596020 AS "sv_0", 2.003213 AS "sv_1", -0.270127 AS "sv_2", -2.627735 AS "sv_3", 0.826210 AS "sv_4", 0.640398 AS "sv_5", 0.167299 AS "sv_6", -0.292954 AS "sv_7", -2.373216 AS "sv_8", 0.631081 AS "sv_9"
     UNION ALL
     SELECT 406 AS "sv_idx", 2.685060 AS "sv_0", -2.306334 AS "sv_1", -1.014670 AS "sv_2", 0.906395 AS "sv_3", -0.062203 AS "sv_4", -1.581571 AS "sv_5", -0.809268 AS "sv_6", -0.604996 AS "sv_7", 0.751147 AS "sv_8", -0.049861 AS "sv_9"
     UNION ALL
     SELECT 407 AS "sv_idx", 0.843142 AS "sv_0", -0.797237 AS "sv_1", -0.704312 AS "sv_2", -0.788347 AS "sv_3", -0.645474 AS "sv_4", -1.142964 AS "sv_5", -0.323941 AS "sv_6", -1.999762 AS "sv_7", -2.133728 AS "sv_8", 1.110434 AS "sv_9"
     UNION ALL
     SELECT 408 AS "sv_idx", 1.315356 AS "sv_0", -1.268642 AS "sv_1", 1.433457 AS "sv_2", -0.244444 AS "sv_3", -0.054702 AS "sv_4", 0.398208 AS "sv_5", 0.496959 AS "sv_6", -1.374231 AS "sv_7", -2.047512 AS "sv_8", -0.407573 AS "sv_9"
     UNION ALL
     SELECT 409 AS "sv_idx", 0.365485 AS "sv_0", 1.000724 AS "sv_1", 0.492872 AS "sv_2", -2.667000 AS "sv_3", 2.644866 AS "sv_4", 0.112363 AS "sv_5", -4.855680 AS "sv_6", -1.163364 AS "sv_7", 1.808733 AS "sv_8", -1.585889 AS "sv_9"
     UNION ALL
     SELECT 410 AS "sv_idx", 3.395908 AS "sv_0", -4.726336 AS "sv_1", 0.970956 AS "sv_2", 2.775282 AS "sv_3", -0.056961 AS "sv_4", -0.984318 AS "sv_5", 5.312751 AS "sv_6", -2.457456 AS "sv_7", -5.750276 AS "sv_8", 1.529138 AS "sv_9"
     UNION ALL
     SELECT 411 AS "sv_idx", -0.630983 AS "sv_0", 0.100727 AS "sv_1", 0.787364 AS "sv_2", 1.335399 AS "sv_3", -0.841484 AS "sv_4", -1.216389 AS "sv_5", 4.232335 AS "sv_6", 2.492998 AS "sv_7", -1.049925 AS "sv_8", 0.061025 AS "sv_9"
     UNION ALL
     SELECT 412 AS "sv_idx", 1.390966 AS "sv_0", -0.896689 AS "sv_1", -1.247617 AS "sv_2", -0.430777 AS "sv_3", 1.034127 AS "sv_4", 1.273097 AS "sv_5", -0.292299 AS "sv_6", -0.375909 AS "sv_7", -0.520944 AS "sv_8", 0.879137 AS "sv_9"
     UNION ALL
     SELECT 413 AS "sv_idx", 0.913390 AS "sv_0", -1.523942 AS "sv_1", 0.676890 AS "sv_2", 1.751124 AS "sv_3", 1.571081 AS "sv_4", 0.663319 AS "sv_5", 2.092278 AS "sv_6", 0.085911 AS "sv_7", -0.770983 AS "sv_8", -1.220009 AS "sv_9"
     UNION ALL
     SELECT 414 AS "sv_idx", -1.189372 AS "sv_0", 0.508963 AS "sv_1", -1.136309 AS "sv_2", 0.861068 AS "sv_3", -0.316287 AS "sv_4", 1.361781 AS "sv_5", 2.468077 AS "sv_6", 1.053139 AS "sv_7", -0.807958 AS "sv_8", -0.978575 AS "sv_9"
     UNION ALL
     SELECT 415 AS "sv_idx", 1.693580 AS "sv_0", -1.516862 AS "sv_1", 1.418013 AS "sv_2", 0.878757 AS "sv_3", 0.102727 AS "sv_4", -1.069586 AS "sv_5", -1.161112 AS "sv_6", -0.490669 AS "sv_7", 1.296976 AS "sv_8", 0.492567 AS "sv_9"
     UNION ALL
     SELECT 416 AS "sv_idx", -0.160628 AS "sv_0", 0.047374 AS "sv_1", -0.077246 AS "sv_2", -0.048605 AS "sv_3", -0.631664 AS "sv_4", 0.464980 AS "sv_5", -1.394722 AS "sv_6", -0.969089 AS "sv_7", 0.571620 AS "sv_8", -1.218962 AS "sv_9"
     UNION ALL
     SELECT 417 AS "sv_idx", -1.781881 AS "sv_0", 2.821301 AS "sv_1", -1.161074 AS "sv_2", -2.779889 AS "sv_3", -1.292584 AS "sv_4", -0.260961 AS "sv_5", 1.000599 AS "sv_6", 2.494344 AS "sv_7", -0.905099 AS "sv_8", -1.923547 AS "sv_9"
     UNION ALL
     SELECT 418 AS "sv_idx", 0.836757 AS "sv_0", -0.635383 AS "sv_1", -0.382955 AS "sv_2", -0.140527 AS "sv_3", -0.352297 AS "sv_4", 0.739451 AS "sv_5", -0.510863 AS "sv_6", -0.581347 AS "sv_7", -0.182062 AS "sv_8", 0.952290 AS "sv_9"
     UNION ALL
     SELECT 419 AS "sv_idx", 1.647095 AS "sv_0", -1.059894 AS "sv_1", 0.956108 AS "sv_2", -0.538306 AS "sv_3", 0.263870 AS "sv_4", -0.427735 AS "sv_5", -0.034545 AS "sv_6", -0.333104 AS "sv_7", -0.863283 AS "sv_8", -0.249016 AS "sv_9"
     UNION ALL
     SELECT 420 AS "sv_idx", 1.525042 AS "sv_0", -0.624652 AS "sv_1", 0.781282 AS "sv_2", -0.544031 AS "sv_3", 2.380167 AS "sv_4", 2.097644 AS "sv_5", -0.296173 AS "sv_6", 0.865777 AS "sv_7", 0.460307 AS "sv_8", -0.106807 AS "sv_9"
     UNION ALL
     SELECT 421 AS "sv_idx", -1.002824 AS "sv_0", 0.113000 AS "sv_1", -0.014534 AS "sv_2", 0.113410 AS "sv_3", 0.110302 AS "sv_4", 0.116445 AS "sv_5", 0.688857 AS "sv_6", -1.817441 AS "sv_7", -2.097291 AS "sv_8", 0.591760 AS "sv_9"
     UNION ALL
     SELECT 422 AS "sv_idx", -0.399939 AS "sv_0", 0.997352 AS "sv_1", 0.397762 AS "sv_2", -1.347134 AS "sv_3", 1.979468 AS "sv_4", -1.612685 AS "sv_5", -0.424502 AS "sv_6", 0.637599 AS "sv_7", -0.047908 AS "sv_8", 1.010011 AS "sv_9"
     UNION ALL
     SELECT 423 AS "sv_idx", -0.448424 AS "sv_0", 1.813280 AS "sv_1", -0.013437 AS "sv_2", -3.040720 AS "sv_3", -0.009164 AS "sv_4", -0.302885 AS "sv_5", -1.353653 AS "sv_6", 0.821078 AS "sv_7", -0.287475 AS "sv_8", 1.275810 AS "sv_9"
     UNION ALL
     SELECT 424 AS "sv_idx", 0.837030 AS "sv_0", -0.525332 AS "sv_1", 1.906174 AS "sv_2", -0.549455 AS "sv_3", 0.080892 AS "sv_4", 1.178284 AS "sv_5", -0.594349 AS "sv_6", -0.770910 AS "sv_7", -0.590397 AS "sv_8", 0.207437 AS "sv_9"
     UNION ALL
     SELECT 425 AS "sv_idx", 0.420960 AS "sv_0", 0.508218 AS "sv_1", 0.792587 AS "sv_2", -1.824423 AS "sv_3", -0.534459 AS "sv_4", -0.802783 AS "sv_5", -2.398403 AS "sv_6", -0.576551 AS "sv_7", 0.458008 AS "sv_8", 1.340859 AS "sv_9"
     UNION ALL
     SELECT 426 AS "sv_idx", -0.702034 AS "sv_0", 1.456578 AS "sv_1", 2.196123 AS "sv_2", -2.388824 AS "sv_3", -1.144011 AS "sv_4", 0.348674 AS "sv_5", -1.304348 AS "sv_6", -0.294754 AS "sv_7", -0.759602 AS "sv_8", 0.166117 AS "sv_9"
     UNION ALL
     SELECT 427 AS "sv_idx", 2.199625 AS "sv_0", -1.859941 AS "sv_1", -0.749826 AS "sv_2", -0.111706 AS "sv_3", 0.301875 AS "sv_4", 0.384816 AS "sv_5", -0.456848 AS "sv_6", -1.481503 AS "sv_7", -1.144430 AS "sv_8", 0.685767 AS "sv_9"
     UNION ALL
     SELECT 428 AS "sv_idx", 0.202940 AS "sv_0", -0.808499 AS "sv_1", 1.145385 AS "sv_2", 1.459319 AS "sv_3", 0.495518 AS "sv_4", 0.267556 AS "sv_5", -2.223202 AS "sv_6", -1.521115 AS "sv_7", 2.119863 AS "sv_8", 0.315520 AS "sv_9"
     UNION ALL
     SELECT 429 AS "sv_idx", -0.342644 AS "sv_0", 1.516328 AS "sv_1", -0.808953 AS "sv_2", -2.986398 AS "sv_3", -0.206926 AS "sv_4", -0.984959 AS "sv_5", -3.202965 AS "sv_6", -0.803445 AS "sv_7", 0.236055 AS "sv_8", -0.200328 AS "sv_9"
     UNION ALL
     SELECT 430 AS "sv_idx", 0.230021 AS "sv_0", 0.715584 AS "sv_1", -2.009058 AS "sv_2", -2.033341 AS "sv_3", -0.233824 AS "sv_4", -0.022355 AS "sv_5", -0.913630 AS "sv_6", 0.090283 AS "sv_7", -0.639921 AS "sv_8", 2.366142 AS "sv_9"
     UNION ALL
     SELECT 431 AS "sv_idx", 1.157282 AS "sv_0", -0.744410 AS "sv_1", -0.494078 AS "sv_2", -0.925313 AS "sv_3", -1.220910 AS "sv_4", 0.252087 AS "sv_5", -1.883630 AS "sv_6", -1.857504 AS "sv_7", -0.544543 AS "sv_8", 0.125882 AS "sv_9"
     UNION ALL
     SELECT 432 AS "sv_idx", -1.300768 AS "sv_0", 1.253757 AS "sv_1", -0.185257 AS "sv_2", -1.588758 AS "sv_3", -0.978292 AS "sv_4", -0.579306 AS "sv_5", 1.502843 AS "sv_6", -0.278844 AS "sv_7", -2.933677 AS "sv_8", -1.318227 AS "sv_9"
     UNION ALL
     SELECT 433 AS "sv_idx", -0.577713 AS "sv_0", 1.881881 AS "sv_1", -0.578280 AS "sv_2", -1.532785 AS "sv_3", 0.603049 AS "sv_4", 0.092111 AS "sv_5", 1.846701 AS "sv_6", 4.318680 AS "sv_7", 0.688530 AS "sv_8", -0.573617 AS "sv_9"
     UNION ALL
     SELECT 434 AS "sv_idx", 1.249528 AS "sv_0", -1.284906 AS "sv_1", 0.041167 AS "sv_2", 0.064035 AS "sv_3", -0.568025 AS "sv_4", 0.102174 AS "sv_5", 0.970631 AS "sv_6", -0.965027 AS "sv_7", -1.924011 AS "sv_8", 0.122114 AS "sv_9"
     UNION ALL
     SELECT 435 AS "sv_idx", -1.695885 AS "sv_0", 0.767787 AS "sv_1", -2.952712 AS "sv_2", 1.043369 AS "sv_3", 0.294529 AS "sv_4", 2.097126 AS "sv_5", 3.601173 AS "sv_6", 1.442396 AS "sv_7", -1.436718 AS "sv_8", -0.900223 AS "sv_9"
     UNION ALL
     SELECT 436 AS "sv_idx", -1.711239 AS "sv_0", 1.625805 AS "sv_1", 0.416977 AS "sv_2", -0.554687 AS "sv_3", 1.159506 AS "sv_4", -1.100255 AS "sv_5", 0.424755 AS "sv_6", 0.970172 AS "sv_7", 0.143377 AS "sv_8", -0.394026 AS "sv_9"
     UNION ALL
     SELECT 437 AS "sv_idx", 1.604590 AS "sv_0", -0.854264 AS "sv_1", -0.383311 AS "sv_2", -0.909406 AS "sv_3", 1.731558 AS "sv_4", 1.126357 AS "sv_5", -4.491548 AS "sv_6", -2.245040 AS "sv_7", 1.772808 AS "sv_8", 0.217052 AS "sv_9"
     UNION ALL
     SELECT 438 AS "sv_idx", 2.191922 AS "sv_0", -2.012156 AS "sv_1", 0.883058 AS "sv_2", 0.252436 AS "sv_3", -1.673652 AS "sv_4", 2.246760 AS "sv_5", 0.900941 AS "sv_6", -0.945924 AS "sv_7", -1.784077 AS "sv_8", -1.030525 AS "sv_9"
     UNION ALL
     SELECT 439 AS "sv_idx", -1.353837 AS "sv_0", 1.323848 AS "sv_1", -0.129511 AS "sv_2", -0.955107 AS "sv_3", -0.462834 AS "sv_4", -0.118800 AS "sv_5", 0.338045 AS "sv_6", 0.190569 AS "sv_7", -0.807251 AS "sv_8", -1.045101 AS "sv_9"
     UNION ALL
     SELECT 440 AS "sv_idx", 1.938977 AS "sv_0", -1.403465 AS "sv_1", 0.327778 AS "sv_2", -0.726137 AS "sv_3", -0.444967 AS "sv_4", -0.192761 AS "sv_5", -1.546664 AS "sv_6", -1.811917 AS "sv_7", -0.775210 AS "sv_8", 1.034971 AS "sv_9"
     UNION ALL
     SELECT 441 AS "sv_idx", -1.756621 AS "sv_0", 1.918622 AS "sv_1", -1.183959 AS "sv_2", -3.078268 AS "sv_3", 0.673156 AS "sv_4", -0.324568 AS "sv_5", -1.053652 AS "sv_6", -2.246312 AS "sv_7", -3.162562 AS "sv_8", 0.037965 AS "sv_9"
     UNION ALL
     SELECT 442 AS "sv_idx", -1.333548 AS "sv_0", 2.215359 AS "sv_1", 0.095531 AS "sv_2", -2.072051 AS "sv_3", 0.708004 AS "sv_4", 1.718346 AS "sv_5", -0.109199 AS "sv_6", 1.877756 AS "sv_7", 0.224044 AS "sv_8", 0.416695 AS "sv_9"
     UNION ALL
     SELECT 443 AS "sv_idx", -0.124371 AS "sv_0", 0.566715 AS "sv_1", 2.284151 AS "sv_2", -1.247280 AS "sv_3", -0.860267 AS "sv_4", -2.447528 AS "sv_5", 0.475969 AS "sv_6", 0.300572 AS "sv_7", -1.219543 AS "sv_8", 0.566042 AS "sv_9"
     UNION ALL
     SELECT 444 AS "sv_idx", -0.737038 AS "sv_0", 1.365623 AS "sv_1", 0.889450 AS "sv_2", -1.409753 AS "sv_3", -1.066633 AS "sv_4", 1.028255 AS "sv_5", -0.254039 AS "sv_6", 1.117080 AS "sv_7", 0.179796 AS "sv_8", -1.346715 AS "sv_9"
     UNION ALL
     SELECT 445 AS "sv_idx", -0.881120 AS "sv_0", 0.790942 AS "sv_1", -0.066693 AS "sv_2", 0.038334 AS "sv_3", -0.281021 AS "sv_4", -1.655300 AS "sv_5", 1.293509 AS "sv_6", 1.273267 AS "sv_7", -0.099450 AS "sv_8", -0.026552 AS "sv_9"
     UNION ALL
     SELECT 446 AS "sv_idx", 0.854517 AS "sv_0", -0.615992 AS "sv_1", 0.891340 AS "sv_2", -0.791705 AS "sv_3", -0.388597 AS "sv_4", 1.312448 AS "sv_5", 1.279565 AS "sv_6", -0.540561 AS "sv_7", -2.519307 AS "sv_8", -0.107321 AS "sv_9"
     UNION ALL
     SELECT 447 AS "sv_idx", 2.380469 AS "sv_0", -1.822933 AS "sv_1", -1.425754 AS "sv_2", 0.439424 AS "sv_3", -0.616974 AS "sv_4", 1.408122 AS "sv_5", -0.165467 AS "sv_6", 0.055906 AS "sv_7", 0.319888 AS "sv_8", 0.152358 AS "sv_9"
     UNION ALL
     SELECT 448 AS "sv_idx", -0.192427 AS "sv_0", 0.721828 AS "sv_1", -0.424070 AS "sv_2", -0.827316 AS "sv_3", 1.779366 AS "sv_4", 0.292905 AS "sv_5", -0.662489 AS "sv_6", 0.767101 AS "sv_7", 0.706801 AS "sv_8", -0.291681 AS "sv_9"
     UNION ALL
     SELECT 449 AS "sv_idx", 1.209266 AS "sv_0", -0.520018 AS "sv_1", -0.349332 AS "sv_2", -1.190235 AS "sv_3", -1.581484 AS "sv_4", 2.592288 AS "sv_5", -2.309868 AS "sv_6", -1.427914 AS "sv_7", 0.050935 AS "sv_8", -2.385632 AS "sv_9"
     UNION ALL
     SELECT 450 AS "sv_idx", 1.663149 AS "sv_0", -1.733452 AS "sv_1", -0.200196 AS "sv_2", 0.267319 AS "sv_3", -1.846989 AS "sv_4", 1.780668 AS "sv_5", 1.541405 AS "sv_6", -1.003177 AS "sv_7", -2.426403 AS "sv_8", 0.598082 AS "sv_9"
     UNION ALL
     SELECT 451 AS "sv_idx", -0.347371 AS "sv_0", 1.087068 AS "sv_1", -0.166836 AS "sv_2", -1.247841 AS "sv_3", 1.143044 AS "sv_4", -1.309231 AS "sv_5", 0.093007 AS "sv_6", 1.500720 AS "sv_7", 0.245200 AS "sv_8", 0.143448 AS "sv_9"
     UNION ALL
     SELECT 452 AS "sv_idx", 1.463003 AS "sv_0", -0.403462 AS "sv_1", 0.942110 AS "sv_2", -1.420543 AS "sv_3", -0.582204 AS "sv_4", -0.044079 AS "sv_5", -2.652290 AS "sv_6", -0.774051 AS "sv_7", 0.761908 AS "sv_8", -0.370115 AS "sv_9"
     UNION ALL
     SELECT 453 AS "sv_idx", -1.639827 AS "sv_0", 2.261112 AS "sv_1", 0.854515 AS "sv_2", -1.994019 AS "sv_3", 1.778402 AS "sv_4", 0.280624 AS "sv_5", 0.758678 AS "sv_6", 1.730363 AS "sv_7", -0.704293 AS "sv_8", 1.421781 AS "sv_9"
     UNION ALL
     SELECT 454 AS "sv_idx", 2.839744 AS "sv_0", -2.359947 AS "sv_1", 0.637392 AS "sv_2", 0.030624 AS "sv_3", 0.736537 AS "sv_4", -2.108314 AS "sv_5", -1.549006 AS "sv_6", -1.954820 AS "sv_7", -0.384119 AS "sv_8", -0.072162 AS "sv_9"
     UNION ALL
     SELECT 455 AS "sv_idx", -1.351285 AS "sv_0", 2.257728 AS "sv_1", -1.076952 AS "sv_2", -3.212619 AS "sv_3", -0.814180 AS "sv_4", 0.536087 AS "sv_5", -0.561041 AS "sv_6", 0.188568 AS "sv_7", -1.698873 AS "sv_8", 0.019493 AS "sv_9"
     UNION ALL
     SELECT 456 AS "sv_idx", 0.517249 AS "sv_0", 0.444634 AS "sv_1", -0.121784 AS "sv_2", -2.266261 AS "sv_3", -0.202758 AS "sv_4", 0.369031 AS "sv_5", -3.308891 AS "sv_6", -1.595848 AS "sv_7", 0.142539 AS "sv_8", 1.218553 AS "sv_9"
     UNION ALL
     SELECT 457 AS "sv_idx", 0.870462 AS "sv_0", -0.754389 AS "sv_1", -0.651278 AS "sv_2", -0.694211 AS "sv_3", -0.638751 AS "sv_4", 0.342865 AS "sv_5", -0.372665 AS "sv_6", -1.653149 AS "sv_7", -1.708385 AS "sv_8", -0.624232 AS "sv_9"
     UNION ALL
     SELECT 458 AS "sv_idx", 1.386427 AS "sv_0", -0.577366 AS "sv_1", 1.044167 AS "sv_2", -1.085854 AS "sv_3", 0.162336 AS "sv_4", -0.159894 AS "sv_5", -1.258687 AS "sv_6", -0.532938 AS "sv_7", -0.187815 AS "sv_8", -1.509211 AS "sv_9"
     UNION ALL
     SELECT 459 AS "sv_idx", -1.281919 AS "sv_0", 0.653727 AS "sv_1", 1.145229 AS "sv_2", -1.359619 AS "sv_3", 1.887507 AS "sv_4", -0.806014 AS "sv_5", -1.331643 AS "sv_6", -3.506868 AS "sv_7", -2.642150 AS "sv_8", -0.074771 AS "sv_9"
     UNION ALL
     SELECT 460 AS "sv_idx", 0.483960 AS "sv_0", 0.314464 AS "sv_1", -0.171377 AS "sv_2", -1.422693 AS "sv_3", -0.958888 AS "sv_4", -0.669246 AS "sv_5", -0.600741 AS "sv_6", 0.248812 AS "sv_7", -0.359954 AS "sv_8", 0.765934 AS "sv_9"
     UNION ALL
     SELECT 461 AS "sv_idx", -0.078952 AS "sv_0", 0.615400 AS "sv_1", -0.066728 AS "sv_2", -1.566873 AS "sv_3", -0.185604 AS "sv_4", 0.389901 AS "sv_5", -0.068560 AS "sv_6", -0.088780 AS "sv_7", -1.259421 AS "sv_8", -0.103456 AS "sv_9"
     UNION ALL
     SELECT 462 AS "sv_idx", 1.824189 AS "sv_0", -1.818196 AS "sv_1", 0.282680 AS "sv_2", 0.055563 AS "sv_3", -0.605597 AS "sv_4", -1.179423 AS "sv_5", -0.870066 AS "sv_6", -2.300166 AS "sv_7", -1.257459 AS "sv_8", 1.124980 AS "sv_9"
     UNION ALL
     SELECT 463 AS "sv_idx", -0.986950 AS "sv_0", 0.423456 AS "sv_1", -1.267543 AS "sv_2", 0.608778 AS "sv_3", 0.474760 AS "sv_4", -1.392295 AS "sv_5", 2.709930 AS "sv_6", 1.036649 AS "sv_7", -1.296397 AS "sv_8", 0.544713 AS "sv_9"
     UNION ALL
     SELECT 464 AS "sv_idx", 0.595527 AS "sv_0", 0.359386 AS "sv_1", -1.624720 AS "sv_2", -1.606982 AS "sv_3", -0.276506 AS "sv_4", 0.028590 AS "sv_5", -1.653218 AS "sv_6", -0.021080 AS "sv_7", 0.330138 AS "sv_8", -0.538024 AS "sv_9"
     UNION ALL
     SELECT 465 AS "sv_idx", 0.833390 AS "sv_0", -0.749257 AS "sv_1", 3.581633 AS "sv_2", -0.472425 AS "sv_3", 0.160584 AS "sv_4", 2.348272 AS "sv_5", -0.194125 AS "sv_6", -1.341872 AS "sv_7", -1.438681 AS "sv_8", 0.529848 AS "sv_9"
     UNION ALL
     SELECT 466 AS "sv_idx", 1.208022 AS "sv_0", -0.876819 AS "sv_1", 0.192240 AS "sv_2", -0.435681 AS "sv_3", 0.136990 AS "sv_4", -2.038342 AS "sv_5", -0.905942 AS "sv_6", -1.088101 AS "sv_7", -0.493453 AS "sv_8", 2.859281 AS "sv_9"
     UNION ALL
     SELECT 467 AS "sv_idx", 1.616085 AS "sv_0", -1.427746 AS "sv_1", 0.293805 AS "sv_2", 0.260568 AS "sv_3", 0.495963 AS "sv_4", -0.669562 AS "sv_5", 1.639063 AS "sv_6", 0.070358 AS "sv_7", -1.591509 AS "sv_8", -1.634912 AS "sv_9"
     UNION ALL
     SELECT 468 AS "sv_idx", -0.666395 AS "sv_0", 1.520869 AS "sv_1", -0.780822 AS "sv_2", -2.747286 AS "sv_3", 1.564275 AS "sv_4", 0.936418 AS "sv_5", -2.008567 AS "sv_6", -0.779365 AS "sv_7", -0.748064 AS "sv_8", -2.700701 AS "sv_9"
     UNION ALL
     SELECT 469 AS "sv_idx", 2.619734 AS "sv_0", -2.027038 AS "sv_1", -0.963508 AS "sv_2", 0.308210 AS "sv_3", 0.014577 AS "sv_4", -0.873892 AS "sv_5", 0.355407 AS "sv_6", -0.014436 AS "sv_7", -0.409781 AS "sv_8", -1.148148 AS "sv_9"
     UNION ALL
     SELECT 470 AS "sv_idx", 1.359977 AS "sv_0", -1.356834 AS "sv_1", 1.012944 AS "sv_2", -0.235565 AS "sv_3", 0.759198 AS "sv_4", 0.499717 AS "sv_5", 0.536808 AS "sv_6", -1.558403 AS "sv_7", -2.246803 AS "sv_8", 1.778479 AS "sv_9"
     UNION ALL
     SELECT 471 AS "sv_idx", -1.185531 AS "sv_0", 1.987772 AS "sv_1", -0.105198 AS "sv_2", -2.553442 AS "sv_3", -0.047150 AS "sv_4", -1.891516 AS "sv_5", -0.419225 AS "sv_6", 0.596228 AS "sv_7", -0.976781 AS "sv_8", 0.260173 AS "sv_9"
     UNION ALL
     SELECT 472 AS "sv_idx", -0.512480 AS "sv_0", 0.725415 AS "sv_1", -0.563514 AS "sv_2", -1.540632 AS "sv_3", 0.155584 AS "sv_4", 0.933107 AS "sv_5", -0.229006 AS "sv_6", -0.885086 AS "sv_7", -1.721017 AS "sv_8", -0.869898 AS "sv_9"
     UNION ALL
     SELECT 473 AS "sv_idx", -1.099317 AS "sv_0", 1.230934 AS "sv_1", -1.504545 AS "sv_2", -1.082366 AS "sv_3", -0.721437 AS "sv_4", 1.068467 AS "sv_5", 1.120957 AS "sv_6", 0.712433 AS "sv_7", -1.289284 AS "sv_8", 0.425502 AS "sv_9"
     UNION ALL
     SELECT 474 AS "sv_idx", 0.699351 AS "sv_0", -0.464832 AS "sv_1", 1.822920 AS "sv_2", -1.094781 AS "sv_3", -1.210951 AS "sv_4", -0.917540 AS "sv_5", -1.062292 AS "sv_6", -1.892771 AS "sv_7", -1.510183 AS "sv_8", 1.735914 AS "sv_9"
     UNION ALL
     SELECT 475 AS "sv_idx", 1.769101 AS "sv_0", -1.948926 AS "sv_1", 1.408795 AS "sv_2", 0.046379 AS "sv_3", -2.017729 AS "sv_4", -0.661429 AS "sv_5", 1.713032 AS "sv_6", -1.766127 AS "sv_7", -3.457777 AS "sv_8", -2.284432 AS "sv_9"
     UNION ALL
     SELECT 476 AS "sv_idx", -0.851946 AS "sv_0", -0.841877 AS "sv_1", -1.278393 AS "sv_2", 1.064688 AS "sv_3", 2.519988 AS "sv_4", 0.305629 AS "sv_5", 1.771570 AS "sv_6", -3.218504 AS "sv_7", -3.686130 AS "sv_8", 0.060356 AS "sv_9"
     UNION ALL
     SELECT 477 AS "sv_idx", -1.252532 AS "sv_0", 1.297264 AS "sv_1", 0.911399 AS "sv_2", -1.088060 AS "sv_3", -1.215622 AS "sv_4", -1.122532 AS "sv_5", 0.970299 AS "sv_6", 0.471293 AS "sv_7", -1.332426 AS "sv_8", -0.584228 AS "sv_9"
     UNION ALL
     SELECT 478 AS "sv_idx", -0.152853 AS "sv_0", 1.112133 AS "sv_1", 1.772862 AS "sv_2", -1.647399 AS "sv_3", -0.794545 AS "sv_4", -1.137358 AS "sv_5", 1.311944 AS "sv_6", 2.130675 AS "sv_7", -0.805120 AS "sv_8", 0.348623 AS "sv_9"
     UNION ALL
     SELECT 479 AS "sv_idx", 1.180017 AS "sv_0", -0.210134 AS "sv_1", -0.189211 AS "sv_2", -1.669295 AS "sv_3", 1.764810 AS "sv_4", 0.728918 AS "sv_5", -3.293040 AS "sv_6", -1.449939 AS "sv_7", 0.663390 AS "sv_8", 0.592305 AS "sv_9"
     UNION ALL
     SELECT 480 AS "sv_idx", -2.316623 AS "sv_0", 3.206141 AS "sv_1", -0.114573 AS "sv_2", -2.851919 AS "sv_3", 0.244549 AS "sv_4", -1.556498 AS "sv_5", 1.129460 AS "sv_6", 2.467455 AS "sv_7", -1.062557 AS "sv_8", 0.102623 AS "sv_9"
     UNION ALL
     SELECT 481 AS "sv_idx", -1.839946 AS "sv_0", 1.026950 AS "sv_1", -0.206900 AS "sv_2", 1.761719 AS "sv_3", 0.007276 AS "sv_4", -0.076433 AS "sv_5", 6.214072 AS "sv_6", 4.251567 AS "sv_7", -1.088969 AS "sv_8", -0.340860 AS "sv_9"
     UNION ALL
     SELECT 482 AS "sv_idx", 0.682785 AS "sv_0", 0.078662 AS "sv_1", 0.217874 AS "sv_2", -1.488197 AS "sv_3", 0.312308 AS "sv_4", -0.807822 AS "sv_5", -2.150621 AS "sv_6", -0.918538 AS "sv_7", 0.147000 AS "sv_8", 0.460278 AS "sv_9"
     UNION ALL
     SELECT 483 AS "sv_idx", 2.343697 AS "sv_0", -2.105798 AS "sv_1", -0.891104 AS "sv_2", 0.613822 AS "sv_3", 0.968776 AS "sv_4", 0.573743 AS "sv_5", -0.680952 AS "sv_6", -1.117470 AS "sv_7", -0.027226 AS "sv_8", 0.279988 AS "sv_9"
     UNION ALL
     SELECT 484 AS "sv_idx", -0.424289 AS "sv_0", -0.285661 AS "sv_1", -1.401497 AS "sv_2", 1.749733 AS "sv_3", -0.955215 AS "sv_4", -0.539937 AS "sv_5", 2.147469 AS "sv_6", 1.195697 AS "sv_7", 0.280923 AS "sv_8", 0.009761 AS "sv_9"
     UNION ALL
     SELECT 485 AS "sv_idx", 2.701788 AS "sv_0", -3.176372 AS "sv_1", -0.128940 AS "sv_2", 1.768371 AS "sv_3", 0.811615 AS "sv_4", 0.695466 AS "sv_5", 2.022799 AS "sv_6", -1.362574 AS "sv_7", -2.138658 AS "sv_8", 0.355201 AS "sv_9"
     UNION ALL
     SELECT 486 AS "sv_idx", 0.386782 AS "sv_0", -0.414278 AS "sv_1", -0.187530 AS "sv_2", -0.671956 AS "sv_3", 0.288001 AS "sv_4", -0.050094 AS "sv_5", 1.158921 AS "sv_6", -0.931119 AS "sv_7", -2.589269 AS "sv_8", -1.008951 AS "sv_9"
     UNION ALL
     SELECT 487 AS "sv_idx", 0.887877 AS "sv_0", 0.120291 AS "sv_1", 0.024597 AS "sv_2", -1.337459 AS "sv_3", -0.039876 AS "sv_4", -2.252742 AS "sv_5", -2.726254 AS "sv_6", -0.258125 AS "sv_7", 1.416105 AS "sv_8", -1.019929 AS "sv_9"
     UNION ALL
     SELECT 488 AS "sv_idx", 0.599200 AS "sv_0", 0.014700 AS "sv_1", -1.786444 AS "sv_2", -0.332519 AS "sv_3", -0.718377 AS "sv_4", -0.723804 AS "sv_5", 1.716102 AS "sv_6", 2.013954 AS "sv_7", -0.345468 AS "sv_8", 0.376811 AS "sv_9"
     UNION ALL
     SELECT 489 AS "sv_idx", 1.125289 AS "sv_0", -0.222706 AS "sv_1", 1.154862 AS "sv_2", -1.580011 AS "sv_3", 1.677988 AS "sv_4", -1.451841 AS "sv_5", -3.319351 AS "sv_6", -1.534054 AS "sv_7", 0.694871 AS "sv_8", -0.109392 AS "sv_9"
     UNION ALL
     SELECT 490 AS "sv_idx", -0.694214 AS "sv_0", 0.299522 AS "sv_1", 0.714899 AS "sv_2", 0.542021 AS "sv_3", 1.019968 AS "sv_4", 0.342609 AS "sv_5", 1.555436 AS "sv_6", 0.732274 AS "sv_7", -0.455815 AS "sv_8", 0.537001 AS "sv_9"
     UNION ALL
     SELECT 491 AS "sv_idx", 2.331449 AS "sv_0", -2.181304 AS "sv_1", 0.806669 AS "sv_2", 0.624156 AS "sv_3", 0.294438 AS "sv_4", 0.041777 AS "sv_5", 0.499748 AS "sv_6", -0.877982 AS "sv_7", -1.026664 AS "sv_8", 1.853189 AS "sv_9"
     UNION ALL
     SELECT 492 AS "sv_idx", -0.030155 AS "sv_0", 0.232125 AS "sv_1", 0.929317 AS "sv_2", -1.298226 AS "sv_3", 1.876815 AS "sv_4", 0.125330 AS "sv_5", 1.066340 AS "sv_6", -0.517243 AS "sv_7", -2.592615 AS "sv_8", 0.175927 AS "sv_9"
     UNION ALL
     SELECT 493 AS "sv_idx", 0.265782 AS "sv_0", 0.240867 AS "sv_1", -0.850652 AS "sv_2", 0.597025 AS "sv_3", -2.698274 AS "sv_4", 0.057282 AS "sv_5", 1.700429 AS "sv_6", 3.261616 AS "sv_7", 1.542207 AS "sv_8", 0.314876 AS "sv_9"
     UNION ALL
     SELECT 494 AS "sv_idx", -2.223085 AS "sv_0", 1.630570 AS "sv_1", 1.115243 AS "sv_2", -0.630610 AS "sv_3", -0.984432 AS "sv_4", 0.411118 AS "sv_5", -1.222862 AS "sv_6", -1.271100 AS "sv_7", -0.118038 AS "sv_8", -0.657950 AS "sv_9"
     UNION ALL
     SELECT 495 AS "sv_idx", 0.562158 AS "sv_0", -0.324987 AS "sv_1", 1.036544 AS "sv_2", -0.276657 AS "sv_3", -0.399825 AS "sv_4", -1.013035 AS "sv_5", -3.061872 AS "sv_6", -1.514492 AS "sv_7", 1.555272 AS "sv_8", -1.664284 AS "sv_9"
     UNION ALL
     SELECT 496 AS "sv_idx", -0.818033 AS "sv_0", 1.965989 AS "sv_1", 1.193872 AS "sv_2", -2.717107 AS "sv_3", -2.274206 AS "sv_4", -0.978919 AS "sv_5", -0.045131 AS "sv_6", 1.456372 AS "sv_7", -0.783482 AS "sv_8", 1.745353 AS "sv_9"
     UNION ALL
     SELECT 497 AS "sv_idx", -1.907530 AS "sv_0", 2.734109 AS "sv_1", -0.748289 AS "sv_2", -1.947201 AS "sv_3", -0.489429 AS "sv_4", 2.688408 AS "sv_5", 5.886810 AS "sv_6", 5.244355 AS "sv_7", -2.863760 AS "sv_8", -0.140492 AS "sv_9"
     UNION ALL
     SELECT 498 AS "sv_idx", -0.770972 AS "sv_0", 1.261518 AS "sv_1", 1.808595 AS "sv_2", -2.217428 AS "sv_3", -0.277204 AS "sv_4", 1.196422 AS "sv_5", -1.115182 AS "sv_6", -0.898929 AS "sv_7", -1.336243 AS "sv_8", 0.434694 AS "sv_9"
     UNION ALL
     SELECT 499 AS "sv_idx", 1.845877 AS "sv_0", -1.230132 AS "sv_1", 0.868872 AS "sv_2", -1.364713 AS "sv_3", 1.380191 AS "sv_4", -0.607884 AS "sv_5", -4.832707 AS "sv_6", -3.816458 AS "sv_7", 0.362403 AS "sv_8", -0.619445 AS "sv_9"
     UNION ALL
     SELECT 500 AS "sv_idx", 0.627850 AS "sv_0", -0.661039 AS "sv_1", 0.736399 AS "sv_2", -0.073318 AS "sv_3", 0.728113 AS "sv_4", -2.099873 AS "sv_5", -1.669177 AS "sv_6", -1.688945 AS "sv_7", 0.123285 AS "sv_8", 0.825280 AS "sv_9"
     UNION ALL
     SELECT 501 AS "sv_idx", 1.481868 AS "sv_0", -1.825928 AS "sv_1", -0.002637 AS "sv_2", 0.460978 AS "sv_3", 0.212693 AS "sv_4", -1.452695 AS "sv_5", -0.002793 AS "sv_6", -2.292352 AS "sv_7", -1.782508 AS "sv_8", 1.314423 AS "sv_9"
     UNION ALL
     SELECT 502 AS "sv_idx", 0.562631 AS "sv_0", -1.326500 AS "sv_1", 0.344877 AS "sv_2", 1.714813 AS "sv_3", 1.789038 AS "sv_4", -1.182933 AS "sv_5", 2.483257 AS "sv_6", 0.015652 AS "sv_7", -1.227450 AS "sv_8", 1.540253 AS "sv_9"
     UNION ALL
     SELECT 503 AS "sv_idx", -0.583481 AS "sv_0", 0.485629 AS "sv_1", 2.180144 AS "sv_2", -0.370406 AS "sv_3", 1.294042 AS "sv_4", 0.098589 AS "sv_5", -0.066088 AS "sv_6", -0.282086 AS "sv_7", -0.413855 AS "sv_8", 0.631763 AS "sv_9"
     UNION ALL
     SELECT 504 AS "sv_idx", 0.116964 AS "sv_0", 0.764608 AS "sv_1", -0.834473 AS "sv_2", -1.648333 AS "sv_3", 1.616820 AS "sv_4", -0.216079 AS "sv_5", -4.621155 AS "sv_6", -1.207447 AS "sv_7", 2.374713 AS "sv_8", 0.080743 AS "sv_9"
     UNION ALL
     SELECT 505 AS "sv_idx", -0.917320 AS "sv_0", 1.121595 AS "sv_1", -2.388599 AS "sv_2", -0.767021 AS "sv_3", 1.068770 AS "sv_4", 0.336069 AS "sv_5", -3.086536 AS "sv_6", -0.715897 AS "sv_7", 2.039732 AS "sv_8", 0.950698 AS "sv_9"
     UNION ALL
     SELECT 506 AS "sv_idx", 0.125473 AS "sv_0", -0.174283 AS "sv_1", 0.423296 AS "sv_2", -0.360852 AS "sv_3", -1.340787 AS "sv_4", 0.901386 AS "sv_5", -2.116680 AS "sv_6", -1.806991 AS "sv_7", 0.303962 AS "sv_8", 1.501806 AS "sv_9"
     UNION ALL
     SELECT 507 AS "sv_idx", -0.171709 AS "sv_0", 0.830847 AS "sv_1", -0.210164 AS "sv_2", -1.574659 AS "sv_3", -1.421085 AS "sv_4", 0.263585 AS "sv_5", -4.743746 AS "sv_6", -1.693212 AS "sv_7", 2.167612 AS "sv_8", 1.742538 AS "sv_9"
     UNION ALL
     SELECT 508 AS "sv_idx", 1.657866 AS "sv_0", -1.958320 AS "sv_1", -0.427989 AS "sv_2", 1.155026 AS "sv_3", -0.639601 AS "sv_4", 0.214690 AS "sv_5", 0.620213 AS "sv_6", -1.060964 AS "sv_7", -0.811542 AS "sv_8", 0.217098 AS "sv_9"
     UNION ALL
     SELECT 509 AS "sv_idx", 1.398208 AS "sv_0", -0.234892 AS "sv_1", 0.212835 AS "sv_2", -1.746562 AS "sv_3", 0.327893 AS "sv_4", -0.885169 AS "sv_5", -1.906284 AS "sv_6", -0.417711 AS "sv_7", 0.047608 AS "sv_8", -0.204971 AS "sv_9"
     UNION ALL
     SELECT 510 AS "sv_idx", -2.649454 AS "sv_0", 1.970150 AS "sv_1", 0.320342 AS "sv_2", -0.526725 AS "sv_3", -2.157020 AS "sv_4", 1.546642 AS "sv_5", -1.514176 AS "sv_6", -1.124654 AS "sv_7", 0.439108 AS "sv_8", -0.550982 AS "sv_9"
     UNION ALL
     SELECT 511 AS "sv_idx", 0.963951 AS "sv_0", -1.123809 AS "sv_1", -1.892670 AS "sv_2", 0.684698 AS "sv_3", -0.602014 AS "sv_4", 0.946490 AS "sv_5", -0.418862 AS "sv_6", -0.902607 AS "sv_7", 0.093590 AS "sv_8", 0.688711 AS "sv_9"
     UNION ALL
     SELECT 512 AS "sv_idx", 0.048520 AS "sv_0", -0.321894 AS "sv_1", 1.103516 AS "sv_2", 0.461933 AS "sv_3", 0.416712 AS "sv_4", -0.673028 AS "sv_5", -0.451780 AS "sv_6", -0.659208 AS "sv_7", 0.257851 AS "sv_8", -1.668709 AS "sv_9"
     UNION ALL
     SELECT 513 AS "sv_idx", -0.354404 AS "sv_0", 0.994055 AS "sv_1", -1.885759 AS "sv_2", -1.177462 AS "sv_3", 0.292567 AS "sv_4", 0.362734 AS "sv_5", -1.819099 AS "sv_6", 0.340618 AS "sv_7", 1.263372 AS "sv_8", -0.029287 AS "sv_9"
     UNION ALL
     SELECT 514 AS "sv_idx", 0.851381 AS "sv_0", 0.407929 AS "sv_1", -1.051274 AS "sv_2", -2.096791 AS "sv_3", -0.755022 AS "sv_4", -0.037872 AS "sv_5", -4.707700 AS "sv_6", -1.238100 AS "sv_7", 1.998185 AS "sv_8", 0.340898 AS "sv_9"
     UNION ALL
     SELECT 515 AS "sv_idx", -0.511555 AS "sv_0", 1.349893 AS "sv_1", -0.478693 AS "sv_2", -1.457144 AS "sv_3", 0.519958 AS "sv_4", -0.335038 AS "sv_5", -2.389800 AS "sv_6", 0.615593 AS "sv_7", 1.883413 AS "sv_8", 0.311229 AS "sv_9"
     UNION ALL
     SELECT 516 AS "sv_idx", 0.134087 AS "sv_0", -0.344334 AS "sv_1", 0.437394 AS "sv_2", -0.873010 AS "sv_3", 0.318334 AS "sv_4", -0.563782 AS "sv_5", -1.988657 AS "sv_6", -3.088318 AS "sv_7", -1.358466 AS "sv_8", -0.800712 AS "sv_9"
     UNION ALL
     SELECT 517 AS "sv_idx", 1.515851 AS "sv_0", -1.863098 AS "sv_1", -2.034282 AS "sv_2", 1.382391 AS "sv_3", 1.632208 AS "sv_4", 0.896508 AS "sv_5", 1.017107 AS "sv_6", -0.582556 AS "sv_7", -0.605685 AS "sv_8", -0.256977 AS "sv_9"
     UNION ALL
     SELECT 518 AS "sv_idx", -0.847049 AS "sv_0", 0.769808 AS "sv_1", 1.079078 AS "sv_2", -0.593639 AS "sv_3", 0.502120 AS "sv_4", 2.343416 AS "sv_5", -1.872527 AS "sv_6", -1.062429 AS "sv_7", 0.617417 AS "sv_8", 0.523638 AS "sv_9"
     UNION ALL
     SELECT 519 AS "sv_idx", 0.077719 AS "sv_0", -0.237237 AS "sv_1", 0.201077 AS "sv_2", 0.240155 AS "sv_3", 1.417506 AS "sv_4", 1.065277 AS "sv_5", 0.894470 AS "sv_6", 0.055958 AS "sv_7", -0.688817 AS "sv_8", 0.054897 AS "sv_9"
     UNION ALL
     SELECT 520 AS "sv_idx", 2.690542 AS "sv_0", -2.752879 AS "sv_1", 2.443571 AS "sv_2", 0.107339 AS "sv_3", 0.654298 AS "sv_4", 0.387160 AS "sv_5", -0.994223 AS "sv_6", -3.494772 AS "sv_7", -2.221496 AS "sv_8", 0.087042 AS "sv_9"
     UNION ALL
     SELECT 521 AS "sv_idx", -1.337527 AS "sv_0", 2.241263 AS "sv_1", 0.507780 AS "sv_2", -2.190145 AS "sv_3", 0.709615 AS "sv_4", -0.069356 AS "sv_5", -2.640731 AS "sv_6", 0.629506 AS "sv_7", 1.652266 AS "sv_8", -0.656871 AS "sv_9"
     UNION ALL
     SELECT 522 AS "sv_idx", 2.034415 AS "sv_0", -2.792239 AS "sv_1", -1.245384 AS "sv_2", 1.539301 AS "sv_3", 2.990697 AS "sv_4", 1.474728 AS "sv_5", 2.504064 AS "sv_6", -1.808982 AS "sv_7", -3.137699 AS "sv_8", -1.470129 AS "sv_9"
     UNION ALL
     SELECT 523 AS "sv_idx", 2.453564 AS "sv_0", -2.747622 AS "sv_1", 0.490504 AS "sv_2", 1.605446 AS "sv_3", 0.007540 AS "sv_4", -1.186399 AS "sv_5", 1.230416 AS "sv_6", -0.996533 AS "sv_7", -1.106889 AS "sv_8", 2.068245 AS "sv_9"
     UNION ALL
     SELECT 524 AS "sv_idx", 0.524657 AS "sv_0", -1.162416 AS "sv_1", -1.229369 AS "sv_2", 1.478182 AS "sv_3", -1.659332 AS "sv_4", -0.350237 AS "sv_5", 1.843683 AS "sv_6", -0.088378 AS "sv_7", -0.844862 AS "sv_8", 1.280778 AS "sv_9"
     UNION ALL
     SELECT 525 AS "sv_idx", -1.049982 AS "sv_0", 1.143642 AS "sv_1", -1.663153 AS "sv_2", -0.523404 AS "sv_3", -1.562414 AS "sv_4", -0.099876 AS "sv_5", -2.306733 AS "sv_6", -0.291242 AS "sv_7", 1.815839 AS "sv_8", -0.207988 AS "sv_9"
     UNION ALL
     SELECT 526 AS "sv_idx", -0.783984 AS "sv_0", 1.475225 AS "sv_1", 0.003973 AS "sv_2", -1.477091 AS "sv_3", 1.112985 AS "sv_4", -0.360010 AS "sv_5", -2.093558 AS "sv_6", 0.462280 AS "sv_7", 1.457088 AS "sv_8", 0.617802 AS "sv_9"
     UNION ALL
     SELECT 527 AS "sv_idx", 0.678282 AS "sv_0", -1.114875 AS "sv_1", -0.727378 AS "sv_2", 1.084346 AS "sv_3", 0.296031 AS "sv_4", 0.489235 AS "sv_5", 0.841172 AS "sv_6", -0.503622 AS "sv_7", -0.506179 AS "sv_8", 1.725314 AS "sv_9"
     UNION ALL
     SELECT 528 AS "sv_idx", 0.258611 AS "sv_0", -0.518760 AS "sv_1", -1.321263 AS "sv_2", 0.319089 AS "sv_3", 1.100284 AS "sv_4", -0.442130 AS "sv_5", -0.578596 AS "sv_6", -1.097139 AS "sv_7", -0.130506 AS "sv_8", -1.374796 AS "sv_9"
     UNION ALL
     SELECT 529 AS "sv_idx", 1.869880 AS "sv_0", -2.312190 AS "sv_1", -1.153852 AS "sv_2", 1.292078 AS "sv_3", -1.061729 AS "sv_4", 2.042926 AS "sv_5", 1.284271 AS "sv_6", -1.335399 AS "sv_7", -1.648043 AS "sv_8", 2.109906 AS "sv_9"
     UNION ALL
     SELECT 530 AS "sv_idx", -0.054629 AS "sv_0", -0.505824 AS "sv_1", -0.855324 AS "sv_2", 1.438989 AS "sv_3", -1.036250 AS "sv_4", 1.604961 AS "sv_5", 1.453114 AS "sv_6", 0.605458 AS "sv_7", 0.193060 AS "sv_8", 1.087726 AS "sv_9"
     UNION ALL
     SELECT 531 AS "sv_idx", -0.064542 AS "sv_0", 0.081555 AS "sv_1", 0.708553 AS "sv_2", -0.785544 AS "sv_3", -0.333683 AS "sv_4", -1.226340 AS "sv_5", -2.670425 AS "sv_6", -2.197399 AS "sv_7", 0.213122 AS "sv_8", 2.041780 AS "sv_9"
     UNION ALL
     SELECT 532 AS "sv_idx", 0.309135 AS "sv_0", -0.495864 AS "sv_1", 0.210234 AS "sv_2", 0.381070 AS "sv_3", -1.042908 AS "sv_4", 1.222327 AS "sv_5", -0.737087 AS "sv_6", -0.859252 AS "sv_7", 0.284910 AS "sv_8", 0.429757 AS "sv_9"
     UNION ALL
     SELECT 533 AS "sv_idx", -0.875566 AS "sv_0", 0.127713 AS "sv_1", -1.672932 AS "sv_2", 0.508330 AS "sv_3", -1.320599 AS "sv_4", -0.665654 AS "sv_5", 1.698001 AS "sv_6", -0.396848 AS "sv_7", -1.595221 AS "sv_8", 0.288043 AS "sv_9"
     UNION ALL
     SELECT 534 AS "sv_idx", -3.135649 AS "sv_0", 1.709768 AS "sv_1", -0.108658 AS "sv_2", 0.519971 AS "sv_3", 1.858464 AS "sv_4", -1.221336 AS "sv_5", -0.457015 AS "sv_6", -1.487462 AS "sv_7", -0.073516 AS "sv_8", 0.306272 AS "sv_9"
     UNION ALL
     SELECT 535 AS "sv_idx", 2.418322 AS "sv_0", -2.798912 AS "sv_1", 1.317417 AS "sv_2", 1.447493 AS "sv_3", -0.718773 AS "sv_4", -0.161991 AS "sv_5", 1.319804 AS "sv_6", -1.467214 AS "sv_7", -1.732879 AS "sv_8", -1.508750 AS "sv_9"
     UNION ALL
     SELECT 536 AS "sv_idx", -0.920938 AS "sv_0", 1.735846 AS "sv_1", -0.104017 AS "sv_2", -2.050461 AS "sv_3", 0.061896 AS "sv_4", 0.522222 AS "sv_5", -4.210891 AS "sv_6", -0.696798 AS "sv_7", 2.183528 AS "sv_8", 0.451280 AS "sv_9"
     UNION ALL
     SELECT 537 AS "sv_idx", -1.501774 AS "sv_0", 0.984185 AS "sv_1", -0.026391 AS "sv_2", -0.349670 AS "sv_3", -0.262839 AS "sv_4", 0.437319 AS "sv_5", 0.074404 AS "sv_6", -0.782789 AS "sv_7", -0.880982 AS "sv_8", 1.263565 AS "sv_9"
     UNION ALL
     SELECT 538 AS "sv_idx", -0.851639 AS "sv_0", 1.143328 AS "sv_1", 0.750095 AS "sv_2", -1.043425 AS "sv_3", 0.112975 AS "sv_4", 0.519502 AS "sv_5", -2.594335 AS "sv_6", -0.612969 AS "sv_7", 1.392324 AS "sv_8", 0.276778 AS "sv_9"
     UNION ALL
     SELECT 539 AS "sv_idx", 1.645652 AS "sv_0", -2.081330 AS "sv_1", 1.430708 AS "sv_2", 1.086896 AS "sv_3", -0.573585 AS "sv_4", -1.003636 AS "sv_5", 0.973040 AS "sv_6", -1.495159 AS "sv_7", -1.607605 AS "sv_8", -0.746882 AS "sv_9"
     UNION ALL
     SELECT 540 AS "sv_idx", 0.132702 AS "sv_0", -0.828041 AS "sv_1", -3.195565 AS "sv_2", 1.247939 AS "sv_3", -0.526521 AS "sv_4", -0.155073 AS "sv_5", 1.715525 AS "sv_6", -0.259579 AS "sv_7", -1.005569 AS "sv_8", -0.701417 AS "sv_9"
     UNION ALL
     SELECT 541 AS "sv_idx", 0.665760 AS "sv_0", -1.408911 AS "sv_1", -0.177873 AS "sv_2", 0.974903 AS "sv_3", -0.150948 AS "sv_4", -1.099258 AS "sv_5", 3.361383 AS "sv_6", -0.645776 AS "sv_7", -3.316451 AS "sv_8", 1.094357 AS "sv_9"
     UNION ALL
     SELECT 542 AS "sv_idx", -0.416510 AS "sv_0", 0.908877 AS "sv_1", -0.499699 AS "sv_2", -1.132359 AS "sv_3", -0.421780 AS "sv_4", 0.948938 AS "sv_5", -3.632411 AS "sv_6", -0.928889 AS "sv_7", 2.069759 AS "sv_8", -0.850839 AS "sv_9"
     UNION ALL
     SELECT 543 AS "sv_idx", -2.064254 AS "sv_0", 0.982612 AS "sv_1", -0.468726 AS "sv_2", 0.978581 AS "sv_3", -0.624265 AS "sv_4", -0.990992 AS "sv_5", 0.352859 AS "sv_6", -0.332958 AS "sv_7", 0.352919 AS "sv_8", -1.295690 AS "sv_9"
     UNION ALL
     SELECT 544 AS "sv_idx", 1.546206 AS "sv_0", -1.919110 AS "sv_1", -0.740263 AS "sv_2", 1.587584 AS "sv_3", -0.650283 AS "sv_4", -0.380991 AS "sv_5", 1.290116 AS "sv_6", -0.300658 AS "sv_7", -0.479569 AS "sv_8", 0.269175 AS "sv_9"
     UNION ALL
     SELECT 545 AS "sv_idx", 1.526186 AS "sv_0", -1.981288 AS "sv_1", -0.042832 AS "sv_2", 1.215428 AS "sv_3", -0.872249 AS "sv_4", -0.690144 AS "sv_5", 1.156276 AS "sv_6", -1.174022 AS "sv_7", -1.400440 AS "sv_8", -0.406296 AS "sv_9"
     UNION ALL
     SELECT 546 AS "sv_idx", 0.393759 AS "sv_0", -1.486843 AS "sv_1", 1.410740 AS "sv_2", 3.026787 AS "sv_3", -0.439976 AS "sv_4", 0.731564 AS "sv_5", 4.831630 AS "sv_6", 1.864730 AS "sv_7", -0.963558 AS "sv_8", 1.028692 AS "sv_9"
     UNION ALL
     SELECT 547 AS "sv_idx", -0.386935 AS "sv_0", -0.420413 AS "sv_1", 0.956936 AS "sv_2", 0.583983 AS "sv_3", 0.107229 AS "sv_4", 0.282941 AS "sv_5", 1.987489 AS "sv_6", -0.919301 AS "sv_7", -2.340455 AS "sv_8", -1.043233 AS "sv_9"
     UNION ALL
     SELECT 548 AS "sv_idx", -2.428132 AS "sv_0", 2.090098 AS "sv_1", -0.141264 AS "sv_2", -0.679954 AS "sv_3", -1.001107 AS "sv_4", 0.339935 AS "sv_5", -1.793500 AS "sv_6", -0.409077 AS "sv_7", 1.204294 AS "sv_8", 0.826816 AS "sv_9"
     UNION ALL
     SELECT 549 AS "sv_idx", -1.065796 AS "sv_0", 1.111608 AS "sv_1", 1.061922 AS "sv_2", -0.753216 AS "sv_3", -1.207370 AS "sv_4", 0.774383 AS "sv_5", -2.641678 AS "sv_6", -0.932407 AS "sv_7", 1.418989 AS "sv_8", 2.155526 AS "sv_9"
     UNION ALL
     SELECT 550 AS "sv_idx", 2.575570 AS "sv_0", -3.218397 AS "sv_1", 0.376806 AS "sv_2", 2.608257 AS "sv_3", -0.160321 AS "sv_4", -0.106040 AS "sv_5", 3.402169 AS "sv_6", -0.054275 AS "sv_7", -1.731284 AS "sv_8", 0.932698 AS "sv_9"
     UNION ALL
     SELECT 551 AS "sv_idx", -0.603984 AS "sv_0", 1.077836 AS "sv_1", -0.581492 AS "sv_2", -1.309117 AS "sv_3", 1.364773 AS "sv_4", 0.392369 AS "sv_5", -3.519884 AS "sv_6", -0.989027 AS "sv_7", 1.778927 AS "sv_8", -0.117233 AS "sv_9"
     UNION ALL
     SELECT 552 AS "sv_idx", 1.839764 AS "sv_0", -1.752803 AS "sv_1", 0.589104 AS "sv_2", 0.130268 AS "sv_3", 0.788001 AS "sv_4", 0.044416 AS "sv_5", -1.600704 AS "sv_6", -2.242143 AS "sv_7", -0.394751 AS "sv_8", 0.780144 AS "sv_9"
     UNION ALL
     SELECT 553 AS "sv_idx", -2.793506 AS "sv_0", 3.078639 AS "sv_1", 2.036519 AS "sv_2", -2.320290 AS "sv_3", 0.097845 AS "sv_4", 0.576312 AS "sv_5", -8.443496 AS "sv_6", -3.001012 AS "sv_7", 4.522289 AS "sv_8", -0.090024 AS "sv_9"
     UNION ALL
     SELECT 554 AS "sv_idx", 2.019276 AS "sv_0", -2.598879 AS "sv_1", 0.296001 AS "sv_2", 1.883273 AS "sv_3", -1.293185 AS "sv_4", -1.490953 AS "sv_5", 2.348054 AS "sv_6", -0.704432 AS "sv_7", -1.735215 AS "sv_8", -0.493654 AS "sv_9"
     UNION ALL
     SELECT 555 AS "sv_idx", -1.293406 AS "sv_0", 0.898972 AS "sv_1", -0.056513 AS "sv_2", -0.454718 AS "sv_3", 0.950042 AS "sv_4", 0.296989 AS "sv_5", -0.498415 AS "sv_6", -0.953197 AS "sv_7", -0.545426 AS "sv_8", -0.855696 AS "sv_9"
     UNION ALL
     SELECT 556 AS "sv_idx", 0.265466 AS "sv_0", -0.992520 AS "sv_1", 0.523799 AS "sv_2", 1.329343 AS "sv_3", 1.050769 AS "sv_4", -2.813570 AS "sv_5", 1.926285 AS "sv_6", -0.314698 AS "sv_7", -1.219627 AS "sv_8", -0.989711 AS "sv_9"
     UNION ALL
     SELECT 557 AS "sv_idx", -1.056696 AS "sv_0", 0.966483 AS "sv_1", 0.204093 AS "sv_2", -0.888854 AS "sv_3", 0.176161 AS "sv_4", -0.406466 AS "sv_5", -1.767335 AS "sv_6", -1.246039 AS "sv_7", 0.133508 AS "sv_8", 0.125232 AS "sv_9"
     UNION ALL
     SELECT 558 AS "sv_idx", -0.960899 AS "sv_0", 0.936560 AS "sv_1", 1.249715 AS "sv_2", -0.810532 AS "sv_3", 1.439970 AS "sv_4", -0.733024 AS "sv_5", -1.633010 AS "sv_6", -0.928212 AS "sv_7", 0.324928 AS "sv_8", -0.993398 AS "sv_9"
     UNION ALL
     SELECT 559 AS "sv_idx", 0.020878 AS "sv_0", -0.351641 AS "sv_1", -0.692692 AS "sv_2", 0.269582 AS "sv_3", 0.883897 AS "sv_4", 0.092123 AS "sv_5", -0.480807 AS "sv_6", -1.129926 AS "sv_7", -0.274521 AS "sv_8", 1.488428 AS "sv_9"
     UNION ALL
     SELECT 560 AS "sv_idx", -2.336607 AS "sv_0", 2.011303 AS "sv_1", 1.509615 AS "sv_2", -0.547113 AS "sv_3", -0.456734 AS "sv_4", 1.737557 AS "sv_5", -0.899187 AS "sv_6", 0.138567 AS "sv_7", 0.856516 AS "sv_8", 0.911344 AS "sv_9"
     UNION ALL
     SELECT 561 AS "sv_idx", 2.157362 AS "sv_0", -1.664817 AS "sv_1", -0.305026 AS "sv_2", -0.787103 AS "sv_3", -1.169307 AS "sv_4", -1.306326 AS "sv_5", -3.775011 AS "sv_6", -3.331089 AS "sv_7", 0.126381 AS "sv_8", 2.038918 AS "sv_9"
     UNION ALL
     SELECT 562 AS "sv_idx", -0.264861 AS "sv_0", 0.477529 AS "sv_1", -0.430199 AS "sv_2", -0.880118 AS "sv_3", -1.191376 AS "sv_4", 2.633529 AS "sv_5", -3.881899 AS "sv_6", -1.924543 AS "sv_7", 1.645846 AS "sv_8", 0.424737 AS "sv_9"
     UNION ALL
     SELECT 563 AS "sv_idx", 0.260177 AS "sv_0", -0.981335 AS "sv_1", 0.449974 AS "sv_2", 0.980600 AS "sv_3", 2.260404 AS "sv_4", 0.329801 AS "sv_5", 2.518242 AS "sv_6", -0.499781 AS "sv_7", -2.271735 AS "sv_8", 0.741921 AS "sv_9"
     UNION ALL
     SELECT 564 AS "sv_idx", 2.549133 AS "sv_0", -2.931520 AS "sv_1", -0.156476 AS "sv_2", 1.479163 AS "sv_3", 0.983777 AS "sv_4", -0.232114 AS "sv_5", 1.363515 AS "sv_6", -1.552877 AS "sv_7", -1.841083 AS "sv_8", 0.899188 AS "sv_9"
     UNION ALL
     SELECT 565 AS "sv_idx", -2.552794 AS "sv_0", 2.687872 AS "sv_1", 0.744705 AS "sv_2", -1.428588 AS "sv_3", 0.468484 AS "sv_4", 0.041460 AS "sv_5", -2.069427 AS "sv_6", 0.357935 AS "sv_7", 1.568405 AS "sv_8", -0.031120 AS "sv_9"
     UNION ALL
     SELECT 566 AS "sv_idx", 0.500287 AS "sv_0", -0.965287 AS "sv_1", -1.279199 AS "sv_2", 1.016811 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", 0.811468 AS "sv_6", -0.525072 AS "sv_7", -0.529665 AS "sv_8", -1.825507 AS "sv_9"
     UNION ALL
     SELECT 567 AS "sv_idx", -1.062755 AS "sv_0", 0.623633 AS "sv_1", 0.657557 AS "sv_2", 0.439026 AS "sv_3", -0.465157 AS "sv_4", 0.400164 AS "sv_5", -0.100124 AS "sv_6", 0.056689 AS "sv_7", 0.619110 AS "sv_8", 0.347311 AS "sv_9"
     UNION ALL
     SELECT 568 AS "sv_idx", -0.645499 AS "sv_0", 0.958266 AS "sv_1", 0.321803 AS "sv_2", -1.326147 AS "sv_3", 0.380394 AS "sv_4", -0.069253 AS "sv_5", -4.720257 AS "sv_6", -2.136945 AS "sv_7", 2.006895 AS "sv_8", -0.389467 AS "sv_9"
     UNION ALL
     SELECT 569 AS "sv_idx", 0.476411 AS "sv_0", 0.555172 AS "sv_1", 2.004011 AS "sv_2", -1.439637 AS "sv_3", -0.087655 AS "sv_4", 0.899499 AS "sv_5", -1.289876 AS "sv_6", 0.803645 AS "sv_7", 0.821823 AS "sv_8", 0.485550 AS "sv_9"
     UNION ALL
     SELECT 570 AS "sv_idx", 0.664809 AS "sv_0", -0.860282 AS "sv_1", -1.214640 AS "sv_2", 0.285591 AS "sv_3", -1.958105 AS "sv_4", -1.215565 AS "sv_5", -0.785248 AS "sv_6", -1.437853 AS "sv_7", -0.284597 AS "sv_8", 1.157643 AS "sv_9"
     UNION ALL
     SELECT 571 AS "sv_idx", 1.209644 AS "sv_0", -2.107424 AS "sv_1", 2.580744 AS "sv_2", 2.172078 AS "sv_3", 0.187149 AS "sv_4", -0.552040 AS "sv_5", 3.507802 AS "sv_6", -0.090810 AS "sv_7", -2.077870 AS "sv_8", -0.431405 AS "sv_9"
     UNION ALL
     SELECT 572 AS "sv_idx", 1.275199 AS "sv_0", -1.368902 AS "sv_1", 1.536570 AS "sv_2", 0.381964 AS "sv_3", -0.216730 AS "sv_4", 0.245716 AS "sv_5", -0.855430 AS "sv_6", -1.616202 AS "sv_7", -0.355075 AS "sv_8", 0.771413 AS "sv_9"
     UNION ALL
     SELECT 573 AS "sv_idx", 1.664495 AS "sv_0", -1.735642 AS "sv_1", 0.167350 AS "sv_2", 0.410648 AS "sv_3", -0.141452 AS "sv_4", 2.168024 AS "sv_5", -0.826617 AS "sv_6", -1.903198 AS "sv_7", -0.653362 AS "sv_8", 1.615264 AS "sv_9"
     UNION ALL
     SELECT 574 AS "sv_idx", 1.524098 AS "sv_0", -1.442744 AS "sv_1", -0.621512 AS "sv_2", -0.433436 AS "sv_3", -1.910635 AS "sv_4", -0.350793 AS "sv_5", -2.213816 AS "sv_6", -2.988973 AS "sv_7", -0.833653 AS "sv_8", 1.482458 AS "sv_9"
     UNION ALL
     SELECT 575 AS "sv_idx", -0.445700 AS "sv_0", 1.124369 AS "sv_1", -0.388652 AS "sv_2", -1.399869 AS "sv_3", -1.363536 AS "sv_4", 1.517939 AS "sv_5", -3.787282 AS "sv_6", -0.631913 AS "sv_7", 2.276246 AS "sv_8", -1.096364 AS "sv_9"
     UNION ALL
     SELECT 576 AS "sv_idx", 0.687966 AS "sv_0", -1.027474 AS "sv_1", 0.253590 AS "sv_2", 0.633428 AS "sv_3", -0.218217 AS "sv_4", 0.258181 AS "sv_5", 0.056120 AS "sv_6", -1.137213 AS "sv_7", -0.612820 AS "sv_8", 0.952193 AS "sv_9"
     UNION ALL
     SELECT 577 AS "sv_idx", 0.742101 AS "sv_0", -0.853654 AS "sv_1", 0.338078 AS "sv_2", 0.177135 AS "sv_3", 0.707962 AS "sv_4", 0.475640 AS "sv_5", -1.127228 AS "sv_6", -1.512257 AS "sv_7", -0.092238 AS "sv_8", 1.498615 AS "sv_9"
     UNION ALL
     SELECT 578 AS "sv_idx", -0.474859 AS "sv_0", 0.897753 AS "sv_1", -0.242116 AS "sv_2", -1.044256 AS "sv_3", -1.406136 AS "sv_4", 1.876952 AS "sv_5", -3.545543 AS "sv_6", -0.966607 AS "sv_7", 2.024386 AS "sv_8", -1.426875 AS "sv_9"
     UNION ALL
     SELECT 579 AS "sv_idx", 1.634527 AS "sv_0", -2.278719 AS "sv_1", -1.959134 AS "sv_2", 1.635015 AS "sv_3", -1.072475 AS "sv_4", 1.464075 AS "sv_5", 2.204232 AS "sv_6", -0.942671 AS "sv_7", -1.953483 AS "sv_8", -1.566525 AS "sv_9"
     UNION ALL
     SELECT 580 AS "sv_idx", 0.483180 AS "sv_0", -0.798519 AS "sv_1", 0.140970 AS "sv_2", 0.502161 AS "sv_3", -1.239860 AS "sv_4", 0.760980 AS "sv_5", -0.195929 AS "sv_6", -1.120753 AS "sv_7", -0.422350 AS "sv_8", -1.563481 AS "sv_9"
     UNION ALL
     SELECT 581 AS "sv_idx", -1.468354 AS "sv_0", 1.068258 AS "sv_1", 0.133676 AS "sv_2", -0.446964 AS "sv_3", -1.480801 AS "sv_4", 0.551133 AS "sv_5", -1.600289 AS "sv_6", -1.282107 AS "sv_7", 0.329206 AS "sv_8", -0.608756 AS "sv_9"
     UNION ALL
     SELECT 582 AS "sv_idx", 1.920275 AS "sv_0", -2.110023 AS "sv_1", 0.820741 AS "sv_2", 0.555575 AS "sv_3", 1.123207 AS "sv_4", 0.674955 AS "sv_5", -0.280745 AS "sv_6", -2.180578 AS "sv_7", -1.368840 AS "sv_8", -2.114189 AS "sv_9"
     UNION ALL
     SELECT 583 AS "sv_idx", -2.544228 AS "sv_0", 1.392179 AS "sv_1", -0.672328 AS "sv_2", 0.648784 AS "sv_3", 0.929451 AS "sv_4", 0.611075 AS "sv_5", 0.098322 AS "sv_6", -0.654219 AS "sv_7", 0.120963 AS "sv_8", -1.127765 AS "sv_9"
     UNION ALL
     SELECT 584 AS "sv_idx", -2.491780 AS "sv_0", 1.677861 AS "sv_1", 0.934968 AS "sv_2", -0.190773 AS "sv_3", 1.728370 AS "sv_4", 1.078664 AS "sv_5", -1.149306 AS "sv_6", -1.172499 AS "sv_7", 0.274657 AS "sv_8", 0.434440 AS "sv_9"
     UNION ALL
     SELECT 585 AS "sv_idx", -1.310039 AS "sv_0", 1.261885 AS "sv_1", 0.756183 AS "sv_2", -0.980740 AS "sv_3", 0.685749 AS "sv_4", -0.917510 AS "sv_5", -0.895510 AS "sv_6", -0.533187 AS "sv_7", -0.191214 AS "sv_8", 0.490645 AS "sv_9"
     UNION ALL
     SELECT 586 AS "sv_idx", -0.060569 AS "sv_0", -0.563072 AS "sv_1", 1.848855 AS "sv_2", 0.708457 AS "sv_3", -1.308475 AS "sv_4", 0.448637 AS "sv_5", 0.856471 AS "sv_6", -0.925645 AS "sv_7", -1.113886 AS "sv_8", -0.371764 AS "sv_9"
     UNION ALL
     SELECT 587 AS "sv_idx", 0.498493 AS "sv_0", -0.745603 AS "sv_1", 0.101122 AS "sv_2", 0.535788 AS "sv_3", 0.187468 AS "sv_4", 0.549036 AS "sv_5", -0.395186 AS "sv_6", -0.922565 AS "sv_7", -0.018575 AS "sv_8", -0.340801 AS "sv_9"
     UNION ALL
     SELECT 588 AS "sv_idx", 1.025384 AS "sv_0", -1.354274 AS "sv_1", 1.494342 AS "sv_2", 0.663683 AS "sv_3", 1.791726 AS "sv_4", 0.831062 AS "sv_5", 0.106163 AS "sv_6", -1.400893 AS "sv_7", -0.905890 AS "sv_8", -0.576495 AS "sv_9"
     UNION ALL
     SELECT 589 AS "sv_idx", -1.126290 AS "sv_0", 0.885173 AS "sv_1", 1.542324 AS "sv_2", -0.132378 AS "sv_3", 0.354220 AS "sv_4", 0.097724 AS "sv_5", -0.964768 AS "sv_6", -0.317040 AS "sv_7", 0.731966 AS "sv_8", 0.152417 AS "sv_9"
     UNION ALL
     SELECT 590 AS "sv_idx", -0.699946 AS "sv_0", 0.705667 AS "sv_1", -0.573090 AS "sv_2", -0.468371 AS "sv_3", 0.753046 AS "sv_4", 1.112635 AS "sv_5", -0.501177 AS "sv_6", -0.097742 AS "sv_7", 0.129210 AS "sv_8", -1.692665 AS "sv_9"
     UNION ALL
     SELECT 591 AS "sv_idx", 1.990149 AS "sv_0", -2.117940 AS "sv_1", 1.069416 AS "sv_2", -0.420162 AS "sv_3", -0.148738 AS "sv_4", -1.671677 AS "sv_5", -2.032266 AS "sv_6", -4.194418 AS "sv_7", -2.110883 AS "sv_8", -0.183647 AS "sv_9"
     UNION ALL
     SELECT 592 AS "sv_idx", -1.608485 AS "sv_0", 1.200705 AS "sv_1", 1.536321 AS "sv_2", 0.054011 AS "sv_3", -0.750818 AS "sv_4", 0.723786 AS "sv_5", 0.309122 AS "sv_6", 0.425390 AS "sv_7", 0.266626 AS "sv_8", 0.019270 AS "sv_9"
     UNION ALL
     SELECT 593 AS "sv_idx", 2.082364 AS "sv_0", -2.324117 AS "sv_1", 0.625613 AS "sv_2", 1.205184 AS "sv_3", -0.373506 AS "sv_4", -0.502813 AS "sv_5", 0.578501 AS "sv_6", -1.251319 AS "sv_7", -0.939277 AS "sv_8", 2.827898 AS "sv_9"
     UNION ALL
     SELECT 594 AS "sv_idx", -1.549126 AS "sv_0", 2.006433 AS "sv_1", 0.626743 AS "sv_2", -1.837524 AS "sv_3", -1.217387 AS "sv_4", 0.962167 AS "sv_5", -2.591049 AS "sv_6", -0.325376 AS "sv_7", 1.074745 AS "sv_8", 0.552253 AS "sv_9"
     UNION ALL
     SELECT 595 AS "sv_idx", 2.674310 AS "sv_0", -2.662872 AS "sv_1", 0.812666 AS "sv_2", 0.633467 AS "sv_3", 1.355880 AS "sv_4", 1.498868 AS "sv_5", -0.708252 AS "sv_6", -2.328318 AS "sv_7", -1.074207 AS "sv_8", -1.074494 AS "sv_9"
     UNION ALL
     SELECT 596 AS "sv_idx", -0.104400 AS "sv_0", -0.853368 AS "sv_1", 1.306539 AS "sv_2", 2.203409 AS "sv_3", 1.257275 AS "sv_4", 0.882259 AS "sv_5", 3.491565 AS "sv_6", 1.156033 AS "sv_7", -0.808958 AS "sv_8", -1.186445 AS "sv_9"
     UNION ALL
     SELECT 597 AS "sv_idx", 1.322900 AS "sv_0", -1.384009 AS "sv_1", -0.053055 AS "sv_2", 0.579644 AS "sv_3", 0.738904 AS "sv_4", 1.878232 AS "sv_5", -0.790270 AS "sv_6", -1.237837 AS "sv_7", 0.061657 AS "sv_8", 0.593321 AS "sv_9"
     UNION ALL
     SELECT 598 AS "sv_idx", -0.588014 AS "sv_0", 0.139092 AS "sv_1", -0.139627 AS "sv_2", -0.524243 AS "sv_3", 2.071547 AS "sv_4", -0.155452 AS "sv_5", -1.490873 AS "sv_6", -2.489905 AS "sv_7", -0.992623 AS "sv_8", -0.806454 AS "sv_9"
     UNION ALL
     SELECT 599 AS "sv_idx", -1.944487 AS "sv_0", 1.067351 AS "sv_1", -0.819251 AS "sv_2", 0.387449 AS "sv_3", 0.198507 AS "sv_4", 1.063341 AS "sv_5", -0.398386 AS "sv_6", -0.857773 AS "sv_7", 0.181689 AS "sv_8", -0.553877 AS "sv_9"
     UNION ALL
     SELECT 600 AS "sv_idx", -0.890087 AS "sv_0", -0.372762 AS "sv_1", -0.809427 AS "sv_2", 2.361706 AS "sv_3", 0.931043 AS "sv_4", -0.972304 AS "sv_5", 4.484413 AS "sv_6", 1.533809 AS "sv_7", -1.292689 AS "sv_8", 0.038912 AS "sv_9"
     UNION ALL
     SELECT 601 AS "sv_idx", -0.416250 AS "sv_0", 0.276082 AS "sv_1", -0.758529 AS "sv_2", -0.781287 AS "sv_3", -0.577707 AS "sv_4", -0.644372 AS "sv_5", -0.396572 AS "sv_6", -1.353559 AS "sv_7", -1.355716 AS "sv_8", 0.895889 AS "sv_9"
     UNION ALL
     SELECT 602 AS "sv_idx", 0.756419 AS "sv_0", -1.720107 AS "sv_1", 1.083163 AS "sv_2", 1.543038 AS "sv_3", -0.884096 AS "sv_4", 0.453067 AS "sv_5", 2.593415 AS "sv_6", -1.147572 AS "sv_7", -2.514206 AS "sv_8", 0.526314 AS "sv_9"
     UNION ALL
     SELECT 603 AS "sv_idx", -1.822453 AS "sv_0", 2.098420 AS "sv_1", 0.311669 AS "sv_2", -1.614064 AS "sv_3", 1.050487 AS "sv_4", -1.469684 AS "sv_5", -3.058970 AS "sv_6", -0.621755 AS "sv_7", 1.507907 AS "sv_8", -1.450382 AS "sv_9"
     UNION ALL
     SELECT 604 AS "sv_idx", 0.687819 AS "sv_0", -0.524691 AS "sv_1", 0.243428 AS "sv_2", -1.161356 AS "sv_3", 0.013541 AS "sv_4", 0.697505 AS "sv_5", -3.399783 AS "sv_6", -3.326823 AS "sv_7", -0.401850 AS "sv_8", -0.935175 AS "sv_9"
     UNION ALL
     SELECT 605 AS "sv_idx", -0.438059 AS "sv_0", -0.593217 AS "sv_1", 0.535711 AS "sv_2", 2.307372 AS "sv_3", -0.018147 AS "sv_4", 1.306160 AS "sv_5", 3.752574 AS "sv_6", 1.507209 AS "sv_7", -0.652815 AS "sv_8", -1.264657 AS "sv_9"
     UNION ALL
     SELECT 606 AS "sv_idx", 0.848572 AS "sv_0", -1.492235 AS "sv_1", 0.387337 AS "sv_2", 2.101126 AS "sv_3", 0.031702 AS "sv_4", 0.613361 AS "sv_5", 2.568774 AS "sv_6", 0.740099 AS "sv_7", -0.403472 AS "sv_8", 1.095200 AS "sv_9"
     UNION ALL
     SELECT 607 AS "sv_idx", -0.081407 AS "sv_0", 0.306090 AS "sv_1", 0.434086 AS "sv_2", -0.507385 AS "sv_3", 0.005958 AS "sv_4", 0.640975 AS "sv_5", 1.514500 AS "sv_6", 0.937734 AS "sv_7", -1.144262 AS "sv_8", 0.072324 AS "sv_9"
     UNION ALL
     SELECT 608 AS "sv_idx", -0.500279 AS "sv_0", 0.346459 AS "sv_1", 0.161740 AS "sv_2", -0.639738 AS "sv_3", 1.914362 AS "sv_4", -1.536383 AS "sv_5", -2.305324 AS "sv_6", -1.998910 AS "sv_7", 0.173300 AS "sv_8", -1.440788 AS "sv_9"
     UNION ALL
     SELECT 609 AS "sv_idx", 1.676924 AS "sv_0", -1.981704 AS "sv_1", 0.349061 AS "sv_2", 1.065056 AS "sv_3", 0.384306 AS "sv_4", -0.341733 AS "sv_5", 0.548541 AS "sv_6", -1.257190 AS "sv_7", -0.983151 AS "sv_8", -1.311756 AS "sv_9"
     UNION ALL
     SELECT 610 AS "sv_idx", -0.667310 AS "sv_0", 0.609176 AS "sv_1", 2.011088 AS "sv_2", -0.726514 AS "sv_3", -0.547383 AS "sv_4", 0.568984 AS "sv_5", -1.379891 AS "sv_6", -1.144170 AS "sv_7", -0.088069 AS "sv_8", -0.362758 AS "sv_9"
     UNION ALL
     SELECT 611 AS "sv_idx", 1.533466 AS "sv_0", -1.825786 AS "sv_1", 0.101517 AS "sv_2", 0.792686 AS "sv_3", -2.419705 AS "sv_4", -1.114936 AS "sv_5", 0.232855 AS "sv_6", -1.579125 AS "sv_7", -1.142194 AS "sv_8", 0.403919 AS "sv_9"
     UNION ALL
     SELECT 612 AS "sv_idx", -1.611587 AS "sv_0", 1.410749 AS "sv_1", 0.280383 AS "sv_2", -1.052775 AS "sv_3", -0.544534 AS "sv_4", -0.855047 AS "sv_5", -3.320656 AS "sv_6", -2.007735 AS "sv_7", 0.998678 AS "sv_8", -2.130695 AS "sv_9"
     UNION ALL
     SELECT 613 AS "sv_idx", 1.484106 AS "sv_0", -1.263964 AS "sv_1", 0.172785 AS "sv_2", -0.166651 AS "sv_3", -0.886579 AS "sv_4", -0.135705 AS "sv_5", -2.405012 AS "sv_6", -2.131681 AS "sv_7", 0.330050 AS "sv_8", 1.080059 AS "sv_9"
     UNION ALL
     SELECT 614 AS "sv_idx", -0.990892 AS "sv_0", 0.500330 AS "sv_1", -0.238863 AS "sv_2", -0.173377 AS "sv_3", -0.101600 AS "sv_4", 0.020075 AS "sv_5", -0.225277 AS "sv_6", -1.131669 AS "sv_7", -0.788517 AS "sv_8", 0.064302 AS "sv_9"
     UNION ALL
     SELECT 615 AS "sv_idx", -0.484263 AS "sv_0", 0.370107 AS "sv_1", -0.489626 AS "sv_2", -0.509836 AS "sv_3", 0.907221 AS "sv_4", 0.222795 AS "sv_5", -2.044341 AS "sv_6", -1.562975 AS "sv_7", 0.387057 AS "sv_8", -0.977680 AS "sv_9"
     UNION ALL
     SELECT 616 AS "sv_idx", -0.800480 AS "sv_0", 1.754308 AS "sv_1", 2.541972 AS "sv_2", -2.344611 AS "sv_3", -0.547350 AS "sv_4", -0.027490 AS "sv_5", -5.673384 AS "sv_6", -1.386605 AS "sv_7", 2.841038 AS "sv_8", 2.225281 AS "sv_9"
     UNION ALL
     SELECT 617 AS "sv_idx", 1.598077 AS "sv_0", -2.270233 AS "sv_1", -0.876836 AS "sv_2", 2.535891 AS "sv_3", -0.524826 AS "sv_4", 0.786182 AS "sv_5", 3.240566 AS "sv_6", 0.728707 AS "sv_7", -0.836147 AS "sv_8", -1.187786 AS "sv_9"
     UNION ALL
     SELECT 618 AS "sv_idx", 2.397622 AS "sv_0", -2.310723 AS "sv_1", -2.082274 AS "sv_2", 0.365472 AS "sv_3", 0.729130 AS "sv_4", -0.748398 AS "sv_5", -1.270336 AS "sv_6", -2.371975 AS "sv_7", -0.718760 AS "sv_8", 1.156589 AS "sv_9"
     UNION ALL
     SELECT 619 AS "sv_idx", 1.387206 AS "sv_0", -1.859745 AS "sv_1", 0.544166 AS "sv_2", 0.832405 AS "sv_3", -1.203015 AS "sv_4", 1.128912 AS "sv_5", 0.819827 AS "sv_6", -1.779063 AS "sv_7", -1.874456 AS "sv_8", -0.911721 AS "sv_9"
     UNION ALL
     SELECT 620 AS "sv_idx", 2.323866 AS "sv_0", -2.399081 AS "sv_1", -0.936844 AS "sv_2", 0.662317 AS "sv_3", 1.704777 AS "sv_4", 0.266302 AS "sv_5", -0.450765 AS "sv_6", -2.115446 AS "sv_7", -1.093692 AS "sv_8", 0.208687 AS "sv_9"
     UNION ALL
     SELECT 621 AS "sv_idx", -0.071947 AS "sv_0", 0.242194 AS "sv_1", 2.321921 AS "sv_2", -0.381042 AS "sv_3", -0.250458 AS "sv_4", 0.848285 AS "sv_5", 0.370140 AS "sv_6", 0.366872 AS "sv_7", -0.360941 AS "sv_8", 0.290686 AS "sv_9"
     UNION ALL
     SELECT 622 AS "sv_idx", -0.834755 AS "sv_0", -0.827616 AS "sv_1", -0.460817 AS "sv_2", 1.728426 AS "sv_3", 0.147376 AS "sv_4", -1.112283 AS "sv_5", 1.822734 AS "sv_6", -2.166419 AS "sv_7", -2.289160 AS "sv_8", -0.307407 AS "sv_9"
     UNION ALL
     SELECT 623 AS "sv_idx", 1.693457 AS "sv_0", -1.758489 AS "sv_1", -0.314347 AS "sv_2", 0.210723 AS "sv_3", -2.019835 AS "sv_4", -0.156549 AS "sv_5", -1.068869 AS "sv_6", -2.302999 AS "sv_7", -0.916077 AS "sv_8", 0.579782 AS "sv_9"
     UNION ALL
     SELECT 624 AS "sv_idx", -0.220316 AS "sv_0", 0.424637 AS "sv_1", 1.751847 AS "sv_2", -1.025737 AS "sv_3", 0.617215 AS "sv_4", -0.427646 AS "sv_5", -2.409722 AS "sv_6", -1.527503 AS "sv_7", 0.351565 AS "sv_8", 1.239609 AS "sv_9"
     UNION ALL
     SELECT 625 AS "sv_idx", 1.065531 AS "sv_0", -1.509086 AS "sv_1", -1.185977 AS "sv_2", 0.921286 AS "sv_3", 0.904860 AS "sv_4", -3.556731 AS "sv_5", 0.706527 AS "sv_6", -1.244441 AS "sv_7", -1.185676 AS "sv_8", 0.911820 AS "sv_9"
     UNION ALL
     SELECT 626 AS "sv_idx", 0.821478 AS "sv_0", -1.341559 AS "sv_1", 0.326551 AS "sv_2", 1.572488 AS "sv_3", -0.096546 AS "sv_4", -0.214869 AS "sv_5", 1.655795 AS "sv_6", 0.080053 AS "sv_7", -0.459866 AS "sv_8", -1.264217 AS "sv_9"
     UNION ALL
     SELECT 627 AS "sv_idx", -0.129845 AS "sv_0", -0.108267 AS "sv_1", 0.112675 AS "sv_2", 0.078495 AS "sv_3", 0.026043 AS "sv_4", 0.298819 AS "sv_5", -0.556326 AS "sv_6", -0.913446 AS "sv_7", -0.145635 AS "sv_8", 0.171454 AS "sv_9"
     UNION ALL
     SELECT 628 AS "sv_idx", -0.166304 AS "sv_0", -0.240598 AS "sv_1", -2.102686 AS "sv_2", 0.391461 AS "sv_3", -2.361245 AS "sv_4", 1.715886 AS "sv_5", -0.116654 AS "sv_6", -0.876471 AS "sv_7", -0.311135 AS "sv_8", -0.344502 AS "sv_9"
     UNION ALL
     SELECT 629 AS "sv_idx", 1.557540 AS "sv_0", -2.478364 AS "sv_1", 0.248819 AS "sv_2", 2.184098 AS "sv_3", 1.700319 AS "sv_4", -0.140229 AS "sv_5", 3.644297 AS "sv_6", -0.479801 AS "sv_7", -2.585171 AS "sv_8", 0.530817 AS "sv_9"
     UNION ALL
     SELECT 630 AS "sv_idx", -1.712743 AS "sv_0", 1.902913 AS "sv_1", -0.388714 AS "sv_2", -1.923115 AS "sv_3", -0.594852 AS "sv_4", -0.739416 AS "sv_5", -5.045153 AS "sv_6", -2.419770 AS "sv_7", 1.728457 AS "sv_8", -0.154601 AS "sv_9"
     UNION ALL
     SELECT 631 AS "sv_idx", 0.195987 AS "sv_0", -0.351597 AS "sv_1", -0.145925 AS "sv_2", 0.151155 AS "sv_3", 1.248574 AS "sv_4", 0.053094 AS "sv_5", -1.081106 AS "sv_6", -1.097032 AS "sv_7", 0.259417 AS "sv_8", 0.687820 AS "sv_9"
     UNION ALL
     SELECT 632 AS "sv_idx", 0.291352 AS "sv_0", 0.946584 AS "sv_1", -0.977024 AS "sv_2", -2.133370 AS "sv_3", 1.021160 AS "sv_4", 1.863151 AS "sv_5", -4.128919 AS "sv_6", -0.489509 AS "sv_7", 2.084034 AS "sv_8", -2.160699 AS "sv_9"
     UNION ALL
     SELECT 633 AS "sv_idx", -0.192565 AS "sv_0", 0.975115 AS "sv_1", 0.241947 AS "sv_2", -1.731180 AS "sv_3", 0.781455 AS "sv_4", 1.549164 AS "sv_5", -4.407842 AS "sv_6", -1.263046 AS "sv_7", 2.072449 AS "sv_8", -0.878524 AS "sv_9"
     UNION ALL
     SELECT 634 AS "sv_idx", 2.064895 AS "sv_0", -1.945791 AS "sv_1", -2.029140 AS "sv_2", -0.311415 AS "sv_3", 0.442332 AS "sv_4", -0.193959 AS "sv_5", -2.111351 AS "sv_6", -3.219500 AS "sv_7", -1.099663 AS "sv_8", 0.012909 AS "sv_9"
     UNION ALL
     SELECT 635 AS "sv_idx", -0.897581 AS "sv_0", 1.051047 AS "sv_1", 0.612714 AS "sv_2", -0.903562 AS "sv_3", -1.251725 AS "sv_4", -0.013907 AS "sv_5", -2.950925 AS "sv_6", -1.059280 AS "sv_7", 1.488445 AS "sv_8", 0.095427 AS "sv_9"
     UNION ALL
     SELECT 636 AS "sv_idx", -0.097847 AS "sv_0", -0.366979 AS "sv_1", -0.137783 AS "sv_2", 0.458854 AS "sv_3", 0.488596 AS "sv_4", 0.816494 AS "sv_5", 0.135803 AS "sv_6", -0.961371 AS "sv_7", -0.598609 AS "sv_8", 0.077155 AS "sv_9"
     UNION ALL
     SELECT 637 AS "sv_idx", -0.472924 AS "sv_0", 1.168459 AS "sv_1", -2.142732 AS "sv_2", -1.567629 AS "sv_3", 0.514810 AS "sv_4", -0.894882 AS "sv_5", -4.653378 AS "sv_6", -1.172860 AS "sv_7", 2.565812 AS "sv_8", -1.278092 AS "sv_9"
     UNION ALL
     SELECT 638 AS "sv_idx", 0.602967 AS "sv_0", -1.126878 AS "sv_1", -1.899376 AS "sv_2", 0.119424 AS "sv_3", 0.091624 AS "sv_4", -1.764588 AS "sv_5", 0.102231 AS "sv_6", -2.444051 AS "sv_7", -2.204527 AS "sv_8", -0.157448 AS "sv_9"
     UNION ALL
     SELECT 639 AS "sv_idx", 0.390478 AS "sv_0", 0.368554 AS "sv_1", -0.739702 AS "sv_2", -1.448180 AS "sv_3", -0.166809 AS "sv_4", 0.358634 AS "sv_5", -1.728400 AS "sv_6", -0.356322 AS "sv_7", 0.265003 AS "sv_8", -0.137915 AS "sv_9"
     UNION ALL
     SELECT 640 AS "sv_idx", 1.353183 AS "sv_0", -1.373728 AS "sv_1", 0.584152 AS "sv_2", 0.294080 AS "sv_3", 1.260270 AS "sv_4", 1.906117 AS "sv_5", -1.169760 AS "sv_6", -1.690868 AS "sv_7", -0.174982 AS "sv_8", 0.346571 AS "sv_9"
     UNION ALL
     SELECT 641 AS "sv_idx", 0.605828 AS "sv_0", -1.755129 AS "sv_1", 0.817024 AS "sv_2", 2.458164 AS "sv_3", 0.272247 AS "sv_4", -0.763466 AS "sv_5", 4.435491 AS "sv_6", 0.440382 AS "sv_7", -2.277112 AS "sv_8", -0.657098 AS "sv_9"
     UNION ALL
     SELECT 642 AS "sv_idx", -1.309919 AS "sv_0", 1.258575 AS "sv_1", 0.018831 AS "sv_2", -0.522560 AS "sv_3", -0.756988 AS "sv_4", -2.366345 AS "sv_5", -0.709334 AS "sv_6", 0.180777 AS "sv_7", 0.608041 AS "sv_8", -0.052686 AS "sv_9"
     UNION ALL
     SELECT 643 AS "sv_idx", -0.775105 AS "sv_0", 0.190205 AS "sv_1", 1.223340 AS "sv_2", 0.153046 AS "sv_3", 2.221695 AS "sv_4", 1.709722 AS "sv_5", 0.117350 AS "sv_6", -1.113185 AS "sv_7", -0.886042 AS "sv_8", -0.438884 AS "sv_9"
     UNION ALL
     SELECT 644 AS "sv_idx", -1.218172 AS "sv_0", 0.280087 AS "sv_1", -0.608250 AS "sv_2", 0.605950 AS "sv_3", 0.835139 AS "sv_4", -2.168502 AS "sv_5", -0.048665 AS "sv_6", -1.418672 AS "sv_7", -0.569507 AS "sv_8", -1.449312 AS "sv_9"
     UNION ALL
     SELECT 645 AS "sv_idx", 0.904161 AS "sv_0", -1.615715 AS "sv_1", -1.116545 AS "sv_2", 1.954525 AS "sv_3", 0.643208 AS "sv_4", -1.383483 AS "sv_5", 2.649748 AS "sv_6", 0.252977 AS "sv_7", -1.035644 AS "sv_8", -2.144301 AS "sv_9"
     UNION ALL
     SELECT 646 AS "sv_idx", -1.468344 AS "sv_0", 0.757718 AS "sv_1", 0.313330 AS "sv_2", 0.238991 AS "sv_3", 0.105622 AS "sv_4", 0.007788 AS "sv_5", 2.925140 AS "sv_6", 0.585842 AS "sv_7", -2.157883 AS "sv_8", -2.120732 AS "sv_9"
     UNION ALL
     SELECT 647 AS "sv_idx", 0.936472 AS "sv_0", -0.487335 AS "sv_1", 1.637470 AS "sv_2", -0.412834 AS "sv_3", 0.495839 AS "sv_4", 1.614820 AS "sv_5", 0.091951 AS "sv_6", 0.152633 AS "sv_7", -0.393650 AS "sv_8", -0.978448 AS "sv_9"
     UNION ALL
     SELECT 648 AS "sv_idx", 0.499211 AS "sv_0", -0.296731 AS "sv_1", 1.513491 AS "sv_2", -0.954644 AS "sv_3", 0.764450 AS "sv_4", 1.988053 AS "sv_5", -3.271693 AS "sv_6", -2.622119 AS "sv_7", 0.266923 AS "sv_8", -0.262879 AS "sv_9"
     UNION ALL
     SELECT 649 AS "sv_idx", -0.262850 AS "sv_0", 1.055144 AS "sv_1", 0.536154 AS "sv_2", -1.465330 AS "sv_3", -0.106405 AS "sv_4", 0.637564 AS "sv_5", -0.736220 AS "sv_6", 0.921201 AS "sv_7", 0.411193 AS "sv_8", -0.768473 AS "sv_9"
     UNION ALL
     SELECT 650 AS "sv_idx", -0.518828 AS "sv_0", 0.409220 AS "sv_1", -0.414329 AS "sv_2", -0.419630 AS "sv_3", -0.124203 AS "sv_4", -0.820705 AS "sv_5", -1.932838 AS "sv_6", -1.330157 AS "sv_7", 0.551327 AS "sv_8", 0.206959 AS "sv_9"
     UNION ALL
     SELECT 651 AS "sv_idx", 0.704869 AS "sv_0", -0.695366 AS "sv_1", 0.101465 AS "sv_2", -0.168772 AS "sv_3", 0.660315 AS "sv_4", -1.702706 AS "sv_5", -1.877791 AS "sv_6", -1.840394 AS "sv_7", 0.121393 AS "sv_8", -0.503225 AS "sv_9"
     UNION ALL
     SELECT 652 AS "sv_idx", 1.533786 AS "sv_0", -2.094492 AS "sv_1", -0.227860 AS "sv_2", 1.023954 AS "sv_3", -1.292571 AS "sv_4", 1.109497 AS "sv_5", 1.299064 AS "sv_6", -1.786479 AS "sv_7", -2.236669 AS "sv_8", -0.866332 AS "sv_9"
     UNION ALL
     SELECT 653 AS "sv_idx", -1.131066 AS "sv_0", 1.268985 AS "sv_1", 2.320517 AS "sv_2", -1.273140 AS "sv_3", -0.541651 AS "sv_4", 1.373434 AS "sv_5", -2.081128 AS "sv_6", -0.976743 AS "sv_7", 0.390603 AS "sv_8", 0.447677 AS "sv_9"
     UNION ALL
     SELECT 654 AS "sv_idx", -1.502076 AS "sv_0", 1.238841 AS "sv_1", 0.269698 AS "sv_2", -0.804229 AS "sv_3", 1.127509 AS "sv_4", 0.637580 AS "sv_5", -1.369056 AS "sv_6", -1.115460 AS "sv_7", -0.047967 AS "sv_8", -0.920748 AS "sv_9"
     UNION ALL
     SELECT 655 AS "sv_idx", -1.950070 AS "sv_0", 1.745131 AS "sv_1", -1.672214 AS "sv_2", -0.970409 AS "sv_3", 1.217940 AS "sv_4", 0.764962 AS "sv_5", -1.693918 AS "sv_6", -0.784932 AS "sv_7", 0.489224 AS "sv_8", 0.194634 AS "sv_9"
     UNION ALL
     SELECT 656 AS "sv_idx", -0.371911 AS "sv_0", 0.525484 AS "sv_1", -1.274141 AS "sv_2", -0.494924 AS "sv_3", -0.783173 AS "sv_4", -0.740713 AS "sv_5", -1.591432 AS "sv_6", -0.434777 AS "sv_7", 0.903656 AS "sv_8", 1.429035 AS "sv_9"
     UNION ALL
     SELECT 657 AS "sv_idx", -0.591016 AS "sv_0", 0.681949 AS "sv_1", 1.513098 AS "sv_2", -0.970444 AS "sv_3", 1.158065 AS "sv_4", 1.853722 AS "sv_5", -2.447227 AS "sv_6", -1.493927 AS "sv_7", 0.503462 AS "sv_8", -0.890079 AS "sv_9"
     UNION ALL
     SELECT 658 AS "sv_idx", 0.245394 AS "sv_0", 0.248918 AS "sv_1", -0.901834 AS "sv_2", -0.905639 AS "sv_3", -0.365262 AS "sv_4", -0.116766 AS "sv_5", -1.732459 AS "sv_6", -0.450712 AS "sv_7", 0.638994 AS "sv_8", 0.246210 AS "sv_9"
     UNION ALL
     SELECT 659 AS "sv_idx", 2.135544 AS "sv_0", -1.990437 AS "sv_1", -0.000841 AS "sv_2", 0.200358 AS "sv_3", -0.030045 AS "sv_4", 0.549363 AS "sv_5", -1.634135 AS "sv_6", -2.261949 AS "sv_7", -0.352586 AS "sv_8", 0.057097 AS "sv_9"
     UNION ALL
     SELECT 660 AS "sv_idx", 2.053477 AS "sv_0", -2.477654 AS "sv_1", 1.232242 AS "sv_2", 1.618439 AS "sv_3", 0.084607 AS "sv_4", 0.905218 AS "sv_5", 1.565130 AS "sv_6", -0.881455 AS "sv_7", -1.298786 AS "sv_8", -1.450482 AS "sv_9"
     UNION ALL
     SELECT 661 AS "sv_idx", -1.498740 AS "sv_0", 1.390276 AS "sv_1", -1.249540 AS "sv_2", -1.051183 AS "sv_3", 0.183374 AS "sv_4", -0.363056 AS "sv_5", -2.054521 AS "sv_6", -1.191105 AS "sv_7", 0.394004 AS "sv_8", -0.155555 AS "sv_9"
     UNION ALL
     SELECT 662 AS "sv_idx", -1.224336 AS "sv_0", 2.071292 AS "sv_1", -0.745429 AS "sv_2", -2.451622 AS "sv_3", -0.143033 AS "sv_4", -2.605754 AS "sv_5", -7.652089 AS "sv_6", -2.394814 AS "sv_7", 3.961910 AS "sv_8", 0.532632 AS "sv_9"
     UNION ALL
     SELECT 663 AS "sv_idx", 2.646686 AS "sv_0", -3.149569 AS "sv_1", 0.626017 AS "sv_2", 1.869332 AS "sv_3", 0.670420 AS "sv_4", 0.046635 AS "sv_5", 2.160993 AS "sv_6", -1.205136 AS "sv_7", -2.056805 AS "sv_8", -0.372278 AS "sv_9"
     UNION ALL
     SELECT 664 AS "sv_idx", -0.787461 AS "sv_0", -0.340258 AS "sv_1", -0.788068 AS "sv_2", 1.556890 AS "sv_3", -0.502297 AS "sv_4", -0.306153 AS "sv_5", 3.211867 AS "sv_6", 0.223510 AS "sv_7", -1.781260 AS "sv_8", -0.631457 AS "sv_9"
     UNION ALL
     SELECT 665 AS "sv_idx", -1.752642 AS "sv_0", 1.417980 AS "sv_1", 0.638036 AS "sv_2", -0.529246 AS "sv_3", -1.143996 AS "sv_4", -0.387909 AS "sv_5", -2.196506 AS "sv_6", -1.112004 AS "sv_7", 1.056529 AS "sv_8", 0.046718 AS "sv_9"
     UNION ALL
     SELECT 666 AS "sv_idx", 1.363014 AS "sv_0", -1.366170 AS "sv_1", -0.619959 AS "sv_2", 0.015884 AS "sv_3", -1.239139 AS "sv_4", -0.608079 AS "sv_5", -1.559777 AS "sv_6", -2.204440 AS "sv_7", -0.445444 AS "sv_8", -0.995430 AS "sv_9"
     UNION ALL
     SELECT 667 AS "sv_idx", 0.174451 AS "sv_0", 0.473232 AS "sv_1", -0.063343 AS "sv_2", -1.435292 AS "sv_3", -1.311284 AS "sv_4", 0.410587 AS "sv_5", -1.843437 AS "sv_6", -0.579503 AS "sv_7", 0.222414 AS "sv_8", 0.496109 AS "sv_9"
     UNION ALL
     SELECT 668 AS "sv_idx", 1.803288 AS "sv_0", -1.730818 AS "sv_1", -1.071828 AS "sv_2", -0.709659 AS "sv_3", 1.046883 AS "sv_4", -0.613064 AS "sv_5", -2.442582 AS "sv_6", -3.820410 AS "sv_7", -1.574665 AS "sv_8", -1.080055 AS "sv_9"
     UNION ALL
     SELECT 669 AS "sv_idx", 1.020913 AS "sv_0", -0.647910 AS "sv_1", -0.725526 AS "sv_2", -0.405263 AS "sv_3", -1.883260 AS "sv_4", 0.128171 AS "sv_5", 0.136188 AS "sv_6", -0.199124 AS "sv_7", -0.748879 AS "sv_8", -0.217757 AS "sv_9"
     UNION ALL
     SELECT 670 AS "sv_idx", -1.743265 AS "sv_0", 0.891375 AS "sv_1", 1.671782 AS "sv_2", 0.714063 AS "sv_3", -0.187573 AS "sv_4", 1.230702 AS "sv_5", 1.311203 AS "sv_6", 0.265348 AS "sv_7", -0.360963 AS "sv_8", 0.011059 AS "sv_9"
     UNION ALL
     SELECT 671 AS "sv_idx", -1.134328 AS "sv_0", 1.876722 AS "sv_1", 2.781903 AS "sv_2", -1.721150 AS "sv_3", -0.139043 AS "sv_4", 0.753420 AS "sv_5", -3.843851 AS "sv_6", -0.109672 AS "sv_7", 2.604619 AS "sv_8", 0.626265 AS "sv_9"
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
           EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.050627 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 0.665132 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 0.646563 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 0.230857 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 0.220883 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 0.765706 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 0.763203 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 0.265082 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 0.458347 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", 0.580648 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 0.508696 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 81 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", 0.298919 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 86 AS "sv_idx", 0.897537 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 95 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 96 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 100 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 101 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 103 AS "sv_idx", 0.812873 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 104 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 107 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 108 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 111 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 114 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 116 AS "sv_idx", 0.743644 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 123 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 124 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 125 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 126 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 128 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 129 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 130 AS "sv_idx", 0.550219 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 132 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 133 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 136 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 137 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 140 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 142 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 145 AS "sv_idx", 0.286070 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 147 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 150 AS "sv_idx", 0.541653 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 152 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 153 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 154 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 155 AS "sv_idx", 0.334868 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 157 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 158 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 162 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 163 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 166 AS "sv_idx", 0.616479 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 168 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 169 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 172 AS "sv_idx", 0.558629 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 174 AS "sv_idx", 0.633416 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 176 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 180 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 184 AS "sv_idx", 0.848941 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 185 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 188 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 192 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 193 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 195 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 196 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 199 AS "sv_idx", 0.665132 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 201 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 202 AS "sv_idx", 0.646563 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 203 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 204 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 206 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 207 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 209 AS "sv_idx", 0.230857 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 212 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 213 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 214 AS "sv_idx", 0.220883 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 215 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 216 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 217 AS "sv_idx", 0.765706 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 218 AS "sv_idx", 0.763203 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 223 AS "sv_idx", 0.265082 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 224 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 226 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 227 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 230 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 235 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 236 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 238 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 240 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 244 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 246 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 248 AS "sv_idx", 0.458347 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 250 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 252 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 255 AS "sv_idx", 0.580648 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 256 AS "sv_idx", 0.508696 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 260 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 263 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 266 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 267 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 268 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 269 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 270 AS "sv_idx", 0.298919 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 271 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 273 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 274 AS "sv_idx", 0.897537 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 275 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 276 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 278 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 280 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 281 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 283 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 284 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 288 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 289 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 291 AS "sv_idx", 0.812873 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 292 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 295 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 296 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 299 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 302 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 304 AS "sv_idx", 0.743644 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 311 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 312 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 313 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 314 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 316 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 317 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 318 AS "sv_idx", 0.550219 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 320 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 321 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 0.829169 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 6 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 12 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 15 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 16 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 17 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 18 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 19 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 20 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 22 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 25 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 26 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 27 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 30 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 31 AS "sv_idx", 0.841153 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 32 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 33 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 35 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 36 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 37 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 39 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 41 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 42 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 44 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 45 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 47 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 48 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 49 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 50 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 51 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 52 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 53 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 54 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 57 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 58 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 60 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 61 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 62 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 63 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 64 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 69 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 70 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 71 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 72 AS "sv_idx", 0.170831 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 73 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 76 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 77 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 78 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 80 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 81 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 83 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 85 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 87 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 88 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 89 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 92 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 94 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 95 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 97 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 98 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 99 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 100 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 101 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 103 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 105 AS "sv_idx", 0.895039 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 106 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 109 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 111 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 112 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 113 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 114 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 115 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 116 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 117 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 121 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 123 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 128 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 129 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 130 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 131 AS "sv_idx", 0.819854 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 132 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 133 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 134 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 135 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 136 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 137 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 142 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 143 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 144 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 145 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 149 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 151 AS "sv_idx", 0.012582 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 152 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 153 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 155 AS "sv_idx", 0.987418 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 156 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 157 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 159 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 160 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 161 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 163 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 166 AS "sv_idx", 0.676705 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 168 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 170 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 171 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 172 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 174 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 175 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 176 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 177 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 180 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 181 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 182 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 183 AS "sv_idx", 0.956821 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 185 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 187 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 322 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 326 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 327 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 329 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 330 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 333 AS "sv_idx", 0.665132 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 335 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 336 AS "sv_idx", 0.646563 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 337 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 338 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 340 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 341 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 343 AS "sv_idx", 0.230857 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 346 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 347 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 348 AS "sv_idx", 0.220883 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 349 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 350 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 351 AS "sv_idx", 0.765706 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 352 AS "sv_idx", 0.763203 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 357 AS "sv_idx", 0.265082 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 358 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 360 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 361 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 364 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 369 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 370 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 372 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 374 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 378 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 380 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 382 AS "sv_idx", 0.458347 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 384 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 386 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 389 AS "sv_idx", 0.580648 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 390 AS "sv_idx", 0.508696 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 394 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 397 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 400 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 401 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 402 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 403 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 404 AS "sv_idx", 0.298919 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 405 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 407 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 408 AS "sv_idx", 0.897537 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 409 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 410 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 412 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 414 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 415 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 417 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 418 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 422 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 423 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 425 AS "sv_idx", 0.812873 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 426 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 429 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 430 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 433 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 436 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 438 AS "sv_idx", 0.743644 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 445 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 446 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 447 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 448 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 450 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 451 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 452 AS "sv_idx", 0.550219 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 454 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 455 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 458 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 459 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 462 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 464 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 467 AS "sv_idx", 0.286070 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 469 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 472 AS "sv_idx", 0.541653 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 474 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 475 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 476 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 477 AS "sv_idx", 0.334868 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 479 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 480 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 484 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 485 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 488 AS "sv_idx", 0.616479 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 490 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 491 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 494 AS "sv_idx", 0.558629 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 496 AS "sv_idx", 0.633416 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 498 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 0 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 1 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 3 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 4 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 5 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 7 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 10 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 11 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 0.795465 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 16 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 18 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 19 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 22 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 23 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 25 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 30 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 33 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 34 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 38 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 39 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 40 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 42 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 43 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 46 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 50 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 52 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 53 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 54 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 55 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 56 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 57 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 58 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 59 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 61 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 65 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 66 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 68 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 73 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 74 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 75 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 78 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 79 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 80 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 82 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 83 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 84 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 85 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 89 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 90 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 91 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 95 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 96 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 97 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 101 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 102 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 104 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 105 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 108 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 109 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 110 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 111 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 112 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 113 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 115 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 116 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 118 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 119 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 120 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 121 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 122 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 123 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 124 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 125 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 126 AS "sv_idx", 0.652968 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 127 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 128 AS "sv_idx", 0.766186 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 129 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 130 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 131 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 132 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 133 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 134 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 135 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 137 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 138 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 139 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 141 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 142 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 143 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 144 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 145 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 146 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 148 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 149 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 150 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 153 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 156 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 157 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 158 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 162 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 163 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 164 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 165 AS "sv_idx", 0.827114 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 166 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 167 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 168 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 169 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 170 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 171 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 172 AS "sv_idx", 0.822612 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 173 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 174 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 175 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 176 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 177 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 178 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 179 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 180 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 181 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 182 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 185 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 186 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 499 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 503 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 504 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 506 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 507 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 510 AS "sv_idx", 0.665132 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 512 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 513 AS "sv_idx", 0.646563 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 514 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 515 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 517 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 518 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 520 AS "sv_idx", 0.230857 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 523 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 524 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 525 AS "sv_idx", 0.220883 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 526 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 527 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 528 AS "sv_idx", 0.765706 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 529 AS "sv_idx", 0.763203 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 534 AS "sv_idx", 0.265082 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 535 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 537 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 538 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 541 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 546 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 547 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 549 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 551 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 555 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 557 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 559 AS "sv_idx", 0.458347 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 561 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 563 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 566 AS "sv_idx", 0.580648 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 567 AS "sv_idx", 0.508696 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 571 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 574 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 577 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 578 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 579 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 580 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 581 AS "sv_idx", 0.298919 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 582 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 584 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 585 AS "sv_idx", 0.897537 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 586 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 587 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 589 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 591 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 592 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 594 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 595 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 599 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 600 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 602 AS "sv_idx", 0.812873 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 603 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 606 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 607 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 610 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 613 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 615 AS "sv_idx", 0.743644 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 622 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 623 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 624 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 625 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 627 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 628 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 629 AS "sv_idx", 0.550219 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 631 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 632 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 635 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 636 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 639 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 641 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 644 AS "sv_idx", 0.286070 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 646 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 649 AS "sv_idx", 0.541653 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 651 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 652 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 653 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 654 AS "sv_idx", 0.334868 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 656 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 657 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 661 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 662 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 665 AS "sv_idx", 0.616479 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 667 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 668 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 671 AS "sv_idx", 0.558629 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 188 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 189 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 190 AS "sv_idx", 0.829169 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 191 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 193 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 194 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 196 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 197 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 199 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 200 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 203 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 204 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 205 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 206 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 207 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 208 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 210 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 213 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 214 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 215 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 218 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 219 AS "sv_idx", 0.841153 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 220 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 221 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 223 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 224 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 225 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 227 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 229 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 230 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 232 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 233 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 235 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 236 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 237 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 238 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 239 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 240 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 241 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 242 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 245 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 246 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 248 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 249 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 250 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 251 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 252 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 257 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 258 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 259 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 260 AS "sv_idx", 0.170831 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 261 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 264 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 265 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 266 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 268 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 269 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 271 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 273 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 275 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 276 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 277 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 280 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 282 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 283 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 285 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 286 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 287 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 288 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 289 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 291 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 293 AS "sv_idx", 0.895039 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 294 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 297 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 299 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 300 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 301 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 302 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 303 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 304 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 305 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 309 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 311 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 316 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 317 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 318 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 319 AS "sv_idx", 0.819854 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 320 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 321 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 322 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 323 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 324 AS "sv_idx", 0.829169 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 325 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 327 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 328 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 330 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 331 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 333 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 334 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 337 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 338 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 339 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 340 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 341 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 342 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 344 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 347 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 348 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 349 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 352 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 353 AS "sv_idx", 0.841153 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 354 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 355 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 357 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 358 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 359 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 361 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 363 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 364 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 366 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 367 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 369 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 370 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 371 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 372 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 373 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 374 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 375 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 376 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 379 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 380 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 382 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 383 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 384 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 385 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 386 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 391 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 392 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 393 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 394 AS "sv_idx", 0.170831 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 395 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 398 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 399 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 400 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 402 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 403 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 405 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 407 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 409 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 410 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 411 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 414 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 416 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 417 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 419 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 420 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 421 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 422 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 423 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 425 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 427 AS "sv_idx", 0.895039 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 428 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 431 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 433 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 434 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 435 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 436 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 437 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 438 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 439 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 443 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 445 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 450 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 451 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 452 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 453 AS "sv_idx", 0.819854 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 454 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 455 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 456 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 457 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 458 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 459 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 464 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 465 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 466 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 467 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 471 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 473 AS "sv_idx", 0.012582 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 474 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 475 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 477 AS "sv_idx", 0.987418 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 478 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 479 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 481 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 482 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 483 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 485 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 488 AS "sv_idx", 0.676705 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 490 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 492 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 493 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 494 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 496 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 497 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 498 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 188 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 189 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 191 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 192 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 193 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 195 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 198 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 199 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 200 AS "sv_idx", 0.795465 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 201 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 202 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 204 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 206 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 207 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 210 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 211 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 213 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 218 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 221 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 222 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 226 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 227 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 228 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 230 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 231 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 234 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 238 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 240 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 241 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 242 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 243 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 244 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 245 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 246 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 247 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 249 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 253 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 254 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 256 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 261 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 262 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 263 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 266 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 267 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 268 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 270 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 271 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 272 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 273 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 277 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 278 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 279 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 283 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 284 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 285 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 289 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 290 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 292 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 293 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 296 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 297 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 298 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 299 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 300 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 301 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 303 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 304 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 306 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 307 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 308 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 309 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 310 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 311 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 312 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 313 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 314 AS "sv_idx", 0.652968 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 315 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 316 AS "sv_idx", 0.766186 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 317 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 318 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 319 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 320 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 321 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 499 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 500 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 501 AS "sv_idx", 0.829169 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 502 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 504 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 505 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 507 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 508 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 510 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 511 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 514 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 515 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 516 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 517 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 518 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 519 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 521 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 524 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 525 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 526 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 529 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 530 AS "sv_idx", 0.841153 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 531 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 532 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 534 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 535 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 536 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 538 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 540 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 541 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 543 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 544 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 546 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 547 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 548 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 549 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 550 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 551 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 552 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 553 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 556 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 557 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 559 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 560 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 561 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 562 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 563 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 568 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 569 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 570 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 571 AS "sv_idx", 0.170831 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 572 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 575 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 576 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 577 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 579 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 580 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 582 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 584 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 586 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 587 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 588 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 591 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 593 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 594 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 596 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 597 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 598 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 599 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 600 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 602 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 604 AS "sv_idx", 0.895039 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 605 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 608 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 610 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 611 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 612 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 613 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 614 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 615 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 616 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 620 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 622 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 627 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 628 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 629 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 630 AS "sv_idx", 0.819854 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 631 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 632 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 633 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 634 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 635 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 636 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 641 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 642 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 643 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 644 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 648 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 650 AS "sv_idx", 0.012582 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 651 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 652 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 654 AS "sv_idx", 0.987418 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 655 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 656 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 658 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 659 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 660 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 662 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 665 AS "sv_idx", 0.676705 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 667 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 669 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 670 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 671 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 322 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 323 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 325 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 326 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 327 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 329 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 332 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 333 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 334 AS "sv_idx", 0.795465 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 335 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 336 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 338 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 340 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 341 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 344 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 345 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 347 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 352 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 355 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 356 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 360 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 361 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 362 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 364 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 365 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 368 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 372 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 374 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 375 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 376 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 377 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 378 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 379 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 380 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 381 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 383 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 387 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 388 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 390 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 395 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 396 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 397 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 400 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 401 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 402 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 404 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 405 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 406 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 407 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 411 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 412 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 413 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 417 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 418 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 419 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 423 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 424 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 426 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 427 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 430 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 431 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 432 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 433 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 434 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 435 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 437 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 438 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 440 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 441 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 442 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 443 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 444 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 445 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 446 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 447 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 448 AS "sv_idx", 0.652968 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 449 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 450 AS "sv_idx", 0.766186 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 451 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 452 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 453 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 454 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 455 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 456 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 457 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 459 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 460 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 461 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 463 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 464 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 465 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 466 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 467 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 468 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 470 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 471 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 472 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 475 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 478 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 479 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 480 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 484 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 485 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 486 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 487 AS "sv_idx", 0.827114 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 488 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 489 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 490 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 491 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 492 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 493 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 494 AS "sv_idx", 0.822612 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 495 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 496 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 497 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 498 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 499 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 500 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 502 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 503 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 504 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 506 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 509 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 510 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 511 AS "sv_idx", 0.795465 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 512 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 513 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 515 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 517 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 518 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 521 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 522 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 524 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 529 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 532 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 533 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 537 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 538 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 539 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 541 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 542 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 545 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 549 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 551 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 552 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 553 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 554 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 555 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 556 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 557 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 558 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 560 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 564 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 565 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 567 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 572 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 573 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 574 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 577 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 578 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 579 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 581 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 582 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 583 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 584 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 588 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 589 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 590 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 594 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 595 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 596 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 600 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 601 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 603 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 604 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 607 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 608 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 609 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 610 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 611 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 612 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 614 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 615 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 617 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 618 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 619 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 620 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 621 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 622 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 623 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 624 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 625 AS "sv_idx", 0.652968 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 626 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 627 AS "sv_idx", 0.766186 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 628 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 629 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 630 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 631 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 632 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 633 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 634 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 636 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 637 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 638 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 640 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 641 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 642 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 643 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 644 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 645 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 647 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 648 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 649 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 652 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 655 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 656 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 657 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 661 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 662 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 663 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 664 AS "sv_idx", 0.827114 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 665 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 666 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 667 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 668 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 669 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 670 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 671 AS "sv_idx", 0.822612 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.326784 AS "rho", -2.206705 AS "probA", 0.136004 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", 0.225945 AS "rho", -1.896124 AS "probA", -0.165169 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", -0.586874 AS "rho", -2.814672 AS "probA", -0.290957 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", 0.175932 AS "rho", -2.102091 AS "probA", 0.130853 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", -0.049966 AS "rho", -2.500010 AS "probA", -0.062696 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", -0.345725 AS "rho", -2.628602 AS "probA", -0.206853 AS "probB"
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