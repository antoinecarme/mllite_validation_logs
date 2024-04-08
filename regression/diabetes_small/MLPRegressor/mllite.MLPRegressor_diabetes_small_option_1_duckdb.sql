WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_small" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.470260 + -0.056448 * t."OUT_0"  + 0.120414 * t."OUT_1"  + 0.558164 * t."OUT_2"  + 0.650853 * t."OUT_3"  + 0.342145 * t."OUT_4"  + 0.283620 * t."OUT_5"  + -0.130053 * t."OUT_6"  + -0.048116 * t."OUT_7"  + -0.199980 * t."OUT_8"  + -0.435677 * t."OUT_9" AS "OUT_0",
    0.394618 + 0.373958 * t."OUT_0"  + -0.425027 * t."OUT_1"  + 0.173400 * t."OUT_2"  + -0.544989 * t."OUT_3"  + -0.280932 * t."OUT_4"  + -0.679157 * t."OUT_5"  + -0.629185 * t."OUT_6"  + 0.039825 * t."OUT_7"  + 0.275306 * t."OUT_8"  + 0.605504 * t."OUT_9" AS "OUT_1",
    0.122466 + -0.298902 * t."OUT_0"  + 0.157956 * t."OUT_1"  + 0.512551 * t."OUT_2"  + -0.305857 * t."OUT_3"  + -0.364438 * t."OUT_4"  + -0.073024 * t."OUT_5"  + -0.303447 * t."OUT_6"  + -0.617968 * t."OUT_7"  + -0.163277 * t."OUT_8"  + -0.510485 * t."OUT_9" AS "OUT_2",
    0.621386 + -0.021615 * t."OUT_0"  + 0.046877 * t."OUT_1"  + -0.075841 * t."OUT_2"  + 0.269085 * t."OUT_3"  + -0.484203 * t."OUT_4"  + 0.006372 * t."OUT_5"  + 0.508869 * t."OUT_6"  + 0.063830 * t."OUT_7"  + 0.302516 * t."OUT_8"  + 0.374580 * t."OUT_9" AS "OUT_3"
   FROM "Input_Layer_BA" AS t
 ),
"Hidden_Layer_1_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
   FROM "Hidden_Layer_1_BA" AS t
 ),
"Hidden_Layer_2_BA" AS
 ( SELECT
    t."index" as "index",
    0.350549 + -0.443915 * t."OUT_0"  + 0.455163 * t."OUT_1"  + -0.574903 * t."OUT_2"  + 0.729925 * t."OUT_3" AS "OUT_0",
    0.387529 + -0.544968 * t."OUT_0"  + 0.545793 * t."OUT_1"  + 0.059855 * t."OUT_2"  + 0.644543 * t."OUT_3" AS "OUT_1",
    0.593625 + 0.236548 * t."OUT_0"  + -0.456651 * t."OUT_1"  + 0.260873 * t."OUT_2"  + -0.122730 * t."OUT_3" AS "OUT_2",
    -0.357124 + 0.254996 * t."OUT_0"  + 0.315838 * t."OUT_1"  + 0.406786 * t."OUT_2"  + -0.575044 * t."OUT_3" AS "OUT_3",
    0.329853 + 0.475586 * t."OUT_0"  + 0.241928 * t."OUT_1"  + -0.571902 * t."OUT_2"  + 0.006925 * t."OUT_3" AS "OUT_4",
    0.466236 + 0.606558 * t."OUT_0"  + 0.021359 * t."OUT_1"  + 0.459426 * t."OUT_2"  + 0.644591 * t."OUT_3" AS "OUT_5",
    0.486660 + 0.538130 * t."OUT_0"  + 0.058106 * t."OUT_1"  + -0.424326 * t."OUT_2"  + -0.541715 * t."OUT_3" AS "OUT_6",
    -0.030071 + -0.459344 * t."OUT_0"  + 0.437406 * t."OUT_1"  + -0.621203 * t."OUT_2"  + 0.312170 * t."OUT_3" AS "OUT_7"
   FROM "Hidden_Layer_1_Activation" AS t
 ),
"Hidden_Layer_2_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7"
   FROM "Hidden_Layer_2_BA" AS t
 ),
"Hidden_Layer_3_BA" AS
 ( SELECT
    t."index" as "index",
    0.561580 + -0.613293 * t."OUT_0"  + -0.271050 * t."OUT_1"  + 0.187084 * t."OUT_2"  + -0.215160 * t."OUT_3"  + -0.310732 * t."OUT_4"  + 0.345005 * t."OUT_5"  + 0.313933 * t."OUT_6"  + 0.089718 * t."OUT_7" AS "OUT_0",
    -0.464773 + 0.295155 * t."OUT_0"  + 0.558786 * t."OUT_1"  + -0.230040 * t."OUT_2"  + 0.376506 * t."OUT_3"  + 0.029260 * t."OUT_4"  + 0.423129 * t."OUT_5"  + 0.333884 * t."OUT_6"  + -0.296584 * t."OUT_7" AS "OUT_1",
    -0.245913 + 0.007260 * t."OUT_0"  + 0.027252 * t."OUT_1"  + -0.254067 * t."OUT_2"  + 0.431074 * t."OUT_3"  + 0.182889 * t."OUT_4"  + 0.107910 * t."OUT_5"  + -0.452853 * t."OUT_6"  + 0.299111 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.557300 * t."OUT_3"  + 0.443776 * t."OUT_4"  + -0.225065 * t."OUT_5"  + 0.212193 * t."OUT_6"  + -0.618701 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.480768 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.269611 * t."OUT_2"  + 0.475690 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.178974 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.588556 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.619361 * t."OUT_0"  + -0.586402 * t."OUT_1"  + -0.462554 * t."OUT_2"  + 0.371699 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.324393 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.488080 * t."OUT_7" AS "OUT_5"
   FROM "Hidden_Layer_2_Activation" AS t
 ),
"Hidden_Layer_3_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
   FROM "Hidden_Layer_3_BA" AS t
 ),
"Output_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    -0.575931 + -0.279235 * t."OUT_0"  + -0.180693 * t."OUT_1"  + -0.605936 * t."OUT_2"  + -0.667527 * t."OUT_3"  + -0.789899 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
