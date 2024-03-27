WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < 0.385656) THEN CASE WHEN (t."X_5" < -0.453461) THEN CASE WHEN (t."X_6" < -0.847429) THEN 7 ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_2" < 0.102563) THEN CASE WHEN (t."X_4" < 0.351757) THEN 27 ELSE 28 END ELSE 22 END ELSE 14 END END ELSE CASE WHEN (t."X_2" < -0.340496) THEN CASE WHEN (t."X_4" < -0.788339) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_4" < 0.351757) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_1" < 0.530755) THEN 31 ELSE 32 END END ELSE 18 END END END ELSE CASE WHEN (t."X_5" < 1.181141) THEN CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_2" < 0.102563) THEN CASE WHEN (t."X_6" < 0.029123) THEN CASE WHEN (t."X_0" < -0.913350) THEN 33 ELSE 34 END ELSE 26 END ELSE 20 END ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.287327 AS "P_0", 0.287327 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.289086 AS "P_0", -0.289086 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.272029 AS "P_0", 0.272029 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.290605 AS "P_0", -0.290605 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.279010 AS "P_0", -0.279010 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.157277 AS "P_0", -0.157277 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.271138 AS "P_0", -0.271138 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.157277 AS "P_0", -0.157277 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.066824 AS "P_0", 0.066824 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.264960 AS "P_0", 0.264960 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.081298 AS "P_0", -0.081298 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.218296 AS "P_0", -0.218296 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.075473 AS "P_0", 0.075473 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.276948 AS "P_0", -0.276948 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.236472 AS "P_0", 0.236472 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.087224 AS "P_0", 0.087224 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.221530 AS "P_0", 0.221530 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.114152 AS "P_0", 0.114152 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.385656) THEN CASE WHEN (t."X_5" < -0.453461) THEN CASE WHEN (t."X_2" < -0.641995) THEN 7 ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_2" < 0.102563) THEN CASE WHEN (t."X_4" < 0.351757) THEN 35 ELSE 36 END ELSE 28 END ELSE 16 END END ELSE CASE WHEN (t."X_2" < -0.340496) THEN CASE WHEN (t."X_4" < -0.788339) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_2" < -0.077829) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_9" < 0.511309) THEN 39 ELSE 40 END END ELSE 20 END END END ELSE CASE WHEN (t."X_5" < 0.808449) THEN CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_2" < -0.077829) THEN CASE WHEN (t."X_0" < -0.258238) THEN CASE WHEN (t."X_0" < -0.913350) THEN 41 ELSE 42 END ELSE 32 END ELSE 22 END ELSE CASE WHEN (t."X_3" < 0.279660) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_6" < 0.029123) THEN 13 ELSE CASE WHEN (t."X_0" < -1.388302) THEN CASE WHEN (t."X_2" < 0.455685) THEN 33 ELSE 34 END ELSE 26 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.228709 AS "P_0", -0.228709 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.086555 AS "P_0", 0.086555 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.227496 AS "P_0", -0.227496 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.218524 AS "P_0", -0.218524 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.118759 AS "P_0", -0.118759 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.213199 AS "P_0", -0.213199 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.040176 AS "P_0", -0.040176 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.221687 AS "P_0", 0.221687 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.122631 AS "P_0", 0.122631 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.220818 AS "P_0", 0.220818 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.048704 AS "P_0", 0.048704 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.231547 AS "P_0", 0.231547 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.213283 AS "P_0", 0.213283 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.069921 AS "P_0", 0.069921 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.008950 AS "P_0", -0.008950 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.171296 AS "P_0", -0.171296 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.097900 AS "P_0", 0.097900 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.167599 AS "P_0", -0.167598 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  -0.189505 AS "P_0", 0.189505 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.080327 AS "P_0", 0.080327 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.158395 AS "P_0", 0.158395 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.011226 AS "P_0", -0.011226 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.385656) THEN CASE WHEN (t."X_2" < -0.641995) THEN 3 ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_5" < -0.837876) THEN CASE WHEN (t."X_4" < 0.351757) THEN 19 ELSE CASE WHEN (t."X_1" < 0.843435) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_4" < 0.351757) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_8" < 0.207437) THEN 29 ELSE 30 END END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 1.181141) THEN CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_4" < -0.386630) THEN CASE WHEN (t."X_8" < 0.462846) THEN CASE WHEN (t."X_7" < -0.494078) THEN 31 ELSE 32 END ELSE 24 END ELSE 16 END ELSE CASE WHEN (t."X_4" < 1.022175) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_1" < -1.340482) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.198351 AS "P_0", -0.198351 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.198673 AS "P_0", -0.198673 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.119216 AS "P_0", 0.119216 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.194879 AS "P_0", 0.194879 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.151819 AS "P_0", -0.151819 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.192924 AS "P_0", 0.192925 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.113109 AS "P_0", 0.113109 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.004354 AS "P_0", 0.004354 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.191078 AS "P_0", 0.191078 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.151730 AS "P_0", -0.151730 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.013467 AS "P_0", -0.013467 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.006580 AS "P_0", 0.006580 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.183031 AS "P_0", -0.183031 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.076322 AS "P_0", 0.076322 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.193663 AS "P_0", 0.193663 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.189383 AS "P_0", 0.189383 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.062207 AS "P_0", 0.062207 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.385656) THEN CASE WHEN (t."X_2" < -0.641995) THEN 3 ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_5" < -0.837876) THEN CASE WHEN (t."X_0" < -0.258238) THEN CASE WHEN (t."X_1" < 0.530755) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_2" < -0.340496) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_4" < 0.351757) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_8" < 0.207437) THEN 35 ELSE 36 END END END ELSE 8 END END ELSE CASE WHEN (t."X_6" < 0.029123) THEN CASE WHEN (t."X_0" < -0.913350) THEN 9 ELSE CASE WHEN (t."X_1" < -0.014982) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_5" < 0.808449) THEN CASE WHEN (t."X_3" < 0.848285) THEN CASE WHEN (t."X_0" < -0.557793) THEN 25 ELSE CASE WHEN (t."X_0" < 0.255188) THEN 37 ELSE 38 END END ELSE 18 END ELSE CASE WHEN (t."X_0" < -1.388302) THEN CASE WHEN (t."X_7" < 0.291900) THEN 27 ELSE 28 END ELSE 20 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.179294 AS "P_0", -0.179294 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.180597 AS "P_0", -0.180597 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.128933 AS "P_0", 0.128933 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.090136 AS "P_0", 0.090136 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.033547 AS "P_0", -0.033547 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.010664 AS "P_0", 0.010664 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.167328 AS "P_0", 0.167328 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.185176 AS "P_0", 0.185176 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.165701 AS "P_0", 0.165701 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.031395 AS "P_0", 0.031395 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.191964 AS "P_0", -0.191964 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.057378 AS "P_0", -0.057378 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.047683 AS "P_0", 0.047683 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.094762 AS "P_0", -0.094762 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.004647 AS "P_0", 0.004647 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.154620 AS "P_0", -0.154620 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.057668 AS "P_0", 0.057668 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.163361 AS "P_0", 0.163361 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.045760 AS "P_0", 0.045760 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.121764 AS "P_0", 0.121764 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.385656) THEN CASE WHEN (t."X_2" < -0.641995) THEN 3 ELSE CASE WHEN (t."X_4" < 1.022175) THEN CASE WHEN (t."X_5" < -0.837876) THEN CASE WHEN (t."X_2" < -0.199629) THEN CASE WHEN (t."X_7" < -0.247228) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_9" < 0.002569) THEN 29 ELSE 30 END END ELSE CASE WHEN (t."X_2" < -0.340496) THEN CASE WHEN (t."X_8" < -0.279495) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_7" < 0.821461) THEN 33 ELSE 34 END END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 1.181141) THEN CASE WHEN (t."X_4" < 0.883874) THEN CASE WHEN (t."X_2" < 0.102563) THEN CASE WHEN (t."X_6" < 0.029123) THEN CASE WHEN (t."X_4" < -1.114908) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_0" < 0.535763) THEN 37 ELSE 38 END END ELSE 16 END ELSE CASE WHEN (t."X_3" < 0.279660) THEN 17 ELSE CASE WHEN (t."X_0" < 0.255188) THEN 25 ELSE 26 END END END ELSE CASE WHEN (t."X_1" < -1.340482) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.166460 AS "P_0", -0.166460 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.168751 AS "P_0", -0.168751 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.071780 AS "P_0", 0.071780 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.161614 AS "P_0", 0.161614 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.123021 AS "P_0", -0.123021 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.170716 AS "P_0", 0.170716 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.003640 AS "P_0", -0.003639 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.161472 AS "P_0", 0.161472 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.049695 AS "P_0", 0.049695 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.066100 AS "P_0", -0.066100 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.174123 AS "P_0", -0.174123 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.045130 AS "P_0", -0.045130 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.059352 AS "P_0", -0.059352 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.199276 AS "P_0", -0.199276 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.008835 AS "P_0", 0.008835 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.116007 AS "P_0", 0.116007 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.003097 AS "P_0", 0.003097 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.082418 AS "P_0", 0.082418 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.172601 AS "P_0", 0.172601 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.066094 AS "P_0", 0.066094 AS "P_1"
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
   0.505859 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.494141 + SUM(t."P_1") AS "Score_1",
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