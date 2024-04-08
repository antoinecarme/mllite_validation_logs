WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_original" AS "ADS" 
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
    -0.500478 + -0.086151 * t."OUT_0"  + 0.090021 * t."OUT_1"  + 0.527701 * t."OUT_2"  + 0.620419 * t."OUT_3"  + 0.311694 * t."OUT_4"  + 0.253210 * t."OUT_5"  + -0.160237 * t."OUT_6"  + -0.078237 * t."OUT_7"  + -0.230021 * t."OUT_8"  + -0.465676 * t."OUT_9" AS "OUT_0",
    0.330970 + 0.310857 * t."OUT_0"  + -0.488542 * t."OUT_1"  + 0.109061 * t."OUT_2"  + -0.609447 * t."OUT_3"  + -0.337068 * t."OUT_4"  + -0.616803 * t."OUT_5"  + -0.623938 * t."OUT_6"  + -0.024552 * t."OUT_7"  + 0.213548 * t."OUT_8"  + 0.544425 * t."OUT_9" AS "OUT_1",
    0.134774 + -0.288626 * t."OUT_0"  + 0.169394 * t."OUT_1"  + 0.525159 * t."OUT_2"  + -0.291802 * t."OUT_3"  + -0.350654 * t."OUT_4"  + -0.125141 * t."OUT_5"  + -0.355279 * t."OUT_6"  + -0.603224 * t."OUT_7"  + -0.152307 * t."OUT_8"  + -0.499634 * t."OUT_9" AS "OUT_2",
    0.570070 + -0.073694 * t."OUT_0"  + -0.001906 * t."OUT_1"  + -0.125667 * t."OUT_2"  + 0.220656 * t."OUT_3"  + -0.520358 * t."OUT_4"  + 0.013197 * t."OUT_5"  + 0.508203 * t."OUT_6"  + 0.013289 * t."OUT_7"  + 0.250741 * t."OUT_8"  + 0.323890 * t."OUT_9" AS "OUT_3"
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
    0.349874 + -0.413512 * t."OUT_0"  + 0.434315 * t."OUT_1"  + -0.589918 * t."OUT_2"  + 0.728335 * t."OUT_3" AS "OUT_0",
    0.386742 + -0.573180 * t."OUT_0"  + 0.545600 * t."OUT_1"  + 0.073217 * t."OUT_2"  + 0.644218 * t."OUT_3" AS "OUT_1",
    0.594799 + 0.208958 * t."OUT_0"  + -0.400001 * t."OUT_1"  + 0.273715 * t."OUT_2"  + -0.119438 * t."OUT_3" AS "OUT_2",
    -0.357124 + 0.254996 * t."OUT_0"  + 0.315838 * t."OUT_1"  + 0.406786 * t."OUT_2"  + -0.575044 * t."OUT_3" AS "OUT_3",
    0.329680 + 0.506129 * t."OUT_0"  + 0.190766 * t."OUT_1"  + -0.587008 * t."OUT_2"  + 0.006043 * t."OUT_3" AS "OUT_4",
    0.466563 + 0.577008 * t."OUT_0"  + 0.025500 * t."OUT_1"  + 0.473844 * t."OUT_2"  + 0.645686 * t."OUT_3" AS "OUT_5",
    0.486804 + 0.508644 * t."OUT_0"  + 0.056742 * t."OUT_1"  + -0.409916 * t."OUT_2"  + -0.540782 * t."OUT_3" AS "OUT_6",
    -0.028160 + -0.427506 * t."OUT_0"  + 0.391580 * t."OUT_1"  + -0.635678 * t."OUT_2"  + 0.313849 * t."OUT_3" AS "OUT_7"
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
    0.562042 + -0.612235 * t."OUT_0"  + -0.270100 * t."OUT_1"  + 0.187145 * t."OUT_2"  + -0.215160 * t."OUT_3"  + -0.309534 * t."OUT_4"  + 0.345923 * t."OUT_5"  + 0.313571 * t."OUT_6"  + 0.091373 * t."OUT_7" AS "OUT_0",
    -0.464738 + 0.295629 * t."OUT_0"  + 0.559126 * t."OUT_1"  + -0.230330 * t."OUT_2"  + 0.376506 * t."OUT_3"  + 0.030118 * t."OUT_4"  + 0.423569 * t."OUT_5"  + 0.333496 * t."OUT_6"  + -0.295713 * t."OUT_7" AS "OUT_1",
    -0.269185 + -0.016325 * t."OUT_0"  + 0.003915 * t."OUT_1"  + -0.276805 * t."OUT_2"  + 0.431074 * t."OUT_3"  + 0.159393 * t."OUT_4"  + 0.084545 * t."OUT_5"  + -0.475414 * t."OUT_6"  + 0.275423 * t."OUT_7" AS "OUT_2",
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
    -0.575971 + -0.277638 * t."OUT_0"  + -0.181311 * t."OUT_1"  + -0.586622 * t."OUT_2"  + -0.667527 * t."OUT_3"  + -0.819586 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
