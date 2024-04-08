WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_tiny" AS "ADS" 
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
    -0.498034 + -0.087588 * t."OUT_0"  + 0.089373 * t."OUT_1"  + 0.527311 * t."OUT_2"  + 0.619938 * t."OUT_3"  + 0.374291 * t."OUT_4"  + 0.314573 * t."OUT_5"  + -0.160870 * t."OUT_6"  + -0.064059 * t."OUT_7"  + -0.231187 * t."OUT_8"  + -0.405212 * t."OUT_9" AS "OUT_0",
    0.326803 + 0.306215 * t."OUT_0"  + -0.428839 * t."OUT_1"  + 0.107600 * t."OUT_2"  + -0.547259 * t."OUT_3"  + -0.312172 * t."OUT_4"  + -0.617974 * t."OUT_5"  + -0.612851 * t."OUT_6"  + 0.022370 * t."OUT_7"  + 0.214954 * t."OUT_8"  + 0.604303 * t."OUT_9" AS "OUT_1",
    0.120723 + -0.298958 * t."OUT_0"  + 0.159396 * t."OUT_1"  + 0.512455 * t."OUT_2"  + -0.300700 * t."OUT_3"  + -0.300086 * t."OUT_4"  + -0.071756 * t."OUT_5"  + -0.366740 * t."OUT_6"  + -0.553580 * t."OUT_7"  + -0.163573 * t."OUT_8"  + -0.447397 * t."OUT_9" AS "OUT_2",
    0.564345 + -0.075249 * t."OUT_0"  + -0.010572 * t."OUT_1"  + -0.132905 * t."OUT_2"  + 0.208615 * t."OUT_3"  + -0.505632 * t."OUT_4"  + 0.060742 * t."OUT_5"  + 0.504618 * t."OUT_6"  + 0.066184 * t."OUT_7"  + 0.246926 * t."OUT_8"  + 0.383057 * t."OUT_9" AS "OUT_3"
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
    0.322168 + -0.412471 * t."OUT_0"  + 0.394505 * t."OUT_1"  + -0.634549 * t."OUT_2"  + 0.680798 * t."OUT_3" AS "OUT_0",
    0.384234 + -0.513391 * t."OUT_0"  + 0.544051 * t."OUT_1"  + 0.059189 * t."OUT_2"  + 0.644721 * t."OUT_3" AS "OUT_1",
    0.606596 + 0.207505 * t."OUT_0"  + -0.432323 * t."OUT_1"  + 0.261525 * t."OUT_2"  + -0.121074 * t."OUT_3" AS "OUT_2",
    -0.390511 + 0.233759 * t."OUT_0"  + 0.283423 * t."OUT_1"  + 0.375584 * t."OUT_2"  + -0.603977 * t."OUT_3" AS "OUT_3",
    0.326593 + 0.507647 * t."OUT_0"  + 0.208216 * t."OUT_1"  + -0.571571 * t."OUT_2"  + 0.005942 * t."OUT_3" AS "OUT_4",
    0.467862 + 0.575602 * t."OUT_0"  + 0.023954 * t."OUT_1"  + 0.459699 * t."OUT_2"  + 0.645985 * t."OUT_3" AS "OUT_5",
    0.491037 + 0.507199 * t."OUT_0"  + 0.068091 * t."OUT_1"  + -0.423525 * t."OUT_2"  + -0.539668 * t."OUT_3" AS "OUT_6",
    -0.080228 + -0.428481 * t."OUT_0"  + 0.385768 * t."OUT_1"  + -0.674970 * t."OUT_2"  + 0.248449 * t."OUT_3" AS "OUT_7"
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
    0.567518 + -0.601104 * t."OUT_0"  + -0.249554 * t."OUT_1"  + 0.187288 * t."OUT_2"  + -0.245614 * t."OUT_3"  + -0.307597 * t."OUT_4"  + 0.346244 * t."OUT_5"  + 0.315382 * t."OUT_6"  + 0.103744 * t."OUT_7" AS "OUT_0",
    -0.464814 + 0.295831 * t."OUT_0"  + 0.558994 * t."OUT_1"  + -0.229826 * t."OUT_2"  + 0.345831 * t."OUT_3"  + 0.028875 * t."OUT_4"  + 0.423777 * t."OUT_5"  + 0.332526 * t."OUT_6"  + -0.294497 * t."OUT_7" AS "OUT_1",
    -0.278412 + -0.024647 * t."OUT_0"  + -0.004536 * t."OUT_1"  + -0.247508 * t."OUT_2"  + 0.399722 * t."OUT_3"  + 0.149193 * t."OUT_4"  + 0.076283 * t."OUT_5"  + -0.438691 * t."OUT_6"  + 0.267450 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.526231 * t."OUT_3"  + 0.412954 * t."OUT_4"  + -0.195384 * t."OUT_5"  + 0.182649 * t."OUT_6"  + -0.587535 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.449854 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.239555 * t."OUT_2"  + 0.444787 * t."OUT_3"  + 0.291422 * t."OUT_4"  + -0.154200 * t."OUT_5"  + -0.386450 * t."OUT_6"  + -0.557435 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.588194 * t."OUT_0"  + -0.555284 * t."OUT_1"  + -0.431684 * t."OUT_2"  + 0.341110 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.294011 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.457149 * t."OUT_7" AS "OUT_5"
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
    -0.575897 + -0.276749 * t."OUT_0"  + -0.181028 * t."OUT_1"  + -0.577052 * t."OUT_2"  + -0.636297 * t."OUT_3"  + -0.788203 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
