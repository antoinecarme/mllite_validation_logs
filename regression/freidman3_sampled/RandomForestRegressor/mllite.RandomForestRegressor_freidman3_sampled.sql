WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 5.491227) THEN CASE WHEN (model_input."X_3" <= 4.706348) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.386503 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.049681 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.498777 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.546355 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.513225 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.559607 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.561464 AS "E"
  ) AS "Values"
 ),
"DT_output_0" AS 
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
    CASE WHEN (model_input."X_3" <= 4.126575) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN CASE WHEN (model_input."X_3" <= 8.071378) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 424.822449) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 15 ELSE 16 END END ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.313850 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.427115 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.311552 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.484897 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.513245 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.548283 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.561464 AS "E"
  ) AS "Values"
 ),
"DT_output_1" AS 
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
    CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_2" <= 0.625969) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.376847 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.121190 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.504675 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.529307 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.549843 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.554503 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552183 AS "E"
  ) AS "Values"
 ),
"DT_output_2" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 34.199562) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE 14 END ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.222602 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.059829 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.450485 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.968204 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.529305 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.009232 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.546334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
  ) AS "Values"
 ),
"DT_output_3" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_3" <= 8.022598) THEN 9 ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 1386.531738) THEN 13 ELSE 14 END END ELSE 8 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.357104 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.196799 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.471607 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.243506 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.527348 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.544013 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_4" AS 
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
    CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_2" <= 0.194355) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 3 ELSE CASE WHEN (model_input."X_3" <= 4.706348) THEN 5 ELSE CASE WHEN (model_input."X_2" <= 0.625969) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 9 ELSE 10 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.365047 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.436283 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.540312 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.551578 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.558370 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.007753 AS "E"
  ) AS "Values"
 ),
"DT_output_5" AS 
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
    CASE WHEN (model_input."X_3" <= 4.126575) THEN CASE WHEN (model_input."X_0" <= 57.614967) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 533.607544) THEN CASE WHEN (model_input."X_2" <= 0.474950) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 45.136101) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 15 ELSE 16 END END ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.297082 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.940360 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.415990 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.258305 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.494833 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.527348 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.544013 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_6" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_1" <= 1152.276855) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.689352) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.338084 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.140058 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.437096 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.500001 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.541693 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.472207 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_7" AS 
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
    CASE WHEN (model_input."X_3" <= 3.990845) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_0" <= 28.476501) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_1" <= 510.244720) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.339394 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.461173 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.544013 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.394900 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.339523 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_8" AS 
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
    CASE WHEN (model_input."X_2" <= 0.432316) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 503.852051) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_3" <= 7.108317) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.689352) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.335474 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.092935 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.508716 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974796 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.538197 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.486606 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.009971 AS "E"
  ) AS "Values"
 ),
"DT_output_9" AS 
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
    CASE WHEN (model_input."X_3" <= 3.990845) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 533.607544) THEN CASE WHEN (model_input."X_3" <= 8.022598) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 4.706348) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 1152.276855) THEN 13 ELSE 14 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.264424 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.982481 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.405395 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.252386 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.456398 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.518470 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.541693 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_10" AS 
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
    CASE WHEN (model_input."X_3" <= 4.126575) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 5.369574) THEN 3 ELSE CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 8.022598) THEN 11 ELSE 12 END END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.163731 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.931935 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.279629 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.243690 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.282643 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.252386 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.270144 AS "E"
  ) AS "Values"
 ),
"DT_output_11" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_1" <= 213.641251) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 0.474950) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 4.706348) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 0.625969) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 15.105726) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.369936 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.239281 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.500593 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.285142 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.534260 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.246466 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.544013 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_12" AS 
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
    CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 322.426361) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 11 ELSE 12 END ELSE 8 END END AS node_id
  FROM model_input
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.273868 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.150232 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.521139 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.255937 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.541290 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.561464 AS "E"
  ) AS "Values"
 ),
"DT_output_13" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_2" <= 0.474950) THEN 13 ELSE 14 END ELSE 6 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 15 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 17 ELSE 18 END END ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.262071 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.101008 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.487558 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974056 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.196222 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.258305 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.526384 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.548283 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_14" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_0" <= 40.385956) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 34.199562) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.341239 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.158528 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.471747 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.258305 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.494996 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.546334 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.469327 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
  ) AS "Values"
 ),
"DT_output_15" AS 
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
    CASE WHEN (model_input."X_0" <= 68.729706) THEN CASE WHEN (model_input."X_0" <= 15.521206) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_3" <= 9.781403) THEN CASE WHEN (model_input."X_0" <= 42.670399) THEN 11 ELSE 12 END ELSE 8 END ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.366669 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.438452 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.546334 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.366531 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.319453 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.335889 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.332255 AS "E"
  ) AS "Values"
 ),
"DT_output_16" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 15 ELSE 16 END END ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.292237 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.122800 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.461674 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.974796 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.270803 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.526384 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.548283 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.009971 AS "E"
  ) AS "Values"
 ),
"DT_output_17" AS 
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
    CASE WHEN (model_input."X_1" <= 674.408752) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN CASE WHEN (model_input."X_2" <= 0.194355) THEN 13 ELSE 14 END ELSE 10 END ELSE 6 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.454743) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.263860 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.073188 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.454531 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.033797 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.983590 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.478986 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.009232 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.007753 AS "E"
  ) AS "Values"
 ),
"DT_output_18" AS 
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
    CASE WHEN (model_input."X_1" <= 558.582397) THEN CASE WHEN (model_input."X_1" <= 448.473145) THEN CASE WHEN (model_input."X_3" <= 8.022598) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_0" <= 17.942905) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.422736 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.170841 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.506700 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.252386 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.546938 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.474511 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.552183 AS "E"
  ) AS "Values"
 ),
"DT_output_19" AS 
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
    CASE WHEN (model_input."X_3" <= 3.990845) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN CASE WHEN (model_input."X_3" <= 8.071378) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.361965 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.442916 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.316728 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.527041 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.551578 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.558370 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.561464 AS "E"
  ) AS "Values"
 ),
"DT_output_20" AS 
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
    CASE WHEN (model_input."X_2" <= 0.497932) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 580.013489) THEN CASE WHEN (model_input."X_3" <= 7.655873) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_3" <= 7.757465) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.337083 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.941099 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.469077 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.520559 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.472207 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_21" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 34.199562) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE 14 END ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.233373 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.110038 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.480042 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.958317 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.261759 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.529305 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.546334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.561464 AS "E"
  ) AS "Values"
 ),
"DT_output_22" AS 
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
    CASE WHEN (model_input."X_2" <= 0.442796) THEN CASE WHEN (model_input."X_2" <= 0.194355) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 572.300354) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 7 ELSE 8 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.306635 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.009417 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.455244 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.522496 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.552183 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.007753 AS "E"
  ) AS "Values"
 ),
"DT_output_23" AS 
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
    CASE WHEN (model_input."X_2" <= 0.245493) THEN CASE WHEN (model_input."X_1" <= 503.852051) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_0" <= 20.977118) THEN 3 ELSE CASE WHEN (model_input."X_2" <= 0.767325) THEN CASE WHEN (model_input."X_1" <= 510.244720) THEN 7 ELSE 8 END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.276684 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.330248 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.304558 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.339523 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.009971 AS "E"
  ) AS "Values"
 ),
"DT_output_24" AS 
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
    CASE WHEN (model_input."X_2" <= 0.432316) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 424.822449) THEN 3 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.343009 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.974796 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.465746 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.527041 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.551578 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.558370 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
  ) AS "Values"
 ),
"DT_output_25" AS 
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
    CASE WHEN (model_input."X_2" <= 0.389127) THEN CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_2" <= 0.196355) THEN 9 ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 424.822449) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 7.757465) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.409153 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.220629 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.503416 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.290848 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.526310 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.545647 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.555276 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_26" AS 
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
    CASE WHEN (model_input."X_2" <= 0.432316) THEN CASE WHEN (model_input."X_3" <= 9.337334) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN CASE WHEN (model_input."X_2" <= 0.194355) THEN 15 ELSE 16 END ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_0" <= 48.679047) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_1" <= 791.194702) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 7.046886) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.209752 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.018158 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.401346 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.967761 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.306980 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.495712 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.008493 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.007753 AS "E"
  ) AS "Values"
 ),
"DT_output_27" AS 
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
    CASE WHEN (model_input."X_3" <= 4.654071) THEN CASE WHEN (model_input."X_1" <= 321.144562) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 963.393921) THEN CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_0" <= 26.054802) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 7.704653) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 0.484897) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_0" <= 15.105726) THEN 15 ELSE 16 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.197272 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.317303 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.237463 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.315186 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.159742 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.337706 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_28" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_1" <= 195.097794) THEN 3 ELSE CASE WHEN (model_input."X_1" <= 478.877258) THEN CASE WHEN (model_input."X_2" <= 0.474950) THEN 11 ELSE 12 END ELSE 6 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 15.105726) THEN 15 ELSE 16 END END ELSE 10 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.337361 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.138310 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.479541 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.196222 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.258305 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.538456 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.549258 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.555276 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_29" AS 
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
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_3" <= 8.970608) THEN CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_3" <= 5.903250) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 314.713226) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 7 ELSE CASE WHEN (model_input."X_3" <= 9.448854) THEN CASE WHEN (model_input."X_1" <= 1152.276855) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.276281 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.129089 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.423473 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.040308 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.306651 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.975535 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.514691 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.541693 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.552182 AS "E"
  ) AS "Values"
 ),
"DT_output_30" AS 
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
    CASE WHEN (model_input."X_2" <= 0.497932) THEN CASE WHEN (model_input."X_2" <= 0.249491) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_1" <= 572.300354) THEN 3 ELSE CASE WHEN (model_input."X_1" <= 1331.461548) THEN CASE WHEN (model_input."X_2" <= 0.689352) THEN 9 ELSE 10 END ELSE 8 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.314950 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.958317 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.493266 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.514710 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.486606 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.552183 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.495246 AS "E"
  ) AS "Values"
 ),
"DT_output_31" AS 
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
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
