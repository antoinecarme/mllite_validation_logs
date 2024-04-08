WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_small" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    0.418935 + -0.108960 * t."OUT_0"  + 0.126334 * t."OUT_1"  + 0.704729 * t."OUT_2"  + 0.827064 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.449260 * t."OUT_0"  + -0.607619 * t."OUT_1"  + 0.183749 * t."OUT_2"  + -0.736250 * t."OUT_3" AS "OUT_1",
    -0.459291 + -0.369845 * t."OUT_0"  + 0.230262 * t."OUT_1"  + 0.701045 * t."OUT_2"  + -0.379920 * t."OUT_3" AS "OUT_2",
    -0.639478 + -0.031000 * t."OUT_0"  + 0.059963 * t."OUT_1"  + -0.103046 * t."OUT_2"  + 0.354753 * t."OUT_3" AS "OUT_3"
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
    0.394415 + 0.279461 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.470585 * t."OUT_2"  + -0.469418 * t."OUT_3" AS "OUT_0",
    0.546498 + -0.727849 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.589103 * t."OUT_2"  + -0.577691 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.294768 + 0.013230 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.360207 * t."OUT_2"  + 0.232115 * t."OUT_3" AS "OUT_3",
    0.219105 + -0.130846 * t."OUT_0"  + -0.216003 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.485431 * t."OUT_3" AS "OUT_4",
    0.085762 + -0.610796 * t."OUT_0"  + 0.260923 * t."OUT_1"  + 0.420873 * t."OUT_2"  + 0.640769 * t."OUT_3" AS "OUT_5",
    0.118170 + -0.334180 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.194565 * t."OUT_2"  + 0.567058 * t."OUT_3" AS "OUT_6",
    0.373684 + 0.548888 * t."OUT_0"  + 0.299391 * t."OUT_1"  + 0.612457 * t."OUT_2"  + -0.491995 * t."OUT_3" AS "OUT_7"
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
    -0.245636 + -0.561438 * t."OUT_0"  + -0.338408 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.609014 * t."OUT_3"  + -0.581198 * t."OUT_4"  + -0.204487 * t."OUT_5"  + 0.246892 * t."OUT_6"  + -0.183472 * t."OUT_7" AS "OUT_0",
    0.093400 + 0.110681 * t."OUT_0"  + -0.581019 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.299328 * t."OUT_3"  + 0.336357 * t."OUT_4"  + 0.625890 * t."OUT_5"  + -0.170334 * t."OUT_6"  + 0.407223 * t."OUT_7" AS "OUT_1",
    0.214969 + 0.296616 * t."OUT_0"  + 0.670638 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.307205 * t."OUT_3"  + 0.016470 * t."OUT_4"  + 0.062956 * t."OUT_5"  + -0.225271 * t."OUT_6"  + 0.462214 * t."OUT_7" AS "OUT_2",
    0.412525 + 0.348966 * t."OUT_0"  + 0.600797 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.429869 * t."OUT_3"  + -0.133269 * t."OUT_4"  + -0.169001 * t."OUT_5"  + -0.161825 * t."OUT_6"  + 0.527046 * t."OUT_7" AS "OUT_3",
    0.290624 + -0.586352 * t."OUT_0"  + -0.110224 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.448837 * t."OUT_3"  + -0.490000 * t."OUT_4"  + -0.187103 * t."OUT_5"  + 0.240809 * t."OUT_6"  + 0.445525 * t."OUT_7" AS "OUT_4",
    -0.032957 + 0.426035 * t."OUT_0"  + -0.556471 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.089624 * t."OUT_3"  + -0.628587 * t."OUT_4"  + -0.621949 * t."OUT_5"  + -0.491360 * t."OUT_6"  + 0.341338 * t."OUT_7" AS "OUT_5"
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
    0.518614 + 0.567939 * t."OUT_0"  + 0.675395 * t."OUT_1"  + 0.183125 * t."OUT_2"  + -0.288232 * t."OUT_3"  + -0.222534 * t."OUT_4"  + -0.431560 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
