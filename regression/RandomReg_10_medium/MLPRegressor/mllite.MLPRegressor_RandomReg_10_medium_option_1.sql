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
    -0.493615 + -0.144574 * t.OUT_0  + 0.024031 * t.OUT_1  + 0.472205 * t.OUT_2  + 0.600477 * t.OUT_3  + 0.257260 * t.OUT_4  + 0.194358 * t.OUT_5  + -0.226330 * t.OUT_6  + -0.126307 * t.OUT_7  + -0.288673 * t.OUT_8  + -0.490799 * t.OUT_9 AS OUT_0,
    0.479907 + 0.224824 * t.OUT_0  + -0.565802 * t.OUT_1  + 0.018432 * t.OUT_2  + -0.660618 * t.OUT_3  + -0.222672 * t.OUT_4  + -0.738232 * t.OUT_5  + -0.708302 * t.OUT_6  + -0.093407 * t.OUT_7  + 0.140024 * t.OUT_8  + 0.473255 * t.OUT_9 AS OUT_1,
    0.274747 + -0.377263 * t.OUT_0  + 0.074651 * t.OUT_1  + 0.440357 * t.OUT_2  + -0.318161 * t.OUT_3  + -0.429867 * t.OUT_4  + -0.209911 * t.OUT_5  + -0.446862 * t.OUT_6  + -0.676674 * t.OUT_7  + -0.247379 * t.OUT_8  + -0.532932 * t.OUT_9 AS OUT_2,
    0.498714 + -0.132070 * t.OUT_0  + -0.063910 * t.OUT_1  + -0.191951 * t.OUT_2  + 0.167404 * t.OUT_3  + -0.441987 * t.OUT_4  + 0.053565 * t.OUT_5  + 0.450788 * t.OUT_6  + -0.015302 * t.OUT_7  + 0.197219 * t.OUT_8  + 0.278249 * t.OUT_9 AS OUT_3
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
    0.388519 + -0.363197 * t.OUT_0  + 0.333777 * t.OUT_1  + -0.703708 * t.OUT_2  + 0.763547 * t.OUT_3 AS OUT_0,
    0.363548 + -0.594608 * t.OUT_0  + 0.683928 * t.OUT_1  + 0.197017 * t.OUT_2  + 0.582462 * t.OUT_3 AS OUT_1,
    0.712634 + 0.239226 * t.OUT_0  + -0.438547 * t.OUT_1  + 0.268972 * t.OUT_2  + 0.004174 * t.OUT_3 AS OUT_2,
    -0.242711 + 0.325287 * t.OUT_0  + 0.433662 * t.OUT_1  + 0.521354 * t.OUT_2  + -0.463551 * t.OUT_3 AS OUT_3,
    0.384126 + 0.529361 * t.OUT_0  + 0.315591 * t.OUT_1  + -0.495338 * t.OUT_2  + -0.104283 * t.OUT_3 AS OUT_4,
    0.438274 + 0.535378 * t.OUT_0  + 0.160972 * t.OUT_1  + 0.583323 * t.OUT_2  + 0.593390 * t.OUT_3 AS OUT_5,
    0.426324 + 0.485037 * t.OUT_0  + -0.007907 * t.OUT_1  + -0.441538 * t.OUT_2  + -0.578143 * t.OUT_3 AS OUT_6,
    -0.098997 + -0.505371 * t.OUT_0  + 0.487582 * t.OUT_1  + -0.578543 * t.OUT_2  + 0.192471 * t.OUT_3 AS OUT_7
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
    0.536780 + -0.667925 * t.OUT_0  + -0.155116 * t.OUT_1  + 0.158280 * t.OUT_2  + -0.106572 * t.OUT_3  + -0.367481 * t.OUT_4  + 0.370071 * t.OUT_5  + 0.248712 * t.OUT_6  + 0.071121 * t.OUT_7 AS OUT_0,
    -0.504064 + 0.239716 * t.OUT_0  + 0.637147 * t.OUT_1  + -0.271114 * t.OUT_2  + 0.489296 * t.OUT_3  + -0.013049 * t.OUT_4  + 0.418572 * t.OUT_5  + 0.272350 * t.OUT_6  + -0.261970 * t.OUT_7 AS OUT_1,
    -0.167673 + -0.066310 * t.OUT_0  + 0.114725 * t.OUT_1  + -0.203705 * t.OUT_2  + 0.548584 * t.OUT_3  + 0.208112 * t.OUT_4  + 0.183548 * t.OUT_5  + -0.392125 * t.OUT_6  + 0.325506 * t.OUT_7 AS OUT_2,
    -0.458721 + -0.044222 * t.OUT_0  + -0.040910 * t.OUT_1  + -0.139230 * t.OUT_2  + 0.642032 * t.OUT_3  + 0.456872 * t.OUT_4  + -0.184062 * t.OUT_5  + 0.187514 * t.OUT_6  + -0.584110 * t.OUT_7 AS OUT_3,
    -0.400241 + -0.443988 * t.OUT_0  + -0.039528 * t.OUT_1  + 0.362140 * t.OUT_2  + 0.577857 * t.OUT_3  + 0.294357 * t.OUT_4  + -0.080109 * t.OUT_5  + -0.454897 * t.OUT_6  + -0.558724 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.619361 * t.OUT_0  + -0.586402 * t.OUT_1  + -0.462554 * t.OUT_2  + 0.371699 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.324393 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.488080 * t.OUT_7 AS OUT_5
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
    -0.525899 + -0.308850 * t.OUT_0  + -0.239388 * t.OUT_1  + -0.729130 * t.OUT_2  + -0.761563 * t.OUT_3  + -0.928429 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
