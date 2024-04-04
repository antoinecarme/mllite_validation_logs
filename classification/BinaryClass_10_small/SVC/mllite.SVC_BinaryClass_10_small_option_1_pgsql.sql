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
     SELECT 1 AS "sv_idx", -0.960957 AS "sv_0", -1.294560 AS "sv_1", -0.778172 AS "sv_2", 0.835975 AS "sv_3", -1.018968 AS "sv_4", -0.120865 AS "sv_5", -0.680721 AS "sv_6", -0.518959 AS "sv_7", 0.207019 AS "sv_8", -0.945521 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.954561 AS "sv_0", -1.845000 AS "sv_1", 0.508844 AS "sv_2", -0.224022 AS "sv_3", 0.663209 AS "sv_4", 0.083038 AS "sv_5", 0.446295 AS "sv_6", 0.532215 AS "sv_7", -1.374292 AS "sv_8", 2.746056 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -0.366856 AS "sv_0", -2.698274 AS "sv_1", 0.045788 AS "sv_2", 0.314876 AS "sv_3", 0.963445 AS "sv_4", -1.163608 AS "sv_5", -0.303052 AS "sv_6", -0.850652 AS "sv_7", 0.057282 AS "sv_8", -0.702300 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.360494 AS "sv_0", 0.682985 AS "sv_1", -1.812859 AS "sv_2", -0.395256 AS "sv_3", -1.719778 AS "sv_4", -1.129074 AS "sv_5", -1.834214 AS "sv_6", -0.935174 AS "sv_7", 2.206119 AS "sv_8", -1.293514 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.983214 AS "sv_0", -0.343181 AS "sv_1", -0.498688 AS "sv_2", 0.163199 AS "sv_3", -0.733125 AS "sv_4", 0.026367 AS "sv_5", -0.405810 AS "sv_6", -0.797164 AS "sv_7", 0.430213 AS "sv_8", 0.588898 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.065406 AS "sv_0", 1.087081 AS "sv_1", 0.425681 AS "sv_2", 0.780480 AS "sv_3", 0.865734 AS "sv_4", -0.333413 AS "sv_5", 0.255281 AS "sv_6", 0.534058 AS "sv_7", -0.089211 AS "sv_8", 1.315380 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -2.024612 AS "sv_0", 0.775559 AS "sv_1", 1.027187 AS "sv_2", -1.392295 AS "sv_3", 0.837006 AS "sv_4", 0.817838 AS "sv_5", 1.091481 AS "sv_6", 0.474760 AS "sv_7", 0.609822 AS "sv_8", 0.478127 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.161201 AS "sv_0", -0.794545 AS "sv_1", 0.709537 AS "sv_2", 0.348623 AS "sv_3", 1.401939 AS "sv_4", -0.502496 AS "sv_5", 0.441115 AS "sv_6", 1.772862 AS "sv_7", -1.137358 AS "sv_8", -0.101282 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 0.527542 AS "sv_0", 0.110675 AS "sv_1", -0.608606 AS "sv_2", -1.314494 AS "sv_3", -0.405059 AS "sv_4", -0.602308 AS "sv_5", -0.681207 AS "sv_6", 0.538790 AS "sv_7", 0.589049 AS "sv_8", -1.364554 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.887507 AS "sv_0", 1.145229 AS "sv_1", -0.076887 AS "sv_2", 0.263624 AS "sv_3", 0.859369 AS "sv_4", -1.255951 AS "sv_5", -0.431844 AS "sv_6", 0.602390 AS "sv_7", -0.074771 AS "sv_8", -0.806014 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -0.164478 AS "sv_0", 0.806275 AS "sv_1", -1.994416 AS "sv_2", 1.156252 AS "sv_3", -0.779254 AS "sv_4", -2.684039 AS "sv_5", -2.440488 AS "sv_6", 0.391977 AS "sv_7", 0.399449 AS "sv_8", 0.290571 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 0.294529 AS "sv_0", -2.952712 AS "sv_1", 0.408459 AS "sv_2", 0.309242 AS "sv_3", 1.131531 AS "sv_4", -0.709722 AS "sv_5", 0.130714 AS "sv_6", 0.856443 AS "sv_7", -0.900223 AS "sv_8", 2.097126 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -2.195806 AS "sv_0", -0.208409 AS "sv_1", -0.825670 AS "sv_2", 2.484432 AS "sv_3", -0.211837 AS "sv_4", -1.254696 AS "sv_5", -1.052404 AS "sv_6", 0.825037 AS "sv_7", 0.119987 AS "sv_8", -1.082385 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -2.019835 AS "sv_0", -0.314347 AS "sv_1", 0.083408 AS "sv_2", -0.607884 AS "sv_3", 0.260122 AS "sv_4", -0.182584 AS "sv_5", 0.015655 AS "sv_6", 1.380191 AS "sv_7", 0.579782 AS "sv_8", -0.156549 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.361624 AS "sv_0", -0.562634 AS "sv_1", -0.047884 AS "sv_2", -0.700210 AS "sv_3", 0.116927 AS "sv_4", -0.240195 AS "sv_5", -0.110102 AS "sv_6", -0.518304 AS "sv_7", 0.850333 AS "sv_8", -0.844349 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.709445 AS "sv_0", 0.860912 AS "sv_1", 0.332709 AS "sv_2", 0.196063 AS "sv_3", 1.267689 AS "sv_4", -1.026446 AS "sv_5", -0.024925 AS "sv_6", 0.061754 AS "sv_7", -1.331563 AS "sv_8", -0.283591 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.123207 AS "sv_0", 0.820741 AS "sv_1", 0.307790 AS "sv_2", 0.571600 AS "sv_3", 1.188608 AS "sv_4", -0.970127 AS "sv_5", -0.029083 AS "sv_6", -0.348400 AS "sv_7", -2.114189 AS "sv_8", 0.674955 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 0.648423 AS "sv_0", -0.244695 AS "sv_1", -0.012258 AS "sv_2", 1.592630 AS "sv_3", -0.152940 AS "sv_4", 0.175475 AS "sv_5", 0.041262 AS "sv_6", 0.520360 AS "sv_7", 1.591133 AS "sv_8", 0.415493 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.537976 AS "sv_0", -0.863574 AS "sv_1", -0.339109 AS "sv_2", 0.416003 AS "sv_3", -0.718780 AS "sv_4", 0.303330 AS "sv_5", -0.192308 AS "sv_6", -1.807600 AS "sv_7", -0.932955 AS "sv_8", -0.606641 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 1.719474 AS "sv_0", -0.751864 AS "sv_1", -1.224318 AS "sv_2", -0.811701 AS "sv_3", -1.401253 AS "sv_4", -0.451798 AS "sv_5", -1.147675 AS "sv_6", 0.148196 AS "sv_7", -0.611486 AS "sv_8", 0.366529 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -0.263412 AS "sv_0", 1.788292 AS "sv_1", 0.201192 AS "sv_2", -0.339974 AS "sv_3", 1.169404 AS "sv_4", -1.142667 AS "sv_5", -0.168046 AS "sv_6", -0.413903 AS "sv_7", 1.138708 AS "sv_8", -1.061929 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.406136 AS "sv_0", -0.242116 AS "sv_1", 1.301289 AS "sv_2", -0.494365 AS "sv_3", 1.026426 AS "sv_4", 1.080046 AS "sv_5", 1.395626 AS "sv_6", -1.043267 AS "sv_7", -1.426875 AS "sv_8", 1.876952 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -0.098659 AS "sv_0", -1.731538 AS "sv_1", 2.272470 AS "sv_2", 0.118096 AS "sv_3", 1.083412 AS "sv_4", 2.804890 AS "sv_5", 2.706482 AS "sv_6", 0.845839 AS "sv_7", 1.740497 AS "sv_8", 0.199837 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -2.816561 AS "sv_0", -1.091985 AS "sv_1", -0.089846 AS "sv_2", -1.001222 AS "sv_3", 0.245099 AS "sv_4", -0.483993 AS "sv_5", -0.216350 AS "sv_6", -0.176273 AS "sv_7", 0.481645 AS "sv_8", -0.115846 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -2.525896 AS "sv_0", -0.477894 AS "sv_1", -0.273729 AS "sv_2", 1.188786 AS "sv_3", -1.104002 AS "sv_4", 0.923579 AS "sv_5", 0.043686 AS "sv_6", 1.096727 AS "sv_7", -0.136594 AS "sv_8", 0.296252 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -2.810322 AS "sv_0", 0.803423 AS "sv_1", 0.052149 AS "sv_2", -2.649015 AS "sv_3", -1.775187 AS "sv_4", 2.396832 AS "sv_5", 0.745691 AS "sv_6", -0.584702 AS "sv_7", 1.221721 AS "sv_8", 1.307240 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.444082 AS "sv_0", -0.224036 AS "sv_1", -0.126428 AS "sv_2", 0.204438 AS "sv_3", -0.991489 AS "sv_4", 1.050597 AS "sv_5", 0.203061 AS "sv_6", -0.491621 AS "sv_7", 1.706341 AS "sv_8", -0.190966 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -0.143033 AS "sv_0", -0.745429 AS "sv_1", 1.941176 AS "sv_2", 0.378268 AS "sv_3", 1.105095 AS "sv_4", 2.163219 AS "sv_5", 2.243701 AS "sv_6", 1.262047 AS "sv_7", 0.532632 AS "sv_8", -2.605754 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -0.489306 AS "sv_0", -0.445387 AS "sv_1", -0.368943 AS "sv_2", 0.382369 AS "sv_3", -1.158240 AS "sv_4", 0.817516 AS "sv_5", -0.066355 AS "sv_6", 1.831441 AS "sv_7", 0.637893 AS "sv_8", -0.034184 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -0.286097 AS "sv_0", -0.891766 AS "sv_1", -0.107237 AS "sv_2", -0.133323 AS "sv_3", -1.006487 AS "sv_4", 1.105574 AS "sv_5", 0.235087 AS "sv_6", -1.993744 AS "sv_7", 1.334763 AS "sv_8", -0.978082 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -0.189211 AS "sv_0", 0.263870 AS "sv_1", 0.989440 AS "sv_2", -0.249016 AS "sv_3", 0.950179 AS "sv_4", 0.601282 AS "sv_5", 0.996713 AS "sv_6", 0.956108 AS "sv_7", -0.427735 AS "sv_8", 0.592305 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 0.899102 AS "sv_0", 0.482906 AS "sv_1", -0.359972 AS "sv_2", 0.616768 AS "sv_3", -2.038666 AS "sv_4", 1.974968 AS "sv_5", 0.280303 AS "sv_6", -0.707670 AS "sv_7", -0.238156 AS "sv_8", -1.538110 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 0.739356 AS "sv_0", 0.040085 AS "sv_1", -0.293706 AS "sv_2", -1.073093 AS "sv_3", -0.645207 AS "sv_4", 0.292082 AS "sv_5", -0.157955 AS "sv_6", 1.367823 AS "sv_7", -0.883563 AS "sv_8", 0.285353 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 1.198369 AS "sv_0", -1.146429 AS "sv_1", -0.070497 AS "sv_2", 1.282457 AS "sv_3", -0.528170 AS "sv_4", 0.553827 AS "sv_5", 0.103852 AS "sv_6", 1.524966 AS "sv_7", -0.841180 AS "sv_8", 1.304640 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 0.334868 AS "sv_0", -0.165323 AS "sv_1", -0.207463 AS "sv_2", -0.238315 AS "sv_3", -1.081999 AS "sv_4", 1.017796 AS "sv_5", 0.126249 AS "sv_6", -2.680745 AS "sv_7", 0.904880 AS "sv_8", 0.016956 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -0.750818 AS "sv_0", 1.536321 AS "sv_1", 0.910231 AS "sv_2", -0.644372 AS "sv_3", 0.973998 AS "sv_4", 0.423717 AS "sv_5", 0.878989 AS "sv_6", -0.577707 AS "sv_7", 0.019270 AS "sv_8", 0.723786 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.223340 AS "sv_0", -0.089773 AS "sv_1", 0.458951 AS "sv_2", -1.020888 AS "sv_3", 0.940039 AS "sv_4", -0.368077 AS "sv_5", 0.272711 AS "sv_6", 0.268793 AS "sv_7", -0.378120 AS "sv_8", -0.438884 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.497360 AS "sv_0", -1.144583 AS "sv_1", 1.034789 AS "sv_2", -0.949039 AS "sv_3", 1.042403 AS "sv_4", 0.565770 AS "sv_5", 1.023911 AS "sv_6", -0.779248 AS "sv_7", -0.116107 AS "sv_8", -0.673836 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -0.576757 AS "sv_0", -0.445270 AS "sv_1", 2.019134 AS "sv_2", -1.948864 AS "sv_3", 1.040586 AS "sv_4", 2.391190 AS "sv_5", 2.375159 AS "sv_6", 0.105001 AS "sv_7", 1.348760 AS "sv_8", 1.196586 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -0.725526 AS "sv_0", 0.198507 AS "sv_1", 0.559130 AS "sv_2", -0.553877 AS "sv_3", 0.944058 AS "sv_4", -0.187747 AS "sv_5", 0.408634 AS "sv_6", -0.819251 AS "sv_7", 1.063341 AS "sv_8", -0.217757 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -0.634865 AS "sv_0", -0.335194 AS "sv_1", -0.293115 AS "sv_2", 0.000158 AS "sv_3", -0.078671 AS "sv_4", -0.440926 AS "sv_5", -0.372289 AS "sv_6", 0.391274 AS "sv_7", 1.454115 AS "sv_8", 0.713786 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 0.515021 AS "sv_0", 0.355015 AS "sv_1", 0.915202 AS "sv_2", -0.055302 AS "sv_3", 0.957182 AS "sv_4", 0.454714 AS "sv_5", 0.892195 AS "sv_6", -0.591067 AS "sv_7", -0.406366 AS "sv_8", 2.332328 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.956279 AS "sv_0", 0.111458 AS "sv_1", -0.120141 AS "sv_2", 0.429301 AS "sv_3", -1.017329 AS "sv_4", 1.095725 AS "sv_5", 0.221501 AS "sv_6", -0.315980 AS "sv_7", 1.143645 AS "sv_8", -1.295717 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 0.171390 AS "sv_0", -1.957513 AS "sv_1", -0.813633 AS "sv_2", 0.393102 AS "sv_3", -0.042458 AS "sv_4", -1.451882 AS "sv_5", -1.100212 AS "sv_6", 0.832917 AS "sv_7", -1.134850 AS "sv_8", -0.701044 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -1.357628 AS "sv_0", 1.361029 AS "sv_1", 0.890086 AS "sv_2", 0.143034 AS "sv_3", 0.969712 AS "sv_4", 0.391962 AS "sv_5", 0.852977 AS "sv_6", 0.805215 AS "sv_7", -1.308387 AS "sv_8", -1.038055 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", -0.319061 AS "sv_0", 0.037082 AS "sv_1", -0.302351 AS "sv_2", 0.643416 AS "sv_3", -0.071526 AS "sv_4", -0.467291 AS "sv_5", -0.387675 AS "sv_6", 0.300862 AS "sv_7", -0.305625 AS "sv_8", 0.539971 AS "sv_9"
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.093021 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 1.194968 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.348755 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 1.616340 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 0.920608 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.202722 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 1.549003 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 0.428255 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 0.274125 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 0.839734 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 0.722467 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 1.025787 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 1.290951 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 1.866179 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 1.034020 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 1.194968 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 0.348755 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 1.616340 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 0.920608 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 0.202722 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 1.549003 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 0.428255 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 0.274125 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 0.839734 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 0.722467 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 1.025787 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 1.290951 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 1.866179 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 1.034020 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", -0.778736 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", -0.475639 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 46 AS "sv_idx", -2.000000 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 0.010999 AS "rho", -1.536980 AS "probA", 0.052501 AS "probB"
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