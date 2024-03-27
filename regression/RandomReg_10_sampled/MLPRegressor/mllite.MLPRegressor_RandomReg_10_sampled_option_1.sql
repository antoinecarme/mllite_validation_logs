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
    -0.500001 + -0.088139 * t.OUT_0  + 0.088907 * t.OUT_1  + 0.526929 * t.OUT_2  + 0.619173 * t.OUT_3  + 0.370547 * t.OUT_4  + 0.314499 * t.OUT_5  + -0.161844 * t.OUT_6  + -0.077011 * t.OUT_7  + -0.192014 * t.OUT_8  + -0.467205 * t.OUT_9 AS OUT_0,
    0.348373 + 0.310714 * t.OUT_0  + -0.491681 * t.OUT_1  + 0.109845 * t.OUT_2  + -0.612093 * t.OUT_3  + -0.283200 * t.OUT_4  + -0.676053 * t.OUT_5  + -0.625996 * t.OUT_6  + -0.025391 * t.OUT_7  + 0.210107 * t.OUT_8  + 0.541851 * t.OUT_9 AS OUT_1,
    0.187727 + -0.300965 * t.OUT_0  + 0.155878 * t.OUT_1  + 0.511868 * t.OUT_2  + -0.306264 * t.OUT_3  + -0.363002 * t.OUT_4  + -0.137792 * t.OUT_5  + -0.368686 * t.OUT_6  + -0.619549 * t.OUT_7  + -0.147190 * t.OUT_8  + -0.509685 * t.OUT_9 AS OUT_2,
    0.565323 + -0.077055 * t.OUT_0  + -0.010197 * t.OUT_1  + -0.133354 * t.OUT_2  + 0.238544 * t.OUT_3  + -0.478460 * t.OUT_4  + 0.013544 * t.OUT_5  + 0.506284 * t.OUT_6  + 0.007227 * t.OUT_7  + 0.247019 * t.OUT_8  + 0.320019 * t.OUT_9 AS OUT_3
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
    0.298202 + -0.411864 * t.OUT_0  + 0.389828 * t.OUT_1  + -0.639972 * t.OUT_2  + 0.676165 * t.OUT_3 AS OUT_0,
    0.385675 + -0.572196 * t.OUT_0  + 0.606613 * t.OUT_1  + 0.117465 * t.OUT_2  + 0.644882 * t.OUT_3 AS OUT_1,
    0.653118 + 0.209331 * t.OUT_0  + -0.425390 * t.OUT_1  + 0.273194 * t.OUT_2  + -0.065315 * t.OUT_3 AS OUT_2,
    -0.323673 + 0.289484 * t.OUT_0  + 0.348897 * t.OUT_1  + 0.440896 * t.OUT_2  + -0.540905 * t.OUT_3 AS OUT_3,
    0.279843 + 0.507601 * t.OUT_0  + 0.233621 * t.OUT_1  + -0.577032 * t.OUT_2  + -0.051430 * t.OUT_3 AS OUT_4,
    0.529977 + 0.574837 * t.OUT_0  + 0.085699 * t.OUT_1  + 0.522213 * t.OUT_2  + 0.645468 * t.OUT_3 AS OUT_5,
    0.484054 + 0.505829 * t.OUT_0  + 0.057092 * t.OUT_1  + -0.427841 * t.OUT_2  + -0.542066 * t.OUT_3 AS OUT_6,
    -0.086745 + -0.447092 * t.OUT_0  + 0.433066 * t.OUT_1  + -0.620480 * t.OUT_2  + 0.250682 * t.OUT_3 AS OUT_7
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
    0.624636 + -0.614875 * t.OUT_0  + -0.207297 * t.OUT_1  + 0.249659 * t.OUT_2  + -0.181873 * t.OUT_3  + -0.310533 * t.OUT_4  + 0.410220 * t.OUT_5  + 0.311604 * t.OUT_6  + 0.090405 * t.OUT_7 AS OUT_0,
    -0.464417 + 0.296030 * t.OUT_0  + 0.562976 * t.OUT_1  + -0.168059 * t.OUT_2  + 0.409344 * t.OUT_3  + 0.030502 * t.OUT_4  + 0.425972 * t.OUT_5  + 0.329129 * t.OUT_6  + -0.293918 * t.OUT_7 AS OUT_1,
    -0.260034 + -0.021512 * t.OUT_0  + 0.002564 * t.OUT_1  + -0.220076 * t.OUT_2  + 0.463983 * t.OUT_3  + 0.157457 * t.OUT_4  + 0.088510 * t.OUT_5  + -0.422516 * t.OUT_6  + 0.270517 * t.OUT_7 AS OUT_2,
    -0.494865 + -0.124039 * t.OUT_0  + -0.133482 * t.OUT_1  + -0.133022 * t.OUT_2  + 0.557300 * t.OUT_3  + 0.443776 * t.OUT_4  + -0.225065 * t.OUT_5  + 0.212193 * t.OUT_6  + -0.618701 * t.OUT_7 AS OUT_3,
    -0.479260 + -0.480768 * t.OUT_0  + -0.130336 * t.OUT_1  + 0.290806 * t.OUT_2  + 0.497091 * t.OUT_3  + 0.321790 * t.OUT_4  + -0.157679 * t.OUT_5  + -0.398772 * t.OUT_6  + -0.588556 * t.OUT_7 AS OUT_4,
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
    -0.576297 + -0.340808 * t.OUT_0  + -0.183861 * t.OUT_1  + -0.601403 * t.OUT_2  + -0.667527 * t.OUT_3  + -0.840986 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
   FROM Hidden_Layer_3_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
