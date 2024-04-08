WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_medium" AS "ADS" 
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
    0.424577 + -0.103689 * t."OUT_0"  + 0.132589 * t."OUT_1"  + 0.710304 * t."OUT_2"  + 0.832483 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.449260 * t."OUT_0"  + -0.607619 * t."OUT_1"  + 0.183749 * t."OUT_2"  + -0.765788 * t."OUT_3" AS "OUT_1",
    -0.459936 + -0.371763 * t."OUT_0"  + 0.230605 * t."OUT_1"  + 0.700807 * t."OUT_2"  + -0.381333 * t."OUT_3" AS "OUT_2",
    -0.645154 + -0.036756 * t."OUT_0"  + 0.054203 * t."OUT_1"  + -0.108719 * t."OUT_2"  + 0.349008 * t."OUT_3" AS "OUT_3"
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
    0.398050 + 0.282792 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.470585 * t."OUT_2"  + -0.468477 * t."OUT_3" AS "OUT_0",
    0.551595 + -0.722789 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.594314 * t."OUT_2"  + -0.572175 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.297838 + 0.016045 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.363060 * t."OUT_2"  + 0.235931 * t."OUT_3" AS "OUT_3",
    0.216597 + -0.133318 * t."OUT_0"  + -0.216003 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.482900 * t."OUT_3" AS "OUT_4",
    0.079769 + -0.616905 * t."OUT_0"  + 0.260923 * t."OUT_1"  + 0.414664 * t."OUT_2"  + 0.634835 * t."OUT_3" AS "OUT_5",
    0.114453 + -0.338258 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.190427 * t."OUT_2"  + 0.563284 * t."OUT_3" AS "OUT_6",
    0.378881 + 0.553965 * t."OUT_0"  + 0.299391 * t."OUT_1"  + 0.617674 * t."OUT_2"  + -0.486407 * t."OUT_3" AS "OUT_7"
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
    -0.251012 + -0.561438 * t."OUT_0"  + -0.341451 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.603631 * t."OUT_3"  + -0.581198 * t."OUT_4"  + -0.208472 * t."OUT_5"  + 0.244952 * t."OUT_6"  + -0.188727 * t."OUT_7" AS "OUT_0",
    0.087566 + 0.107466 * t."OUT_0"  + -0.584507 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.305357 * t."OUT_3"  + 0.334232 * t."OUT_4"  + 0.621626 * t."OUT_5"  + -0.172284 * t."OUT_6"  + 0.401367 * t."OUT_7" AS "OUT_1",
    0.209094 + 0.293358 * t."OUT_0"  + 0.667037 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.301112 * t."OUT_3"  + 0.014346 * t."OUT_4"  + 0.058825 * t."OUT_5"  + -0.227150 * t."OUT_6"  + 0.456274 * t."OUT_7" AS "OUT_2",
    0.418287 + 0.352125 * t."OUT_0"  + 0.604165 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.435801 * t."OUT_3"  + -0.131133 * t."OUT_4"  + -0.164603 * t."OUT_5"  + -0.159795 * t."OUT_6"  + 0.532788 * t."OUT_7" AS "OUT_3",
    0.296368 + -0.583205 * t."OUT_0"  + -0.106879 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.454747 * t."OUT_3"  + -0.487860 * t."OUT_4"  + -0.182682 * t."OUT_5"  + 0.242854 * t."OUT_6"  + 0.451241 * t."OUT_7" AS "OUT_4",
    -0.027173 + 0.429209 * t."OUT_0"  + -0.553075 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.083664 * t."OUT_3"  + -0.626454 * t."OUT_4"  + -0.617579 * t."OUT_5"  + -0.489348 * t."OUT_6"  + 0.347111 * t."OUT_7" AS "OUT_5"
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
    0.512800 + 0.564771 * t."OUT_0"  + 0.669366 * t."OUT_1"  + 0.177290 * t."OUT_2"  + -0.293922 * t."OUT_3"  + -0.228377 * t."OUT_4"  + -0.435754 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
