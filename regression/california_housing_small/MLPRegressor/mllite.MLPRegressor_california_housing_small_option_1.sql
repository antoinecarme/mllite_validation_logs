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
    -0.482903 + -0.027799 * t.OUT_0  + 0.094180 * t.OUT_1  + 0.548454 * t.OUT_2  + 0.644643 * t.OUT_3  + 0.324282 * t.OUT_4  + 0.263548 * t.OUT_5  + -0.165742 * t.OUT_6  + -0.080713 * t.OUT_7  + -0.207529 * t.OUT_8 AS OUT_0,
    0.594989 + 0.352428 * t.OUT_0  + -0.476655 * t.OUT_1  + 0.144144 * t.OUT_2  + -0.600733 * t.OUT_3  + -0.325468 * t.OUT_4  + -0.670687 * t.OUT_5  + -0.617195 * t.OUT_6  + 0.005603 * t.OUT_7  + 0.250686 * t.OUT_8 AS OUT_1,
    -0.497416 + -0.277285 * t.OUT_0  + 0.196917 * t.OUT_1  + 0.564862 * t.OUT_2  + -0.284604 * t.OUT_3  + -0.345737 * t.OUT_4  + -0.108320 * t.OUT_5  + -0.347853 * t.OUT_6  + -0.608316 * t.OUT_7  + -0.136696 * t.OUT_8 AS OUT_2,
    0.333722 + -0.018631 * t.OUT_0  + -0.009739 * t.OUT_1  + -0.137851 * t.OUT_2  + 0.221376 * t.OUT_3  + -0.558563 * t.OUT_4  + 0.000306 * t.OUT_5  + 0.524356 * t.OUT_6  + 0.007363 * t.OUT_7  + 0.287646 * t.OUT_8 AS OUT_3
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
    0.644712 + 0.357845 * t.OUT_0  + 0.606558 * t.OUT_1  + 0.053026 * t.OUT_2  + 0.459479 * t.OUT_3 AS OUT_1,
    -0.478202 + 0.198362 * t.OUT_0  + 0.538130 * t.OUT_1  + 0.089744 * t.OUT_2  + -0.362364 * t.OUT_3 AS OUT_2,
    0.247445 + 0.611219 * t.OUT_0  + -0.459344 * t.OUT_1  + 0.403889 * t.OUT_2  + -0.684450 * t.OUT_3 AS OUT_3,
    0.318401 + -0.443915 * t.OUT_0  + 0.422772 * t.OUT_1  + -0.606422 * t.OUT_2  + 0.697656 * t.OUT_3 AS OUT_4,
    0.417701 + -0.544968 * t.OUT_0  + 0.576270 * t.OUT_1  + 0.089234 * t.OUT_2  + 0.674861 * t.OUT_3 AS OUT_5,
    0.591725 + 0.205453 * t.OUT_0  + -0.426981 * t.OUT_1  + 0.289639 * t.OUT_2  + -0.123750 * t.OUT_3 AS OUT_6,
    -0.325218 + 0.286699 * t.OUT_0  + 0.315838 * t.OUT_1  + 0.406786 * t.OUT_2  + -0.543870 * t.OUT_3 AS OUT_7
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
    0.593266 + -0.581198 * t.OUT_0  + -0.239449 * t.OUT_1  + 0.218124 * t.OUT_2  + -0.215160 * t.OUT_3  + -0.278179 * t.OUT_4  + 0.376502 * t.OUT_5  + 0.344409 * t.OUT_6  + 0.122957 * t.OUT_7 AS OUT_4,
    -0.464778 + 0.327138 * t.OUT_0  + 0.559283 * t.OUT_1  + -0.232772 * t.OUT_2  + 0.345187 * t.OUT_3  + 0.061712 * t.OUT_4  + 0.454500 * t.OUT_5  + 0.333405 * t.OUT_6  + -0.296561 * t.OUT_7 AS OUT_5
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
    -0.573920 + -0.347773 * t.OUT_0  + -0.699845 * t.OUT_1  + -0.707841 * t.OUT_2  + -0.710840 * t.OUT_3  + -0.307408 * t.OUT_4  + -0.180942 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
