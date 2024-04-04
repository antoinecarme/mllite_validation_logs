WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
    t."X_8" AS "OUT_8"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.482962 + -0.027740 * t."OUT_0"  + 0.094121 * t."OUT_1"  + 0.548395 * t."OUT_2"  + 0.644583 * t."OUT_3"  + 0.324222 * t."OUT_4"  + 0.263488 * t."OUT_5"  + -0.165801 * t."OUT_6"  + -0.080772 * t."OUT_7"  + -0.178038 * t."OUT_8" AS "OUT_0",
    0.594989 + 0.321918 * t."OUT_0"  + -0.445751 * t."OUT_1"  + 0.144144 * t."OUT_2"  + -0.569594 * t."OUT_3"  + -0.295081 * t."OUT_4"  + -0.639453 * t."OUT_5"  + -0.586032 * t."OUT_6"  + 0.005603 * t."OUT_7"  + 0.220775 * t."OUT_8" AS "OUT_1",
    -0.497416 + -0.247177 * t."OUT_0"  + 0.167556 * t."OUT_1"  + 0.533780 * t."OUT_2"  + -0.254447 * t."OUT_3"  + -0.315255 * t."OUT_4"  + -0.108320 * t."OUT_5"  + -0.317362 * t."OUT_6"  + -0.577166 * t."OUT_7"  + -0.136696 * t."OUT_8" AS "OUT_2",
    0.333668 + -0.018577 * t."OUT_0"  + -0.009793 * t."OUT_1"  + -0.137905 * t."OUT_2"  + 0.221321 * t."OUT_3"  + -0.558617 * t."OUT_4"  + 0.000251 * t."OUT_5"  + 0.524301 * t."OUT_6"  + 0.007310 * t."OUT_7"  + 0.257470 * t."OUT_8" AS "OUT_3"
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
    -0.025484 + -0.476964 * t."OUT_0"  + 0.444683 * t."OUT_1"  + 0.179886 * t."OUT_2"  + -0.572415 * t."OUT_3" AS "OUT_0",
    0.644658 + 0.357784 * t."OUT_0"  + 0.575409 * t."OUT_1"  + 0.053026 * t."OUT_2"  + 0.459408 * t."OUT_3" AS "OUT_1",
    -0.478154 + 0.198417 * t."OUT_0"  + 0.507096 * t."OUT_1"  + 0.089744 * t."OUT_2"  + -0.362299 * t."OUT_3" AS "OUT_2",
    0.247390 + 0.611157 * t."OUT_0"  + -0.428481 * t."OUT_1"  + 0.373186 * t."OUT_2"  + -0.684522 * t."OUT_3" AS "OUT_3",
    0.318401 + -0.413093 * t."OUT_0"  + 0.392011 * t."OUT_1"  + -0.575274 * t."OUT_2"  + 0.666390 * t."OUT_3" AS "OUT_4",
    0.417701 + -0.513921 * t."OUT_0"  + 0.545168 * t."OUT_1"  + 0.089234 * t."OUT_2"  + 0.643622 * t."OUT_3" AS "OUT_5",
    0.591670 + 0.205391 * t."OUT_0"  + -0.396207 * t."OUT_1"  + 0.259450 * t."OUT_2"  + -0.123821 * t."OUT_3" AS "OUT_6",
    -0.325168 + 0.286756 * t."OUT_0"  + 0.285500 * t."OUT_1"  + 0.376074 * t."OUT_2"  + -0.543804 * t."OUT_3" AS "OUT_7"
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
    0.299111 + 0.245395 * t."OUT_0"  + 0.007260 * t."OUT_1"  + 0.027252 * t."OUT_2"  + -0.224128 * t."OUT_3"  + 0.400288 * t."OUT_4"  + 0.156136 * t."OUT_5"  + 0.107910 * t."OUT_6"  + -0.422008 * t."OUT_7" AS "OUT_0",
    -0.618701 + 0.429855 * t."OUT_0"  + -0.124039 * t."OUT_1"  + -0.133482 * t."OUT_2"  + -0.133022 * t."OUT_3"  + 0.526231 * t."OUT_4"  + 0.412954 * t."OUT_5"  + -0.195384 * t."OUT_6"  + 0.182649 * t."OUT_7" AS "OUT_1",
    -0.588556 + 0.448690 * t."OUT_0"  + -0.449854 * t."OUT_1"  + -0.151607 * t."OUT_2"  + 0.239555 * t."OUT_3"  + 0.444787 * t."OUT_4"  + 0.291422 * t."OUT_5"  + -0.154200 * t."OUT_6"  + -0.386450 * t."OUT_7" AS "OUT_2",
    0.488080 + -0.058667 * t."OUT_0"  + -0.588194 * t."OUT_1"  + -0.555284 * t."OUT_2"  + -0.431684 * t."OUT_3"  + 0.341110 * t."OUT_4"  + -0.001604 * t."OUT_5"  + -0.294011 * t."OUT_6"  + -0.001729 * t."OUT_7" AS "OUT_3",
    0.593266 + -0.550089 * t."OUT_0"  + -0.209633 * t."OUT_1"  + 0.188515 * t."OUT_2"  + -0.185583 * t."OUT_3"  + -0.248064 * t."OUT_4"  + 0.345895 * t."OUT_5"  + 0.313933 * t."OUT_6"  + 0.122957 * t."OUT_7" AS "OUT_4",
    -0.464831 + 0.296743 * t."OUT_0"  + 0.559218 * t."OUT_1"  + -0.232764 * t."OUT_2"  + 0.345130 * t."OUT_3"  + 0.061712 * t."OUT_4"  + 0.423650 * t."OUT_5"  + 0.333339 * t."OUT_6"  + -0.296565 * t."OUT_7" AS "OUT_5"
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
    -0.573871 + -0.317282 * t."OUT_0"  + -0.668577 * t."OUT_1"  + -0.676564 * t."OUT_2"  + -0.679560 * t."OUT_3"  + -0.277115 * t."OUT_4"  + -0.180879 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
