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
    -0.461225 + -0.087231 * t.OUT_0  + 0.089556 * t.OUT_1  + 0.527149 * t.OUT_2  + 0.619882 * t.OUT_3  + 0.369944 * t.OUT_4  + 0.314811 * t.OUT_5  + -0.160765 * t.OUT_6  + -0.035666 * t.OUT_7  + -0.232900 * t.OUT_8  + -0.458276 * t.OUT_9 AS OUT_0,
    0.329462 + 0.309490 * t.OUT_0  + -0.490943 * t.OUT_1  + 0.115587 * t.OUT_2  + -0.546989 * t.OUT_3  + -0.283447 * t.OUT_4  + -0.671851 * t.OUT_5  + -0.625894 * t.OUT_6  + -0.026516 * t.OUT_7  + 0.211493 * t.OUT_8  + 0.541475 * t.OUT_9 AS OUT_1,
    0.186950 + -0.300907 * t.OUT_0  + 0.155163 * t.OUT_1  + 0.515792 * t.OUT_2  + -0.305505 * t.OUT_3  + -0.354348 * t.OUT_4  + -0.137187 * t.OUT_5  + -0.368473 * t.OUT_6  + -0.619437 * t.OUT_7  + -0.100278 * t.OUT_8  + -0.448385 * t.OUT_9 AS OUT_2,
    0.565006 + -0.078034 * t.OUT_0  + -0.010833 * t.OUT_1  + -0.133485 * t.OUT_2  + 0.275529 * t.OUT_3  + -0.477467 * t.OUT_4  + 0.011785 * t.OUT_5  + 0.506499 * t.OUT_6  + 0.006608 * t.OUT_7  + 0.247311 * t.OUT_8  + 0.320602 * t.OUT_9 AS OUT_3
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
    0.291295 + -0.417472 * t.OUT_0  + 0.392156 * t.OUT_1  + -0.638061 * t.OUT_2  + 0.670744 * t.OUT_3 AS OUT_0,
    0.386540 + -0.530845 * t.OUT_0  + 0.545791 * t.OUT_1  + 0.114815 * t.OUT_2  + 0.644931 * t.OUT_3 AS OUT_1,
    0.653837 + 0.217129 * t.OUT_0  + -0.441788 * t.OUT_1  + 0.264171 * t.OUT_2  + -0.063793 * t.OUT_3 AS OUT_2,
    -0.323638 + 0.289478 * t.OUT_0  + 0.349487 * t.OUT_1  + 0.440833 * t.OUT_2  + -0.540291 * t.OUT_3 AS OUT_3,
    0.272461 + 0.507686 * t.OUT_0  + 0.178115 * t.OUT_1  + -0.572981 * t.OUT_2  + -0.052462 * t.OUT_3 AS OUT_4,
    0.465659 + 0.574565 * t.OUT_0  + 0.084230 * t.OUT_1  + 0.520750 * t.OUT_2  + 0.645542 * t.OUT_3 AS OUT_5,
    0.483749 + 0.505098 * t.OUT_0  + 0.090665 * t.OUT_1  + -0.428126 * t.OUT_2  + -0.541982 * t.OUT_3 AS OUT_6,
    -0.089856 + -0.461292 * t.OUT_0  + 0.374634 * t.OUT_1  + -0.645207 * t.OUT_2  + 0.251485 * t.OUT_3 AS OUT_7
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
    0.620374 + -0.607816 * t.OUT_0  + -0.210052 * t.OUT_1  + 0.184359 * t.OUT_2  + -0.183397 * t.OUT_3  + -0.310823 * t.OUT_4  + 0.387957 * t.OUT_5  + 0.313308 * t.OUT_6  + 0.088923 * t.OUT_7 AS OUT_0,
    -0.464761 + 0.296088 * t.OUT_0  + 0.559693 * t.OUT_1  + -0.231765 * t.OUT_2  + 0.409478 * t.OUT_3  + 0.030772 * t.OUT_4  + 0.424036 * t.OUT_5  + 0.333065 * t.OUT_6  + -0.294183 * t.OUT_7 AS OUT_1,
    -0.273013 + -0.022154 * t.OUT_0  + -0.001649 * t.OUT_1  + -0.220155 * t.OUT_2  + 0.463663 * t.OUT_3  + 0.153409 * t.OUT_4  + 0.082594 * t.OUT_5  + -0.423606 * t.OUT_6  + 0.269331 * t.OUT_7 AS OUT_2,
    -0.494865 + -0.124039 * t.OUT_0  + -0.133482 * t.OUT_1  + -0.133022 * t.OUT_2  + 0.557300 * t.OUT_3  + 0.443776 * t.OUT_4  + -0.225065 * t.OUT_5  + 0.212193 * t.OUT_6  + -0.618701 * t.OUT_7 AS OUT_3,
    -0.483427 + -0.480768 * t.OUT_0  + -0.134456 * t.OUT_1  + 0.286685 * t.OUT_2  + 0.492882 * t.OUT_3  + 0.321790 * t.OUT_4  + -0.161857 * t.OUT_5  + -0.401108 * t.OUT_6  + -0.588556 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.619361 * t.OUT_0  + -0.586402 * t.OUT_1  + -0.462554 * t.OUT_2  + 0.371699 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.324393 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.488080 * t.OUT_7 AS OUT_5
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
    -0.575952 + -0.299920 * t.OUT_0  + -0.181703 * t.OUT_1  + -0.583248 * t.OUT_2  + -0.667527 * t.OUT_3  + -0.823020 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
