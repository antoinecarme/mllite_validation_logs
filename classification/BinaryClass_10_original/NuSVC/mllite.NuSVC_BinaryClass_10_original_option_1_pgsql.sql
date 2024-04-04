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
     SELECT 5 AS "sv_idx", -1.922800 AS "sv_0", 0.299898 AS "sv_1", -0.336842 AS "sv_2", 0.147534 AS "sv_3", -0.196676 AS "sv_4", -0.369004 AS "sv_5", -0.387471 AS "sv_6", -0.932592 AS "sv_7", 2.691874 AS "sv_8", 0.259310 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.916087 AS "sv_0", -0.135315 AS "sv_1", -0.464949 AS "sv_2", 0.739451 AS "sv_3", 0.966370 AS "sv_4", -2.113315 AS "sv_5", -1.004914 AS "sv_6", -0.352297 AS "sv_7", 1.676792 AS "sv_8", -0.819829 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -0.951704 AS "sv_0", -0.590051 AS "sv_1", -0.835885 AS "sv_2", 0.287704 AS "sv_3", -0.494899 AS "sv_4", -0.906831 AS "sv_5", -0.958925 AS "sv_6", -0.967451 AS "sv_7", -1.576031 AS "sv_8", -1.250799 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.207149 AS "sv_0", 0.118302 AS "sv_1", -0.793585 AS "sv_2", 0.105090 AS "sv_3", -1.374022 AS "sv_4", 0.310660 AS "sv_5", -0.567034 AS "sv_6", -1.571705 AS "sv_7", 0.348569 AS "sv_8", -0.124040 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 0.441366 AS "sv_0", -0.767481 AS "sv_1", -0.349474 AS "sv_2", -0.915853 AS "sv_3", -1.154481 AS "sv_4", 0.848705 AS "sv_5", -0.041069 AS "sv_6", -0.493502 AS "sv_7", 0.182158 AS "sv_8", -0.209842 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.632556 AS "sv_0", 0.062874 AS "sv_1", -1.078568 AS "sv_2", -0.324772 AS "sv_3", -0.585264 AS "sv_4", -1.239202 AS "sv_5", -1.257579 AS "sv_6", 0.637909 AS "sv_7", -0.648566 AS "sv_8", -1.608947 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -0.263412 AS "sv_0", 1.788292 AS "sv_1", 0.201192 AS "sv_2", -0.339974 AS "sv_3", 1.169404 AS "sv_4", -1.142667 AS "sv_5", -0.168046 AS "sv_6", -0.413903 AS "sv_7", 1.138708 AS "sv_8", -1.061929 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 0.161201 AS "sv_0", -0.794545 AS "sv_1", 0.709537 AS "sv_2", 0.348623 AS "sv_3", 1.401939 AS "sv_4", -0.502496 AS "sv_5", 0.441115 AS "sv_6", 1.772862 AS "sv_7", -1.137358 AS "sv_8", -0.101282 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -0.792551 AS "sv_0", 0.663803 AS "sv_1", 0.639087 AS "sv_2", -0.721890 AS "sv_3", 1.182314 AS "sv_4", -0.348389 AS "sv_5", 0.427859 AS "sv_6", -1.512975 AS "sv_7", -0.453389 AS "sv_8", -0.237052 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 0.663167 AS "sv_0", 0.417673 AS "sv_1", 0.522532 AS "sv_2", -0.780069 AS "sv_3", -0.363281 AS "sv_4", 1.438493 AS "sv_5", 0.854893 AS "sv_6", 1.580967 AS "sv_7", -0.282811 AS "sv_8", 1.205217 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.648958 AS "sv_0", -1.111825 AS "sv_1", -0.544116 AS "sv_2", -0.829628 AS "sv_3", 0.168077 AS "sv_4", -1.225526 AS "sv_5", -0.810376 AS "sv_6", -0.312948 AS "sv_7", -0.510266 AS "sv_8", 0.739977 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.046883 AS "sv_0", -1.071828 AS "sv_1", 0.729746 AS "sv_2", 0.152708 AS "sv_3", 0.931978 AS "sv_4", 0.143897 AS "sv_5", 0.647314 AS "sv_6", -0.581599 AS "sv_7", -1.080055 AS "sv_8", -0.613064 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 0.749310 AS "sv_0", 1.216005 AS "sv_1", -0.907409 AS "sv_2", -0.798181 AS "sv_3", -0.805337 AS "sv_4", -0.637038 AS "sv_5", -0.939167 AS "sv_6", 0.280106 AS "sv_7", -0.344344 AS "sv_8", -0.090137 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 0.042180 AS "sv_0", 0.673156 AS "sv_1", -0.040369 AS "sv_2", 0.037965 AS "sv_3", 0.701048 AS "sv_4", -0.983169 AS "sv_5", -0.321616 AS "sv_6", -1.183959 AS "sv_7", -0.324568 AS "sv_8", 0.491478 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.958105 AS "sv_0", -1.214640 AS "sv_1", -0.098692 AS "sv_2", 0.326701 AS "sv_3", 0.242328 AS "sv_4", -0.496785 AS "sv_5", -0.227434 AS "sv_6", 0.693834 AS "sv_7", 1.157643 AS "sv_8", -1.215565 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.417597 AS "sv_0", 0.730696 AS "sv_1", -0.769116 AS "sv_2", 1.582674 AS "sv_3", -1.135426 AS "sv_4", 0.046811 AS "sv_5", -0.624071 AS "sv_6", 0.236372 AS "sv_7", 0.850274 AS "sv_8", -0.545211 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.050769 AS "sv_0", 0.523799 AS "sv_1", 0.559831 AS "sv_2", 1.128912 AS "sv_3", 1.231978 AS "sv_4", -0.559530 AS "sv_5", 0.300257 AS "sv_6", -1.203015 AS "sv_7", -0.989711 AS "sv_8", -2.813570 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -0.232754 AS "sv_0", -0.439976 AS "sv_1", 0.152074 AS "sv_2", 1.028692 AS "sv_3", 1.104028 AS "sv_4", -1.148925 AS "sv_5", -0.210611 AS "sv_6", 1.410740 AS "sv_7", 0.731564 AS "sv_8", 0.634332 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.917933 AS "sv_0", 0.897552 AS "sv_1", 0.753642 AS "sv_2", 0.024561 AS "sv_3", 0.427364 AS "sv_4", 0.842022 AS "sv_5", 0.871731 AS "sv_6", 0.375547 AS "sv_7", -0.585348 AS "sv_8", -0.876211 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.239139 AS "sv_0", -0.619959 AS "sv_1", -0.223669 AS "sv_2", -2.099873 AS "sv_3", 0.538750 AS "sv_4", -1.112349 AS "sv_5", -0.511477 AS "sv_6", 0.728113 AS "sv_7", -0.995430 AS "sv_8", -0.608079 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.123207 AS "sv_0", 0.820741 AS "sv_1", 0.307790 AS "sv_2", 0.571600 AS "sv_3", 1.188608 AS "sv_4", -0.970127 AS "sv_5", -0.029083 AS "sv_6", -0.348400 AS "sv_7", -2.114189 AS "sv_8", 0.674955 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -0.872249 AS "sv_0", -0.042832 AS "sv_1", 0.432945 AS "sv_2", 0.263559 AS "sv_3", 1.198235 AS "sv_4", -0.750806 AS "sv_5", 0.138978 AS "sv_6", 0.199300 AS "sv_7", -0.406296 AS "sv_8", -0.690144 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.765136 AS "sv_0", -0.225675 AS "sv_1", 0.438678 AS "sv_2", -0.269460 AS "sv_3", 1.287003 AS "sv_4", -0.855211 AS "sv_5", 0.113135 AS "sv_6", -1.117348 AS "sv_7", 0.133119 AS "sv_8", -0.536671 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -0.763004 AS "sv_0", 1.439044 AS "sv_1", 0.092168 AS "sv_2", -1.135180 AS "sv_3", 0.882385 AS "sv_4", -0.972675 AS "sv_5", -0.208635 AS "sv_6", -0.483706 AS "sv_7", 0.286213 AS "sv_8", -0.325520 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.954110 AS "sv_0", 0.936175 AS "sv_1", -1.665918 AS "sv_2", -0.483318 AS "sv_3", -1.653598 AS "sv_4", -0.942686 AS "sv_5", -1.657738 AS "sv_6", 1.892900 AS "sv_7", 1.779737 AS "sv_8", -0.521860 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -0.822533 AS "sv_0", -0.295668 AS "sv_1", -0.753569 AS "sv_2", 1.032943 AS "sv_3", -0.653910 AS "sv_4", -0.548333 AS "sv_5", -0.785598 AS "sv_6", -1.543056 AS "sv_7", 0.390884 AS "sv_8", 0.813279 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 0.777269 AS "sv_0", 0.596671 AS "sv_1", -0.307377 AS "sv_2", 0.321773 AS "sv_3", -0.131082 AS "sv_4", -0.399427 AS "sv_5", -0.371953 AS "sv_6", -1.030974 AS "sv_7", -0.745758 AS "sv_8", -0.877383 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 0.025352 AS "sv_0", 1.091216 AS "sv_1", -0.438659 AS "sv_2", 0.425302 AS "sv_3", -1.342398 AS "sv_4", 0.927026 AS "sv_5", -0.092072 AS "sv_6", 0.291900 AS "sv_7", 0.249386 AS "sv_8", -0.135896 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -0.430038 AS "sv_0", 0.062904 AS "sv_1", -0.619840 AS "sv_2", 0.348570 AS "sv_3", 0.228203 AS "sv_4", -1.443681 AS "sv_5", -0.937106 AS "sv_6", 0.376445 AS "sv_7", -1.183821 AS "sv_8", 0.335920 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -0.370192 AS "sv_0", 0.094830 AS "sv_1", 1.003462 AS "sv_2", 0.941049 AS "sv_3", 0.965366 AS "sv_4", 0.607572 AS "sv_5", 1.010183 AS "sv_6", 0.432550 AS "sv_7", 0.064271 AS "sv_8", -0.902377 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 0.989920 AS "sv_0", -0.320205 AS "sv_1", 0.478699 AS "sv_2", -0.175386 AS "sv_3", 0.775139 AS "sv_4", -0.117829 AS "sv_5", 0.362428 AS "sv_6", 2.636853 AS "sv_7", -0.021523 AS "sv_8", 0.639712 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 0.549095 AS "sv_0", -0.393391 AS "sv_1", -0.183711 AS "sv_2", 0.489826 AS "sv_3", -0.292501 AS "sv_4", 0.038773 AS "sv_5", -0.140979 AS "sv_6", -0.481661 AS "sv_7", 0.267929 AS "sv_8", -0.098876 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 0.219789 AS "sv_0", -0.710395 AS "sv_1", -0.159988 AS "sv_2", -0.898369 AS "sv_3", 0.558089 AS "sv_4", -1.019468 AS "sv_5", -0.431449 AS "sv_6", -0.820119 AS "sv_7", -0.856557 AS "sv_8", -0.103824 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.437801 AS "sv_0", -1.279199 AS "sv_1", 1.095962 AS "sv_2", -0.442130 AS "sv_3", 0.770463 AS "sv_4", 1.031438 AS "sv_5", 1.211112 AS "sv_6", 1.100284 AS "sv_7", -1.825507 AS "sv_8", -0.649406 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -0.096546 AS "sv_0", 0.326551 AS "sv_1", -0.564688 AS "sv_2", -0.374583 AS "sv_3", 0.095026 AS "sv_4", -1.168969 AS "sv_5", -0.810860 AS "sv_6", 0.676106 AS "sv_7", -1.264217 AS "sv_8", -0.214869 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -0.149553 AS "sv_0", -1.437827 AS "sv_1", -0.205293 AS "sv_2", -0.807086 AS "sv_3", -1.996938 AS "sv_4", 2.207373 AS "sv_5", 0.476682 AS "sv_6", -0.274419 AS "sv_7", 0.172991 AS "sv_8", -0.840230 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 0.402525 AS "sv_0", -0.365506 AS "sv_1", 0.671943 AS "sv_2", -1.440930 AS "sv_3", 0.759143 AS "sv_4", 0.260798 AS "sv_5", 0.633641 AS "sv_6", -0.203361 AS "sv_7", 0.963563 AS "sv_8", 0.212135 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 0.583465 AS "sv_0", -0.723047 AS "sv_1", -0.597374 AS "sv_2", -0.594423 AS "sv_3", -0.197449 AS "sv_4", -0.850523 AS "sv_5", -0.744638 AS "sv_6", -0.253467 AS "sv_7", 0.417121 AS "sv_8", -1.184265 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 2.533009 AS "sv_0", -0.797929 AS "sv_1", -0.747149 AS "sv_2", -0.617123 AS "sv_3", -0.479465 AS "sv_4", -0.762485 AS "sv_5", -0.843037 AS "sv_6", -2.688770 AS "sv_7", 0.809043 AS "sv_8", -0.738149 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 1.035159 AS "sv_0", 0.787988 AS "sv_1", -0.182468 AS "sv_2", 0.279660 AS "sv_3", -0.476007 AS "sv_4", 0.278857 AS "sv_5", -0.069587 AS "sv_6", -0.199727 AS "sv_7", 0.318900 AS "sv_8", 0.347799 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 0.106440 AS "sv_0", 0.753236 AS "sv_1", 1.021214 AS "sv_2", -0.570944 AS "sv_3", 0.845808 AS "sv_4", 0.795371 AS "sv_5", 1.079944 AS "sv_6", -0.673985 AS "sv_7", -1.497403 AS "sv_8", 1.174173 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 0.244549 AS "sv_0", -0.114573 AS "sv_1", 1.073664 AS "sv_2", 0.389901 AS "sv_3", 1.187633 AS "sv_4", 0.449582 AS "sv_5", 1.022096 AS "sv_6", -0.185604 AS "sv_7", 0.102623 AS "sv_8", -1.556498 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -0.433196 AS "sv_0", 0.166770 AS "sv_1", 0.003328 AS "sv_2", 0.009323 AS "sv_3", 0.713744 AS "sv_4", -0.918690 AS "sv_5", -0.266484 AS "sv_6", -0.076302 AS "sv_7", -0.134608 AS "sv_8", 0.771021 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -0.861350 AS "sv_0", 0.262988 AS "sv_1", 0.874268 AS "sv_2", 1.165662 AS "sv_3", 1.285098 AS "sv_4", -0.046004 AS "sv_5", 0.711504 AS "sv_6", -0.033489 AS "sv_7", 0.298955 AS "sv_8", 2.835485 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 0.775386 AS "sv_0", -0.666285 AS "sv_1", -0.563112 AS "sv_2", -0.478699 AS "sv_3", -0.911327 AS "sv_4", 0.137959 AS "sv_5", -0.426528 AS "sv_6", 0.229164 AS "sv_7", 1.208903 AS "sv_8", 0.637983 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 0.605484 AS "sv_0", -0.776307 AS "sv_1", -0.522663 AS "sv_2", 0.659222 AS "sv_3", -0.568767 AS "sv_4", -0.231007 AS "sv_5", -0.501120 AS "sv_6", 1.574529 AS "sv_7", -1.137054 AS "sv_8", 0.812275 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -0.135087 AS "sv_0", 1.326329 AS "sv_1", 0.340759 AS "sv_2", -2.533357 AS "sv_3", 1.107253 AS "sv_4", -0.803648 AS "sv_5", 0.047047 AS "sv_6", 1.263514 AS "sv_7", -2.571504 AS "sv_8", 0.800477 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -0.409265 AS "sv_0", 0.122513 AS "sv_1", -0.547327 AS "sv_2", 0.254159 AS "sv_3", -0.013538 AS "sv_4", -0.996141 AS "sv_5", -0.745813 AS "sv_6", -0.336252 AS "sv_7", -0.972778 AS "sv_8", 0.437569 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 2.465637 AS "sv_0", -0.399825 AS "sv_1", 1.161739 AS "sv_2", -1.664284 AS "sv_3", 1.552280 AS "sv_4", 0.140200 AS "sv_5", 1.004461 AS "sv_6", 1.036544 AS "sv_7", -1.013035 AS "sv_8", -2.511321 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 0.999864 AS "sv_0", -1.309848 AS "sv_1", 0.130094 AS "sv_2", -1.037358 AS "sv_3", -0.425384 AS "sv_4", 0.792146 AS "sv_5", 0.340037 AS "sv_6", 2.425021 AS "sv_7", -0.228479 AS "sv_8", -2.777180 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -0.775713 AS "sv_0", 1.159506 AS "sv_1", -0.134719 AS "sv_2", -0.394026 AS "sv_3", 1.166724 AS "sv_4", -1.761323 AS "sv_5", -0.627912 AS "sv_6", 0.416977 AS "sv_7", -1.100255 AS "sv_8", 2.191014 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 0.462780 AS "sv_0", -0.582493 AS "sv_1", -0.478403 AS "sv_2", 1.335702 AS "sv_3", -0.532153 AS "sv_4", -0.196479 AS "sv_5", -0.454298 AS "sv_6", 0.786311 AS "sv_7", 0.972605 AS "sv_8", -1.593674 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 0.556343 AS "sv_0", -0.175369 AS "sv_1", -0.136218 AS "sv_2", 0.189105 AS "sv_3", -0.829575 AS "sv_4", 0.822661 AS "sv_5", 0.128141 AS "sv_6", -0.351191 AS "sv_7", -1.337310 AS "sv_8", -0.330152 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -0.230559 AS "sv_0", 0.500465 AS "sv_1", 0.505986 AS "sv_2", -0.766198 AS "sv_3", 0.304719 AS "sv_4", 0.542269 AS "sv_5", 0.578513 AS "sv_6", 1.124081 AS "sv_7", 0.016601 AS "sv_8", -0.199530 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.305690 AS "sv_0", -0.651489 AS "sv_1", -0.151039 AS "sv_2", 1.100334 AS "sv_3", -0.241327 AS "sv_4", 0.032973 AS "sv_5", -0.115585 AS "sv_6", -0.662832 AS "sv_7", 0.829804 AS "sv_8", 2.037389 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 0.847987 AS "sv_0", -0.078793 AS "sv_1", 0.237402 AS "sv_2", -0.847843 AS "sv_3", -0.342624 AS "sv_4", 0.883648 AS "sv_5", 0.455839 AS "sv_6", -1.143960 AS "sv_7", -0.837326 AS "sv_8", 2.597545 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.537976 AS "sv_0", -0.863574 AS "sv_1", -0.339109 AS "sv_2", 0.416003 AS "sv_3", -0.718780 AS "sv_4", 0.303330 AS "sv_5", -0.192308 AS "sv_6", -1.807600 AS "sv_7", -0.932955 AS "sv_8", -0.606641 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -0.277204 AS "sv_0", 1.808595 AS "sv_1", 1.110789 AS "sv_2", 0.454171 AS "sv_3", 1.055422 AS "sv_4", 0.689656 AS "sv_5", 1.123241 AS "sv_6", -0.978430 AS "sv_7", 0.434694 AS "sv_8", 1.196422 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", -1.133724 AS "sv_0", 2.038069 AS "sv_1", -0.184333 AS "sv_2", 1.721876 AS "sv_3", 0.169193 AS "sv_4", -0.560631 AS "sv_5", -0.317164 AS "sv_6", 0.290300 AS "sv_7", 0.047543 AS "sv_8", -0.644777 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -0.206900 AS "sv_0", -1.686193 AS "sv_1", 0.721472 AS "sv_2", 0.268158 AS "sv_3", 1.074458 AS "sv_4", -0.056050 AS "sv_5", 0.581854 AS "sv_6", -1.390872 AS "sv_7", 0.472834 AS "sv_8", -0.340860 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", -1.404418 AS "sv_0", -0.650283 AS "sv_1", 0.024221 AS "sv_2", 0.269175 AS "sv_3", 0.587425 AS "sv_4", -0.716314 AS "sv_5", -0.189847 AS "sv_6", -0.740263 AS "sv_7", -0.380991 AS "sv_8", 0.720936 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", 2.443571 AS "sv_0", 0.480164 AS "sv_1", -0.128205 AS "sv_2", -0.861735 AS "sv_3", 0.391699 AS "sv_4", -0.744998 AS "sv_5", -0.324653 AS "sv_6", -0.404243 AS "sv_7", -0.158566 AS "sv_8", 0.087042 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", -0.259218 AS "sv_0", 0.134447 AS "sv_1", -0.682018 AS "sv_2", -1.521565 AS "sv_3", -1.662491 AS "sv_4", 0.891079 AS "sv_5", -0.304413 AS "sv_6", 1.044012 AS "sv_7", -0.535484 AS "sv_8", 0.747064 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", -0.625684 AS "sv_0", 0.307806 AS "sv_1", -0.141908 AS "sv_2", 0.260656 AS "sv_3", -0.538167 AS "sv_4", 0.434523 AS "sv_5", 0.009669 AS "sv_6", 0.492924 AS "sv_7", -0.455051 AS "sv_8", 0.491106 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", 0.530557 AS "sv_0", -0.717383 AS "sv_1", 0.896982 AS "sv_2", -0.041213 AS "sv_3", 1.053575 AS "sv_4", 0.296066 AS "sv_5", 0.830591 AS "sv_6", 0.164769 AS "sv_7", -0.793476 AS "sv_8", -0.176994 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -0.213974 AS "sv_0", 0.861809 AS "sv_1", -0.689691 AS "sv_2", -0.117473 AS "sv_3", -1.251073 AS "sv_4", 0.343764 AS "sv_5", -0.471178 AS "sv_6", 0.643569 AS "sv_7", 1.946174 AS "sv_8", 0.552405 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -2.024612 AS "sv_0", 0.775559 AS "sv_1", 1.027187 AS "sv_2", -1.392295 AS "sv_3", 0.837006 AS "sv_4", 0.817838 AS "sv_5", 1.091481 AS "sv_6", 0.474760 AS "sv_7", 0.609822 AS "sv_8", 0.478127 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", -0.455936 AS "sv_0", 0.296664 AS "sv_1", -0.161701 AS "sv_2", 1.279009 AS "sv_3", -0.384633 AS "sv_4", 0.198918 AS "sv_5", -0.075793 AS "sv_6", 0.228449 AS "sv_7", -0.197016 AS "sv_8", -1.982372 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", -0.489429 AS "sv_0", -0.748289 AS "sv_1", 0.404543 AS "sv_2", 1.610682 AS "sv_3", 0.528732 AS "sv_4", 0.064119 AS "sv_5", 0.354259 AS "sv_6", 0.789954 AS "sv_7", -0.140492 AS "sv_8", 2.688408 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", 0.349104 AS "sv_0", -1.882102 AS "sv_1", -0.689086 AS "sv_2", -0.936671 AS "sv_3", -0.298001 AS "sv_4", -0.890086 AS "sv_5", -0.832284 AS "sv_6", -0.748723 AS "sv_7", -1.427868 AS "sv_8", -0.178403 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", -0.273276 AS "sv_0", 0.655912 AS "sv_1", -0.531521 AS "sv_2", 0.447405 AS "sv_3", -0.250323 AS "sv_4", -0.660047 AS "sv_5", -0.634206 AS "sv_6", -0.917456 AS "sv_7", -0.750950 AS "sv_8", -1.043427 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", -0.467577 AS "sv_0", 0.592544 AS "sv_1", -0.692527 AS "sv_2", 1.133998 AS "sv_3", -0.456837 AS "sv_4", -0.690642 AS "sv_5", -0.776686 AS "sv_6", -1.452814 AS "sv_7", 0.034810 AS "sv_8", -1.449333 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", -0.451578 AS "sv_0", 0.764450 AS "sv_1", -0.065406 AS "sv_2", -0.262879 AS "sv_3", 0.655615 AS "sv_4", -0.970667 AS "sv_5", -0.338714 AS "sv_6", 1.513491 AS "sv_7", 1.988053 AS "sv_8", 0.799205 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", 1.251911 AS "sv_0", -0.068511 AS "sv_1", 0.374781 AS "sv_2", -0.561331 AS "sv_3", 0.683739 AS "sv_4", -0.191856 AS "sv_5", 0.254560 AS "sv_6", 0.951295 AS "sv_7", 0.167377 AS "sv_8", 0.000178 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", -0.001365 AS "sv_0", -0.028940 AS "sv_1", 0.796114 AS "sv_2", 0.350515 AS "sv_3", 0.914492 AS "sv_4", 0.289473 AS "sv_5", 0.745014 AS "sv_6", -0.502535 AS "sv_7", 0.866424 AS "sv_8", -1.322862 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", 1.179245 AS "sv_0", 1.232050 AS "sv_1", -0.446605 AS "sv_2", 1.326972 AS "sv_3", -0.148856 AS "sv_4", -0.634256 AS "sv_5", -0.556230 AS "sv_6", -2.538231 AS "sv_7", -0.258162 AS "sv_8", 0.524081 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 0.447799 AS "sv_0", -0.132510 AS "sv_1", 1.000728 AS "sv_2", 0.781879 AS "sv_3", 1.147878 AS "sv_4", 0.366015 AS "sv_5", 0.937123 AS "sv_6", 0.370077 AS "sv_7", 1.492775 AS "sv_8", -0.115466 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", 0.603049 AS "sv_0", -0.578280 AS "sv_1", -0.111401 AS "sv_2", 2.167817 AS "sv_3", 0.700158 AS "sv_4", -1.113570 AS "sv_5", -0.418736 AS "sv_6", 0.510935 AS "sv_7", -0.573617 AS "sv_8", 0.092111 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 0.204093 AS "sv_0", 2.260404 AS "sv_1", 1.668873 AS "sv_2", 0.741921 AS "sv_3", 0.974773 AS "sv_4", 1.827764 AS "sv_5", 1.919580 AS "sv_6", 0.449974 AS "sv_7", 0.329801 AS "sv_8", 0.125232 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", 1.241061 AS "sv_0", 0.212693 AS "sv_1", 0.917744 AS "sv_2", 1.314423 AS "sv_3", 0.776503 AS "sv_4", 0.693543 AS "sv_5", 0.964298 AS "sv_6", -0.002637 AS "sv_7", -1.452695 AS "sv_8", 0.253975 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", 0.527542 AS "sv_0", 0.110675 AS "sv_1", -0.608606 AS "sv_2", -1.314494 AS "sv_3", -0.405059 AS "sv_4", -0.602308 AS "sv_5", -0.681207 AS "sv_6", 0.538790 AS "sv_7", 0.589049 AS "sv_8", -1.364554 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -0.303311 AS "sv_0", -0.003377 AS "sv_1", -1.086866 AS "sv_2", 0.853755 AS "sv_3", -1.862979 AS "sv_4", 0.401066 AS "sv_5", -0.783742 AS "sv_6", -0.103135 AS "sv_7", -1.971602 AS "sv_8", 2.226125 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", -0.058483 AS "sv_0", -1.779904 AS "sv_1", -0.254862 AS "sv_2", -1.304466 AS "sv_3", -0.423673 AS "sv_4", 0.076967 AS "sv_5", -0.188787 AS "sv_6", 0.493898 AS "sv_7", -0.153581 AS "sv_8", -0.985507 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -0.899949 AS "sv_0", 1.417506 AS "sv_1", 0.234098 AS "sv_2", 0.054897 AS "sv_3", 0.918551 AS "sv_4", -0.756675 AS "sv_5", -0.027636 AS "sv_6", 0.201077 AS "sv_7", 1.065277 AS "sv_8", -0.527426 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 1.372308 AS "sv_0", -0.697183 AS "sv_1", 1.020035 AS "sv_2", -0.159894 AS "sv_3", 0.957476 AS "sv_4", 0.648491 AS "sv_5", 1.035919 AS "sv_6", 0.162336 AS "sv_7", -0.034774 AS "sv_8", -1.017369 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", 0.739356 AS "sv_0", 0.040085 AS "sv_1", -0.293706 AS "sv_2", -1.073093 AS "sv_3", -0.645207 AS "sv_4", 0.292082 AS "sv_5", -0.157955 AS "sv_6", 1.367823 AS "sv_7", -0.883563 AS "sv_8", 0.285353 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", 0.012511 AS "sv_0", 0.276259 AS "sv_1", -0.478931 AS "sv_2", 0.271257 AS "sv_3", -0.466769 AS "sv_4", -0.282180 AS "sv_5", -0.479853 AS "sv_6", -0.828294 AS "sv_7", -1.311457 AS "sv_8", -0.365120 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", 0.688917 AS "sv_0", 1.581740 AS "sv_1", -0.147423 AS "sv_2", 0.338287 AS "sv_3", 0.241546 AS "sv_4", -0.586026 AS "sv_5", -0.293999 AS "sv_6", -0.408070 AS "sv_7", 0.629434 AS "sv_8", -1.044325 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", -1.007814 AS "sv_0", -1.230513 AS "sv_1", 1.254956 AS "sv_2", -0.081134 AS "sv_3", 1.088056 AS "sv_4", 0.914375 AS "sv_5", 1.308651 AS "sv_6", 0.234653 AS "sv_7", -1.451065 AS "sv_8", 0.798517 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", 1.797731 AS "sv_0", 0.343225 AS "sv_1", 0.993908 AS "sv_2", 1.477210 AS "sv_3", 0.967019 AS "sv_4", 0.587735 AS "sv_5", 0.996447 AS "sv_6", 0.511942 AS "sv_7", 0.605879 AS "sv_8", -1.549817 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", -0.654719 AS "sv_0", 1.581340 AS "sv_1", 1.298027 AS "sv_2", -0.374346 AS "sv_3", 1.019833 AS "sv_4", 1.082548 AS "sv_5", 1.393655 AS "sv_6", -0.522319 AS "sv_7", 0.828663 AS "sv_8", 0.019806 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", -0.794474 AS "sv_0", -1.353071 AS "sv_1", 1.145184 AS "sv_2", 0.882305 AS "sv_3", 1.031113 AS "sv_4", 0.784857 AS "sv_5", 1.179664 AS "sv_6", -1.839275 AS "sv_7", 0.983311 AS "sv_8", 0.006702 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 0.330976 AS "sv_0", -0.786910 AS "sv_1", 0.918334 AS "sv_2", -0.012289 AS "sv_3", 0.980014 AS "sv_4", 0.430929 AS "sv_5", 0.887822 AS "sv_6", 1.592387 AS "sv_7", 0.363615 AS "sv_8", -0.447424 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", -0.260143 AS "sv_0", -0.125264 AS "sv_1", -0.259481 AS "sv_2", -0.487871 AS "sv_3", -0.793742 AS "sv_4", 0.547938 AS "sv_5", -0.054589 AS "sv_6", 0.294207 AS "sv_7", 1.505260 AS "sv_8", 0.061732 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", -0.758529 AS "sv_0", 0.495839 AS "sv_1", 1.027690 AS "sv_2", -0.978448 AS "sv_3", 0.939524 AS "sv_4", 0.685931 AS "sv_5", 1.053240 AS "sv_6", 1.637470 AS "sv_7", 1.614820 AS "sv_8", 0.895889 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", -1.598145 AS "sv_0", -0.807512 AS "sv_1", 0.871119 AS "sv_2", -0.790449 AS "sv_3", 0.986910 AS "sv_4", 0.334549 AS "sv_5", 0.820422 AS "sv_6", -0.607904 AS "sv_7", 0.021321 AS "sv_8", -1.727536 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 0.143193 AS "sv_0", 0.062271 AS "sv_1", -0.250218 AS "sv_2", 1.420221 AS "sv_3", -0.359574 AS "sv_4", 0.002509 AS "sv_5", -0.206758 AS "sv_6", -0.900621 AS "sv_7", -1.149689 AS "sv_8", -0.016134 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", 0.515021 AS "sv_0", 0.355015 AS "sv_1", 0.915202 AS "sv_2", -0.055302 AS "sv_3", 0.957182 AS "sv_4", 0.454714 AS "sv_5", 0.892195 AS "sv_6", -0.591067 AS "sv_7", -0.406366 AS "sv_8", 2.332328 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 2.184623 AS "sv_0", 0.294503 AS "sv_1", 1.250483 AS "sv_2", 0.933107 AS "sv_3", 1.012313 AS "sv_4", 1.004238 AS "sv_5", 1.331278 AS "sv_6", 0.155584 AS "sv_7", -1.522666 AS "sv_8", -0.397962 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", 0.489245 AS "sv_0", -0.385577 AS "sv_1", 0.115135 AS "sv_2", -1.645061 AS "sv_3", -2.553516 AS "sv_4", 3.522026 AS "sv_5", 1.127686 AS "sv_6", 0.257919 AS "sv_7", -0.646885 AS "sv_8", 1.212724 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", -0.286097 AS "sv_0", -0.891766 AS "sv_1", -0.107237 AS "sv_2", -0.133323 AS "sv_3", -1.006487 AS "sv_4", 1.105574 AS "sv_5", 0.235087 AS "sv_6", -1.993744 AS "sv_7", 1.334763 AS "sv_8", -0.978082 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", -1.828214 AS "sv_0", -0.945604 AS "sv_1", 1.189673 AS "sv_2", -0.527387 AS "sv_3", 1.005531 AS "sv_4", 0.900402 AS "sv_5", 1.250419 AS "sv_6", 0.580760 AS "sv_7", -1.493396 AS "sv_8", -1.050581 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", -0.332793 AS "sv_0", 0.844823 AS "sv_1", -0.170792 AS "sv_2", 0.420555 AS "sv_3", -0.813164 AS "sv_4", 0.737363 AS "sv_5", 0.074472 AS "sv_6", 0.169375 AS "sv_7", -0.300907 AS "sv_8", -1.798404 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", 0.302626 AS "sv_0", -1.420232 AS "sv_1", -0.254878 AS "sv_2", -0.590669 AS "sv_3", -0.492311 AS "sv_4", 0.165875 AS "sv_5", -0.162744 AS "sv_6", 0.711084 AS "sv_7", -0.049331 AS "sv_8", -0.692549 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 1.198369 AS "sv_0", -1.146429 AS "sv_1", -0.070497 AS "sv_2", 1.282457 AS "sv_3", -0.528170 AS "sv_4", 0.553827 AS "sv_5", 0.103852 AS "sv_6", 1.524966 AS "sv_7", -0.841180 AS "sv_8", 1.304640 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", 0.133676 AS "sv_0", 0.172142 AS "sv_1", 1.648311 AS "sv_2", 2.169299 AS "sv_3", 1.016502 AS "sv_4", 1.735610 AS "sv_5", 1.875522 AS "sv_6", -1.094143 AS "sv_7", -0.386320 AS "sv_8", -0.608756 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", -1.100434 AS "sv_0", -0.750347 AS "sv_1", -0.357655 AS "sv_2", -1.397669 AS "sv_3", -1.019403 AS "sv_4", 0.658521 AS "sv_5", -0.103591 AS "sv_6", -0.159443 AS "sv_7", -0.234435 AS "sv_8", -1.380261 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", -0.748524 AS "sv_0", 1.878403 AS "sv_1", 0.238373 AS "sv_2", -0.231430 AS "sv_3", 0.943549 AS "sv_4", -0.781149 AS "sv_5", -0.031263 AS "sv_6", -0.878277 AS "sv_7", -0.508412 AS "sv_8", -1.198498 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", 0.112675 AS "sv_0", 0.061896 AS "sv_1", 0.392449 AS "sv_2", 0.451280 AS "sv_3", 0.890803 AS "sv_4", -0.427442 AS "sv_5", 0.200167 AS "sv_6", -0.104017 AS "sv_7", 0.522222 AS "sv_8", 0.171454 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", 1.318963 AS "sv_0", 0.203376 AS "sv_1", -0.510421 AS "sv_2", 0.482600 AS "sv_3", 0.153388 AS "sv_4", -1.144087 AS "sv_5", -0.758567 AS "sv_6", -1.783432 AS "sv_7", 0.693461 AS "sv_8", -0.590666 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", -0.302470 AS "sv_0", 1.356415 AS "sv_1", -0.362392 AS "sv_2", -0.177181 AS "sv_3", -1.196000 AS "sv_4", 0.878578 AS "sv_5", -0.043026 AS "sv_6", 0.517212 AS "sv_7", 1.186677 AS "sv_8", 0.098547 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", 0.819418 AS "sv_0", 0.946769 AS "sv_1", 0.088524 AS "sv_2", 0.107384 AS "sv_3", -0.599088 AS "sv_4", 0.940238 AS "sv_5", 0.348967 AS "sv_6", -1.799496 AS "sv_7", 0.505171 AS "sv_8", 1.615504 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 0.286715 AS "sv_0", -0.829992 AS "sv_1", -0.104758 AS "sv_2", -0.177255 AS "sv_3", -1.430476 AS "sv_4", 1.659562 AS "sv_5", 0.399502 AS "sv_6", 1.285677 AS "sv_7", -0.844272 AS "sv_8", 2.563963 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", 2.095848 AS "sv_0", 0.238441 AS "sv_1", 1.356247 AS "sv_2", 1.176403 AS "sv_3", 1.028362 AS "sv_4", 1.179322 AS "sv_5", 1.470295 AS "sv_6", 0.059515 AS "sv_7", 2.037199 AS "sv_8", 1.084180 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", 0.519357 AS "sv_0", 0.418451 AS "sv_1", 0.699414 AS "sv_2", 0.413981 AS "sv_3", 0.929892 AS "sv_4", 0.090423 AS "sv_5", 0.606489 AS "sv_6", 1.953913 AS "sv_7", 0.443428 AS "sv_8", 0.236337 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.120785 AS "sv_0", 0.327921 AS "sv_1", 0.778438 AS "sv_2", -0.586316 AS "sv_3", 0.940217 AS "sv_4", 0.223402 AS "sv_5", 0.710993 AS "sv_6", -0.813768 AS "sv_7", 0.544365 AS "sv_8", 2.547697 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", 0.371505 AS "sv_0", 0.522010 AS "sv_1", 0.720646 AS "sv_2", 1.004317 AS "sv_3", 0.948673 AS "sv_4", 0.105410 AS "sv_5", 0.628488 AS "sv_6", 0.047159 AS "sv_7", -0.516722 AS "sv_8", -1.793946 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", -1.059741 AS "sv_0", -0.165722 AS "sv_1", 1.187014 AS "sv_2", 0.860703 AS "sv_3", 1.007643 AS "sv_4", 0.892740 AS "sv_5", 1.245969 AS "sv_6", 0.270537 AS "sv_7", -1.500866 AS "sv_8", -0.550293 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", -0.324339 AS "sv_0", -0.722261 AS "sv_1", 0.569157 AS "sv_2", 0.967609 AS "sv_3", 0.951582 AS "sv_4", -0.178926 AS "sv_5", 0.419535 AS "sv_6", 1.398441 AS "sv_7", 0.462846 AS "sv_8", 0.128738 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", -0.084474 AS "sv_0", -1.372683 AS "sv_1", -0.163000 AS "sv_2", 0.606019 AS "sv_3", -1.286003 AS "sv_4", 1.364488 AS "sv_5", 0.264726 AS "sv_6", -0.005479 AS "sv_7", -1.462673 AS "sv_8", -1.470674 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", -0.485481 AS "sv_0", 0.639806 AS "sv_1", -0.403360 AS "sv_2", 0.312649 AS "sv_3", 0.217847 AS "sv_4", -1.029328 AS "sv_5", -0.636154 AS "sv_6", 2.171299 AS "sv_7", 0.452828 AS "sv_8", 2.283275 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", -1.337592 AS "sv_0", -0.029872 AS "sv_1", 1.216583 AS "sv_2", -1.105183 AS "sv_3", 0.956508 AS "sv_4", 1.013762 AS "sv_5", 1.305957 AS "sv_6", 0.596395 AS "sv_7", -1.011586 AS "sv_8", -0.207941 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", 0.879701 AS "sv_0", -2.330260 AS "sv_1", -0.194462 AS "sv_2", -0.686508 AS "sv_3", -2.217880 AS "sv_4", 2.513726 AS "sv_5", 0.575447 AS "sv_6", -1.283660 AS "sv_7", 0.943493 AS "sv_8", -1.961285 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", -2.188798 AS "sv_0", 1.247514 AS "sv_1", -0.196171 AS "sv_2", 0.071459 AS "sv_3", -0.606263 AS "sv_4", 0.422263 AS "sv_5", -0.038921 AS "sv_6", 1.521653 AS "sv_7", -0.605569 AS "sv_8", -1.014692 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", 0.021446 AS "sv_0", 1.814789 AS "sv_1", -0.013641 AS "sv_2", -0.177948 AS "sv_3", 0.911978 AS "sv_4", -1.206984 AS "sv_5", -0.365046 AS "sv_6", 0.302179 AS "sv_7", -0.591532 AS "sv_8", 0.288268 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", -0.750818 AS "sv_0", 1.536321 AS "sv_1", 0.910231 AS "sv_2", -0.644372 AS "sv_3", 0.973998 AS "sv_4", 0.423717 AS "sv_5", 0.878989 AS "sv_6", -0.577707 AS "sv_7", 0.019270 AS "sv_8", 0.723786 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", 0.510354 AS "sv_0", -0.710387 AS "sv_1", -0.397210 AS "sv_2", 0.813347 AS "sv_3", -1.864224 AS "sv_4", 1.679963 AS "sv_5", 0.162965 AS "sv_6", -0.889121 AS "sv_7", 0.800536 AS "sv_8", 0.785257 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", -0.105788 AS "sv_0", -1.400364 AS "sv_1", -0.441051 AS "sv_2", 1.202273 AS "sv_3", 0.106194 AS "sv_4", -0.954457 AS "sv_5", -0.645467 AS "sv_6", 0.033406 AS "sv_7", -0.148326 AS "sv_8", 2.467227 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", -1.930692 AS "sv_0", 1.801873 AS "sv_1", 0.470707 AS "sv_2", 1.303877 AS "sv_3", 0.888982 AS "sv_4", -0.280146 AS "sv_5", 0.308230 AS "sv_6", 1.633787 AS "sv_7", 0.375851 AS "sv_8", 2.331842 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", -1.335243 AS "sv_0", -0.492350 AS "sv_1", -0.333559 AS "sv_2", 2.108780 AS "sv_3", -1.122962 AS "sv_4", 0.837338 AS "sv_5", -0.031203 AS "sv_6", 0.693451 AS "sv_7", 0.797554 AS "sv_8", -1.877447 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", -1.229875 AS "sv_0", 0.060725 AS "sv_1", -0.278011 AS "sv_2", 0.500876 AS "sv_3", 0.249257 AS "sv_4", -0.837876 AS "sv_5", -0.476099 AS "sv_6", 0.203125 AS "sv_7", 0.438541 AS "sv_8", -0.072711 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", 0.637392 AS "sv_0", -2.262798 AS "sv_1", 1.132294 AS "sv_2", 0.356628 AS "sv_3", 1.019703 AS "sv_4", 0.775768 AS "sv_5", 1.166311 AS "sv_6", 0.004531 AS "sv_7", -2.943059 AS "sv_8", -0.072162 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", 0.445817 AS "sv_0", -1.370166 AS "sv_1", 0.177625 AS "sv_2", -0.519608 AS "sv_3", -1.057266 AS "sv_4", 1.698955 AS "sv_5", 0.645213 AS "sv_6", -0.827529 AS "sv_7", -0.868197 AS "sv_8", 0.187923 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", -0.044770 AS "sv_0", -1.276061 AS "sv_1", -0.498138 AS "sv_2", -0.217024 AS "sv_3", 0.431760 AS "sv_4", -1.482048 AS "sv_5", -0.847429 AS "sv_6", -0.890030 AS "sv_7", -0.216479 AS "sv_8", -0.127088 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", -0.352004 AS "sv_0", 0.259679 AS "sv_1", 0.518758 AS "sv_2", 0.255561 AS "sv_3", 0.945797 AS "sv_4", -0.264773 AS "sv_5", 0.352582 AS "sv_6", 0.282937 AS "sv_7", -1.676691 AS "sv_8", 1.011941 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", -2.525896 AS "sv_0", -0.477894 AS "sv_1", -0.273729 AS "sv_2", 1.188786 AS "sv_3", -1.104002 AS "sv_4", 0.923579 AS "sv_5", 0.043686 AS "sv_6", 1.096727 AS "sv_7", -0.136594 AS "sv_8", 0.296252 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", 1.565996 AS "sv_0", 0.630905 AS "sv_1", -0.531525 AS "sv_2", 0.038295 AS "sv_3", 0.166839 AS "sv_4", -1.200603 AS "sv_5", -0.792631 AS "sv_6", 0.989485 AS "sv_7", 0.024575 AS "sv_8", -0.418722 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", 1.109895 AS "sv_0", -1.276931 AS "sv_1", -0.153744 AS "sv_2", 0.481751 AS "sv_3", -0.979647 AS "sv_4", 0.984662 AS "sv_5", 0.161086 AS "sv_6", -0.653210 AS "sv_7", -0.126786 AS "sv_8", -0.808571 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", 0.318899 AS "sv_0", -0.548994 AS "sv_1", 0.096506 AS "sv_2", 0.273220 AS "sv_3", 0.890499 AS "sv_4", -0.975153 AS "sv_5", -0.205763 AS "sv_6", -0.005155 AS "sv_7", -0.698733 AS "sv_8", 0.257747 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", 1.052950 AS "sv_0", 0.994111 AS "sv_1", 1.229269 AS "sv_2", -0.290390 AS "sv_3", 0.975998 AS "sv_4", 1.012004 AS "sv_5", 1.315962 AS "sv_6", 1.733801 AS "sv_7", -1.378977 AS "sv_8", 0.600470 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", -0.285401 AS "sv_0", -2.587676 AS "sv_1", -0.426798 AS "sv_2", -0.169654 AS "sv_3", -2.564845 AS "sv_4", 2.533015 AS "sv_5", 0.388436 AS "sv_6", 0.880810 AS "sv_7", 0.212284 AS "sv_8", -0.853432 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 0.223140 AS "sv_0", 2.618876 AS "sv_1", 1.785933 AS "sv_2", 0.525517 AS "sv_3", 1.027739 AS "sv_4", 1.975934 AS "sv_5", 2.060077 AS "sv_6", 0.623600 AS "sv_7", -0.254780 AS "sv_8", -0.643208 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", 0.183374 AS "sv_0", -1.249540 AS "sv_1", 0.487518 AS "sv_2", 1.709722 AS "sv_3", 0.927451 AS "sv_4", -0.298859 AS "sv_5", 0.316686 AS "sv_6", 2.221695 AS "sv_7", -0.155555 AS "sv_8", -0.363056 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", 0.546520 AS "sv_0", -0.046826 AS "sv_1", -0.379246 AS "sv_2", -0.023449 AS "sv_3", 0.294757 AS "sv_4", -1.084326 AS "sv_5", -0.632276 AS "sv_6", -0.252771 AS "sv_7", -1.416949 AS "sv_8", 0.894766 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -0.063343 AS "sv_0", 0.659661 AS "sv_1", 0.495233 AS "sv_2", 1.507247 AS "sv_3", 0.950231 AS "sv_4", -0.314086 AS "sv_5", 0.318622 AS "sv_6", -0.511888 AS "sv_7", 0.075660 AS "sv_8", 0.496109 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", 1.145385 AS "sv_0", 1.272283 AS "sv_1", -0.561562 AS "sv_2", 1.317994 AS "sv_3", -0.671836 AS "sv_4", -0.169496 AS "sv_5", -0.515350 AS "sv_6", -0.151036 AS "sv_7", -0.329984 AS "sv_8", 0.315520 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", 1.735820 AS "sv_0", 0.694681 AS "sv_1", -0.067943 AS "sv_2", 0.595141 AS "sv_3", -1.081687 AS "sv_4", 1.275791 AS "sv_5", 0.317558 AS "sv_6", -0.053097 AS "sv_7", -0.148766 AS "sv_8", 0.672684 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", 0.080892 AS "sv_0", 1.906174 AS "sv_1", 1.659037 AS "sv_2", 1.388472 AS "sv_3", 1.044605 AS "sv_4", 1.719061 AS "sv_5", 1.879567 AS "sv_6", -0.781796 AS "sv_7", 0.207437 AS "sv_8", 1.178284 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", -0.043197 AS "sv_0", -0.437700 AS "sv_1", -0.506468 AS "sv_2", -0.057258 AS "sv_3", -0.399406 AS "sv_4", -0.420468 AS "sv_5", -0.543216 AS "sv_6", 1.558325 AS "sv_7", -0.882877 AS "sv_8", -0.073077 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", -0.029150 AS "sv_0", 1.127509 AS "sv_1", 0.141428 AS "sv_2", -0.920748 AS "sv_3", 0.920413 AS "sv_4", -0.930719 AS "sv_5", -0.155490 AS "sv_6", 0.269698 AS "sv_7", 0.637580 AS "sv_8", 0.390744 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", 0.535763 AS "sv_0", 0.078455 AS "sv_1", 0.930055 AS "sv_2", 0.432694 AS "sv_3", 0.963309 AS "sv_4", 0.474283 AS "sv_5", 0.910247 AS "sv_6", -0.344344 AS "sv_7", 0.194578 AS "sv_8", 0.183366 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", -0.601947 AS "sv_0", -0.609824 AS "sv_1", 0.622057 AS "sv_2", -1.451841 AS "sv_3", 0.970458 AS "sv_4", -0.105411 AS "sv_5", 0.484948 AS "sv_6", 1.677988 AS "sv_7", -0.811300 AS "sv_8", -0.453308 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 0.082184 AS "sv_0", 1.222674 AS "sv_1", -0.005092 AS "sv_2", 0.214740 AS "sv_3", -0.876223 AS "sv_4", 1.125961 AS "sv_5", 0.325766 AS "sv_6", 0.906587 AS "sv_7", -0.480312 AS "sv_8", 0.127420 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", -0.462262 AS "sv_0", 1.121886 AS "sv_1", -0.222564 AS "sv_2", 0.128963 AS "sv_3", 0.674869 AS "sv_4", -1.286683 AS "sv_5", -0.561653 AS "sv_6", 0.773687 AS "sv_7", 0.533973 AS "sv_8", -0.333808 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", -0.173819 AS "sv_0", 0.036993 AS "sv_1", 0.646374 AS "sv_2", -2.108314 AS "sv_3", 0.948059 AS "sv_4", -0.031350 AS "sv_5", 0.526818 AS "sv_6", 0.736537 AS "sv_7", -1.447145 AS "sv_8", -0.309609 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", -1.213579 AS "sv_0", 0.638942 AS "sv_1", 0.247582 AS "sv_2", -0.997786 AS "sv_3", 0.917172 AS "sv_4", -0.729914 AS "sv_5", -0.008611 AS "sv_6", 0.178647 AS "sv_7", -0.622020 AS "sv_8", 0.198026 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -2.563980 AS "sv_0", 1.112410 AS "sv_1", -0.327087 AS "sv_2", 0.994928 AS "sv_3", 0.237963 AS "sv_4", -0.914132 AS "sv_5", -0.539144 AS "sv_6", -1.451145 AS "sv_7", 0.007304 AS "sv_8", 0.722065 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", 0.354220 AS "sv_0", 1.542324 AS "sv_1", 1.248353 AS "sv_2", 0.465478 AS "sv_3", 0.994938 AS "sv_4", 1.022807 AS "sv_5", 1.334954 AS "sv_6", 0.118174 AS "sv_7", 0.152417 AS "sv_8", 0.097724 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", 0.186620 AS "sv_0", 0.337465 AS "sv_1", -0.640287 AS "sv_2", -0.842482 AS "sv_3", 0.260952 AS "sv_4", -1.523986 AS "sv_5", -0.977597 AS "sv_6", 0.732420 AS "sv_7", -1.769224 AS "sv_8", -0.095046 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", 0.004068 AS "sv_0", -0.149149 AS "sv_1", -0.701857 AS "sv_2", -0.657360 AS "sv_3", -2.091175 AS "sv_4", 1.409817 AS "sv_5", -0.168836 AS "sv_6", -0.280396 AS "sv_7", -0.580622 AS "sv_8", 0.104456 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", -0.270493 AS "sv_0", -0.379489 AS "sv_1", 0.322884 AS "sv_2", 0.752412 AS "sv_3", 0.979382 AS "sv_4", -0.671062 AS "sv_5", 0.071081 AS "sv_6", 0.098596 AS "sv_7", 0.615951 AS "sv_8", -0.453947 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", 1.751773 AS "sv_0", -0.158222 AS "sv_1", -0.285291 AS "sv_2", -1.524403 AS "sv_3", -0.721877 AS "sv_4", 0.407017 AS "sv_5", -0.117292 AS "sv_6", 0.189134 AS "sv_7", -0.218059 AS "sv_8", 0.693128 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", 0.170667 AS "sv_0", -1.559754 AS "sv_1", -0.247251 AS "sv_2", -0.954589 AS "sv_3", 0.406524 AS "sv_4", -0.984689 AS "sv_5", -0.493618 AS "sv_6", -0.590251 AS "sv_7", -0.308192 AS "sv_8", -0.283685 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", -0.102343 AS "sv_0", -0.699815 AS "sv_1", -0.010625 AS "sv_2", -0.228823 AS "sv_3", -1.452454 AS "sv_4", 1.862380 AS "sv_5", 0.537002 AS "sv_6", 0.215572 AS "sv_7", -0.111527 AS "sv_8", -0.053293 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 0.136112 AS "sv_0", -1.196185 AS "sv_1", -0.234248 AS "sv_2", -0.642533 AS "sv_3", -0.857617 AS "sv_4", 0.677439 AS "sv_5", 0.004289 AS "sv_6", -0.013625 AS "sv_7", -0.351289 AS "sv_8", 1.388059 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", 0.412432 AS "sv_0", -1.465764 AS "sv_1", 0.815840 AS "sv_2", 0.789504 AS "sv_3", 0.995091 AS "sv_4", 0.221568 AS "sv_5", 0.741470 AS "sv_6", -1.468038 AS "sv_7", -0.117288 AS "sv_8", -0.725013 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", 0.327893 AS "sv_0", 0.212835 AS "sv_1", 0.580381 AS "sv_2", -0.828796 AS "sv_3", 0.913165 AS "sv_4", -0.108359 AS "sv_5", 0.449524 AS "sv_6", -2.252331 AS "sv_7", -0.204971 AS "sv_8", -0.885169 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", -0.208862 AS "sv_0", 1.485463 AS "sv_1", -0.387591 AS "sv_2", 0.960289 AS "sv_3", -0.972867 AS "sv_4", 0.542778 AS "sv_5", -0.162336 AS "sv_6", -0.253352 AS "sv_7", -0.551506 AS "sv_8", -0.395435 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", 0.136848 AS "sv_0", -0.357540 AS "sv_1", -0.545592 AS "sv_2", 0.303686 AS "sv_3", -0.068727 AS "sv_4", -0.921414 AS "sv_5", -0.722474 AS "sv_6", -0.378885 AS "sv_7", 0.111628 AS "sv_8", -1.391935 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", -2.816561 AS "sv_0", -1.091985 AS "sv_1", -0.089846 AS "sv_2", -1.001222 AS "sv_3", 0.245099 AS "sv_4", -0.483993 AS "sv_5", -0.216350 AS "sv_6", -0.176273 AS "sv_7", 0.481645 AS "sv_8", -0.115846 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", 0.657501 AS "sv_0", 0.892502 AS "sv_1", -0.236830 AS "sv_2", -0.729682 AS "sv_3", -0.706225 AS "sv_4", 0.476487 AS "sv_5", -0.056746 AS "sv_6", -1.602769 AS "sv_7", -0.855423 AS "sv_8", 1.659902 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 2.182794 AS "sv_0", -0.311773 AS "sv_1", -0.139689 AS "sv_2", -1.616949 AS "sv_3", 0.235114 AS "sv_4", -0.563367 AS "sv_5", -0.280944 AS "sv_6", -0.783720 AS "sv_7", 0.583340 AS "sv_8", 0.163340 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", 0.952018 AS "sv_0", -0.308196 AS "sv_1", 0.909223 AS "sv_2", 2.012281 AS "sv_3", 0.936821 AS "sv_4", 0.470024 AS "sv_5", 0.891724 AS "sv_6", -0.272696 AS "sv_7", 1.972422 AS "sv_8", -0.971554 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", -0.056513 AS "sv_0", -0.161324 AS "sv_1", 0.834904 AS "sv_2", 0.426593 AS "sv_3", 0.924151 AS "sv_4", 0.348799 AS "sv_5", 0.794568 AS "sv_6", -0.020058 AS "sv_7", 1.438489 AS "sv_8", -0.855696 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", -0.608250 AS "sv_0", -0.421780 AS "sv_1", 0.405912 AS "sv_2", -0.850839 AS "sv_3", 0.926276 AS "sv_4", -0.448474 AS "sv_5", 0.205167 AS "sv_6", -0.499699 AS "sv_7", 0.948938 AS "sv_8", -1.449312 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", -2.414785 AS "sv_0", 0.043356 AS "sv_1", 0.800677 AS "sv_2", 0.789276 AS "sv_3", 0.955856 AS "sv_4", 0.244325 AS "sv_5", 0.735566 AS "sv_6", 1.151646 AS "sv_7", -0.163908 AS "sv_8", -0.695245 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", 0.520167 AS "sv_0", -0.429345 AS "sv_1", 0.058830 AS "sv_2", -1.982930 AS "sv_3", -0.864085 AS "sv_4", 1.228619 AS "sv_5", 0.408860 AS "sv_6", 0.156990 AS "sv_7", 0.249539 AS "sv_8", 0.180095 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", -0.738574 AS "sv_0", -0.411312 AS "sv_1", 0.846371 AS "sv_2", 0.129612 AS "sv_3", 0.973739 AS "sv_4", 0.305781 AS "sv_5", 0.791469 AS "sv_6", -0.210802 AS "sv_7", 2.843495 AS "sv_8", -0.761153 AS "sv_9"
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 23.300407 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 25.961870 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 10.946859 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 14.994142 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 16.793272 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 8.575352 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 20.336393 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 5.557561 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 26.981537 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 24.319052 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 33.675808 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 20.953272 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 32.158279 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 1.076584 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 8.613049 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 29.008425 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 22.402311 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 15.176371 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 9.692377 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 0.356451 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 7.873109 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 19.373522 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 22.669973 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 29.861818 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 6.563242 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 16.659779 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 36.512859 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 7.449665 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 12.861052 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", 12.015276 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 10.454822 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 9.601427 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", 12.899605 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 39.106792 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", 13.179392 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 21.105673 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", 4.420303 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 54 AS "sv_idx", 9.013125 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 10.887592 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", 7.304968 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", 8.610393 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", 8.850904 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", 23.870173 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 65 AS "sv_idx", 8.409966 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", 13.501373 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", 15.144193 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 18.509974 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 70 AS "sv_idx", 13.111090 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 71 AS "sv_idx", 24.469103 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 72 AS "sv_idx", 14.516489 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 73 AS "sv_idx", 7.181114 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 74 AS "sv_idx", 4.989316 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 75 AS "sv_idx", 28.849939 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 76 AS "sv_idx", 8.554989 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 77 AS "sv_idx", 15.880681 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 78 AS "sv_idx", 9.200968 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 79 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 80 AS "sv_idx", 8.670949 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 81 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 82 AS "sv_idx", 7.506515 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 83 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 84 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 85 AS "sv_idx", 27.593277 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 86 AS "sv_idx", 5.121527 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 87 AS "sv_idx", 21.754700 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 88 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 89 AS "sv_idx", 23.300407 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 90 AS "sv_idx", 25.961870 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 91 AS "sv_idx", 10.946859 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 92 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 93 AS "sv_idx", 14.994142 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 94 AS "sv_idx", 16.793272 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 95 AS "sv_idx", 8.575352 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 96 AS "sv_idx", 20.336393 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 97 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 98 AS "sv_idx", 5.557561 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 99 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 100 AS "sv_idx", 26.981537 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 101 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 102 AS "sv_idx", 24.319052 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 103 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 104 AS "sv_idx", 33.675808 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 105 AS "sv_idx", 20.953272 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 106 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 107 AS "sv_idx", 32.158279 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 108 AS "sv_idx", 1.076584 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 109 AS "sv_idx", 8.613049 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 110 AS "sv_idx", 29.008425 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 111 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 112 AS "sv_idx", 22.402311 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 113 AS "sv_idx", 15.176371 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 114 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 115 AS "sv_idx", 9.692377 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 116 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 117 AS "sv_idx", 0.356451 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 118 AS "sv_idx", 7.873109 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 119 AS "sv_idx", 19.373522 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 120 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 121 AS "sv_idx", 22.669973 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 122 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 123 AS "sv_idx", 29.861818 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 124 AS "sv_idx", 6.563242 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 125 AS "sv_idx", 16.659779 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 126 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 127 AS "sv_idx", 36.512859 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 128 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 129 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 130 AS "sv_idx", 7.449665 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 131 AS "sv_idx", 12.861052 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 132 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 133 AS "sv_idx", 12.015276 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 134 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 135 AS "sv_idx", 10.454822 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 136 AS "sv_idx", 9.601427 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 137 AS "sv_idx", 12.899605 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 138 AS "sv_idx", 39.106792 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 139 AS "sv_idx", 13.179392 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 140 AS "sv_idx", 21.105673 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 141 AS "sv_idx", 4.420303 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 142 AS "sv_idx", 9.013125 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 143 AS "sv_idx", 10.887592 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 144 AS "sv_idx", 7.304968 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 145 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 146 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 147 AS "sv_idx", 8.610393 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 148 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 149 AS "sv_idx", 8.850904 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 150 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 151 AS "sv_idx", 23.870173 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 152 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 153 AS "sv_idx", 8.409966 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 154 AS "sv_idx", 13.501373 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 155 AS "sv_idx", 15.144193 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 156 AS "sv_idx", 18.509974 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 157 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 158 AS "sv_idx", 13.111090 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 159 AS "sv_idx", 24.469103 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 160 AS "sv_idx", 14.516489 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 161 AS "sv_idx", 7.181114 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 162 AS "sv_idx", 4.989316 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 163 AS "sv_idx", 28.849939 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 164 AS "sv_idx", 8.554989 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 165 AS "sv_idx", 15.880681 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 166 AS "sv_idx", 9.200968 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 167 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 168 AS "sv_idx", 8.670949 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 169 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 170 AS "sv_idx", 7.506515 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 171 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 172 AS "sv_idx", 39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 173 AS "sv_idx", 27.593277 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 174 AS "sv_idx", 5.121527 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 175 AS "sv_idx", 21.754700 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 176 AS "sv_idx", -39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 177 AS "sv_idx", -39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 178 AS "sv_idx", -39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 179 AS "sv_idx", -39.463245 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 180 AS "sv_idx", -17.201706 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 181 AS "sv_idx", -13.749197 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 182 AS "sv_idx", -10.299411 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.932139 AS "rho", -0.670814 AS "probA", 0.052394 AS "probB"
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