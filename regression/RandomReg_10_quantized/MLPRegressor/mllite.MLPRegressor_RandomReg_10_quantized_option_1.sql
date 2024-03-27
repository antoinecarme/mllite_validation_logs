WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t.X_0 AS OUT_0,
    t.X_1 AS OUT_1,
    t.X_2 AS OUT_2,
    t.X_3 AS OUT_3,
    t.X_4 AS OUT_4,
    t.X_5 AS OUT_5,
    t.X_6 AS OUT_6,
    t.X_7 AS OUT_7,
    t.X_8 AS OUT_8,
    t.X_9 AS OUT_9
 FROM model_input AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.281626 + -0.213930 * t.OUT_0  + 0.017510 * t.OUT_1  + 0.447136 * t.OUT_2  + 0.748327 * t.OUT_3  + 0.477652 * t.OUT_4  + 0.310672 * t.OUT_5  + -0.297902 * t.OUT_6  + -0.090092 * t.OUT_7  + -0.164518 * t.OUT_8  + -0.323134 * t.OUT_9 AS OUT_0,
    0.517273 + 0.334258 * t.OUT_0  + -0.510220 * t.OUT_1  + 0.103114 * t.OUT_2  + -0.430950 * t.OUT_3  + -0.174629 * t.OUT_4  + -0.570922 * t.OUT_5  + -0.714933 * t.OUT_6  + 0.142450 * t.OUT_7  + 0.357855 * t.OUT_8  + 0.709178 * t.OUT_9 AS OUT_1,
    0.148704 + -0.279682 * t.OUT_0  + 0.188122 * t.OUT_1  + 0.529846 * t.OUT_2  + -0.314063 * t.OUT_3  + -0.326269 * t.OUT_4  + -0.135884 * t.OUT_5  + -0.299060 * t.OUT_6  + -0.601260 * t.OUT_7  + -0.137920 * t.OUT_8  + -0.443750 * t.OUT_9 AS OUT_2,
    0.448109 + 0.072036 * t.OUT_0  + 0.032686 * t.OUT_1  + -0.014500 * t.OUT_2  + 0.152653 * t.OUT_3  + -0.509517 * t.OUT_4  + -0.014653 * t.OUT_5  + 0.623758 * t.OUT_6  + 0.040719 * t.OUT_7  + 0.234462 * t.OUT_8  + 0.217866 * t.OUT_9 AS OUT_3
   FROM Input_Layer_BA AS t
 ),
"Hidden_Layer_1_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3
   FROM Hidden_Layer_1_BA AS t
 ),
"Hidden_Layer_2_BA" AS
 ( SELECT
    t."index" as "index",
    0.373268 + -0.268429 * t.OUT_0  + 0.340215 * t.OUT_1  + -0.724057 * t.OUT_2  + 0.853167 * t.OUT_3 AS OUT_0,
    0.222650 + -0.682062 * t.OUT_0  + 0.655352 * t.OUT_1  + 0.089272 * t.OUT_2  + 0.502466 * t.OUT_3 AS OUT_1,
    0.735802 + 0.283716 * t.OUT_0  + -0.420775 * t.OUT_1  + 0.287194 * t.OUT_2  + 0.033661 * t.OUT_3 AS OUT_2,
    -0.147734 + 0.412826 * t.OUT_0  + 0.522891 * t.OUT_1  + 0.447234 * t.OUT_2  + -0.586142 * t.OUT_3 AS OUT_3,
    0.478446 + 0.603708 * t.OUT_0  + 0.408968 * t.OUT_1  + -0.587414 * t.OUT_2  + -0.117864 * t.OUT_3 AS OUT_4,
    0.386212 + 0.516827 * t.OUT_0  + 0.170480 * t.OUT_1  + 0.569423 * t.OUT_2  + 0.566123 * t.OUT_3 AS OUT_5,
    0.672555 + 0.618736 * t.OUT_0  + 0.149877 * t.OUT_1  + -0.343510 * t.OUT_2  + -0.699383 * t.OUT_3 AS OUT_6,
    -0.082294 + -0.512934 * t.OUT_0  + 0.532604 * t.OUT_1  + -0.540104 * t.OUT_2  + 0.227864 * t.OUT_3 AS OUT_7
   FROM Hidden_Layer_1_Activation AS t
 ),
"Hidden_Layer_2_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5,
    CASE WHEN (OUT_6 > 0) THEN OUT_6 ELSE 0 END AS OUT_6,
    CASE WHEN (OUT_7 > 0) THEN OUT_7 ELSE 0 END AS OUT_7
   FROM Hidden_Layer_2_BA AS t
 ),
"Hidden_Layer_3_BA" AS
 ( SELECT
    t."index" as "index",
    0.655302 + -0.714306 * t.OUT_0  + -0.264144 * t.OUT_1  + 0.236165 * t.OUT_2  + -0.005120 * t.OUT_3  + -0.258761 * t.OUT_4  + 0.321444 * t.OUT_5  + 0.489918 * t.OUT_6  + 0.183337 * t.OUT_7 AS OUT_0,
    -0.538333 + 0.125968 * t.OUT_0  + 0.426185 * t.OUT_1  + -0.294142 * t.OUT_2  + 0.562938 * t.OUT_3  + 0.020475 * t.OUT_4  + 0.330804 * t.OUT_5  + 0.482424 * t.OUT_6  + -0.274989 * t.OUT_7 AS OUT_1,
    -0.272581 + -0.055407 * t.OUT_0  + -0.000484 * t.OUT_1  + -0.317405 * t.OUT_2  + 0.614161 * t.OUT_3  + 0.193259 * t.OUT_4  + 0.053732 * t.OUT_5  + -0.408799 * t.OUT_6  + 0.392211 * t.OUT_7 AS OUT_2,
    -0.323766 + -0.222772 * t.OUT_0  + -0.017865 * t.OUT_1  + -0.001752 * t.OUT_2  + 0.772776 * t.OUT_3  + 0.580205 * t.OUT_4  + -0.151959 * t.OUT_5  + 0.381072 * t.OUT_6  + -0.506390 * t.OUT_7 AS OUT_3,
    -0.485734 + -0.368734 * t.OUT_0  + -0.149044 * t.OUT_1  + 0.284366 * t.OUT_2  + 0.417428 * t.OUT_3  + 0.266578 * t.OUT_4  + -0.164262 * t.OUT_5  + -0.330219 * t.OUT_6  + -0.474359 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.506065 * t.OUT_0  + -0.473633 * t.OUT_1  + -0.352417 * t.OUT_2  + 0.264556 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.218781 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.377295 * t.OUT_7 AS OUT_5
   FROM Hidden_Layer_2_Activation AS t
 ),
"Hidden_Layer_3_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5
   FROM Hidden_Layer_3_BA AS t
 ),
"Output_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    -0.482291 + -0.371813 * t.OUT_0  + -0.092635 * t.OUT_1  + -0.664996 * t.OUT_2  + -0.882324 * t.OUT_3  + -0.754612 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
