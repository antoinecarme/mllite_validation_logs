WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_sampled" AS "ADS" 
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
    0.418948 + -0.109065 * t."OUT_0"  + 0.126179 * t."OUT_1"  + 0.705071 * t."OUT_2"  + 0.827314 * t."OUT_3" AS "OUT_0",
    -0.414892 + 0.418140 * t."OUT_0"  + -0.576250 * t."OUT_1"  + 0.153970 * t."OUT_2"  + -0.734272 * t."OUT_3" AS "OUT_1",
    -0.460387 + -0.369564 * t."OUT_0"  + 0.229978 * t."OUT_1"  + 0.698960 * t."OUT_2"  + -0.382029 * t."OUT_3" AS "OUT_2",
    -0.639570 + -0.031295 * t."OUT_0"  + 0.059917 * t."OUT_1"  + -0.103307 * t."OUT_2"  + 0.354675 * t."OUT_3" AS "OUT_3"
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
    0.422772 + 0.275665 * t."OUT_0"  + -0.051972 * t."OUT_1"  + -0.439422 * t."OUT_2"  + -0.412807 * t."OUT_3" AS "OUT_0",
    0.546556 + -0.727724 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.589233 * t."OUT_2"  + -0.577530 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.601759 * t."OUT_1"  + -0.486482 * t."OUT_2"  + 0.206271 * t."OUT_3" AS "OUT_2",
    0.294269 + 0.012712 * t."OUT_0"  + 0.040321 * t."OUT_1"  + 0.359664 * t."OUT_2"  + 0.231588 * t."OUT_3" AS "OUT_3",
    0.209398 + -0.113751 * t."OUT_0"  + -0.185891 * t."OUT_1"  + -0.476709 * t."OUT_2"  + 0.444413 * t."OUT_3" AS "OUT_4",
    0.085709 + -0.610685 * t."OUT_0"  + 0.230481 * t."OUT_1"  + 0.421002 * t."OUT_2"  + 0.640757 * t."OUT_3" AS "OUT_5",
    0.117463 + -0.330232 * t."OUT_0"  + -0.115525 * t."OUT_1"  + 0.189412 * t."OUT_2"  + 0.561433 * t."OUT_3" AS "OUT_6",
    0.373679 + 0.548908 * t."OUT_0"  + 0.268744 * t."OUT_1"  + 0.612496 * t."OUT_2"  + -0.491875 * t."OUT_3" AS "OUT_7"
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
    -0.245781 + -0.530127 * t."OUT_0"  + -0.339181 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.608672 * t."OUT_3"  + -0.549861 * t."OUT_4"  + -0.204525 * t."OUT_5"  + 0.241409 * t."OUT_6"  + -0.183801 * t."OUT_7" AS "OUT_0",
    0.093515 + 0.082615 * t."OUT_0"  + -0.580870 * t."OUT_1"  + 0.594577 * t."OUT_2"  + -0.299172 * t."OUT_3"  + 0.296371 * t."OUT_4"  + 0.625867 * t."OUT_5"  + -0.166849 * t."OUT_6"  + 0.407412 * t."OUT_7" AS "OUT_1",
    0.215078 + 0.237669 * t."OUT_0"  + 0.670786 * t."OUT_1"  + -0.441200 * t."OUT_2"  + 0.307354 * t."OUT_3"  + 0.007260 * t."OUT_4"  + 0.062937 * t."OUT_5"  + -0.221682 * t."OUT_6"  + 0.462395 * t."OUT_7" AS "OUT_2",
    0.412404 + 0.345674 * t."OUT_0"  + 0.600647 * t."OUT_1"  + 0.227656 * t."OUT_2"  + 0.429706 * t."OUT_3"  + -0.124039 * t."OUT_4"  + -0.168973 * t."OUT_5"  + -0.158279 * t."OUT_6"  + 0.526851 * t."OUT_7" AS "OUT_3",
    0.290502 + -0.527480 * t."OUT_0"  + -0.110375 * t."OUT_1"  + 0.264156 * t."OUT_2"  + 0.448673 * t."OUT_3"  + -0.449586 * t."OUT_4"  + -0.187074 * t."OUT_5"  + 0.237198 * t."OUT_6"  + 0.445328 * t."OUT_7" AS "OUT_4",
    -0.033076 + 0.422645 * t."OUT_0"  + -0.556621 * t."OUT_1"  + 0.355750 * t."OUT_2"  + -0.089785 * t."OUT_3"  + -0.587979 * t."OUT_4"  + -0.621922 * t."OUT_5"  + -0.485597 * t."OUT_6"  + 0.341145 * t."OUT_7" AS "OUT_5"
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
    0.518730 + 0.567920 * t."OUT_0"  + 0.675540 * t."OUT_1"  + 0.183325 * t."OUT_2"  + -0.288031 * t."OUT_3"  + -0.222359 * t."OUT_4"  + -0.431270 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
