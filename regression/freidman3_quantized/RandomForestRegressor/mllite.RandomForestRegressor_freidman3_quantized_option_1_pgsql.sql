WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_3" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 5.500000) THEN CASE WHEN (model_input."X_3" <= 0.500000) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 2.500000) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= 1.000000) THEN 29 ELSE 30 END END ELSE CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 3.000000) THEN 21 ELSE CASE WHEN (model_input."X_2" <= 8.000000) THEN 31 ELSE 32 END END ELSE CASE WHEN (model_input."X_2" <= 1.500000) THEN 15 ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (model_input."X_0" <= 7.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 7.000000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_3" <= 5.000000) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_2" <= 4.500000) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_2" <= 4.000000) THEN 37 ELSE 38 END END END ELSE CASE WHEN (model_input."X_3" <= 6.500000) THEN 25 ELSE 26 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.359636 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.656034 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.412596 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.224450 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.979723 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.350973 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.481220 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.211790 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.391263 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.304990 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.048692 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.438457 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.251603 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.514388 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.363461 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.142542 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.378696 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.271738 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.400980 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.193177 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.290553 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.541350 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.495740 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.367959 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.447731 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.541482 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.479967 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.074955 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.022429 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.528363 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.560832 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.523705 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.553334 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.503726 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.472408 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.452613 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.481645 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.540122 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.566545 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.489186 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.514631 AS "E"
    UNION ALL
    SELECT 43 AS nid, 1.515337 AS "E"
    UNION ALL
    SELECT 44 AS nid, 1.532073 AS "E"
  ) AS "Values"
 ),
"DT_Output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_1" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_0" <= 7.500000) THEN CASE WHEN (model_input."X_1" <= 4.000000) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 8.000000) THEN 35 ELSE 36 END END ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= 9.500000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 1.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 1.000000) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 0.500000) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_3" <= 4.000000) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_0" <= 4.500000) THEN CASE WHEN (model_input."X_0" <= 0.500000) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN 31 ELSE 32 END END END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.345667 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.862386 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.387691 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.142733 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.408440 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.297325 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.065437 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.303902 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.471909 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.157754 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.383620 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.353038 AS "E"
    UNION ALL
    SELECT 14 AS nid, 0.962470 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.436995 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.269081 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.531847 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.340024 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.271534 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.387966 AS "E"
    UNION ALL
    SELECT 21 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.018276 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.319066 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.483666 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.389829 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.530477 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.454409 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.559116 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.490942 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.412396 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.479617 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.568170 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.517913 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.058694 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.072180 AS "E"
  ) AS "Values"
 ),
"DT_Output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_2" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_2" <= 8.000000) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_3" <= 5.500000) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_2" <= 6.000000) THEN CASE WHEN (model_input."X_3" <= 4.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 2.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_0" <= 6.500000) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN 27 ELSE 28 END END END END ELSE CASE WHEN (model_input."X_0" <= 5.500000) THEN CASE WHEN (model_input."X_0" <= 0.500000) THEN CASE WHEN (model_input."X_2" <= 5.500000) THEN 51 ELSE CASE WHEN (model_input."X_3" <= 3.000000) THEN 53 ELSE 54 END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_0" <= 4.500000) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_3" <= 3.500000) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_2" <= 7.000000) THEN CASE WHEN (model_input."X_2" <= 2.500000) THEN 33 ELSE CASE WHEN (model_input."X_3" <= 3.500000) THEN 43 ELSE 44 END END ELSE CASE WHEN (model_input."X_3" <= 4.000000) THEN 41 ELSE 42 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.326894 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.703212 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.373837 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.081775 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.169289 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.273703 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.512485 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.446617 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.194257 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.102569 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.363527 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.169145 AS "E"
    UNION ALL
    SELECT 12 AS nid, 0.940882 AS "E"
    UNION ALL
    SELECT 13 AS nid, 0.592606 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.080193 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.097667 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.300188 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.286298 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.411796 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.370345 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.230265 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.491644 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.364067 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.439948 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.288187 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.429007 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.543842 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.387859 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.483606 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.532975 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.466382 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.443690 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.498150 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.409032 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.457553 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.566646 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.518798 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.524103 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.563580 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.417024 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.507172 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.484617 AS "E"
    UNION ALL
    SELECT 43 AS nid, 1.448902 AS "E"
    UNION ALL
    SELECT 44 AS nid, 1.470530 AS "E"
    UNION ALL
    SELECT 45 AS nid, 1.510830 AS "E"
    UNION ALL
    SELECT 46 AS nid, 1.529755 AS "E"
    UNION ALL
    SELECT 47 AS nid, 1.516143 AS "E"
    UNION ALL
    SELECT 48 AS nid, 1.486923 AS "E"
    UNION ALL
    SELECT 49 AS nid, 1.539946 AS "E"
    UNION ALL
    SELECT 50 AS nid, 1.519563 AS "E"
    UNION ALL
    SELECT 51 AS nid, 1.568627 AS "E"
    UNION ALL
    SELECT 52 AS nid, 1.564665 AS "E"
    UNION ALL
    SELECT 53 AS nid, 1.567866 AS "E"
    UNION ALL
    SELECT 54 AS nid, 1.561464 AS "E"
  ) AS "Values"
 ),
"DT_Output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_3" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_0" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 4.000000) THEN 19 ELSE CASE WHEN (model_input."X_1" <= 8.500000) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_3" <= 1.000000) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 3.000000) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 3.500000) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_0" <= 0.500000) THEN 43 ELSE 44 END ELSE 30 END ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN 17 ELSE CASE WHEN (model_input."X_0" <= 7.500000) THEN 27 ELSE 28 END END END END ELSE CASE WHEN (model_input."X_0" <= 7.500000) THEN CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 2.500000) THEN CASE WHEN (model_input."X_3" <= 8.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_2" <= 6.500000) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_2" <= 4.000000) THEN CASE WHEN (model_input."X_1" <= 5.000000) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_0" <= 5.500000) THEN 39 ELSE 40 END END END ELSE CASE WHEN (model_input."X_2" <= 5.000000) THEN CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 5.000000) THEN 51 ELSE 52 END ELSE 32 END ELSE 26 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.337972 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.891866 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.398805 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.197458 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.280680 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.111990 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.269868 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.472483 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.032346 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.394285 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.299782 AS "E"
    UNION ALL
    SELECT 12 AS nid, 0.879525 AS "E"
    UNION ALL
    SELECT 13 AS nid, 0.697291 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.016200 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.518944 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.331955 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.146914 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.362795 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.288265 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.142974 AS "E"
    UNION ALL
    SELECT 21 AS nid, 0.963458 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.262652 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.491940 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.370876 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.340132 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.432365 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.392903 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.302578 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.542840 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.459204 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.315736 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.388924 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.537648 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.468349 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.413260 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.494581 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.321143 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.436290 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.518529 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.468238 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.494738 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.551951 AS "E"
    UNION ALL
    SELECT 43 AS nid, 1.559116 AS "E"
    UNION ALL
    SELECT 44 AS nid, 1.518426 AS "E"
    UNION ALL
    SELECT 45 AS nid, 1.540292 AS "E"
    UNION ALL
    SELECT 46 AS nid, 1.563610 AS "E"
    UNION ALL
    SELECT 47 AS nid, 1.486921 AS "E"
    UNION ALL
    SELECT 48 AS nid, 1.502556 AS "E"
    UNION ALL
    SELECT 49 AS nid, 1.022429 AS "E"
    UNION ALL
    SELECT 50 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 51 AS nid, 1.310721 AS "E"
    UNION ALL
    SELECT 52 AS nid, 1.320750 AS "E"
  ) AS "Values"
 ),
"DT_Output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_4" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 1.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 9.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 4.000000) THEN 25 ELSE CASE WHEN (model_input."X_0" <= 0.500000) THEN 41 ELSE 42 END END ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN 55 ELSE 56 END END ELSE CASE WHEN (model_input."X_2" <= 4.000000) THEN CASE WHEN (model_input."X_3" <= 4.000000) THEN CASE WHEN (model_input."X_1" <= 1.000000) THEN 23 ELSE 24 END ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_0" <= 7.000000) THEN 27 ELSE 28 END END END END ELSE CASE WHEN (model_input."X_0" <= 2.000000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 7.500000) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_3" <= 6.500000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN 51 ELSE 52 END ELSE 50 END END ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 5.000000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_3" <= 2.000000) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_0" <= 8.500000) THEN CASE WHEN (model_input."X_1" <= 4.500000) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_2" <= 5.500000) THEN 35 ELSE 36 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.315988 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.722738 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.389311 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.265071 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.104127 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.142206 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.024864 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.262652 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.239111 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.469591 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.448167 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.107075 AS "E"
    UNION ALL
    SELECT 13 AS nid, 0.915183 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.246633 AS "E"
    UNION ALL
    SELECT 15 AS nid, 0.976502 AS "E"
    UNION ALL
    SELECT 16 AS nid, 0.731225 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.497204 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.350092 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.181344 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.301041 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.117173 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.224125 AS "E"
    UNION ALL
    SELECT 23 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.011422 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.436995 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.533329 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.333580 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.235961 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.543482 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.443815 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.379998 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.468518 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.491827 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.371396 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.309875 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.402156 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.326225 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.406884 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.458301 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.510686 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.555685 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.518426 AS "E"
    UNION ALL
    SELECT 43 AS nid, 1.310030 AS "E"
    UNION ALL
    SELECT 44 AS nid, 1.342419 AS "E"
    UNION ALL
    SELECT 45 AS nid, 1.388799 AS "E"
    UNION ALL
    SELECT 46 AS nid, 1.417736 AS "E"
    UNION ALL
    SELECT 47 AS nid, 1.523320 AS "E"
    UNION ALL
    SELECT 48 AS nid, 1.550814 AS "E"
    UNION ALL
    SELECT 49 AS nid, 1.545695 AS "E"
    UNION ALL
    SELECT 50 AS nid, 1.564464 AS "E"
    UNION ALL
    SELECT 51 AS nid, 1.553299 AS "E"
    UNION ALL
    SELECT 52 AS nid, 1.533023 AS "E"
    UNION ALL
    SELECT 53 AS nid, 1.515337 AS "E"
    UNION ALL
    SELECT 54 AS nid, 1.531304 AS "E"
    UNION ALL
    SELECT 55 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 56 AS nid, 1.357027 AS "E"
  ) AS "Values"
 ),
"DT_Output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
