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
    -0.500910 + -0.087043 * t.OUT_0  + 0.089659 * t.OUT_1  + 0.527467 * t.OUT_2  + 0.619935 * t.OUT_3  + 0.311387 * t.OUT_4  + 0.252678 * t.OUT_5  + -0.160995 * t.OUT_6  + -0.078716 * t.OUT_7  + -0.230977 * t.OUT_8  + -0.466114 * t.OUT_9 AS OUT_0,
    0.330124 + 0.309405 * t.OUT_0  + -0.489385 * t.OUT_1  + 0.108903 * t.OUT_2  + -0.609524 * t.OUT_3  + -0.342322 * t.OUT_4  + -0.674786 * t.OUT_5  + -0.625169 * t.OUT_6  + -0.025131 * t.OUT_7  + 0.211526 * t.OUT_8  + 0.543173 * t.OUT_9 AS OUT_1,
    0.144239 + -0.277156 * t.OUT_0  + 0.179796 * t.OUT_1  + 0.534357 * t.OUT_2  + -0.284208 * t.OUT_3  + -0.343117 * t.OUT_4  + -0.114336 * t.OUT_5  + -0.345157 * t.OUT_6  + -0.586188 * t.OUT_7  + -0.141681 * t.OUT_8  + -0.489277 * t.OUT_9 AS OUT_2,
    0.565784 + -0.077476 * t.OUT_0  + -0.006165 * t.OUT_1  + -0.129811 * t.OUT_2  + 0.217094 * t.OUT_3  + -0.523201 * t.OUT_4  + 0.002950 * t.OUT_5  + 0.506627 * t.OUT_6  + 0.007729 * t.OUT_7  + 0.248043 * t.OUT_8  + 0.322246 * t.OUT_9 AS OUT_3
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
    0.349218 + -0.412926 * t.OUT_0  + 0.394033 * t.OUT_1  + -0.606422 * t.OUT_2  + 0.727103 * t.OUT_3 AS OUT_0,
    0.386924 + -0.573194 * t.OUT_0  + 0.547254 * t.OUT_1  + 0.089234 * t.OUT_2  + 0.644808 * t.OUT_3 AS OUT_1,
    0.654121 + 0.265530 * t.OUT_0  + -0.397194 * t.OUT_1  + 0.280567 * t.OUT_2  + -0.062678 * t.OUT_3 AS OUT_2,
    -0.387519 + 0.224911 * t.OUT_0  + 0.302663 * t.OUT_1  + 0.406786 * t.OUT_2  + -0.600650 * t.OUT_3 AS OUT_3,
    0.269251 + 0.448270 * t.OUT_0  + 0.180267 * t.OUT_1  + -0.594442 * t.OUT_2  + -0.052122 * t.OUT_3 AS OUT_4,
    0.467107 + 0.577050 * t.OUT_0  + 0.024111 * t.OUT_1  + 0.481067 * t.OUT_2  + 0.646570 * t.OUT_3 AS OUT_5,
    0.485258 + 0.506178 * t.OUT_0  + 0.120888 * t.OUT_1  + -0.402692 * t.OUT_2  + -0.544562 * t.OUT_3 AS OUT_6,
    -0.093428 + -0.487060 * t.OUT_0  + 0.374750 * t.OUT_1  + -0.653897 * t.OUT_2  + 0.248977 * t.OUT_3 AS OUT_7
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
    0.562297 + -0.610396 * t.OUT_0  + -0.266259 * t.OUT_1  + 0.186746 * t.OUT_2  + -0.246324 * t.OUT_3  + -0.308524 * t.OUT_4  + 0.346469 * t.OUT_5  + 0.313474 * t.OUT_6  + 0.105209 * t.OUT_7 AS OUT_0,
    -0.464586 + 0.295993 * t.OUT_0  + 0.559586 * t.OUT_1  + -0.230646 * t.OUT_2  + 0.345492 * t.OUT_3  + 0.031508 * t.OUT_4  + 0.424130 * t.OUT_5  + 0.333448 * t.OUT_6  + -0.294055 * t.OUT_7 AS OUT_1,
    -0.275644 + -0.023396 * t.OUT_0  + -0.003312 * t.OUT_1  + -0.282191 * t.OUT_2  + 0.431074 * t.OUT_3  + 0.156838 * t.OUT_4  + 0.079443 * t.OUT_5  + -0.472689 * t.OUT_6  + 0.268314 * t.OUT_7 AS OUT_2,
    -0.525595 + -0.124039 * t.OUT_0  + -0.133482 * t.OUT_1  + -0.163966 * t.OUT_2  + 0.526213 * t.OUT_3  + 0.413519 * t.OUT_4  + -0.254996 * t.OUT_5  + 0.181580 * t.OUT_6  + -0.618701 * t.OUT_7 AS OUT_3,
    -0.500519 + -0.480768 * t.OUT_0  + -0.151607 * t.OUT_1  + 0.269611 * t.OUT_2  + 0.475690 * t.OUT_3  + 0.321790 * t.OUT_4  + -0.178974 * t.OUT_5  + -0.417195 * t.OUT_6  + -0.588556 * t.OUT_7 AS OUT_4,
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
    -0.576118 + -0.276834 * t.OUT_0  + -0.181485 * t.OUT_1  + -0.579469 * t.OUT_2  + -0.638192 * t.OUT_3  + -0.819586 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
