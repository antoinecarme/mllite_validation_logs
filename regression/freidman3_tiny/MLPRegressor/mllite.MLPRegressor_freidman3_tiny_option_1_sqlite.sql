WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
    0.424454 + -0.104507 * t."OUT_0"  + 0.132473 * t."OUT_1"  + 0.710678 * t."OUT_2"  + 0.832354 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.418424 * t."OUT_0"  + -0.576469 * t."OUT_1"  + 0.156986 * t."OUT_2"  + -0.734452 * t."OUT_3" AS "OUT_1",
    -0.459743 + -0.370526 * t."OUT_0"  + 0.230699 * t."OUT_1"  + 0.700311 * t."OUT_2"  + -0.381087 * t."OUT_3" AS "OUT_2",
    -0.644920 + -0.036198 * t."OUT_0"  + 0.054327 * t."OUT_1"  + -0.108680 * t."OUT_2"  + 0.349324 * t."OUT_3" AS "OUT_3"
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
    0.422772 + 0.276058 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.439695 * t."OUT_2"  + -0.413093 * t."OUT_3" AS "OUT_0",
    0.551472 + -0.722911 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.594182 * t."OUT_2"  + -0.572262 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.601970 * t."OUT_1"  + -0.486733 * t."OUT_2"  + 0.206758 * t."OUT_3" AS "OUT_2",
    0.297626 + 0.015901 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.362936 * t."OUT_2"  + 0.235853 * t."OUT_3" AS "OUT_3",
    0.209398 + -0.140474 * t."OUT_0"  + -0.186417 * t."OUT_1"  + -0.476964 * t."OUT_2"  + 0.444683 * t."OUT_3" AS "OUT_4",
    0.080052 + -0.616713 * t."OUT_0"  + 0.230930 * t."OUT_1"  + 0.414826 * t."OUT_2"  + 0.634936 * t."OUT_3" AS "OUT_5",
    0.115496 + -0.334724 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.191208 * t."OUT_2"  + 0.561397 * t."OUT_3" AS "OUT_6",
    0.378715 + 0.553856 * t."OUT_0"  + 0.269144 * t."OUT_1"  + 0.617576 * t."OUT_2"  + -0.486430 * t."OUT_3" AS "OUT_7"
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
    -0.250886 + -0.530362 * t."OUT_0"  + -0.341273 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.603641 * t."OUT_3"  + -0.550089 * t."OUT_4"  + -0.208563 * t."OUT_5"  + 0.241831 * t."OUT_6"  + -0.188704 * t."OUT_7" AS "OUT_0",
    0.087754 + 0.082615 * t."OUT_0"  + -0.584206 * t."OUT_1"  + 0.594791 * t."OUT_2"  + -0.305247 * t."OUT_3"  + 0.296743 * t."OUT_4"  + 0.621515 * t."OUT_5"  + -0.168850 * t."OUT_6"  + 0.401488 * t."OUT_7" AS "OUT_1",
    0.209281 + 0.238108 * t."OUT_0"  + 0.667342 * t."OUT_1"  + -0.441472 * t."OUT_2"  + 0.301219 * t."OUT_3"  + 0.007260 * t."OUT_4"  + 0.058722 * t."OUT_5"  + -0.223617 * t."OUT_6"  + 0.456393 * t."OUT_7" AS "OUT_2",
    0.418099 + 0.346003 * t."OUT_0"  + 0.603868 * t."OUT_1"  + 0.228110 * t."OUT_2"  + 0.435689 * t."OUT_3"  + -0.124039 * t."OUT_4"  + -0.164483 * t."OUT_5"  + -0.160691 * t."OUT_6"  + 0.532664 * t."OUT_7" AS "OUT_3",
    0.296180 + -0.527715 * t."OUT_0"  + -0.107175 * t."OUT_1"  + 0.264562 * t."OUT_2"  + 0.454635 * t."OUT_3"  + -0.449854 * t."OUT_4"  + -0.182560 * t."OUT_5"  + 0.239324 * t."OUT_6"  + 0.451116 * t."OUT_7" AS "OUT_4",
    -0.027362 + 0.422926 * t."OUT_0"  + -0.553373 * t."OUT_1"  + 0.356072 * t."OUT_2"  + -0.083776 * t."OUT_3"  + -0.588194 * t."OUT_4"  + -0.617460 * t."OUT_5"  + -0.487470 * t."OUT_6"  + 0.346987 * t."OUT_7" AS "OUT_5"
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
    0.512988 + 0.564705 * t."OUT_0"  + 0.669408 * t."OUT_1"  + 0.177416 * t."OUT_2"  + -0.293792 * t."OUT_3"  + -0.228249 * t."OUT_4"  + -0.435661 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
