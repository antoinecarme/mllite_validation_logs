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
    -0.542779 + 0.031812 * t."OUT_0"  + 0.035085 * t."OUT_1"  + 0.496813 * t."OUT_2"  + 0.587878 * t."OUT_3"  + 0.264522 * t."OUT_4"  + 0.204476 * t."OUT_5"  + -0.222306 * t."OUT_6"  + -0.135865 * t."OUT_7"  + -0.207529 * t."OUT_8" AS "OUT_0",
    0.594989 + 0.352428 * t."OUT_0"  + -0.223832 * t."OUT_1"  + 0.144144 * t."OUT_2"  + -0.225479 * t."OUT_3"  + -0.325468 * t."OUT_4"  + -0.227326 * t."OUT_5"  + -0.226827 * t."OUT_6"  + 0.005603 * t."OUT_7"  + 0.250686 * t."OUT_8" AS "OUT_1",
    -0.528963 + -0.246022 * t."OUT_0"  + 0.165976 * t."OUT_1"  + 0.544098 * t."OUT_2"  + -0.296459 * t."OUT_3"  + -0.359475 * t."OUT_4"  + -0.122940 * t."OUT_5"  + -0.361556 * t."OUT_6"  + -0.635668 * t."OUT_7"  + -0.136696 * t."OUT_8" AS "OUT_2",
    0.209129 + 0.105807 * t."OUT_0"  + -0.133989 * t."OUT_1"  + -0.250130 * t."OUT_2"  + 0.095805 * t."OUT_3"  + -0.668309 * t."OUT_4"  + -0.125172 * t."OUT_5"  + 0.396642 * t."OUT_6"  + -0.108588 * t."OUT_7"  + 0.287646 * t."OUT_8" AS "OUT_3"
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
    -0.047234 + -0.489637 * t."OUT_0"  + 0.224299 * t."OUT_1"  + 0.182309 * t."OUT_2"  + -0.226460 * t."OUT_3" AS "OUT_0",
    0.528891 + 0.252663 * t."OUT_0"  + 0.226520 * t."OUT_1"  + -0.002893 * t."OUT_2"  + 0.393420 * t."OUT_3" AS "OUT_1",
    -0.328338 + 0.336880 * t."OUT_0"  + 0.225180 * t."OUT_1"  + 0.166772 * t."OUT_2"  + -0.272429 * t."OUT_3" AS "OUT_2",
    0.139432 + 0.513426 * t."OUT_0"  + -0.459344 * t."OUT_1"  + 0.364874 * t."OUT_2"  + -0.746033 * t."OUT_3" AS "OUT_3",
    0.318401 + -0.443915 * t."OUT_0"  + 0.422772 * t."OUT_1"  + -0.226423 * t."OUT_2"  + 0.212472 * t."OUT_3" AS "OUT_4",
    0.371990 + -0.556599 * t."OUT_0"  + 0.222573 * t."OUT_1"  + 0.043400 * t."OUT_2"  + 0.227154 * t."OUT_3" AS "OUT_5",
    0.481440 + 0.105643 * t."OUT_0"  + -0.426981 * t."OUT_1"  + 0.216400 * t."OUT_2"  + -0.186409 * t."OUT_3" AS "OUT_6",
    -0.181032 + 0.419628 * t."OUT_0"  + 0.315838 * t."OUT_1"  + 0.476599 * t."OUT_2"  + -0.458376 * t."OUT_3" AS "OUT_7"
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
    0.299111 + 0.275492 * t."OUT_0"  + 0.007260 * t."OUT_1"  + 0.027252 * t."OUT_2"  + -0.254067 * t."OUT_3"  + 0.431074 * t."OUT_4"  + 0.182889 * t."OUT_5"  + 0.107910 * t."OUT_6"  + -0.452853 * t."OUT_7" AS "OUT_0",
    -0.668293 + 0.411465 * t."OUT_0"  + -0.164343 * t."OUT_1"  + -0.183538 * t."OUT_2"  + -0.182194 * t."OUT_3"  + 0.204630 * t."OUT_4"  + 0.397912 * t."OUT_5"  + -0.273474 * t."OUT_6"  + 0.162700 * t."OUT_7" AS "OUT_1",
    -0.588556 + 0.224791 * t."OUT_0"  + -0.224395 * t."OUT_1"  + -0.151607 * t."OUT_2"  + 0.269611 * t."OUT_3"  + 0.224379 * t."OUT_4"  + 0.321790 * t."OUT_5"  + -0.178974 * t."OUT_6"  + -0.417195 * t."OUT_7" AS "OUT_2",
    0.488080 + -0.058667 * t."OUT_0"  + -0.226292 * t."OUT_1"  + -0.224610 * t."OUT_2"  + -0.462554 * t."OUT_3"  + 0.371699 * t."OUT_4"  + -0.001604 * t."OUT_5"  + -0.324393 * t."OUT_6"  + -0.001729 * t."OUT_7" AS "OUT_3",
    0.532920 + -0.596154 * t."OUT_0"  + -0.283332 * t."OUT_1"  + 0.157149 * t."OUT_2"  + -0.268403 * t."OUT_3"  + -0.278179 * t."OUT_4"  + 0.376502 * t."OUT_5"  + 0.292661 * t."OUT_6"  + 0.063940 * t."OUT_7" AS "OUT_4",
    -0.588672 + 0.307810 * t."OUT_0"  + 0.467568 * t."OUT_1"  + -0.406063 * t."OUT_2"  + 0.229346 * t."OUT_3"  + 0.061712 * t."OUT_4"  + 0.443397 * t."OUT_5"  + 0.244232 * t."OUT_6"  + -0.462505 * t."OUT_7" AS "OUT_5"
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
    2.497594 + -0.347773 * t."OUT_0"  + -0.648657 * t."OUT_1"  + -0.216063 * t."OUT_2"  + -0.217011 * t."OUT_3"  + -0.260043 * t."OUT_4"  + -0.112152 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
