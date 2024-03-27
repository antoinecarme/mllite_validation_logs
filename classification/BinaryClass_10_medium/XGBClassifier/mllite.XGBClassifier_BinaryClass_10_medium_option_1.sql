WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < -0.051778) THEN CASE WHEN (t."X_6" < -0.854086) THEN 3 ELSE CASE WHEN (t."X_4" < 1.026426) THEN CASE WHEN (t."X_3" < 0.028590) THEN CASE WHEN (t."X_1" < 0.523799) THEN CASE WHEN (t."X_2" < 0.101233) THEN 25 ELSE 26 END ELSE 20 END ELSE CASE WHEN (t."X_6" < -0.210611) THEN CASE WHEN (t."X_1" < -0.023706) THEN 27 ELSE 28 END ELSE 22 END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 0.454714) THEN CASE WHEN (t."X_7" < 0.589252) THEN CASE WHEN (t."X_4" < 0.912038) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_5" < 0.892740) THEN CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_0" < -0.268543) THEN 23 ELSE 24 END ELSE 18 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.293601 AS "P_0", -0.293601 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.286674 AS "P_0", -0.286674 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.159341 AS "P_0", 0.159341 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.277503 AS "P_0", 0.277503 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.116857 AS "P_0", -0.116857 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.088753 AS "P_0", 0.088753 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.260548 AS "P_0", 0.260548 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.019492 AS "P_0", -0.019492 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.088753 AS "P_0", 0.088753 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.171931 AS "P_0", 0.171931 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.022581 AS "P_0", -0.022581 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.261952 AS "P_0", -0.261952 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.068735 AS "P_0", -0.068735 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.166146 AS "P_0", -0.166146 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.010569 AS "P_0", -0.010569 AS "P_1"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < -0.051778) THEN CASE WHEN (t."X_2" < -0.642895) THEN 3 ELSE CASE WHEN (t."X_4" < 1.026426) THEN CASE WHEN (t."X_5" < -0.862951) THEN CASE WHEN (t."X_0" < 0.272572) THEN CASE WHEN (t."X_2" < -0.357655) THEN 27 ELSE 28 END ELSE 20 END ELSE CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_3" < 0.292905) THEN 29 ELSE 30 END ELSE 22 END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 0.454714) THEN CASE WHEN (t."X_8" < 0.131975) THEN CASE WHEN (t."X_7" < -0.201950) THEN 15 ELSE CASE WHEN (t."X_2" < 0.101233) THEN 23 ELSE 24 END END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_4" < -0.830442) THEN CASE WHEN (t."X_6" < 0.047401) THEN 25 ELSE CASE WHEN (t."X_1" < -0.863473) THEN 31 ELSE 32 END END ELSE 18 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.232508 AS "P_0", -0.232508 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.224517 AS "P_0", -0.224517 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.088348 AS "P_0", -0.088348 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.226557 AS "P_0", 0.226557 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.013967 AS "P_0", -0.013967 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.012277 AS "P_0", -0.012277 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.018364 AS "P_0", -0.018365 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.158575 AS "P_0", 0.158575 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.203100 AS "P_0", 0.203100 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.017763 AS "P_0", 0.017763 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.075611 AS "P_0", 0.075611 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.099717 AS "P_0", -0.099717 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.210735 AS "P_0", -0.210735 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.169307 AS "P_0", -0.169307 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.070231 AS "P_0", 0.070231 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.136257 AS "P_0", 0.136257 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.227909 AS "P_0", 0.227909 AS "P_1"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < -0.051778) THEN CASE WHEN (t."X_2" < -0.642895) THEN 3 ELSE CASE WHEN (t."X_4" < 0.359347) THEN CASE WHEN (t."X_8" < -0.900223) THEN 13 ELSE CASE WHEN (t."X_3" < 0.292905) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_4" < 1.026426) THEN CASE WHEN (t."X_2" < 0.101233) THEN CASE WHEN (t."X_0" < -0.268543) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_4" < 0.912038) THEN 29 ELSE 30 END END ELSE 16 END END END ELSE CASE WHEN (t."X_5" < 0.454714) THEN CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_8" < -0.099143) THEN 17 ELSE 18 END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_4" < -0.830442) THEN CASE WHEN (t."X_3" < -0.805372) THEN 25 ELSE 26 END ELSE 20 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.200104 AS "P_0", -0.200104 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.093687 AS "P_0", 0.093687 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.193639 AS "P_0", 0.193639 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.132659 AS "P_0", -0.132659 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.193870 AS "P_0", -0.193870 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.040120 AS "P_0", 0.040120 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.149059 AS "P_0", -0.149059 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.009015 AS "P_0", -0.009015 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.068043 AS "P_0", -0.068043 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.174463 AS "P_0", 0.174463 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.069802 AS "P_0", 0.069802 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.184343 AS "P_0", 0.184343 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.196883 AS "P_0", -0.196883 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.097317 AS "P_0", -0.097317 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.145547 AS "P_0", -0.145547 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.109608 AS "P_0", 0.109608 AS "P_1"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < -0.051778) THEN CASE WHEN (t."X_6" < -0.854086) THEN 3 ELSE CASE WHEN (t."X_4" < 1.026426) THEN CASE WHEN (t."X_1" < 1.326329) THEN CASE WHEN (t."X_3" < 0.028590) THEN CASE WHEN (t."X_8" < 0.356436) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_1" < 0.523799) THEN 25 ELSE 26 END END ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 0.454714) THEN CASE WHEN (t."X_7" < 0.589252) THEN CASE WHEN (t."X_8" < -0.099143) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_2" < 0.101233) THEN CASE WHEN (t."X_1" < -0.577512) THEN 21 ELSE CASE WHEN (t."X_1" < 0.847291) THEN 27 ELSE 28 END END ELSE 18 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.181169 AS "P_0", -0.181169 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.174174 AS "P_0", -0.174174 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.103441 AS "P_0", 0.103441 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.173716 AS "P_0", 0.173716 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.094904 AS "P_0", 0.094904 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.035456 AS "P_0", 0.035456 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.106707 AS "P_0", -0.106707 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.019999 AS "P_0", -0.019999 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.066486 AS "P_0", 0.066486 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.131825 AS "P_0", -0.131825 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.035074 AS "P_0", -0.035074 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.022839 AS "P_0", 0.022839 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.126748 AS "P_0", -0.126748 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.193334 AS "P_0", 0.193334 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.088181 AS "P_0", 0.088181 AS "P_1"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < 0.454714) THEN CASE WHEN (t."X_2" < -0.642895) THEN 3 ELSE CASE WHEN (t."X_4" < 1.026426) THEN CASE WHEN (t."X_1" < 1.326329) THEN CASE WHEN (t."X_4" < 0.912038) THEN CASE WHEN (t."X_4" < 0.359347) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_6" < 0.300257) THEN 21 ELSE 22 END END ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 0.892740) THEN CASE WHEN (t."X_4" < 0.912038) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < -1.371299) THEN 11 ELSE CASE WHEN (t."X_7" < 0.856443) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.175364 AS "P_0", -0.175364 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.187378 AS "P_0", -0.187378 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.009383 AS "P_0", 0.009383 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.119685 AS "P_0", 0.119685 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.063301 AS "P_0", 0.063301 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.128379 AS "P_0", 0.128379 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.167180 AS "P_0", 0.167180 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.076033 AS "P_0", 0.076033 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.025342 AS "P_0", 0.025342 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.138197 AS "P_0", -0.138197 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.078485 AS "P_0", -0.078485 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.137889 AS "P_0", 0.137889 AS "P_1"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
  ) AS scu
)
,soft_max_orig_cte AS 
( SELECT
   t."index" AS "index",
   0.501953 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.498047 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte