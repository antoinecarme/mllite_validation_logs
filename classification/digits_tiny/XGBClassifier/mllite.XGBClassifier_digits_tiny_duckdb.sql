WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "digits_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_4" < 16.000000) THEN CASE WHEN (t."X_27" < 8.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 2 AS nid,  -0.092606 AS "P_0", -0.089480 AS "P_1", -0.086426 AS "P_2", 0.060990 AS "P_3", -0.086426 AS "P_4", 0.325583 AS "P_5", -0.089480 AS "P_6", 0.046790 AS "P_7"
    UNION ALL
    SELECT 3 AS nid,  0.325583 AS "P_0", -0.089480 AS "P_1", 0.060990 AS "P_2", -0.086426 AS "P_3", 0.060990 AS "P_4", -0.092606 AS "P_5", -0.089480 AS "P_6", -0.092606 AS "P_7"
    UNION ALL
    SELECT 4 AS nid,  -0.100380 AS "P_0", 0.162420 AS "P_1", -0.094136 AS "P_2", -0.094136 AS "P_3", -0.094136 AS "P_4", -0.100380 AS "P_5", 0.162420 AS "P_6", 0.151450 AS "P_7"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
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
    CASE WHEN (t."X_27" < 3.000000) THEN 1 ELSE CASE WHEN (t."X_4" < 15.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.172027 AS "P_0", -0.084563 AS "P_1", -0.084697 AS "P_2", -0.086103 AS "P_3", -0.084697 AS "P_4", 0.287191 AS "P_5", -0.084563 AS "P_6", -0.091703 AS "P_7"
    UNION ALL
    SELECT 3 AS nid,  -0.099392 AS "P_0", 0.142318 AS "P_1", -0.090495 AS "P_2", -0.089226 AS "P_3", 0.048258 AS "P_4", -0.094958 AS "P_5", 0.019564 AS "P_6", 0.133227 AS "P_7"
    UNION ALL
    SELECT 4 AS nid,  0.037417 AS "P_0", -0.087358 AS "P_1", 0.065250 AS "P_2", 0.065257 AS "P_3", -0.084660 AS "P_4", -0.097308 AS "P_5", 0.059030 AS "P_6", 0.046225 AS "P_7"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
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
    CASE WHEN (t."X_36" < 13.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.238855 AS "P_0", -0.097224 AS "P_1", -0.090995 AS "P_2", -0.088760 AS "P_3", -0.090525 AS "P_4", -0.101006 AS "P_5", -0.096556 AS "P_6", 0.268808 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  -0.121409 AS "P_0", 0.068288 AS "P_1", -0.004441 AS "P_2", -0.007455 AS "P_3", -0.005433 AS "P_4", 0.126365 AS "P_5", 0.070544 AS "P_6", -0.125451 AS "P_7"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
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
    CASE WHEN (t."X_52" < 8.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.012054 AS "P_0", 0.030748 AS "P_1", -0.083459 AS "P_2", -0.084961 AS "P_3", -0.085492 AS "P_4", 0.017093 AS "P_5", -0.095734 AS "P_6", 0.220858 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.047304 AS "P_0", -0.023898 AS "P_1", -0.006312 AS "P_2", -0.004521 AS "P_3", -0.004140 AS "P_4", 0.036901 AS "P_5", 0.068345 AS "P_6", -0.120330 AS "P_7"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
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
    CASE WHEN (t."X_60" < 13.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.009852 AS "P_0", 0.041563 AS "P_1", 0.060758 AS "P_2", -0.086184 AS "P_3", -0.084938 AS "P_4", 0.187804 AS "P_5", -0.093981 AS "P_6", -0.096299 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.042547 AS "P_0", -0.027835 AS "P_1", -0.106145 AS "P_2", 0.003873 AS "P_3", 0.001801 AS "P_4", -0.119154 AS "P_5", 0.064214 AS "P_6", 0.104812 AS "P_7"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_29" < 11.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.132029 AS "P_0", 0.083474 AS "P_1", -0.100491 AS "P_2", 0.016196 AS "P_3", 0.010386 AS "P_4", -0.115346 AS "P_5", 0.071031 AS "P_6", -0.121529 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  -0.109195 AS "P_0", -0.099776 AS "P_1", 0.051252 AS "P_2", -0.088665 AS "P_3", -0.085455 AS "P_4", 0.155862 AS "P_5", -0.096514 AS "P_6", 0.186930 AS "P_7"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_37" < 9.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.110458 AS "P_0", 0.076593 AS "P_1", 0.021940 AS "P_2", 0.015680 AS "P_3", -0.101860 AS "P_4", -0.113223 AS "P_5", 0.065437 AS "P_6", -0.115029 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  -0.103998 AS "P_0", -0.096627 AS "P_1", -0.085682 AS "P_2", -0.083874 AS "P_3", 0.063547 AS "P_4", 0.141720 AS "P_5", -0.093624 AS "P_6", 0.153598 AS "P_7"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_38" < 7.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  -0.115642 AS "P_0", 0.065834 AS "P_1", 0.026965 AS "P_2", 0.022693 AS "P_3", -0.096178 AS "P_4", -0.028575 AS "P_5", 0.063410 AS "P_6", 0.039701 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.147100 AS "P_0", -0.090971 AS "P_1", -0.084414 AS "P_2", -0.083844 AS "P_3", 0.056853 AS "P_4", 0.063741 AS "P_5", -0.092341 AS "P_6", -0.006820 AS "P_7"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_50" < 12.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  -0.111718 AS "P_0", 0.077997 AS "P_1", -0.093751 AS "P_2", 0.026653 AS "P_3", 0.030214 AS "P_4", 0.094492 AS "P_5", -0.020955 AS "P_6", -0.034642 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.127399 AS "P_0", -0.098484 AS "P_1", 0.058987 AS "P_2", -0.082912 AS "P_3", -0.083248 AS "P_4", -0.101168 AS "P_5", 0.024975 AS "P_6", 0.074418 AS "P_7"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_36" < 15.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.085254 AS "P_0", -0.004933 AS "P_1", -0.089487 AS "P_2", 0.039069 AS "P_3", 0.032378 AS "P_4", -0.109953 AS "P_5", -0.109076 AS "P_6", 0.093759 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  -0.099057 AS "P_0", 0.006710 AS "P_1", 0.054924 AS "P_2", -0.086433 AS "P_3", -0.081453 AS "P_4", 0.120420 AS "P_5", 0.116098 AS "P_6", -0.099876 AS "P_7"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_18" < 14.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  -0.106749 AS "P_0", 0.092205 AS "P_1", 0.044258 AS "P_2", 0.042124 AS "P_3", 0.044717 AS "P_4", 0.031720 AS "P_5", -0.112425 AS "P_6", -0.023533 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.100671 AS "P_0", -0.102587 AS "P_1", -0.082805 AS "P_2", -0.084269 AS "P_3", -0.084015 AS "P_4", -0.014767 AS "P_5", 0.122020 AS "P_6", 0.047318 AS "P_7"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_54" < 3.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  -0.017704 AS "P_0", -0.005935 AS "P_1", -0.084591 AS "P_2", 0.044664 AS "P_3", 0.044071 AS "P_4", 0.092056 AS "P_5", 0.004620 AS "P_6", -0.105992 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.031672 AS "P_0", 0.008987 AS "P_1", 0.053135 AS "P_2", -0.083257 AS "P_3", -0.081598 AS "P_4", -0.101717 AS "P_5", -0.002298 AS "P_6", 0.104874 AS "P_7"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < 9.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  0.054101 AS "P_0", 0.003072 AS "P_1", -0.081736 AS "P_2", -0.083666 AS "P_3", -0.081705 AS "P_4", 0.092176 AS "P_5", 0.101690 AS "P_6", -0.100448 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  -0.035982 AS "P_0", 0.000993 AS "P_1", 0.051086 AS "P_2", 0.050367 AS "P_3", 0.048782 AS "P_4", -0.102960 AS "P_5", -0.105168 AS "P_6", 0.088752 AS "P_7"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_19" < 5.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 1 AS nid,  -0.026098 AS "P_0", -0.102219 AS "P_1", -0.081891 AS "P_2", 0.051117 AS "P_3", -0.083056 AS "P_4", 0.075059 AS "P_5", 0.009287 AS "P_6", 0.078818 AS "P_7"
    UNION ALL
    SELECT 2 AS nid,  0.041352 AS "P_0", 0.099820 AS "P_1", 0.056786 AS "P_2", -0.082574 AS "P_3", 0.057464 AS "P_4", -0.096356 AS "P_5", -0.005593 AS "P_6", -0.098025 AS "P_7"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  0.385267 AS "P_0", 0.117462 AS "P_1", -0.342252 AS "P_2", -0.306236 AS "P_3", -0.321858 AS "P_4", 0.324400 AS "P_5", 0.133348 AS "P_6", 0.389447 AS "P_7"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  0.770535 AS "P_0", 0.234924 AS "P_1", -0.684505 AS "P_2", -0.612471 AS "P_3", -0.643717 AS "P_4", 0.648801 AS "P_5", 0.266697 AS "P_6", 0.778893 AS "P_7"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  1.541070 AS "P_0", 0.469849 AS "P_1", -1.369009 AS "P_2", -1.224942 AS "P_3", -1.287434 AS "P_4", 1.297602 AS "P_5", 0.533393 AS "P_6", 1.557786 AS "P_7"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  3.082139 AS "P_0", 0.939698 AS "P_1", -2.738019 AS "P_2", -2.449885 AS "P_3", -2.574868 AS "P_4", 2.595204 AS "P_5", 1.066787 AS "P_6", 3.115572 AS "P_7"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  6.164279 AS "P_0", 1.879395 AS "P_1", -5.476037 AS "P_2", -4.899770 AS "P_3", -5.149736 AS "P_4", 5.190407 AS "P_5", 2.133573 AS "P_6", 6.231145 AS "P_7"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  12.328558 AS "P_0", 3.758790 AS "P_1", -10.952074 AS "P_2", -9.799541 AS "P_3", -10.299473 AS "P_4", 10.380815 AS "P_5", 4.267146 AS "P_6", 12.462289 AS "P_7"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  24.657114 AS "P_0", 7.517580 AS "P_1", -21.904148 AS "P_2", -19.599079 AS "P_3", -20.598946 AS "P_4", 20.761631 AS "P_5", 8.534292 AS "P_6", 24.924580 AS "P_7"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  49.314224 AS "P_0", 15.035160 AS "P_1", -43.808296 AS "P_2", -39.198158 AS "P_3", -41.197887 AS "P_4", 41.523262 AS "P_5", 17.068586 AS "P_6", 49.849159 AS "P_7"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  98.628448 AS "P_0", 30.070318 AS "P_1", -87.616585 AS "P_2", -78.396317 AS "P_3", -82.395775 AS "P_4", 83.046524 AS "P_5", 34.137173 AS "P_6", 99.698318 AS "P_7"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  197.256897 AS "P_0", 60.140636 AS "P_1", -175.233200 AS "P_2", -156.792648 AS "P_3", -164.791534 AS "P_4", 166.093033 AS "P_5", 68.274345 AS "P_6", 199.396652 AS "P_7"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  394.513794 AS "P_0", 120.281273 AS "P_1", -350.466370 AS "P_2", -313.585297 AS "P_3", -329.583099 AS "P_4", 332.186035 AS "P_5", 136.548691 AS "P_6", 398.793304 AS "P_7"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  789.027527 AS "P_0", 240.562546 AS "P_1", -700.932739 AS "P_2", -627.170593 AS "P_3", -659.166199 AS "P_4", 664.372131 AS "P_5", 273.097382 AS "P_6", 797.586670 AS "P_7"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  1578.055054 AS "P_0", 481.125092 AS "P_1", -1401.865479 AS "P_2", -1254.341187 AS "P_3", -1318.332520 AS "P_4", 1328.744263 AS "P_5", 546.194763 AS "P_6", 1595.173218 AS "P_7"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  3156.110107 AS "P_0", 962.250305 AS "P_1", -2803.730957 AS "P_2", -2508.682373 AS "P_3", -2636.664551 AS "P_4", 2657.488525 AS "P_5", 1092.389648 AS "P_6", 3190.346191 AS "P_7"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  6312.220215 AS "P_0", 1924.500732 AS "P_1", -5607.462402 AS "P_2", -5017.364258 AS "P_3", -5273.329590 AS "P_4", 5314.977051 AS "P_5", 2184.779297 AS "P_6", 6380.691895 AS "P_7"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  12624.441406 AS "P_0", 3849.001465 AS "P_1", -11214.923828 AS "P_2", -10034.728516 AS "P_3", -10546.659180 AS "P_4", 10629.953125 AS "P_5", 4369.558594 AS "P_6", 12761.384766 AS "P_7"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  25248.882812 AS "P_0", 7698.002930 AS "P_1", -22429.847656 AS "P_2", -20069.458984 AS "P_3", -21093.316406 AS "P_4", 21259.906250 AS "P_5", 8739.117188 AS "P_6", 25522.767578 AS "P_7"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    0 AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7"
  FROM (
    SELECT 0 AS nid,  50497.761719 AS "P_0", 15396.002930 AS "P_1", -44859.695312 AS "P_2", -40138.914062 AS "P_3", -42186.632812 AS "P_4", 42519.812500 AS "P_5", 17478.232422 AS "P_6", 51045.535156 AS "P_7"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3", scu."P_4" AS "P_4", scu."P_5" AS "P_5", scu."P_6" AS "P_6", scu."P_7" AS "P_7"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.187500 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.125000 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.062500 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.062500 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   0.062500 + SUM(t."P_4") AS "Score_4",
   CAST(NULL AS FLOAT) AS "Proba_4",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   0.187500 + SUM(t."P_5") AS "Score_5",
   CAST(NULL AS FLOAT) AS "Proba_5",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   0.125000 + SUM(t."P_6") AS "Score_6",
   CAST(NULL AS FLOAT) AS "Proba_6",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   0.187500 + SUM(t."P_7") AS "Score_7",
   CAST(NULL AS FLOAT) AS "Proba_7",
   CAST(NULL AS FLOAT) AS "LogProba_7"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
soft_max_orig_cte AS 
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
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    t1."Proba_3" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_3" AS "Exp_Score_3",
    t1."Proba_4" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    t1."Exp_Score_4" AS "Exp_Score_4",
    t1."Proba_5" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    t1."Exp_Score_5" AS "Exp_Score_5",
    t1."Proba_6" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    t1."Exp_Score_6" AS "Exp_Score_6",
    t1."Proba_7" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    t1."Exp_Score_7" AS "Exp_Score_7",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        t."Proba_3" AS "Proba_3",
        t."Score_3" AS "Score_3",
        t."Proba_4" AS "Proba_4",
        t."Score_4" AS "Score_4",
        t."Proba_5" AS "Proba_5",
        t."Score_5" AS "Score_5",
        t."Proba_6" AS "Proba_6",
        t."Score_6" AS "Score_6",
        t."Proba_7" AS "Proba_7",
        t."Score_7" AS "Score_7",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
    CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
    CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
    CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
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
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Proba_4" AS "Proba_4",
     t."Score_4" AS "Score_4",
     t."Proba_5" AS "Proba_5",
     t."Score_5" AS "Score_5",
     t."Proba_6" AS "Proba_6",
     t."Score_6" AS "Score_6",
     t."Proba_7" AS "Proba_7",
     t."Score_7" AS "Score_7",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7" ) AS argmax_class_idx
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
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."Score_4" AS "Score_4",
  arg_max_cte."Proba_4" AS "Proba_4",
  CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN LN( arg_max_cte."Proba_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
  arg_max_cte."Score_5" AS "Score_5",
  arg_max_cte."Proba_5" AS "Proba_5",
  CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN LN( arg_max_cte."Proba_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
  arg_max_cte."Score_6" AS "Score_6",
  arg_max_cte."Proba_6" AS "Proba_6",
  CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN LN( arg_max_cte."Proba_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
  arg_max_cte."Score_7" AS "Score_7",
  arg_max_cte."Proba_7" AS "Proba_7",
  CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN LN( arg_max_cte."Proba_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte