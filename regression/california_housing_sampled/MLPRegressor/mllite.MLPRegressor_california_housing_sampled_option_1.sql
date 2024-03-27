WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
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
    t.X_8 AS OUT_8
 FROM model_input AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.541472 + 0.030776 * t.OUT_0  + 0.035588 * t.OUT_1  + 0.489909 * t.OUT_2  + 0.586459 * t.OUT_3  + 0.265406 * t.OUT_4  + 0.205127 * t.OUT_5  + -0.224215 * t.OUT_6  + -0.138759 * t.OUT_7  + -0.207529 * t.OUT_8 AS OUT_0,
    0.594989 + 0.352428 * t.OUT_0  + -0.476655 * t.OUT_1  + 0.144144 * t.OUT_2  + -0.600733 * t.OUT_3  + -0.325468 * t.OUT_4  + -0.670687 * t.OUT_5  + -0.617195 * t.OUT_6  + 0.005603 * t.OUT_7  + 0.250686 * t.OUT_8 AS OUT_1,
    -0.514298 + -0.260479 * t.OUT_0  + 0.180205 * t.OUT_1  + 0.543771 * t.OUT_2  + -0.298662 * t.OUT_3  + -0.359557 * t.OUT_4  + -0.121249 * t.OUT_5  + -0.361932 * t.OUT_6  + -0.621164 * t.OUT_7  + -0.136696 * t.OUT_8 AS OUT_2,
    0.221858 + 0.093254 * t.OUT_0  + -0.121656 * t.OUT_1  + -0.248897 * t.OUT_2  + 0.105914 * t.OUT_3  + -0.668098 * t.OUT_4  + -0.112374 * t.OUT_5  + 0.410528 * t.OUT_6  + -0.106902 * t.OUT_7  + 0.287646 * t.OUT_8 AS OUT_3
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
    -0.025484 + -0.507938 * t.OUT_0  + 0.475586 * t.OUT_1  + 0.209398 * t.OUT_2  + -0.603558 * t.OUT_3 AS OUT_0,
    0.538636 + 0.259421 * t.OUT_0  + 0.606558 * t.OUT_1  + -0.008527 * t.OUT_2  + 0.399601 * t.OUT_3 AS OUT_1,
    -0.341442 + 0.327467 * t.OUT_0  + 0.538130 * t.OUT_1  + 0.161228 * t.OUT_2  + -0.283191 * t.OUT_3 AS OUT_2,
    0.148022 + 0.519215 * t.OUT_0  + -0.459344 * t.OUT_1  + 0.347526 * t.OUT_2  + -0.740951 * t.OUT_3 AS OUT_3,
    0.318401 + -0.443915 * t.OUT_0  + 0.422772 * t.OUT_1  + -0.606422 * t.OUT_2  + 0.697656 * t.OUT_3 AS OUT_4,
    0.417701 + -0.544968 * t.OUT_0  + 0.576270 * t.OUT_1  + 0.089234 * t.OUT_2  + 0.674861 * t.OUT_3 AS OUT_5,
    0.490567 + 0.111837 * t.OUT_0  + -0.426981 * t.OUT_1  + 0.217643 * t.OUT_2  + -0.180904 * t.OUT_3 AS OUT_6,
    -0.193593 + 0.410558 * t.OUT_0  + 0.315838 * t.OUT_1  + 0.481315 * t.OUT_2  + -0.468308 * t.OUT_3 AS OUT_7
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
    0.299111 + 0.275492 * t.OUT_0  + 0.007260 * t.OUT_1  + 0.027252 * t.OUT_2  + -0.254067 * t.OUT_3  + 0.431074 * t.OUT_4  + 0.182889 * t.OUT_5  + 0.107910 * t.OUT_6  + -0.452853 * t.OUT_7 AS OUT_0,
    -0.618701 + 0.460721 * t.OUT_0  + -0.124039 * t.OUT_1  + -0.133482 * t.OUT_2  + -0.133022 * t.OUT_3  + 0.557300 * t.OUT_4  + 0.443776 * t.OUT_5  + -0.225065 * t.OUT_6  + 0.212193 * t.OUT_7 AS OUT_1,
    -0.588556 + 0.479602 * t.OUT_0  + -0.480768 * t.OUT_1  + -0.151607 * t.OUT_2  + 0.269611 * t.OUT_3  + 0.475690 * t.OUT_4  + 0.321790 * t.OUT_5  + -0.178974 * t.OUT_6  + -0.417195 * t.OUT_7 AS OUT_2,
    0.488080 + -0.058667 * t.OUT_0  + -0.619361 * t.OUT_1  + -0.586402 * t.OUT_2  + -0.462554 * t.OUT_3  + 0.371699 * t.OUT_4  + -0.001604 * t.OUT_5  + -0.324393 * t.OUT_6  + -0.001729 * t.OUT_7 AS OUT_3,
    0.544272 + -0.581198 * t.OUT_0  + -0.277245 * t.OUT_1  + 0.165491 * t.OUT_2  + -0.259251 * t.OUT_3  + -0.278179 * t.OUT_4  + 0.376502 * t.OUT_5  + 0.301915 * t.OUT_6  + 0.073054 * t.OUT_7 AS OUT_4,
    -0.578056 + 0.327138 * t.OUT_0  + 0.473808 * t.OUT_1  + -0.397027 * t.OUT_2  + 0.235701 * t.OUT_3  + 0.061712 * t.OUT_4  + 0.454500 * t.OUT_5  + 0.248490 * t.OUT_6  + -0.454043 * t.OUT_7 AS OUT_5
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
    -0.190469 + -0.347773 * t.OUT_0  + -0.699845 * t.OUT_1  + -0.707841 * t.OUT_2  + -0.710840 * t.OUT_3  + -0.259426 * t.OUT_4  + -0.112920 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
