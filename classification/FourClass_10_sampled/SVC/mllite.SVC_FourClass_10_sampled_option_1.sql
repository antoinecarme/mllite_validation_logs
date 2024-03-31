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
     SELECT 16 AS sv_idx, 0.588554 AS sv_0, -1.797316 AS sv_1, -0.224213 AS sv_2, 3.253352 AS sv_3, -0.529723 AS sv_4, 2.495001 AS sv_5, 0.438471 AS sv_6, -0.505704 AS sv_7, 1.662698 AS sv_8, -0.898118 AS sv_9
     UNION ALL
     SELECT 17 AS sv_idx, 1.300213 AS sv_0, -1.999822 AS sv_1, -0.419587 AS sv_2, 2.501080 AS sv_3, -1.849446 AS sv_4, -0.377522 AS sv_5, 1.195545 AS sv_6, -0.044483 AS sv_7, 0.602759 AS sv_8, -2.112745 AS sv_9
     UNION ALL
     SELECT 18 AS sv_idx, 1.204247 AS sv_0, -2.092080 AS sv_1, 0.892502 AS sv_2, 2.939305 AS sv_3, 0.657501 AS sv_4, 1.659902 AS sv_5, 2.185951 AS sv_6, 0.413368 AS sv_7, 0.343307 AS sv_8, -0.855423 AS sv_9
     UNION ALL
     SELECT 19 AS sv_idx, 0.684762 AS sv_0, -1.022613 AS sv_1, 0.489245 AS sv_2, 0.929844 AS sv_3, 0.711084 AS sv_4, -0.590669 AS sv_5, -3.158930 AS sv_6, -2.200715 AS sv_7, 2.015076 AS sv_8, 1.212724 AS sv_9
     UNION ALL
     SELECT 20 AS sv_idx, -0.059361 AS sv_0, -0.256410 AS sv_1, -0.841143 AS sv_2, 0.257613 AS sv_3, -0.739997 AS sv_4, 0.341926 AS sv_5, -0.972588 AS sv_6, -1.229115 AS sv_7, 0.145160 AS sv_8, -0.561226 AS sv_9
     UNION ALL
     SELECT 21 AS sv_idx, 0.656161 AS sv_0, 0.494579 AS sv_1, -1.249168 AS sv_2, -1.516192 AS sv_3, -1.356776 AS sv_4, 0.825493 AS sv_5, -1.558538 AS sv_6, 0.829868 AS sv_7, 1.041074 AS sv_8, 0.094301 AS sv_9
     UNION ALL
     SELECT 22 AS sv_idx, 0.688153 AS sv_0, -0.238902 AS sv_1, 0.785937 AS sv_2, -0.707680 AS sv_3, -1.602769 AS sv_4, -0.729682 AS sv_5, -2.583062 AS sv_6, -1.224469 AS sv_7, 0.953948 AS sv_8, 0.534130 AS sv_9
     UNION ALL
     SELECT 23 AS sv_idx, -1.237826 AS sv_0, 0.500745 AS sv_1, 1.484801 AS sv_2, -0.575054 AS sv_3, 0.777390 AS sv_4, 0.081599 AS sv_5, -0.019935 AS sv_6, -2.267383 AS sv_7, -2.287627 AS sv_8, 0.335099 AS sv_9
     UNION ALL
     SELECT 24 AS sv_idx, -0.782600 AS sv_0, 0.949935 AS sv_1, -0.658807 AS sv_2, -1.255443 AS sv_3, 0.969023 AS sv_4, 0.771544 AS sv_5, -0.242917 AS sv_6, -0.371088 AS sv_7, -1.000220 AS sv_8, -0.154326 AS sv_9
     UNION ALL
     SELECT 25 AS sv_idx, -0.627777 AS sv_0, -0.041215 AS sv_1, -0.982223 AS sv_2, 0.279263 AS sv_3, -0.543692 AS sv_4, -1.004934 AS sv_5, 0.214130 AS sv_6, -1.374100 AS sv_7, -1.127454 AS sv_8, 0.939147 AS sv_9
     UNION ALL
     SELECT 26 AS sv_idx, 0.433748 AS sv_0, -0.760959 AS sv_1, 0.613844 AS sv_2, 0.843999 AS sv_3, -0.638433 AS sv_4, 0.254495 AS sv_5, -2.763319 AS sv_6, -1.822103 AS sv_7, 1.894741 AS sv_8, -2.021345 AS sv_9
     UNION ALL
     SELECT 27 AS sv_idx, -0.598158 AS sv_0, 0.629641 AS sv_1, 1.754569 AS sv_2, -0.586489 AS sv_3, -0.267227 AS sv_4, -0.968763 AS sv_5, 0.196006 AS sv_6, 0.046530 AS sv_7, -0.570026 AS sv_8, 1.113417 AS sv_9
     UNION ALL
     SELECT 28 AS sv_idx, -0.049861 AS sv_0, 1.019062 AS sv_1, -0.239901 AS sv_2, -1.762634 AS sv_3, 0.672174 AS sv_4, 0.659128 AS sv_5, -1.484999 AS sv_6, 0.600685 AS sv_7, 0.642133 AS sv_8, 0.460004 AS sv_9
     UNION ALL
     SELECT 29 AS sv_idx, -1.368644 AS sv_0, 0.716127 AS sv_1, 0.307297 AS sv_2, 0.899080 AS sv_3, -0.303330 AS sv_4, 1.272378 AS sv_5, -0.112382 AS sv_6, 0.215110 AS sv_7, 1.172710 AS sv_8, 1.728197 AS sv_9
     UNION ALL
     SELECT 30 AS sv_idx, -1.728087 AS sv_0, 2.393295 AS sv_1, 0.055107 AS sv_2, -1.740847 AS sv_3, -1.848529 AS sv_4, -0.978944 AS sv_5, 0.438442 AS sv_6, 2.200070 AS sv_7, 0.248741 AS sv_8, 1.048002 AS sv_9
     UNION ALL
     SELECT 31 AS sv_idx, -1.211760 AS sv_0, 1.142924 AS sv_1, 1.339303 AS sv_2, -0.829514 AS sv_3, -0.248514 AS sv_4, 1.220032 AS sv_5, -1.777777 AS sv_6, -0.916606 AS sv_7, 0.495779 AS sv_8, 0.931445 AS sv_9
     UNION ALL
     SELECT 32 AS sv_idx, -0.359051 AS sv_0, 0.093840 AS sv_1, -1.040202 AS sv_2, 0.237889 AS sv_3, -0.187741 AS sv_4, 0.767880 AS sv_5, 1.191305 AS sv_6, 0.265512 AS sv_7, -0.767644 AS sv_8, -0.358049 AS sv_9
     UNION ALL
     SELECT 33 AS sv_idx, 1.076219 AS sv_0, 0.555706 AS sv_1, -0.310657 AS sv_2, -1.854151 AS sv_3, 1.736608 AS sv_4, -0.380529 AS sv_5, -0.269973 AS sv_6, 2.328577 AS sv_7, 0.702019 AS sv_8, -0.746542 AS sv_9
     UNION ALL
     SELECT 34 AS sv_idx, 1.953073 AS sv_0, -0.650314 AS sv_1, 0.920725 AS sv_2, -0.838924 AS sv_3, -1.476252 AS sv_4, -0.535268 AS sv_5, -0.650624 AS sv_6, 1.355238 AS sv_7, 0.969818 AS sv_8, -0.487362 AS sv_9
     UNION ALL
     SELECT 35 AS sv_idx, 2.016849 AS sv_0, -1.191537 AS sv_1, -1.332499 AS sv_2, -0.119352 AS sv_3, 0.169375 AS sv_4, 0.420555 AS sv_5, -3.636702 AS sv_6, -0.911384 AS sv_7, 2.645946 AS sv_8, -0.221895 AS sv_9
     UNION ALL
     SELECT 36 AS sv_idx, -0.191931 AS sv_0, -0.162504 AS sv_1, 1.151646 AS sv_2, 1.053780 AS sv_3, 0.043356 AS sv_4, -0.163908 AS sv_5, -2.428284 AS sv_6, -0.792489 AS sv_7, 2.682316 AS sv_8, 0.789276 AS sv_9
     UNION ALL
     SELECT 37 AS sv_idx, -1.569218 AS sv_0, 2.574346 AS sv_1, 1.953913 AS sv_2, -2.971349 AS sv_3, 0.418451 AS sv_4, 0.443428 AS sv_5, -1.304433 AS sv_6, 0.796727 AS sv_7, -0.184424 AS sv_8, 0.413981 AS sv_9
     UNION ALL
     SELECT 38 AS sv_idx, -2.936037 AS sv_0, 2.067057 AS sv_1, -0.795721 AS sv_2, 1.232088 AS sv_3, 0.034662 AS sv_4, 1.141055 AS sv_5, 2.088878 AS sv_6, 2.590199 AS sv_7, 1.407819 AS sv_8, -0.067862 AS sv_9
     UNION ALL
     SELECT 39 AS sv_idx, 1.914430 AS sv_0, -1.187978 AS sv_1, -1.908593 AS sv_2, -0.003361 AS sv_3, -0.783720 AS sv_4, -1.616949 AS sv_5, -1.228041 AS sv_6, 0.100255 AS sv_7, 1.147780 AS sv_8, -0.640430 AS sv_9
     UNION ALL
     SELECT 40 AS sv_idx, 0.141928 AS sv_0, -0.408314 AS sv_1, 0.402207 AS sv_2, 0.513474 AS sv_3, 1.632655 AS sv_4, 0.113585 AS sv_5, -0.501597 AS sv_6, -0.685914 AS sv_7, 0.317499 AS sv_8, -0.049391 AS sv_9
     UNION ALL
     SELECT 41 AS sv_idx, -2.949464 AS sv_0, 3.339854 AS sv_1, 1.814789 AS sv_2, -1.430848 AS sv_3, 0.021446 AS sv_4, 0.288268 AS sv_5, 0.435698 AS sv_6, 2.921803 AS sv_7, 1.260305 AS sv_8, -0.591532 AS sv_9
     UNION ALL
     SELECT 42 AS sv_idx, -0.030030 AS sv_0, 0.407792 AS sv_1, -0.502535 AS sv_2, -0.556883 AS sv_3, -0.028940 AS sv_4, 0.866424 AS sv_5, 0.004595 AS sv_6, 0.697456 AS sv_7, 0.158375 AS sv_8, 0.350515 AS sv_9
     UNION ALL
     SELECT 43 AS sv_idx, -0.408017 AS sv_0, 0.680944 AS sv_1, -0.019870 AS sv_2, -0.712753 AS sv_3, -0.909009 AS sv_4, 0.377715 AS sv_5, -1.496008 AS sv_6, -0.200299 AS sv_7, 0.838195 AS sv_8, -1.682855 AS sv_9
     UNION ALL
     SELECT 44 AS sv_idx, -0.253422 AS sv_0, 1.180504 AS sv_1, -0.202320 AS sv_2, -1.601430 AS sv_3, -1.601221 AS sv_4, 2.157065 AS sv_5, -1.502630 AS sv_6, 0.880108 AS sv_7, 1.055359 AS sv_8, 0.209518 AS sv_9
     UNION ALL
     SELECT 45 AS sv_idx, -1.979419 AS sv_0, 2.019696 AS sv_1, 0.629069 AS sv_2, -1.102857 AS sv_3, -0.533053 AS sv_4, -0.257772 AS sv_5, -0.372625 AS sv_6, 0.608513 AS sv_7, 0.237841 AS sv_8, -0.101317 AS sv_9
     UNION ALL
     SELECT 46 AS sv_idx, -0.976588 AS sv_0, 1.177742 AS sv_1, -1.187126 AS sv_2, -0.819757 AS sv_3, -0.201344 AS sv_4, -1.964172 AS sv_5, -0.966237 AS sv_6, 0.244402 AS sv_7, 0.653849 AS sv_8, 0.123949 AS sv_9
     UNION ALL
     SELECT 47 AS sv_idx, -3.187800 AS sv_0, 3.296942 AS sv_1, -1.284677 AS sv_2, -1.403550 AS sv_3, -0.503465 AS sv_4, 0.029414 AS sv_5, 1.247297 AS sv_6, 2.524055 AS sv_7, 0.123663 AS sv_8, -0.023816 AS sv_9
     UNION ALL
     SELECT 48 AS sv_idx, -1.609529 AS sv_0, 2.417390 AS sv_1, 0.805215 AS sv_2, -2.319756 AS sv_3, 1.361029 AS sv_4, -1.308387 AS sv_5, 0.555984 AS sv_6, 1.859749 AS sv_7, -0.647798 AS sv_8, 0.143034 AS sv_9
     UNION ALL
     SELECT 49 AS sv_idx, 3.015283 AS sv_0, -1.234192 AS sv_1, 0.829278 AS sv_2, -0.978825 AS sv_3, 0.898234 AS sv_4, 0.158739 AS sv_5, -1.062524 AS sv_6, 1.629684 AS sv_7, 1.408398 AS sv_8, 1.329996 AS sv_9
     UNION ALL
     SELECT 50 AS sv_idx, 0.420004 AS sv_0, 0.179251 AS sv_1, 1.412653 AS sv_2, -0.706970 AS sv_3, -0.351617 AS sv_4, 1.425146 AS sv_5, -4.232407 AS sv_6, -1.120853 AS sv_7, 2.774668 AS sv_8, -0.761664 AS sv_9
     UNION ALL
     SELECT 51 AS sv_idx, 1.126231 AS sv_0, -0.791891 AS sv_1, -0.032095 AS sv_2, 0.112247 AS sv_3, 2.001647 AS sv_4, -0.545657 AS sv_5, -1.040442 AS sv_6, -0.283264 AS sv_7, 0.796760 AS sv_8, 0.714492 AS sv_9
     UNION ALL
     SELECT 52 AS sv_idx, -1.050659 AS sv_0, 0.920640 AS sv_1, -0.455125 AS sv_2, -0.050130 AS sv_3, -0.191627 AS sv_4, 0.584329 AS sv_5, 0.943031 AS sv_6, 1.021308 AS sv_7, -0.010797 AS sv_8, -1.586949 AS sv_9
     UNION ALL
     SELECT 53 AS sv_idx, 0.914030 AS sv_0, -0.385815 AS sv_1, 2.120265 AS sv_2, -1.074814 AS sv_3, 0.670472 AS sv_4, -0.572071 AS sv_5, -1.966973 AS sv_6, -1.398672 AS sv_7, -0.152956 AS sv_8, -0.427271 AS sv_9
     UNION ALL
     SELECT 54 AS sv_idx, -0.128543 AS sv_0, 1.029262 AS sv_1, -1.338428 AS sv_2, -2.145117 AS sv_3, 1.119838 AS sv_4, 0.882593 AS sv_5, -0.514950 AS sv_6, 0.340163 AS sv_7, -0.885099 AS sv_8, 0.307255 AS sv_9
     UNION ALL
     SELECT 55 AS sv_idx, 0.420960 AS sv_0, 0.508218 AS sv_1, 0.792587 AS sv_2, -1.824423 AS sv_3, -0.534459 AS sv_4, -0.802783 AS sv_5, -2.398403 AS sv_6, -0.576551 AS sv_7, 0.458008 AS sv_8, 1.340859 AS sv_9
     UNION ALL
     SELECT 56 AS sv_idx, -0.594587 AS sv_0, 1.369676 AS sv_1, 0.877953 AS sv_2, -2.593040 AS sv_3, 0.424603 AS sv_4, 0.667879 AS sv_5, -1.684506 AS sv_6, -0.795299 AS sv_7, -0.979715 AS sv_8, -1.954555 AS sv_9
     UNION ALL
     SELECT 57 AS sv_idx, 1.900405 AS sv_0, -1.479081 AS sv_1, 0.125657 AS sv_2, -0.313671 AS sv_3, -2.103942 AS sv_4, -0.193720 AS sv_5, 0.040858 AS sv_6, -0.894352 AS sv_7, -1.276576 AS sv_8, 0.145527 AS sv_9
     UNION ALL
     SELECT 58 AS sv_idx, -1.149210 AS sv_0, 1.354812 AS sv_1, -1.459610 AS sv_2, -0.738516 AS sv_3, -1.015174 AS sv_4, 0.275448 AS sv_5, 3.063931 AS sv_6, 2.428513 AS sv_7, -1.515062 AS sv_8, 0.931701 AS sv_9
     UNION ALL
     SELECT 59 AS sv_idx, 1.395205 AS sv_0, -0.687010 AS sv_1, -0.918347 AS sv_2, -1.586565 AS sv_3, -0.054809 AS sv_4, 0.371851 AS sv_5, -1.795299 AS sv_6, -1.874978 AS sv_7, -1.208421 AS sv_8, 0.434021 AS sv_9
     UNION ALL
     SELECT 60 AS sv_idx, -0.694214 AS sv_0, 0.299522 AS sv_1, 0.714899 AS sv_2, 0.542021 AS sv_3, 1.019968 AS sv_4, 0.342609 AS sv_5, 1.555436 AS sv_6, 0.732274 AS sv_7, -0.455815 AS sv_8, 0.537001 AS sv_9
     UNION ALL
     SELECT 61 AS sv_idx, 3.395908 AS sv_0, -4.726336 AS sv_1, 0.970956 AS sv_2, 2.775282 AS sv_3, -0.056961 AS sv_4, -0.984318 AS sv_5, 5.312751 AS sv_6, -2.457456 AS sv_7, -5.750276 AS sv_8, 1.529138 AS sv_9
     UNION ALL
     SELECT 62 AS sv_idx, -2.598929 AS sv_0, 3.463445 AS sv_1, -0.023906 AS sv_2, -4.292647 AS sv_3, 0.492410 AS sv_4, 0.036822 AS sv_5, 2.257645 AS sv_6, 1.190452 AS sv_7, -4.469301 AS sv_8, 0.138775 AS sv_9
     UNION ALL
     SELECT 63 AS sv_idx, 0.365485 AS sv_0, 1.000724 AS sv_1, 0.492872 AS sv_2, -2.667000 AS sv_3, 2.644866 AS sv_4, 0.112363 AS sv_5, -4.855680 AS sv_6, -1.163364 AS sv_7, 1.808733 AS sv_8, -1.585889 AS sv_9
     UNION ALL
     SELECT 64 AS sv_idx, 0.855164 AS sv_0, -0.934582 AS sv_1, -1.885349 AS sv_2, -0.051859 AS sv_3, 0.227505 AS sv_4, -0.483269 AS sv_5, 2.053155 AS sv_6, -0.362082 AS sv_7, -2.566222 AS sv_8, 0.077759 AS sv_9
     UNION ALL
     SELECT 65 AS sv_idx, 0.879973 AS sv_0, -0.449295 AS sv_1, 0.343225 AS sv_2, -0.224473 AS sv_3, 1.797731 AS sv_4, -1.549817 AS sv_5, 1.959260 AS sv_6, 1.271211 AS sv_7, -1.186812 AS sv_8, 0.605879 AS sv_9
     UNION ALL
     SELECT 66 AS sv_idx, -1.924309 AS sv_0, 1.236216 AS sv_1, 0.775559 AS sv_2, -0.512039 AS sv_3, -2.024612 AS sv_4, 0.478127 AS sv_5, -0.162645 AS sv_6, -1.306641 AS sv_7, -1.178976 AS sv_8, 0.609822 AS sv_9
     UNION ALL
     SELECT 67 AS sv_idx, -1.695885 AS sv_0, 0.767787 AS sv_1, -2.952712 AS sv_2, 1.043369 AS sv_3, 0.294529 AS sv_4, 2.097126 AS sv_5, 3.601173 AS sv_6, 1.442396 AS sv_7, -1.436718 AS sv_8, -0.900223 AS sv_9
     UNION ALL
     SELECT 68 AS sv_idx, -0.030155 AS sv_0, 0.232125 AS sv_1, 0.929317 AS sv_2, -1.298226 AS sv_3, 1.876815 AS sv_4, 0.125330 AS sv_5, 1.066340 AS sv_6, -0.517243 AS sv_7, -2.592615 AS sv_8, 0.175927 AS sv_9
     UNION ALL
     SELECT 69 AS sv_idx, -1.711239 AS sv_0, 1.625805 AS sv_1, 0.416977 AS sv_2, -0.554687 AS sv_3, 1.159506 AS sv_4, -1.100255 AS sv_5, 0.424755 AS sv_6, 0.970172 AS sv_7, 0.143377 AS sv_8, -0.394026 AS sv_9
     UNION ALL
     SELECT 70 AS sv_idx, 1.647095 AS sv_0, -1.059894 AS sv_1, 0.956108 AS sv_2, -0.538306 AS sv_3, 0.263870 AS sv_4, -0.427735 AS sv_5, -0.034545 AS sv_6, -0.333104 AS sv_7, -0.863283 AS sv_8, -0.249016 AS sv_9
     UNION ALL
     SELECT 71 AS sv_idx, -0.390501 AS sv_0, -0.475462 AS sv_1, 0.847291 AS sv_2, 1.726086 AS sv_3, -1.185284 AS sv_4, 1.750336 AS sv_5, -0.849033 AS sv_6, -0.855584 AS sv_7, 1.560563 AS sv_8, -0.955622 AS sv_9
     UNION ALL
     SELECT 72 AS sv_idx, 0.682785 AS sv_0, 0.078662 AS sv_1, 0.217874 AS sv_2, -1.488197 AS sv_3, 0.312308 AS sv_4, -0.807822 AS sv_5, -2.150621 AS sv_6, -0.918538 AS sv_7, 0.147000 AS sv_8, 0.460278 AS sv_9
     UNION ALL
     SELECT 73 AS sv_idx, 1.208022 AS sv_0, -0.876819 AS sv_1, 0.192240 AS sv_2, -0.435681 AS sv_3, 0.136990 AS sv_4, -2.038342 AS sv_5, -0.905942 AS sv_6, -1.088101 AS sv_7, -0.493453 AS sv_8, 2.859281 AS sv_9
     UNION ALL
     SELECT 74 AS sv_idx, 2.619734 AS sv_0, -2.027038 AS sv_1, -0.963508 AS sv_2, 0.308210 AS sv_3, 0.014577 AS sv_4, -0.873892 AS sv_5, 0.355407 AS sv_6, -0.014436 AS sv_7, -0.409781 AS sv_8, -1.148148 AS sv_9
     UNION ALL
     SELECT 75 AS sv_idx, -1.907530 AS sv_0, 2.734109 AS sv_1, -0.748289 AS sv_2, -1.947201 AS sv_3, -0.489429 AS sv_4, 2.688408 AS sv_5, 5.886810 AS sv_6, 5.244355 AS sv_7, -2.863760 AS sv_8, -0.140492 AS sv_9
     UNION ALL
     SELECT 76 AS sv_idx, -2.060269 AS sv_0, 2.719635 AS sv_1, 0.164769 AS sv_2, -3.074756 AS sv_3, -0.717383 AS sv_4, -0.793476 AS sv_5, 1.141047 AS sv_6, 1.003097 AS sv_7, -2.557960 AS sv_8, -0.041213 AS sv_9
     UNION ALL
     SELECT 77 AS sv_idx, -1.907395 AS sv_0, 2.777863 AS sv_1, 0.111678 AS sv_2, -2.388667 AS sv_3, 0.216066 AS sv_4, 0.395042 AS sv_5, 1.146462 AS sv_6, 2.601650 AS sv_7, -0.633759 AS sv_8, 0.733782 AS sv_9
     UNION ALL
     SELECT 78 AS sv_idx, -0.512480 AS sv_0, 0.725415 AS sv_1, -0.563514 AS sv_2, -1.540632 AS sv_3, 0.155584 AS sv_4, 0.933107 AS sv_5, -0.229006 AS sv_6, -0.885086 AS sv_7, -1.721017 AS sv_8, -0.869898 AS sv_9
     UNION ALL
     SELECT 79 AS sv_idx, -1.395032 AS sv_0, 0.715347 AS sv_1, -1.246410 AS sv_2, 0.131946 AS sv_3, -1.093365 AS sv_4, -0.657179 AS sv_5, 0.378149 AS sv_6, -0.704406 AS sv_7, -0.749663 AS sv_8, 1.599328 AS sv_9
     UNION ALL
     SELECT 80 AS sv_idx, 0.139210 AS sv_0, 0.055910 AS sv_1, 0.620311 AS sv_2, -0.875009 AS sv_3, 1.917547 AS sv_4, -0.450244 AS sv_5, 0.930922 AS sv_6, -0.200252 AS sv_7, -1.853918 AS sv_8, -1.939052 AS sv_9
     UNION ALL
     SELECT 81 AS sv_idx, 0.807783 AS sv_0, -0.304764 AS sv_1, -0.758630 AS sv_2, -1.323302 AS sv_3, 0.224487 AS sv_4, 1.648634 AS sv_5, -0.592843 AS sv_6, -1.089792 AS sv_7, -1.489730 AS sv_8, -0.409264 AS sv_9
     UNION ALL
     SELECT 82 AS sv_idx, -0.737038 AS sv_0, 1.365623 AS sv_1, 0.889450 AS sv_2, -1.409753 AS sv_3, -1.066633 AS sv_4, 1.028255 AS sv_5, -0.254039 AS sv_6, 1.117080 AS sv_7, 0.179796 AS sv_8, -1.346715 AS sv_9
     UNION ALL
     SELECT 83 AS sv_idx, -1.067863 AS sv_0, 0.728836 AS sv_1, 1.338623 AS sv_2, 0.344031 AS sv_3, 0.290533 AS sv_4, -0.551809 AS sv_5, 2.344952 AS sv_6, 1.442460 AS sv_7, -0.770565 AS sv_8, 0.644973 AS sv_9
     UNION ALL
     SELECT 84 AS sv_idx, -1.123043 AS sv_0, 1.342440 AS sv_1, 0.659906 AS sv_2, -1.999727 AS sv_3, -1.001844 AS sv_4, 1.881842 AS sv_5, -1.291807 AS sv_6, -1.324783 AS sv_7, -1.312703 AS sv_8, 0.946601 AS sv_9
     UNION ALL
     SELECT 85 AS sv_idx, -1.598324 AS sv_0, 1.482463 AS sv_1, 1.664691 AS sv_2, -0.791131 AS sv_3, -0.326916 AS sv_4, -0.073560 AS sv_5, -3.352625 AS sv_6, -1.347481 AS sv_7, 1.816532 AS sv_8, 0.637000 AS sv_9
     UNION ALL
     SELECT 86 AS sv_idx, 0.476411 AS sv_0, 0.555172 AS sv_1, 2.004011 AS sv_2, -1.439637 AS sv_3, -0.087655 AS sv_4, 0.899499 AS sv_5, -1.289876 AS sv_6, 0.803645 AS sv_7, 0.821823 AS sv_8, 0.485550 AS sv_9
     UNION ALL
     SELECT 87 AS sv_idx, 0.125473 AS sv_0, -0.174283 AS sv_1, 0.423296 AS sv_2, -0.360852 AS sv_3, -1.340787 AS sv_4, 0.901386 AS sv_5, -2.116680 AS sv_6, -1.806991 AS sv_7, 0.303962 AS sv_8, 1.501806 AS sv_9
     UNION ALL
     SELECT 88 AS sv_idx, 2.064895 AS sv_0, -1.945791 AS sv_1, -2.029140 AS sv_2, -0.311415 AS sv_3, 0.442332 AS sv_4, -0.193959 AS sv_5, -2.111351 AS sv_6, -3.219500 AS sv_7, -1.099663 AS sv_8, 0.012909 AS sv_9
     UNION ALL
     SELECT 89 AS sv_idx, -0.071947 AS sv_0, 0.242194 AS sv_1, 2.321921 AS sv_2, -0.381042 AS sv_3, -0.250458 AS sv_4, 0.848285 AS sv_5, 0.370140 AS sv_6, 0.366872 AS sv_7, -0.360941 AS sv_8, 0.290686 AS sv_9
     UNION ALL
     SELECT 90 AS sv_idx, -1.791246 AS sv_0, 1.543989 AS sv_1, -1.577224 AS sv_2, -0.787527 AS sv_3, -0.053480 AS sv_4, -1.015344 AS sv_5, -3.653436 AS sv_6, -1.771331 AS sv_7, 1.780666 AS sv_8, 0.078939 AS sv_9
     UNION ALL
     SELECT 91 AS sv_idx, 0.116964 AS sv_0, 0.764608 AS sv_1, -0.834473 AS sv_2, -1.648333 AS sv_3, 1.616820 AS sv_4, -0.216079 AS sv_5, -4.621155 AS sv_6, -1.207447 AS sv_7, 2.374713 AS sv_8, 0.080743 AS sv_9
     UNION ALL
     SELECT 92 AS sv_idx, 0.260177 AS sv_0, -0.981335 AS sv_1, 0.449974 AS sv_2, 0.980600 AS sv_3, 2.260404 AS sv_4, 0.329801 AS sv_5, 2.518242 AS sv_6, -0.499781 AS sv_7, -2.271735 AS sv_8, 0.741921 AS sv_9
     UNION ALL
     SELECT 93 AS sv_idx, -0.438059 AS sv_0, -0.593217 AS sv_1, 0.535711 AS sv_2, 2.307372 AS sv_3, -0.018147 AS sv_4, 1.306160 AS sv_5, 3.752574 AS sv_6, 1.507209 AS sv_7, -0.652815 AS sv_8, -1.264657 AS sv_9
     UNION ALL
     SELECT 94 AS sv_idx, -2.310223 AS sv_0, 1.642204 AS sv_1, 1.778419 AS sv_2, -0.406427 AS sv_3, 0.118174 AS sv_4, 0.465478 AS sv_5, -1.961827 AS sv_6, -1.492234 AS sv_7, 0.641088 AS sv_8, 0.338826 AS sv_9
     UNION ALL
     SELECT 95 AS sv_idx, -1.611587 AS sv_0, 1.410749 AS sv_1, 0.280383 AS sv_2, -1.052775 AS sv_3, -0.544534 AS sv_4, -0.855047 AS sv_5, -3.320656 AS sv_6, -2.007735 AS sv_7, 0.998678 AS sv_8, -2.130695 AS sv_9
     UNION ALL
     SELECT 96 AS sv_idx, 1.209644 AS sv_0, -2.107424 AS sv_1, 2.580744 AS sv_2, 2.172078 AS sv_3, 0.187149 AS sv_4, -0.552040 AS sv_5, 3.507802 AS sv_6, -0.090810 AS sv_7, -2.077870 AS sv_8, -0.431405 AS sv_9
     UNION ALL
     SELECT 97 AS sv_idx, 2.419603 AS sv_0, -2.024107 AS sv_1, -1.418165 AS sv_2, -0.864941 AS sv_3, 1.371819 AS sv_4, -0.872367 AS sv_5, -3.497352 AS sv_6, -3.968679 AS sv_7, -0.806504 AS sv_8, 0.504608 AS sv_9
     UNION ALL
     SELECT 98 AS sv_idx, 0.482137 AS sv_0, -0.869780 AS sv_1, 0.436631 AS sv_2, 0.574530 AS sv_3, 2.022251 AS sv_4, -0.165529 AS sv_5, 0.072953 AS sv_6, -1.169806 AS sv_7, -0.684112 AS sv_8, -0.509412 AS sv_9
     UNION ALL
     SELECT 99 AS sv_idx, 0.678282 AS sv_0, -1.114875 AS sv_1, -0.727378 AS sv_2, 1.084346 AS sv_3, 0.296031 AS sv_4, 0.489235 AS sv_5, 0.841172 AS sv_6, -0.503622 AS sv_7, -0.506179 AS sv_8, 1.725314 AS sv_9
     UNION ALL
     SELECT 100 AS sv_idx, -0.800480 AS sv_0, 1.754308 AS sv_1, 2.541972 AS sv_2, -2.344611 AS sv_3, -0.547350 AS sv_4, -0.027490 AS sv_5, -5.673384 AS sv_6, -1.386605 AS sv_7, 2.841038 AS sv_8, 2.225281 AS sv_9
     UNION ALL
     SELECT 101 AS sv_idx, 0.904161 AS sv_0, -1.615715 AS sv_1, -1.116545 AS sv_2, 1.954525 AS sv_3, 0.643208 AS sv_4, -1.383483 AS sv_5, 2.649748 AS sv_6, 0.252977 AS sv_7, -1.035644 AS sv_8, -2.144301 AS sv_9
     UNION ALL
     SELECT 102 AS sv_idx, -0.847049 AS sv_0, 0.769808 AS sv_1, 1.079078 AS sv_2, -0.593639 AS sv_3, 0.502120 AS sv_4, 2.343416 AS sv_5, -1.872527 AS sv_6, -1.062429 AS sv_7, 0.617417 AS sv_8, 0.523638 AS sv_9
     UNION ALL
     SELECT 103 AS sv_idx, 2.549133 AS sv_0, -2.931520 AS sv_1, -0.156476 AS sv_2, 1.479163 AS sv_3, 0.983777 AS sv_4, -0.232114 AS sv_5, 1.363515 AS sv_6, -1.552877 AS sv_7, -1.841083 AS sv_8, 0.899188 AS sv_9
     UNION ALL
     SELECT 104 AS sv_idx, 1.387206 AS sv_0, -1.859745 AS sv_1, 0.544166 AS sv_2, 0.832405 AS sv_3, -1.203015 AS sv_4, 1.128912 AS sv_5, 0.819827 AS sv_6, -1.779063 AS sv_7, -1.874456 AS sv_8, -0.911721 AS sv_9
     UNION ALL
     SELECT 105 AS sv_idx, -1.310039 AS sv_0, 1.261885 AS sv_1, 0.756183 AS sv_2, -0.980740 AS sv_3, 0.685749 AS sv_4, -0.917510 AS sv_5, -0.895510 AS sv_6, -0.533187 AS sv_7, -0.191214 AS sv_8, 0.490645 AS sv_9
     UNION ALL
     SELECT 106 AS sv_idx, 0.369495 AS sv_0, -0.978933 AS sv_1, -0.828784 AS sv_2, 1.167000 AS sv_3, 0.004632 AS sv_4, 0.825629 AS sv_5, 1.429114 AS sv_6, -0.436987 AS sv_7, -0.955161 AS sv_8, 0.874197 AS sv_9
     UNION ALL
     SELECT 107 AS sv_idx, 1.383787 AS sv_0, -2.143662 AS sv_1, -0.232754 AS sv_2, 1.825635 AS sv_3, -1.105551 AS sv_4, -0.574061 AS sv_5, 2.756984 AS sv_6, -0.587094 AS sv_7, -2.033503 AS sv_8, 0.634332 AS sv_9
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
           exp(min(max(-32.0, -0.048503 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2))), 32.0))  AS "kernel_value" 
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
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, 1.503320 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, 0.298746 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 6 AS sv_idx, 1.239429 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 9 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 10 AS sv_idx, 0.763659 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 11 AS sv_idx, 0.924072 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 12 AS sv_idx, 0.933063 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 13 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 14 AS sv_idx, 0.787149 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 15 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 17 AS sv_idx, 0.169307 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 18 AS sv_idx, 0.125729 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 19 AS sv_idx, 1.658274 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 20 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 21 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 22 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 24 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 26 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 27 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 28 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 30 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 32 AS sv_idx, 1.503320 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 33 AS sv_idx, 0.298746 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 34 AS sv_idx, 1.239429 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 37 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 38 AS sv_idx, 0.763659 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 39 AS sv_idx, 0.924072 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 40 AS sv_idx, 0.933063 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 41 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 42 AS sv_idx, 0.787149 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 43 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 45 AS sv_idx, 0.169307 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 46 AS sv_idx, 0.125729 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 47 AS sv_idx, 1.658274 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 48 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 49 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 50 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 0 AS sv_idx, 1.851810 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 1 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 2 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 3 AS sv_idx, 1.834529 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 4 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 5 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 7 AS sv_idx, 0.854344 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 8 AS sv_idx, 0.290328 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 9 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 11 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 12 AS sv_idx, 0.813690 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 13 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 15 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 16 AS sv_idx, 0.178766 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 17 AS sv_idx, 0.713592 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 18 AS sv_idx, 0.656245 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 19 AS sv_idx, 0.525091 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 20 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 21 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 22 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 23 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 24 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 25 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 26 AS sv_idx, 0.841838 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 27 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 52 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 54 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 56 AS sv_idx, 1.503320 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 57 AS sv_idx, 0.298746 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 58 AS sv_idx, 1.239429 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 61 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 62 AS sv_idx, 0.763659 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 63 AS sv_idx, 0.924072 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 64 AS sv_idx, 0.933063 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 65 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 66 AS sv_idx, 0.787149 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 67 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 69 AS sv_idx, 0.169307 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 70 AS sv_idx, 0.125729 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 71 AS sv_idx, 1.658274 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 72 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 73 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 74 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 76 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 78 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 79 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 80 AS sv_idx, -1.143433 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 81 AS sv_idx, -1.046304 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 82 AS sv_idx, -0.055930 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 83 AS sv_idx, -2.000000 AS Coeff
     UNION ALL
     SELECT 1 AS prob_idx, 0 AS c_1, 2 AS c_2, 84 AS sv_idx, -2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 0 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 2 AS sv_idx, 0.410232 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 3 AS sv_idx, 0.280249 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 4 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 5 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 7 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 8 AS sv_idx, 1.086880 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 9 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 10 AS sv_idx, 0.509553 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 11 AS sv_idx, 1.173596 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 12 AS sv_idx, 0.918601 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 13 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 14 AS sv_idx, 0.565141 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 15 AS sv_idx, 1.630144 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 18 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 19 AS sv_idx, 1.079490 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 20 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 22 AS sv_idx, 1.339499 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 23 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 24 AS sv_idx, 0.534573 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 25 AS sv_idx, 1.535811 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 26 AS sv_idx, 0.944888 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 27 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 85 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 87 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 89 AS sv_idx, 1.503320 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 90 AS sv_idx, 0.298746 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 91 AS sv_idx, 1.239429 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 94 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 95 AS sv_idx, 0.763659 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 96 AS sv_idx, 0.924072 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 97 AS sv_idx, 0.933063 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 98 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 99 AS sv_idx, 0.787149 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 100 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 102 AS sv_idx, 0.169307 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 103 AS sv_idx, 0.125729 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 104 AS sv_idx, 1.658274 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 105 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 106 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 2 AS prob_idx, 0 AS c_1, 3 AS c_2, 107 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 28 AS sv_idx, 1.851810 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 29 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 30 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 31 AS sv_idx, 1.834529 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 32 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 33 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 35 AS sv_idx, 0.854344 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 36 AS sv_idx, 0.290328 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 37 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 39 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 40 AS sv_idx, 0.813690 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 41 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 43 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 44 AS sv_idx, 0.178766 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 45 AS sv_idx, 0.713592 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 46 AS sv_idx, 0.656245 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 47 AS sv_idx, 0.525091 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 48 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 49 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 50 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 51 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 52 AS sv_idx, 1.851810 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 53 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 54 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 55 AS sv_idx, 1.834529 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 56 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 57 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 59 AS sv_idx, 0.854344 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 60 AS sv_idx, 0.290328 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 61 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 63 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 64 AS sv_idx, 0.813690 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 65 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 67 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 68 AS sv_idx, 0.178766 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 69 AS sv_idx, 0.713592 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 70 AS sv_idx, 0.656245 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 71 AS sv_idx, 0.525091 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 72 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 73 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 74 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 75 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 76 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 77 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 78 AS sv_idx, 0.841838 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 79 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 80 AS sv_idx, 0.311363 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 81 AS sv_idx, 0.467896 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 82 AS sv_idx, 0.744177 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 83 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 3 AS prob_idx, 1 AS c_1, 2 AS c_2, 84 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 28 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 30 AS sv_idx, 0.410232 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 31 AS sv_idx, 0.280249 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 32 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 33 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 35 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 36 AS sv_idx, 1.086880 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 37 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 38 AS sv_idx, 0.509553 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 39 AS sv_idx, 1.173596 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 40 AS sv_idx, 0.918601 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 41 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 42 AS sv_idx, 0.565141 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 43 AS sv_idx, 1.630144 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 46 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 47 AS sv_idx, 1.079490 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 48 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 50 AS sv_idx, 1.339499 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 51 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 85 AS sv_idx, 1.851810 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 86 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 87 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 88 AS sv_idx, 1.834529 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 89 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 90 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 92 AS sv_idx, 0.854344 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 93 AS sv_idx, 0.290328 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 94 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 96 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 97 AS sv_idx, 0.813690 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 98 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 100 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 101 AS sv_idx, 0.178766 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 102 AS sv_idx, 0.713592 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 103 AS sv_idx, 0.656245 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 104 AS sv_idx, 0.525091 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 105 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 106 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 4 AS prob_idx, 1 AS c_1, 3 AS c_2, 107 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 52 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 54 AS sv_idx, 0.410232 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 55 AS sv_idx, 0.280249 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 56 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 57 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 59 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 60 AS sv_idx, 1.086880 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 61 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 62 AS sv_idx, 0.509553 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 63 AS sv_idx, 1.173596 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 64 AS sv_idx, 0.918601 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 65 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 66 AS sv_idx, 0.565141 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 67 AS sv_idx, 1.630144 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 70 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 71 AS sv_idx, 1.079490 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 72 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 74 AS sv_idx, 1.339499 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 75 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 76 AS sv_idx, 0.534573 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 77 AS sv_idx, 1.535811 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 78 AS sv_idx, 0.944888 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 79 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 80 AS sv_idx, 0.655004 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 81 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 83 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 84 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 85 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 87 AS sv_idx, 0.410232 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 88 AS sv_idx, 0.280249 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 89 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 90 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 92 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 93 AS sv_idx, 1.086880 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 94 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 95 AS sv_idx, 0.509553 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 96 AS sv_idx, 1.173596 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 97 AS sv_idx, 0.918601 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 98 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 99 AS sv_idx, 0.565141 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 100 AS sv_idx, 1.630144 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 103 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 104 AS sv_idx, 1.079490 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 105 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 5 AS prob_idx, 2 AS c_1, 3 AS c_2, 107 AS sv_idx, 1.339499 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.318125 AS "rho", -1.648165 AS "probA", -0.129287 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", 0.292256 AS "rho", -0.895424 AS "probA", 0.115344 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", -0.120690 AS "rho", -1.446869 AS "probA", 0.115578 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", 0.474174 AS "rho", -1.884280 AS "probA", 0.315827 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", 0.310547 AS "rho", -2.487724 AS "probA", 0.183976 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", -0.239224 AS "rho", -2.744852 AS "probA", 0.045411 AS "probB"
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
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
)
,arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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