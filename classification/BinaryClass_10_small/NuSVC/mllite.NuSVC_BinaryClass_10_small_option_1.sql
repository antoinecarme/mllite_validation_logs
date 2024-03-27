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
     SELECT 0 AS sv_idx, -1.064559 AS sv_0, -0.820872 AS sv_1, -0.723270 AS sv_2, -0.096420 AS sv_3, -0.404633 AS sv_4, -0.815225 AS sv_5, -0.838692 AS sv_6, 0.652010 AS sv_7, -0.319080 AS sv_8, -0.383915 AS sv_9
     UNION ALL
     SELECT 1 AS sv_idx, -1.954561 AS sv_0, -1.845000 AS sv_1, 0.508844 AS sv_2, -0.224022 AS sv_3, 0.663209 AS sv_4, 0.083038 AS sv_5, 0.446295 AS sv_6, 0.532215 AS sv_7, -1.374292 AS sv_8, 2.746056 AS sv_9
     UNION ALL
     SELECT 2 AS sv_idx, -0.366856 AS sv_0, -2.698274 AS sv_1, 0.045788 AS sv_2, 0.314876 AS sv_3, 0.963445 AS sv_4, -1.163608 AS sv_5, -0.303052 AS sv_6, -0.850652 AS sv_7, 0.057282 AS sv_8, -0.702300 AS sv_9
     UNION ALL
     SELECT 3 AS sv_idx, -1.388256 AS sv_0, -0.178366 AS sv_1, 0.039211 AS sv_2, 0.978269 AS sv_3, 0.961760 AS sv_4, -1.173605 AS sv_5, -0.311436 AS sv_6, -0.225993 AS sv_7, -1.172041 AS sv_8, -0.253551 AS sv_9
     UNION ALL
     SELECT 4 AS sv_idx, 0.983214 AS sv_0, -0.343181 AS sv_1, -0.498688 AS sv_2, 0.163199 AS sv_3, -0.733125 AS sv_4, 0.026367 AS sv_5, -0.405810 AS sv_6, -0.797164 AS sv_7, 0.430213 AS sv_8, 0.588898 AS sv_9
     UNION ALL
     SELECT 5 AS sv_idx, 0.065406 AS sv_0, 1.087081 AS sv_1, 0.425681 AS sv_2, 0.780480 AS sv_3, 0.865734 AS sv_4, -0.333413 AS sv_5, 0.255281 AS sv_6, 0.534058 AS sv_7, -0.089211 AS sv_8, 1.315380 AS sv_9
     UNION ALL
     SELECT 6 AS sv_idx, -2.024612 AS sv_0, 0.775559 AS sv_1, 1.027187 AS sv_2, -1.392295 AS sv_3, 0.837006 AS sv_4, 0.817838 AS sv_5, 1.091481 AS sv_6, 0.474760 AS sv_7, 0.609822 AS sv_8, 0.478127 AS sv_9
     UNION ALL
     SELECT 7 AS sv_idx, 0.161201 AS sv_0, -0.794545 AS sv_1, 0.709537 AS sv_2, 0.348623 AS sv_3, 1.401939 AS sv_4, -0.502496 AS sv_5, 0.441115 AS sv_6, 1.772862 AS sv_7, -1.137358 AS sv_8, -0.101282 AS sv_9
     UNION ALL
     SELECT 8 AS sv_idx, -0.232754 AS sv_0, -0.439976 AS sv_1, 0.152074 AS sv_2, 1.028692 AS sv_3, 1.104028 AS sv_4, -1.148925 AS sv_5, -0.210611 AS sv_6, 1.410740 AS sv_7, 0.731564 AS sv_8, 0.634332 AS sv_9
     UNION ALL
     SELECT 9 AS sv_idx, 1.887507 AS sv_0, 1.145229 AS sv_1, -0.076887 AS sv_2, 0.263624 AS sv_3, 0.859369 AS sv_4, -1.255951 AS sv_5, -0.431844 AS sv_6, 0.602390 AS sv_7, -0.074771 AS sv_8, -0.806014 AS sv_9
     UNION ALL
     SELECT 10 AS sv_idx, -0.164478 AS sv_0, 0.806275 AS sv_1, -1.994416 AS sv_2, 1.156252 AS sv_3, -0.779254 AS sv_4, -2.684039 AS sv_5, -2.440488 AS sv_6, 0.391977 AS sv_7, 0.399449 AS sv_8, 0.290571 AS sv_9
     UNION ALL
     SELECT 11 AS sv_idx, 0.294529 AS sv_0, -2.952712 AS sv_1, 0.408459 AS sv_2, 0.309242 AS sv_3, 1.131531 AS sv_4, -0.709722 AS sv_5, 0.130714 AS sv_6, 0.856443 AS sv_7, -0.900223 AS sv_8, 2.097126 AS sv_9
     UNION ALL
     SELECT 12 AS sv_idx, -2.195806 AS sv_0, -0.208409 AS sv_1, -0.825670 AS sv_2, 2.484432 AS sv_3, -0.211837 AS sv_4, -1.254696 AS sv_5, -1.052404 AS sv_6, 0.825037 AS sv_7, 0.119987 AS sv_8, -1.082385 AS sv_9
     UNION ALL
     SELECT 13 AS sv_idx, 0.742476 AS sv_0, 0.106406 AS sv_1, -1.168225 AS sv_2, -0.059037 AS sv_3, 0.033159 AS sv_4, -2.206590 AS sv_5, -1.615442 AS sv_6, 0.661668 AS sv_7, 0.317099 AS sv_8, -0.077859 AS sv_9
     UNION ALL
     SELECT 14 AS sv_idx, -2.019835 AS sv_0, -0.314347 AS sv_1, 0.083408 AS sv_2, -0.607884 AS sv_3, 0.260122 AS sv_4, -0.182584 AS sv_5, 0.015655 AS sv_6, 1.380191 AS sv_7, 0.579782 AS sv_8, -0.156549 AS sv_9
     UNION ALL
     SELECT 15 AS sv_idx, -1.361624 AS sv_0, -0.562634 AS sv_1, -0.047884 AS sv_2, -0.700210 AS sv_3, 0.116927 AS sv_4, -0.240195 AS sv_5, -0.110102 AS sv_6, -0.518304 AS sv_7, 0.850333 AS sv_8, -0.844349 AS sv_9
     UNION ALL
     SELECT 16 AS sv_idx, -1.709445 AS sv_0, 0.860912 AS sv_1, 0.332709 AS sv_2, 0.196063 AS sv_3, 1.267689 AS sv_4, -1.026446 AS sv_5, -0.024925 AS sv_6, 0.061754 AS sv_7, -1.331563 AS sv_8, -0.283591 AS sv_9
     UNION ALL
     SELECT 17 AS sv_idx, 1.123207 AS sv_0, 0.820741 AS sv_1, 0.307790 AS sv_2, 0.571600 AS sv_3, 1.188608 AS sv_4, -0.970127 AS sv_5, -0.029083 AS sv_6, -0.348400 AS sv_7, -2.114189 AS sv_8, 0.674955 AS sv_9
     UNION ALL
     SELECT 18 AS sv_idx, 0.648423 AS sv_0, -0.244695 AS sv_1, -0.012258 AS sv_2, 1.592630 AS sv_3, -0.152940 AS sv_4, 0.175475 AS sv_5, 0.041262 AS sv_6, 0.520360 AS sv_7, 1.591133 AS sv_8, 0.415493 AS sv_9
     UNION ALL
     SELECT 19 AS sv_idx, -1.537976 AS sv_0, -0.863574 AS sv_1, -0.339109 AS sv_2, 0.416003 AS sv_3, -0.718780 AS sv_4, 0.303330 AS sv_5, -0.192308 AS sv_6, -1.807600 AS sv_7, -0.932955 AS sv_8, -0.606641 AS sv_9
     UNION ALL
     SELECT 20 AS sv_idx, 1.719474 AS sv_0, -0.751864 AS sv_1, -1.224318 AS sv_2, -0.811701 AS sv_3, -1.401253 AS sv_4, -0.451798 AS sv_5, -1.147675 AS sv_6, 0.148196 AS sv_7, -0.611486 AS sv_8, 0.366529 AS sv_9
     UNION ALL
     SELECT 21 AS sv_idx, -0.263412 AS sv_0, 1.788292 AS sv_1, 0.201192 AS sv_2, -0.339974 AS sv_3, 1.169404 AS sv_4, -1.142667 AS sv_5, -0.168046 AS sv_6, -0.413903 AS sv_7, 1.138708 AS sv_8, -1.061929 AS sv_9
     UNION ALL
     SELECT 22 AS sv_idx, -0.098659 AS sv_0, -1.731538 AS sv_1, 2.272470 AS sv_2, 0.118096 AS sv_3, 1.083412 AS sv_4, 2.804890 AS sv_5, 2.706482 AS sv_6, 0.845839 AS sv_7, 1.740497 AS sv_8, 0.199837 AS sv_9
     UNION ALL
     SELECT 23 AS sv_idx, -2.816561 AS sv_0, -1.091985 AS sv_1, -0.089846 AS sv_2, -1.001222 AS sv_3, 0.245099 AS sv_4, -0.483993 AS sv_5, -0.216350 AS sv_6, -0.176273 AS sv_7, 0.481645 AS sv_8, -0.115846 AS sv_9
     UNION ALL
     SELECT 24 AS sv_idx, -2.525896 AS sv_0, -0.477894 AS sv_1, -0.273729 AS sv_2, 1.188786 AS sv_3, -1.104002 AS sv_4, 0.923579 AS sv_5, 0.043686 AS sv_6, 1.096727 AS sv_7, -0.136594 AS sv_8, 0.296252 AS sv_9
     UNION ALL
     SELECT 25 AS sv_idx, -2.810322 AS sv_0, 0.803423 AS sv_1, 0.052149 AS sv_2, -2.649015 AS sv_3, -1.775187 AS sv_4, 2.396832 AS sv_5, 0.745691 AS sv_6, -0.584702 AS sv_7, 1.221721 AS sv_8, 1.307240 AS sv_9
     UNION ALL
     SELECT 26 AS sv_idx, 0.444082 AS sv_0, -0.224036 AS sv_1, -0.126428 AS sv_2, 0.204438 AS sv_3, -0.991489 AS sv_4, 1.050597 AS sv_5, 0.203061 AS sv_6, -0.491621 AS sv_7, 1.706341 AS sv_8, -0.190966 AS sv_9
     UNION ALL
     SELECT 27 AS sv_idx, -0.143033 AS sv_0, -0.745429 AS sv_1, 1.941176 AS sv_2, 0.378268 AS sv_3, 1.105095 AS sv_4, 2.163219 AS sv_5, 2.243701 AS sv_6, 1.262047 AS sv_7, 0.532632 AS sv_8, -2.605754 AS sv_9
     UNION ALL
     SELECT 28 AS sv_idx, -0.489306 AS sv_0, -0.445387 AS sv_1, -0.368943 AS sv_2, 0.382369 AS sv_3, -1.158240 AS sv_4, 0.817516 AS sv_5, -0.066355 AS sv_6, 1.831441 AS sv_7, 0.637893 AS sv_8, -0.034184 AS sv_9
     UNION ALL
     SELECT 29 AS sv_idx, -0.286097 AS sv_0, -0.891766 AS sv_1, -0.107237 AS sv_2, -0.133323 AS sv_3, -1.006487 AS sv_4, 1.105574 AS sv_5, 0.235087 AS sv_6, -1.993744 AS sv_7, 1.334763 AS sv_8, -0.978082 AS sv_9
     UNION ALL
     SELECT 30 AS sv_idx, -0.189211 AS sv_0, 0.263870 AS sv_1, 0.989440 AS sv_2, -0.249016 AS sv_3, 0.950179 AS sv_4, 0.601282 AS sv_5, 0.996713 AS sv_6, 0.956108 AS sv_7, -0.427735 AS sv_8, 0.592305 AS sv_9
     UNION ALL
     SELECT 31 AS sv_idx, 1.198369 AS sv_0, -1.146429 AS sv_1, -0.070497 AS sv_2, 1.282457 AS sv_3, -0.528170 AS sv_4, 0.553827 AS sv_5, 0.103852 AS sv_6, 1.524966 AS sv_7, -0.841180 AS sv_8, 1.304640 AS sv_9
     UNION ALL
     SELECT 32 AS sv_idx, 0.334868 AS sv_0, -0.165323 AS sv_1, -0.207463 AS sv_2, -0.238315 AS sv_3, -1.081999 AS sv_4, 1.017796 AS sv_5, 0.126249 AS sv_6, -2.680745 AS sv_7, 0.904880 AS sv_8, 0.016956 AS sv_9
     UNION ALL
     SELECT 33 AS sv_idx, -1.468794 AS sv_0, -0.316396 AS sv_1, 1.446893 AS sv_2, -1.716992 AS sv_3, 0.998704 AS sv_4, 1.385635 AS sv_5, 1.605928 AS sv_6, 0.087291 AS sv_7, -0.202640 AS sv_8, 1.120201 AS sv_9
     UNION ALL
     SELECT 34 AS sv_idx, -0.750818 AS sv_0, 1.536321 AS sv_1, 0.910231 AS sv_2, -0.644372 AS sv_3, 0.973998 AS sv_4, 0.423717 AS sv_5, 0.878989 AS sv_6, -0.577707 AS sv_7, 0.019270 AS sv_8, 0.723786 AS sv_9
     UNION ALL
     SELECT 35 AS sv_idx, 1.223340 AS sv_0, -0.089773 AS sv_1, 0.458951 AS sv_2, -1.020888 AS sv_3, 0.940039 AS sv_4, -0.368077 AS sv_5, 0.272711 AS sv_6, 0.268793 AS sv_7, -0.378120 AS sv_8, -0.438884 AS sv_9
     UNION ALL
     SELECT 36 AS sv_idx, -1.497360 AS sv_0, -1.144583 AS sv_1, 1.034789 AS sv_2, -0.949039 AS sv_3, 1.042403 AS sv_4, 0.565770 AS sv_5, 1.023911 AS sv_6, -0.779248 AS sv_7, -0.116107 AS sv_8, -0.673836 AS sv_9
     UNION ALL
     SELECT 37 AS sv_idx, -0.725526 AS sv_0, 0.198507 AS sv_1, 0.559130 AS sv_2, -0.553877 AS sv_3, 0.944058 AS sv_4, -0.187747 AS sv_5, 0.408634 AS sv_6, -0.819251 AS sv_7, 1.063341 AS sv_8, -0.217757 AS sv_9
     UNION ALL
     SELECT 38 AS sv_idx, -0.634865 AS sv_0, -0.335194 AS sv_1, -0.293115 AS sv_2, 0.000158 AS sv_3, -0.078671 AS sv_4, -0.440926 AS sv_5, -0.372289 AS sv_6, 0.391274 AS sv_7, 1.454115 AS sv_8, 0.713786 AS sv_9
     UNION ALL
     SELECT 39 AS sv_idx, 0.515021 AS sv_0, 0.355015 AS sv_1, 0.915202 AS sv_2, -0.055302 AS sv_3, 0.957182 AS sv_4, 0.454714 AS sv_5, 0.892195 AS sv_6, -0.591067 AS sv_7, -0.406366 AS sv_8, 2.332328 AS sv_9
     UNION ALL
     SELECT 40 AS sv_idx, 1.956279 AS sv_0, 0.111458 AS sv_1, -0.120141 AS sv_2, 0.429301 AS sv_3, -1.017329 AS sv_4, 1.095725 AS sv_5, 0.221501 AS sv_6, -0.315980 AS sv_7, 1.143645 AS sv_8, -1.295717 AS sv_9
     UNION ALL
     SELECT 41 AS sv_idx, 0.171390 AS sv_0, -1.957513 AS sv_1, -0.813633 AS sv_2, 0.393102 AS sv_3, -0.042458 AS sv_4, -1.451882 AS sv_5, -1.100212 AS sv_6, 0.832917 AS sv_7, -1.134850 AS sv_8, -0.701044 AS sv_9
     UNION ALL
     SELECT 42 AS sv_idx, -1.357628 AS sv_0, 1.361029 AS sv_1, 0.890086 AS sv_2, 0.143034 AS sv_3, 0.969712 AS sv_4, 0.391962 AS sv_5, 0.852977 AS sv_6, 0.805215 AS sv_7, -1.308387 AS sv_8, -1.038055 AS sv_9
     UNION ALL
     SELECT 43 AS sv_idx, -0.319061 AS sv_0, 0.037082 AS sv_1, -0.302351 AS sv_2, 0.643416 AS sv_3, -0.071526 AS sv_4, -0.467291 AS sv_5, -0.387675 AS sv_6, 0.300862 AS sv_7, -0.305625 AS sv_8, 0.539971 AS sv_9
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
           exp(min(max(-32.0, -0.093021 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2))), 32.0))  AS "kernel_value" 
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
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, 12.516950 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 1 AS sv_idx, 2.860197 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, 1.188261 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 3 AS sv_idx, 2.687278 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, 11.704621 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, 10.308872 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 6 AS sv_idx, 8.563050 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 7 AS sv_idx, 4.211854 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 8 AS sv_idx, 0.615747 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 9 AS sv_idx, 0.636420 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 10 AS sv_idx, 0.823457 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 11 AS sv_idx, 1.088536 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 12 AS sv_idx, 0.369919 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 13 AS sv_idx, 0.629737 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 14 AS sv_idx, 2.897229 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 15 AS sv_idx, 12.730885 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 16 AS sv_idx, 1.439361 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 17 AS sv_idx, 1.748270 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 18 AS sv_idx, 5.666544 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 19 AS sv_idx, 2.045623 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 20 AS sv_idx, 0.166120 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 21 AS sv_idx, 0.903405 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 22 AS sv_idx, 12.516950 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 23 AS sv_idx, 2.860197 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 24 AS sv_idx, 1.188261 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 25 AS sv_idx, 2.687278 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 26 AS sv_idx, 11.704621 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 27 AS sv_idx, 10.308872 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 28 AS sv_idx, 8.563050 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 29 AS sv_idx, 4.211854 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 30 AS sv_idx, 0.615747 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 31 AS sv_idx, 0.636420 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 32 AS sv_idx, 0.823457 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 33 AS sv_idx, 1.088536 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 34 AS sv_idx, 0.369919 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 35 AS sv_idx, 0.629737 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 36 AS sv_idx, 2.897229 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 37 AS sv_idx, 12.730885 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 38 AS sv_idx, 1.439361 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 39 AS sv_idx, 1.748270 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 40 AS sv_idx, 5.666544 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 41 AS sv_idx, 2.045623 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 42 AS sv_idx, 0.166120 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 43 AS sv_idx, 0.903405 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.197790 AS "rho", -0.997842 AS "probA", 0.072515 AS "probB"
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
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
)
,
orig_cte AS 
 (SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
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
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
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
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte