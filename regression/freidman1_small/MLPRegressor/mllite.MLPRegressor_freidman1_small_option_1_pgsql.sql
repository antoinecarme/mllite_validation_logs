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
    -0.500841 + -0.086587 * t."OUT_0"  + 0.089569 * t."OUT_1"  + 0.527469 * t."OUT_2"  + 0.620004 * t."OUT_3"  + 0.311347 * t."OUT_4"  + 0.253060 * t."OUT_5"  + -0.160480 * t."OUT_6"  + -0.078514 * t."OUT_7"  + -0.230541 * t."OUT_8"  + -0.466198 * t."OUT_9" AS "OUT_0",
    0.330128 + 0.310166 * t."OUT_0"  + -0.488652 * t."OUT_1"  + 0.107819 * t."OUT_2"  + -0.611606 * t."OUT_3"  + -0.342043 * t."OUT_4"  + -0.669470 * t."OUT_5"  + -0.623610 * t."OUT_6"  + -0.025769 * t."OUT_7"  + 0.212947 * t."OUT_8"  + 0.544261 * t."OUT_9" AS "OUT_1",
    0.134761 + -0.288638 * t."OUT_0"  + 0.169381 * t."OUT_1"  + 0.525145 * t."OUT_2"  + -0.291816 * t."OUT_3"  + -0.350668 * t."OUT_4"  + -0.125154 * t."OUT_5"  + -0.355292 * t."OUT_6"  + -0.603239 * t."OUT_7"  + -0.152320 * t."OUT_8"  + -0.499647 * t."OUT_9" AS "OUT_2",
    0.571988 + -0.073266 * t."OUT_0"  + 0.001102 * t."OUT_1"  + -0.123864 * t."OUT_2"  + 0.228996 * t."OUT_3"  + -0.515059 * t."OUT_4"  + 0.017161 * t."OUT_5"  + 0.509397 * t."OUT_6"  + 0.017154 * t."OUT_7"  + 0.251564 * t."OUT_8"  + 0.324255 * t."OUT_9" AS "OUT_3"
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
    0.349970 + -0.413336 * t."OUT_0"  + 0.433333 * t."OUT_1"  + -0.589903 * t."OUT_2"  + 0.728467 * t."OUT_3" AS "OUT_0",
    0.386822 + -0.573370 * t."OUT_0"  + 0.545586 * t."OUT_1"  + 0.073201 * t."OUT_2"  + 0.644325 * t."OUT_3" AS "OUT_1",
    0.594793 + 0.208778 * t."OUT_0"  + -0.399634 * t."OUT_1"  + 0.273697 * t."OUT_2"  + -0.118965 * t."OUT_3" AS "OUT_2",
    -0.357124 + 0.254996 * t."OUT_0"  + 0.315838 * t."OUT_1"  + 0.406786 * t."OUT_2"  + -0.575044 * t."OUT_3" AS "OUT_3",
    0.329742 + 0.506303 * t."OUT_0"  + 0.187167 * t."OUT_1"  + -0.586993 * t."OUT_2"  + 0.006178 * t."OUT_3" AS "OUT_4",
    0.466522 + 0.576824 * t."OUT_0"  + 0.025286 * t."OUT_1"  + 0.473829 * t."OUT_2"  + 0.645640 * t."OUT_3" AS "OUT_5",
    0.486723 + 0.508444 * t."OUT_0"  + 0.057347 * t."OUT_1"  + -0.409931 * t."OUT_2"  + -0.540907 * t."OUT_3" AS "OUT_6",
    -0.027883 + -0.427178 * t."OUT_0"  + 0.389185 * t."OUT_1"  + -0.635660 * t."OUT_2"  + 0.314357 * t."OUT_3" AS "OUT_7"
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
    0.561978 + -0.612354 * t."OUT_0"  + -0.270193 * t."OUT_1"  + 0.187095 * t."OUT_2"  + -0.215160 * t."OUT_3"  + -0.309541 * t."OUT_4"  + 0.345852 * t."OUT_5"  + 0.313578 * t."OUT_6"  + 0.091138 * t."OUT_7" AS "OUT_0",
    -0.464744 + 0.295576 * t."OUT_0"  + 0.559094 * t."OUT_1"  + -0.230325 * t."OUT_2"  + 0.376506 * t."OUT_3"  + 0.030169 * t."OUT_4"  + 0.423576 * t."OUT_5"  + 0.333493 * t."OUT_6"  + -0.295888 * t."OUT_7" AS "OUT_1",
    -0.270356 + -0.017285 * t."OUT_0"  + 0.002911 * t."OUT_1"  + -0.278634 * t."OUT_2"  + 0.431074 * t."OUT_3"  + 0.158407 * t."OUT_4"  + 0.083467 * t."OUT_5"  + -0.476470 * t."OUT_6"  + 0.274625 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.557300 * t."OUT_3"  + 0.443776 * t."OUT_4"  + -0.225065 * t."OUT_5"  + 0.212193 * t."OUT_6"  + -0.618701 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.480768 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.269611 * t."OUT_2"  + 0.475690 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.178974 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.588556 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.619361 * t."OUT_0"  + -0.586402 * t."OUT_1"  + -0.462554 * t."OUT_2"  + 0.371699 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.324393 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.488080 * t."OUT_7" AS "OUT_5"
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
    -0.575965 + -0.277426 * t."OUT_0"  + -0.181321 * t."OUT_1"  + -0.586283 * t."OUT_2"  + -0.667527 * t."OUT_3"  + -0.789899 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
