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
    0.419028 + -0.108833 * t."OUT_0"  + 0.126513 * t."OUT_1"  + 0.704743 * t."OUT_2"  + 0.827090 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.449260 * t."OUT_0"  + -0.607619 * t."OUT_1"  + 0.183749 * t."OUT_2"  + -0.765788 * t."OUT_3" AS "OUT_1",
    -0.459353 + -0.370283 * t."OUT_0"  + 0.230112 * t."OUT_1"  + 0.701261 * t."OUT_2"  + -0.379834 * t."OUT_3" AS "OUT_2",
    -0.639574 + -0.031178 * t."OUT_0"  + 0.059876 * t."OUT_1"  + -0.103100 * t."OUT_2"  + 0.354587 * t."OUT_3" AS "OUT_3"
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
    0.394422 + 0.279463 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.470585 * t."OUT_2"  + -0.469420 * t."OUT_3" AS "OUT_0",
    0.546580 + -0.727803 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.589155 * t."OUT_2"  + -0.577613 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.295069 + 0.013595 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.360572 * t."OUT_2"  + 0.232538 * t."OUT_3" AS "OUT_3",
    0.219103 + -0.130848 * t."OUT_0"  + -0.216003 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.485430 * t."OUT_3" AS "OUT_4",
    0.085634 + -0.610961 * t."OUT_0"  + 0.260923 * t."OUT_1"  + 0.420716 * t."OUT_2"  + 0.640669 * t."OUT_3" AS "OUT_5",
    0.118199 + -0.334154 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.194596 * t."OUT_2"  + 0.567111 * t."OUT_3" AS "OUT_6",
    0.373697 + 0.548863 * t."OUT_0"  + 0.299391 * t."OUT_1"  + 0.612438 * t."OUT_2"  + -0.491978 * t."OUT_3" AS "OUT_7"
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
    -0.245647 + -0.561438 * t."OUT_0"  + -0.338332 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.609045 * t."OUT_3"  + -0.581198 * t."OUT_4"  + -0.204585 * t."OUT_5"  + 0.246928 * t."OUT_6"  + -0.183434 * t."OUT_7" AS "OUT_0",
    0.093364 + 0.110692 * t."OUT_0"  + -0.581088 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.299372 * t."OUT_3"  + 0.336320 * t."OUT_4"  + 0.625859 * t."OUT_5"  + -0.170297 * t."OUT_6"  + 0.407179 * t."OUT_7" AS "OUT_1",
    0.214933 + 0.296628 * t."OUT_0"  + 0.670568 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.307162 * t."OUT_3"  + 0.016433 * t."OUT_4"  + 0.062930 * t."OUT_5"  + -0.225232 * t."OUT_6"  + 0.462170 * t."OUT_7" AS "OUT_2",
    0.412563 + 0.348956 * t."OUT_0"  + 0.600866 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.429914 * t."OUT_3"  + -0.133231 * t."OUT_4"  + -0.168964 * t."OUT_5"  + -0.161860 * t."OUT_6"  + 0.527092 * t."OUT_7" AS "OUT_3",
    0.290662 + -0.586362 * t."OUT_0"  + -0.110156 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.448883 * t."OUT_3"  + -0.489963 * t."OUT_4"  + -0.187065 * t."OUT_5"  + 0.240775 * t."OUT_6"  + 0.445570 * t."OUT_7" AS "OUT_4",
    -0.032919 + 0.426025 * t."OUT_0"  + -0.556401 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.089578 * t."OUT_3"  + -0.628550 * t."OUT_4"  + -0.621912 * t."OUT_5"  + -0.491395 * t."OUT_6"  + 0.341385 * t."OUT_7" AS "OUT_5"
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
    0.518576 + 0.567924 * t."OUT_0"  + 0.675369 * t."OUT_1"  + 0.183072 * t."OUT_2"  + -0.288283 * t."OUT_3"  + -0.222577 * t."OUT_4"  + -0.431610 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
