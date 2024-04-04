WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
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
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.470260 + -0.056448 * t."OUT_0"  + 0.120414 * t."OUT_1"  + 0.488230 * t."OUT_2"  + 0.579988 * t."OUT_3"  + 0.342145 * t."OUT_4"  + 0.283620 * t."OUT_5"  + -0.130053 * t."OUT_6"  + -0.048116 * t."OUT_7"  + -0.199980 * t."OUT_8"  + -0.435677 * t."OUT_9" AS "OUT_0",
    0.373068 + 0.286565 * t."OUT_0"  + -0.438545 * t."OUT_1"  + 0.128452 * t."OUT_2"  + -0.598252 * t."OUT_3"  + -0.310843 * t."OUT_4"  + -0.616116 * t."OUT_5"  + -0.574828 * t."OUT_6"  + -0.015387 * t."OUT_7"  + 0.215246 * t."OUT_8"  + 0.532842 * t."OUT_9" AS "OUT_1",
    0.095671 + -0.240963 * t."OUT_0"  + 0.182563 * t."OUT_1"  + 0.497764 * t."OUT_2"  + -0.308516 * t."OUT_3"  + -0.362992 * t."OUT_4"  + -0.146537 * t."OUT_5"  + -0.299550 * t."OUT_6"  + -0.614535 * t."OUT_7"  + -0.153726 * t."OUT_8"  + -0.473371 * t."OUT_9" AS "OUT_2",
    0.574531 + -0.106609 * t."OUT_0"  + 0.044279 * t."OUT_1"  + -0.139212 * t."OUT_2"  + 0.202168 * t."OUT_3"  + -0.523239 * t."OUT_4"  + 0.041642 * t."OUT_5"  + 0.577400 * t."OUT_6"  + -0.004498 * t."OUT_7"  + 0.232340 * t."OUT_8"  + 0.296914 * t."OUT_9" AS "OUT_3"
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
    0.357830 + -0.443915 * t."OUT_0"  + 0.459532 * t."OUT_1"  + -0.560196 * t."OUT_2"  + 0.736809 * t."OUT_3" AS "OUT_0",
    0.314021 + -0.475190 * t."OUT_0"  + 0.471176 * t."OUT_1"  + -0.003644 * t."OUT_2"  + 0.571166 * t."OUT_3" AS "OUT_1",
    0.652875 + 0.236548 * t."OUT_0"  + -0.395340 * t."OUT_1"  + 0.306910 * t."OUT_2"  + -0.063404 * t."OUT_3" AS "OUT_2",
    -0.357124 + 0.254996 * t."OUT_0"  + 0.315838 * t."OUT_1"  + 0.406786 * t."OUT_2"  + -0.504920 * t."OUT_3" AS "OUT_3",
    0.358827 + 0.475586 * t."OUT_0"  + 0.269720 * t."OUT_1"  + -0.542942 * t."OUT_2"  + 0.035706 * t."OUT_3" AS "OUT_4",
    0.426647 + 0.536104 * t."OUT_0"  + -0.018836 * t."OUT_1"  + 0.425312 * t."OUT_2"  + 0.604825 * t."OUT_3" AS "OUT_5",
    0.448267 + 0.468437 * t."OUT_0"  + 0.019184 * t."OUT_1"  + -0.457573 * t."OUT_2"  + -0.580280 * t."OUT_3" AS "OUT_6",
    0.049449 + -0.459344 * t."OUT_0"  + 0.517052 * t."OUT_1"  + -0.548344 * t."OUT_2"  + 0.391130 * t."OUT_3" AS "OUT_7"
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
    0.536392 + -0.639267 * t."OUT_0"  + -0.294728 * t."OUT_1"  + 0.161972 * t."OUT_2"  + -0.215160 * t."OUT_3"  + -0.338749 * t."OUT_4"  + 0.320980 * t."OUT_5"  + 0.295966 * t."OUT_6"  + 0.058625 * t."OUT_7" AS "OUT_0",
    -0.521516 + 0.235693 * t."OUT_0"  + 0.505099 * t."OUT_1"  + -0.286213 * t."OUT_2"  + 0.376506 * t."OUT_3"  + -0.035122 * t."OUT_4"  + 0.369448 * t."OUT_5"  + 0.292427 * t."OUT_6"  + -0.368407 * t."OUT_7" AS "OUT_1",
    -0.245913 + 0.007260 * t."OUT_0"  + 0.027252 * t."OUT_1"  + -0.254067 * t."OUT_2"  + 0.431074 * t."OUT_3"  + 0.182889 * t."OUT_4"  + 0.107910 * t."OUT_5"  + -0.452853 * t."OUT_6"  + 0.299111 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.487376 * t."OUT_3"  + 0.443776 * t."OUT_4"  + -0.225065 * t."OUT_5"  + 0.212193 * t."OUT_6"  + -0.548128 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.480768 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.269611 * t."OUT_2"  + 0.475690 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.178974 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.518286 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.548783 * t."OUT_0"  + -0.516155 * t."OUT_1"  + -0.462554 * t."OUT_2"  + 0.371699 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.324393 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.488080 * t."OUT_7" AS "OUT_5"
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
    -0.511999 + -0.270376 * t."OUT_0"  + -0.136085 * t."OUT_1"  + -0.535488 * t."OUT_2"  + -0.596520 * t."OUT_3"  + -0.747540 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
