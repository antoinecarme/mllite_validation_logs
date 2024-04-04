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
    0.424158 + -0.103116 * t."OUT_0"  + 0.130791 * t."OUT_1"  + 0.710256 * t."OUT_2"  + 0.832178 * t."OUT_3" AS "OUT_0",
    -0.440314 + 0.423718 * t."OUT_0"  + -0.633048 * t."OUT_1"  + 0.157917 * t."OUT_2"  + -0.790710 * t."OUT_3" AS "OUT_1",
    -0.470833 + -0.383516 * t."OUT_0"  + 0.220846 * t."OUT_1"  + 0.689852 * t."OUT_2"  + -0.392590 * t."OUT_3" AS "OUT_2",
    -0.638621 + -0.031240 * t."OUT_0"  + 0.061050 * t."OUT_1"  + -0.147021 * t."OUT_2"  + 0.356105 * t."OUT_3" AS "OUT_3"
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
    0.394774 + 0.278497 * t."OUT_0"  + -0.077440 * t."OUT_1"  + -0.497676 * t."OUT_2"  + -0.473647 * t."OUT_3" AS "OUT_0",
    0.543672 + -0.727864 * t."OUT_0"  + -0.027111 * t."OUT_1"  + 0.589275 * t."OUT_2"  + -0.544968 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.284457 + 0.001809 * t."OUT_0"  + 0.010247 * t."OUT_1"  + 0.349385 * t."OUT_2"  + 0.222196 * t."OUT_3" AS "OUT_3",
    0.245007 + -0.105400 * t."OUT_0"  + -0.186678 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.510703 * t."OUT_3" AS "OUT_4",
    0.084311 + -0.616121 * t."OUT_0"  + 0.290491 * t."OUT_1"  + 0.389044 * t."OUT_2"  + 0.606558 * t."OUT_3" AS "OUT_5",
    0.089163 + -0.362639 * t."OUT_0"  + -0.142859 * t."OUT_1"  + 0.166551 * t."OUT_2"  + 0.538130 * t."OUT_3" AS "OUT_6",
    0.375503 + 0.550237 * t."OUT_0"  + 0.272912 * t."OUT_1"  + 0.614679 * t."OUT_2"  + -0.489347 * t."OUT_3" AS "OUT_7"
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
    0.093849 + 0.114119 * t."OUT_0"  + -0.572473 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.299646 * t."OUT_3"  + 0.362190 * t."OUT_4"  + 0.623758 * t."OUT_5"  + -0.198556 * t."OUT_6"  + 0.408131 * t."OUT_7" AS "OUT_1",
    0.215413 + 0.300070 * t."OUT_0"  + 0.679168 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.306907 * t."OUT_3"  + 0.042237 * t."OUT_4"  + 0.061057 * t."OUT_5"  + -0.253487 * t."OUT_6"  + 0.463108 * t."OUT_7" AS "OUT_2",
    0.412065 + 0.345557 * t."OUT_0"  + 0.592270 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.430196 * t."OUT_3"  + -0.159167 * t."OUT_4"  + -0.166621 * t."OUT_5"  + -0.133603 * t."OUT_6"  + 0.526121 * t."OUT_7" AS "OUT_3",
    0.290159 + -0.589756 * t."OUT_0"  + -0.118746 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.449163 * t."OUT_3"  + -0.515909 * t."OUT_4"  + -0.184680 * t."OUT_5"  + 0.269030 * t."OUT_6"  + 0.444593 * t."OUT_7" AS "OUT_4",
    -0.033398 + 0.422625 * t."OUT_0"  + -0.559526 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.089289 * t."OUT_3"  + -0.654473 * t."OUT_4"  + -0.605098 * t."OUT_5"  + -0.462554 * t."OUT_6"  + 0.340424 * t."OUT_7" AS "OUT_5"
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
    0.519070 + 0.532454 * t."OUT_0"  + 0.674787 * t."OUT_1"  + 0.184290 * t."OUT_2"  + -0.287043 * t."OUT_3"  + -0.222018 * t."OUT_4"  + -0.427639 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
