WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_9" <= 0.058724) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.592037) THEN CASE WHEN (model_input."X_9" <= 0.598821) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_5" <= 0.363800) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_9" <= 0.105143) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.761340 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.736606 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.835539 AS "E"
    UNION ALL
    SELECT 3 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.282282 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.025808 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.636816) THEN CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_7" <= 0.231928) THEN 13 ELSE CASE WHEN (model_input."X_8" <= 0.400081) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 0.191301) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.625883) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_4" <= 0.408002) THEN 3 ELSE CASE WHEN (model_input."X_5" <= 0.605965) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.844121 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.854951 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.028959 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.193403 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.195415 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.099604 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 14.889313 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_4" <= 0.435379) THEN CASE WHEN (model_input."X_3" <= 0.483014) THEN CASE WHEN (model_input."X_9" <= 0.504533) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_6" <= 0.590125) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.253560) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.253287 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.989056 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.781748 AS "E"
    UNION ALL
    SELECT 3 AS nid, 13.078081 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.174015 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.504805 AS "E"
    UNION ALL
    SELECT 8 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_9" <= 0.167484) THEN CASE WHEN (model_input."X_9" <= 0.045074) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.105143) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_9" <= 0.594401) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN CASE WHEN (model_input."X_3" <= 0.452142) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.073031 AS "E"
    UNION ALL
    SELECT 1 AS nid, 20.037123 AS "E"
    UNION ALL
    SELECT 2 AS nid, 12.084998 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.848354 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.703323 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.363574 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.509034) THEN CASE WHEN (model_input."X_8" <= 0.462191) THEN CASE WHEN (model_input."X_2" <= 0.726459) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.470460) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_6" <= 0.355530) THEN 3 ELSE CASE WHEN (model_input."X_7" <= 0.426837) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 12.710594 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.804104 AS "E"
    UNION ALL
    SELECT 2 AS nid, 16.523575 AS "E"
    UNION ALL
    SELECT 3 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.516663 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.309780 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.147826 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 13 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
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
    CASE WHEN (model_input."X_7" <= 0.382312) THEN CASE WHEN (model_input."X_2" <= 0.565379) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_9" <= 0.463461) THEN CASE WHEN (model_input."X_0" <= 0.561154) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_3" <= 0.207089) THEN 7 ELSE CASE WHEN (model_input."X_8" <= 0.462191) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.101444 AS "E"
    UNION ALL
    SELECT 1 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 2 AS nid, 11.247716 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.046858 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.547931 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 7 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.607601 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.119547 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.509034) THEN CASE WHEN (model_input."X_4" <= 0.246493) THEN CASE WHEN (model_input."X_2" <= 0.403000) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 0.435379) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 0.133410) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_7" <= 0.426837) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= 0.539667) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.922376 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.387353 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.457403 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.589400 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.193403 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.085134 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.689571 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 15 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 16 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.700590) THEN CASE WHEN (model_input."X_9" <= 0.463461) THEN CASE WHEN (model_input."X_9" <= 0.058724) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_7" <= 0.747006) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_9" <= 0.313051) THEN CASE WHEN (model_input."X_8" <= 0.500009) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.389229 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.438455 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.520308 AS "E"
    UNION ALL
    SELECT 3 AS nid, 20.328772 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.046858 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.395096 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.119547 AS "E"
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
    CASE WHEN (model_input."X_7" <= 0.382312) THEN CASE WHEN (model_input."X_9" <= 0.105143) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_0" <= 0.256825) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.179432) THEN 13 ELSE CASE WHEN (model_input."X_9" <= 0.594401) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_1" <= 0.191301) THEN 7 ELSE CASE WHEN (model_input."X_9" <= 0.504533) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.428873 AS "E"
    UNION ALL
    SELECT 1 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 2 AS nid, 14.395976 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.846251 AS "E"
    UNION ALL
    SELECT 4 AS nid, 11.495429 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.106638 AS "E"
    UNION ALL
    SELECT 7 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 14 AS nid, 14.930272 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 16 AS nid, 14.766437 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.482233) THEN CASE WHEN (model_input."X_7" <= 0.826513) THEN CASE WHEN (model_input."X_3" <= 0.795300) THEN CASE WHEN (model_input."X_7" <= 0.426837) THEN 13 ELSE 14 END ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 0.601532) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_8" <= 0.500009) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.253560) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 17.420500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 14.423731 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.615974 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.424808 AS "E"
    UNION ALL
    SELECT 4 AS nid, 11.921038 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.133890 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.589400 AS "E"
    UNION ALL
    SELECT 12 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_1" <= 0.509034) THEN CASE WHEN (model_input."X_7" <= 0.750882) THEN CASE WHEN (model_input."X_1" <= 0.133410) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 0.493517) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_7" <= 0.391908) THEN CASE WHEN (model_input."X_7" <= 0.253560) THEN 9 ELSE 10 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.759987 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.338425 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.181547 AS "E"
    UNION ALL
    SELECT 3 AS nid, 22.464571 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 5 AS nid, 10.712936 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.589401 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_6" <= 0.870999) THEN CASE WHEN (model_input."X_4" <= 0.399311) THEN CASE WHEN (model_input."X_4" <= 0.192369) THEN CASE WHEN (model_input."X_3" <= 0.493517) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 0.804412) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_3" <= 0.652056) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.656838 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.912689 AS "E"
    UNION ALL
    SELECT 2 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.163764 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.576488 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.662139 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.864738 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 11 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.258731) THEN CASE WHEN (model_input."X_8" <= 0.495034) THEN CASE WHEN (model_input."X_6" <= 0.330525) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_4" <= 0.705366) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_4" <= 0.470478) THEN CASE WHEN (model_input."X_8" <= 0.184222) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 0.367363) THEN 11 ELSE CASE WHEN (model_input."X_7" <= 0.426837) THEN 13 ELSE 14 END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.723985 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.698644 AS "E"
    UNION ALL
    SELECT 2 AS nid, 15.884941 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.882817 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.314873 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.174015 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 10 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.516663 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 15 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 16 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.690810) THEN CASE WHEN (model_input."X_4" <= 0.246493) THEN CASE WHEN (model_input."X_6" <= 0.290112) THEN 9 ELSE CASE WHEN (model_input."X_0" <= 0.416169) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_8" <= 0.494384) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_8" <= 0.539667) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.885209 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.932577 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.743101 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.488608 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.820515 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.633043 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.807614 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.636816) THEN CASE WHEN (model_input."X_4" <= 0.246493) THEN CASE WHEN (model_input."X_0" <= 0.809084) THEN CASE WHEN (model_input."X_9" <= 0.605323) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (model_input."X_6" <= 0.465296) THEN CASE WHEN (model_input."X_9" <= 0.854095) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= 0.696568) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_3" <= 0.780087) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.241078 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.786556 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.150122 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.743101 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.776049 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.797066 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.460555 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 15 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 16 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 17 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 18 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_4" <= 0.198077) THEN CASE WHEN (model_input."X_5" <= 0.637675) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN CASE WHEN (model_input."X_9" <= 0.854095) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 5 ELSE CASE WHEN (model_input."X_9" <= 0.105143) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.128984 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.882097 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.674625 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.662139 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.797065 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 15 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 16 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_0" <= 0.856734) THEN CASE WHEN (model_input."X_9" <= 0.366237) THEN CASE WHEN (model_input."X_9" <= 0.179432) THEN 11 ELSE 12 END ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 0.207089) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_8" <= 0.539667) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.821942 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.136211 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.193403 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.390545 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.881879 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 7 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.251521 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.629937) THEN CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_3" <= 0.525294) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_2" <= 0.592037) THEN CASE WHEN (model_input."X_5" <= 0.292960) THEN CASE WHEN (model_input."X_5" <= 0.103831) THEN 15 ELSE 16 END ELSE 14 END ELSE CASE WHEN (model_input."X_6" <= 0.654028) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_9" <= 0.045074) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.638709 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.767389 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.252665 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.193403 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.889313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.875412 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.310744 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 15 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 17 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 18 AS nid, 14.766437 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.636816) THEN CASE WHEN (model_input."X_4" <= 0.325925) THEN CASE WHEN (model_input."X_0" <= 0.809084) THEN CASE WHEN (model_input."X_1" <= 0.305617) THEN 9 ELSE 10 END ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 0.652056) THEN CASE WHEN (model_input."X_4" <= 0.705366) THEN 13 ELSE 14 END ELSE 12 END END ELSE CASE WHEN (model_input."X_7" <= 0.494761) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.564374 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.250395 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.203949 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.432194 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.614045 AS "E"
    UNION ALL
    SELECT 5 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 6 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.287025 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_4" <= 0.149260) THEN CASE WHEN (model_input."X_9" <= 0.190354) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= 0.162590) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.253560) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 17.076847 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.275224 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.878469 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.589401 AS "E"
    UNION ALL
    SELECT 4 AS nid, 12.118136 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.212624 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.807614 AS "E"
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
    CASE WHEN (model_input."X_0" <= 0.774034) THEN CASE WHEN (model_input."X_3" <= 0.780087) THEN CASE WHEN (model_input."X_9" <= 0.190354) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 7 ELSE CASE WHEN (model_input."X_1" <= 0.568345) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_9" <= 0.940764) THEN CASE WHEN (model_input."X_0" <= 0.809084) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 0.367771) THEN 13 ELSE 14 END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.699326 AS "E"
    UNION ALL
    SELECT 1 AS nid, 19.092659 AS "E"
    UNION ALL
    SELECT 2 AS nid, 11.561229 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.589401 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.428164 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.798056 AS "E"
    UNION ALL
    SELECT 6 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.141929 AS "E"
    UNION ALL
    SELECT 11 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 12 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 14 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.807614 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.753800) THEN CASE WHEN (model_input."X_7" <= 0.874332) THEN CASE WHEN (model_input."X_2" <= 0.592037) THEN CASE WHEN (model_input."X_2" <= 0.458750) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 0.367771) THEN 11 ELSE 12 END END ELSE 6 END ELSE CASE WHEN (model_input."X_9" <= 0.541215) THEN CASE WHEN (model_input."X_0" <= 0.495331) THEN 7 ELSE 8 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.675349 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.226431 AS "E"
    UNION ALL
    SELECT 2 AS nid, 18.103838 AS "E"
    UNION ALL
    SELECT 3 AS nid, 20.328772 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.762137 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.712253 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 12 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.304958 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.886157) THEN CASE WHEN (model_input."X_4" <= 0.399311) THEN CASE WHEN (model_input."X_7" <= 0.413170) THEN 5 ELSE CASE WHEN (model_input."X_6" <= 0.367363) THEN CASE WHEN (model_input."X_2" <= 0.553501) THEN 13 ELSE 14 END ELSE 10 END END ELSE CASE WHEN (model_input."X_3" <= 0.652056) THEN CASE WHEN (model_input."X_9" <= 0.598821) THEN 11 ELSE 12 END ELSE 8 END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.060973 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.257635 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.353577 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.511016 AS "E"
    UNION ALL
    SELECT 5 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.979063 AS "E"
    UNION ALL
    SELECT 7 AS nid, 10.206751 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.848354 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 11 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 12 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 13 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.482233) THEN CASE WHEN (model_input."X_2" <= 0.820557) THEN CASE WHEN (model_input."X_2" <= 0.536770) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 5 ELSE CASE WHEN (model_input."X_8" <= 0.854637) THEN 9 ELSE 10 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.070609 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.951422 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.428164 AS "E"
    UNION ALL
    SELECT 3 AS nid, 11.921039 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.012189 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.119548 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 10 AS nid, 22.842493 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.258731) THEN CASE WHEN (model_input."X_1" <= 0.169404) THEN CASE WHEN (model_input."X_3" <= 0.407004) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_6" <= 0.330525) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.638980) THEN 3 ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.050130 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.530045 AS "E"
    UNION ALL
    SELECT 2 AS nid, 16.578251 AS "E"
    UNION ALL
    SELECT 3 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 4 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 5 AS nid, 10.147826 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 9 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 10 AS nid, 10.304958 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.482233) THEN CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_7" <= 0.661618) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_9" <= 0.058724) THEN 7 ELSE CASE WHEN (model_input."X_7" <= 0.844316) THEN CASE WHEN (model_input."X_8" <= 0.462191) THEN 13 ELSE 14 END ELSE 10 END END END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 3 ELSE CASE WHEN (model_input."X_9" <= 0.105143) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.583669 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.635502 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.428167 AS "E"
    UNION ALL
    SELECT 3 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 4 AS nid, 22.370090 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.950752 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.583303 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.886333 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.607601 AS "E"
    UNION ALL
    SELECT 10 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 11 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 14 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012189 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.784672) THEN CASE WHEN (model_input."X_1" <= 0.258731) THEN CASE WHEN (model_input."X_9" <= 0.940764) THEN CASE WHEN (model_input."X_2" <= 0.593172) THEN 11 ELSE 12 END ELSE 10 END ELSE CASE WHEN (model_input."X_6" <= 0.911508) THEN CASE WHEN (model_input."X_9" <= 0.366237) THEN CASE WHEN (model_input."X_9" <= 0.179432) THEN 15 ELSE 16 END ELSE 14 END ELSE 6 END END ELSE CASE WHEN (model_input."X_3" <= 0.875530) THEN 7 ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.761681 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.569817 AS "E"
    UNION ALL
    SELECT 2 AS nid, 20.721001 AS "E"
    UNION ALL
    SELECT 3 AS nid, 10.961101 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.687837 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.473959 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 9 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 10 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.251521 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 15 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.331523) THEN CASE WHEN (model_input."X_5" <= 0.102749) THEN CASE WHEN (model_input."X_1" <= 0.189699) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_4" <= 0.514812) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_4" <= 0.348677) THEN CASE WHEN (model_input."X_5" <= 0.637675) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 0.439431) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.565379) THEN 9 ELSE 10 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.607296 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.496959 AS "E"
    UNION ALL
    SELECT 2 AS nid, 19.717630 AS "E"
    UNION ALL
    SELECT 3 AS nid, 15.589401 AS "E"
    UNION ALL
    SELECT 4 AS nid, 21.781746 AS "E"
    UNION ALL
    SELECT 5 AS nid, 14.889314 AS "E"
    UNION ALL
    SELECT 6 AS nid, 10.712253 AS "E"
    UNION ALL
    SELECT 7 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 22.527557 AS "E"
    UNION ALL
    SELECT 9 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_9" <= 0.100249) THEN 1 ELSE CASE WHEN (model_input."X_4" <= 0.399311) THEN CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_0" <= 0.664098) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.661618) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_5" <= 0.363800) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_8" <= 0.495034) THEN 11 ELSE CASE WHEN (model_input."X_9" <= 0.598821) THEN 13 ELSE 14 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.354451 AS "E"
    UNION ALL
    SELECT 1 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 2 AS nid, 12.656843 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.154472 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.410398 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.088169 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.287079 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 10 AS nid, 14.848354 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 12 AS nid, 10.174015 AS "E"
    UNION ALL
    SELECT 13 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 14 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 15 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.012190 AS "E"
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
    CASE WHEN (model_input."X_3" <= 0.886157) THEN CASE WHEN (model_input."X_4" <= 0.246493) THEN CASE WHEN (model_input."X_3" <= 0.212179) THEN 5 ELSE CASE WHEN (model_input."X_4" <= 0.192369) THEN CASE WHEN (model_input."X_7" <= 0.426837) THEN 13 ELSE 14 END ELSE 10 END END ELSE CASE WHEN (model_input."X_6" <= 0.465296) THEN CASE WHEN (model_input."X_9" <= 0.854095) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 0.561743) THEN 15 ELSE 16 END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 13.516334 AS "E"
    UNION ALL
    SELECT 1 AS nid, 12.754391 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.532985 AS "E"
    UNION ALL
    SELECT 4 AS nid, 10.620078 AS "E"
    UNION ALL
    SELECT 5 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 6 AS nid, 15.438213 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.043072 AS "E"
    UNION ALL
    SELECT 9 AS nid, 15.662139 AS "E"
    UNION ALL
    SELECT 10 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 11 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 12 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 15 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 16 AS nid, 9.912128 AS "E"
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
    CASE WHEN (model_input."X_1" <= 0.236834) THEN CASE WHEN (model_input."X_3" <= 0.764428) THEN CASE WHEN (model_input."X_5" <= 0.292960) THEN CASE WHEN (model_input."X_5" <= 0.103831) THEN 15 ELSE 16 END ELSE 10 END ELSE 6 END ELSE CASE WHEN (model_input."X_0" <= 0.256825) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 0.830037) THEN CASE WHEN (model_input."X_7" <= 0.426837) THEN 11 ELSE CASE WHEN (model_input."X_6" <= 0.367363) THEN 13 ELSE 14 END END ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 12.958725 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.006697 AS "E"
    UNION ALL
    SELECT 2 AS nid, 15.691566 AS "E"
    UNION ALL
    SELECT 3 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 4 AS nid, 14.728380 AS "E"
    UNION ALL
    SELECT 5 AS nid, 10.380073 AS "E"
    UNION ALL
    SELECT 6 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 7 AS nid, 15.396998 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 10.010336 AS "E"
    UNION ALL
    SELECT 10 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 11 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.191689 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 14 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 15 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.304958 AS "E"
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
    CASE WHEN (model_input."X_4" <= 0.482233) THEN CASE WHEN (model_input."X_6" <= 0.257132) THEN CASE WHEN (model_input."X_0" <= 0.804412) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 0.536770) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_6" <= 0.385772) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.849094 AS "E"
    UNION ALL
    SELECT 1 AS nid, 13.118968 AS "E"
    UNION ALL
    SELECT 2 AS nid, 21.309345 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.848354 AS "E"
    UNION ALL
    SELECT 4 AS nid, 12.081337 AS "E"
    UNION ALL
    SELECT 5 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 6 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 7 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 8 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 9 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.012190 AS "E"
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
