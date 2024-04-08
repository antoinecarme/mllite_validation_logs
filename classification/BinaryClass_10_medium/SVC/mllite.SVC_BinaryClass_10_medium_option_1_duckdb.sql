WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_medium" AS "ADS" 
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
     SELECT 0 AS "sv_idx", -0.044962 AS "sv_0", 1.210300 AS "sv_1", 0.837871 AS "sv_2", 0.036822 AS "sv_3", 0.980196 AS "sv_4", 0.281671 AS "sv_5", 0.777354 AS "sv_6", 0.492410 AS "sv_7", -0.036524 AS "sv_8", 0.927011 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.881366 AS "sv_0", 1.399658 AS "sv_1", 0.516419 AS "sv_2", 0.292905 AS "sv_3", 1.319084 AS "sv_4", -0.752799 AS "sv_5", 0.207616 AS "sv_6", 1.779366 AS "sv_7", 0.534369 AS "sv_8", -0.207511 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.887507 AS "sv_0", 1.145229 AS "sv_1", -0.076887 AS "sv_2", 0.263624 AS "sv_3", 0.859369 AS "sv_4", -1.255951 AS "sv_5", -0.431844 AS "sv_6", 0.602390 AS "sv_7", -0.074771 AS "sv_8", -0.806014 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.954561 AS "sv_0", -1.845000 AS "sv_1", 0.508844 AS "sv_2", -0.224022 AS "sv_3", 0.663209 AS "sv_4", 0.083038 AS "sv_5", 0.446295 AS "sv_6", 0.532215 AS "sv_7", -1.374292 AS "sv_8", 2.746056 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.492202 AS "sv_0", -1.657995 AS "sv_1", -0.140611 AS "sv_2", 1.028648 AS "sv_3", -1.387754 AS "sv_4", 1.537800 AS "sv_5", 0.334086 AS "sv_6", 0.001805 AS "sv_7", 0.254472 AS "sv_8", -0.344175 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.769605 AS "sv_0", 1.812664 AS "sv_1", -2.398118 AS "sv_2", 1.514822 AS "sv_3", -1.664913 AS "sv_4", -2.284102 AS "sv_5", -2.658047 AS "sv_6", -0.919327 AS "sv_7", 1.969008 AS "sv_8", -1.389701 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.922800 AS "sv_0", 0.299898 AS "sv_1", -0.336842 AS "sv_2", 0.147534 AS "sv_3", -0.196676 AS "sv_4", -0.369004 AS "sv_5", -0.387471 AS "sv_6", -0.932592 AS "sv_7", 2.691874 AS "sv_8", 0.259310 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.207149 AS "sv_0", 0.118302 AS "sv_1", -0.793585 AS "sv_2", 0.105090 AS "sv_3", -1.374022 AS "sv_4", 0.310660 AS "sv_5", -0.567034 AS "sv_6", -1.571705 AS "sv_7", 0.348569 AS "sv_8", -0.124040 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.907221 AS "sv_0", -0.489626 AS "sv_1", -0.252777 AS "sv_2", 1.071235 AS "sv_3", 0.566466 AS "sv_4", -1.202172 AS "sv_5", -0.561939 AS "sv_6", 0.200753 AS "sv_7", -0.977680 AS "sv_8", 0.222795 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 0.441366 AS "sv_0", -0.767481 AS "sv_1", -0.349474 AS "sv_2", -0.915853 AS "sv_3", -1.154481 AS "sv_4", 0.848705 AS "sv_5", -0.041069 AS "sv_6", -0.493502 AS "sv_7", 0.182158 AS "sv_8", -0.209842 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.671782 AS "sv_0", 2.022251 AS "sv_1", -0.135157 AS "sv_2", -0.509412 AS "sv_3", 1.201648 AS "sv_4", -1.807389 AS "sv_5", -0.641775 AS "sv_6", 0.436631 AS "sv_7", -0.165529 AS "sv_8", 0.011059 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.065818 AS "sv_0", -0.636733 AS "sv_1", -0.012748 AS "sv_2", -0.084446 AS "sv_3", 1.083539 AS "sv_4", -1.427637 AS "sv_5", -0.428973 AS "sv_6", 0.157528 AS "sv_7", -2.185526 AS "sv_8", 2.224059 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -0.263412 AS "sv_0", 1.788292 AS "sv_1", 0.201192 AS "sv_2", -0.339974 AS "sv_3", 1.169404 AS "sv_4", -1.142667 AS "sv_5", -0.168046 AS "sv_6", -0.413903 AS "sv_7", 1.138708 AS "sv_8", -1.061929 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.161201 AS "sv_0", -0.794545 AS "sv_1", 0.709537 AS "sv_2", 0.348623 AS "sv_3", 1.401939 AS "sv_4", -0.502496 AS "sv_5", 0.441115 AS "sv_6", 1.772862 AS "sv_7", -1.137358 AS "sv_8", -0.101282 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -0.792551 AS "sv_0", 0.663803 AS "sv_1", 0.639087 AS "sv_2", -0.721890 AS "sv_3", 1.182314 AS "sv_4", -0.348389 AS "sv_5", 0.427859 AS "sv_6", -1.512975 AS "sv_7", -0.453389 AS "sv_8", -0.237052 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 0.663167 AS "sv_0", 0.417673 AS "sv_1", 0.522532 AS "sv_2", -0.780069 AS "sv_3", -0.363281 AS "sv_4", 1.438493 AS "sv_5", 0.854893 AS "sv_6", 1.580967 AS "sv_7", -0.282811 AS "sv_8", 1.205217 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -0.298261 AS "sv_0", -0.797802 AS "sv_1", -0.548528 AS "sv_2", -2.398402 AS "sv_3", -0.699435 AS "sv_4", -0.109595 AS "sv_5", -0.486986 AS "sv_6", -1.246362 AS "sv_7", -0.123912 AS "sv_8", -0.131386 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.046883 AS "sv_0", -1.071828 AS "sv_1", 0.729746 AS "sv_2", 0.152708 AS "sv_3", 0.931978 AS "sv_4", 0.143897 AS "sv_5", 0.647314 AS "sv_6", -0.581599 AS "sv_7", -1.080055 AS "sv_8", -0.613064 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.417597 AS "sv_0", 0.730696 AS "sv_1", -0.769116 AS "sv_2", 1.582674 AS "sv_3", -1.135426 AS "sv_4", 0.046811 AS "sv_5", -0.624071 AS "sv_6", 0.236372 AS "sv_7", 0.850274 AS "sv_8", -0.545211 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.050769 AS "sv_0", 0.523799 AS "sv_1", 0.559831 AS "sv_2", 1.128912 AS "sv_3", 1.231978 AS "sv_4", -0.559530 AS "sv_5", 0.300257 AS "sv_6", -1.203015 AS "sv_7", -0.989711 AS "sv_8", -2.813570 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.917933 AS "sv_0", 0.897552 AS "sv_1", 0.753642 AS "sv_2", 0.024561 AS "sv_3", 0.427364 AS "sv_4", 0.842022 AS "sv_5", 0.871731 AS "sv_6", 0.375547 AS "sv_7", -0.585348 AS "sv_8", -0.876211 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -0.822533 AS "sv_0", -0.295668 AS "sv_1", -0.753569 AS "sv_2", 1.032943 AS "sv_3", -0.653910 AS "sv_4", -0.548333 AS "sv_5", -0.785598 AS "sv_6", -1.543056 AS "sv_7", 0.390884 AS "sv_8", 0.813279 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.513727 AS "sv_0", -2.027736 AS "sv_1", -0.509953 AS "sv_2", -0.956213 AS "sv_3", -0.977480 AS "sv_4", 0.322133 AS "sv_5", -0.328470 AS "sv_6", 0.473843 AS "sv_7", 0.158220 AS "sv_8", 0.699988 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 0.334930 AS "sv_0", -1.003999 AS "sv_1", 0.566000 AS "sv_2", -0.881164 AS "sv_3", 1.135667 AS "sv_4", -0.423305 AS "sv_5", 0.345297 AS "sv_6", -1.238473 AS "sv_7", -0.932318 AS "sv_8", 0.324729 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.134067 AS "sv_0", -2.541804 AS "sv_1", -0.335367 AS "sv_2", -0.066073 AS "sv_3", -0.809274 AS "sv_4", 0.427520 AS "sv_5", -0.152809 AS "sv_6", 0.002702 AS "sv_7", -2.973031 AS "sv_8", 0.170277 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -0.129511 AS "sv_0", 0.996860 AS "sv_1", 0.073817 AS "sv_2", 0.359897 AS "sv_3", 0.888151 AS "sv_4", -1.014134 AS "sv_5", -0.236002 AS "sv_6", 2.004759 AS "sv_7", 0.599293 AS "sv_8", -1.045101 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.849446 AS "sv_0", -0.419587 AS "sv_1", -0.035742 AS "sv_2", 0.737426 AS "sv_3", 0.368553 AS "sv_4", -0.543758 AS "sv_5", -0.188999 AS "sv_6", 1.030236 AS "sv_7", -2.112745 AS "sv_8", -0.377522 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.777269 AS "sv_0", 0.596671 AS "sv_1", -0.307377 AS "sv_2", 0.321773 AS "sv_3", -0.131082 AS "sv_4", -0.399427 AS "sv_5", -0.371953 AS "sv_6", -1.030974 AS "sv_7", -0.745758 AS "sv_8", -0.877383 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.065406 AS "sv_0", 1.087081 AS "sv_1", 0.425681 AS "sv_2", 0.780480 AS "sv_3", 0.865734 AS "sv_4", -0.333413 AS "sv_5", 0.255281 AS "sv_6", 0.534058 AS "sv_7", -0.089211 AS "sv_8", 1.315380 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -0.801233 AS "sv_0", 0.181047 AS "sv_1", 0.272896 AS "sv_2", -0.341897 AS "sv_3", 0.740004 AS "sv_4", -0.453461 AS "sv_5", 0.093402 AS "sv_6", 0.734150 AS "sv_7", -0.234633 AS "sv_8", -0.508986 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 0.924666 AS "sv_0", -0.071923 AS "sv_1", 0.252196 AS "sv_2", -0.968763 AS "sv_3", 0.645661 AS "sv_4", -0.369550 AS "sv_5", 0.100829 AS "sv_6", -0.267227 AS "sv_7", 1.091627 AS "sv_8", -1.310072 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 0.025352 AS "sv_0", 1.091216 AS "sv_1", -0.438659 AS "sv_2", 0.425302 AS "sv_3", -1.342398 AS "sv_4", 0.927026 AS "sv_5", -0.092072 AS "sv_6", 0.291900 AS "sv_7", 0.249386 AS "sv_8", -0.135896 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 0.006717 AS "sv_0", -0.639601 AS "sv_1", 0.540563 AS "sv_2", 0.217098 AS "sv_3", 0.858081 AS "sv_4", -0.110728 AS "sv_5", 0.415810 AS "sv_6", -0.427989 AS "sv_7", 0.214690 AS "sv_8", 1.278768 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.430708 AS "sv_0", 1.260270 AS "sv_1", 0.704607 AS "sv_2", 0.346571 AS "sv_3", 0.867090 AS "sv_4", 0.181418 AS "sv_5", 0.637464 AS "sv_6", 0.584152 AS "sv_7", 1.906117 AS "sv_8", -0.746882 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -0.370192 AS "sv_0", 0.094830 AS "sv_1", 1.003462 AS "sv_2", 0.941049 AS "sv_3", 0.965366 AS "sv_4", 0.607572 AS "sv_5", 1.010183 AS "sv_6", 0.432550 AS "sv_7", 0.064271 AS "sv_8", -0.902377 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 0.989920 AS "sv_0", -0.320205 AS "sv_1", 0.478699 AS "sv_2", -0.175386 AS "sv_3", 0.775139 AS "sv_4", -0.117829 AS "sv_5", 0.362428 AS "sv_6", 2.636853 AS "sv_7", -0.021523 AS "sv_8", 0.639712 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.293185 AS "sv_0", 0.296001 AS "sv_1", 0.287111 AS "sv_2", -0.872367 AS "sv_3", 0.450327 AS "sv_4", -0.051778 AS "sv_5", 0.222912 AS "sv_6", 1.371819 AS "sv_7", -0.493654 AS "sv_8", -1.490953 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.057829 AS "sv_0", 0.616509 AS "sv_1", -1.116132 AS "sv_2", -0.744926 AS "sv_3", -0.837925 AS "sv_4", -0.981381 AS "sv_5", -1.213169 AS "sv_6", 2.126974 AS "sv_7", -1.590610 AS "sv_8", 0.033227 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 0.754217 AS "sv_0", -2.030180 AS "sv_1", -0.330574 AS "sv_2", -2.223174 AS "sv_3", -1.157509 AS "sv_4", 0.887632 AS "sv_5", -0.013987 AS "sv_6", 0.774286 AS "sv_7", -0.099143 AS "sv_8", -0.546108 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -0.960957 AS "sv_0", -1.294560 AS "sv_1", -0.778172 AS "sv_2", 0.835975 AS "sv_3", -1.018968 AS "sv_4", -0.120865 AS "sv_5", -0.680721 AS "sv_6", -0.518959 AS "sv_7", 0.207019 AS "sv_8", -0.945521 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -0.571047 AS "sv_0", -0.079504 AS "sv_1", -1.108526 AS "sv_2", 0.613426 AS "sv_3", -1.430105 AS "sv_4", -0.199960 AS "sv_5", -0.977848 AS "sv_6", 1.141408 AS "sv_7", -0.035808 AS "sv_8", 0.424181 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 0.549095 AS "sv_0", -0.393391 AS "sv_1", -0.183711 AS "sv_2", 0.489826 AS "sv_3", -0.292501 AS "sv_4", 0.038773 AS "sv_5", -0.140979 AS "sv_6", -0.481661 AS "sv_7", 0.267929 AS "sv_8", -0.098876 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -1.185284 AS "sv_0", 0.847291 AS "sv_1", 0.801263 AS "sv_2", -0.657179 AS "sv_3", 1.116000 AS "sv_4", 0.037899 AS "sv_5", 0.675555 AS "sv_6", -1.093365 AS "sv_7", -0.955622 AS "sv_8", 1.750336 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.999844 AS "sv_0", -0.641099 AS "sv_1", -0.060026 AS "sv_2", -0.351197 AS "sv_3", -0.655991 AS "sv_4", 0.738847 AS "sv_5", 0.166760 AS "sv_6", -0.118726 AS "sv_7", -0.452301 AS "sv_8", -0.064584 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.437801 AS "sv_0", -1.279199 AS "sv_1", 1.095962 AS "sv_2", -0.442130 AS "sv_3", 0.770463 AS "sv_4", 1.031438 AS "sv_5", 1.211112 AS "sv_6", 1.100284 AS "sv_7", -1.825507 AS "sv_8", -0.649406 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -0.120551 AS "sv_0", 0.359479 AS "sv_1", -0.312232 AS "sv_2", 0.155081 AS "sv_3", -0.575346 AS "sv_4", 0.167247 AS "sv_5", -0.209903 AS "sv_6", -2.015844 AS "sv_7", -1.863936 AS "sv_8", -1.407385 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", -0.149553 AS "sv_0", -1.437827 AS "sv_1", -0.205293 AS "sv_2", -0.807086 AS "sv_3", -1.996938 AS "sv_4", 2.207373 AS "sv_5", 0.476682 AS "sv_6", -0.274419 AS "sv_7", 0.172991 AS "sv_8", -0.840230 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -2.595363 AS "sv_0", 0.655005 AS "sv_1", -0.911589 AS "sv_2", -0.012802 AS "sv_3", -1.134592 AS "sv_4", -0.218139 AS "sv_5", -0.819866 AS "sv_6", 0.507745 AS "sv_7", 0.430543 AS "sv_8", 0.442804 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -0.474686 AS "sv_0", 0.779076 AS "sv_1", 0.473579 AS "sv_2", -0.313781 AS "sv_3", 0.920777 AS "sv_4", -0.316027 AS "sv_5", 0.300096 AS "sv_6", 0.184956 AS "sv_7", 0.149225 AS "sv_8", 0.521500 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -0.614492 AS "sv_0", -1.641346 AS "sv_1", -0.834855 AS "sv_2", 2.004127 AS "sv_3", -0.669688 AS "sv_4", -0.678436 AS "sv_5", -0.891134 AS "sv_6", 0.972813 AS "sv_7", -0.438605 AS "sv_8", 0.956243 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -0.359509 AS "sv_0", -1.717797 AS "sv_1", 0.556018 AS "sv_2", 1.098084 AS "sv_3", 1.078956 AS "sv_4", -0.368307 AS "sv_5", 0.353137 AS "sv_6", 1.391819 AS "sv_7", -0.348129 AS "sv_8", -1.617450 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.321263 AS "sv_0", 0.187468 AS "sv_1", 0.094504 AS "sv_2", -0.340801 AS "sv_3", 0.277763 AS "sv_4", -0.184891 AS "sv_5", 0.024181 AS "sv_6", 0.101122 AS "sv_7", 0.549036 AS "sv_8", -1.374796 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -0.455125 AS "sv_0", -1.353951 AS "sv_1", -0.084335 AS "sv_2", 1.174554 AS "sv_3", 0.764748 AS "sv_4", -1.147136 AS "sv_5", -0.406129 AS "sv_6", -2.320833 AS "sv_7", 1.243189 AS "sv_8", -1.586949 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 0.402525 AS "sv_0", -0.365506 AS "sv_1", 0.671943 AS "sv_2", -1.440930 AS "sv_3", 0.759143 AS "sv_4", 0.260798 AS "sv_5", 0.633641 AS "sv_6", -0.203361 AS "sv_7", 0.963563 AS "sv_8", 0.212135 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.205651 AS "sv_0", 0.239518 AS "sv_1", -0.839706 AS "sv_2", 0.309351 AS "sv_3", -0.997451 AS "sv_4", -0.262712 AS "sv_5", -0.773320 AS "sv_6", 1.764901 AS "sv_7", 0.361801 AS "sv_8", 0.627333 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -3.661373 AS "sv_0", -0.707396 AS "sv_1", 0.309848 AS "sv_2", -0.054012 AS "sv_3", 0.826445 AS "sv_4", -0.497033 AS "sv_5", 0.111275 AS "sv_6", 0.033755 AS "sv_7", -0.807668 AS "sv_8", 0.583309 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 0.084607 AS "sv_0", 1.232242 AS "sv_1", -0.305805 AS "sv_2", 1.109497 AS "sv_3", 0.007571 AS "sv_4", -0.576180 AS "sv_5", -0.422452 AS "sv_6", -1.292571 AS "sv_7", -1.450482 AS "sv_8", 0.905218 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 2.533009 AS "sv_0", -0.797929 AS "sv_1", -0.747149 AS "sv_2", -0.617123 AS "sv_3", -0.479465 AS "sv_4", -0.762485 AS "sv_5", -0.843037 AS "sv_6", -2.688770 AS "sv_7", 0.809043 AS "sv_8", -0.738149 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -0.576050 AS "sv_0", 1.597277 AS "sv_1", -0.319492 AS "sv_2", -1.021967 AS "sv_3", -0.890785 AS "sv_4", 0.562541 AS "sv_5", -0.100073 AS "sv_6", -0.177537 AS "sv_7", -0.286416 AS "sv_8", 1.123596 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.684683 AS "sv_0", 1.206950 AS "sv_1", 0.344897 AS "sv_2", 1.058610 AS "sv_3", 0.073804 AS "sv_4", 0.543136 AS "sv_5", 0.445184 AS "sv_6", -0.703913 AS "sv_7", -0.717647 AS "sv_8", 0.491219 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 1.035159 AS "sv_0", 0.787988 AS "sv_1", -0.182468 AS "sv_2", 0.279660 AS "sv_3", -0.476007 AS "sv_4", 0.278857 AS "sv_5", -0.069587 AS "sv_6", -0.199727 AS "sv_7", 0.318900 AS "sv_8", 0.347799 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.376695 AS "sv_0", 0.670420 AS "sv_1", 0.455685 AS "sv_2", -0.372278 AS "sv_3", 0.875303 AS "sv_4", -0.290242 AS "sv_5", 0.292815 AS "sv_6", 0.626017 AS "sv_7", 0.046635 AS "sv_8", -0.386433 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 0.106440 AS "sv_0", 0.753236 AS "sv_1", 1.021214 AS "sv_2", -0.570944 AS "sv_3", 0.845808 AS "sv_4", 0.795371 AS "sv_5", 1.079944 AS "sv_6", -0.673985 AS "sv_7", -1.497403 AS "sv_8", 1.174173 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", -1.473656 AS "sv_0", 0.560021 AS "sv_1", 0.640488 AS "sv_2", 1.231428 AS "sv_3", 0.960410 AS "sv_4", -0.058255 AS "sv_5", 0.514051 AS "sv_6", -0.246466 AS "sv_7", -0.670183 AS "sv_8", -0.980863 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", 0.523724 AS "sv_0", 0.186995 AS "sv_1", -0.215507 AS "sv_2", 0.198430 AS "sv_3", -0.511244 AS "sv_4", 0.263326 AS "sv_5", -0.101536 AS "sv_6", -0.361531 AS "sv_7", 0.101739 AS "sv_8", 0.170838 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 2.237697 AS "sv_0", 0.843435 AS "sv_1", -0.684138 AS "sv_2", 0.574233 AS "sv_3", -0.682284 AS "sv_4", -0.382977 AS "sv_5", -0.679561 AS "sv_6", 0.522684 AS "sv_7", -1.583460 AS "sv_8", -1.092133 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", 0.244549 AS "sv_0", -0.114573 AS "sv_1", 1.073664 AS "sv_2", 0.389901 AS "sv_3", 1.187633 AS "sv_4", 0.449582 AS "sv_5", 1.022096 AS "sv_6", -0.185604 AS "sv_7", 0.102623 AS "sv_8", -1.556498 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", -0.023906 AS "sv_0", -0.281021 AS "sv_1", 0.698093 AS "sv_2", -0.026552 AS "sv_3", 1.179121 AS "sv_4", -0.234968 AS "sv_5", 0.510031 AS "sv_6", -0.066693 AS "sv_7", -1.655300 AS "sv_8", 0.138775 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", 0.294529 AS "sv_0", -2.952712 AS "sv_1", 0.408459 AS "sv_2", 0.309242 AS "sv_3", 1.131531 AS "sv_4", -0.709722 AS "sv_5", 0.130714 AS "sv_6", 0.856443 AS "sv_7", -0.900223 AS "sv_8", 2.097126 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", -0.478533 AS "sv_0", -0.351617 AS "sv_1", -0.202444 AS "sv_2", -0.761664 AS "sv_3", 0.795004 AS "sv_4", -1.405086 AS "sv_5", -0.579669 AS "sv_6", 1.412653 AS "sv_7", 1.425146 AS "sv_8", 2.352939 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -0.861350 AS "sv_0", 0.262988 AS "sv_1", 0.874268 AS "sv_2", 1.165662 AS "sv_3", 1.285098 AS "sv_4", -0.046004 AS "sv_5", 0.711504 AS "sv_6", -0.033489 AS "sv_7", 0.298955 AS "sv_8", 2.835485 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", 0.775386 AS "sv_0", -0.666285 AS "sv_1", -0.563112 AS "sv_2", -0.478699 AS "sv_3", -0.911327 AS "sv_4", 0.137959 AS "sv_5", -0.426528 AS "sv_6", 0.229164 AS "sv_7", 1.208903 AS "sv_8", 0.637983 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", 0.605484 AS "sv_0", -0.776307 AS "sv_1", -0.522663 AS "sv_2", 0.659222 AS "sv_3", -0.568767 AS "sv_4", -0.231007 AS "sv_5", -0.501120 AS "sv_6", 1.574529 AS "sv_7", -1.137054 AS "sv_8", 0.812275 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", -0.032368 AS "sv_0", -0.729920 AS "sv_1", -0.389224 AS "sv_2", -0.195272 AS "sv_3", -0.478890 AS "sv_4", -0.100331 AS "sv_5", -0.352168 AS "sv_6", 0.547406 AS "sv_7", -1.544599 AS "sv_8", -0.330377 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", 0.155593 AS "sv_0", -0.720197 AS "sv_1", 0.038579 AS "sv_2", -1.073722 AS "sv_3", 0.310301 AS "sv_4", -0.330631 AS "sv_5", -0.064907 AS "sv_6", -0.534270 AS "sv_7", 0.345506 AS "sv_8", -1.305311 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", 0.714899 AS "sv_0", -0.409630 AS "sv_1", 0.391603 AS "sv_2", -0.918285 AS "sv_3", 0.770314 AS "sv_4", -0.272883 AS "sv_5", 0.244763 AS "sv_6", -0.767973 AS "sv_7", 0.002058 AS "sv_8", 0.537001 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", -0.135087 AS "sv_0", 1.326329 AS "sv_1", 0.340759 AS "sv_2", -2.533357 AS "sv_3", 1.107253 AS "sv_4", -0.803648 AS "sv_5", 0.047047 AS "sv_6", 1.263514 AS "sv_7", -2.571504 AS "sv_8", 0.800477 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", 0.983777 AS "sv_0", -0.156476 AS "sv_1", 0.182455 AS "sv_2", 0.400164 AS "sv_3", 1.067658 AS "sv_4", -1.045529 AS "sv_5", -0.155115 AS "sv_6", -0.465157 AS "sv_7", 0.899188 AS "sv_8", -0.232114 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 0.625613 AS "sv_0", 0.013541 AS "sv_1", -0.533543 AS "sv_2", -0.935175 AS "sv_3", 0.351757 AS "sv_4", -1.443954 AS "sv_5", -0.865624 AS "sv_6", 0.243428 AS "sv_7", 0.697505 AS "sv_8", 2.827898 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", 1.306539 AS "sv_0", 0.004632 AS "sv_1", -0.925593 AS "sv_2", 0.874197 AS "sv_3", 1.122046 AS "sv_4", -3.168177 AS "sv_5", -1.696054 AS "sv_6", -0.828784 AS "sv_7", 0.825629 AS "sv_8", -1.186445 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", 0.272572 AS "sv_0", 1.941639 AS "sv_1", -0.641995 AS "sv_2", -0.387222 AS "sv_3", -0.955194 AS "sv_4", 0.048706 AS "sv_5", -0.518100 AS "sv_6", -1.190116 AS "sv_7", -0.100439 AS "sv_8", -0.540110 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 1.821024 AS "sv_0", -2.298777 AS "sv_1", -0.149211 AS "sv_2", 1.822545 AS "sv_3", 1.098499 AS "sv_4", -1.699758 AS "sv_5", -0.621886 AS "sv_6", -1.027402 AS "sv_7", 0.028721 AS "sv_8", -0.573774 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", -0.409265 AS "sv_0", 0.122513 AS "sv_1", -0.547327 AS "sv_2", 0.254159 AS "sv_3", -0.013538 AS "sv_4", -0.996141 AS "sv_5", -0.745813 AS "sv_6", -0.336252 AS "sv_7", -0.972778 AS "sv_8", 0.437569 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", -0.268477 AS "sv_0", 1.653708 AS "sv_1", -0.773479 AS "sv_2", -0.372611 AS "sv_3", -0.769597 AS "sv_4", -0.435304 AS "sv_5", -0.768983 AS "sv_6", -0.494578 AS "sv_7", -0.359172 AS "sv_8", -0.936603 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", 2.465637 AS "sv_0", -0.399825 AS "sv_1", 1.161739 AS "sv_2", -1.664284 AS "sv_3", 1.552280 AS "sv_4", 0.140200 AS "sv_5", 1.004461 AS "sv_6", 1.036544 AS "sv_7", -1.013035 AS "sv_8", -2.511321 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", -1.910635 AS "sv_0", -0.621512 AS "sv_1", 0.669773 AS "sv_2", 0.882259 AS "sv_3", 0.650683 AS "sv_4", 0.397319 AS "sv_5", 0.671853 AS "sv_6", 1.257275 AS "sv_7", 1.482458 AS "sv_8", -0.350793 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", 0.999864 AS "sv_0", -1.309848 AS "sv_1", 0.130094 AS "sv_2", -1.037358 AS "sv_3", -0.425384 AS "sv_4", 0.792146 AS "sv_5", 0.340037 AS "sv_6", 2.425021 AS "sv_7", -0.228479 AS "sv_8", -2.777180 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", -0.790728 AS "sv_0", -0.335254 AS "sv_1", 0.339385 AS "sv_2", -0.073637 AS "sv_3", 0.681058 AS "sv_4", -0.253937 AS "sv_5", 0.207013 AS "sv_6", 0.655370 AS "sv_7", 1.207927 AS "sv_8", -0.665313 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -0.042625 AS "sv_0", 1.979468 AS "sv_1", -0.103021 AS "sv_2", 1.010011 AS "sv_3", 1.092642 AS "sv_4", -1.606622 AS "sv_5", -0.556287 AS "sv_6", 0.397762 AS "sv_7", -1.612685 AS "sv_8", -0.174393 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 1.099008 AS "sv_0", 0.995387 AS "sv_1", -0.566409 AS "sv_2", 0.942423 AS "sv_3", -0.442994 AS "sv_4", -0.475002 AS "sv_5", -0.608904 AS "sv_6", 0.596519 AS "sv_7", -2.066395 AS "sv_8", -2.578005 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", -1.496666 AS "sv_0", 0.317595 AS "sv_1", 0.538174 AS "sv_2", -1.210989 AS "sv_3", 0.911635 AS "sv_4", -0.184546 AS "sv_5", 0.392196 AS "sv_6", 1.209745 AS "sv_7", -0.609755 AS "sv_8", 0.732148 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", -1.246410 AS "sv_0", 0.708004 AS "sv_1", 0.108871 AS "sv_2", 0.416695 AS "sv_3", 0.928030 AS "sv_4", -1.000886 AS "sv_5", -0.203051 AS "sv_6", 0.095531 AS "sv_7", 1.718346 AS "sv_8", 1.599328 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", -0.382955 AS "sv_0", 0.453807 AS "sv_1", 0.425512 AS "sv_2", 0.321363 AS "sv_3", 0.626122 AS "sv_4", -0.023241 AS "sv_5", 0.346045 AS "sv_6", -2.896833 AS "sv_7", -1.736239 AS "sv_8", 0.952290 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", 0.100322 AS "sv_0", -0.028667 AS "sv_1", -0.642895 AS "sv_2", 0.550880 AS "sv_3", -0.426502 AS "sv_4", -0.638029 AS "sv_5", -0.720110 AS "sv_6", 0.915915 AS "sv_7", 0.654493 AS "sv_8", 0.068117 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", 0.359689 AS "sv_0", -0.689209 AS "sv_1", -0.725047 AS "sv_2", 0.715404 AS "sv_3", -0.938087 AS "sv_4", -0.127279 AS "sv_5", -0.638548 AS "sv_6", -1.081071 AS "sv_7", -1.125354 AS "sv_8", -0.357728 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", 1.632208 AS "sv_0", -2.034282 AS "sv_1", 0.818088 AS "sv_2", 0.624015 AS "sv_3", 1.369792 AS "sv_4", -0.259798 AS "sv_5", 0.602260 AS "sv_6", 0.787438 AS "sv_7", -0.256977 AS "sv_8", 0.896508 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", -0.899949 AS "sv_0", 1.417506 AS "sv_1", 0.234098 AS "sv_2", 0.054897 AS "sv_3", 0.918551 AS "sv_4", -0.756675 AS "sv_5", -0.027636 AS "sv_6", 0.201077 AS "sv_7", 1.065277 AS "sv_8", -0.527426 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 1.372308 AS "sv_0", -0.697183 AS "sv_1", 1.020035 AS "sv_2", -0.159894 AS "sv_3", 0.957476 AS "sv_4", 0.648491 AS "sv_5", 1.035919 AS "sv_6", 0.162336 AS "sv_7", -0.034774 AS "sv_8", -1.017369 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", 0.739356 AS "sv_0", 0.040085 AS "sv_1", -0.293706 AS "sv_2", -1.073093 AS "sv_3", -0.645207 AS "sv_4", 0.292082 AS "sv_5", -0.157955 AS "sv_6", 1.367823 AS "sv_7", -0.883563 AS "sv_8", 0.285353 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", 0.012511 AS "sv_0", 0.276259 AS "sv_1", -0.478931 AS "sv_2", 0.271257 AS "sv_3", -0.466769 AS "sv_4", -0.282180 AS "sv_5", -0.479853 AS "sv_6", -0.828294 AS "sv_7", -1.311457 AS "sv_8", -0.365120 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 0.688917 AS "sv_0", 1.581740 AS "sv_1", -0.147423 AS "sv_2", 0.338287 AS "sv_3", 0.241546 AS "sv_4", -0.586026 AS "sv_5", -0.293999 AS "sv_6", -0.408070 AS "sv_7", 0.629434 AS "sv_8", -1.044325 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 0.330976 AS "sv_0", -0.786910 AS "sv_1", 0.918334 AS "sv_2", -0.012289 AS "sv_3", 0.980014 AS "sv_4", 0.430929 AS "sv_5", 0.887822 AS "sv_6", 1.592387 AS "sv_7", 0.363615 AS "sv_8", -0.447424 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", -0.260143 AS "sv_0", -0.125264 AS "sv_1", -0.259481 AS "sv_2", -0.487871 AS "sv_3", -0.793742 AS "sv_4", 0.547938 AS "sv_5", -0.054589 AS "sv_6", 0.294207 AS "sv_7", 1.505260 AS "sv_8", 0.061732 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", -1.598145 AS "sv_0", -0.807512 AS "sv_1", 0.871119 AS "sv_2", -0.790449 AS "sv_3", 0.986910 AS "sv_4", 0.334549 AS "sv_5", 0.820422 AS "sv_6", -0.607904 AS "sv_7", 0.021321 AS "sv_8", -1.727536 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", 0.143193 AS "sv_0", 0.062271 AS "sv_1", -0.250218 AS "sv_2", 1.420221 AS "sv_3", -0.359574 AS "sv_4", 0.002509 AS "sv_5", -0.206758 AS "sv_6", -0.900621 AS "sv_7", -1.149689 AS "sv_8", -0.016134 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", 0.515021 AS "sv_0", 0.355015 AS "sv_1", 0.915202 AS "sv_2", -0.055302 AS "sv_3", 0.957182 AS "sv_4", 0.454714 AS "sv_5", 0.892195 AS "sv_6", -0.591067 AS "sv_7", -0.406366 AS "sv_8", 2.332328 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", -1.828214 AS "sv_0", -0.945604 AS "sv_1", 1.189673 AS "sv_2", -0.527387 AS "sv_3", 1.005531 AS "sv_4", 0.900402 AS "sv_5", 1.250419 AS "sv_6", 0.580760 AS "sv_7", -1.493396 AS "sv_8", -1.050581 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", 0.302626 AS "sv_0", -1.420232 AS "sv_1", -0.254878 AS "sv_2", -0.590669 AS "sv_3", -0.492311 AS "sv_4", 0.165875 AS "sv_5", -0.162744 AS "sv_6", 0.711084 AS "sv_7", -0.049331 AS "sv_8", -0.692549 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", -0.081603 AS "sv_0", 1.917547 AS "sv_1", 0.783790 AS "sv_2", -1.939052 AS "sv_3", 0.933647 AS "sv_4", 0.241827 AS "sv_5", 0.720831 AS "sv_6", 0.620311 AS "sv_7", -0.450244 AS "sv_8", -1.197931 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", -1.100434 AS "sv_0", -0.750347 AS "sv_1", -0.357655 AS "sv_2", -1.397669 AS "sv_3", -1.019403 AS "sv_4", 0.658521 AS "sv_5", -0.103591 AS "sv_6", -0.159443 AS "sv_7", -0.234435 AS "sv_8", -1.380261 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", -0.748524 AS "sv_0", 1.878403 AS "sv_1", 0.238373 AS "sv_2", -0.231430 AS "sv_3", 0.943549 AS "sv_4", -0.781149 AS "sv_5", -0.031263 AS "sv_6", -0.878277 AS "sv_7", -0.508412 AS "sv_8", -1.198498 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", 0.112675 AS "sv_0", 0.061896 AS "sv_1", 0.392449 AS "sv_2", 0.451280 AS "sv_3", 0.890803 AS "sv_4", -0.427442 AS "sv_5", 0.200167 AS "sv_6", -0.104017 AS "sv_7", 0.522222 AS "sv_8", 0.171454 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", 1.318963 AS "sv_0", 0.203376 AS "sv_1", -0.510421 AS "sv_2", 0.482600 AS "sv_3", 0.153388 AS "sv_4", -1.144087 AS "sv_5", -0.758567 AS "sv_6", -1.783432 AS "sv_7", 0.693461 AS "sv_8", -0.590666 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", -0.302470 AS "sv_0", 1.356415 AS "sv_1", -0.362392 AS "sv_2", -0.177181 AS "sv_3", -1.196000 AS "sv_4", 0.878578 AS "sv_5", -0.043026 AS "sv_6", 0.517212 AS "sv_7", 1.186677 AS "sv_8", 0.098547 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 0.819418 AS "sv_0", 0.946769 AS "sv_1", 0.088524 AS "sv_2", 0.107384 AS "sv_3", -0.599088 AS "sv_4", 0.940238 AS "sv_5", 0.348967 AS "sv_6", -1.799496 AS "sv_7", 0.505171 AS "sv_8", 1.615504 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", 0.519357 AS "sv_0", 0.418451 AS "sv_1", 0.699414 AS "sv_2", 0.413981 AS "sv_3", 0.929892 AS "sv_4", 0.090423 AS "sv_5", 0.606489 AS "sv_6", 1.953913 AS "sv_7", 0.443428 AS "sv_8", 0.236337 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", -1.120785 AS "sv_0", 0.327921 AS "sv_1", 0.778438 AS "sv_2", -0.586316 AS "sv_3", 0.940217 AS "sv_4", 0.223402 AS "sv_5", 0.710993 AS "sv_6", -0.813768 AS "sv_7", 0.544365 AS "sv_8", 2.547697 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 0.371505 AS "sv_0", 0.522010 AS "sv_1", 0.720646 AS "sv_2", 1.004317 AS "sv_3", 0.948673 AS "sv_4", 0.105410 AS "sv_5", 0.628488 AS "sv_6", 0.047159 AS "sv_7", -0.516722 AS "sv_8", -1.793946 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", -0.324339 AS "sv_0", -0.722261 AS "sv_1", 0.569157 AS "sv_2", 0.967609 AS "sv_3", 0.951582 AS "sv_4", -0.178926 AS "sv_5", 0.419535 AS "sv_6", 1.398441 AS "sv_7", 0.462846 AS "sv_8", 0.128738 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", -0.485481 AS "sv_0", 0.639806 AS "sv_1", -0.403360 AS "sv_2", 0.312649 AS "sv_3", 0.217847 AS "sv_4", -1.029328 AS "sv_5", -0.636154 AS "sv_6", 2.171299 AS "sv_7", 0.452828 AS "sv_8", 2.283275 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.562414 AS "sv_0", -1.663153 AS "sv_1", 1.106626 AS "sv_2", -1.221336 AS "sv_3", 0.978300 AS "sv_4", 0.781880 AS "sv_5", 1.146817 AS "sv_6", 1.858464 AS "sv_7", -0.207988 AS "sv_8", -0.099876 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", -0.370749 AS "sv_0", -2.652549 AS "sv_1", -0.394162 AS "sv_2", 2.176175 AS "sv_3", -1.185241 AS "sv_4", 0.805797 AS "sv_5", -0.090701 AS "sv_6", 0.819804 AS "sv_7", -1.141422 AS "sv_8", 1.164873 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", 0.507780 AS "sv_0", 1.068770 AS "sv_1", 0.991340 AS "sv_2", 0.950698 AS "sv_3", 1.025404 AS "sv_4", 0.507326 AS "sv_5", 0.970752 AS "sv_6", -2.388599 AS "sv_7", 0.336069 AS "sv_8", -0.656871 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", 1.237566 AS "sv_0", 0.635414 AS "sv_1", 1.362477 AS "sv_2", 1.381634 AS "sv_3", 0.996182 AS "sv_4", 1.232559 AS "sv_5", 1.491063 AS "sv_6", -2.311953 AS "sv_7", -1.462748 AS "sv_8", -0.264504 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", -1.330073 AS "sv_0", 0.173001 AS "sv_1", -0.168036 AS "sv_2", 0.490379 AS "sv_3", 0.059827 AS "sv_4", -0.388735 AS "sv_5", -0.253272 AS "sv_6", 0.533567 AS "sv_7", 0.356436 AS "sv_8", 1.975185 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", -0.373574 AS "sv_0", -0.240742 AS "sv_1", 0.874479 AS "sv_2", 0.520330 AS "sv_3", 0.978467 AS "sv_4", 0.351712 AS "sv_5", 0.828239 AS "sv_6", 0.947595 AS "sv_7", -0.028921 AS "sv_8", -0.809748 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", -3.152239 AS "sv_0", -0.125927 AS "sv_1", -0.474303 AS "sv_2", -0.244500 AS "sv_3", -3.126464 AS "sv_4", 3.172766 AS "sv_5", 0.536536 AS "sv_6", 0.049362 AS "sv_7", 1.135792 AS "sv_8", 1.068855 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", 2.750073 AS "sv_0", 1.374505 AS "sv_1", -0.485268 AS "sv_2", -1.325194 AS "sv_3", 0.080458 AS "sv_4", -1.003001 AS "sv_5", -0.696360 AS "sv_6", 1.538708 AS "sv_7", -2.425964 AS "sv_8", 1.502867 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", 1.884428 AS "sv_0", 0.645366 AS "sv_1", 1.197922 AS "sv_2", -0.578145 AS "sv_3", 0.999705 AS "sv_4", 0.923227 AS "sv_5", 1.263949 AS "sv_6", 0.106809 AS "sv_7", 1.378079 AS "sv_8", -1.023331 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", -1.357628 AS "sv_0", 1.361029 AS "sv_1", 0.890086 AS "sv_2", 0.143034 AS "sv_3", 0.969712 AS "sv_4", 0.391962 AS "sv_5", 0.852977 AS "sv_6", 0.805215 AS "sv_7", -1.308387 AS "sv_8", -1.038055 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", -0.816010 AS "sv_0", 0.529206 AS "sv_1", -0.126696 AS "sv_2", -0.313473 AS "sv_3", -0.071212 AS "sv_4", -0.142373 AS "sv_5", -0.146788 AS "sv_6", -2.740247 AS "sv_7", 1.660622 AS "sv_8", 1.000005 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 0.005109 AS "sv_0", 0.011404 AS "sv_1", -0.286293 AS "sv_2", -0.326650 AS "sv_3", -0.899099 AS "sv_4", 0.634800 AS "sv_5", -0.051366 AS "sv_6", -1.438838 AS "sv_7", -0.601894 AS "sv_8", -0.572385 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", -1.300971 AS "sv_0", 1.100000 AS "sv_1", -0.195414 AS "sv_2", -0.121453 AS "sv_3", 0.087469 AS "sv_4", -0.475260 AS "sv_5", -0.301333 AS "sv_6", 0.645067 AS "sv_7", -0.038041 AS "sv_8", 0.996654 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", 0.879701 AS "sv_0", -2.330260 AS "sv_1", -0.194462 AS "sv_2", -0.686508 AS "sv_3", -2.217880 AS "sv_4", 2.513726 AS "sv_5", 0.575447 AS "sv_6", -1.283660 AS "sv_7", 0.943493 AS "sv_8", -1.961285 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", -1.363536 AS "sv_0", -0.388652 AS "sv_1", 1.123442 AS "sv_2", -2.366345 AS "sv_3", 0.946951 AS "sv_4", 0.853644 AS "sv_5", 1.181794 AS "sv_6", -0.756988 AS "sv_7", -1.096364 AS "sv_8", 1.517939 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", 0.891340 AS "sv_0", 0.160584 AS "sv_1", 1.145963 AS "sv_2", 0.529848 AS "sv_3", 0.973302 AS "sv_4", 0.861209 AS "sv_5", 1.202687 AS "sv_6", 3.581633 AS "sv_7", 2.348272 AS "sv_8", -0.107321 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", -2.188798 AS "sv_0", 1.247514 AS "sv_1", -0.196171 AS "sv_2", 0.071459 AS "sv_3", -0.606263 AS "sv_4", 0.422263 AS "sv_5", -0.038921 AS "sv_6", 1.521653 AS "sv_7", -0.605569 AS "sv_8", -1.014692 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", -0.189211 AS "sv_0", 0.263870 AS "sv_1", 0.989440 AS "sv_2", -0.249016 AS "sv_3", 0.950179 AS "sv_4", 0.601282 AS "sv_5", 0.996713 AS "sv_6", 0.956108 AS "sv_7", -0.427735 AS "sv_8", 0.592305 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", 0.833583 AS "sv_0", -1.388126 AS "sv_1", 1.033939 AS "sv_2", 0.128171 AS "sv_3", 0.997791 AS "sv_4", 0.622003 AS "sv_5", 1.039686 AS "sv_6", -1.883260 AS "sv_7", -1.344622 AS "sv_8", -0.938560 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", -0.761545 AS "sv_0", -1.446053 AS "sv_1", 0.942219 AS "sv_2", -0.067925 AS "sv_3", 0.975192 AS "sv_4", 0.481414 AS "sv_5", 0.922424 AS "sv_6", 0.132868 AS "sv_7", 0.415124 AS "sv_8", -0.969137 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 0.007580 AS "sv_0", 1.671367 AS "sv_1", 0.906135 AS "sv_2", -0.049667 AS "sv_3", 0.975790 AS "sv_4", 0.413810 AS "sv_5", 0.872689 AS "sv_6", 0.324844 AS "sv_7", -1.835422 AS "sv_8", -0.776542 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", -1.260691 AS "sv_0", -0.835031 AS "sv_1", -0.455083 AS "sv_2", -0.832824 AS "sv_3", -0.978252 AS "sv_4", 0.424756 AS "sv_5", -0.252893 AS "sv_6", -0.024752 AS "sv_7", -0.452338 AS "sv_8", 0.089483 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", 0.021446 AS "sv_0", 1.814789 AS "sv_1", -0.013641 AS "sv_2", -0.177948 AS "sv_3", 0.911978 AS "sv_4", -1.206984 AS "sv_5", -0.365046 AS "sv_6", 0.302179 AS "sv_7", -0.591532 AS "sv_8", 0.288268 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", -0.333653 AS "sv_0", 0.321045 AS "sv_1", 0.219660 AS "sv_2", -0.258767 AS "sv_3", 0.051311 AS "sv_4", 0.340335 AS "sv_5", 0.281896 AS "sv_6", -0.547401 AS "sv_7", -0.290991 AS "sv_8", 1.253344 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", 0.934910 AS "sv_0", -1.370949 AS "sv_1", -0.177389 AS "sv_2", -0.216978 AS "sv_3", -0.546397 AS "sv_4", 0.379475 AS "sv_5", -0.035886 AS "sv_6", 0.132414 AS "sv_7", -0.472519 AS "sv_8", -0.315160 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", -1.111466 AS "sv_0", 2.101292 AS "sv_1", -0.165525 AS "sv_2", -0.411208 AS "sv_3", -0.464374 AS "sv_4", 0.295163 AS "sv_5", -0.050757 AS "sv_6", 1.148211 AS "sv_7", -2.001013 AS "sv_8", 0.092844 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 0.815324 AS "sv_0", -0.012660 AS "sv_1", 0.735831 AS "sv_2", 0.439867 AS "sv_3", 0.944964 AS "sv_4", 0.138340 AS "sv_5", 0.650731 AS "sv_6", 0.209989 AS "sv_7", -1.280495 AS "sv_8", 1.075449 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", -0.750818 AS "sv_0", 1.536321 AS "sv_1", 0.910231 AS "sv_2", -0.644372 AS "sv_3", 0.973998 AS "sv_4", 0.423717 AS "sv_5", 0.878989 AS "sv_6", -0.577707 AS "sv_7", 0.019270 AS "sv_8", 0.723786 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", -1.581484 AS "sv_0", -0.349332 AS "sv_1", 0.855671 AS "sv_2", -0.044079 AS "sv_3", 0.965722 AS "sv_4", 0.333393 AS "sv_5", 0.807274 AS "sv_6", -0.582204 AS "sv_7", -2.385632 AS "sv_8", 2.592288 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -0.105788 AS "sv_0", -1.400364 AS "sv_1", -0.441051 AS "sv_2", 1.202273 AS "sv_3", 0.106194 AS "sv_4", -0.954457 AS "sv_5", -0.645467 AS "sv_6", 0.033406 AS "sv_7", -0.148326 AS "sv_8", 2.467227 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", -0.304749 AS "sv_0", -1.457891 AS "sv_1", -0.263838 AS "sv_2", -2.142921 AS "sv_3", -0.682125 AS "sv_4", 0.395238 AS "sv_5", -0.102954 AS "sv_6", 0.196698 AS "sv_7", -0.339599 AS "sv_8", 0.649171 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", -1.335243 AS "sv_0", -0.492350 AS "sv_1", -0.333559 AS "sv_2", 2.108780 AS "sv_3", -1.122962 AS "sv_4", 0.837338 AS "sv_5", -0.031203 AS "sv_6", 0.693451 AS "sv_7", 0.797554 AS "sv_8", -1.877447 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", -1.229875 AS "sv_0", 0.060725 AS "sv_1", -0.278011 AS "sv_2", 0.500876 AS "sv_3", 0.249257 AS "sv_4", -0.837876 AS "sv_5", -0.476099 AS "sv_6", 0.203125 AS "sv_7", 0.438541 AS "sv_8", -0.072711 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", 1.070763 AS "sv_0", 1.241015 AS "sv_1", -0.340410 AS "sv_2", 0.767880 AS "sv_3", -0.560839 AS "sv_4", 0.096263 AS "sv_5", -0.254073 AS "sv_6", -0.187741 AS "sv_7", -0.318126 AS "sv_8", -2.036306 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", 1.154551 AS "sv_0", -1.825296 AS "sv_1", -0.237798 AS "sv_2", -0.004950 AS "sv_3", -2.136627 AS "sv_4", 2.328177 AS "sv_5", 0.485131 AS "sv_6", 1.179418 AS "sv_7", -0.975787 AS "sv_8", -2.583064 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", -0.544534 AS "sv_0", 0.280383 AS "sv_1", 1.012269 AS "sv_2", -0.547778 AS "sv_3", 0.943268 AS "sv_4", 0.652517 AS "sv_5", 1.030659 AS "sv_6", 0.591990 AS "sv_7", -2.130695 AS "sv_8", -0.855047 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", 0.196254 AS "sv_0", -0.447072 AS "sv_1", 0.102563 AS "sv_2", 1.090824 AS "sv_3", 0.330586 AS "sv_4", -0.238413 AS "sv_5", 0.015178 AS "sv_6", 1.420699 AS "sv_7", 0.318682 AS "sv_8", -0.309277 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", -1.191376 AS "sv_0", -0.430199 AS "sv_1", 0.539732 AS "sv_2", -0.069356 AS "sv_3", 0.952684 AS "sv_4", -0.234850 AS "sv_5", 0.378745 AS "sv_6", 0.709615 AS "sv_7", 0.424737 AS "sv_8", 2.633529 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", 0.637392 AS "sv_0", -2.262798 AS "sv_1", 1.132294 AS "sv_2", 0.356628 AS "sv_3", 1.019703 AS "sv_4", 0.775768 AS "sv_5", 1.166311 AS "sv_6", 0.004531 AS "sv_7", -2.943059 AS "sv_8", -0.072162 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", 1.056748 AS "sv_0", 0.143162 AS "sv_1", -0.275535 AS "sv_2", 1.287112 AS "sv_3", -0.012741 AS "sv_4", -0.493798 AS "sv_5", -0.373206 AS "sv_6", -0.413375 AS "sv_7", -0.845475 AS "sv_8", 0.597294 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", 1.649090 AS "sv_0", -0.426605 AS "sv_1", -0.286098 AS "sv_2", 0.318236 AS "sv_3", -1.230833 AS "sv_4", 1.065016 AS "sv_5", 0.074881 AS "sv_6", 0.473504 AS "sv_7", -0.297745 AS "sv_8", 0.270104 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", 0.228382 AS "sv_0", -1.340482 AS "sv_1", -0.202832 AS "sv_2", 0.643712 AS "sv_3", -0.122583 AS "sv_4", -0.216818 AS "sv_5", -0.231742 AS "sv_6", -0.032541 AS "sv_7", -0.612877 AS "sv_8", 0.558935 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", -1.851499 AS "sv_0", 0.319568 AS "sv_1", -0.327604 AS "sv_2", 0.556266 AS "sv_3", -0.594841 AS "sv_4", 0.164038 AS "sv_5", -0.223591 AS "sv_6", 1.361606 AS "sv_7", -0.399779 AS "sv_8", 0.746363 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", 0.599844 AS "sv_0", -0.393958 AS "sv_1", -0.189259 AS "sv_2", 0.250824 AS "sv_3", -0.471086 AS "sv_4", 0.259905 AS "sv_5", -0.080772 AS "sv_6", 1.999832 AS "sv_7", 0.379521 AS "sv_8", 0.134051 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", 0.297955 AS "sv_0", -0.909009 AS "sv_1", 0.316908 AS "sv_2", -1.682855 AS "sv_3", 0.942874 AS "sv_4", -0.634822 AS "sv_5", 0.076747 AS "sv_6", -0.019870 AS "sv_7", 0.377715 AS "sv_8", 0.494318 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", 0.535039 AS "sv_0", 1.027176 AS "sv_1", -0.403092 AS "sv_2", 1.138185 AS "sv_3", 0.359347 AS "sv_4", -1.212185 AS "sv_5", -0.689522 AS "sv_6", -0.413690 AS "sv_7", 0.946764 AS "sv_8", -1.681379 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", -0.044770 AS "sv_0", -1.276061 AS "sv_1", -0.498138 AS "sv_2", -0.217024 AS "sv_3", 0.431760 AS "sv_4", -1.482048 AS "sv_5", -0.847429 AS "sv_6", -0.890030 AS "sv_7", -0.216479 AS "sv_8", -0.127088 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", -0.352004 AS "sv_0", 0.259679 AS "sv_1", 0.518758 AS "sv_2", 0.255561 AS "sv_3", 0.945797 AS "sv_4", -0.264773 AS "sv_5", 0.352582 AS "sv_6", 0.282937 AS "sv_7", -1.676691 AS "sv_8", 1.011941 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", -0.015843 AS "sv_0", -0.537047 AS "sv_1", -0.203875 AS "sv_2", 0.486838 AS "sv_3", -0.229571 AS "sv_4", -0.080115 AS "sv_5", -0.192543 AS "sv_6", -1.942761 AS "sv_7", -0.411441 AS "sv_8", -0.362828 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 1.388003 AS "sv_0", 0.012587 AS "sv_1", -0.208756 AS "sv_2", 0.180477 AS "sv_3", 0.644855 AS "sv_4", -1.222217 AS "sv_5", -0.531309 AS "sv_6", 0.777441 AS "sv_7", 0.036947 AS "sv_8", -1.787442 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", -3.562217 AS "sv_0", -0.168493 AS "sv_1", 0.712510 AS "sv_2", 1.186173 AS "sv_3", 0.971741 AS "sv_4", 0.060451 AS "sv_5", 0.608566 AS "sv_6", -0.917993 AS "sv_7", -1.345429 AS "sv_8", -0.078130 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", -0.319061 AS "sv_0", 0.037082 AS "sv_1", -0.302351 AS "sv_2", 0.643416 AS "sv_3", -0.071526 AS "sv_4", -0.467291 AS "sv_5", -0.387675 AS "sv_6", 0.300862 AS "sv_7", -0.305625 AS "sv_8", 0.539971 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", 0.444082 AS "sv_0", -0.224036 AS "sv_1", -0.126428 AS "sv_2", 0.204438 AS "sv_3", -0.991489 AS "sv_4", 1.050597 AS "sv_5", 0.203061 AS "sv_6", -0.491621 AS "sv_7", 1.706341 AS "sv_8", -0.190966 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", 0.929317 AS "sv_0", -1.050732 AS "sv_1", 0.787073 AS "sv_2", 1.092563 AS "sv_3", 0.930835 AS "sv_4", 0.251551 AS "sv_5", 0.726403 AS "sv_6", 0.188895 AS "sv_7", -1.920995 AS "sv_8", 0.175927 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", -2.635314 AS "sv_0", -1.513938 AS "sv_1", 0.646283 AS "sv_2", 1.299213 AS "sv_3", 0.991390 AS "sv_4", -0.087665 AS "sv_5", 0.510238 AS "sv_6", -0.301454 AS "sv_7", -1.148789 AS "sv_8", 1.188565 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", -1.055146 AS "sv_0", 0.700148 AS "sv_1", -0.403320 AS "sv_2", 0.553996 AS "sv_3", -1.073642 AS "sv_4", 0.644229 AS "sv_5", -0.145647 AS "sv_6", -0.574288 AS "sv_7", -0.736095 AS "sv_8", -0.132642 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 0.294438 AS "sv_0", 0.806669 AS "sv_1", 0.937496 AS "sv_2", 0.369031 AS "sv_3", 0.928349 AS "sv_4", 0.533365 AS "sv_5", 0.933733 AS "sv_6", -0.202758 AS "sv_7", 1.853189 AS "sv_8", 0.041777 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", 1.565996 AS "sv_0", 0.630905 AS "sv_1", -0.531525 AS "sv_2", 0.038295 AS "sv_3", 0.166839 AS "sv_4", -1.200603 AS "sv_5", -0.792631 AS "sv_6", 0.989485 AS "sv_7", 0.024575 AS "sv_8", -0.418722 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", 1.434788 AS "sv_0", -1.018245 AS "sv_1", -0.172574 AS "sv_2", -2.143022 AS "sv_3", -1.556424 AS "sv_4", 1.697162 AS "sv_5", 0.354285 AS "sv_6", -0.000139 AS "sv_7", 0.304266 AS "sv_8", -0.044092 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", -0.202320 AS "sv_0", 2.001647 AS "sv_1", -0.461152 AS "sv_2", 0.714492 AS "sv_3", -0.194579 AS "sv_4", -0.601951 AS "sv_5", -0.558825 AS "sv_6", -0.032095 AS "sv_7", -0.545657 AS "sv_8", 0.209518 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", 1.109895 AS "sv_0", -1.276931 AS "sv_1", -0.153744 AS "sv_2", 0.481751 AS "sv_3", -0.979647 AS "sv_4", 0.984662 AS "sv_5", 0.161086 AS "sv_6", -0.653210 AS "sv_7", -0.126786 AS "sv_8", -0.808571 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", 0.318899 AS "sv_0", -0.548994 AS "sv_1", 0.096506 AS "sv_2", 0.273220 AS "sv_3", 0.890499 AS "sv_4", -0.975153 AS "sv_5", -0.205763 AS "sv_6", -0.005155 AS "sv_7", -0.698733 AS "sv_8", 0.257747 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", -0.244784 AS "sv_0", 0.337923 AS "sv_1", -0.118221 AS "sv_2", -1.170453 AS "sv_3", -0.523700 AS "sv_4", 0.459647 AS "sv_5", 0.036676 AS "sv_6", 0.141898 AS "sv_7", 1.278994 AS "sv_8", 0.242669 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", 0.685749 AS "sv_0", 0.756183 AS "sv_1", 0.291307 AS "sv_2", -0.468737 AS "sv_3", 0.957678 AS "sv_4", -0.701420 AS "sv_5", 0.035999 AS "sv_6", 0.852386 AS "sv_7", 0.490645 AS "sv_8", -0.917510 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", 0.594182 AS "sv_0", 0.384321 AS "sv_1", 0.501153 AS "sv_2", -0.852460 AS "sv_3", 0.917073 AS "sv_4", -0.260158 AS "sv_5", 0.339335 AS "sv_6", -0.496941 AS "sv_7", -0.691277 AS "sv_8", -1.518534 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", -0.285401 AS "sv_0", -2.587676 AS "sv_1", -0.426798 AS "sv_2", -0.169654 AS "sv_3", -2.564845 AS "sv_4", 2.533015 AS "sv_5", 0.388436 AS "sv_6", 0.880810 AS "sv_7", 0.212284 AS "sv_8", -0.853432 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", -1.425754 AS "sv_0", 0.224487 AS "sv_1", 0.927225 AS "sv_2", -0.409264 AS "sv_3", 1.007691 AS "sv_4", 0.411532 AS "sv_5", 0.889510 AS "sv_6", -0.758630 AS "sv_7", 1.648634 AS "sv_8", 0.152358 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", 0.327778 AS "sv_0", -2.017729 AS "sv_1", 0.101233 AS "sv_2", -2.284432 AS "sv_3", 0.922497 AS "sv_4", -1.007861 AS "sv_5", -0.211429 AS "sv_6", 1.408795 AS "sv_7", -0.661429 AS "sv_8", 1.034971 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", 1.598236 AS "sv_0", -0.877690 AS "sv_1", -0.265913 AS "sv_2", 1.078588 AS "sv_3", -0.062553 AS "sv_4", -0.411432 AS "sv_5", -0.341088 AS "sv_6", -0.987325 AS "sv_7", -0.597841 AS "sv_8", 0.649937 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", 2.380167 AS "sv_0", 0.781282 AS "sv_1", 1.089193 AS "sv_2", -0.912101 AS "sv_3", 0.964827 AS "sv_4", 0.767050 AS "sv_5", 1.128015 AS "sv_6", 1.108338 AS "sv_7", -0.106807 AS "sv_8", 2.097644 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", -1.049347 AS "sv_0", 1.751099 AS "sv_1", -0.220054 AS "sv_2", -1.339242 AS "sv_3", -2.465800 AS "sv_4", 2.787577 AS "sv_5", 0.634483 AS "sv_6", -2.585280 AS "sv_7", -0.655316 AS "sv_8", 0.498539 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", 1.958454 AS "sv_0", -0.577512 AS "sv_1", -0.005751 AS "sv_2", 1.787683 AS "sv_3", 0.310921 AS "sv_4", -0.413536 AS "sv_5", -0.125965 AS "sv_6", 0.207197 AS "sv_7", 0.502651 AS "sv_8", -1.764096 AS "sv_9"
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.086479 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.476370 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 0.293332 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 0.646917 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 1.335697 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 1.647250 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 1.199431 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 0.588444 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 0.724825 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 1.683193 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 0.693949 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 1.275175 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 1.134345 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 54 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 0.680741 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 65 AS "sv_idx", 1.267595 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 1.229553 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", 1.107811 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 70 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 71 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 73 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 74 AS "sv_idx", 1.306051 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 76 AS "sv_idx", 1.543540 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 77 AS "sv_idx", 0.638604 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", 0.817753 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", 1.192611 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 81 AS "sv_idx", 1.230302 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", 1.223124 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 84 AS "sv_idx", 1.150427 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 86 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", 1.115622 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 89 AS "sv_idx", 0.865655 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 91 AS "sv_idx", 1.353083 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", 1.381635 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 94 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 95 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 96 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 97 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 98 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 99 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 100 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 101 AS "sv_idx", 0.476370 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 102 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 103 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 104 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 105 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 106 AS "sv_idx", 0.293332 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 107 AS "sv_idx", 0.646917 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 108 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 109 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 110 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 111 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 112 AS "sv_idx", 1.335697 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 113 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 114 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 115 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 116 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 117 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 118 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 119 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 120 AS "sv_idx", 1.647250 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 121 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 122 AS "sv_idx", 1.199431 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 123 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 124 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 125 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 126 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 127 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 128 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 129 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 130 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 131 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 132 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 133 AS "sv_idx", 0.588444 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 134 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 135 AS "sv_idx", 0.724825 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 136 AS "sv_idx", 1.683193 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 137 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 138 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 139 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 140 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 141 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 142 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 143 AS "sv_idx", 0.693949 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 144 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 145 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 146 AS "sv_idx", 1.275175 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 147 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 148 AS "sv_idx", 1.134345 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 149 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 150 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 151 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 152 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 153 AS "sv_idx", 0.680741 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 154 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 155 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 156 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 157 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 158 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 159 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 160 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 161 AS "sv_idx", 1.267595 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 162 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 163 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 164 AS "sv_idx", 1.229553 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 165 AS "sv_idx", 1.107811 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 166 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 167 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 168 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 169 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 170 AS "sv_idx", 1.306051 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 171 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 172 AS "sv_idx", 1.543540 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 173 AS "sv_idx", 0.638604 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 174 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 175 AS "sv_idx", 0.817753 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 176 AS "sv_idx", 1.192611 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 177 AS "sv_idx", 1.230302 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 178 AS "sv_idx", 1.223124 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 179 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 180 AS "sv_idx", 1.150427 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 181 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 182 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 183 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 184 AS "sv_idx", 1.115622 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 185 AS "sv_idx", 0.865655 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 186 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 187 AS "sv_idx", 1.353083 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 188 AS "sv_idx", 1.381635 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 189 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 190 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 191 AS "sv_idx", 2.000000 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.187419 AS "rho", -1.867596 AS "probA", -0.019577 AS "probB"
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
   CAST(NULL AS FLOAT) AS "LogProba_1"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte