WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_small" AS "ADS" 
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
    0.424265 + -0.104064 * t."OUT_0"  + 0.132224 * t."OUT_1"  + 0.710228 * t."OUT_2"  + 0.832168 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.449260 * t."OUT_0"  + -0.607619 * t."OUT_1"  + 0.183749 * t."OUT_2"  + -0.736250 * t."OUT_3" AS "OUT_1",
    -0.459633 + -0.371323 * t."OUT_0"  + 0.230912 * t."OUT_1"  + 0.700826 * t."OUT_2"  + -0.380940 * t."OUT_3" AS "OUT_2",
    -0.645034 + -0.036526 * t."OUT_0"  + 0.054286 * t."OUT_1"  + -0.108661 * t."OUT_2"  + 0.349191 * t."OUT_3" AS "OUT_3"
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
    0.398064 + 0.282813 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.470585 * t."OUT_2"  + -0.468452 * t."OUT_3" AS "OUT_0",
    0.551660 + -0.722706 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.594382 * t."OUT_2"  + -0.572165 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.297614 + 0.015834 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.362853 * t."OUT_2"  + 0.235635 * t."OUT_3" AS "OUT_3",
    0.216587 + -0.133328 * t."OUT_0"  + -0.216003 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.482891 * t."OUT_3" AS "OUT_4",
    0.080021 + -0.616680 * t."OUT_0"  + 0.260923 * t."OUT_1"  + 0.414880 * t."OUT_2"  + 0.635033 * t."OUT_3" AS "OUT_5",
    0.114485 + -0.338259 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.190420 * t."OUT_2"  + 0.563262 * t."OUT_3" AS "OUT_6",
    0.378881 + 0.554015 * t."OUT_0"  + 0.299391 * t."OUT_1"  + 0.617722 * t."OUT_2"  + -0.486398 * t."OUT_3" AS "OUT_7"
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
    -0.251051 + -0.561438 * t."OUT_0"  + -0.341605 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.603512 * t."OUT_3"  + -0.581198 * t."OUT_4"  + -0.208354 * t."OUT_5"  + 0.244925 * t."OUT_6"  + -0.188851 * t."OUT_7" AS "OUT_0",
    0.087615 + 0.107430 * t."OUT_0"  + -0.584477 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.305323 * t."OUT_3"  + 0.334358 * t."OUT_4"  + 0.621761 * t."OUT_5"  + -0.172319 * t."OUT_6"  + 0.401397 * t."OUT_7" AS "OUT_1",
    0.209143 + 0.293320 * t."OUT_0"  + 0.667069 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.301146 * t."OUT_3"  + 0.014475 * t."OUT_4"  + 0.058953 * t."OUT_5"  + -0.227189 * t."OUT_6"  + 0.456304 * t."OUT_7" AS "OUT_2",
    0.418238 + 0.352159 * t."OUT_0"  + 0.604136 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.435767 * t."OUT_3"  + -0.131260 * t."OUT_4"  + -0.164745 * t."OUT_5"  + -0.159763 * t."OUT_6"  + 0.532757 * t."OUT_7" AS "OUT_3",
    0.296319 + -0.583172 * t."OUT_0"  + -0.106908 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.454714 * t."OUT_3"  + -0.487988 * t."OUT_4"  + -0.182825 * t."OUT_5"  + 0.242886 * t."OUT_6"  + 0.451210 * t."OUT_7" AS "OUT_4",
    -0.027222 + 0.429243 * t."OUT_0"  + -0.553104 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.083698 * t."OUT_3"  + -0.626581 * t."OUT_4"  + -0.617719 * t."OUT_5"  + -0.489315 * t."OUT_6"  + 0.347081 * t."OUT_7" AS "OUT_5"
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
    0.512850 + 0.564719 * t."OUT_0"  + 0.669374 * t."OUT_1"  + 0.177330 * t."OUT_2"  + -0.293884 * t."OUT_3"  + -0.228348 * t."OUT_4"  + -0.435712 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
