WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_tiny" AS "ADS" 
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
    0.419235 + -0.108948 * t."OUT_0"  + 0.126617 * t."OUT_1"  + 0.705004 * t."OUT_2"  + 0.827366 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.418424 * t."OUT_0"  + -0.576469 * t."OUT_1"  + 0.156986 * t."OUT_2"  + -0.734452 * t."OUT_3" AS "OUT_1",
    -0.459947 + -0.368166 * t."OUT_0"  + 0.229808 * t."OUT_1"  + 0.700507 * t."OUT_2"  + -0.380831 * t."OUT_3" AS "OUT_2",
    -0.639429 + -0.030796 * t."OUT_0"  + 0.059993 * t."OUT_1"  + -0.103025 * t."OUT_2"  + 0.354788 * t."OUT_3" AS "OUT_3"
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
    0.546091 + -0.728161 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.588808 * t."OUT_2"  + -0.577873 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.601970 * t."OUT_1"  + -0.486733 * t."OUT_2"  + 0.206758 * t."OUT_3" AS "OUT_2",
    0.295174 + 0.013564 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.360540 * t."OUT_2"  + 0.232570 * t."OUT_3" AS "OUT_3",
    0.209398 + -0.140474 * t."OUT_0"  + -0.186417 * t."OUT_1"  + -0.476964 * t."OUT_2"  + 0.444683 * t."OUT_3" AS "OUT_4",
    0.085708 + -0.610826 * t."OUT_0"  + 0.230930 * t."OUT_1"  + 0.420831 * t."OUT_2"  + 0.640703 * t."OUT_3" AS "OUT_5",
    0.119336 + -0.330400 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.195614 * t."OUT_2"  + 0.565436 * t."OUT_3" AS "OUT_6",
    0.373605 + 0.548770 * t."OUT_0"  + 0.269144 * t."OUT_1"  + 0.612354 * t."OUT_2"  + -0.491975 * t."OUT_3" AS "OUT_7"
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
    -0.245639 + -0.530362 * t."OUT_0"  + -0.338166 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.608972 * t."OUT_3"  + -0.550089 * t."OUT_4"  + -0.204654 * t."OUT_5"  + 0.244016 * t."OUT_6"  + -0.183492 * t."OUT_7" AS "OUT_0",
    0.093444 + 0.082615 * t."OUT_0"  + -0.580606 * t."OUT_1"  + 0.594791 * t."OUT_2"  + -0.299273 * t."OUT_3"  + 0.296743 * t."OUT_4"  + 0.625840 * t."OUT_5"  + -0.166655 * t."OUT_6"  + 0.407294 * t."OUT_7" AS "OUT_1",
    0.215010 + 0.238108 * t."OUT_0"  + 0.671057 * t."OUT_1"  + -0.441472 * t."OUT_2"  + 0.307257 * t."OUT_3"  + 0.007260 * t."OUT_4"  + 0.062919 * t."OUT_5"  + -0.221497 * t."OUT_6"  + 0.462280 * t."OUT_7" AS "OUT_2",
    0.412478 + 0.346003 * t."OUT_0"  + 0.600393 * t."OUT_1"  + 0.228110 * t."OUT_2"  + 0.429810 * t."OUT_3"  + -0.124039 * t."OUT_4"  + -0.168937 * t."OUT_5"  + -0.162969 * t."OUT_6"  + 0.526972 * t."OUT_7" AS "OUT_3",
    0.290577 + -0.527715 * t."OUT_0"  + -0.110627 * t."OUT_1"  + 0.264562 * t."OUT_2"  + 0.448778 * t."OUT_3"  + -0.449854 * t."OUT_4"  + -0.187036 * t."OUT_5"  + 0.237031 * t."OUT_6"  + 0.445450 * t."OUT_7" AS "OUT_4",
    -0.033004 + 0.422926 * t."OUT_0"  + -0.556877 * t."OUT_1"  + 0.356072 * t."OUT_2"  + -0.089683 * t."OUT_3"  + -0.588194 * t."OUT_4"  + -0.621888 * t."OUT_5"  + -0.489729 * t."OUT_6"  + 0.341265 * t."OUT_7" AS "OUT_5"
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
    0.518658 + 0.567894 * t."OUT_0"  + 0.675423 * t."OUT_1"  + 0.183193 * t."OUT_2"  + -0.288160 * t."OUT_3"  + -0.222458 * t."OUT_4"  + -0.431548 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
