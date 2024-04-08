WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_quantized" AS "ADS" 
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
    0.425580 + -0.101622 * t."OUT_0"  + 0.132152 * t."OUT_1"  + 0.711914 * t."OUT_2"  + 0.833686 * t."OUT_3" AS "OUT_0",
    -0.439304 + 0.425030 * t."OUT_0"  + -0.630355 * t."OUT_1"  + 0.159207 * t."OUT_2"  + -0.789425 * t."OUT_3" AS "OUT_1",
    -0.468880 + -0.381430 * t."OUT_0"  + 0.222804 * t."OUT_1"  + 0.691864 * t."OUT_2"  + -0.390437 * t."OUT_3" AS "OUT_2",
    -0.637475 + -0.029081 * t."OUT_0"  + 0.062310 * t."OUT_1"  + -0.133786 * t."OUT_2"  + 0.356735 * t."OUT_3" AS "OUT_3"
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
    0.396412 + 0.280225 * t."OUT_0"  + -0.077295 * t."OUT_1"  + -0.496010 * t."OUT_2"  + -0.471728 * t."OUT_3" AS "OUT_0",
    0.548828 + -0.727700 * t."OUT_0"  + 0.019266 * t."OUT_1"  + 0.589561 * t."OUT_2"  + -0.544968 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.286408 + 0.003801 * t."OUT_0"  + 0.012338 * t."OUT_1"  + 0.351256 * t."OUT_2"  + 0.224184 * t."OUT_3" AS "OUT_3",
    0.244656 + -0.105261 * t."OUT_0"  + -0.231791 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.510812 * t."OUT_3" AS "OUT_4",
    0.045264 + -0.639964 * t."OUT_0"  + 0.253950 * t."OUT_1"  + 0.389044 * t."OUT_2"  + 0.606558 * t."OUT_3" AS "OUT_5",
    0.089744 + -0.362057 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.166551 * t."OUT_2"  + 0.538130 * t."OUT_3" AS "OUT_6",
    0.377225 + 0.552007 * t."OUT_0"  + 0.273984 * t."OUT_1"  + 0.616309 * t."OUT_2"  + -0.487388 * t."OUT_3" AS "OUT_7"
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
    -0.278179 + -0.561438 * t."OUT_0"  + -0.364449 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.576816 * t."OUT_3"  + -0.581198 * t."OUT_4"  + -0.239449 * t."OUT_5"  + 0.218124 * t."OUT_6"  + -0.215160 * t."OUT_7" AS "OUT_0",
    0.091946 + 0.112051 * t."OUT_0"  + -0.596949 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.301534 * t."OUT_3"  + 0.362931 * t."OUT_4"  + 0.578540 * t."OUT_5"  + -0.199137 * t."OUT_6"  + 0.406177 * t."OUT_7" AS "OUT_1",
    0.213553 + 0.298033 * t."OUT_0"  + 0.653867 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.305038 * t."OUT_3"  + 0.043023 * t."OUT_4"  + 0.015232 * t."OUT_5"  + -0.254067 * t."OUT_6"  + 0.461186 * t."OUT_7" AS "OUT_2",
    0.414000 + 0.347642 * t."OUT_0"  + 0.615912 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.432091 * t."OUT_3"  + -0.159850 * t."OUT_4"  + -0.122162 * t."OUT_5"  + -0.133022 * t."OUT_6"  + 0.528095 * t."OUT_7" AS "OUT_3",
    0.292098 + -0.587670 * t."OUT_0"  + -0.095220 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.451057 * t."OUT_3"  + -0.516582 * t."OUT_4"  + -0.140344 * t."OUT_5"  + 0.269611 * t."OUT_6"  + 0.446569 * t."OUT_7" AS "OUT_4",
    -0.031483 + 0.424705 * t."OUT_0"  + -0.547846 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.087399 * t."OUT_3"  + -0.655171 * t."OUT_4"  + -0.595345 * t."OUT_5"  + -0.462554 * t."OUT_6"  + 0.342393 * t."OUT_7" AS "OUT_5"
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
    0.517155 + 0.532454 * t."OUT_0"  + 0.672854 * t."OUT_1"  + 0.182337 * t."OUT_2"  + -0.289019 * t."OUT_3"  + -0.223957 * t."OUT_4"  + -0.429667 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
