WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
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
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.544459 + -0.131032 * t."OUT_0"  + 0.045594 * t."OUT_1"  + 0.482559 * t."OUT_2"  + 0.574768 * t."OUT_3"  + 0.268511 * t."OUT_4"  + 0.209777 * t."OUT_5"  + -0.203756 * t."OUT_6"  + -0.122383 * t."OUT_7"  + -0.274237 * t."OUT_8"  + -0.509022 * t."OUT_9" AS "OUT_0",
    0.304366 + 0.286392 * t."OUT_0"  + -0.477790 * t."OUT_1"  + 0.081330 * t."OUT_2"  + -0.628393 * t."OUT_3"  + -0.367336 * t."OUT_4"  + -0.700635 * t."OUT_5"  + -0.648117 * t."OUT_6"  + -0.051880 * t."OUT_7"  + 0.183840 * t."OUT_8"  + 0.516443 * t."OUT_9" AS "OUT_1",
    0.133286 + -0.267199 * t."OUT_0"  + 0.168843 * t."OUT_1"  + 0.523404 * t."OUT_2"  + -0.295162 * t."OUT_3"  + -0.333161 * t."OUT_4"  + -0.104379 * t."OUT_5"  + -0.356110 * t."OUT_6"  + -0.607098 * t."OUT_7"  + -0.131723 * t."OUT_8"  + -0.479322 * t."OUT_9" AS "OUT_2",
    0.529506 + -0.108202 * t."OUT_0"  + -0.021016 * t."OUT_1"  + -0.154364 * t."OUT_2"  + 0.190465 * t."OUT_3"  + -0.560068 * t."OUT_4"  + -0.012267 * t."OUT_5"  + 0.469555 * t."OUT_6"  + -0.015242 * t."OUT_7"  + 0.216712 * t."OUT_8"  + 0.286191 * t."OUT_9" AS "OUT_3"
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
    0.400537 + -0.367724 * t."OUT_0"  + 0.386581 * t."OUT_1"  + -0.589907 * t."OUT_2"  + 0.761143 * t."OUT_3" AS "OUT_0",
    0.330500 + -0.605683 * t."OUT_0"  + 0.521886 * t."OUT_1"  + 0.074877 * t."OUT_2"  + 0.596182 * t."OUT_3" AS "OUT_1",
    0.688683 + 0.283791 * t."OUT_0"  + -0.378421 * t."OUT_1"  + 0.292219 * t."OUT_2"  + -0.034089 * t."OUT_3" AS "OUT_2",
    -0.413064 + 0.202714 * t."OUT_0"  + 0.302178 * t."OUT_1"  + 0.406786 * t."OUT_2"  + -0.605652 * t."OUT_3" AS "OUT_3",
    0.352652 + 0.536176 * t."OUT_0"  + 0.149630 * t."OUT_1"  + -0.592709 * t."OUT_2"  + 0.008822 * t."OUT_3" AS "OUT_4",
    0.417735 + 0.537462 * t."OUT_0"  + 0.000585 * t."OUT_1"  + 0.475076 * t."OUT_2"  + 0.610148 * t."OUT_3" AS "OUT_5",
    0.429392 + 0.461947 * t."OUT_0"  + 0.081375 * t."OUT_1"  + -0.403862 * t."OUT_2"  + -0.588846 * t."OUT_3" AS "OUT_6",
    -0.075709 + -0.477982 * t."OUT_0"  + 0.347268 * t."OUT_1"  + -0.583005 * t."OUT_2"  + 0.254856 * t."OUT_3" AS "OUT_7"
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
    0.509935 + -0.653271 * t."OUT_0"  + -0.293026 * t."OUT_1"  + 0.135592 * t."OUT_2"  + -0.298674 * t."OUT_3"  + -0.354698 * t."OUT_4"  + 0.306837 * t."OUT_5"  + 0.268226 * t."OUT_6"  + 0.104388 * t."OUT_7" AS "OUT_0",
    -0.521098 + 0.238752 * t."OUT_0"  + 0.507294 * t."OUT_1"  + -0.283773 * t."OUT_2"  + 0.295654 * t."OUT_3"  + -0.015218 * t."OUT_4"  + 0.380636 * t."OUT_5"  + 0.290985 * t."OUT_6"  + -0.346620 * t."OUT_7" AS "OUT_1",
    -0.291202 + -0.044147 * t."OUT_0"  + -0.024485 * t."OUT_1"  + -0.292087 * t."OUT_2"  + 0.431074 * t."OUT_3"  + 0.148272 * t."OUT_4"  + 0.066880 * t."OUT_5"  + -0.476109 * t."OUT_6"  + 0.241036 * t."OUT_7" AS "OUT_2",
    -0.555359 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.192420 * t."OUT_2"  + 0.485064 * t."OUT_3"  + 0.388307 * t."OUT_4"  + -0.273517 * t."OUT_5"  + 0.154683 * t."OUT_6"  + -0.548128 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.480768 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.269611 * t."OUT_2"  + 0.475690 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.178974 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.518286 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.548783 * t."OUT_0"  + -0.516155 * t."OUT_1"  + -0.462554 * t."OUT_2"  + 0.371699 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.324393 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.488080 * t."OUT_7" AS "OUT_5"
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
    -0.512131 + -0.237038 * t."OUT_0"  + -0.137331 * t."OUT_1"  + -0.572166 * t."OUT_2"  + -0.612542 * t."OUT_3"  + -0.747540 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
