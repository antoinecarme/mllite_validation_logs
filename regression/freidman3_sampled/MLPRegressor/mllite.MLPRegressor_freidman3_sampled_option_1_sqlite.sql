WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_sampled" AS "ADS" 
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
    0.423405 + -0.104909 * t."OUT_0"  + 0.131317 * t."OUT_1"  + 0.710432 * t."OUT_2"  + 0.831653 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.418140 * t."OUT_0"  + -0.576250 * t."OUT_1"  + 0.153970 * t."OUT_2"  + -0.734272 * t."OUT_3" AS "OUT_1",
    -0.458924 + -0.369996 * t."OUT_0"  + 0.231650 * t."OUT_1"  + 0.700104 * t."OUT_2"  + -0.380510 * t."OUT_3" AS "OUT_2",
    -0.644804 + -0.036295 * t."OUT_0"  + 0.054364 * t."OUT_1"  + -0.108911 * t."OUT_2"  + 0.349487 * t."OUT_3" AS "OUT_3"
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
    0.422772 + 0.275665 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.439422 * t."OUT_2"  + -0.412807 * t."OUT_3" AS "OUT_0",
    0.552140 + -0.722299 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.594769 * t."OUT_2"  + -0.571705 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.601759 * t."OUT_1"  + -0.486482 * t."OUT_2"  + 0.206271 * t."OUT_3" AS "OUT_2",
    0.296650 + 0.015322 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.362370 * t."OUT_2"  + 0.235034 * t."OUT_3" AS "OUT_3",
    0.209398 + -0.113751 * t."OUT_0"  + -0.185891 * t."OUT_1"  + -0.476709 * t."OUT_2"  + 0.444413 * t."OUT_3" AS "OUT_4",
    0.080670 + -0.616148 * t."OUT_0"  + 0.230481 * t."OUT_1"  + 0.415400 * t."OUT_2"  + 0.635370 * t."OUT_3" AS "OUT_5",
    0.114351 + -0.333935 * t."OUT_0"  + -0.115525 * t."OUT_1"  + 0.185624 * t."OUT_2"  + 0.557955 * t."OUT_3" AS "OUT_6",
    0.378766 + 0.554062 * t."OUT_0"  + 0.268744 * t."OUT_1"  + 0.617784 * t."OUT_2"  + -0.486289 * t."OUT_3" AS "OUT_7"
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
    -0.251150 + -0.530127 * t."OUT_0"  + -0.342336 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.603053 * t."OUT_3"  + -0.549861 * t."OUT_4"  + -0.208390 * t."OUT_5"  + 0.239623 * t."OUT_6"  + -0.189304 * t."OUT_7" AS "OUT_0",
    0.087952 + 0.082615 * t."OUT_0"  + -0.584245 * t."OUT_1"  + 0.594577 * t."OUT_2"  + -0.305116 * t."OUT_3"  + 0.296371 * t."OUT_4"  + 0.621902 * t."OUT_5"  + -0.168650 * t."OUT_6"  + 0.401613 * t."OUT_7" AS "OUT_1",
    0.209483 + 0.237669 * t."OUT_0"  + 0.667306 * t."OUT_1"  + -0.441200 * t."OUT_2"  + 0.301352 * t."OUT_3"  + 0.007260 * t."OUT_4"  + 0.059093 * t."OUT_5"  + -0.223420 * t."OUT_6"  + 0.456519 * t."OUT_7" AS "OUT_2",
    0.417904 + 0.345674 * t."OUT_0"  + 0.603910 * t."OUT_1"  + 0.227656 * t."OUT_2"  + 0.435560 * t."OUT_3"  + -0.124039 * t."OUT_4"  + -0.164886 * t."OUT_5"  + -0.156409 * t."OUT_6"  + 0.532541 * t."OUT_7" AS "OUT_3",
    0.295986 + -0.527480 * t."OUT_0"  + -0.107134 * t."OUT_1"  + 0.264156 * t."OUT_2"  + 0.454506 * t."OUT_3"  + -0.449586 * t."OUT_4"  + -0.182966 * t."OUT_5"  + 0.239082 * t."OUT_6"  + 0.450994 * t."OUT_7" AS "OUT_4",
    -0.027557 + 0.422645 * t."OUT_0"  + -0.553332 * t."OUT_1"  + 0.355750 * t."OUT_2"  + -0.083906 * t."OUT_3"  + -0.587979 * t."OUT_4"  + -0.617859 * t."OUT_5"  + -0.483743 * t."OUT_6"  + 0.346864 * t."OUT_7" AS "OUT_5"
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
    0.513186 + 0.564555 * t."OUT_0"  + 0.669529 * t."OUT_1"  + 0.177574 * t."OUT_2"  + -0.293649 * t."OUT_3"  + -0.228143 * t."OUT_4"  + -0.435459 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
