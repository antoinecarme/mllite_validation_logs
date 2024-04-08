WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_tiny" AS "ADS" 
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
    -0.470260 + -0.056448 * t."OUT_0"  + 0.120414 * t."OUT_1"  + 0.527094 * t."OUT_2"  + 0.619644 * t."OUT_3"  + 0.311679 * t."OUT_4"  + 0.253470 * t."OUT_5"  + -0.130053 * t."OUT_6"  + -0.048116 * t."OUT_7"  + -0.170580 * t."OUT_8"  + -0.404878 * t."OUT_9" AS "OUT_0",
    0.394737 + 0.305058 * t."OUT_0"  + -0.424765 * t."OUT_1"  + 0.173455 * t."OUT_2"  + -0.544326 * t."OUT_3"  + -0.279073 * t."OUT_4"  + -0.611739 * t."OUT_5"  + -0.629298 * t."OUT_6"  + 0.039957 * t."OUT_7"  + 0.276124 * t."OUT_8"  + 0.538798 * t."OUT_9" AS "OUT_1",
    0.122375 + -0.235382 * t."OUT_0"  + 0.157933 * t."OUT_1"  + 0.512491 * t."OUT_2"  + -0.306077 * t."OUT_3"  + -0.364986 * t."OUT_4"  + -0.136199 * t."OUT_5"  + -0.303378 * t."OUT_6"  + -0.618019 * t."OUT_7"  + -0.163552 * t."OUT_8"  + -0.447509 * t."OUT_9" AS "OUT_2",
    0.621427 + -0.074940 * t."OUT_0"  + 0.047602 * t."OUT_1"  + -0.075848 * t."OUT_2"  + 0.270309 * t."OUT_3"  + -0.481249 * t."OUT_4"  + 0.057280 * t."OUT_5"  + 0.508757 * t."OUT_6"  + 0.064084 * t."OUT_7"  + 0.303935 * t."OUT_8"  + 0.325058 * t."OUT_9" AS "OUT_3"
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
    0.350657 + -0.413093 * t."OUT_0"  + 0.455299 * t."OUT_1"  + -0.574814 * t."OUT_2"  + 0.730041 * t."OUT_3" AS "OUT_0",
    0.387554 + -0.513921 * t."OUT_0"  + 0.545812 * t."OUT_1"  + 0.059803 * t."OUT_2"  + 0.644573 * t."OUT_3" AS "OUT_1",
    0.593408 + 0.206758 * t."OUT_0"  + -0.456921 * t."OUT_1"  + 0.260736 * t."OUT_2"  + -0.122969 * t."OUT_3" AS "OUT_2",
    -0.357124 + 0.225049 * t."OUT_0"  + 0.285500 * t."OUT_1"  + 0.376074 * t."OUT_2"  + -0.543945 * t."OUT_3" AS "OUT_3",
    0.329943 + 0.444683 * t."OUT_0"  + 0.242043 * t."OUT_1"  + -0.571820 * t."OUT_2"  + 0.007022 * t."OUT_3" AS "OUT_4",
    0.466161 + 0.575409 * t."OUT_0"  + 0.021260 * t."OUT_1"  + 0.459345 * t."OUT_2"  + 0.644510 * t."OUT_3" AS "OUT_5",
    0.486583 + 0.507096 * t."OUT_0"  + 0.058005 * t."OUT_1"  + -0.424409 * t."OUT_2"  + -0.541798 * t."OUT_3" AS "OUT_6",
    -0.030067 + -0.428481 * t."OUT_0"  + 0.437420 * t."OUT_1"  + -0.621160 * t."OUT_2"  + 0.312173 * t."OUT_3" AS "OUT_7"
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
    0.561489 + -0.613397 * t."OUT_0"  + -0.271147 * t."OUT_1"  + 0.186978 * t."OUT_2"  + -0.185583 * t."OUT_3"  + -0.310847 * t."OUT_4"  + 0.344910 * t."OUT_5"  + 0.313832 * t."OUT_6"  + 0.089507 * t."OUT_7" AS "OUT_0",
    -0.464827 + 0.295095 * t."OUT_0"  + 0.558729 * t."OUT_1"  + -0.230115 * t."OUT_2"  + 0.345899 * t."OUT_3"  + 0.029191 * t."OUT_4"  + 0.423072 * t."OUT_5"  + 0.333820 * t."OUT_6"  + -0.296743 * t."OUT_7" AS "OUT_1",
    -0.245913 + 0.007260 * t."OUT_0"  + 0.027252 * t."OUT_1"  + -0.224128 * t."OUT_2"  + 0.400288 * t."OUT_3"  + 0.156136 * t."OUT_4"  + 0.107910 * t."OUT_5"  + -0.422008 * t."OUT_6"  + 0.268866 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.526231 * t."OUT_3"  + 0.412954 * t."OUT_4"  + -0.195384 * t."OUT_5"  + 0.182649 * t."OUT_6"  + -0.587535 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.449854 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.239555 * t."OUT_2"  + 0.444787 * t."OUT_3"  + 0.291422 * t."OUT_4"  + -0.154200 * t."OUT_5"  + -0.386450 * t."OUT_6"  + -0.557435 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.588194 * t."OUT_0"  + -0.555284 * t."OUT_1"  + -0.431684 * t."OUT_2"  + 0.341110 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.294011 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.457149 * t."OUT_7" AS "OUT_5"
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
    -0.575882 + -0.278902 * t."OUT_0"  + -0.180640 * t."OUT_1"  + -0.574788 * t."OUT_2"  + -0.636297 * t."OUT_3"  + -0.788203 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
