WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_sampled" AS "ADS" 
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
    -0.501252 + -0.087165 * t."OUT_0"  + 0.089344 * t."OUT_1"  + 0.527245 * t."OUT_2"  + 0.619531 * t."OUT_3"  + 0.310858 * t."OUT_4"  + 0.252817 * t."OUT_5"  + -0.160778 * t."OUT_6"  + -0.078733 * t."OUT_7"  + -0.231382 * t."OUT_8"  + -0.466701 * t."OUT_9" AS "OUT_0",
    0.330933 + 0.310911 * t."OUT_0"  + -0.488067 * t."OUT_1"  + 0.110679 * t."OUT_2"  + -0.609429 * t."OUT_3"  + -0.341664 * t."OUT_4"  + -0.678141 * t."OUT_5"  + -0.622032 * t."OUT_6"  + -0.023846 * t."OUT_7"  + 0.214034 * t."OUT_8"  + 0.544563 * t."OUT_9" AS "OUT_1",
    0.154196 + -0.236720 * t."OUT_0"  + 0.159904 * t."OUT_1"  + 0.513029 * t."OUT_2"  + -0.243732 * t."OUT_3"  + -0.302370 * t."OUT_4"  + -0.104379 * t."OUT_5"  + -0.304402 * t."OUT_6"  + -0.554846 * t."OUT_7"  + -0.107005 * t."OUT_8"  + -0.448143 * t."OUT_9" AS "OUT_2",
    0.568558 + -0.074939 * t."OUT_0"  + -0.000649 * t."OUT_1"  + -0.128940 * t."OUT_2"  + 0.221953 * t."OUT_3"  + -0.530903 * t."OUT_4"  + 0.008561 * t."OUT_5"  + 0.510323 * t."OUT_6"  + 0.011115 * t."OUT_7"  + 0.252275 * t."OUT_8"  + 0.324346 * t."OUT_9" AS "OUT_3"
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
    0.349349 + -0.413119 * t."OUT_0"  + 0.438131 * t."OUT_1"  + -0.575055 * t."OUT_2"  + 0.728154 * t."OUT_3" AS "OUT_0",
    0.386327 + -0.573607 * t."OUT_0"  + 0.545215 * t."OUT_1"  + 0.089234 * t."OUT_2"  + 0.644038 * t."OUT_3" AS "OUT_1",
    0.631172 + 0.208555 * t."OUT_0"  + -0.401987 * t."OUT_1"  + 0.259038 * t."OUT_2"  + -0.082600 * t."OUT_3" AS "OUT_2",
    -0.357124 + 0.224591 * t."OUT_0"  + 0.285117 * t."OUT_1"  + 0.375766 * t."OUT_2"  + -0.543716 * t."OUT_3" AS "OUT_3",
    0.330051 + 0.506517 * t."OUT_0"  + 0.199402 * t."OUT_1"  + -0.572194 * t."OUT_2"  + 0.006668 * t."OUT_3" AS "OUT_4",
    0.466759 + 0.576595 * t."OUT_0"  + 0.024746 * t."OUT_1"  + 0.458933 * t."OUT_2"  + 0.645761 * t."OUT_3" AS "OUT_5",
    0.485686 + 0.508139 * t."OUT_0"  + 0.083052 * t."OUT_1"  + -0.362665 * t."OUT_2"  + -0.542289 * t."OUT_3" AS "OUT_6",
    -0.050065 + -0.427067 * t."OUT_0"  + 0.397121 * t."OUT_1"  + -0.622478 * t."OUT_2"  + 0.292005 * t."OUT_3" AS "OUT_7"
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
    0.562297 + -0.611971 * t."OUT_0"  + -0.269793 * t."OUT_1"  + 0.186849 * t."OUT_2"  + -0.185056 * t."OUT_3"  + -0.309299 * t."OUT_4"  + 0.346018 * t."OUT_5"  + 0.313974 * t."OUT_6"  + 0.092932 * t."OUT_7" AS "OUT_0",
    -0.464820 + 0.295585 * t."OUT_0"  + 0.559087 * t."OUT_1"  + -0.230922 * t."OUT_2"  + 0.345570 * t."OUT_3"  + 0.030033 * t."OUT_4"  + 0.423459 * t."OUT_5"  + 0.333468 * t."OUT_6"  + -0.294840 * t."OUT_7" AS "OUT_1",
    -0.266116 + -0.012931 * t."OUT_0"  + 0.007126 * t."OUT_1"  + -0.274423 * t."OUT_2"  + 0.399994 * t."OUT_3"  + 0.162586 * t."OUT_4"  + 0.087835 * t."OUT_5"  + -0.474050 * t."OUT_6"  + 0.279033 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.106816 * t."OUT_1"  + -0.106364 * t."OUT_2"  + 0.525995 * t."OUT_3"  + 0.412668 * t."OUT_4"  + -0.194876 * t."OUT_5"  + 0.182116 * t."OUT_6"  + -0.587319 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.449586 * t."OUT_0"  + -0.122293 * t."OUT_1"  + 0.239118 * t."OUT_2"  + 0.444517 * t."OUT_3"  + 0.291045 * t."OUT_4"  + -0.149254 * t."OUT_5"  + -0.386148 * t."OUT_6"  + -0.557210 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.587979 * t."OUT_0"  + -0.555059 * t."OUT_1"  + -0.431408 * t."OUT_2"  + 0.340777 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.293637 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.456885 * t."OUT_7" AS "OUT_5"
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
    -0.575893 + -0.277683 * t."OUT_0"  + -0.181195 * t."OUT_1"  + -0.589602 * t."OUT_2"  + -0.636095 * t."OUT_3"  + -0.788033 * t."OUT_4"  + 0.148976 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
