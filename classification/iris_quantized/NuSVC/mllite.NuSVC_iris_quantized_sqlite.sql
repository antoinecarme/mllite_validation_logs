WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 2 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.000000 AS "sv_0", 3.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 9 AS "sv_idx", 4.000000 AS "sv_0", 10.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 10 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 11 AS "sv_idx", 4.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 12 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 13 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 14 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 15 AS "sv_idx", 0.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 16 AS "sv_idx", 2.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.000000 AS "sv_0", 4.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 19 AS "sv_idx", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 20 AS "sv_idx", 0.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 21 AS "sv_idx", 3.000000 AS "sv_0", 7.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 22 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 0.000000 AS "sv_3"
     UNION ALL
     SELECT 23 AS "sv_idx", 3.000000 AS "sv_0", 9.000000 AS "sv_1", 1.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "sv_0", 5.000000 AS "sv_1", 2.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 25 AS "sv_idx", 3.000000 AS "sv_0", 8.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 26 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 27 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 28 AS "sv_idx", 0.000000 AS "sv_0", 6.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 29 AS "sv_idx", 2.000000 AS "sv_0", 9.000000 AS "sv_1", 2.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 30 AS "sv_idx", 0.000000 AS "sv_0", 4.000000 AS "sv_1", 1.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 31 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 32 AS "sv_idx", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 33 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 34 AS "sv_idx", 7.000000 AS "sv_0", 2.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 35 AS "sv_idx", 6.000000 AS "sv_0", 7.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 36 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 37 AS "sv_idx", 8.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 38 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 39 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 40 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 41 AS "sv_idx", 5.000000 AS "sv_0", 3.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 42 AS "sv_idx", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 43 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 44 AS "sv_idx", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 45 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 46 AS "sv_idx", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 47 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 48 AS "sv_idx", 5.000000 AS "sv_0", 6.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 49 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 50 AS "sv_idx", 5.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 51 AS "sv_idx", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 52 AS "sv_idx", 8.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 53 AS "sv_idx", 8.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 54 AS "sv_idx", 5.000000 AS "sv_0", 3.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 55 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 56 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 57 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 58 AS "sv_idx", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 59 AS "sv_idx", 3.000000 AS "sv_0", 4.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 60 AS "sv_idx", 5.000000 AS "sv_0", 7.000000 AS "sv_1", 5.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 61 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 6.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 62 AS "sv_idx", 6.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 63 AS "sv_idx", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 64 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 65 AS "sv_idx", 3.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 66 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 67 AS "sv_idx", 4.000000 AS "sv_0", 4.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 68 AS "sv_idx", 4.000000 AS "sv_0", 3.000000 AS "sv_1", 4.000000 AS "sv_2", 4.000000 AS "sv_3"
     UNION ALL
     SELECT 69 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 3.000000 AS "sv_2", 3.000000 AS "sv_3"
     UNION ALL
     SELECT 70 AS "sv_idx", 6.000000 AS "sv_0", 7.000000 AS "sv_1", 9.000000 AS "sv_2", 10.000000 AS "sv_3"
     UNION ALL
     SELECT 71 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 72 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 5.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 73 AS "sv_idx", 9.000000 AS "sv_0", 3.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 74 AS "sv_idx", 8.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 75 AS "sv_idx", 9.000000 AS "sv_0", 8.000000 AS "sv_1", 9.000000 AS "sv_2", 10.000000 AS "sv_3"
     UNION ALL
     SELECT 76 AS "sv_idx", 7.000000 AS "sv_0", 6.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 77 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 78 AS "sv_idx", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 79 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 80 AS "sv_idx", 9.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 81 AS "sv_idx", 9.000000 AS "sv_0", 1.000000 AS "sv_1", 10.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 82 AS "sv_idx", 5.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 83 AS "sv_idx", 4.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 84 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 85 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 86 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 87 AS "sv_idx", 9.000000 AS "sv_0", 6.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 88 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 89 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 90 AS "sv_idx", 9.000000 AS "sv_0", 4.000000 AS "sv_1", 8.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 91 AS "sv_idx", 9.000000 AS "sv_0", 2.000000 AS "sv_1", 9.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 92 AS "sv_idx", 10.000000 AS "sv_0", 9.000000 AS "sv_1", 9.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 93 AS "sv_idx", 6.000000 AS "sv_0", 2.000000 AS "sv_1", 7.000000 AS "sv_2", 6.000000 AS "sv_3"
     UNION ALL
     SELECT 94 AS "sv_idx", 5.000000 AS "sv_0", 1.000000 AS "sv_1", 8.000000 AS "sv_2", 5.000000 AS "sv_3"
     UNION ALL
     SELECT 95 AS "sv_idx", 6.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 96 AS "sv_idx", 7.000000 AS "sv_0", 5.000000 AS "sv_1", 8.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 97 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 6.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 98 AS "sv_idx", 8.000000 AS "sv_0", 5.000000 AS "sv_1", 7.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 99 AS "sv_idx", 4.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 100 AS "sv_idx", 8.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 10.000000 AS "sv_3"
     UNION ALL
     SELECT 101 AS "sv_idx", 6.000000 AS "sv_0", 1.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3"
     UNION ALL
     SELECT 102 AS "sv_idx", 7.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 8.000000 AS "sv_3"
     UNION ALL
     SELECT 103 AS "sv_idx", 6.000000 AS "sv_0", 7.000000 AS "sv_1", 8.000000 AS "sv_2", 9.000000 AS "sv_3"
     UNION ALL
     SELECT 104 AS "sv_idx", 5.000000 AS "sv_0", 4.000000 AS "sv_1", 7.000000 AS "sv_2", 7.000000 AS "sv_3"
   ) AS "Values"
 ),
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.030789 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 0.009995 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 0.077374 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 33 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 34 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 35 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 36 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 37 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 38 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 39 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 40 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 41 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 42 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 43 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 44 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 45 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 47 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 48 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 49 AS "sv_idx", 0.009995 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 50 AS "sv_idx", 0.077374 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 51 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 52 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 55 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 57 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 58 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 60 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 61 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 62 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 63 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 64 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 66 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 67 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 68 AS "sv_idx", -0.073896 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 69 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 4 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 6 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 7 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 12 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 14 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 15 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 17 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 20 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 21 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 22 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 23 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 24 AS "sv_idx", 0.017874 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 25 AS "sv_idx", 0.035093 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 26 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 27 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 28 AS "sv_idx", 0.017518 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 29 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 30 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 70 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 71 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 72 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 73 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 74 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 75 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 76 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 77 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 78 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 79 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 80 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 81 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 82 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 83 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 84 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 86 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 87 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 88 AS "sv_idx", 0.009995 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 89 AS "sv_idx", 0.077374 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 90 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 91 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 94 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 96 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 97 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 99 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 100 AS "sv_idx", 0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 101 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 102 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 103 AS "sv_idx", -0.087369 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 31 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 32 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 33 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 34 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 35 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 36 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 37 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 38 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 39 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 40 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 41 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 42 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 43 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 45 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 46 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 48 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 51 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 52 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 53 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 54 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 55 AS "sv_idx", 0.017874 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 56 AS "sv_idx", 0.035093 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 57 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 58 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 59 AS "sv_idx", 0.017518 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 60 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 61 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 62 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 63 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 64 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 65 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 66 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 67 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 69 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 70 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 71 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 72 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 73 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 74 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 75 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 76 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 77 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 78 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 79 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 80 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 81 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 82 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 84 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 85 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 87 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 90 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 91 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 92 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 93 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 94 AS "sv_idx", 0.017874 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 95 AS "sv_idx", 0.035093 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 96 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 97 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 98 AS "sv_idx", 0.017518 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 99 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 100 AS "sv_idx", 0.070485 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 101 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 102 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 103 AS "sv_idx", 0.268927 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 104 AS "sv_idx", 0.268927 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 0.127998 AS "rho", -4.243328 AS "probA", -0.271328 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", 0.137145 AS "rho", -4.125834 AS "probA", -0.062367 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", 0.018231 AS "rho", -3.787408 AS "probA", -0.302877 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1."c_1" == 2 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 2 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte