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
     SELECT 0 AS "sv_idx", -1.064559 AS "sv_0", -0.820872 AS "sv_1", -0.723270 AS "sv_2", -0.096420 AS "sv_3", -0.404633 AS "sv_4", -0.815225 AS "sv_5", -0.838692 AS "sv_6", 0.652010 AS "sv_7", -0.319080 AS "sv_8", -0.383915 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.954561 AS "sv_0", -1.845000 AS "sv_1", 0.508844 AS "sv_2", -0.224022 AS "sv_3", 0.663209 AS "sv_4", 0.083038 AS "sv_5", 0.446295 AS "sv_6", 0.532215 AS "sv_7", -1.374292 AS "sv_8", 2.746056 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.388256 AS "sv_0", -0.178366 AS "sv_1", 0.039211 AS "sv_2", 0.978269 AS "sv_3", 0.961760 AS "sv_4", -1.173605 AS "sv_5", -0.311436 AS "sv_6", -0.225993 AS "sv_7", -1.172041 AS "sv_8", -0.253551 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.360494 AS "sv_0", 0.682985 AS "sv_1", -1.812859 AS "sv_2", -0.395256 AS "sv_3", -1.719778 AS "sv_4", -1.129074 AS "sv_5", -1.834214 AS "sv_6", -0.935174 AS "sv_7", 2.206119 AS "sv_8", -1.293514 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.983214 AS "sv_0", -0.343181 AS "sv_1", -0.498688 AS "sv_2", 0.163199 AS "sv_3", -0.733125 AS "sv_4", 0.026367 AS "sv_5", -0.405810 AS "sv_6", -0.797164 AS "sv_7", 0.430213 AS "sv_8", 0.588898 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.065406 AS "sv_0", 1.087081 AS "sv_1", 0.425681 AS "sv_2", 0.780480 AS "sv_3", 0.865734 AS "sv_4", -0.333413 AS "sv_5", 0.255281 AS "sv_6", 0.534058 AS "sv_7", -0.089211 AS "sv_8", 1.315380 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -2.024612 AS "sv_0", 0.775559 AS "sv_1", 1.027187 AS "sv_2", -1.392295 AS "sv_3", 0.837006 AS "sv_4", 0.817838 AS "sv_5", 1.091481 AS "sv_6", 0.474760 AS "sv_7", 0.609822 AS "sv_8", 0.478127 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.161201 AS "sv_0", -0.794545 AS "sv_1", 0.709537 AS "sv_2", 0.348623 AS "sv_3", 1.401939 AS "sv_4", -0.502496 AS "sv_5", 0.441115 AS "sv_6", 1.772862 AS "sv_7", -1.137358 AS "sv_8", -0.101282 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.887507 AS "sv_0", 1.145229 AS "sv_1", -0.076887 AS "sv_2", 0.263624 AS "sv_3", 0.859369 AS "sv_4", -1.255951 AS "sv_5", -0.431844 AS "sv_6", 0.602390 AS "sv_7", -0.074771 AS "sv_8", -0.806014 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 0.294529 AS "sv_0", -2.952712 AS "sv_1", 0.408459 AS "sv_2", 0.309242 AS "sv_3", 1.131531 AS "sv_4", -0.709722 AS "sv_5", 0.130714 AS "sv_6", 0.856443 AS "sv_7", -0.900223 AS "sv_8", 2.097126 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -2.195806 AS "sv_0", -0.208409 AS "sv_1", -0.825670 AS "sv_2", 2.484432 AS "sv_3", -0.211837 AS "sv_4", -1.254696 AS "sv_5", -1.052404 AS "sv_6", 0.825037 AS "sv_7", 0.119987 AS "sv_8", -1.082385 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -2.019835 AS "sv_0", -0.314347 AS "sv_1", 0.083408 AS "sv_2", -0.607884 AS "sv_3", 0.260122 AS "sv_4", -0.182584 AS "sv_5", 0.015655 AS "sv_6", 1.380191 AS "sv_7", 0.579782 AS "sv_8", -0.156549 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.361624 AS "sv_0", -0.562634 AS "sv_1", -0.047884 AS "sv_2", -0.700210 AS "sv_3", 0.116927 AS "sv_4", -0.240195 AS "sv_5", -0.110102 AS "sv_6", -0.518304 AS "sv_7", 0.850333 AS "sv_8", -0.844349 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.709445 AS "sv_0", 0.860912 AS "sv_1", 0.332709 AS "sv_2", 0.196063 AS "sv_3", 1.267689 AS "sv_4", -1.026446 AS "sv_5", -0.024925 AS "sv_6", 0.061754 AS "sv_7", -1.331563 AS "sv_8", -0.283591 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 0.648423 AS "sv_0", -0.244695 AS "sv_1", -0.012258 AS "sv_2", 1.592630 AS "sv_3", -0.152940 AS "sv_4", 0.175475 AS "sv_5", 0.041262 AS "sv_6", 0.520360 AS "sv_7", 1.591133 AS "sv_8", 0.415493 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.537976 AS "sv_0", -0.863574 AS "sv_1", -0.339109 AS "sv_2", 0.416003 AS "sv_3", -0.718780 AS "sv_4", 0.303330 AS "sv_5", -0.192308 AS "sv_6", -1.807600 AS "sv_7", -0.932955 AS "sv_8", -0.606641 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.719474 AS "sv_0", -0.751864 AS "sv_1", -1.224318 AS "sv_2", -0.811701 AS "sv_3", -1.401253 AS "sv_4", -0.451798 AS "sv_5", -1.147675 AS "sv_6", 0.148196 AS "sv_7", -0.611486 AS "sv_8", 0.366529 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -0.263412 AS "sv_0", 1.788292 AS "sv_1", 0.201192 AS "sv_2", -0.339974 AS "sv_3", 1.169404 AS "sv_4", -1.142667 AS "sv_5", -0.168046 AS "sv_6", -0.413903 AS "sv_7", 1.138708 AS "sv_8", -1.061929 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -0.822533 AS "sv_0", -0.295668 AS "sv_1", -0.753569 AS "sv_2", 1.032943 AS "sv_3", -0.653910 AS "sv_4", -0.548333 AS "sv_5", -0.785598 AS "sv_6", -1.543056 AS "sv_7", 0.390884 AS "sv_8", 0.813279 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 0.106440 AS "sv_0", 0.753236 AS "sv_1", 1.021214 AS "sv_2", -0.570944 AS "sv_3", 0.845808 AS "sv_4", 0.795371 AS "sv_5", 1.079944 AS "sv_6", -0.673985 AS "sv_7", -1.497403 AS "sv_8", 1.174173 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -0.145925 AS "sv_0", 0.960796 AS "sv_1", 0.639258 AS "sv_2", 0.155212 AS "sv_3", 1.312482 AS "sv_4", -0.516742 AS "sv_5", 0.378661 AS "sv_6", 0.125471 AS "sv_7", -0.050440 AS "sv_8", 0.687820 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -0.259218 AS "sv_0", 0.134447 AS "sv_1", -0.682018 AS "sv_2", -1.521565 AS "sv_3", -1.662491 AS "sv_4", 0.891079 AS "sv_5", -0.304413 AS "sv_6", 1.044012 AS "sv_7", -0.535484 AS "sv_8", 0.747064 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -0.070453 AS "sv_0", 1.497879 AS "sv_1", 0.077921 AS "sv_2", -0.003341 AS "sv_3", 0.323701 AS "sv_4", -0.275130 AS "sv_5", -0.016017 AS "sv_6", -0.568767 AS "sv_7", 0.575519 AS "sv_8", 1.139628 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 0.865758 AS "sv_0", -0.081061 AS "sv_1", -0.531872 AS "sv_2", 1.374517 AS "sv_3", 0.810173 AS "sv_4", -2.034865 AS "sv_5", -1.037419 AS "sv_6", 0.347971 AS "sv_7", 0.493869 AS "sv_8", -1.273665 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.602564 AS "sv_0", 0.518484 AS "sv_1", -0.763746 AS "sv_2", 0.599381 AS "sv_3", -0.610784 AS "sv_4", -0.623063 AS "sv_5", -0.815939 AS "sv_6", -1.895549 AS "sv_7", -1.277363 AS "sv_8", -0.188814 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -0.744403 AS "sv_0", -0.238975 AS "sv_1", -1.330757 AS "sv_2", 1.618659 AS "sv_3", -0.303228 AS "sv_4", -2.071726 AS "sv_5", -1.710697 AS "sv_6", 0.344978 AS "sv_7", 2.001071 AS "sv_8", -0.626699 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.821024 AS "sv_0", -2.298777 AS "sv_1", -0.149211 AS "sv_2", 1.822545 AS "sv_3", 1.098499 AS "sv_4", -1.699758 AS "sv_5", -0.621886 AS "sv_6", -1.027402 AS "sv_7", 0.028721 AS "sv_8", -0.573774 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 2.937669 AS "sv_0", -1.064963 AS "sv_1", -0.068830 AS "sv_2", -0.655288 AS "sv_3", 0.734778 AS "sv_4", -1.079585 AS "sv_5", -0.373474 AS "sv_6", -0.653014 AS "sv_7", 0.270592 AS "sv_8", 0.534871 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.349061 AS "sv_0", 0.442332 AS "sv_1", -0.438352 AS "sv_2", 0.012909 AS "sv_3", 1.206234 AS "sv_4", -2.374867 AS "sv_5", -1.059513 AS "sv_6", -2.029140 AS "sv_7", -0.193959 AS "sv_8", -1.311756 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 0.349104 AS "sv_0", -1.882102 AS "sv_1", -0.689086 AS "sv_2", -0.936671 AS "sv_3", -0.298001 AS "sv_4", -0.890086 AS "sv_5", -0.832284 AS "sv_6", -0.748723 AS "sv_7", -1.427868 AS "sv_8", -0.178403 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 0.608683 AS "sv_0", -0.216157 AS "sv_1", 0.245563 AS "sv_2", -1.003636 AS "sv_3", 0.580786 AS "sv_4", -0.297772 AS "sv_5", 0.116365 AS "sv_6", -0.573585 AS "sv_7", 0.236988 AS "sv_8", 0.252612 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.418165 AS "sv_0", 0.272247 AS "sv_1", 0.305231 AS "sv_2", -0.657098 AS "sv_3", 1.267405 AS "sv_4", -1.076969 AS "sv_5", -0.062517 AS "sv_6", 0.817024 AS "sv_7", -0.763466 AS "sv_8", 0.504608 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", -3.661373 AS "sv_0", -0.707396 AS "sv_1", 0.309848 AS "sv_2", -0.054012 AS "sv_3", 0.826445 AS "sv_4", -0.497033 AS "sv_5", 0.111275 AS "sv_6", 0.033755 AS "sv_7", -0.807668 AS "sv_8", 0.583309 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 0.244549 AS "sv_0", -0.114573 AS "sv_1", 1.073664 AS "sv_2", 0.389901 AS "sv_3", 1.187633 AS "sv_4", 0.449582 AS "sv_5", 1.022096 AS "sv_6", -0.185604 AS "sv_7", 0.102623 AS "sv_8", -1.556498 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 1.684683 AS "sv_0", 1.206950 AS "sv_1", 0.344897 AS "sv_2", 1.058610 AS "sv_3", 0.073804 AS "sv_4", 0.543136 AS "sv_5", 0.445184 AS "sv_6", -0.703913 AS "sv_7", -0.717647 AS "sv_8", 0.491219 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -1.406136 AS "sv_0", -0.242116 AS "sv_1", 1.301289 AS "sv_2", -0.494365 AS "sv_3", 1.026426 AS "sv_4", 1.080046 AS "sv_5", 1.395626 AS "sv_6", -1.043267 AS "sv_7", -1.426875 AS "sv_8", 1.876952 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -2.816561 AS "sv_0", -1.091985 AS "sv_1", -0.089846 AS "sv_2", -1.001222 AS "sv_3", 0.245099 AS "sv_4", -0.483993 AS "sv_5", -0.216350 AS "sv_6", -0.176273 AS "sv_7", 0.481645 AS "sv_8", -0.115846 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -2.525896 AS "sv_0", -0.477894 AS "sv_1", -0.273729 AS "sv_2", 1.188786 AS "sv_3", -1.104002 AS "sv_4", 0.923579 AS "sv_5", 0.043686 AS "sv_6", 1.096727 AS "sv_7", -0.136594 AS "sv_8", 0.296252 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -2.810322 AS "sv_0", 0.803423 AS "sv_1", 0.052149 AS "sv_2", -2.649015 AS "sv_3", -1.775187 AS "sv_4", 2.396832 AS "sv_5", 0.745691 AS "sv_6", -0.584702 AS "sv_7", 1.221721 AS "sv_8", 1.307240 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 0.444082 AS "sv_0", -0.224036 AS "sv_1", -0.126428 AS "sv_2", 0.204438 AS "sv_3", -0.991489 AS "sv_4", 1.050597 AS "sv_5", 0.203061 AS "sv_6", -0.491621 AS "sv_7", 1.706341 AS "sv_8", -0.190966 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -0.143033 AS "sv_0", -0.745429 AS "sv_1", 1.941176 AS "sv_2", 0.378268 AS "sv_3", 1.105095 AS "sv_4", 2.163219 AS "sv_5", 2.243701 AS "sv_6", 1.262047 AS "sv_7", 0.532632 AS "sv_8", -2.605754 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -0.286097 AS "sv_0", -0.891766 AS "sv_1", -0.107237 AS "sv_2", -0.133323 AS "sv_3", -1.006487 AS "sv_4", 1.105574 AS "sv_5", 0.235087 AS "sv_6", -1.993744 AS "sv_7", 1.334763 AS "sv_8", -0.978082 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -0.189211 AS "sv_0", 0.263870 AS "sv_1", 0.989440 AS "sv_2", -0.249016 AS "sv_3", 0.950179 AS "sv_4", 0.601282 AS "sv_5", 0.996713 AS "sv_6", 0.956108 AS "sv_7", -0.427735 AS "sv_8", 0.592305 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 0.334868 AS "sv_0", -0.165323 AS "sv_1", -0.207463 AS "sv_2", -0.238315 AS "sv_3", -1.081999 AS "sv_4", 1.017796 AS "sv_5", 0.126249 AS "sv_6", -2.680745 AS "sv_7", 0.904880 AS "sv_8", 0.016956 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.468794 AS "sv_0", -0.316396 AS "sv_1", 1.446893 AS "sv_2", -1.716992 AS "sv_3", 0.998704 AS "sv_4", 1.385635 AS "sv_5", 1.605928 AS "sv_6", 0.087291 AS "sv_7", -0.202640 AS "sv_8", 1.120201 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -0.750818 AS "sv_0", 1.536321 AS "sv_1", 0.910231 AS "sv_2", -0.644372 AS "sv_3", 0.973998 AS "sv_4", 0.423717 AS "sv_5", 0.878989 AS "sv_6", -0.577707 AS "sv_7", 0.019270 AS "sv_8", 0.723786 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.223340 AS "sv_0", -0.089773 AS "sv_1", 0.458951 AS "sv_2", -1.020888 AS "sv_3", 0.940039 AS "sv_4", -0.368077 AS "sv_5", 0.272711 AS "sv_6", 0.268793 AS "sv_7", -0.378120 AS "sv_8", -0.438884 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 0.312308 AS "sv_0", 0.217874 AS "sv_1", 0.981112 AS "sv_2", -1.413037 AS "sv_3", 0.982472 AS "sv_4", 0.544014 AS "sv_5", 0.973023 AS "sv_6", -0.201078 AS "sv_7", 0.460278 AS "sv_8", -0.807822 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.497360 AS "sv_0", -1.144583 AS "sv_1", 1.034789 AS "sv_2", -0.949039 AS "sv_3", 1.042403 AS "sv_4", 0.565770 AS "sv_5", 1.023911 AS "sv_6", -0.779248 AS "sv_7", -0.116107 AS "sv_8", -0.673836 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -0.725526 AS "sv_0", 0.198507 AS "sv_1", 0.559130 AS "sv_2", -0.553877 AS "sv_3", 0.944058 AS "sv_4", -0.187747 AS "sv_5", 0.408634 AS "sv_6", -0.819251 AS "sv_7", 1.063341 AS "sv_8", -0.217757 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -0.634865 AS "sv_0", -0.335194 AS "sv_1", -0.293115 AS "sv_2", 0.000158 AS "sv_3", -0.078671 AS "sv_4", -0.440926 AS "sv_5", -0.372289 AS "sv_6", 0.391274 AS "sv_7", 1.454115 AS "sv_8", 0.713786 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", 0.515021 AS "sv_0", 0.355015 AS "sv_1", 0.915202 AS "sv_2", -0.055302 AS "sv_3", 0.957182 AS "sv_4", 0.454714 AS "sv_5", 0.892195 AS "sv_6", -0.591067 AS "sv_7", -0.406366 AS "sv_8", 2.332328 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", 0.171390 AS "sv_0", -1.957513 AS "sv_1", -0.813633 AS "sv_2", 0.393102 AS "sv_3", -0.042458 AS "sv_4", -1.451882 AS "sv_5", -1.100212 AS "sv_6", 0.832917 AS "sv_7", -1.134850 AS "sv_8", -0.701044 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", -0.319061 AS "sv_0", 0.037082 AS "sv_1", -0.302351 AS "sv_2", 0.643416 AS "sv_3", -0.071526 AS "sv_4", -0.467291 AS "sv_5", -0.387675 AS "sv_6", 0.300862 AS "sv_7", -0.305625 AS "sv_8", 0.539971 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 0.763588 AS "sv_0", -0.877413 AS "sv_1", -0.312581 AS "sv_2", -0.766536 AS "sv_3", -0.928493 AS "sv_4", 0.624202 AS "sv_5", -0.076271 AS "sv_6", 0.402280 AS "sv_7", 0.349522 AS "sv_8", -0.184166 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", 0.922568 AS "sv_0", 0.035166 AS "sv_1", 0.595126 AS "sv_2", -1.273629 AS "sv_3", 0.947319 AS "sv_4", -0.125305 AS "sv_5", 0.456785 AS "sv_6", 1.147776 AS "sv_7", 0.682084 AS "sv_8", 1.290484 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", -2.414785 AS "sv_0", 0.043356 AS "sv_1", 0.800677 AS "sv_2", 0.789276 AS "sv_3", 0.955856 AS "sv_4", 0.244325 AS "sv_5", 0.735566 AS "sv_6", 1.151646 AS "sv_7", -0.163908 AS "sv_8", -0.695245 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.229875 AS "sv_0", 0.060725 AS "sv_1", -0.278011 AS "sv_2", 0.500876 AS "sv_3", 0.249257 AS "sv_4", -0.837876 AS "sv_5", -0.476099 AS "sv_6", 0.203125 AS "sv_7", 0.438541 AS "sv_8", -0.072711 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.193555 AS "sv_0", 0.124024 AS "sv_1", -0.278146 AS "sv_2", -0.703814 AS "sv_3", -0.814340 AS "sv_4", 0.540062 AS "sv_5", -0.072375 AS "sv_6", 0.039605 AS "sv_7", -2.362978 AS "sv_8", 0.743149 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -2.437228 AS "sv_0", 0.525953 AS "sv_1", -0.079560 AS "sv_2", -1.528494 AS "sv_3", -0.852084 AS "sv_4", 0.956762 AS "sv_5", 0.214426 AS "sv_6", -0.378033 AS "sv_7", -0.648732 AS "sv_8", 0.202193 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -0.309099 AS "sv_0", -0.464287 AS "sv_1", -0.232394 AS "sv_2", 0.623486 AS "sv_3", -0.405144 AS "sv_4", 0.094568 AS "sv_5", -0.164997 AS "sv_6", 1.199560 AS "sv_7", -0.017232 AS "sv_8", -0.664525 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.213579 AS "sv_0", 0.638942 AS "sv_1", 0.247582 AS "sv_2", -0.997786 AS "sv_3", 0.917172 AS "sv_4", -0.729914 AS "sv_5", -0.008611 AS "sv_6", 0.178647 AS "sv_7", -0.622020 AS "sv_8", 0.198026 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 2.750073 AS "sv_0", 1.374505 AS "sv_1", -0.485268 AS "sv_2", -1.325194 AS "sv_3", 0.080458 AS "sv_4", -1.003001 AS "sv_5", -0.696360 AS "sv_6", 1.538708 AS "sv_7", -2.425964 AS "sv_8", 1.502867 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 0.302494 AS "sv_0", 1.524404 AS "sv_1", 0.906454 AS "sv_2", -0.229958 AS "sv_3", 0.958214 AS "sv_4", 0.437176 AS "sv_5", 0.879801 AS "sv_6", -0.743904 AS "sv_7", 0.318097 AS "sv_8", 1.617980 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -0.121784 AS "sv_0", 1.074646 AS "sv_1", 1.451553 AS "sv_2", -1.383480 AS "sv_3", 1.043077 AS "sv_4", 1.336767 AS "sv_5", 1.595470 AS "sv_6", -1.256712 AS "sv_7", -0.279495 AS "sv_8", 1.218553 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", 1.958454 AS "sv_0", -0.577512 AS "sv_1", -0.005751 AS "sv_2", 1.787683 AS "sv_3", 0.310921 AS "sv_4", -0.413536 AS "sv_5", -0.125965 AS "sv_6", 0.207197 AS "sv_7", 0.502651 AS "sv_8", -1.764096 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", -0.765981 AS "sv_0", 0.556101 AS "sv_1", 0.771628 AS "sv_2", -0.317365 AS "sv_3", 0.995790 AS "sv_4", 0.138779 AS "sv_5", 0.680545 AS "sv_6", -1.034626 AS "sv_7", -1.013472 AS "sv_8", -0.274533 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 1.318963 AS "sv_0", 0.203376 AS "sv_1", -0.510421 AS "sv_2", 0.482600 AS "sv_3", 0.153388 AS "sv_4", -1.144087 AS "sv_5", -0.758567 AS "sv_6", -1.783432 AS "sv_7", 0.693461 AS "sv_8", -0.590666 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", 0.763915 AS "sv_0", 0.218894 AS "sv_1", 0.756754 AS "sv_2", 1.281545 AS "sv_3", 0.978572 AS "sv_4", 0.133543 AS "sv_5", 0.666676 AS "sv_6", -0.675935 AS "sv_7", -0.038596 AS "sv_8", 1.368927 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", 1.598236 AS "sv_0", -0.877690 AS "sv_1", -0.265913 AS "sv_2", 1.078588 AS "sv_3", -0.062553 AS "sv_4", -0.411432 AS "sv_5", -0.341088 AS "sv_6", -0.987325 AS "sv_7", -0.597841 AS "sv_8", 0.649937 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", 1.237566 AS "sv_0", 0.635414 AS "sv_1", 1.362477 AS "sv_2", 1.381634 AS "sv_3", 0.996182 AS "sv_4", 1.232559 AS "sv_5", 1.491063 AS "sv_6", -2.311953 AS "sv_7", -1.462748 AS "sv_8", -0.264504 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -2.188798 AS "sv_0", 1.247514 AS "sv_1", -0.196171 AS "sv_2", 0.071459 AS "sv_3", -0.606263 AS "sv_4", 0.422263 AS "sv_5", -0.038921 AS "sv_6", 1.521653 AS "sv_7", -0.605569 AS "sv_8", -1.014692 AS "sv_9"
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
           EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.094286 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 21.590191 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 1.369396 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 5.249174 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 1.317722 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 9.274009 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 4.056931 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 13.623525 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 7.216648 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 0.977371 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 0.944219 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 3.275015 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 14.420732 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 22.622143 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 4.352623 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 15.187618 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 0.948074 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 1.726216 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 1.965526 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 5.953262 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 26.697659 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 14.889277 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 3.519893 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 12.928342 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 4.999884 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 5.121412 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 0.963251 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 4.388558 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 2.469806 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 2.235544 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 1.840764 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 20.682594 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 5.717988 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 9.821016 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 16.236464 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 4.059998 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 21.590191 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 1.369396 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 5.249174 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 1.317722 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 9.274009 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 4.056931 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 13.623525 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 7.216648 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 0.977371 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 0.944219 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", 3.275015 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", 14.420732 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 22.622143 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 4.352623 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", 15.187618 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 0.948074 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", 1.726216 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 1.965526 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 53 AS "sv_idx", 5.953262 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 54 AS "sv_idx", 26.697659 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 14.889277 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 56 AS "sv_idx", 3.519893 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 12.928342 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 4.999884 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 59 AS "sv_idx", 5.121412 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 0.963251 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", 4.388558 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", 2.469806 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", 2.235544 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", 1.840764 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 65 AS "sv_idx", 20.682594 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", 5.717988 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", 9.821016 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", 16.236464 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", 4.059998 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 70 AS "sv_idx", -5.951622 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 71 AS "sv_idx", -19.493546 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.691370 AS "rho", -0.852697 AS "probA", 0.078641 AS "probB"
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
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
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