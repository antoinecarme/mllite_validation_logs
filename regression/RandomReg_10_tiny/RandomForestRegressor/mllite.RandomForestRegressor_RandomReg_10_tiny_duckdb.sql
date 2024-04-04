WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.400205) THEN CASE WHEN (model_input."X_8" <= -0.289997) THEN CASE WHEN (model_input."X_8" <= -0.767129) THEN 9 ELSE CASE WHEN (model_input."X_5" <= -0.574503) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_5" <= 0.401200) THEN CASE WHEN (model_input."X_8" <= 0.062132) THEN 11 ELSE 12 END ELSE 6 END END ELSE CASE WHEN (model_input."X_7" <= -0.803562) THEN 7 ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 27.077379 AS "E"
    UNION ALL
    SELECT 1 AS nid, -3.776157 AS "E"
    UNION ALL
    SELECT 2 AS nid, 78.499931 AS "E"
    UNION ALL
    SELECT 3 AS nid, -16.886200 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.888906 AS "E"
    UNION ALL
    SELECT 5 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 6 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 7 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 8 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 9 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 10 AS nid, -28.059462 AS "E"
    UNION ALL
    SELECT 11 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 12 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.928501 AS "E"
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
    CASE WHEN (model_input."X_6" <= 1.679106) THEN CASE WHEN (model_input."X_7" <= -1.895590) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.273323) THEN CASE WHEN (model_input."X_0" <= 0.343133) THEN CASE WHEN (model_input."X_4" <= -0.024158) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_5" <= 0.333286) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= -0.011258) THEN CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_5" <= -0.888369) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_7" <= 0.392607) THEN 19 ELSE 20 END END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 39.446732 AS "E"
    UNION ALL
    SELECT 1 AS nid, 16.072565 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 4 AS nid, 30.499912 AS "E"
    UNION ALL
    SELECT 5 AS nid, -14.208369 AS "E"
    UNION ALL
    SELECT 6 AS nid, 64.031120 AS "E"
    UNION ALL
    SELECT 7 AS nid, 74.690025 AS "E"
    UNION ALL
    SELECT 8 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 9 AS nid, 68.280090 AS "E"
    UNION ALL
    SELECT 10 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 11 AS nid, -31.048944 AS "E"
    UNION ALL
    SELECT 12 AS nid, -5.788080 AS "E"
    UNION ALL
    SELECT 13 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 14 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 16 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 17 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 19 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 20 AS nid, 30.267570 AS "E"
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
    CASE WHEN (model_input."X_9" <= -1.583338) THEN 1 ELSE CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_3" <= -0.315428) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_5" <= -1.549785) THEN CASE WHEN (model_input."X_6" <= 0.847890) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_7" <= -0.005867) THEN CASE WHEN (model_input."X_7" <= -0.288791) THEN CASE WHEN (model_input."X_3" <= 0.073032) THEN CASE WHEN (model_input."X_1" <= -1.321609) THEN 21 ELSE 22 END ELSE 20 END ELSE 18 END ELSE CASE WHEN (model_input."X_5" <= 0.337685) THEN CASE WHEN (model_input."X_1" <= 0.216473) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_3" <= -1.064165) THEN 15 ELSE 16 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 37.566132 AS "E"
    UNION ALL
    SELECT 1 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 2 AS nid, -12.790024 AS "E"
    UNION ALL
    SELECT 3 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 4 AS nid, 12.913963 AS "E"
    UNION ALL
    SELECT 5 AS nid, 95.443764 AS "E"
    UNION ALL
    SELECT 6 AS nid, -14.595971 AS "E"
    UNION ALL
    SELECT 7 AS nid, -33.253490 AS "E"
    UNION ALL
    SELECT 8 AS nid, 8.725929 AS "E"
    UNION ALL
    SELECT 9 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 10 AS nid, -14.602547 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 14 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 15 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 16 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 17 AS nid, -26.207191 AS "E"
    UNION ALL
    SELECT 18 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 19 AS nid, -31.176399 AS "E"
    UNION ALL
    SELECT 20 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 21 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 22 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 23 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 24 AS nid, 30.267570 AS "E"
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
    CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_4" <= 1.532191) THEN CASE WHEN (model_input."X_9" <= 0.329279) THEN CASE WHEN (model_input."X_9" <= -1.447783) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.633442) THEN CASE WHEN (model_input."X_9" <= 0.114824) THEN CASE WHEN (model_input."X_2" <= 0.577342) THEN 21 ELSE 22 END ELSE 16 END ELSE CASE WHEN (model_input."X_9" <= -0.257740) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_6" <= -0.922260) THEN 9 ELSE CASE WHEN (model_input."X_2" <= -0.240513) THEN CASE WHEN (model_input."X_9" <= 1.281282) THEN 17 ELSE 18 END ELSE 14 END END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 29.276270 AS "E"
    UNION ALL
    SELECT 1 AS nid, -2.685228 AS "E"
    UNION ALL
    SELECT 2 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 3 AS nid, 8.501886 AS "E"
    UNION ALL
    SELECT 4 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 5 AS nid, 37.386768 AS "E"
    UNION ALL
    SELECT 6 AS nid, -16.256586 AS "E"
    UNION ALL
    SELECT 7 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 8 AS nid, 50.302208 AS "E"
    UNION ALL
    SELECT 9 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 10 AS nid, -8.726235 AS "E"
    UNION ALL
    SELECT 11 AS nid, 37.808964 AS "E"
    UNION ALL
    SELECT 12 AS nid, 69.042068 AS "E"
    UNION ALL
    SELECT 13 AS nid, -4.685782 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 15 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 16 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 17 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 18 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 19 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 20 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 21 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 22 AS nid, 30.267570 AS "E"
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
    CASE WHEN (model_input."X_6" <= 1.784423) THEN CASE WHEN (model_input."X_7" <= 1.701600) THEN CASE WHEN (model_input."X_4" <= 0.184823) THEN CASE WHEN (model_input."X_3" <= 0.643919) THEN CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_2" <= 0.819372) THEN 19 ELSE 20 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_5" <= -1.809273) THEN 7 ELSE CASE WHEN (model_input."X_6" <= -0.922260) THEN 11 ELSE CASE WHEN (model_input."X_9" <= -0.403637) THEN 15 ELSE CASE WHEN (model_input."X_8" <= -0.422278) THEN 17 ELSE 18 END END END END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 84.304558 AS "E"
    UNION ALL
    SELECT 1 AS nid, 40.625309 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, 24.288279 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, 63.035156 AS "E"
    UNION ALL
    SELECT 6 AS nid, -8.923335 AS "E"
    UNION ALL
    SELECT 7 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 8 AS nid, -18.630238 AS "E"
    UNION ALL
    SELECT 9 AS nid, 79.418945 AS "E"
    UNION ALL
    SELECT 10 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 11 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 12 AS nid, -10.068548 AS "E"
    UNION ALL
    SELECT 13 AS nid, 70.312042 AS "E"
    UNION ALL
    SELECT 14 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 15 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 16 AS nid, -5.788080 AS "E"
    UNION ALL
    SELECT 17 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 18 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 19 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 20 AS nid, 65.232162 AS "E"
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
"DT_node_lookup_5" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_6" <= -0.986055) THEN 1 ELSE CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_1" <= -1.649685) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 0.184823) THEN CASE WHEN (model_input."X_1" <= -0.051072) THEN CASE WHEN (model_input."X_5" <= -1.913266) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_6" <= -0.922260) THEN 13 ELSE CASE WHEN (model_input."X_9" <= -0.403637) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 0.237675) THEN 17 ELSE 18 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 0.825324 AS "E"
    UNION ALL
    SELECT 1 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 2 AS nid, -15.986770 AS "E"
    UNION ALL
    SELECT 3 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 4 AS nid, 7.248184 AS "E"
    UNION ALL
    SELECT 5 AS nid, 70.677795 AS "E"
    UNION ALL
    SELECT 6 AS nid, -20.942757 AS "E"
    UNION ALL
    SELECT 7 AS nid, 84.147881 AS "E"
    UNION ALL
    SELECT 8 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 9 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 10 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 12 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 13 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 14 AS nid, -15.880766 AS "E"
    UNION ALL
    SELECT 15 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 16 AS nid, -9.094973 AS "E"
    UNION ALL
    SELECT 17 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 18 AS nid, -0.276592 AS "E"
  ) AS "Values"
 ),
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_6" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.895590) THEN 1 ELSE CASE WHEN (model_input."X_5" <= -1.549785) THEN CASE WHEN (model_input."X_5" <= -1.913266) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.825392) THEN CASE WHEN (model_input."X_6" <= 1.016786) THEN CASE WHEN (model_input."X_9" <= 0.116520) THEN CASE WHEN (model_input."X_1" <= 0.216473) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_7" <= 1.222387) THEN CASE WHEN (model_input."X_1" <= -0.252938) THEN 15 ELSE 16 END ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= -1.321609) THEN 17 ELSE 18 END END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -1.446302 AS "E"
    UNION ALL
    SELECT 1 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 2 AS nid, 10.851294 AS "E"
    UNION ALL
    SELECT 3 AS nid, 89.795822 AS "E"
    UNION ALL
    SELECT 4 AS nid, -1.294018 AS "E"
    UNION ALL
    SELECT 5 AS nid, -6.837866 AS "E"
    UNION ALL
    SELECT 6 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 7 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 8 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.274978 AS "E"
    UNION ALL
    SELECT 10 AS nid, -31.176399 AS "E"
    UNION ALL
    SELECT 11 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 12 AS nid, -7.519144 AS "E"
    UNION ALL
    SELECT 13 AS nid, -3.950917 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 15 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 19 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 20 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_7" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_7" <= -1.895590) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.633442) THEN CASE WHEN (model_input."X_1" <= 1.723688) THEN CASE WHEN (model_input."X_3" <= 0.710587) THEN CASE WHEN (model_input."X_0" <= 0.343133) THEN CASE WHEN (model_input."X_4" <= -0.024158) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_8" <= -0.422278) THEN 15 ELSE 16 END END ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_2" <= 0.819372) THEN 17 ELSE 18 END ELSE 10 END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 41.424362 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.198305 AS "E"
    UNION ALL
    SELECT 2 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 3 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 4 AS nid, 26.360502 AS "E"
    UNION ALL
    SELECT 5 AS nid, 3.625615 AS "E"
    UNION ALL
    SELECT 6 AS nid, 77.513992 AS "E"
    UNION ALL
    SELECT 7 AS nid, -9.429374 AS "E"
    UNION ALL
    SELECT 8 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 9 AS nid, 67.772102 AS "E"
    UNION ALL
    SELECT 10 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 11 AS nid, -16.045530 AS "E"
    UNION ALL
    SELECT 12 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 13 AS nid, -31.048944 AS "E"
    UNION ALL
    SELECT 14 AS nid, -8.543823 AS "E"
    UNION ALL
    SELECT 15 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 16 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 18 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 19 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 20 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_8" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_9" <= -0.950757) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_8" <= -0.318136) THEN CASE WHEN (model_input."X_6" <= -0.400839) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.191896) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_8" <= -0.062685) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_7" <= 0.572634) THEN 15 ELSE 16 END ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -37.182232 AS "E"
    UNION ALL
    SELECT 1 AS nid, -178.351715 AS "E"
    UNION ALL
    SELECT 2 AS nid, 26.985720 AS "E"
    UNION ALL
    SELECT 3 AS nid, -40.341835 AS "E"
    UNION ALL
    SELECT 4 AS nid, 65.458611 AS "E"
    UNION ALL
    SELECT 5 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 6 AS nid, -19.244995 AS "E"
    UNION ALL
    SELECT 7 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 8 AS nid, 78.105553 AS "E"
    UNION ALL
    SELECT 9 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 10 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 11 AS nid, 70.947021 AS "E"
    UNION ALL
    SELECT 12 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 16 AS nid, 65.232162 AS "E"
  ) AS "Values"
 ),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_9" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_5" <= 0.957536) THEN CASE WHEN (model_input."X_6" <= -0.981306) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.615035) THEN CASE WHEN (model_input."X_4" <= 0.806083) THEN CASE WHEN (model_input."X_6" <= -0.682467) THEN 11 ELSE CASE WHEN (model_input."X_5" <= 0.558506) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_4" <= 1.032048) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= -0.575097) THEN 9 ELSE CASE WHEN (model_input."X_1" <= -0.278804) THEN 15 ELSE 16 END END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -0.097290 AS "E"
    UNION ALL
    SELECT 1 AS nid, 49.242847 AS "E"
    UNION ALL
    SELECT 2 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 3 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 4 AS nid, 30.718859 AS "E"
    UNION ALL
    SELECT 5 AS nid, 2.890236 AS "E"
    UNION ALL
    SELECT 6 AS nid, 79.418945 AS "E"
    UNION ALL
    SELECT 7 AS nid, -12.585533 AS "E"
    UNION ALL
    SELECT 8 AS nid, 41.579659 AS "E"
    UNION ALL
    SELECT 9 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 10 AS nid, 70.312042 AS "E"
    UNION ALL
    SELECT 11 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 12 AS nid, -31.048944 AS "E"
    UNION ALL
    SELECT 13 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 14 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 16 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 17 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_10" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_1" <= -1.649685) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_7" <= 1.798573) THEN CASE WHEN (model_input."X_9" <= 0.329279) THEN CASE WHEN (model_input."X_2" <= 0.633442) THEN CASE WHEN (model_input."X_1" <= 1.445204) THEN CASE WHEN (model_input."X_1" <= 0.216473) THEN 23 ELSE 24 END ELSE 18 END ELSE CASE WHEN (model_input."X_7" <= -0.803562) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.819372) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_6" <= -0.922260) THEN 9 ELSE CASE WHEN (model_input."X_9" <= 0.508362) THEN 15 ELSE CASE WHEN (model_input."X_4" <= 0.842750) THEN 19 ELSE 20 END END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 3.183022 AS "E"
    UNION ALL
    SELECT 1 AS nid, -173.312729 AS "E"
    UNION ALL
    SELECT 2 AS nid, 43.912815 AS "E"
    UNION ALL
    SELECT 3 AS nid, 26.488314 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, 61.586098 AS "E"
    UNION ALL
    SELECT 6 AS nid, -22.648581 AS "E"
    UNION ALL
    SELECT 7 AS nid, 37.808964 AS "E"
    UNION ALL
    SELECT 8 AS nid, 79.418945 AS "E"
    UNION ALL
    SELECT 9 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 10 AS nid, -12.951057 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 14 AS nid, 70.312042 AS "E"
    UNION ALL
    SELECT 15 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 16 AS nid, -7.625242 AS "E"
    UNION ALL
    SELECT 17 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 18 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 19 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 20 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 21 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 22 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 23 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 24 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_11" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_1" <= -1.649685) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_9" <= 0.329279) THEN CASE WHEN (model_input."X_1" <= -0.011258) THEN CASE WHEN (model_input."X_0" <= 0.527486) THEN CASE WHEN (model_input."X_1" <= -0.278804) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 1.445204) THEN CASE WHEN (model_input."X_7" <= 0.392607) THEN 19 ELSE 20 END ELSE 16 END END ELSE CASE WHEN (model_input."X_8" <= -0.695227) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 0.249905) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -15.844460 AS "E"
    UNION ALL
    SELECT 1 AS nid, -173.312729 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.494368 AS "E"
    UNION ALL
    SELECT 3 AS nid, 52.348228 AS "E"
    UNION ALL
    SELECT 4 AS nid, -30.471811 AS "E"
    UNION ALL
    SELECT 5 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 6 AS nid, -9.827229 AS "E"
    UNION ALL
    SELECT 7 AS nid, 81.607933 AS "E"
    UNION ALL
    SELECT 8 AS nid, 34.792408 AS "E"
    UNION ALL
    SELECT 9 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 10 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 11 AS nid, 69.042068 AS "E"
    UNION ALL
    SELECT 12 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 13 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 14 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 15 AS nid, 31.160988 AS "E"
    UNION ALL
    SELECT 16 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 18 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 19 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 20 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_12" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_8" <= -0.331061) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_5" <= -1.549785) THEN CASE WHEN (model_input."X_9" <= -0.191384) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 0.068221) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_3" <= 0.661807) THEN CASE WHEN (model_input."X_3" <= -1.174608) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 0.073032) THEN CASE WHEN (model_input."X_3" <= -0.548989) THEN 17 ELSE 18 END ELSE 16 END END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -16.795250 AS "E"
    UNION ALL
    SELECT 1 AS nid, -160.715210 AS "E"
    UNION ALL
    SELECT 2 AS nid, 16.417053 AS "E"
    UNION ALL
    SELECT 3 AS nid, 74.922737 AS "E"
    UNION ALL
    SELECT 4 AS nid, -20.149000 AS "E"
    UNION ALL
    SELECT 5 AS nid, -36.954525 AS "E"
    UNION ALL
    SELECT 6 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 7 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 8 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 9 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 10 AS nid, -24.712450 AS "E"
    UNION ALL
    SELECT 11 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 12 AS nid, 66.968506 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 14 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 15 AS nid, -29.183411 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_13" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.654739) THEN 1 ELSE CASE WHEN (model_input."X_1" <= -0.802203) THEN CASE WHEN (model_input."X_3" <= 0.121812) THEN CASE WHEN (model_input."X_9" <= -1.106098) THEN 13 ELSE 14 END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 0.633442) THEN CASE WHEN (model_input."X_6" <= 1.122563) THEN CASE WHEN (model_input."X_4" <= -0.157419) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= -0.278804) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 10.759029 AS "E"
    UNION ALL
    SELECT 1 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 2 AS nid, 23.870314 AS "E"
    UNION ALL
    SELECT 3 AS nid, -24.199244 AS "E"
    UNION ALL
    SELECT 4 AS nid, 47.905098 AS "E"
    UNION ALL
    SELECT 5 AS nid, -30.179905 AS "E"
    UNION ALL
    SELECT 6 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 7 AS nid, 42.620850 AS "E"
    UNION ALL
    SELECT 8 AS nid, 69.042068 AS "E"
    UNION ALL
    SELECT 9 AS nid, 31.458794 AS "E"
    UNION ALL
    SELECT 10 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 12 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 15 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 16 AS nid, 33.841240 AS "E"
  ) AS "Values"
 ),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_14" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 1.649726) THEN CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_7" <= -1.743980) THEN 5 ELSE CASE WHEN (model_input."X_1" <= -0.802203) THEN CASE WHEN (model_input."X_9" <= -0.016712) THEN CASE WHEN (model_input."X_5" <= -0.379612) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 0.486490) THEN CASE WHEN (model_input."X_3" <= -0.657816) THEN CASE WHEN (model_input."X_9" <= 0.114824) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= -0.434313) THEN 17 ELSE 18 END END ELSE 10 END END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 81.593628 AS "E"
    UNION ALL
    SELECT 1 AS nid, 37.527122 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.613847 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 6 AS nid, 18.661491 AS "E"
    UNION ALL
    SELECT 7 AS nid, -21.956707 AS "E"
    UNION ALL
    SELECT 8 AS nid, 41.871887 AS "E"
    UNION ALL
    SELECT 9 AS nid, 50.733799 AS "E"
    UNION ALL
    SELECT 10 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 11 AS nid, 41.579659 AS "E"
    UNION ALL
    SELECT 12 AS nid, 69.042068 AS "E"
    UNION ALL
    SELECT 13 AS nid, -29.183411 AS "E"
    UNION ALL
    SELECT 14 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 15 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 16 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 17 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 18 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 19 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 20 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_15" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 1.649726) THEN CASE WHEN (model_input."X_7" <= -1.391973) THEN CASE WHEN (model_input."X_9" <= -0.950757) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_7" <= 1.701600) THEN CASE WHEN (model_input."X_0" <= -0.442545) THEN CASE WHEN (model_input."X_9" <= 0.001622) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_3" <= 0.237675) THEN CASE WHEN (model_input."X_9" <= 0.578821) THEN CASE WHEN (model_input."X_9" <= -1.106098) THEN 19 ELSE 20 END ELSE 16 END ELSE CASE WHEN (model_input."X_9" <= -0.358397) THEN 13 ELSE 14 END END END ELSE 6 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 37.110317 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.580389 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 4 AS nid, 41.364136 AS "E"
    UNION ALL
    SELECT 5 AS nid, 23.727255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 7 AS nid, 59.927471 AS "E"
    UNION ALL
    SELECT 8 AS nid, -12.472964 AS "E"
    UNION ALL
    SELECT 9 AS nid, -26.207191 AS "E"
    UNION ALL
    SELECT 10 AS nid, 14.995489 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 14 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 15 AS nid, -31.176399 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 18 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 19 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 20 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_16" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_6" <= 1.784423) THEN CASE WHEN (model_input."X_4" <= 0.184823) THEN CASE WHEN (model_input."X_1" <= -0.278804) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= -0.442545) THEN CASE WHEN (model_input."X_9" <= 0.114824) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_6" <= -0.400839) THEN 7 ELSE CASE WHEN (model_input."X_9" <= 0.578821) THEN CASE WHEN (model_input."X_9" <= -1.106098) THEN 15 ELSE 16 END ELSE 10 END END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 41.464485 AS "E"
    UNION ALL
    SELECT 1 AS nid, 18.224831 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, 69.042076 AS "E"
    UNION ALL
    SELECT 4 AS nid, -0.254169 AS "E"
    UNION ALL
    SELECT 5 AS nid, 36.936607 AS "E"
    UNION ALL
    SELECT 6 AS nid, -31.246483 AS "E"
    UNION ALL
    SELECT 7 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 8 AS nid, -25.208044 AS "E"
    UNION ALL
    SELECT 9 AS nid, -28.685163 AS "E"
    UNION ALL
    SELECT 10 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 11 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 12 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 14 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 15 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 16 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_17" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_9" <= -1.583338) THEN 1 ELSE CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_4" <= 0.184823) THEN CASE WHEN (model_input."X_1" <= 0.159806) THEN CASE WHEN (model_input."X_5" <= -0.888369) THEN 17 ELSE 18 END ELSE 10 END ELSE CASE WHEN (model_input."X_7" <= -0.005867) THEN CASE WHEN (model_input."X_3" <= -1.174608) THEN 13 ELSE CASE WHEN (model_input."X_9" <= 0.578821) THEN CASE WHEN (model_input."X_8" <= 0.597334) THEN 19 ELSE 20 END ELSE 16 END END ELSE CASE WHEN (model_input."X_6" <= 0.002765) THEN 11 ELSE 12 END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 65.812302 AS "E"
    UNION ALL
    SELECT 1 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.491327 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.528599 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, 60.300926 AS "E"
    UNION ALL
    SELECT 6 AS nid, -24.592434 AS "E"
    UNION ALL
    SELECT 7 AS nid, -36.413792 AS "E"
    UNION ALL
    SELECT 8 AS nid, 16.782324 AS "E"
    UNION ALL
    SELECT 9 AS nid, 70.312042 AS "E"
    UNION ALL
    SELECT 10 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 11 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 12 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 13 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 14 AS nid, -26.403835 AS "E"
    UNION ALL
    SELECT 15 AS nid, -30.179905 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 18 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 19 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 20 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_18" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_9" <= -0.950757) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_6" <= -0.552250) THEN CASE WHEN (model_input."X_3" <= -0.503808) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 0.159806) THEN CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_6" <= 0.620095) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= -0.632739) THEN 15 ELSE 16 END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 34.583813 AS "E"
    UNION ALL
    SELECT 1 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 2 AS nid, 63.383503 AS "E"
    UNION ALL
    SELECT 3 AS nid, 48.797092 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, -30.857635 AS "E"
    UNION ALL
    SELECT 6 AS nid, 63.279774 AS "E"
    UNION ALL
    SELECT 7 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 8 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 9 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 10 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 11 AS nid, 73.278030 AS "E"
    UNION ALL
    SELECT 12 AS nid, 36.617741 AS "E"
    UNION ALL
    SELECT 13 AS nid, 68.497803 AS "E"
    UNION ALL
    SELECT 14 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 15 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 16 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 17 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 18 AS nid, 72.851982 AS "E"
  ) AS "Values"
 ),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_19" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.273323) THEN CASE WHEN (model_input."X_6" <= 1.216309) THEN CASE WHEN (model_input."X_8" <= -0.695227) THEN 9 ELSE CASE WHEN (model_input."X_9" <= -0.194098) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_1" <= -0.011258) THEN CASE WHEN (model_input."X_7" <= 0.572634) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_8" <= 0.062132) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 34.985321 AS "E"
    UNION ALL
    SELECT 1 AS nid, -22.012581 AS "E"
    UNION ALL
    SELECT 2 AS nid, 69.184067 AS "E"
    UNION ALL
    SELECT 3 AS nid, -36.278713 AS "E"
    UNION ALL
    SELECT 4 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 5 AS nid, 59.795158 AS "E"
    UNION ALL
    SELECT 6 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 7 AS nid, 69.042076 AS "E"
    UNION ALL
    SELECT 8 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 9 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 10 AS nid, -29.988724 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 12 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 13 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.928503 AS "E"
    UNION ALL
    SELECT 15 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 16 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_20" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_1" <= -1.973622) THEN 3 ELSE CASE WHEN (model_input."X_8" <= -0.289997) THEN CASE WHEN (model_input."X_6" <= 1.321897) THEN CASE WHEN (model_input."X_6" <= -0.687216) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 1.103895) THEN CASE WHEN (model_input."X_9" <= -0.581024) THEN 21 ELSE 22 END ELSE 18 END END ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 0.423649) THEN CASE WHEN (model_input."X_0" <= 0.527486) THEN CASE WHEN (model_input."X_9" <= -0.257740) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (model_input."X_6" <= 0.002765) THEN 15 ELSE 16 END END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 19.999895 AS "E"
    UNION ALL
    SELECT 1 AS nid, -13.286798 AS "E"
    UNION ALL
    SELECT 2 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 3 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 4 AS nid, 9.185021 AS "E"
    UNION ALL
    SELECT 5 AS nid, -24.024027 AS "E"
    UNION ALL
    SELECT 6 AS nid, 55.677685 AS "E"
    UNION ALL
    SELECT 7 AS nid, 81.607933 AS "E"
    UNION ALL
    SELECT 8 AS nid, 16.782324 AS "E"
    UNION ALL
    SELECT 9 AS nid, -36.247711 AS "E"
    UNION ALL
    SELECT 10 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 11 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 12 AS nid, -23.652227 AS "E"
    UNION ALL
    SELECT 13 AS nid, 69.042068 AS "E"
    UNION ALL
    SELECT 14 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 15 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 16 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 17 AS nid, -27.769781 AS "E"
    UNION ALL
    SELECT 18 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 19 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 20 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 21 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 22 AS nid, -28.928501 AS "E"
  ) AS "Values"
 ),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_21" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_1" <= -1.649685) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_4" <= 0.184823) THEN CASE WHEN (model_input."X_1" <= -0.575097) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 0.159806) THEN CASE WHEN (model_input."X_1" <= -0.278804) THEN 17 ELSE 18 END ELSE 16 END END ELSE CASE WHEN (model_input."X_2" <= -0.059913) THEN CASE WHEN (model_input."X_0" <= 0.358131) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= -0.489257) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 3.946091 AS "E"
    UNION ALL
    SELECT 1 AS nid, -160.715225 AS "E"
    UNION ALL
    SELECT 2 AS nid, 41.944851 AS "E"
    UNION ALL
    SELECT 3 AS nid, 73.143417 AS "E"
    UNION ALL
    SELECT 4 AS nid, -7.972842 AS "E"
    UNION ALL
    SELECT 5 AS nid, 16.254965 AS "E"
    UNION ALL
    SELECT 6 AS nid, -44.314552 AS "E"
    UNION ALL
    SELECT 7 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 8 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 9 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 10 AS nid, 61.944672 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 15 AS nid, 68.280090 AS "E"
    UNION ALL
    SELECT 16 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 17 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 18 AS nid, 65.232162 AS "E"
  ) AS "Values"
 ),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_22" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 1.507509) THEN CASE WHEN (model_input."X_7" <= -1.391973) THEN CASE WHEN (model_input."X_9" <= -0.950757) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_5" <= 0.544969) THEN CASE WHEN (model_input."X_8" <= 0.347086) THEN CASE WHEN (model_input."X_2" <= -0.240513) THEN CASE WHEN (model_input."X_0" <= 1.143809) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= -0.413944) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 0.643919) THEN 9 ELSE 10 END END ELSE 6 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 29.250046 AS "E"
    UNION ALL
    SELECT 1 AS nid, -22.294119 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, -157.565842 AS "E"
    UNION ALL
    SELECT 4 AS nid, 31.814564 AS "E"
    UNION ALL
    SELECT 5 AS nid, 7.237649 AS "E"
    UNION ALL
    SELECT 6 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 7 AS nid, -11.374711 AS "E"
    UNION ALL
    SELECT 8 AS nid, 44.462372 AS "E"
    UNION ALL
    SELECT 9 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 10 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, -3.032336 AS "E"
    UNION ALL
    SELECT 14 AS nid, -28.059462 AS "E"
    UNION ALL
    SELECT 15 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 16 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 17 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 18 AS nid, -27.190422 AS "E"
  ) AS "Values"
 ),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_23" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 0.346127) THEN CASE WHEN (model_input."X_1" <= -1.973622) THEN 7 ELSE CASE WHEN (model_input."X_4" <= 0.567256) THEN CASE WHEN (model_input."X_1" <= 0.539630) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= -0.741543) THEN 13 ELSE CASE WHEN (model_input."X_0" <= -0.545835) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (model_input."X_0" <= 0.734207) THEN 3 ELSE CASE WHEN (model_input."X_4" <= 0.963088) THEN CASE WHEN (model_input."X_1" <= 0.141998) THEN 9 ELSE 10 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 41.550121 AS "E"
    UNION ALL
    SELECT 1 AS nid, -60.021118 AS "E"
    UNION ALL
    SELECT 2 AS nid, 172.141724 AS "E"
    UNION ALL
    SELECT 3 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 4 AS nid, 135.822144 AS "E"
    UNION ALL
    SELECT 5 AS nid, 77.229851 AS "E"
    UNION ALL
    SELECT 6 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 7 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 8 AS nid, -15.972828 AS "E"
    UNION ALL
    SELECT 9 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 10 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 11 AS nid, -50.601955 AS "E"
    UNION ALL
    SELECT 12 AS nid, 18.656298 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, 41.579659 AS "E"
    UNION ALL
    SELECT 15 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 16 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 17 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 18 AS nid, 49.318077 AS "E"
  ) AS "Values"
 ),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_24" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 1.468296) THEN CASE WHEN (model_input."X_0" <= 1.133559) THEN CASE WHEN (model_input."X_7" <= -1.743980) THEN 7 ELSE CASE WHEN (model_input."X_3" <= -1.174608) THEN 9 ELSE CASE WHEN (model_input."X_5" <= 0.243841) THEN CASE WHEN (model_input."X_1" <= -0.291994) THEN 13 ELSE 14 END ELSE 12 END END END ELSE CASE WHEN (model_input."X_6" <= -0.230386) THEN 5 ELSE 6 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 77.046692 AS "E"
    UNION ALL
    SELECT 1 AS nid, -27.290823 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, -68.723625 AS "E"
    UNION ALL
    SELECT 4 AS nid, 179.873199 AS "E"
    UNION ALL
    SELECT 5 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 6 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 7 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 8 AS nid, -39.426975 AS "E"
    UNION ALL
    SELECT 9 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 10 AS nid, -2.740807 AS "E"
    UNION ALL
    SELECT 11 AS nid, -19.244995 AS "E"
    UNION ALL
    SELECT 12 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 13 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 14 AS nid, -11.299567 AS "E"
  ) AS "Values"
 ),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_25" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 1.787516) THEN CASE WHEN (model_input."X_7" <= 1.798573) THEN CASE WHEN (model_input."X_8" <= -0.289997) THEN CASE WHEN (model_input."X_8" <= -0.723366) THEN 13 ELSE CASE WHEN (model_input."X_5" <= -0.574503) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_2" <= 0.633442) THEN CASE WHEN (model_input."X_5" <= 0.401200) THEN CASE WHEN (model_input."X_2" <= 0.577342) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 1.105399) THEN CASE WHEN (model_input."X_5" <= -0.888369) THEN 15 ELSE 16 END ELSE 10 END END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 119.559441 AS "E"
    UNION ALL
    SELECT 1 AS nid, 57.136421 AS "E"
    UNION ALL
    SELECT 2 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.523634 AS "E"
    UNION ALL
    SELECT 4 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 5 AS nid, -36.187004 AS "E"
    UNION ALL
    SELECT 6 AS nid, 54.501148 AS "E"
    UNION ALL
    SELECT 7 AS nid, 21.277407 AS "E"
    UNION ALL
    SELECT 8 AS nid, 79.418945 AS "E"
    UNION ALL
    SELECT 9 AS nid, 70.312042 AS "E"
    UNION ALL
    SELECT 10 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 11 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 12 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 13 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 14 AS nid, -27.769781 AS "E"
    UNION ALL
    SELECT 15 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 16 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 17 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 18 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 19 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 20 AS nid, -28.928501 AS "E"
  ) AS "Values"
 ),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_26" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= -1.831953) THEN 1 ELSE CASE WHEN (model_input."X_0" <= 1.133559) THEN CASE WHEN (model_input."X_5" <= 0.812260) THEN CASE WHEN (model_input."X_5" <= -1.809273) THEN CASE WHEN (model_input."X_4" <= 0.473548) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= -0.722145) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 1.103895) THEN CASE WHEN (model_input."X_7" <= 0.627461) THEN 17 ELSE 18 END ELSE 16 END END END ELSE 8 END ELSE CASE WHEN (model_input."X_8" <= -0.022464) THEN 5 ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 62.683750 AS "E"
    UNION ALL
    SELECT 1 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 2 AS nid, 40.858727 AS "E"
    UNION ALL
    SELECT 3 AS nid, 3.605021 AS "E"
    UNION ALL
    SELECT 4 AS nid, 143.306427 AS "E"
    UNION ALL
    SELECT 5 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 6 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 7 AS nid, 18.777294 AS "E"
    UNION ALL
    SELECT 8 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 9 AS nid, 61.085030 AS "E"
    UNION ALL
    SELECT 10 AS nid, -9.427862 AS "E"
    UNION ALL
    SELECT 11 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 12 AS nid, -24.359867 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 14 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 15 AS nid, -27.624941 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 18 AS nid, -28.928501 AS "E"
  ) AS "Values"
 ),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_27" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.281045) THEN CASE WHEN (model_input."X_7" <= -1.391973) THEN CASE WHEN (model_input."X_3" <= -0.315428) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_6" <= 1.216309) THEN CASE WHEN (model_input."X_0" <= 0.704483) THEN CASE WHEN (model_input."X_8" <= -0.695227) THEN 19 ELSE CASE WHEN (model_input."X_6" <= 0.331554) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_0" <= 1.143809) THEN 21 ELSE 22 END END ELSE 12 END END ELSE CASE WHEN (model_input."X_0" <= 0.007184) THEN CASE WHEN (model_input."X_5" <= 0.387300) THEN CASE WHEN (model_input."X_8" <= 0.062132) THEN 25 ELSE 26 END ELSE 18 END ELSE CASE WHEN (model_input."X_8" <= 0.226663) THEN CASE WHEN (model_input."X_1" <= 1.170433) THEN 9 ELSE 10 END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 32.901283 AS "E"
    UNION ALL
    SELECT 1 AS nid, -67.303642 AS "E"
    UNION ALL
    SELECT 2 AS nid, 161.736191 AS "E"
    UNION ALL
    SELECT 3 AS nid, 43.113659 AS "E"
    UNION ALL
    SELECT 4 AS nid, 250.703094 AS "E"
    UNION ALL
    SELECT 5 AS nid, 298.690918 AS "E"
    UNION ALL
    SELECT 6 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 7 AS nid, -173.312729 AS "E"
    UNION ALL
    SELECT 8 AS nid, -14.299108 AS "E"
    UNION ALL
    SELECT 9 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 10 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 11 AS nid, -27.022543 AS "E"
    UNION ALL
    SELECT 12 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 13 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 14 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 15 AS nid, -41.178852 AS "E"
    UNION ALL
    SELECT 16 AS nid, -5.788080 AS "E"
    UNION ALL
    SELECT 17 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 18 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 19 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 20 AS nid, -31.048944 AS "E"
    UNION ALL
    SELECT 21 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 22 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 23 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 24 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 25 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 26 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_28" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.281045) THEN CASE WHEN (model_input."X_5" <= -0.460997) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.583089) THEN CASE WHEN (model_input."X_8" <= 0.252001) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= -0.252938) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_0" <= 0.121605) THEN CASE WHEN (model_input."X_9" <= -1.447783) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.392607) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_1" <= 1.170433) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 29.587580 AS "E"
    UNION ALL
    SELECT 1 AS nid, -54.428600 AS "E"
    UNION ALL
    SELECT 2 AS nid, 137.608383 AS "E"
    UNION ALL
    SELECT 3 AS nid, 16.796490 AS "E"
    UNION ALL
    SELECT 4 AS nid, 298.690918 AS "E"
    UNION ALL
    SELECT 5 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 6 AS nid, -16.862427 AS "E"
    UNION ALL
    SELECT 7 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 8 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 9 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 10 AS nid, 31.458794 AS "E"
    UNION ALL
    SELECT 11 AS nid, -47.304031 AS "E"
    UNION ALL
    SELECT 12 AS nid, -4.685782 AS "E"
    UNION ALL
    SELECT 13 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 14 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 15 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 18 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_29" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_9" <= -1.583338) THEN 1 ELSE CASE WHEN (model_input."X_1" <= -1.973622) THEN 3 ELSE CASE WHEN (model_input."X_5" <= -1.549785) THEN CASE WHEN (model_input."X_6" <= 0.847890) THEN 9 ELSE CASE WHEN (model_input."X_4" <= 0.473548) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_7" <= -0.054542) THEN CASE WHEN (model_input."X_9" <= 0.578821) THEN CASE WHEN (model_input."X_1" <= -1.321609) THEN 17 ELSE 18 END ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= 0.416786) THEN CASE WHEN (model_input."X_1" <= 0.216473) THEN 19 ELSE 20 END ELSE 12 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 21.438301 AS "E"
    UNION ALL
    SELECT 1 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 2 AS nid, -3.136427 AS "E"
    UNION ALL
    SELECT 3 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 4 AS nid, 19.168386 AS "E"
    UNION ALL
    SELECT 5 AS nid, 75.440422 AS "E"
    UNION ALL
    SELECT 6 AS nid, -5.841412 AS "E"
    UNION ALL
    SELECT 7 AS nid, -23.225666 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.888906 AS "E"
    UNION ALL
    SELECT 9 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 10 AS nid, 65.007347 AS "E"
    UNION ALL
    SELECT 11 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 12 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 13 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 14 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 15 AS nid, -31.176399 AS "E"
    UNION ALL
    SELECT 16 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 17 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 19 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 20 AS nid, 30.267570 AS "E"
  ) AS "Values"
 ),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_30" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.281045) THEN CASE WHEN (model_input."X_7" <= -1.391973) THEN CASE WHEN (model_input."X_3" <= -0.315428) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_5" <= -1.190130) THEN 9 ELSE CASE WHEN (model_input."X_4" <= 0.833955) THEN CASE WHEN (model_input."X_9" <= 0.405703) THEN CASE WHEN (model_input."X_3" <= -1.228808) THEN 17 ELSE 18 END ELSE 16 END ELSE 14 END END END ELSE CASE WHEN (model_input."X_0" <= 0.775203) THEN 3 ELSE CASE WHEN (model_input."X_9" <= -0.160569) THEN 5 ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 56.641090 AS "E"
    UNION ALL
    SELECT 1 AS nid, -44.237644 AS "E"
    UNION ALL
    SELECT 2 AS nid, 278.574310 AS "E"
    UNION ALL
    SELECT 3 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 4 AS nid, 204.251053 AS "E"
    UNION ALL
    SELECT 5 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 6 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 7 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 8 AS nid, -16.954018 AS "E"
    UNION ALL
    SELECT 9 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 10 AS nid, -25.238028 AS "E"
    UNION ALL
    SELECT 11 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 12 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 13 AS nid, -39.176491 AS "E"
    UNION ALL
    SELECT 14 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 15 AS nid, -31.755758 AS "E"
    UNION ALL
    SELECT 16 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 17 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 18 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_31" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_2" <= 0.825392) THEN CASE WHEN (model_input."X_1" <= -1.973622) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 0.121812) THEN CASE WHEN (model_input."X_6" <= -0.687216) THEN 13 ELSE CASE WHEN (model_input."X_5" <= 0.558506) THEN CASE WHEN (model_input."X_0" <= -0.413944) THEN 17 ELSE 18 END ELSE 16 END END ELSE CASE WHEN (model_input."X_7" <= 0.704609) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_0" <= 0.212755) THEN 9 ELSE 10 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 35.279839 AS "E"
    UNION ALL
    SELECT 1 AS nid, 4.175986 AS "E"
    UNION ALL
    SELECT 2 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 3 AS nid, -32.698730 AS "E"
    UNION ALL
    SELECT 4 AS nid, 96.362785 AS "E"
    UNION ALL
    SELECT 5 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 6 AS nid, -19.874399 AS "E"
    UNION ALL
    SELECT 7 AS nid, -34.763996 AS "E"
    UNION ALL
    SELECT 8 AS nid, 9.904796 AS "E"
    UNION ALL
    SELECT 9 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 10 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 11 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 12 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 13 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 14 AS nid, -29.429066 AS "E"
    UNION ALL
    SELECT 15 AS nid, -28.493980 AS "E"
    UNION ALL
    SELECT 16 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 17 AS nid, -28.928503 AS "E"
    UNION ALL
    SELECT 18 AS nid, -27.190422 AS "E"
  ) AS "Values"
 ),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
