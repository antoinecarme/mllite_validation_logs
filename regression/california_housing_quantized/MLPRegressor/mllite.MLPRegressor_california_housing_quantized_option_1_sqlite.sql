WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
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
    t."X_8" AS "OUT_8"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    3.553368 + 3.417812 * t."OUT_0"  + 3.547992 * t."OUT_1"  + 4.200163 * t."OUT_2"  + 4.392549 * t."OUT_3"  + 4.012508 * t."OUT_4"  + 3.949975 * t."OUT_5"  + 3.514181 * t."OUT_6"  + 3.848531 * t."OUT_7"  + -0.207529 * t."OUT_8" AS "OUT_0",
    4.548369 + 3.762085 * t."OUT_0"  + 2.998938 * t."OUT_1"  + 3.839312 * t."OUT_2"  + 3.111447 * t."OUT_3"  + 3.336857 * t."OUT_4"  + 3.034612 * t."OUT_5"  + 3.051921 * t."OUT_6"  + 3.861544 * t."OUT_7"  + 0.250686 * t."OUT_8" AS "OUT_1",
    3.685090 + 3.378301 * t."OUT_0"  + 3.783093 * t."OUT_1"  + 4.342832 * t."OUT_2"  + 3.621760 * t."OUT_3"  + 3.498094 * t."OUT_4"  + 3.734037 * t."OUT_5"  + 3.486435 * t."OUT_6"  + 3.474169 * t."OUT_7"  + -0.136696 * t."OUT_8" AS "OUT_2",
    0.248894 + -0.146692 * t."OUT_0"  + -0.086543 * t."OUT_1"  + -0.172857 * t."OUT_2"  + 0.116349 * t."OUT_3"  + -0.641127 * t."OUT_4"  + -0.110444 * t."OUT_5"  + 0.416138 * t."OUT_6"  + -0.064475 * t."OUT_7"  + 0.287646 * t."OUT_8" AS "OUT_3"
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
    -0.188807 + -0.650690 * t."OUT_0"  + 0.334583 * t."OUT_1"  + 0.020182 * t."OUT_2"  + -0.622213 * t."OUT_3" AS "OUT_0",
    3.803920 + 3.942145 * t."OUT_0"  + 4.533099 * t."OUT_1"  + 3.638825 * t."OUT_2"  + 0.450718 * t."OUT_3" AS "OUT_1",
    3.279636 + 4.291213 * t."OUT_0"  + 4.698137 * t."OUT_1"  + 4.276516 * t."OUT_2"  + -0.313527 * t."OUT_3" AS "OUT_2",
    3.489564 + 4.262103 * t."OUT_0"  + 3.505637 * t."OUT_1"  + 4.068218 * t."OUT_2"  + -0.689870 * t."OUT_3" AS "OUT_3",
    0.089189 + -0.566920 * t."OUT_0"  + 0.307122 * t."OUT_1"  + -0.669758 * t."OUT_2"  + 0.662070 * t."OUT_3" AS "OUT_4",
    3.741054 + 3.216906 * t."OUT_0"  + 4.395653 * t."OUT_1"  + 4.054584 * t."OUT_2"  + 0.741074 * t."OUT_3" AS "OUT_5",
    4.032317 + 4.053698 * t."OUT_0"  + 3.566990 * t."OUT_1"  + 4.292100 * t."OUT_2"  + -0.123405 * t."OUT_3" AS "OUT_6",
    3.398947 + 4.344166 * t."OUT_0"  + 4.500881 * t."OUT_1"  + 4.584271 * t."OUT_2"  + -0.511435 * t."OUT_3" AS "OUT_7"
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
    0.065026 + 0.183205 * t."OUT_0"  + -0.156827 * t."OUT_1"  + -0.069235 * t."OUT_2"  + -0.368602 * t."OUT_3"  + 0.270588 * t."OUT_4"  + 0.022265 * t."OUT_5"  + -0.079435 * t."OUT_6"  + -0.564338 * t."OUT_7" AS "OUT_0",
    -0.730448 + 0.361514 * t."OUT_0"  + -0.228400 * t."OUT_1"  + -0.244853 * t."OUT_2"  + -0.138365 * t."OUT_3"  + 0.455311 * t."OUT_4"  + 0.341148 * t."OUT_5"  + -0.244446 * t."OUT_6"  + 0.096917 * t."OUT_7" AS "OUT_1",
    -0.593898 + 0.474259 * t."OUT_0"  + -0.486111 * t."OUT_1"  + -0.156950 * t."OUT_2"  + 0.269611 * t."OUT_3"  + 0.470347 * t."OUT_4"  + 0.316447 * t."OUT_5"  + -0.178974 * t."OUT_6"  + -0.422538 * t."OUT_7" AS "OUT_2",
    0.450073 + -0.079657 * t."OUT_0"  + -0.654450 * t."OUT_1"  + -0.224610 * t."OUT_2"  + -0.462554 * t."OUT_3"  + 0.339986 * t."OUT_4"  + -0.034367 * t."OUT_5"  + -0.359693 * t."OUT_6"  + -0.001729 * t."OUT_7" AS "OUT_3",
    3.559138 + -0.528743 * t."OUT_0"  + 3.906557 * t."OUT_1"  + 4.358690 * t."OUT_2"  + 3.927254 * t."OUT_3"  + -0.262251 * t."OUT_4"  + 4.379720 * t."OUT_5"  + 4.476303 * t."OUT_6"  + 4.233348 * t."OUT_7" AS "OUT_4",
    -0.602249 + 0.212349 * t."OUT_0"  + 0.425151 * t."OUT_1"  + -0.448178 * t."OUT_2"  + 0.204730 * t."OUT_3"  + -0.077830 * t."OUT_4"  + 0.172856 * t."OUT_5"  + 0.188484 * t."OUT_6"  + -0.486400 * t."OUT_7" AS "OUT_5"
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
    1.751151 + -0.221752 * t."OUT_0"  + -0.640628 * t."OUT_1"  + -0.702498 * t."OUT_2"  + -0.681287 * t."OUT_3"  + 4.462865 * t."OUT_4"  + -0.113922 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
