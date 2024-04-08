WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "digits_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_36" < 8.000000) THEN CASE WHEN (t."X_27" < 6.000000) THEN 3 ELSE CASE WHEN (t."X_29" < 11.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_53" < 1.000000) THEN 5 ELSE CASE WHEN (t."X_28" < 6.000000) THEN 9 ELSE CASE WHEN (t."X_26" < 16.000000) THEN CASE WHEN (t."X_61" < 9.000000) THEN 13 ELSE 14 END ELSE 12 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 3 AS nid,  0.781833 AS "P_0", -0.085502 AS "P_1", -0.084780 AS "P_2", -0.084062 AS "P_3", -0.086955 AS "P_4", -0.088422 AS "P_5", -0.086955 AS "P_6", -0.086227 AS "P_7", -0.088422 AS "P_8", -0.087687 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  -0.106836 AS "P_0", 0.002395 AS "P_1", -0.105407 AS "P_2", -0.104695 AS "P_3", -0.000956 AS "P_4", -0.004293 AS "P_5", -0.107553 AS "P_6", 0.538483 AS "P_7", -0.004293 AS "P_8", -0.108273 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.086227 AS "P_0", -0.085502 AS "P_1", -0.084780 AS "P_2", -0.084062 AS "P_3", 0.056681 AS "P_4", 0.194709 AS "P_5", -0.086955 AS "P_6", -0.086227 AS "P_7", 0.194709 AS "P_8", 0.054913 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.092607 AS "P_0", -0.091877 AS "P_1", -0.091150 AS "P_2", -0.090426 AS "P_3", -0.093339 AS "P_4", -0.094813 AS "P_5", -0.093339 AS "P_6", -0.092607 AS "P_7", -0.094813 AS "P_8", 0.823855 AS "P_9"
    UNION ALL
    SELECT 9 AS nid,  -0.106836 AS "P_0", -0.106120 AS "P_1", 0.004076 AS "P_2", -0.104695 AS "P_3", 0.105641 AS "P_4", -0.004293 AS "P_5", 0.532028 AS "P_6", -0.106836 AS "P_7", -0.108995 AS "P_8", -0.108273 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  -0.098048 AS "P_0", 0.027075 AS "P_1", -0.096594 AS "P_2", -0.095871 AS "P_3", 0.145972 AS "P_4", 0.501627 AS "P_5", -0.098779 AS "P_6", -0.098048 AS "P_7", -0.100248 AS "P_8", -0.099512 AS "P_9"
    UNION ALL
    SELECT 13 AS nid,  -0.092607 AS "P_0", -0.091877 AS "P_1", 0.179351 AS "P_2", -0.090426 AS "P_3", -0.093339 AS "P_4", -0.094813 AS "P_5", -0.093339 AS "P_6", -0.092607 AS "P_7", 0.555753 AS "P_8", -0.094075 AS "P_9"
    UNION ALL
    SELECT 14 AS nid,  -0.106836 AS "P_0", 0.219425 AS "P_1", 0.004076 AS "P_2", 0.226674 AS "P_3", -0.000956 AS "P_4", -0.108995 AS "P_5", -0.000956 AS "P_6", -0.106836 AS "P_7", -0.004293 AS "P_8", -0.108273 AS "P_9"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_21" < 1.000000) THEN CASE WHEN (t."X_5" < 6.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_13" < 6.000000) THEN 5 ELSE CASE WHEN (t."X_53" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_29" < 10.000000) THEN CASE WHEN (t."X_35" < 8.000000) THEN 11 ELSE 12 END ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 3 AS nid,  -0.092600 AS "P_0", 0.148585 AS "P_1", 0.031126 AS "P_2", -0.097066 AS "P_3", -0.100979 AS "P_4", -0.098986 AS "P_5", 0.311529 AS "P_6", -0.092600 AS "P_7", 0.024610 AS "P_8", -0.094872 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.101505 AS "P_0", -0.103665 AS "P_1", -0.101695 AS "P_2", -0.099502 AS "P_3", -0.009890 AS "P_4", 0.608429 AS "P_5", -0.013548 AS "P_6", -0.105826 AS "P_7", -0.107075 AS "P_8", -0.104281 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  -0.009355 AS "P_0", -0.010102 AS "P_1", -0.106895 AS "P_2", -0.002983 AS "P_3", 0.486032 AS "P_4", -0.116456 AS "P_5", -0.009658 AS "P_6", -0.112694 AS "P_7", -0.017611 AS "P_8", -0.107118 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.097023 AS "P_0", -0.100238 AS "P_1", -0.095677 AS "P_2", -0.095006 AS "P_3", -0.102287 AS "P_4", -0.104469 AS "P_5", -0.097699 AS "P_6", 0.427416 AS "P_7", 0.120991 AS "P_8", 0.004403 AS "P_9"
    UNION ALL
    SELECT 10 AS nid,  -0.008174 AS "P_0", 0.002347 AS "P_1", 0.002477 AS "P_2", -0.104266 AS "P_3", -0.107328 AS "P_4", -0.108450 AS "P_5", -0.109616 AS "P_6", -0.104581 AS "P_7", -0.012797 AS "P_8", 0.397309 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  0.284908 AS "P_0", -0.094690 AS "P_1", 0.160146 AS "P_2", 0.038664 AS "P_3", -0.095319 AS "P_4", 0.023137 AS "P_5", -0.093730 AS "P_6", -0.092399 AS "P_7", -0.105576 AS "P_8", -0.093758 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  -0.087163 AS "P_0", 0.041908 AS "P_1", -0.093604 AS "P_2", 0.046951 AS "P_3", -0.092524 AS "P_4", -0.095448 AS "P_5", 0.035733 AS "P_6", -0.087163 AS "P_7", 0.358488 AS "P_8", -0.088523 AS "P_9"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_27" < 16.000000) THEN CASE WHEN (t."X_58" < 1.000000) THEN 3 ELSE CASE WHEN (t."X_28" < 1.000000) THEN 5 ELSE CASE WHEN (t."X_26" < 15.000000) THEN CASE WHEN (t."X_35" < 14.000000) THEN CASE WHEN (t."X_43" < 2.000000) THEN 11 ELSE 12 END ELSE 10 END ELSE 8 END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.106370 AS "P_0", 0.351535 AS "P_1", -0.107981 AS "P_2", -0.010530 AS "P_3", -0.116125 AS "P_4", 0.041513 AS "P_5", -0.013837 AS "P_6", -0.109176 AS "P_7", 0.057242 AS "P_8", -0.026370 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.108632 AS "P_0", -0.112159 AS "P_1", -0.011414 AS "P_2", -0.108079 AS "P_3", 0.410713 AS "P_4", -0.123172 AS "P_5", 0.035912 AS "P_6", -0.023393 AS "P_7", 0.046089 AS "P_8", -0.112592 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  0.353482 AS "P_0", -0.094311 AS "P_1", -0.098630 AS "P_2", -0.092506 AS "P_3", -0.099716 AS "P_4", 0.013571 AS "P_5", 0.096450 AS "P_6", -0.091290 AS "P_7", -0.095220 AS "P_8", -0.096018 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.089549 AS "P_0", -0.091010 AS "P_1", -0.089183 AS "P_2", -0.086522 AS "P_3", -0.098920 AS "P_4", 0.388932 AS "P_5", 0.128400 AS "P_6", -0.091925 AS "P_7", -0.096538 AS "P_8", -0.089813 AS "P_9"
    UNION ALL
    SELECT 10 AS nid,  -0.087945 AS "P_0", -0.097146 AS "P_1", -0.091256 AS "P_2", 0.037818 AS "P_3", -0.096003 AS "P_4", -0.092689 AS "P_5", -0.094926 AS "P_6", 0.091052 AS "P_7", 0.387920 AS "P_8", -0.091258 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  -0.083952 AS "P_0", -0.086191 AS "P_1", -0.083051 AS "P_2", 0.067688 AS "P_3", -0.088486 AS "P_4", -0.084286 AS "P_5", -0.082259 AS "P_6", -0.084757 AS "P_7", -0.090240 AS "P_8", 0.370427 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  -0.087862 AS "P_0", -0.088164 AS "P_1", 0.319528 AS "P_2", -0.083725 AS "P_3", -0.084630 AS "P_4", -0.086788 AS "P_5", -0.086446 AS "P_6", 0.217223 AS "P_7", -0.101984 AS "P_8", 0.022832 AS "P_9"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_51" < 16.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN 3 ELSE CASE WHEN (t."X_21" < 4.000000) THEN CASE WHEN (t."X_5" < 6.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_38" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_29" < 14.000000) THEN 11 ELSE 12 END END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.088617 AS "P_0", -0.090274 AS "P_1", 0.354026 AS "P_2", -0.086910 AS "P_3", -0.099404 AS "P_4", -0.091905 AS "P_5", 0.108412 AS "P_6", 0.016865 AS "P_7", -0.010393 AS "P_8", -0.090157 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.096956 AS "P_0", 0.084952 AS "P_1", -0.098930 AS "P_2", -0.102682 AS "P_3", 0.315962 AS "P_4", -0.112015 AS "P_5", -0.011782 AS "P_6", -0.103153 AS "P_7", 0.052216 AS "P_8", -0.101470 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.089989 AS "P_0", 0.223531 AS "P_1", -0.089508 AS "P_2", 0.040393 AS "P_3", -0.098512 AS "P_4", -0.095694 AS "P_5", 0.165485 AS "P_6", -0.088891 AS "P_7", 0.018129 AS "P_8", -0.089614 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.099521 AS "P_0", -0.104817 AS "P_1", -0.096489 AS "P_2", 0.025966 AS "P_3", -0.108783 AS "P_4", 0.353085 AS "P_5", -0.013832 AS "P_6", -0.097349 AS "P_7", -0.101004 AS "P_8", -0.096796 AS "P_9"
    UNION ALL
    SELECT 9 AS nid,  -0.084216 AS "P_0", -0.094029 AS "P_1", -0.091364 AS "P_2", 0.038893 AS "P_3", -0.093482 AS "P_4", -0.087832 AS "P_5", -0.088343 AS "P_6", -0.003472 AS "P_7", 0.316137 AS "P_8", 0.023815 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  0.242997 AS "P_0", -0.086834 AS "P_1", -0.093821 AS "P_2", -0.086283 AS "P_3", -0.091143 AS "P_4", -0.093612 AS "P_5", -0.090977 AS "P_6", 0.242124 AS "P_7", -0.098924 AS "P_8", -0.092513 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  0.020117 AS "P_0", -0.090339 AS "P_1", -0.088317 AS "P_2", -0.086695 AS "P_3", 0.020126 AS "P_4", -0.090447 AS "P_5", -0.087488 AS "P_6", -0.089009 AS "P_7", -0.091575 AS "P_8", 0.287488 AS "P_9"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_34" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_36" < 3.000000) THEN 3 ELSE CASE WHEN (t."X_42" < 9.000000) THEN CASE WHEN (t."X_17" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_25" < 4.000000) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_10" < 8.000000) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.094586 AS "P_0", -0.089595 AS "P_1", 0.285069 AS "P_2", -0.088941 AS "P_3", -0.095822 AS "P_4", 0.009768 AS "P_5", -0.100434 AS "P_6", 0.001783 AS "P_7", -0.101555 AS "P_8", 0.129265 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  0.238593 AS "P_0", -0.085801 AS "P_1", -0.088018 AS "P_2", -0.087535 AS "P_3", 0.005370 AS "P_4", 0.056060 AS "P_5", -0.094635 AS "P_6", -0.091946 AS "P_7", -0.097746 AS "P_8", 0.016204 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.090312 AS "P_0", 0.340278 AS "P_1", -0.094287 AS "P_2", 0.018301 AS "P_3", -0.099765 AS "P_4", -0.097167 AS "P_5", -0.103789 AS "P_6", 0.195170 AS "P_7", -0.123850 AS "P_8", -0.095834 AS "P_9"
    UNION ALL
    SELECT 9 AS nid,  -0.085583 AS "P_0", -0.101201 AS "P_1", -0.092991 AS "P_2", -0.086758 AS "P_3", 0.234880 AS "P_4", -0.096874 AS "P_5", 0.237419 AS "P_6", -0.088033 AS "P_7", -0.100947 AS "P_8", -0.081999 AS "P_9"
    UNION ALL
    SELECT 10 AS nid,  -0.084329 AS "P_0", -0.098178 AS "P_1", -0.087498 AS "P_2", -0.091343 AS "P_3", -0.098838 AS "P_4", -0.029363 AS "P_5", 0.185560 AS "P_6", -0.088742 AS "P_7", 0.277500 AS "P_8", -0.086217 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  -0.082428 AS "P_0", -0.094455 AS "P_1", -0.083028 AS "P_2", 0.192693 AS "P_3", -0.086958 AS "P_4", 0.067144 AS "P_5", -0.084644 AS "P_6", 0.001666 AS "P_7", 0.033922 AS "P_8", 0.083432 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  -0.081851 AS "P_0", -0.086256 AS "P_1", -0.086597 AS "P_2", -0.081066 AS "P_3", 0.017453 AS "P_4", 0.158638 AS "P_5", -0.097817 AS "P_6", -0.084154 AS "P_7", 0.220289 AS "P_8", -0.005389 AS "P_9"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_4" < 16.000000) THEN CASE WHEN (t."X_46" < 9.000000) THEN CASE WHEN (t."X_35" < 11.000000) THEN CASE WHEN (t."X_36" < 12.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.106779 AS "P_0", -0.042860 AS "P_1", -0.110461 AS "P_2", 0.151763 AS "P_3", 0.003093 AS "P_4", -0.009927 AS "P_5", -0.039036 AS "P_6", 0.191083 AS "P_7", -0.064999 AS "P_8", -0.053510 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.091601 AS "P_0", -0.097892 AS "P_1", -0.095584 AS "P_2", -0.089303 AS "P_3", -0.110085 AS "P_4", -0.022285 AS "P_5", 0.294344 AS "P_6", -0.089072 AS "P_7", -0.098381 AS "P_8", 0.168305 AS "P_9"
    UNION ALL
    SELECT 6 AS nid,  -0.099643 AS "P_0", 0.039077 AS "P_1", -0.103661 AS "P_2", -0.108601 AS "P_3", 0.027656 AS "P_4", 0.015127 AS "P_5", -0.052587 AS "P_6", -0.116312 AS "P_7", 0.264926 AS "P_8", -0.104162 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  0.176033 AS "P_0", 0.016625 AS "P_1", -0.094311 AS "P_2", -0.092101 AS "P_3", -0.008651 AS "P_4", 0.045556 AS "P_5", -0.095376 AS "P_6", -0.093826 AS "P_7", -0.099028 AS "P_8", 0.046984 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.081467 AS "P_0", 0.016397 AS "P_1", 0.261926 AS "P_2", -0.085008 AS "P_3", 0.095206 AS "P_4", 0.067500 AS "P_5", -0.108428 AS "P_6", -0.094842 AS "P_7", -0.097819 AS "P_8", -0.089365 AS "P_9"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_27" < 16.000000) THEN CASE WHEN (t."X_58" < 1.000000) THEN 3 ELSE CASE WHEN (t."X_21" < 4.000000) THEN 5 ELSE CASE WHEN (t."X_26" < 5.000000) THEN 7 ELSE 8 END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.088477 AS "P_0", 0.208293 AS "P_1", -0.090634 AS "P_2", -0.001349 AS "P_3", -0.111321 AS "P_4", 0.023706 AS "P_5", -0.006189 AS "P_6", -0.098985 AS "P_7", 0.029459 AS "P_8", -0.020225 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.092916 AS "P_0", -0.098564 AS "P_1", -0.005562 AS "P_2", -0.091945 AS "P_3", 0.215946 AS "P_4", -0.113644 AS "P_5", 0.019441 AS "P_6", -0.010813 AS "P_7", 0.033462 AS "P_8", -0.100248 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  -0.097542 AS "P_0", -0.104065 AS "P_1", 0.001431 AS "P_2", 0.014847 AS "P_3", -0.104456 AS "P_4", 0.203360 AS "P_5", 0.067768 AS "P_6", -0.094200 AS "P_7", -0.022474 AS "P_8", -0.099527 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.080320 AS "P_0", -0.095176 AS "P_1", 0.011450 AS "P_2", 0.030706 AS "P_3", -0.086170 AS "P_4", -0.083878 AS "P_5", -0.084870 AS "P_6", 0.188120 AS "P_7", 0.062412 AS "P_8", -0.083749 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  0.137851 AS "P_0", -0.095720 AS "P_1", -0.023095 AS "P_2", -0.097929 AS "P_3", -0.102900 AS "P_4", -0.108600 AS "P_5", -0.007633 AS "P_6", -0.110603 AS "P_7", -0.017486 AS "P_8", 0.163848 AS "P_9"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_45" < 2.000000) THEN 1 ELSE CASE WHEN (t."X_29" < 4.000000) THEN 3 ELSE CASE WHEN (t."X_10" < 10.000000) THEN 5 ELSE CASE WHEN (t."X_20" < 10.000000) THEN 7 ELSE 8 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.086879 AS "P_0", 0.047349 AS "P_1", 0.195324 AS "P_2", -0.095644 AS "P_3", -0.107514 AS "P_4", -0.025656 AS "P_5", -0.002468 AS "P_6", 0.017255 AS "P_7", 0.040233 AS "P_8", -0.096422 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.087701 AS "P_0", -0.026997 AS "P_1", -0.096077 AS "P_2", -0.096900 AS "P_3", -0.106703 AS "P_4", 0.059698 AS "P_5", 0.199025 AS "P_6", -0.089240 AS "P_7", 0.070093 AS "P_8", -0.091601 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  -0.085987 AS "P_0", 0.089745 AS "P_1", -0.088616 AS "P_2", -0.089673 AS "P_3", 0.218286 AS "P_4", -0.038267 AS "P_5", -0.110269 AS "P_6", 0.059114 AS "P_7", -0.109354 AS "P_8", -0.089187 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  0.119711 AS "P_0", -0.094838 AS "P_1", -0.100564 AS "P_2", -0.097138 AS "P_3", -0.106282 AS "P_4", 0.046649 AS "P_5", -0.103281 AS "P_6", 0.023380 AS "P_7", 0.041800 AS "P_8", 0.075305 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.082486 AS "P_0", -0.095348 AS "P_1", -0.084810 AS "P_2", 0.251649 AS "P_3", -0.084779 AS "P_4", -0.000759 AS "P_5", -0.089100 AS "P_6", -0.087827 AS "P_7", 0.028451 AS "P_8", 0.114865 AS "P_9"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_53" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_10" < 11.000000) THEN 3 ELSE CASE WHEN (t."X_26" < 14.000000) THEN 5 ELSE 6 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.082496 AS "P_0", -0.002880 AS "P_1", -0.091696 AS "P_2", -0.088480 AS "P_3", -0.025070 AS "P_4", -0.013225 AS "P_5", -0.089409 AS "P_6", 0.153840 AS "P_7", 0.050717 AS "P_8", -0.016983 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.101212 AS "P_0", 0.057295 AS "P_1", 0.029444 AS "P_2", -0.105521 AS "P_3", 0.094300 AS "P_4", -0.077177 AS "P_5", 0.156009 AS "P_6", -0.106777 AS "P_7", -0.074812 AS "P_8", -0.106179 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  0.066265 AS "P_0", -0.033607 AS "P_1", 0.038723 AS "P_2", 0.141137 AS "P_3", -0.101040 AS "P_4", -0.110696 AS "P_5", -0.108144 AS "P_6", -0.105020 AS "P_7", 0.018142 AS "P_8", 0.077463 AS "P_9"
    UNION ALL
    SELECT 6 AS nid,  0.009655 AS "P_0", -0.095048 AS "P_1", -0.091422 AS "P_2", -0.094062 AS "P_3", -0.097891 AS "P_4", 0.178247 AS "P_5", -0.109103 AS "P_6", -0.088674 AS "P_7", 0.112277 AS "P_8", 0.019437 AS "P_9"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_19" < 13.000000) THEN CASE WHEN (t."X_4" < 16.000000) THEN CASE WHEN (t."X_35" < 11.000000) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.090435 AS "P_0", 0.151459 AS "P_1", -0.101599 AS "P_2", -0.100361 AS "P_3", 0.102946 AS "P_4", 0.011153 AS "P_5", 0.028726 AS "P_6", -0.104753 AS "P_7", -0.052835 AS "P_8", -0.093893 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.088539 AS "P_0", -0.102570 AS "P_1", -0.092073 AS "P_2", 0.156298 AS "P_3", -0.100479 AS "P_4", 0.005563 AS "P_5", 0.002364 AS "P_6", 0.151243 AS "P_7", -0.049249 AS "P_8", -0.041162 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  0.086190 AS "P_0", -0.098615 AS "P_1", 0.129861 AS "P_2", -0.098985 AS "P_3", -0.100567 AS "P_4", 0.028212 AS "P_5", -0.107325 AS "P_6", -0.100026 AS "P_7", -0.111596 AS "P_8", 0.106996 AS "P_9"
    UNION ALL
    SELECT 6 AS nid,  -0.080507 AS "P_0", -0.100014 AS "P_1", -0.087629 AS "P_2", -0.087408 AS "P_3", -0.023971 AS "P_4", 0.004288 AS "P_5", 0.065841 AS "P_6", -0.098133 AS "P_7", 0.197728 AS "P_8", -0.087520 AS "P_9"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_21" < 4.000000) THEN CASE WHEN (t."X_17" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_27" < 12.000000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 3 AS nid,  -0.079169 AS "P_0", 0.076302 AS "P_1", -0.089892 AS "P_2", -0.084303 AS "P_3", 0.035351 AS "P_4", 0.007436 AS "P_5", 0.142871 AS "P_6", -0.082896 AS "P_7", -0.110361 AS "P_8", -0.080331 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.079273 AS "P_0", -0.090119 AS "P_1", 0.020690 AS "P_2", 0.110234 AS "P_3", -0.080034 AS "P_4", 0.162410 AS "P_5", -0.100538 AS "P_6", -0.079995 AS "P_7", -0.012786 AS "P_8", -0.089729 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  0.086781 AS "P_0", -0.105332 AS "P_1", 0.055967 AS "P_2", -0.017925 AS "P_3", 0.028686 AS "P_4", -0.113191 AS "P_5", -0.036112 AS "P_6", 0.095613 AS "P_7", -0.075048 AS "P_8", -0.030406 AS "P_9"
    UNION ALL
    SELECT 6 AS nid,  -0.096443 AS "P_0", 0.044912 AS "P_1", -0.091879 AS "P_2", -0.097186 AS "P_3", -0.041009 AS "P_4", -0.102266 AS "P_5", -0.101990 AS "P_6", -0.103236 AS "P_7", 0.180638 AS "P_8", 0.119060 AS "P_9"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_36" < 8.000000) THEN 1 ELSE CASE WHEN (t."X_42" < 9.000000) THEN CASE WHEN (t."X_10" < 13.000000) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  0.080181 AS "P_0", -0.092432 AS "P_1", -0.094235 AS "P_2", -0.088663 AS "P_3", -0.015944 AS "P_4", -0.017799 AS "P_5", -0.094908 AS "P_6", -0.089480 AS "P_7", 0.034301 AS "P_8", 0.116579 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.080892 AS "P_0", -0.115570 AS "P_1", -0.003360 AS "P_2", -0.088709 AS "P_3", 0.063143 AS "P_4", -0.049670 AS "P_5", 0.133039 AS "P_6", -0.090820 AS "P_7", 0.042109 AS "P_8", -0.087989 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  -0.083141 AS "P_0", 0.188021 AS "P_1", -0.014453 AS "P_2", -0.090316 AS "P_3", -0.038482 AS "P_4", -0.098051 AS "P_5", -0.102014 AS "P_6", 0.067962 AS "P_7", 0.060747 AS "P_8", -0.095312 AS "P_9"
    UNION ALL
    SELECT 6 AS nid,  -0.080806 AS "P_0", -0.094174 AS "P_1", 0.055129 AS "P_2", 0.140213 AS "P_3", -0.081845 AS "P_4", 0.135301 AS "P_5", -0.094448 AS "P_6", 0.018605 AS "P_7", -0.112195 AS "P_8", -0.089348 AS "P_9"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_33" < 4.000000) THEN CASE WHEN (t."X_36" < 11.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  0.093379 AS "P_0", 0.056944 AS "P_1", -0.097434 AS "P_2", -0.090925 AS "P_3", 0.105933 AS "P_4", -0.027440 AS "P_5", 0.054815 AS "P_6", -0.100957 AS "P_7", -0.119560 AS "P_8", -0.106748 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.099125 AS "P_0", -0.032249 AS "P_1", -0.085747 AS "P_2", 0.009154 AS "P_3", -0.094861 AS "P_4", 0.028438 AS "P_5", -0.000421 AS "P_6", -0.079914 AS "P_7", 0.023753 AS "P_8", 0.134872 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.099480 AS "P_0", -0.053732 AS "P_1", 0.074921 AS "P_2", 0.014179 AS "P_3", -0.117609 AS "P_4", 0.031677 AS "P_5", -0.066826 AS "P_6", 0.063078 AS "P_7", 0.087070 AS "P_8", -0.110233 AS "P_9"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_26" < 14.000000) THEN CASE WHEN (t."X_29" < 10.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.032575 AS "P_0", 0.037270 AS "P_1", -0.105488 AS "P_2", -0.103952 AS "P_3", 0.044881 AS "P_4", 0.093870 AS "P_5", 0.001025 AS "P_6", -0.106839 AS "P_7", 0.007573 AS "P_8", -0.026516 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.004135 AS "P_0", 0.009535 AS "P_1", 0.064758 AS "P_2", 0.118423 AS "P_3", -0.039721 AS "P_4", -0.112327 AS "P_5", 0.002467 AS "P_6", -0.108563 AS "P_7", 0.071460 AS "P_8", -0.098040 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.008906 AS "P_0", -0.097682 AS "P_1", 0.000038 AS "P_2", -0.090144 AS "P_3", -0.045713 AS "P_4", -0.088703 AS "P_5", 0.014589 AS "P_6", 0.129390 AS "P_7", -0.064211 AS "P_8", 0.082750 AS "P_9"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_34" < 2.000000) THEN 1 ELSE CASE WHEN (t."X_42" < 5.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.090048 AS "P_0", -0.085080 AS "P_1", 0.118267 AS "P_2", -0.004312 AS "P_3", -0.091353 AS "P_4", -0.028607 AS "P_5", -0.092619 AS "P_6", -0.001321 AS "P_7", 0.057184 AS "P_8", 0.060404 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.090550 AS "P_0", 0.127702 AS "P_1", -0.094957 AS "P_2", -0.014193 AS "P_3", -0.039258 AS "P_4", 0.092780 AS "P_5", -0.108247 AS "P_6", 0.018441 AS "P_7", -0.075756 AS "P_8", 0.028222 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.073930 AS "P_0", -0.118598 AS "P_1", -0.100832 AS "P_2", -0.014654 AS "P_3", 0.054616 AS "P_4", -0.075953 AS "P_5", 0.091307 AS "P_6", -0.046387 AS "P_7", 0.050707 AS "P_8", -0.107936 AS "P_9"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_38" < 2.000000) THEN 1 ELSE CASE WHEN (t."X_34" < 8.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.102148 AS "P_0", 0.041167 AS "P_1", 0.053264 AS "P_2", -0.043340 AS "P_3", -0.118723 AS "P_4", 0.017786 AS "P_5", 0.006192 AS "P_6", -0.043990 AS "P_7", 0.082180 AS "P_8", -0.051797 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.029033 AS "P_0", -0.084817 AS "P_1", -0.078543 AS "P_2", 0.092096 AS "P_3", -0.085473 AS "P_4", -0.034022 AS "P_5", 0.050629 AS "P_6", 0.070824 AS "P_7", -0.091323 AS "P_8", 0.080261 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.069741 AS "P_0", -0.026783 AS "P_1", -0.080289 AS "P_2", -0.077463 AS "P_3", 0.111325 AS "P_4", 0.018586 AS "P_5", -0.023371 AS "P_6", -0.025747 AS "P_7", -0.104100 AS "P_8", -0.043063 AS "P_9"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_21" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_38" < 2.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.091663 AS "P_0", 0.017937 AS "P_1", -0.033851 AS "P_2", 0.027514 AS "P_3", -0.006766 AS "P_4", 0.082080 AS "P_5", 0.056147 AS "P_6", -0.092105 AS "P_7", -0.065655 AS "P_8", -0.097477 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.080542 AS "P_0", -0.023930 AS "P_1", 0.059653 AS "P_2", 0.007206 AS "P_3", -0.096391 AS "P_4", -0.098131 AS "P_5", -0.023526 AS "P_6", -0.011529 AS "P_7", 0.103947 AS "P_8", -0.018326 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.072919 AS "P_0", -0.014848 AS "P_1", -0.082721 AS "P_2", -0.081960 AS "P_3", 0.065253 AS "P_4", -0.094740 AS "P_5", -0.092179 AS "P_6", 0.062300 AS "P_7", -0.098372 AS "P_8", 0.067548 AS "P_9"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_44" < 11.000000) THEN CASE WHEN (t."X_42" < 5.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.090240 AS "P_0", 0.011006 AS "P_1", -0.054386 AS "P_2", -0.020882 AS "P_3", 0.083029 AS "P_4", 0.005051 AS "P_5", -0.045512 AS "P_6", 0.014026 AS "P_7", 0.049789 AS "P_8", -0.097855 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.084971 AS "P_0", 0.058057 AS "P_1", -0.005058 AS "P_2", -0.082650 AS "P_3", -0.082540 AS "P_4", 0.047843 AS "P_5", -0.079900 AS "P_6", -0.012584 AS "P_7", -0.037917 AS "P_8", 0.111937 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.084541 AS "P_0", -0.094033 AS "P_1", 0.049014 AS "P_2", 0.070597 AS "P_3", -0.110163 AS "P_4", -0.044447 AS "P_5", 0.101289 AS "P_6", -0.025103 AS "P_7", -0.035329 AS "P_8", -0.096068 AS "P_9"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_61" < 5.000000) THEN 1 ELSE CASE WHEN (t."X_37" < 8.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.004693 AS "P_0", -0.051572 AS "P_1", -0.097182 AS "P_2", -0.098166 AS "P_3", 0.049144 AS "P_4", 0.091587 AS "P_5", -0.057423 AS "P_6", 0.068401 AS "P_7", 0.005329 AS "P_8", -0.070991 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  0.050164 AS "P_0", 0.089899 AS "P_1", 0.116477 AS "P_2", 0.022647 AS "P_3", -0.083208 AS "P_4", -0.095918 AS "P_5", -0.099463 AS "P_6", -0.085873 AS "P_7", 0.018916 AS "P_8", -0.057374 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.086045 AS "P_0", -0.037330 AS "P_1", -0.087321 AS "P_2", 0.061421 AS "P_3", -0.022834 AS "P_4", -0.070924 AS "P_5", 0.108194 AS "P_6", -0.082449 AS "P_7", -0.005127 AS "P_8", 0.076729 AS "P_9"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_35" < 11.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  0.036051 AS "P_0", -0.003132 AS "P_1", 0.060620 AS "P_2", 0.017429 AS "P_3", 0.037137 AS "P_4", 0.035548 AS "P_5", -0.118950 AS "P_6", -0.099631 AS "P_7", -0.065853 AS "P_8", 0.028049 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  -0.091338 AS "P_0", 0.004039 AS "P_1", -0.102709 AS "P_2", -0.025014 AS "P_3", -0.034165 AS "P_4", -0.030104 AS "P_5", 0.073913 AS "P_6", 0.047021 AS "P_7", 0.046490 AS "P_8", -0.054927 AS "P_9"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_21" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_60" < 13.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.081416 AS "P_0", 0.021885 AS "P_1", -0.026776 AS "P_2", 0.024706 AS "P_3", -0.003682 AS "P_4", 0.069630 AS "P_5", 0.039401 AS "P_6", -0.083518 AS "P_7", -0.057063 AS "P_8", -0.089649 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  0.000365 AS "P_0", -0.011234 AS "P_1", 0.042313 AS "P_2", -0.078575 AS "P_3", -0.001294 AS "P_4", -0.081582 AS "P_5", -0.087500 AS "P_6", 0.082427 AS "P_7", 0.044226 AS "P_8", -0.040872 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.034748 AS "P_0", -0.017862 AS "P_1", -0.032207 AS "P_2", 0.027380 AS "P_3", 0.003797 AS "P_4", -0.095817 AS "P_5", -0.006141 AS "P_6", -0.090953 AS "P_7", 0.025930 AS "P_8", 0.069721 AS "P_9"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_44" < 11.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  0.027744 AS "P_0", -0.006214 AS "P_1", 0.027618 AS "P_2", 0.006466 AS "P_3", -0.115601 AS "P_4", 0.004918 AS "P_5", 0.037728 AS "P_6", -0.017583 AS "P_7", -0.036440 AS "P_8", 0.035165 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  -0.081670 AS "P_0", 0.009841 AS "P_1", -0.047485 AS "P_2", -0.009853 AS "P_3", 0.071968 AS "P_4", -0.001523 AS "P_5", -0.037671 AS "P_6", 0.004449 AS "P_7", 0.039484 AS "P_8", -0.088633 AS "P_9"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_42" < 9.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.099906 AS "P_0", 0.056034 AS "P_1", 0.001242 AS "P_2", 0.038355 AS "P_3", -0.061655 AS "P_4", 0.026173 AS "P_5", -0.113545 AS "P_6", 0.027056 AS "P_7", -0.013133 AS "P_8", 0.034293 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  0.063340 AS "P_0", -0.102956 AS "P_1", -0.011140 AS "P_2", -0.081796 AS "P_3", 0.040953 AS "P_4", -0.045749 AS "P_5", 0.069474 AS "P_6", -0.082866 AS "P_7", 0.033678 AS "P_8", -0.088261 AS "P_9"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_45" < 5.000000) THEN 1 ELSE CASE WHEN (t."X_60" < 15.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.012587 AS "P_0", 0.017910 AS "P_1", 0.098185 AS "P_2", -0.081514 AS "P_3", -0.086261 AS "P_4", 0.027220 AS "P_5", -0.009536 AS "P_6", 0.023428 AS "P_7", -0.012380 AS "P_8", -0.050815 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  0.010346 AS "P_0", 0.035902 AS "P_1", -0.077726 AS "P_2", -0.080521 AS "P_3", -0.024940 AS "P_4", 0.079914 AS "P_5", -0.022423 AS "P_6", 0.025101 AS "P_7", -0.015405 AS "P_8", -0.005942 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.019803 AS "P_0", -0.047393 AS "P_1", -0.088251 AS "P_2", 0.099085 AS "P_3", 0.059899 AS "P_4", -0.115828 AS "P_5", 0.021156 AS "P_6", -0.084885 AS "P_7", 0.034135 AS "P_8", 0.032396 AS "P_9"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_27" < 12.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  0.041006 AS "P_0", -0.101161 AS "P_1", 0.056144 AS "P_2", -0.002262 AS "P_3", 0.024087 AS "P_4", -0.023078 AS "P_5", 0.023002 AS "P_6", 0.054493 AS "P_7", -0.086504 AS "P_8", -0.031885 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  -0.086988 AS "P_0", 0.057081 AS "P_1", -0.095518 AS "P_2", -0.000877 AS "P_3", -0.033794 AS "P_4", 0.020335 AS "P_5", -0.025051 AS "P_6", -0.101527 AS "P_7", 0.069761 AS "P_8", 0.019823 AS "P_9"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_58" < 4.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.007311 AS "P_0", 0.048287 AS "P_1", 0.009682 AS "P_2", -0.089324 AS "P_3", 0.036859 AS "P_4", -0.079154 AS "P_5", 0.062855 AS "P_6", -0.024634 AS "P_7", -0.021529 AS "P_8", -0.055969 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  -0.005475 AS "P_0", -0.058479 AS "P_1", -0.015545 AS "P_2", 0.051503 AS "P_3", -0.092213 AS "P_4", 0.052208 AS "P_5", -0.110679 AS "P_6", 0.010936 AS "P_7", 0.025975 AS "P_8", 0.031987 AS "P_9"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_26" < 14.000000) THEN CASE WHEN (t."X_12" < 12.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 2 AS nid,  -0.020094 AS "P_0", 0.031280 AS "P_1", -0.080901 AS "P_2", -0.085292 AS "P_3", 0.031117 AS "P_4", 0.061470 AS "P_5", -0.006866 AS "P_6", -0.086379 AS "P_7", 0.016644 AS "P_8", -0.025764 AS "P_9"
    UNION ALL
    SELECT 3 AS nid,  -0.032629 AS "P_0", 0.031811 AS "P_1", 0.038132 AS "P_2", -0.079211 AS "P_3", -0.038902 AS "P_4", -0.085301 AS "P_5", 0.015761 AS "P_6", 0.066456 AS "P_7", -0.049116 AS "P_8", 0.062264 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  0.033489 AS "P_0", -0.089113 AS "P_1", 0.018197 AS "P_2", 0.111055 AS "P_3", -0.019924 AS "P_4", -0.081313 AS "P_5", 0.000501 AS "P_6", -0.030704 AS "P_7", 0.030903 AS "P_8", -0.055677 AS "P_9"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_54" < 1.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.028194 AS "P_0", -0.014340 AS "P_1", -0.044971 AS "P_2", -0.089705 AS "P_3", 0.064002 AS "P_4", 0.031343 AS "P_5", -0.066580 AS "P_6", 0.042002 AS "P_7", 0.021377 AS "P_8", -0.028405 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  0.014931 AS "P_0", 0.017303 AS "P_1", 0.029925 AS "P_2", 0.053009 AS "P_3", -0.109430 AS "P_4", -0.042937 AS "P_5", 0.061562 AS "P_6", -0.090736 AS "P_7", -0.015084 AS "P_8", 0.015148 AS "P_9"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_34" < 8.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.051077 AS "P_0", -0.050751 AS "P_1", 0.045466 AS "P_2", -0.005775 AS "P_3", -0.093255 AS "P_4", -0.010025 AS "P_5", -0.032403 AS "P_6", -0.014394 AS "P_7", 0.071145 AS "P_8", 0.031330 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  0.029246 AS "P_0", 0.040726 AS "P_1", -0.085743 AS "P_2", 0.002222 AS "P_3", 0.038427 AS "P_4", 0.008938 AS "P_5", 0.021738 AS "P_6", 0.004787 AS "P_7", -0.074913 AS "P_8", -0.053207 AS "P_9"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_35" < 11.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  0.037588 AS "P_0", 0.000423 AS "P_1", 0.052230 AS "P_2", 0.007970 AS "P_3", 0.035834 AS "P_4", 0.025531 AS "P_5", -0.106776 AS "P_6", -0.083002 AS "P_7", -0.059756 AS "P_8", 0.021262 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  -0.078732 AS "P_0", 0.003718 AS "P_1", -0.089570 AS "P_2", -0.012625 AS "P_3", -0.031642 AS "P_4", -0.026325 AS "P_5", 0.059726 AS "P_6", 0.034197 AS "P_7", 0.038202 AS "P_8", -0.041176 AS "P_9"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_42" < 5.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.080513 AS "P_0", 0.065836 AS "P_1", -0.011389 AS "P_2", -0.019827 AS "P_3", -0.044447 AS "P_4", 0.044958 AS "P_5", -0.094556 AS "P_6", 0.029915 AS "P_7", -0.049863 AS "P_8", 0.046519 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  0.041297 AS "P_0", -0.102750 AS "P_1", 0.006193 AS "P_2", 0.018598 AS "P_3", 0.024999 AS "P_4", -0.061033 AS "P_5", 0.042053 AS "P_6", -0.054938 AS "P_7", 0.051906 AS "P_8", -0.089861 AS "P_9"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_18" < 13.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 1 AS nid,  -0.080990 AS "P_0", 0.048211 AS "P_1", 0.023411 AS "P_2", 0.046220 AS "P_3", 0.019301 AS "P_4", -0.082759 AS "P_5", -0.033116 AS "P_6", 0.020000 AS "P_7", -0.004098 AS "P_8", -0.011743 AS "P_9"
    UNION ALL
    SELECT 2 AS nid,  0.042888 AS "P_0", -0.092882 AS "P_1", -0.037359 AS "P_2", -0.082158 AS "P_3", -0.025445 AS "P_4", 0.064940 AS "P_5", 0.033764 AS "P_6", -0.047509 AS "P_7", 0.014340 AS "P_8", 0.008533 AS "P_9"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3", scu."P_4" AS "P_4", scu."P_5" AS "P_5", scu."P_6" AS "P_6", scu."P_7" AS "P_7", scu."P_8" AS "P_8", scu."P_9" AS "P_9"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.093750 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.078125 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.062500 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.046875 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   0.109375 + SUM(t."P_4") AS "Score_4",
   CAST(NULL AS FLOAT) AS "Proba_4",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   0.140625 + SUM(t."P_5") AS "Score_5",
   CAST(NULL AS FLOAT) AS "Proba_5",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   0.109375 + SUM(t."P_6") AS "Score_6",
   CAST(NULL AS FLOAT) AS "Proba_6",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   0.093750 + SUM(t."P_7") AS "Score_7",
   CAST(NULL AS FLOAT) AS "Proba_7",
   CAST(NULL AS FLOAT) AS "LogProba_7",
   0.140625 + SUM(t."P_8") AS "Score_8",
   CAST(NULL AS FLOAT) AS "Proba_8",
   CAST(NULL AS FLOAT) AS "LogProba_8",
   0.125000 + SUM(t."P_9") AS "Score_9",
   CAST(NULL AS FLOAT) AS "Proba_9",
   CAST(NULL AS FLOAT) AS "LogProba_9"
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
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Greatest_Score"
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
    t1."Proba_8" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    t1."Exp_Score_8" AS "Exp_Score_8",
    t1."Proba_9" AS "Proba_9",
    t1."Score_9" AS "Score_9",
    t1."Exp_Score_9" AS "Exp_Score_9",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
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
        t."Proba_8" AS "Proba_8",
        t."Score_8" AS "Score_8",
        t."Proba_9" AS "Proba_9",
        t."Score_9" AS "Score_9",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
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
    t1."Score_7" AS "Score_7",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
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
    t."Proba_8" AS "Proba_8",
    t."Score_8" AS "Score_8",
    t."Proba_9" AS "Proba_9",
    t."Score_9" AS "Score_9",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Max_Score"
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
    t."Proba_8" AS "Proba_8",
    t."Score_8" AS "Score_8",
    t."Proba_9" AS "Proba_9",
    t."Score_9" AS "Score_9",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
    CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
    CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
    CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
    CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
    CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9",
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
     t."Proba_8" AS "Proba_8",
     t."Score_8" AS "Score_8",
     t."Proba_9" AS "Proba_9",
     t."Score_9" AS "Score_9",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
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
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte