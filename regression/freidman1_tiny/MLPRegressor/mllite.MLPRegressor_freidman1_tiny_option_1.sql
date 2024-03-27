WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
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
    t.X_8 AS OUT_8,
    t.X_9 AS OUT_9
 FROM model_input AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.500910 + -0.086529 * t.OUT_0  + 0.089562 * t.OUT_1  + 0.527424 * t.OUT_2  + 0.619659 * t.OUT_3  + 0.311121 * t.OUT_4  + 0.253205 * t.OUT_5  + -0.160574 * t.OUT_6  + -0.078386 * t.OUT_7  + -0.230974 * t.OUT_8  + -0.466755 * t.OUT_9 AS OUT_0,
    0.330165 + 0.310161 * t.OUT_0  + -0.489012 * t.OUT_1  + 0.109666 * t.OUT_2  + -0.610729 * t.OUT_3  + -0.342307 * t.OUT_4  + -0.678251 * t.OUT_5  + -0.622578 * t.OUT_6  + -0.024820 * t.OUT_7  + 0.213206 * t.OUT_8  + 0.544007 * t.OUT_9 AS OUT_1,
    0.154196 + -0.237160 * t.OUT_0  + 0.162918 * t.OUT_1  + 0.513269 * t.OUT_2  + -0.244163 * t.OUT_3  + -0.302736 * t.OUT_4  + -0.104379 * t.OUT_5  + -0.304766 * t.OUT_6  + -0.555071 * t.OUT_7  + -0.131723 * t.OUT_8  + -0.448411 * t.OUT_9 AS OUT_2,
    0.569919 + -0.074589 * t.OUT_0  + 0.003984 * t.OUT_1  + -0.127567 * t.OUT_2  + 0.228249 * t.OUT_3  + -0.527518 * t.OUT_4  + 0.018115 * t.OUT_5  + 0.510768 * t.OUT_6  + 0.012418 * t.OUT_7  + 0.253859 * t.OUT_8  + 0.324297 * t.OUT_9 AS OUT_3
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
    0.349693 + -0.413016 * t.OUT_0  + 0.437140 * t.OUT_1  + -0.575274 * t.OUT_2  + 0.728340 * t.OUT_3 AS OUT_0,
    0.386527 + -0.573712 * t.OUT_0  + 0.545181 * t.OUT_1  + 0.089234 * t.OUT_2  + 0.644193 * t.OUT_3 AS OUT_1,
    0.597291 + 0.208442 * t.OUT_0  + -0.400862 * t.OUT_1  + 0.259450 * t.OUT_2  + -0.108782 * t.OUT_3 AS OUT_2,
    -0.357124 + 0.225049 * t.OUT_0  + 0.285500 * t.OUT_1  + 0.376074 * t.OUT_2  + -0.543945 * t.OUT_3 AS OUT_3,
    0.329955 + 0.506620 * t.OUT_0  + 0.194293 * t.OUT_1  + -0.572415 * t.OUT_2  + 0.006494 * t.OUT_3 AS OUT_4,
    0.466633 + 0.576491 * t.OUT_0  + 0.024818 * t.OUT_1  + 0.459196 * t.OUT_2  + 0.645706 * t.OUT_3 AS OUT_5,
    0.486060 + 0.508063 * t.OUT_0  + 0.088024 * t.OUT_1  + -0.362982 * t.OUT_2  + -0.541836 * t.OUT_3 AS OUT_6,
    -0.034562 + -0.427464 * t.OUT_0  + 0.393537 * t.OUT_1  + -0.622683 * t.OUT_2  + 0.303483 * t.OUT_3 AS OUT_7
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
    0.562121 + -0.612154 * t.OUT_0  + -0.269948 * t.OUT_1  + 0.187062 * t.OUT_2  + -0.185583 * t.OUT_3  + -0.309431 * t.OUT_4  + 0.345903 * t.OUT_5  + 0.313653 * t.OUT_6  + 0.092286 * t.OUT_7 AS OUT_0,
    -0.464798 + 0.295564 * t.OUT_0  + 0.559090 * t.OUT_1  + -0.230490 * t.OUT_2  + 0.345899 * t.OUT_3  + 0.030110 * t.OUT_4  + 0.423507 * t.OUT_5  + 0.333368 * t.OUT_6  + -0.295338 * t.OUT_7 AS OUT_1,
    -0.267809 + -0.014605 * t.OUT_0  + 0.005476 * t.OUT_1  + -0.275908 * t.OUT_2  + 0.400288 * t.OUT_3  + 0.160896 * t.OUT_4  + 0.086176 * t.OUT_5  + -0.475827 * t.OUT_6  + 0.277283 * t.OUT_7 AS OUT_2,
    -0.494865 + -0.124039 * t.OUT_0  + -0.133482 * t.OUT_1  + -0.133022 * t.OUT_2  + 0.526231 * t.OUT_3  + 0.412954 * t.OUT_4  + -0.195384 * t.OUT_5  + 0.182649 * t.OUT_6  + -0.587535 * t.OUT_7 AS OUT_3,
    -0.500519 + -0.449854 * t.OUT_0  + -0.151607 * t.OUT_1  + 0.239555 * t.OUT_2  + 0.444787 * t.OUT_3  + 0.291422 * t.OUT_4  + -0.154200 * t.OUT_5  + -0.386450 * t.OUT_6  + -0.557435 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.588194 * t.OUT_0  + -0.555284 * t.OUT_1  + -0.431684 * t.OUT_2  + 0.341110 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.294011 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.457149 * t.OUT_7 AS OUT_5
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
    -0.575915 + -0.277359 * t.OUT_0  + -0.181240 * t.OUT_1  + -0.588419 * t.OUT_2  + -0.636297 * t.OUT_3  + -0.788203 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
