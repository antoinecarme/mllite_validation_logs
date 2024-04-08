WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_original" AS "ADS" 
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
     SELECT 1 AS "sv_idx", 1.887507 AS "sv_0", 1.145229 AS "sv_1", -0.076887 AS "sv_2", 0.263624 AS "sv_3", 0.859369 AS "sv_4", -1.255951 AS "sv_5", -0.431844 AS "sv_6", 0.602390 AS "sv_7", -0.074771 AS "sv_8", -0.806014 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.954561 AS "sv_0", -1.845000 AS "sv_1", 0.508844 AS "sv_2", -0.224022 AS "sv_3", 0.663209 AS "sv_4", 0.083038 AS "sv_5", 0.446295 AS "sv_6", 0.532215 AS "sv_7", -1.374292 AS "sv_8", 2.746056 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.492202 AS "sv_0", -1.657995 AS "sv_1", -0.140611 AS "sv_2", 1.028648 AS "sv_3", -1.387754 AS "sv_4", 1.537800 AS "sv_5", 0.334086 AS "sv_6", 0.001805 AS "sv_7", 0.254472 AS "sv_8", -0.344175 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.922800 AS "sv_0", 0.299898 AS "sv_1", -0.336842 AS "sv_2", 0.147534 AS "sv_3", -0.196676 AS "sv_4", -0.369004 AS "sv_5", -0.387471 AS "sv_6", -0.932592 AS "sv_7", 2.691874 AS "sv_8", 0.259310 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.916087 AS "sv_0", -0.135315 AS "sv_1", -0.464949 AS "sv_2", 0.739451 AS "sv_3", 0.966370 AS "sv_4", -2.113315 AS "sv_5", -1.004914 AS "sv_6", -0.352297 AS "sv_7", 1.676792 AS "sv_8", -0.819829 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.207149 AS "sv_0", 0.118302 AS "sv_1", -0.793585 AS "sv_2", 0.105090 AS "sv_3", -1.374022 AS "sv_4", 0.310660 AS "sv_5", -0.567034 AS "sv_6", -1.571705 AS "sv_7", 0.348569 AS "sv_8", -0.124040 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.441366 AS "sv_0", -0.767481 AS "sv_1", -0.349474 AS "sv_2", -0.915853 AS "sv_3", -1.154481 AS "sv_4", 0.848705 AS "sv_5", -0.041069 AS "sv_6", -0.493502 AS "sv_7", 0.182158 AS "sv_8", -0.209842 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -0.263412 AS "sv_0", 1.788292 AS "sv_1", 0.201192 AS "sv_2", -0.339974 AS "sv_3", 1.169404 AS "sv_4", -1.142667 AS "sv_5", -0.168046 AS "sv_6", -0.413903 AS "sv_7", 1.138708 AS "sv_8", -1.061929 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -0.792551 AS "sv_0", 0.663803 AS "sv_1", 0.639087 AS "sv_2", -0.721890 AS "sv_3", 1.182314 AS "sv_4", -0.348389 AS "sv_5", 0.427859 AS "sv_6", -1.512975 AS "sv_7", -0.453389 AS "sv_8", -0.237052 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.663167 AS "sv_0", 0.417673 AS "sv_1", 0.522532 AS "sv_2", -0.780069 AS "sv_3", -0.363281 AS "sv_4", 1.438493 AS "sv_5", 0.854893 AS "sv_6", 1.580967 AS "sv_7", -0.282811 AS "sv_8", 1.205217 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -0.298261 AS "sv_0", -0.797802 AS "sv_1", -0.548528 AS "sv_2", -2.398402 AS "sv_3", -0.699435 AS "sv_4", -0.109595 AS "sv_5", -0.486986 AS "sv_6", -1.246362 AS "sv_7", -0.123912 AS "sv_8", -0.131386 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.046883 AS "sv_0", -1.071828 AS "sv_1", 0.729746 AS "sv_2", 0.152708 AS "sv_3", 0.931978 AS "sv_4", 0.143897 AS "sv_5", 0.647314 AS "sv_6", -0.581599 AS "sv_7", -1.080055 AS "sv_8", -0.613064 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -0.232754 AS "sv_0", -0.439976 AS "sv_1", 0.152074 AS "sv_2", 1.028692 AS "sv_3", 1.104028 AS "sv_4", -1.148925 AS "sv_5", -0.210611 AS "sv_6", 1.410740 AS "sv_7", 0.731564 AS "sv_8", 0.634332 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.917933 AS "sv_0", 0.897552 AS "sv_1", 0.753642 AS "sv_2", 0.024561 AS "sv_3", 0.427364 AS "sv_4", 0.842022 AS "sv_5", 0.871731 AS "sv_6", 0.375547 AS "sv_7", -0.585348 AS "sv_8", -0.876211 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -0.872249 AS "sv_0", -0.042832 AS "sv_1", 0.432945 AS "sv_2", 0.263559 AS "sv_3", 1.198235 AS "sv_4", -0.750806 AS "sv_5", 0.138978 AS "sv_6", 0.199300 AS "sv_7", -0.406296 AS "sv_8", -0.690144 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.513727 AS "sv_0", -2.027736 AS "sv_1", -0.509953 AS "sv_2", -0.956213 AS "sv_3", -0.977480 AS "sv_4", 0.322133 AS "sv_5", -0.328470 AS "sv_6", 0.473843 AS "sv_7", 0.158220 AS "sv_8", 0.699988 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.418165 AS "sv_0", 0.272247 AS "sv_1", 0.305231 AS "sv_2", -0.657098 AS "sv_3", 1.267405 AS "sv_4", -1.076969 AS "sv_5", -0.062517 AS "sv_6", 0.817024 AS "sv_7", -0.763466 AS "sv_8", 0.504608 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -0.129511 AS "sv_0", 0.996860 AS "sv_1", 0.073817 AS "sv_2", 0.359897 AS "sv_3", 0.888151 AS "sv_4", -1.014134 AS "sv_5", -0.236002 AS "sv_6", 2.004759 AS "sv_7", 0.599293 AS "sv_8", -1.045101 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 0.777269 AS "sv_0", 0.596671 AS "sv_1", -0.307377 AS "sv_2", 0.321773 AS "sv_3", -0.131082 AS "sv_4", -0.399427 AS "sv_5", -0.371953 AS "sv_6", -1.030974 AS "sv_7", -0.745758 AS "sv_8", -0.877383 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 0.065406 AS "sv_0", 1.087081 AS "sv_1", 0.425681 AS "sv_2", 0.780480 AS "sv_3", 0.865734 AS "sv_4", -0.333413 AS "sv_5", 0.255281 AS "sv_6", 0.534058 AS "sv_7", -0.089211 AS "sv_8", 1.315380 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -0.801233 AS "sv_0", 0.181047 AS "sv_1", 0.272896 AS "sv_2", -0.341897 AS "sv_3", 0.740004 AS "sv_4", -0.453461 AS "sv_5", 0.093402 AS "sv_6", 0.734150 AS "sv_7", -0.234633 AS "sv_8", -0.508986 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 0.924666 AS "sv_0", -0.071923 AS "sv_1", 0.252196 AS "sv_2", -0.968763 AS "sv_3", 0.645661 AS "sv_4", -0.369550 AS "sv_5", 0.100829 AS "sv_6", -0.267227 AS "sv_7", 1.091627 AS "sv_8", -1.310072 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 0.025352 AS "sv_0", 1.091216 AS "sv_1", -0.438659 AS "sv_2", 0.425302 AS "sv_3", -1.342398 AS "sv_4", 0.927026 AS "sv_5", -0.092072 AS "sv_6", 0.291900 AS "sv_7", 0.249386 AS "sv_8", -0.135896 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 0.006717 AS "sv_0", -0.639601 AS "sv_1", 0.540563 AS "sv_2", 0.217098 AS "sv_3", 0.858081 AS "sv_4", -0.110728 AS "sv_5", 0.415810 AS "sv_6", -0.427989 AS "sv_7", 0.214690 AS "sv_8", 1.278768 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.430708 AS "sv_0", 1.260270 AS "sv_1", 0.704607 AS "sv_2", 0.346571 AS "sv_3", 0.867090 AS "sv_4", 0.181418 AS "sv_5", 0.637464 AS "sv_6", 0.584152 AS "sv_7", 1.906117 AS "sv_8", -0.746882 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -0.370192 AS "sv_0", 0.094830 AS "sv_1", 1.003462 AS "sv_2", 0.941049 AS "sv_3", 0.965366 AS "sv_4", 0.607572 AS "sv_5", 1.010183 AS "sv_6", 0.432550 AS "sv_7", 0.064271 AS "sv_8", -0.902377 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.989920 AS "sv_0", -0.320205 AS "sv_1", 0.478699 AS "sv_2", -0.175386 AS "sv_3", 0.775139 AS "sv_4", -0.117829 AS "sv_5", 0.362428 AS "sv_6", 2.636853 AS "sv_7", -0.021523 AS "sv_8", 0.639712 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.754217 AS "sv_0", -2.030180 AS "sv_1", -0.330574 AS "sv_2", -2.223174 AS "sv_3", -1.157509 AS "sv_4", 0.887632 AS "sv_5", -0.013987 AS "sv_6", 0.774286 AS "sv_7", -0.099143 AS "sv_8", -0.546108 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 0.549095 AS "sv_0", -0.393391 AS "sv_1", -0.183711 AS "sv_2", 0.489826 AS "sv_3", -0.292501 AS "sv_4", 0.038773 AS "sv_5", -0.140979 AS "sv_6", -0.481661 AS "sv_7", 0.267929 AS "sv_8", -0.098876 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.185284 AS "sv_0", 0.847291 AS "sv_1", 0.801263 AS "sv_2", -0.657179 AS "sv_3", 1.116000 AS "sv_4", 0.037899 AS "sv_5", 0.675555 AS "sv_6", -1.093365 AS "sv_7", -0.955622 AS "sv_8", 1.750336 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.999844 AS "sv_0", -0.641099 AS "sv_1", -0.060026 AS "sv_2", -0.351197 AS "sv_3", -0.655991 AS "sv_4", 0.738847 AS "sv_5", 0.166760 AS "sv_6", -0.118726 AS "sv_7", -0.452301 AS "sv_8", -0.064584 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 0.696195 AS "sv_0", 0.889583 AS "sv_1", -1.039325 AS "sv_2", 0.376560 AS "sv_3", -1.328393 AS "sv_4", -0.203590 AS "sv_5", -0.921527 AS "sv_6", -0.923408 AS "sv_7", -0.683533 AS "sv_8", 0.511309 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -0.096546 AS "sv_0", 0.326551 AS "sv_1", -0.564688 AS "sv_2", -0.374583 AS "sv_3", 0.095026 AS "sv_4", -1.168969 AS "sv_5", -0.810860 AS "sv_6", 0.676106 AS "sv_7", -1.264217 AS "sv_8", -0.214869 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -0.149553 AS "sv_0", -1.437827 AS "sv_1", -0.205293 AS "sv_2", -0.807086 AS "sv_3", -1.996938 AS "sv_4", 2.207373 AS "sv_5", 0.476682 AS "sv_6", -0.274419 AS "sv_7", 0.172991 AS "sv_8", -0.840230 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -2.595363 AS "sv_0", 0.655005 AS "sv_1", -0.911589 AS "sv_2", -0.012802 AS "sv_3", -1.134592 AS "sv_4", -0.218139 AS "sv_5", -0.819866 AS "sv_6", 0.507745 AS "sv_7", 0.430543 AS "sv_8", 0.442804 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -0.474686 AS "sv_0", 0.779076 AS "sv_1", 0.473579 AS "sv_2", -0.313781 AS "sv_3", 0.920777 AS "sv_4", -0.316027 AS "sv_5", 0.300096 AS "sv_6", 0.184956 AS "sv_7", 0.149225 AS "sv_8", 0.521500 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.321263 AS "sv_0", 0.187468 AS "sv_1", 0.094504 AS "sv_2", -0.340801 AS "sv_3", 0.277763 AS "sv_4", -0.184891 AS "sv_5", 0.024181 AS "sv_6", 0.101122 AS "sv_7", 0.549036 AS "sv_8", -1.374796 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 0.402525 AS "sv_0", -0.365506 AS "sv_1", 0.671943 AS "sv_2", -1.440930 AS "sv_3", 0.759143 AS "sv_4", 0.260798 AS "sv_5", 0.633641 AS "sv_6", -0.203361 AS "sv_7", 0.963563 AS "sv_8", 0.212135 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 0.583465 AS "sv_0", -0.723047 AS "sv_1", -0.597374 AS "sv_2", -0.594423 AS "sv_3", -0.197449 AS "sv_4", -0.850523 AS "sv_5", -0.744638 AS "sv_6", -0.253467 AS "sv_7", 0.417121 AS "sv_8", -1.184265 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -1.205651 AS "sv_0", 0.239518 AS "sv_1", -0.839706 AS "sv_2", 0.309351 AS "sv_3", -0.997451 AS "sv_4", -0.262712 AS "sv_5", -0.773320 AS "sv_6", 1.764901 AS "sv_7", 0.361801 AS "sv_8", 0.627333 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -0.576050 AS "sv_0", 1.597277 AS "sv_1", -0.319492 AS "sv_2", -1.021967 AS "sv_3", -0.890785 AS "sv_4", 0.562541 AS "sv_5", -0.100073 AS "sv_6", -0.177537 AS "sv_7", -0.286416 AS "sv_8", 1.123596 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 1.684683 AS "sv_0", 1.206950 AS "sv_1", 0.344897 AS "sv_2", 1.058610 AS "sv_3", 0.073804 AS "sv_4", 0.543136 AS "sv_5", 0.445184 AS "sv_6", -0.703913 AS "sv_7", -0.717647 AS "sv_8", 0.491219 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.035159 AS "sv_0", 0.787988 AS "sv_1", -0.182468 AS "sv_2", 0.279660 AS "sv_3", -0.476007 AS "sv_4", 0.278857 AS "sv_5", -0.069587 AS "sv_6", -0.199727 AS "sv_7", 0.318900 AS "sv_8", 0.347799 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 0.106440 AS "sv_0", 0.753236 AS "sv_1", 1.021214 AS "sv_2", -0.570944 AS "sv_3", 0.845808 AS "sv_4", 0.795371 AS "sv_5", 1.079944 AS "sv_6", -0.673985 AS "sv_7", -1.497403 AS "sv_8", 1.174173 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 0.523724 AS "sv_0", 0.186995 AS "sv_1", -0.215507 AS "sv_2", 0.198430 AS "sv_3", -0.511244 AS "sv_4", 0.263326 AS "sv_5", -0.101536 AS "sv_6", -0.361531 AS "sv_7", 0.101739 AS "sv_8", 0.170838 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 0.244549 AS "sv_0", -0.114573 AS "sv_1", 1.073664 AS "sv_2", 0.389901 AS "sv_3", 1.187633 AS "sv_4", 0.449582 AS "sv_5", 1.022096 AS "sv_6", -0.185604 AS "sv_7", 0.102623 AS "sv_8", -1.556498 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -0.023906 AS "sv_0", -0.281021 AS "sv_1", 0.698093 AS "sv_2", -0.026552 AS "sv_3", 1.179121 AS "sv_4", -0.234968 AS "sv_5", 0.510031 AS "sv_6", -0.066693 AS "sv_7", -1.655300 AS "sv_8", 0.138775 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -0.416481 AS "sv_0", -0.924115 AS "sv_1", -0.560340 AS "sv_2", -0.060966 AS "sv_3", -0.059833 AS "sv_4", -0.960252 AS "sv_5", -0.746085 AS "sv_6", 2.200537 AS "sv_7", -0.260989 AS "sv_8", 0.601376 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -0.478533 AS "sv_0", -0.351617 AS "sv_1", -0.202444 AS "sv_2", -0.761664 AS "sv_3", 0.795004 AS "sv_4", -1.405086 AS "sv_5", -0.579669 AS "sv_6", 1.412653 AS "sv_7", 1.425146 AS "sv_8", 2.352939 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -0.433196 AS "sv_0", 0.166770 AS "sv_1", 0.003328 AS "sv_2", 0.009323 AS "sv_3", 0.713744 AS "sv_4", -0.918690 AS "sv_5", -0.266484 AS "sv_6", -0.076302 AS "sv_7", -0.134608 AS "sv_8", 0.771021 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -0.861350 AS "sv_0", 0.262988 AS "sv_1", 0.874268 AS "sv_2", 1.165662 AS "sv_3", 1.285098 AS "sv_4", -0.046004 AS "sv_5", 0.711504 AS "sv_6", -0.033489 AS "sv_7", 0.298955 AS "sv_8", 2.835485 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -0.667609 AS "sv_0", -0.978292 AS "sv_1", 0.626677 AS "sv_2", -1.318227 AS "sv_3", 1.410831 AS "sv_4", -0.667479 AS "sv_5", 0.324052 AS "sv_6", -0.185257 AS "sv_7", -0.579306 AS "sv_8", 0.287143 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 0.775386 AS "sv_0", -0.666285 AS "sv_1", -0.563112 AS "sv_2", -0.478699 AS "sv_3", -0.911327 AS "sv_4", 0.137959 AS "sv_5", -0.426528 AS "sv_6", 0.229164 AS "sv_7", 1.208903 AS "sv_8", 0.637983 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 0.605484 AS "sv_0", -0.776307 AS "sv_1", -0.522663 AS "sv_2", 0.659222 AS "sv_3", -0.568767 AS "sv_4", -0.231007 AS "sv_5", -0.501120 AS "sv_6", 1.574529 AS "sv_7", -1.137054 AS "sv_8", 0.812275 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -0.032368 AS "sv_0", -0.729920 AS "sv_1", -0.389224 AS "sv_2", -0.195272 AS "sv_3", -0.478890 AS "sv_4", -0.100331 AS "sv_5", -0.352168 AS "sv_6", 0.547406 AS "sv_7", -1.544599 AS "sv_8", -0.330377 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 0.155593 AS "sv_0", -0.720197 AS "sv_1", 0.038579 AS "sv_2", -1.073722 AS "sv_3", 0.310301 AS "sv_4", -0.330631 AS "sv_5", -0.064907 AS "sv_6", -0.534270 AS "sv_7", 0.345506 AS "sv_8", -1.305311 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 0.809812 AS "sv_0", 0.481643 AS "sv_1", -0.114235 AS "sv_2", -1.122532 AS "sv_3", 0.396463 AS "sv_4", -0.725299 AS "sv_5", -0.307295 AS "sv_6", -1.215622 AS "sv_7", 0.869221 AS "sv_8", 0.608831 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -0.135087 AS "sv_0", 1.326329 AS "sv_1", 0.340759 AS "sv_2", -2.533357 AS "sv_3", 1.107253 AS "sv_4", -0.803648 AS "sv_5", 0.047047 AS "sv_6", 1.263514 AS "sv_7", -2.571504 AS "sv_8", 0.800477 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -0.485120 AS "sv_0", -0.776204 AS "sv_1", 0.450919 AS "sv_2", -0.118800 AS "sv_3", 1.145779 AS "sv_4", -0.649547 AS "sv_5", 0.183560 AS "sv_6", -0.462834 AS "sv_7", -0.325784 AS "sv_8", -0.565585 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -0.409265 AS "sv_0", 0.122513 AS "sv_1", -0.547327 AS "sv_2", 0.254159 AS "sv_3", -0.013538 AS "sv_4", -0.996141 AS "sv_5", -0.745813 AS "sv_6", -0.336252 AS "sv_7", -0.972778 AS "sv_8", 0.437569 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.910635 AS "sv_0", -0.621512 AS "sv_1", 0.669773 AS "sv_2", 0.882259 AS "sv_3", 0.650683 AS "sv_4", 0.397319 AS "sv_5", 0.671853 AS "sv_6", 1.257275 AS "sv_7", 1.482458 AS "sv_8", -0.350793 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -0.790728 AS "sv_0", -0.335254 AS "sv_1", 0.339385 AS "sv_2", -0.073637 AS "sv_3", 0.681058 AS "sv_4", -0.253937 AS "sv_5", 0.207013 AS "sv_6", 0.655370 AS "sv_7", 1.207927 AS "sv_8", -0.665313 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", -0.042625 AS "sv_0", 1.979468 AS "sv_1", -0.103021 AS "sv_2", 1.010011 AS "sv_3", 1.092642 AS "sv_4", -1.606622 AS "sv_5", -0.556287 AS "sv_6", 0.397762 AS "sv_7", -1.612685 AS "sv_8", -0.174393 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -1.496666 AS "sv_0", 0.317595 AS "sv_1", 0.538174 AS "sv_2", -1.210989 AS "sv_3", 0.911635 AS "sv_4", -0.184546 AS "sv_5", 0.392196 AS "sv_6", 1.209745 AS "sv_7", -0.609755 AS "sv_8", 0.732148 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 0.100322 AS "sv_0", -0.028667 AS "sv_1", -0.642895 AS "sv_2", 0.550880 AS "sv_3", -0.426502 AS "sv_4", -0.638029 AS "sv_5", -0.720110 AS "sv_6", 0.915915 AS "sv_7", 0.654493 AS "sv_8", 0.068117 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", 1.470959 AS "sv_0", 0.921160 AS "sv_1", -0.206764 AS "sv_2", 0.997010 AS "sv_3", -0.201907 AS "sv_4", -0.121314 AS "sv_5", -0.207013 AS "sv_6", 0.195723 AS "sv_7", 0.077000 AS "sv_8", 0.419345 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 0.462780 AS "sv_0", -0.582493 AS "sv_1", -0.478403 AS "sv_2", 1.335702 AS "sv_3", -0.532153 AS "sv_4", -0.196479 AS "sv_5", -0.454298 AS "sv_6", 0.786311 AS "sv_7", 0.972605 AS "sv_8", -1.593674 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", -0.324698 AS "sv_0", -1.962569 AS "sv_1", 0.138587 AS "sv_2", 1.506621 AS "sv_3", -0.282974 AS "sv_4", 0.623342 AS "sv_5", 0.297608 AS "sv_6", 0.670875 AS "sv_7", 1.102138 AS "sv_8", 0.792833 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", -0.590324 AS "sv_0", -1.282602 AS "sv_1", 0.150095 AS "sv_2", 0.214696 AS "sv_3", 0.528383 AS "sv_4", -0.406683 AS "sv_5", 0.005278 AS "sv_6", 0.135541 AS "sv_7", 0.032433 AS "sv_8", 0.260716 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -1.361624 AS "sv_0", -0.562634 AS "sv_1", -0.047884 AS "sv_2", -0.700210 AS "sv_3", 0.116927 AS "sv_4", -0.240195 AS "sv_5", -0.110102 AS "sv_6", -0.518304 AS "sv_7", 0.850333 AS "sv_8", -0.844349 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", 0.556343 AS "sv_0", -0.175369 AS "sv_1", -0.136218 AS "sv_2", 0.189105 AS "sv_3", -0.829575 AS "sv_4", 0.822661 AS "sv_5", 0.128141 AS "sv_6", -0.351191 AS "sv_7", -1.337310 AS "sv_8", -0.330152 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", -0.230559 AS "sv_0", 0.500465 AS "sv_1", 0.505986 AS "sv_2", -0.766198 AS "sv_3", 0.304719 AS "sv_4", 0.542269 AS "sv_5", 0.578513 AS "sv_6", 1.124081 AS "sv_7", 0.016601 AS "sv_8", -0.199530 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", 0.838700 AS "sv_0", -0.005943 AS "sv_1", -0.513446 AS "sv_2", 2.645419 AS "sv_3", -0.916069 AS "sv_4", 0.236090 AS "sv_5", -0.356583 AS "sv_6", 0.251994 AS "sv_7", 0.070005 AS "sv_8", 1.115424 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", -0.230625 AS "sv_0", -1.228584 AS "sv_1", -0.655179 AS "sv_2", 0.094918 AS "sv_3", -1.000198 AS "sv_4", 0.082604 AS "sv_5", -0.519098 AS "sv_6", 0.125182 AS "sv_7", -0.089447 AS "sv_8", 1.586852 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", -0.876836 AS "sv_0", 0.416712 AS "sv_1", 0.510920 AS "sv_2", -1.668709 AS "sv_3", 0.777994 AS "sv_4", -0.061852 AS "sv_5", 0.405554 AS "sv_6", 1.103516 AS "sv_7", -0.673028 AS "sv_8", -1.187786 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", 0.847987 AS "sv_0", -0.078793 AS "sv_1", 0.237402 AS "sv_2", -0.847843 AS "sv_3", -0.342624 AS "sv_4", 0.883648 AS "sv_5", 0.455839 AS "sv_6", -1.143960 AS "sv_7", -0.837326 AS "sv_8", 2.597545 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", -0.692692 AS "sv_0", 0.788001 AS "sv_1", 0.365070 AS "sv_2", 0.780144 AS "sv_3", 0.746049 AS "sv_4", -0.290581 AS "sv_5", 0.217573 AS "sv_6", 0.589104 AS "sv_7", 0.044416 AS "sv_8", 1.488428 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", -1.537976 AS "sv_0", -0.863574 AS "sv_1", -0.339109 AS "sv_2", 0.416003 AS "sv_3", -0.718780 AS "sv_4", 0.303330 AS "sv_5", -0.192308 AS "sv_6", -1.807600 AS "sv_7", -0.932955 AS "sv_8", -0.606641 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", -0.277204 AS "sv_0", 1.808595 AS "sv_1", 1.110789 AS "sv_2", 0.454171 AS "sv_3", 1.055422 AS "sv_4", 0.689656 AS "sv_5", 1.123241 AS "sv_6", -0.978430 AS "sv_7", 0.434694 AS "sv_8", 1.196422 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", -1.133724 AS "sv_0", 2.038069 AS "sv_1", -0.184333 AS "sv_2", 1.721876 AS "sv_3", 0.169193 AS "sv_4", -0.560631 AS "sv_5", -0.317164 AS "sv_6", 0.290300 AS "sv_7", 0.047543 AS "sv_8", -0.644777 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 0.983214 AS "sv_0", -0.343181 AS "sv_1", -0.498688 AS "sv_2", 0.163199 AS "sv_3", -0.733125 AS "sv_4", 0.026367 AS "sv_5", -0.405810 AS "sv_6", -0.797164 AS "sv_7", 0.430213 AS "sv_8", 0.588898 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", -0.206900 AS "sv_0", -1.686193 AS "sv_1", 0.721472 AS "sv_2", 0.268158 AS "sv_3", 1.074458 AS "sv_4", -0.056050 AS "sv_5", 0.581854 AS "sv_6", -1.390872 AS "sv_7", 0.472834 AS "sv_8", -0.340860 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", -1.476252 AS "sv_0", 0.920725 AS "sv_1", 1.440922 AS "sv_2", 0.957418 AS "sv_3", 1.203196 AS "sv_4", 1.109599 AS "sv_5", 1.520078 AS "sv_6", 0.834461 AS "sv_7", -0.487362 AS "sv_8", -0.535268 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", -1.676542 AS "sv_0", -0.794653 AS "sv_1", 0.342643 AS "sv_2", 0.643056 AS "sv_3", 1.170629 AS "sv_4", -0.882280 AS "sv_5", 0.025564 AS "sv_6", -0.632111 AS "sv_7", 0.125495 AS "sv_8", 0.748684 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", -1.453710 AS "sv_0", -1.013017 AS "sv_1", -0.008437 AS "sv_2", -0.228893 AS "sv_3", 0.152989 AS "sv_4", -0.213866 AS "sv_5", -0.069675 AS "sv_6", 0.209862 AS "sv_7", 0.217107 AS "sv_8", 0.455650 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", 0.161542 AS "sv_0", -1.185566 AS "sv_1", 0.164202 AS "sv_2", 0.616755 AS "sv_3", 0.620868 AS "sv_4", -0.500396 AS "sv_5", -0.010488 AS "sv_6", 0.652188 AS "sv_7", -1.768897 AS "sv_8", -0.144545 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", -0.259218 AS "sv_0", 0.134447 AS "sv_1", -0.682018 AS "sv_2", -1.521565 AS "sv_3", -1.662491 AS "sv_4", 0.891079 AS "sv_5", -0.304413 AS "sv_6", 1.044012 AS "sv_7", -0.535484 AS "sv_8", 0.747064 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -0.625684 AS "sv_0", 0.307806 AS "sv_1", -0.141908 AS "sv_2", 0.260656 AS "sv_3", -0.538167 AS "sv_4", 0.434523 AS "sv_5", 0.009669 AS "sv_6", 0.492924 AS "sv_7", -0.455051 AS "sv_8", 0.491106 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", -0.002923 AS "sv_0", 1.421005 AS "sv_1", 0.713654 AS "sv_2", 0.288563 AS "sv_3", 1.083139 AS "sv_4", -0.081777 AS "sv_5", 0.567831 AS "sv_6", 1.203882 AS "sv_7", -0.592503 AS "sv_8", 0.055927 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", 0.101517 AS "sv_0", 0.091624 AS "sv_1", 0.210851 AS "sv_2", -0.157448 AS "sv_3", 0.320650 AS "sv_4", -0.024982 AS "sv_5", 0.167527 AS "sv_6", -1.899376 AS "sv_7", -1.764588 AS "sv_8", 0.403919 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", -0.564038 AS "sv_0", -0.505035 AS "sv_1", -0.358636 AS "sv_2", 0.520371 AS "sv_3", -0.861856 AS "sv_4", 0.452558 AS "sv_5", -0.164766 AS "sv_6", 1.338524 AS "sv_7", -0.341454 AS "sv_8", -0.849941 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", 0.530557 AS "sv_0", -0.717383 AS "sv_1", 0.896982 AS "sv_2", -0.041213 AS "sv_3", 1.053575 AS "sv_4", 0.296066 AS "sv_5", 0.830591 AS "sv_6", 0.164769 AS "sv_7", -0.793476 AS "sv_8", -0.176994 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", -0.213974 AS "sv_0", 0.861809 AS "sv_1", -0.689691 AS "sv_2", -0.117473 AS "sv_3", -1.251073 AS "sv_4", 0.343764 AS "sv_5", -0.471178 AS "sv_6", 0.643569 AS "sv_7", 1.946174 AS "sv_8", 0.552405 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", -2.024612 AS "sv_0", 0.775559 AS "sv_1", 1.027187 AS "sv_2", -1.392295 AS "sv_3", 0.837006 AS "sv_4", 0.817838 AS "sv_5", 1.091481 AS "sv_6", 0.474760 AS "sv_7", 0.609822 AS "sv_8", 0.478127 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", 1.338623 AS "sv_0", -0.291699 AS "sv_1", 0.259910 AS "sv_2", 0.254415 AS "sv_3", 0.703438 AS "sv_4", -0.430130 AS "sv_5", 0.089471 AS "sv_6", -0.614580 AS "sv_7", -1.009282 AS "sv_8", 0.644973 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", -0.403102 AS "sv_0", 1.143044 AS "sv_1", 0.497032 AS "sv_2", 0.143448 AS "sv_3", 0.465443 AS "sv_4", 0.317423 AS "sv_5", 0.505192 AS "sv_6", -0.166836 AS "sv_7", -1.309231 AS "sv_8", 2.207520 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", -0.455936 AS "sv_0", 0.296664 AS "sv_1", -0.161701 AS "sv_2", 1.279009 AS "sv_3", -0.384633 AS "sv_4", 0.198918 AS "sv_5", -0.075793 AS "sv_6", 0.228449 AS "sv_7", -0.197016 AS "sv_8", -1.982372 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", 0.608683 AS "sv_0", -0.216157 AS "sv_1", 0.245563 AS "sv_2", -1.003636 AS "sv_3", 0.580786 AS "sv_4", -0.297772 AS "sv_5", 0.116365 AS "sv_6", -0.573585 AS "sv_7", 0.236988 AS "sv_8", 0.252612 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", -0.489429 AS "sv_0", -0.748289 AS "sv_1", 0.404543 AS "sv_2", 1.610682 AS "sv_3", 0.528732 AS "sv_4", 0.064119 AS "sv_5", 0.354259 AS "sv_6", 0.789954 AS "sv_7", -0.140492 AS "sv_8", 2.688408 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 1.447384 AS "sv_0", -1.167306 AS "sv_1", 0.278239 AS "sv_2", -0.551809 AS "sv_3", 0.625123 AS "sv_4", -0.294705 AS "sv_5", 0.144359 AS "sv_6", 0.290533 AS "sv_7", -1.528124 AS "sv_8", 0.519603 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 0.005241 AS "sv_0", 0.182452 AS "sv_1", 0.613692 AS "sv_2", -0.574061 AS "sv_3", 0.830828 AS "sv_4", 0.060027 AS "sv_5", 0.526497 AS "sv_6", -1.105551 AS "sv_7", 0.389112 AS "sv_8", 0.898361 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", -1.181583 AS "sv_0", 0.752636 AS "sv_1", -0.101776 AS "sv_2", -0.191240 AS "sv_3", -0.314307 AS "sv_4", 0.218777 AS "sv_5", -0.020280 AS "sv_6", -1.511839 AS "sv_7", -0.749134 AS "sv_8", 0.747705 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", -0.467577 AS "sv_0", 0.592544 AS "sv_1", -0.692527 AS "sv_2", 1.133998 AS "sv_3", -0.456837 AS "sv_4", -0.690642 AS "sv_5", -0.776686 AS "sv_6", -1.452814 AS "sv_7", 0.034810 AS "sv_8", -1.449333 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", 0.797357 AS "sv_0", 0.149108 AS "sv_1", 0.599130 AS "sv_2", 1.115652 AS "sv_3", 1.223834 AS "sv_4", -0.476192 AS "sv_5", 0.357269 AS "sv_6", -0.831446 AS "sv_7", -0.005785 AS "sv_8", 1.076963 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", 1.251911 AS "sv_0", -0.068511 AS "sv_1", 0.374781 AS "sv_2", -0.561331 AS "sv_3", 0.683739 AS "sv_4", -0.191856 AS "sv_5", 0.254560 AS "sv_6", 0.951295 AS "sv_7", 0.167377 AS "sv_8", 0.000178 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", 0.911399 AS "sv_0", 2.631478 AS "sv_1", 0.391001 AS "sv_2", -0.539130 AS "sv_3", 1.153888 AS "sv_4", -0.771025 AS "sv_5", 0.098271 AS "sv_6", -1.016608 AS "sv_7", -0.597205 AS "sv_8", -0.584228 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", -0.001365 AS "sv_0", -0.028940 AS "sv_1", 0.796114 AS "sv_2", 0.350515 AS "sv_3", 0.914492 AS "sv_4", 0.289473 AS "sv_5", 0.745014 AS "sv_6", -0.502535 AS "sv_7", 0.866424 AS "sv_8", -1.322862 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", -1.281183 AS "sv_0", 0.591467 AS "sv_1", 0.318102 AS "sv_2", 1.361781 AS "sv_3", 1.073040 AS "sv_4", -0.801277 AS "sv_5", 0.028954 AS "sv_6", -0.316287 AS "sv_7", -1.146625 AS "sv_8", -0.260839 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 0.839165 AS "sv_0", 0.780897 AS "sv_1", -0.574640 AS "sv_2", 0.101460 AS "sv_3", -0.805117 AS "sv_4", -0.021016 AS "sv_5", -0.482680 AS "sv_6", 0.554041 AS "sv_7", -0.460705 AS "sv_8", 0.641270 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", 0.447799 AS "sv_0", -0.132510 AS "sv_1", 1.000728 AS "sv_2", 0.781879 AS "sv_3", 1.147878 AS "sv_4", 0.366015 AS "sv_5", 0.937123 AS "sv_6", 0.370077 AS "sv_7", 1.492775 AS "sv_8", -0.115466 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", 0.657879 AS "sv_0", -1.066633 AS "sv_1", 0.658458 AS "sv_2", -1.346715 AS "sv_3", 1.067836 AS "sv_4", -0.164174 AS "sv_5", 0.497911 AS "sv_6", 0.889450 AS "sv_7", 1.028255 AS "sv_8", -0.838759 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", -1.504545 AS "sv_0", -0.848241 AS "sv_1", 0.423931 AS "sv_2", 0.984886 AS "sv_3", 0.476142 AS "sv_4", 0.168172 AS "sv_5", 0.400831 AS "sv_6", -0.779050 AS "sv_7", 1.171101 AS "sv_8", 0.425502 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", -1.447743 AS "sv_0", 0.357026 AS "sv_1", -0.023981 AS "sv_2", -0.430592 AS "sv_3", -0.283462 AS "sv_4", 0.322890 AS "sv_5", 0.074744 AS "sv_6", -0.278336 AS "sv_7", -0.575513 AS "sv_8", 0.759943 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 1.564291 AS "sv_0", 1.715636 AS "sv_1", 0.600080 AS "sv_2", 1.232131 AS "sv_3", 0.552768 AS "sv_4", 0.395121 AS "sv_5", 0.613416 AS "sv_6", -0.894588 AS "sv_7", 0.151451 AS "sv_8", 0.468153 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", 0.603049 AS "sv_0", -0.578280 AS "sv_1", -0.111401 AS "sv_2", 2.167817 AS "sv_3", 0.700158 AS "sv_4", -1.113570 AS "sv_5", -0.418736 AS "sv_6", 0.510935 AS "sv_7", -0.573617 AS "sv_8", 0.092111 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", 0.204093 AS "sv_0", 2.260404 AS "sv_1", 1.668873 AS "sv_2", 0.741921 AS "sv_3", 0.974773 AS "sv_4", 1.827764 AS "sv_5", 1.919580 AS "sv_6", 0.449974 AS "sv_7", 0.329801 AS "sv_8", 0.125232 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.241061 AS "sv_0", 0.212693 AS "sv_1", 0.917744 AS "sv_2", 1.314423 AS "sv_3", 0.776503 AS "sv_4", 0.693543 AS "sv_5", 0.964298 AS "sv_6", -0.002637 AS "sv_7", -1.452695 AS "sv_8", 0.253975 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 1.704777 AS "sv_0", -0.936844 AS "sv_1", -0.097529 AS "sv_2", -1.383483 AS "sv_3", 0.653051 AS "sv_4", -1.026838 AS "sv_5", -0.381814 AS "sv_6", 0.643208 AS "sv_7", 0.208687 AS "sv_8", 0.266302 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", 0.356339 AS "sv_0", 0.829498 AS "sv_1", -0.616919 AS "sv_2", 0.386114 AS "sv_3", -0.531411 AS "sv_4", -0.453980 AS "sv_5", -0.644629 AS "sv_6", 0.383398 AS "sv_7", -2.048372 AS "sv_8", -0.094775 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.657168 AS "sv_0", -1.779926 AS "sv_1", 0.239223 AS "sv_2", -0.946601 AS "sv_3", 0.696763 AS "sv_4", -0.459795 AS "sv_5", 0.063622 AS "sv_6", -0.624851 AS "sv_7", -0.265594 AS "sv_8", 2.073428 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", 0.532830 AS "sv_0", -1.196911 AS "sv_1", -1.250499 AS "sv_2", 0.086572 AS "sv_3", -0.057801 AS "sv_4", -2.241102 AS "sv_5", -1.693782 AS "sv_6", 0.452799 AS "sv_7", -1.058021 AS "sv_8", -0.300677 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", -0.414329 AS "sv_0", -1.106356 AS "sv_1", 0.619191 AS "sv_2", 1.249816 AS "sv_3", 1.052767 AS "sv_4", -0.217373 AS "sv_5", 0.449758 AS "sv_6", 1.371318 AS "sv_7", 0.032150 AS "sv_8", 0.206959 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", -2.518829 AS "sv_0", 0.006727 AS "sv_1", 0.275347 AS "sv_2", 1.353807 AS "sv_3", 1.141542 AS "sv_4", -0.969225 AS "sv_5", -0.055722 AS "sv_6", -0.493488 AS "sv_7", -0.960127 AS "sv_8", 1.074232 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", -0.070453 AS "sv_0", 1.497879 AS "sv_1", 0.077921 AS "sv_2", -0.003341 AS "sv_3", 0.323701 AS "sv_4", -0.275130 AS "sv_5", -0.016017 AS "sv_6", -0.568767 AS "sv_7", 0.575519 AS "sv_8", 1.139628 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", -0.303311 AS "sv_0", -0.003377 AS "sv_1", -1.086866 AS "sv_2", 0.853755 AS "sv_3", -1.862979 AS "sv_4", 0.401066 AS "sv_5", -0.783742 AS "sv_6", -0.103135 AS "sv_7", -1.971602 AS "sv_8", 2.226125 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", -0.058483 AS "sv_0", -1.779904 AS "sv_1", -0.254862 AS "sv_2", -1.304466 AS "sv_3", -0.423673 AS "sv_4", 0.076967 AS "sv_5", -0.188787 AS "sv_6", 0.493898 AS "sv_7", -0.153581 AS "sv_8", -0.985507 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", -0.813953 AS "sv_0", -0.452211 AS "sv_1", -1.339893 AS "sv_2", 1.704892 AS "sv_3", -0.865146 AS "sv_4", -1.360526 AS "sv_5", -1.509839 AS "sv_6", -0.620387 AS "sv_7", 1.326070 AS "sv_8", 0.079805 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", -0.899949 AS "sv_0", 1.417506 AS "sv_1", 0.234098 AS "sv_2", 0.054897 AS "sv_3", 0.918551 AS "sv_4", -0.756675 AS "sv_5", -0.027636 AS "sv_6", 0.201077 AS "sv_7", 1.065277 AS "sv_8", -0.527426 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", 0.739356 AS "sv_0", 0.040085 AS "sv_1", -0.293706 AS "sv_2", -1.073093 AS "sv_3", -0.645207 AS "sv_4", 0.292082 AS "sv_5", -0.157955 AS "sv_6", 1.367823 AS "sv_7", -0.883563 AS "sv_8", 0.285353 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", 0.012511 AS "sv_0", 0.276259 AS "sv_1", -0.478931 AS "sv_2", 0.271257 AS "sv_3", -0.466769 AS "sv_4", -0.282180 AS "sv_5", -0.479853 AS "sv_6", -0.828294 AS "sv_7", -1.311457 AS "sv_8", -0.365120 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 0.688917 AS "sv_0", 1.581740 AS "sv_1", -0.147423 AS "sv_2", 0.338287 AS "sv_3", 0.241546 AS "sv_4", -0.586026 AS "sv_5", -0.293999 AS "sv_6", -0.408070 AS "sv_7", 0.629434 AS "sv_8", -1.044325 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", -0.260143 AS "sv_0", -0.125264 AS "sv_1", -0.259481 AS "sv_2", -0.487871 AS "sv_3", -0.793742 AS "sv_4", 0.547938 AS "sv_5", -0.054589 AS "sv_6", 0.294207 AS "sv_7", 1.505260 AS "sv_8", 0.061732 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", -0.758529 AS "sv_0", 0.495839 AS "sv_1", 1.027690 AS "sv_2", -0.978448 AS "sv_3", 0.939524 AS "sv_4", 0.685931 AS "sv_5", 1.053240 AS "sv_6", 1.637470 AS "sv_7", 1.614820 AS "sv_8", 0.895889 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", 2.184623 AS "sv_0", 0.294503 AS "sv_1", 1.250483 AS "sv_2", 0.933107 AS "sv_3", 1.012313 AS "sv_4", 1.004238 AS "sv_5", 1.331278 AS "sv_6", 0.155584 AS "sv_7", -1.522666 AS "sv_8", -0.397962 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", -0.332793 AS "sv_0", 0.844823 AS "sv_1", -0.170792 AS "sv_2", 0.420555 AS "sv_3", -0.813164 AS "sv_4", 0.737363 AS "sv_5", 0.074472 AS "sv_6", 0.169375 AS "sv_7", -0.300907 AS "sv_8", -1.798404 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", 0.302626 AS "sv_0", -1.420232 AS "sv_1", -0.254878 AS "sv_2", -0.590669 AS "sv_3", -0.492311 AS "sv_4", 0.165875 AS "sv_5", -0.162744 AS "sv_6", 0.711084 AS "sv_7", -0.049331 AS "sv_8", -0.692549 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", 1.198369 AS "sv_0", -1.146429 AS "sv_1", -0.070497 AS "sv_2", 1.282457 AS "sv_3", -0.528170 AS "sv_4", 0.553827 AS "sv_5", 0.103852 AS "sv_6", 1.524966 AS "sv_7", -0.841180 AS "sv_8", 1.304640 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", -0.748524 AS "sv_0", 1.878403 AS "sv_1", 0.238373 AS "sv_2", -0.231430 AS "sv_3", 0.943549 AS "sv_4", -0.781149 AS "sv_5", -0.031263 AS "sv_6", -0.878277 AS "sv_7", -0.508412 AS "sv_8", -1.198498 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", 0.112675 AS "sv_0", 0.061896 AS "sv_1", 0.392449 AS "sv_2", 0.451280 AS "sv_3", 0.890803 AS "sv_4", -0.427442 AS "sv_5", 0.200167 AS "sv_6", -0.104017 AS "sv_7", 0.522222 AS "sv_8", 0.171454 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", 1.318963 AS "sv_0", 0.203376 AS "sv_1", -0.510421 AS "sv_2", 0.482600 AS "sv_3", 0.153388 AS "sv_4", -1.144087 AS "sv_5", -0.758567 AS "sv_6", -1.783432 AS "sv_7", 0.693461 AS "sv_8", -0.590666 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", -0.302470 AS "sv_0", 1.356415 AS "sv_1", -0.362392 AS "sv_2", -0.177181 AS "sv_3", -1.196000 AS "sv_4", 0.878578 AS "sv_5", -0.043026 AS "sv_6", 0.517212 AS "sv_7", 1.186677 AS "sv_8", 0.098547 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", 0.519357 AS "sv_0", 0.418451 AS "sv_1", 0.699414 AS "sv_2", 0.413981 AS "sv_3", 0.929892 AS "sv_4", 0.090423 AS "sv_5", 0.606489 AS "sv_6", 1.953913 AS "sv_7", 0.443428 AS "sv_8", 0.236337 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", -1.120785 AS "sv_0", 0.327921 AS "sv_1", 0.778438 AS "sv_2", -0.586316 AS "sv_3", 0.940217 AS "sv_4", 0.223402 AS "sv_5", 0.710993 AS "sv_6", -0.813768 AS "sv_7", 0.544365 AS "sv_8", 2.547697 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", -0.324339 AS "sv_0", -0.722261 AS "sv_1", 0.569157 AS "sv_2", 0.967609 AS "sv_3", 0.951582 AS "sv_4", -0.178926 AS "sv_5", 0.419535 AS "sv_6", 1.398441 AS "sv_7", 0.462846 AS "sv_8", 0.128738 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", -0.485481 AS "sv_0", 0.639806 AS "sv_1", -0.403360 AS "sv_2", 0.312649 AS "sv_3", 0.217847 AS "sv_4", -1.029328 AS "sv_5", -0.636154 AS "sv_6", 2.171299 AS "sv_7", 0.452828 AS "sv_8", 2.283275 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", -0.087655 AS "sv_0", 2.004011 AS "sv_1", 0.997476 AS "sv_2", -0.037872 AS "sv_3", 0.969605 AS "sv_4", 0.590993 AS "sv_5", 1.000361 AS "sv_6", -0.755022 AS "sv_7", 0.485550 AS "sv_8", 0.899499 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", -0.373574 AS "sv_0", -0.240742 AS "sv_1", 0.874479 AS "sv_2", 0.520330 AS "sv_3", 0.978467 AS "sv_4", 0.351712 AS "sv_5", 0.828239 AS "sv_6", 0.947595 AS "sv_7", -0.028921 AS "sv_8", -0.809748 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", -0.638433 AS "sv_0", 0.613844 AS "sv_1", 0.026309 AS "sv_2", 0.315837 AS "sv_3", -0.194987 AS "sv_4", 0.301385 AS "sv_5", 0.110144 AS "sv_6", 1.193462 AS "sv_7", -2.021345 AS "sv_8", 0.254495 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -1.357628 AS "sv_0", 1.361029 AS "sv_1", 0.890086 AS "sv_2", 0.143034 AS "sv_3", 0.969712 AS "sv_4", 0.391962 AS "sv_5", 0.852977 AS "sv_6", 0.805215 AS "sv_7", -1.308387 AS "sv_8", -1.038055 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", -0.816010 AS "sv_0", 0.529206 AS "sv_1", -0.126696 AS "sv_2", -0.313473 AS "sv_3", -0.071212 AS "sv_4", -0.142373 AS "sv_5", -0.146788 AS "sv_6", -2.740247 AS "sv_7", 1.660622 AS "sv_8", 1.000005 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", -0.373943 AS "sv_0", -0.789666 AS "sv_1", -0.295408 AS "sv_2", 0.805435 AS "sv_3", -1.235811 AS "sv_4", 1.054223 AS "sv_5", 0.063997 AS "sv_6", -1.017981 AS "sv_7", -1.920587 AS "sv_8", 1.397044 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", 0.005109 AS "sv_0", 0.011404 AS "sv_1", -0.286293 AS "sv_2", -0.326650 AS "sv_3", -0.899099 AS "sv_4", 0.634800 AS "sv_5", -0.051366 AS "sv_6", -1.438838 AS "sv_7", -0.601894 AS "sv_8", -0.572385 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", -1.300971 AS "sv_0", 1.100000 AS "sv_1", -0.195414 AS "sv_2", -0.121453 AS "sv_3", 0.087469 AS "sv_4", -0.475260 AS "sv_5", -0.301333 AS "sv_6", 0.645067 AS "sv_7", -0.038041 AS "sv_8", 0.996654 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", -0.189211 AS "sv_0", 0.263870 AS "sv_1", 0.989440 AS "sv_2", -0.249016 AS "sv_3", 0.950179 AS "sv_4", 0.601282 AS "sv_5", 0.996713 AS "sv_6", 0.956108 AS "sv_7", -0.427735 AS "sv_8", 0.592305 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", 0.007580 AS "sv_0", 1.671367 AS "sv_1", 0.906135 AS "sv_2", -0.049667 AS "sv_3", 0.975790 AS "sv_4", 0.413810 AS "sv_5", 0.872689 AS "sv_6", 0.324844 AS "sv_7", -1.835422 AS "sv_8", -0.776542 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", -1.260691 AS "sv_0", -0.835031 AS "sv_1", -0.455083 AS "sv_2", -0.832824 AS "sv_3", -0.978252 AS "sv_4", 0.424756 AS "sv_5", -0.252893 AS "sv_6", -0.024752 AS "sv_7", -0.452338 AS "sv_8", 0.089483 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 0.021446 AS "sv_0", 1.814789 AS "sv_1", -0.013641 AS "sv_2", -0.177948 AS "sv_3", 0.911978 AS "sv_4", -1.206984 AS "sv_5", -0.365046 AS "sv_6", 0.302179 AS "sv_7", -0.591532 AS "sv_8", 0.288268 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", -0.333653 AS "sv_0", 0.321045 AS "sv_1", 0.219660 AS "sv_2", -0.258767 AS "sv_3", 0.051311 AS "sv_4", 0.340335 AS "sv_5", 0.281896 AS "sv_6", -0.547401 AS "sv_7", -0.290991 AS "sv_8", 1.253344 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", 0.815324 AS "sv_0", -0.012660 AS "sv_1", 0.735831 AS "sv_2", 0.439867 AS "sv_3", 0.944964 AS "sv_4", 0.138340 AS "sv_5", 0.650731 AS "sv_6", 0.209989 AS "sv_7", -1.280495 AS "sv_8", 1.075449 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", -1.581484 AS "sv_0", -0.349332 AS "sv_1", 0.855671 AS "sv_2", -0.044079 AS "sv_3", 0.965722 AS "sv_4", 0.333393 AS "sv_5", 0.807274 AS "sv_6", -0.582204 AS "sv_7", -2.385632 AS "sv_8", 2.592288 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -0.105788 AS "sv_0", -1.400364 AS "sv_1", -0.441051 AS "sv_2", 1.202273 AS "sv_3", 0.106194 AS "sv_4", -0.954457 AS "sv_5", -0.645467 AS "sv_6", 0.033406 AS "sv_7", -0.148326 AS "sv_8", 2.467227 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", -0.304749 AS "sv_0", -1.457891 AS "sv_1", -0.263838 AS "sv_2", -2.142921 AS "sv_3", -0.682125 AS "sv_4", 0.395238 AS "sv_5", -0.102954 AS "sv_6", 0.196698 AS "sv_7", -0.339599 AS "sv_8", 0.649171 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", -1.229875 AS "sv_0", 0.060725 AS "sv_1", -0.278011 AS "sv_2", 0.500876 AS "sv_3", 0.249257 AS "sv_4", -0.837876 AS "sv_5", -0.476099 AS "sv_6", 0.203125 AS "sv_7", 0.438541 AS "sv_8", -0.072711 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", 1.282446 AS "sv_0", 0.943185 AS "sv_1", -0.157448 AS "sv_2", 1.054361 AS "sv_3", -1.184354 AS "sv_4", 1.243057 AS "sv_5", 0.233743 AS "sv_6", -0.587300 AS "sv_7", -0.348094 AS "sv_8", 1.417349 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", 0.196254 AS "sv_0", -0.447072 AS "sv_1", 0.102563 AS "sv_2", 1.090824 AS "sv_3", 0.330586 AS "sv_4", -0.238413 AS "sv_5", 0.015178 AS "sv_6", 1.420699 AS "sv_7", 0.318682 AS "sv_8", -0.309277 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", 1.056748 AS "sv_0", 0.143162 AS "sv_1", -0.275535 AS "sv_2", 1.287112 AS "sv_3", -0.012741 AS "sv_4", -0.493798 AS "sv_5", -0.373206 AS "sv_6", -0.413375 AS "sv_7", -0.845475 AS "sv_8", 0.597294 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", 0.228382 AS "sv_0", -1.340482 AS "sv_1", -0.202832 AS "sv_2", 0.643712 AS "sv_3", -0.122583 AS "sv_4", -0.216818 AS "sv_5", -0.231742 AS "sv_6", -0.032541 AS "sv_7", -0.612877 AS "sv_8", 0.558935 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", -1.851499 AS "sv_0", 0.319568 AS "sv_1", -0.327604 AS "sv_2", 0.556266 AS "sv_3", -0.594841 AS "sv_4", 0.164038 AS "sv_5", -0.223591 AS "sv_6", 1.361606 AS "sv_7", -0.399779 AS "sv_8", 0.746363 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 0.297955 AS "sv_0", -0.909009 AS "sv_1", 0.316908 AS "sv_2", -1.682855 AS "sv_3", 0.942874 AS "sv_4", -0.634822 AS "sv_5", 0.076747 AS "sv_6", -0.019870 AS "sv_7", 0.377715 AS "sv_8", 0.494318 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", 0.535039 AS "sv_0", 1.027176 AS "sv_1", -0.403092 AS "sv_2", 1.138185 AS "sv_3", 0.359347 AS "sv_4", -1.212185 AS "sv_5", -0.689522 AS "sv_6", -0.413690 AS "sv_7", 0.946764 AS "sv_8", -1.681379 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", -0.044770 AS "sv_0", -1.276061 AS "sv_1", -0.498138 AS "sv_2", -0.217024 AS "sv_3", 0.431760 AS "sv_4", -1.482048 AS "sv_5", -0.847429 AS "sv_6", -0.890030 AS "sv_7", -0.216479 AS "sv_8", -0.127088 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", -0.352004 AS "sv_0", 0.259679 AS "sv_1", 0.518758 AS "sv_2", 0.255561 AS "sv_3", 0.945797 AS "sv_4", -0.264773 AS "sv_5", 0.352582 AS "sv_6", 0.282937 AS "sv_7", -1.676691 AS "sv_8", 1.011941 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", -0.015843 AS "sv_0", -0.537047 AS "sv_1", -0.203875 AS "sv_2", 0.486838 AS "sv_3", -0.229571 AS "sv_4", -0.080115 AS "sv_5", -0.192543 AS "sv_6", -1.942761 AS "sv_7", -0.411441 AS "sv_8", -0.362828 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", 1.388003 AS "sv_0", 0.012587 AS "sv_1", -0.208756 AS "sv_2", 0.180477 AS "sv_3", 0.644855 AS "sv_4", -1.222217 AS "sv_5", -0.531309 AS "sv_6", 0.777441 AS "sv_7", 0.036947 AS "sv_8", -1.787442 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", -0.319061 AS "sv_0", 0.037082 AS "sv_1", -0.302351 AS "sv_2", 0.643416 AS "sv_3", -0.071526 AS "sv_4", -0.467291 AS "sv_5", -0.387675 AS "sv_6", 0.300862 AS "sv_7", -0.305625 AS "sv_8", 0.539971 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 0.524256 AS "sv_0", -0.899982 AS "sv_1", -0.199629 AS "sv_2", -0.482055 AS "sv_3", -0.949351 AS "sv_4", 0.860424 AS "sv_5", 0.086624 AS "sv_6", 0.053730 AS "sv_7", -0.986615 AS "sv_8", 2.005123 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", 0.929317 AS "sv_0", -1.050732 AS "sv_1", 0.787073 AS "sv_2", 1.092563 AS "sv_3", 0.930835 AS "sv_4", 0.251551 AS "sv_5", 0.726403 AS "sv_6", 0.188895 AS "sv_7", -1.920995 AS "sv_8", 0.175927 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", 0.024597 AS "sv_0", -0.814180 AS "sv_1", 1.179447 AS "sv_2", 0.019493 AS "sv_3", 1.016093 AS "sv_4", 0.867777 AS "sv_5", 1.232378 AS "sv_6", -1.076952 AS "sv_7", 0.536087 AS "sv_8", -1.019929 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", -2.635314 AS "sv_0", -1.513938 AS "sv_1", 0.646283 AS "sv_2", 1.299213 AS "sv_3", 0.991390 AS "sv_4", -0.087665 AS "sv_5", 0.510238 AS "sv_6", -0.301454 AS "sv_7", -1.148789 AS "sv_8", 1.188565 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", -1.490154 AS "sv_0", 0.343027 AS "sv_1", -0.449074 AS "sv_2", -1.164284 AS "sv_3", -1.197491 AS "sv_4", 0.719971 AS "sv_5", -0.161390 AS "sv_6", 1.343041 AS "sv_7", 0.004784 AS "sv_8", 1.310308 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", -0.286784 AS "sv_0", -0.322529 AS "sv_1", -0.214451 AS "sv_2", 0.559559 AS "sv_3", -0.899618 AS "sv_4", 0.768528 AS "sv_5", 0.047401 AS "sv_6", 0.207893 AS "sv_7", 1.347879 AS "sv_8", -1.198866 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", 1.565996 AS "sv_0", 0.630905 AS "sv_1", -0.531525 AS "sv_2", 0.038295 AS "sv_3", 0.166839 AS "sv_4", -1.200603 AS "sv_5", -0.792631 AS "sv_6", 0.989485 AS "sv_7", 0.024575 AS "sv_8", -0.418722 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", 1.434788 AS "sv_0", -1.018245 AS "sv_1", -0.172574 AS "sv_2", -2.143022 AS "sv_3", -1.556424 AS "sv_4", 1.697162 AS "sv_5", 0.354285 AS "sv_6", -0.000139 AS "sv_7", 0.304266 AS "sv_8", -0.044092 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", -0.202320 AS "sv_0", 2.001647 AS "sv_1", -0.461152 AS "sv_2", 0.714492 AS "sv_3", -0.194579 AS "sv_4", -0.601951 AS "sv_5", -0.558825 AS "sv_6", -0.032095 AS "sv_7", -0.545657 AS "sv_8", 0.209518 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", 1.109895 AS "sv_0", -1.276931 AS "sv_1", -0.153744 AS "sv_2", 0.481751 AS "sv_3", -0.979647 AS "sv_4", 0.984662 AS "sv_5", 0.161086 AS "sv_6", -0.653210 AS "sv_7", -0.126786 AS "sv_8", -0.808571 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", 0.318899 AS "sv_0", -0.548994 AS "sv_1", 0.096506 AS "sv_2", 0.273220 AS "sv_3", 0.890499 AS "sv_4", -0.975153 AS "sv_5", -0.205763 AS "sv_6", -0.005155 AS "sv_7", -0.698733 AS "sv_8", 0.257747 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", 0.685749 AS "sv_0", 0.756183 AS "sv_1", 0.291307 AS "sv_2", -0.468737 AS "sv_3", 0.957678 AS "sv_4", -0.701420 AS "sv_5", 0.035999 AS "sv_6", 0.852386 AS "sv_7", 0.490645 AS "sv_8", -0.917510 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", -0.285401 AS "sv_0", -2.587676 AS "sv_1", -0.426798 AS "sv_2", -0.169654 AS "sv_3", -2.564845 AS "sv_4", 2.533015 AS "sv_5", 0.388436 AS "sv_6", 0.880810 AS "sv_7", 0.212284 AS "sv_8", -0.853432 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", 0.327778 AS "sv_0", -2.017729 AS "sv_1", 0.101233 AS "sv_2", -2.284432 AS "sv_3", 0.922497 AS "sv_4", -1.007861 AS "sv_5", -0.211429 AS "sv_6", 1.408795 AS "sv_7", -0.661429 AS "sv_8", 1.034971 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", 1.598236 AS "sv_0", -0.877690 AS "sv_1", -0.265913 AS "sv_2", 1.078588 AS "sv_3", -0.062553 AS "sv_4", -0.411432 AS "sv_5", -0.341088 AS "sv_6", -0.987325 AS "sv_7", -0.597841 AS "sv_8", 0.649937 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", 0.223140 AS "sv_0", 2.618876 AS "sv_1", 1.785933 AS "sv_2", 0.525517 AS "sv_3", 1.027739 AS "sv_4", 1.975934 AS "sv_5", 2.060077 AS "sv_6", 0.623600 AS "sv_7", -0.254780 AS "sv_8", -0.643208 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", 0.708036 AS "sv_0", 1.586656 AS "sv_1", -0.096155 AS "sv_2", 0.777239 AS "sv_3", 0.018334 AS "sv_4", -0.201843 AS "sv_5", -0.138892 AS "sv_6", -0.227820 AS "sv_7", -0.318851 AS "sv_8", -0.388135 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", 0.546520 AS "sv_0", -0.046826 AS "sv_1", -0.379246 AS "sv_2", -0.023449 AS "sv_3", 0.294757 AS "sv_4", -1.084326 AS "sv_5", -0.632276 AS "sv_6", -0.252771 AS "sv_7", -1.416949 AS "sv_8", 0.894766 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", -2.171592 AS "sv_0", -1.020880 AS "sv_1", -0.272792 AS "sv_2", 0.148208 AS "sv_3", -0.120568 AS "sv_4", -0.348997 AS "sv_5", -0.328494 AS "sv_6", 0.054471 AS "sv_7", -0.344642 AS "sv_8", 1.982605 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", -0.063343 AS "sv_0", 0.659661 AS "sv_1", 0.495233 AS "sv_2", 1.507247 AS "sv_3", 0.950231 AS "sv_4", -0.314086 AS "sv_5", 0.318622 AS "sv_6", -0.511888 AS "sv_7", 0.075660 AS "sv_8", 0.496109 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", 0.694636 AS "sv_0", 0.229379 AS "sv_1", -0.135230 AS "sv_2", -0.126441 AS "sv_3", -0.703821 AS "sv_4", 0.661541 AS "sv_5", 0.081740 AS "sv_6", -0.836797 AS "sv_7", -0.459487 AS "sv_8", -0.599702 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", 0.763588 AS "sv_0", -0.877413 AS "sv_1", -0.312581 AS "sv_2", -0.766536 AS "sv_3", -0.928493 AS "sv_4", 0.624202 AS "sv_5", -0.076271 AS "sv_6", 0.402280 AS "sv_7", 0.349522 AS "sv_8", -0.184166 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", 1.145385 AS "sv_0", 1.272283 AS "sv_1", -0.561562 AS "sv_2", 1.317994 AS "sv_3", -0.671836 AS "sv_4", -0.169496 AS "sv_5", -0.515350 AS "sv_6", -0.151036 AS "sv_7", -0.329984 AS "sv_8", 0.315520 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", 1.735820 AS "sv_0", 0.694681 AS "sv_1", -0.067943 AS "sv_2", 0.595141 AS "sv_3", -1.081687 AS "sv_4", 1.275791 AS "sv_5", 0.317558 AS "sv_6", -0.053097 AS "sv_7", -0.148766 AS "sv_8", 0.672684 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", -0.258238 AS "sv_0", -0.097936 AS "sv_1", -0.381397 AS "sv_2", -0.791942 AS "sv_3", -0.931839 AS "sv_4", 0.501086 AS "sv_5", -0.169419 AS "sv_6", 1.208114 AS "sv_7", 0.923041 AS "sv_8", 0.045409 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", 1.779226 AS "sv_0", 0.127550 AS "sv_1", -0.010285 AS "sv_2", -0.678144 AS "sv_3", -0.346464 AS "sv_4", 0.429892 AS "sv_5", 0.117461 AS "sv_6", -0.679453 AS "sv_7", -0.060965 AS "sv_8", -0.310291 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", -0.043197 AS "sv_0", -0.437700 AS "sv_1", -0.506468 AS "sv_2", -0.057258 AS "sv_3", -0.399406 AS "sv_4", -0.420468 AS "sv_5", -0.543216 AS "sv_6", 1.558325 AS "sv_7", -0.882877 AS "sv_8", -0.073077 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", -0.029150 AS "sv_0", 1.127509 AS "sv_1", 0.141428 AS "sv_2", -0.920748 AS "sv_3", 0.920413 AS "sv_4", -0.930719 AS "sv_5", -0.155490 AS "sv_6", 0.269698 AS "sv_7", 0.637580 AS "sv_8", 0.390744 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", 0.796803 AS "sv_0", -0.085546 AS "sv_1", 0.324188 AS "sv_2", 0.065250 AS "sv_3", 0.975206 AS "sv_4", -0.663235 AS "sv_5", 0.074457 AS "sv_6", 0.302075 AS "sv_7", 0.240260 AS "sv_8", 0.195863 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", 0.282680 AS "sv_0", 0.130561 AS "sv_1", 0.906407 AS "sv_2", -0.210518 AS "sv_3", 0.984611 AS "sv_4", 0.402883 AS "sv_5", 0.869712 AS "sv_6", -0.958506 AS "sv_7", 0.837286 AS "sv_8", 1.124980 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", -0.601947 AS "sv_0", -0.609824 AS "sv_1", 0.622057 AS "sv_2", -1.451841 AS "sv_3", 0.970458 AS "sv_4", -0.105411 AS "sv_5", 0.484948 AS "sv_6", 1.677988 AS "sv_7", -0.811300 AS "sv_8", -0.453308 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", 0.171390 AS "sv_0", -1.957513 AS "sv_1", -0.813633 AS "sv_2", 0.393102 AS "sv_3", -0.042458 AS "sv_4", -1.451882 AS "sv_5", -1.100212 AS "sv_6", 0.832917 AS "sv_7", -1.134850 AS "sv_8", -0.701044 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", -0.462262 AS "sv_0", 1.121886 AS "sv_1", -0.222564 AS "sv_2", 0.128963 AS "sv_3", 0.674869 AS "sv_4", -1.286683 AS "sv_5", -0.561653 AS "sv_6", 0.773687 AS "sv_7", 0.533973 AS "sv_8", -0.333808 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", -0.765981 AS "sv_0", 0.556101 AS "sv_1", 0.771628 AS "sv_2", -0.317365 AS "sv_3", 0.995790 AS "sv_4", 0.138779 AS "sv_5", 0.680545 AS "sv_6", -1.034626 AS "sv_7", -1.013472 AS "sv_8", -0.274533 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", -0.173819 AS "sv_0", 0.036993 AS "sv_1", 0.646374 AS "sv_2", -2.108314 AS "sv_3", 0.948059 AS "sv_4", -0.031350 AS "sv_5", 0.526818 AS "sv_6", 0.736537 AS "sv_7", -1.447145 AS "sv_8", -0.309609 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", -1.213579 AS "sv_0", 0.638942 AS "sv_1", 0.247582 AS "sv_2", -0.997786 AS "sv_3", 0.917172 AS "sv_4", -0.729914 AS "sv_5", -0.008611 AS "sv_6", 0.178647 AS "sv_7", -0.622020 AS "sv_8", 0.198026 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", 0.227505 AS "sv_0", -1.885349 AS "sv_1", 0.841215 AS "sv_2", -0.193720 AS "sv_3", 0.965503 AS "sv_4", 0.306904 AS "sv_5", 0.787523 AS "sv_6", -2.103942 AS "sv_7", 0.077759 AS "sv_8", -0.483269 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", -2.563980 AS "sv_0", 1.112410 AS "sv_1", -0.327087 AS "sv_2", 0.994928 AS "sv_3", 0.237963 AS "sv_4", -0.914132 AS "sv_5", -0.539144 AS "sv_6", -1.451145 AS "sv_7", 0.007304 AS "sv_8", 0.722065 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", -1.647778 AS "sv_0", -0.300223 AS "sv_1", -0.071180 AS "sv_2", 0.350286 AS "sv_3", -0.506423 AS "sv_4", 0.524381 AS "sv_5", 0.094656 AS "sv_6", -0.847303 AS "sv_7", 1.166382 AS "sv_8", 0.842916 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", -1.426842 AS "sv_0", 0.815553 AS "sv_1", 0.759059 AS "sv_2", -0.085871 AS "sv_3", 0.942040 AS "sv_4", 0.185149 AS "sv_5", 0.683712 AS "sv_6", 0.899012 AS "sv_7", -0.756239 AS "sv_8", 1.495445 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", 1.223340 AS "sv_0", -0.089773 AS "sv_1", 0.458951 AS "sv_2", -1.020888 AS "sv_3", 0.940039 AS "sv_4", -0.368077 AS "sv_5", 0.272711 AS "sv_6", 0.268793 AS "sv_7", -0.378120 AS "sv_8", -0.438884 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", -0.054702 AS "sv_0", 1.433457 AS "sv_1", 0.860130 AS "sv_2", 0.102174 AS "sv_3", 0.928423 AS "sv_4", 0.389983 AS "sv_5", 0.827556 AS "sv_6", -0.568025 AS "sv_7", -0.407573 AS "sv_8", 0.398208 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", -1.032467 AS "sv_0", 0.288001 AS "sv_1", 0.792237 AS "sv_2", -1.008951 AS "sv_3", 1.002880 AS "sv_4", 0.167762 AS "sv_5", 0.706129 AS "sv_6", -0.187530 AS "sv_7", -0.050094 AS "sv_8", 2.091479 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", -0.537548 AS "sv_0", 0.078434 AS "sv_1", -0.396784 AS "sv_2", 0.002504 AS "sv_3", -1.299930 AS "sv_4", 0.949553 AS "sv_5", -0.050745 AS "sv_6", -0.405703 AS "sv_7", 0.566217 AS "sv_8", -1.195390 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", 0.763915 AS "sv_0", 0.218894 AS "sv_1", 0.756754 AS "sv_2", 1.281545 AS "sv_3", 0.978572 AS "sv_4", 0.133543 AS "sv_5", 0.666676 AS "sv_6", -0.675935 AS "sv_7", -0.038596 AS "sv_8", 1.368927 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", 0.540510 AS "sv_0", 0.126326 AS "sv_1", -0.370044 AS "sv_2", 2.365016 AS "sv_3", -1.408323 AS "sv_4", 1.139529 AS "sv_5", 0.027106 AS "sv_6", 1.530299 AS "sv_7", 0.140919 AS "sv_8", 0.540905 AS "sv_9"
     UNION ALL
     SELECT 222 AS "sv_idx", -0.634865 AS "sv_0", -0.335194 AS "sv_1", -0.293115 AS "sv_2", 0.000158 AS "sv_3", -0.078671 AS "sv_4", -0.440926 AS "sv_5", -0.372289 AS "sv_6", 0.391274 AS "sv_7", 1.454115 AS "sv_8", 0.713786 AS "sv_9"
     UNION ALL
     SELECT 223 AS "sv_idx", -0.390832 AS "sv_0", -1.496190 AS "sv_1", -0.275802 AS "sv_2", 0.626521 AS "sv_3", -0.318509 AS "sv_4", -0.098085 AS "sv_5", -0.257455 AS "sv_6", 0.261243 AS "sv_7", 1.497721 AS "sv_8", 0.000885 AS "sv_9"
     UNION ALL
     SELECT 224 AS "sv_idx", 0.186620 AS "sv_0", 0.337465 AS "sv_1", -0.640287 AS "sv_2", -0.842482 AS "sv_3", 0.260952 AS "sv_4", -1.523986 AS "sv_5", -0.977597 AS "sv_6", 0.732420 AS "sv_7", -1.769224 AS "sv_8", -0.095046 AS "sv_9"
     UNION ALL
     SELECT 225 AS "sv_idx", 0.809486 AS "sv_0", -0.612151 AS "sv_1", 1.243770 AS "sv_2", -1.208226 AS "sv_3", 0.998865 AS "sv_4", 1.009231 AS "sv_5", 1.327175 AS "sv_6", -0.307202 AS "sv_7", 0.874509 AS "sv_8", -0.277718 AS "sv_9"
     UNION ALL
     SELECT 226 AS "sv_idx", -0.270493 AS "sv_0", -0.379489 AS "sv_1", 0.322884 AS "sv_2", 0.752412 AS "sv_3", 0.979382 AS "sv_4", -0.671062 AS "sv_5", 0.071081 AS "sv_6", 0.098596 AS "sv_7", 0.615951 AS "sv_8", -0.453947 AS "sv_9"
     UNION ALL
     SELECT 227 AS "sv_idx", 0.543923 AS "sv_0", -0.663313 AS "sv_1", 0.646237 AS "sv_2", -0.381627 AS "sv_3", 0.971729 AS "sv_4", -0.062274 AS "sv_5", 0.517642 AS "sv_6", 1.167921 AS "sv_7", -0.496328 AS "sv_8", -0.408863 AS "sv_9"
     UNION ALL
     SELECT 228 AS "sv_idx", -0.310657 AS "sv_0", -0.184752 AS "sv_1", -0.317908 AS "sv_2", -1.942388 AS "sv_3", -0.482124 AS "sv_4", 0.035941 AS "sv_5", -0.253092 AS "sv_6", -0.473989 AS "sv_7", -0.003572 AS "sv_8", -0.746542 AS "sv_9"
     UNION ALL
     SELECT 229 AS "sv_idx", 0.170667 AS "sv_0", -1.559754 AS "sv_1", -0.247251 AS "sv_2", -0.954589 AS "sv_3", 0.406524 AS "sv_4", -0.984689 AS "sv_5", -0.493618 AS "sv_6", -0.590251 AS "sv_7", -0.308192 AS "sv_8", -0.283685 AS "sv_9"
     UNION ALL
     SELECT 230 AS "sv_idx", 0.371199 AS "sv_0", -0.249669 AS "sv_1", -0.328171 AS "sv_2", 0.679894 AS "sv_3", -0.529150 AS "sv_4", 0.077868 AS "sv_5", -0.249315 AS "sv_6", -0.369526 AS "sv_7", -0.309832 AS "sv_8", 0.092462 AS "sv_9"
     UNION ALL
     SELECT 231 AS "sv_idx", -0.738879 AS "sv_0", 0.716214 AS "sv_1", 0.177181 AS "sv_2", 1.220032 AS "sv_3", 0.890009 AS "sv_4", -0.825103 AS "sv_5", -0.094888 AS "sv_6", -0.248514 AS "sv_7", -0.245817 AS "sv_8", 0.774364 AS "sv_9"
     UNION ALL
     SELECT 232 AS "sv_idx", -0.250216 AS "sv_0", 1.428937 AS "sv_1", 1.107093 AS "sv_2", 1.070702 AS "sv_3", 0.958462 AS "sv_4", 0.808449 AS "sv_5", 1.154991 AS "sv_6", -0.517579 AS "sv_7", 0.304982 AS "sv_8", 3.062791 AS "sv_9"
     UNION ALL
     SELECT 233 AS "sv_idx", 0.136112 AS "sv_0", -1.196185 AS "sv_1", -0.234248 AS "sv_2", -0.642533 AS "sv_3", -0.857617 AS "sv_4", 0.677439 AS "sv_5", 0.004289 AS "sv_6", -0.013625 AS "sv_7", -0.351289 AS "sv_8", 1.388059 AS "sv_9"
     UNION ALL
     SELECT 234 AS "sv_idx", -1.198762 AS "sv_0", 1.170091 AS "sv_1", -0.331275 AS "sv_2", -0.366224 AS "sv_3", -0.788339 AS "sv_4", 0.407970 AS "sv_5", -0.155145 AS "sv_6", 0.708245 AS "sv_7", -0.166261 AS "sv_8", 1.746059 AS "sv_9"
     UNION ALL
     SELECT 235 AS "sv_idx", -0.309099 AS "sv_0", -0.464287 AS "sv_1", -0.232394 AS "sv_2", 0.623486 AS "sv_3", -0.405144 AS "sv_4", 0.094568 AS "sv_5", -0.164997 AS "sv_6", 1.199560 AS "sv_7", -0.017232 AS "sv_8", -0.664525 AS "sv_9"
     UNION ALL
     SELECT 236 AS "sv_idx", -0.550229 AS "sv_0", -0.732359 AS "sv_1", -0.155280 AS "sv_2", 1.106564 AS "sv_3", 0.025421 AS "sv_4", -0.320528 AS "sv_5", -0.222704 AS "sv_6", 0.542731 AS "sv_7", 0.692213 AS "sv_8", 0.101989 AS "sv_9"
     UNION ALL
     SELECT 237 AS "sv_idx", -0.911045 AS "sv_0", -0.206926 AS "sv_1", 0.221824 AS "sv_2", -0.200328 AS "sv_3", 0.871751 AS "sv_4", -0.718764 AS "sv_5", -0.026702 AS "sv_6", -0.808953 AS "sv_7", -0.984959 AS "sv_8", 0.832678 AS "sv_9"
     UNION ALL
     SELECT 238 AS "sv_idx", 0.302494 AS "sv_0", 1.524404 AS "sv_1", 0.906454 AS "sv_2", -0.229958 AS "sv_3", 0.958214 AS "sv_4", 0.437176 AS "sv_5", 0.879801 AS "sv_6", -0.743904 AS "sv_7", 0.318097 AS "sv_8", 1.617980 AS "sv_9"
     UNION ALL
     SELECT 239 AS "sv_idx", -1.001107 AS "sv_0", -0.141264 AS "sv_1", 0.614505 AS "sv_2", 0.254067 AS "sv_3", 0.985530 AS "sv_4", -0.138926 AS "sv_5", 0.468863 AS "sv_6", -0.273282 AS "sv_7", 0.826816 AS "sv_8", 0.339935 AS "sv_9"
     UNION ALL
     SELECT 240 AS "sv_idx", -0.534939 AS "sv_0", 0.652892 AS "sv_1", 1.109216 AS "sv_2", -1.031922 AS "sv_3", 1.034671 AS "sv_4", 0.713631 AS "sv_5", 1.128963 AS "sv_6", -0.256810 AS "sv_7", -0.628325 AS "sv_8", 0.370288 AS "sv_9"
     UNION ALL
     SELECT 241 AS "sv_idx", -1.493023 AS "sv_0", 0.885415 AS "sv_1", 0.177122 AS "sv_2", 0.683175 AS "sv_3", -0.364381 AS "sv_4", 0.800198 AS "sv_5", 0.381395 AS "sv_6", -0.337466 AS "sv_7", -1.512621 AS "sv_8", 1.321708 AS "sv_9"
     UNION ALL
     SELECT 242 AS "sv_idx", -1.542023 AS "sv_0", -0.956283 AS "sv_1", -0.012228 AS "sv_2", -0.730545 AS "sv_3", -0.060753 AS "sv_4", 0.056075 AS "sv_5", 0.006294 AS "sv_6", -0.663963 AS "sv_7", 0.403805 AS "sv_8", -0.991397 AS "sv_9"
     UNION ALL
     SELECT 243 AS "sv_idx", 0.136848 AS "sv_0", -0.357540 AS "sv_1", -0.545592 AS "sv_2", 0.303686 AS "sv_3", -0.068727 AS "sv_4", -0.921414 AS "sv_5", -0.722474 AS "sv_6", -0.378885 AS "sv_7", 0.111628 AS "sv_8", -1.391935 AS "sv_9"
     UNION ALL
     SELECT 244 AS "sv_idx", -2.816561 AS "sv_0", -1.091985 AS "sv_1", -0.089846 AS "sv_2", -1.001222 AS "sv_3", 0.245099 AS "sv_4", -0.483993 AS "sv_5", -0.216350 AS "sv_6", -0.176273 AS "sv_7", 0.481645 AS "sv_8", -0.115846 AS "sv_9"
     UNION ALL
     SELECT 245 AS "sv_idx", 1.307024 AS "sv_0", -1.616775 AS "sv_1", -0.346475 AS "sv_2", -0.469726 AS "sv_3", 0.525300 AS "sv_4", -1.322365 AS "sv_5", -0.674864 AS "sv_6", -1.599737 AS "sv_7", 1.247383 AS "sv_8", -0.909195 AS "sv_9"
     UNION ALL
     SELECT 246 AS "sv_idx", -0.733464 AS "sv_0", -1.156224 AS "sv_1", 0.310653 AS "sv_2", 0.125330 AS "sv_3", 0.940574 AS "sv_4", -0.643427 AS "sv_5", 0.069038 AS "sv_6", 1.876815 AS "sv_7", 0.944507 AS "sv_8", 0.392360 AS "sv_9"
     UNION ALL
     SELECT 247 AS "sv_idx", 0.657501 AS "sv_0", 0.892502 AS "sv_1", -0.236830 AS "sv_2", -0.729682 AS "sv_3", -0.706225 AS "sv_4", 0.476487 AS "sv_5", -0.056746 AS "sv_6", -1.602769 AS "sv_7", -0.855423 AS "sv_8", 1.659902 AS "sv_9"
     UNION ALL
     SELECT 248 AS "sv_idx", 1.167445 AS "sv_0", -0.172388 AS "sv_1", 0.755736 AS "sv_2", 1.372630 AS "sv_3", 0.923078 AS "sv_4", 0.203565 AS "sv_5", 0.686354 AS "sv_6", 0.444234 AS "sv_7", 1.195274 AS "sv_8", -0.907102 AS "sv_9"
     UNION ALL
     SELECT 249 AS "sv_idx", 2.182794 AS "sv_0", -0.311773 AS "sv_1", -0.139689 AS "sv_2", -1.616949 AS "sv_3", 0.235114 AS "sv_4", -0.563367 AS "sv_5", -0.280944 AS "sv_6", -0.783720 AS "sv_7", 0.583340 AS "sv_8", 0.163340 AS "sv_9"
     UNION ALL
     SELECT 250 AS "sv_idx", -0.377903 AS "sv_0", 0.264375 AS "sv_1", 0.844148 AS "sv_2", 0.365284 AS "sv_3", 0.904339 AS "sv_4", 0.391591 AS "sv_5", 0.814774 AS "sv_6", -0.551350 AS "sv_7", 0.384442 AS "sv_8", -1.310682 AS "sv_9"
     UNION ALL
     SELECT 251 AS "sv_idx", 1.778402 AS "sv_0", 0.854515 AS "sv_1", 0.289994 AS "sv_2", -1.027584 AS "sv_3", 0.809541 AS "sv_4", -0.511900 AS "sv_5", 0.090453 AS "sv_6", 0.480246 AS "sv_7", 1.421781 AS "sv_8", 0.280624 AS "sv_9"
     UNION ALL
     SELECT 252 AS "sv_idx", -1.284677 AS "sv_0", -0.564668 AS "sv_1", 0.470296 AS "sv_2", 1.560484 AS "sv_3", 0.898205 AS "sv_4", -0.292858 AS "sv_5", 0.304164 AS "sv_6", -0.835470 AS "sv_7", -0.623986 AS "sv_8", -0.023816 AS "sv_9"
     UNION ALL
     SELECT 253 AS "sv_idx", -0.056513 AS "sv_0", -0.161324 AS "sv_1", 0.834904 AS "sv_2", 0.426593 AS "sv_3", 0.924151 AS "sv_4", 0.348799 AS "sv_5", 0.794568 AS "sv_6", -0.020058 AS "sv_7", 1.438489 AS "sv_8", -0.855696 AS "sv_9"
     UNION ALL
     SELECT 254 AS "sv_idx", -0.608250 AS "sv_0", -0.421780 AS "sv_1", 0.405912 AS "sv_2", -0.850839 AS "sv_3", 0.926276 AS "sv_4", -0.448474 AS "sv_5", 0.205167 AS "sv_6", -0.499699 AS "sv_7", 0.948938 AS "sv_8", -1.449312 AS "sv_9"
     UNION ALL
     SELECT 255 AS "sv_idx", -2.414785 AS "sv_0", 0.043356 AS "sv_1", 0.800677 AS "sv_2", 0.789276 AS "sv_3", 0.955856 AS "sv_4", 0.244325 AS "sv_5", 0.735566 AS "sv_6", 1.151646 AS "sv_7", -0.163908 AS "sv_8", -0.695245 AS "sv_9"
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.087779 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 54 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 65 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 70 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 71 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 73 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 74 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 76 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 77 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 81 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 84 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 86 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 89 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 91 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 94 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 95 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 96 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 97 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 98 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 99 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 100 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 101 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 102 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 103 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 104 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 105 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 106 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 107 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 108 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 109 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 110 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 111 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 112 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 113 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 114 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 115 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 116 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 117 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 118 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 119 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 120 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 121 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 122 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 123 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 124 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 125 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 126 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 127 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 128 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 129 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 130 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 131 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 132 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 133 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 134 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 135 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 136 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 137 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 138 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 139 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 140 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 141 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 142 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 143 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 144 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 145 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 146 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 147 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 148 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 149 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 150 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 151 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 152 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 153 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 154 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 155 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 156 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 157 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 158 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 159 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 160 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 161 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 162 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 163 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 164 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 165 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 166 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 167 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 168 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 169 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 170 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 171 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 172 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 173 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 174 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 175 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 176 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 177 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 178 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 179 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 180 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 181 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 182 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 183 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 184 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 185 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 186 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 187 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 188 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 189 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 190 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 191 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 192 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 193 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 194 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 195 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 196 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 197 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 198 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 199 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 200 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 201 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 202 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 203 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 204 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 205 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 206 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 207 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 208 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 209 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 210 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 211 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 212 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 213 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 214 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 215 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 216 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 217 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 218 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 219 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 220 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 221 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 222 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 223 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 224 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 225 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 226 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 227 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 228 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 229 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 230 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 231 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 232 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 233 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 234 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 235 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 236 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 237 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 238 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 239 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 240 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 241 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 242 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 243 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 244 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 245 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 246 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 247 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 248 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 249 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 250 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 251 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 252 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 253 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 254 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 255 AS "sv_idx", 1.000000 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.277977 AS "rho", -2.611421 AS "probA", -0.273394 AS "probB"
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