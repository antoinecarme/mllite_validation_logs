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
    -0.312017 + -0.323261 * t."OUT_0"  + -0.153432 * t."OUT_1"  + 0.305639 * t."OUT_2"  + 0.579668 * t."OUT_3"  + 0.400336 * t."OUT_4"  + 0.054435 * t."OUT_5"  + -0.413883 * t."OUT_6"  + -0.283582 * t."OUT_7"  + -0.440668 * t."OUT_8"  + -0.625930 * t."OUT_9" AS "OUT_0",
    0.637041 + 0.049299 * t."OUT_0"  + -0.731956 * t."OUT_1"  + -0.146115 * t."OUT_2"  + -0.683294 * t."OUT_3"  + -0.173642 * t."OUT_4"  + -0.864436 * t."OUT_5"  + -0.877828 * t."OUT_6"  + -0.235598 * t."OUT_7"  + -0.015272 * t."OUT_8"  + 0.360311 * t."OUT_9" AS "OUT_1",
    0.447542 + -0.554745 * t."OUT_0"  + -0.095715 * t."OUT_1"  + 0.261336 * t."OUT_2"  + -0.343845 * t."OUT_3"  + -0.238701 * t."OUT_4"  + -0.336219 * t."OUT_5"  + -0.620439 * t."OUT_6"  + -0.828493 * t."OUT_7"  + -0.375532 * t."OUT_8"  + -0.562920 * t."OUT_9" AS "OUT_2",
    0.360395 + -0.085168 * t."OUT_0"  + 0.001025 * t."OUT_1"  + -0.146054 * t."OUT_2"  + 0.179425 * t."OUT_3"  + -0.323923 * t."OUT_4"  + 0.111004 * t."OUT_5"  + 0.422982 * t."OUT_6"  + -0.022214 * t."OUT_7"  + 0.146169 * t."OUT_8"  + 0.159918 * t."OUT_9" AS "OUT_3"
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
    0.516949 + -0.241087 * t."OUT_0"  + 0.199842 * t."OUT_1"  + -0.844210 * t."OUT_2"  + 0.879441 * t."OUT_3" AS "OUT_0",
    0.365169 + -0.489169 * t."OUT_0"  + 0.844582 * t."OUT_1"  + 0.372404 * t."OUT_2"  + 0.467107 * t."OUT_3" AS "OUT_1",
    0.814604 + 0.381352 * t."OUT_0"  + -0.251198 * t."OUT_1"  + 0.454886 * t."OUT_2"  + 0.076645 * t."OUT_3" AS "OUT_2",
    -0.086890 + 0.487787 * t."OUT_0"  + 0.603912 * t."OUT_1"  + 0.699305 * t."OUT_2"  + -0.330798 * t."OUT_3" AS "OUT_3",
    0.537062 + 0.704355 * t."OUT_0"  + 0.474460 * t."OUT_1"  + -0.292645 * t."OUT_2"  + -0.056689 * t."OUT_3" AS "OUT_4",
    0.393163 + 0.654680 * t."OUT_0"  + 0.319048 * t."OUT_1"  + 0.750552 * t."OUT_2"  + 0.488007 * t."OUT_3" AS "OUT_5",
    0.480278 + 0.478014 * t."OUT_0"  + -0.040516 * t."OUT_1"  + -0.515992 * t."OUT_2"  + -0.496787 * t."OUT_3" AS "OUT_6",
    -0.204274 + -0.567272 * t."OUT_0"  + 0.381008 * t."OUT_1"  + -0.668950 * t."OUT_2"  + 0.096411 * t."OUT_3" AS "OUT_7"
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
    0.542441 + -0.804656 * t."OUT_0"  + 0.027718 * t."OUT_1"  + 0.227367 * t."OUT_2"  + 0.072722 * t."OUT_3"  + -0.359019 * t."OUT_4"  + 0.551699 * t."OUT_5"  + 0.132911 * t."OUT_6"  + 0.190690 * t."OUT_7" AS "OUT_0",
    -0.547936 + 0.106006 * t."OUT_0"  + 0.773113 * t."OUT_1"  + -0.241372 * t."OUT_2"  + 0.665703 * t."OUT_3"  + 0.011412 * t."OUT_4"  + 0.578337 * t."OUT_5"  + 0.137652 * t."OUT_6"  + -0.207923 * t."OUT_7" AS "OUT_1",
    -0.124588 + -0.183621 * t."OUT_0"  + 0.236580 * t."OUT_1"  + -0.111323 * t."OUT_2"  + 0.712850 * t."OUT_3"  + 0.283673 * t."OUT_4"  + 0.331929 * t."OUT_5"  + -0.491506 * t."OUT_6"  + 0.365586 * t."OUT_7" AS "OUT_2",
    -0.336521 + -0.019189 * t."OUT_0"  + 0.116632 * t."OUT_1"  + 0.005476 * t."OUT_2"  + 0.776487 * t."OUT_3"  + 0.595965 * t."OUT_4"  + -0.044026 * t."OUT_5"  + 0.074332 * t."OUT_6"  + -0.422603 * t."OUT_7" AS "OUT_3",
    -0.288771 + -0.371447 * t."OUT_0"  + 0.128924 * t."OUT_1"  + 0.482824 * t."OUT_2"  + 0.761836 * t."OUT_3"  + 0.462270 * t."OUT_4"  + 0.078256 * t."OUT_5"  + -0.526331 * t."OUT_6"  + -0.374934 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.506065 * t."OUT_0"  + -0.473633 * t."OUT_1"  + -0.352417 * t."OUT_2"  + 0.264556 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.218781 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.377295 * t."OUT_7" AS "OUT_5"
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
    -0.475774 + -0.459874 * t."OUT_0"  + -0.405383 * t."OUT_1"  + -0.894251 * t."OUT_2"  + -0.883970 * t."OUT_3"  + -1.134610 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
