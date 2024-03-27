WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_11", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_68", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_78", t1."Leaf_79", t1."Leaf_81", t1."Leaf_82", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86", t1."Leaf_90", t1."Leaf_92", t1."Leaf_93", t1."Leaf_94", t1."Leaf_95", t1."Leaf_97", t1."Leaf_98" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" <= -0.532534)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" <= -1.218893)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" > -1.218893) AND (t."X_0" > 0.866316)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937) AND (t."X_9" > 0.672227)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937) AND (t."X_9" <= 0.672227) AND (t."X_8" <= -1.316072)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937) AND (t."X_9" <= 0.672227) AND (t."X_8" > -1.316072) AND (t."X_9" > 0.152445)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937) AND (t."X_9" <= 0.672227) AND (t."X_8" > -1.316072) AND (t."X_9" <= 0.152445) AND (t."X_8" > -0.397544)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937) AND (t."X_9" <= 0.672227) AND (t."X_8" > -1.316072) AND (t."X_9" <= 0.152445) AND (t."X_8" <= -0.397544) AND (t."X_2" <= -0.468377)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937) AND (t."X_9" <= 0.672227) AND (t."X_8" > -1.316072) AND (t."X_9" <= 0.152445) AND (t."X_8" <= -0.397544) AND (t."X_2" > -0.468377)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" <= -1.145612) AND (t."X_4" <= 0.462907)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" <= -1.145612) AND (t."X_4" > 0.462907)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" <= -1.365489) AND (t."X_6" <= 0.268702)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" <= -1.365489) AND (t."X_6" > 0.268702)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489) AND (t."X_2" <= -0.516542)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" > 0.241937) AND (t."X_9" <= -1.639198)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" <= -3.393702)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489) AND (t."X_2" > -0.516542) AND (t."X_6" <= -0.166761)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489) AND (t."X_2" > -0.516542) AND (t."X_6" > -0.166761) AND (t."X_6" <= -0.133472)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489) AND (t."X_2" > -0.516542) AND (t."X_6" > -0.166761) AND (t."X_6" > -0.133472) AND (t."X_9" <= 1.195414)) THEN 45 ELSE NULL END AS Leaf_45,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489) AND (t."X_2" > -0.516542) AND (t."X_6" > -0.166761) AND (t."X_6" > -0.133472) AND (t."X_9" > 1.195414) AND (t."X_4" <= 0.877358)) THEN 47 ELSE NULL END AS Leaf_47,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489) AND (t."X_2" > -0.516542) AND (t."X_6" > -0.166761) AND (t."X_6" > -0.133472) AND (t."X_9" > 1.195414) AND (t."X_4" > 0.877358)) THEN 48 ELSE NULL END AS Leaf_48,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" > -1.218893) AND (t."X_0" <= 0.866316) AND (t."X_9" <= 0.507909)) THEN 49 ELSE NULL END AS Leaf_49,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" > -1.218893) AND (t."X_0" <= 0.866316) AND (t."X_9" > 0.507909) AND (t."X_9" <= 0.766720)) THEN 51 ELSE NULL END AS Leaf_51,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" > -1.218893) AND (t."X_0" <= 0.866316) AND (t."X_9" > 0.507909) AND (t."X_9" > 0.766720)) THEN 52 ELSE NULL END AS Leaf_52,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" > 0.241937) AND (t."X_9" > -1.639198) AND (t."X_2" > -0.437256)) THEN 54 ELSE NULL END AS Leaf_54,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" > 0.241937) AND (t."X_9" > -1.639198) AND (t."X_2" <= -0.437256) AND (t."X_9" <= -0.537121)) THEN 55 ELSE NULL END AS Leaf_55,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" > 0.241937) AND (t."X_9" > -1.639198) AND (t."X_2" <= -0.437256) AND (t."X_9" > -0.537121)) THEN 56 ELSE NULL END AS Leaf_56,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" <= -0.492128)) THEN 57 ELSE NULL END AS Leaf_57,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" > -3.393702) AND (t."X_0" > -2.149431)) THEN 60 ELSE NULL END AS Leaf_60,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" > -3.393702) AND (t."X_0" <= -2.149431) AND (t."X_0" <= -2.915440)) THEN 61 ELSE NULL END AS Leaf_61,
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" > -3.393702) AND (t."X_0" <= -2.149431) AND (t."X_0" > -2.915440)) THEN 62 ELSE NULL END AS Leaf_62,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" > 0.395880)) THEN 68 ELSE NULL END AS Leaf_68,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" > 0.015230) AND (t."X_9" > -0.055069)) THEN 72 ELSE NULL END AS Leaf_72,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" > 0.015230) AND (t."X_9" <= -0.055069) AND (t."X_5" <= 0.559161)) THEN 73 ELSE NULL END AS Leaf_73,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" > 0.015230) AND (t."X_9" <= -0.055069) AND (t."X_5" > 0.559161)) THEN 74 ELSE NULL END AS Leaf_74,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" <= 0.015230) AND (t."X_8" <= -2.497188)) THEN 75 ELSE NULL END AS Leaf_75,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" > 1.137845)) THEN 78 ELSE NULL END AS Leaf_78,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" <= 0.015230) AND (t."X_8" > -2.497188) AND (t."X_1" <= 1.476846)) THEN 79 ELSE NULL END AS Leaf_79,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" <= 0.015230) AND (t."X_8" > -2.497188) AND (t."X_1" > 1.476846) AND (t."X_4" <= -0.677579)) THEN 81 ELSE NULL END AS Leaf_81,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_6" <= 0.395880) AND (t."X_0" <= 0.015230) AND (t."X_8" > -2.497188) AND (t."X_1" > 1.476846) AND (t."X_4" > -0.677579)) THEN 82 ELSE NULL END AS Leaf_82,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.137845) AND (t."X_3" <= 0.911677)) THEN 83 ELSE NULL END AS Leaf_83,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.137845) AND (t."X_3" > 0.911677) AND (t."X_3" <= 0.945873)) THEN 85 ELSE NULL END AS Leaf_85,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.137845) AND (t."X_3" > 0.911677) AND (t."X_3" > 0.945873)) THEN 86 ELSE NULL END AS Leaf_86,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_1" > -1.308814)) THEN 90 ELSE NULL END AS Leaf_90,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_1" <= -1.308814) AND (t."X_4" > -1.378958)) THEN 92 ELSE NULL END AS Leaf_92,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_1" <= -1.308814) AND (t."X_4" <= -1.378958) AND (t."X_9" <= -0.846831)) THEN 93 ELSE NULL END AS Leaf_93,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_1" <= -1.308814) AND (t."X_4" <= -1.378958) AND (t."X_9" > -0.846831)) THEN 94 ELSE NULL END AS Leaf_94,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.278796) AND (t."X_7" <= 1.578180)) THEN 95 ELSE NULL END AS Leaf_95,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.278796) AND (t."X_7" > 1.578180) AND (t."X_7" <= 1.590946)) THEN 97 ELSE NULL END AS Leaf_97,
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.278796) AND (t."X_7" > 1.578180) AND (t."X_7" > 1.590946)) THEN 98 ELSE NULL END AS Leaf_98
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.501953 AS "P_0", 0.498047 AS "P_1", 0 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.832168 AS "P_0", 0.167832 AS "P_1", 0 AS "D", 0.832168 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.084071 AS "P_0", 0.915929 AS "P_1", 1 AS "D", 0.915929 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.717647 AS "P_0", 0.282353 AS "P_1", 0 AS "D", 0.717647 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.557692 AS "P_0", 0.442308 AS "P_1", 0 AS "D", 0.557692 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.675676 AS "P_0", 0.324324 AS "P_1", 0 AS "D", 0.675676 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.807018 AS "P_0", 0.192982 AS "P_1", 0 AS "D", 0.807018 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.948718 AS "P_0", 0.051282 AS "P_1", 0 AS "D", 0.948718 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.192308 AS "P_0", 0.807692 AS "P_1", 1 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.973684 AS "P_0", 0.026316 AS "P_1", 0 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.984615 AS "P_0", 0.015385 AS "P_1", 0 AS "D", 0.984615 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.075893 AS "P_0", 0.924107 AS "P_1", 1 AS "D", 0.924107 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.027397 AS "P_0", 0.972603 AS "P_1", 1 AS "D", 0.972603 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.297297 AS "P_0", 0.702703 AS "P_1", 1 AS "D", 0.702703 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.048780 AS "P_0", 0.951219 AS "P_1", 1 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.212121 AS "P_0", 0.787879 AS "P_1", 1 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.008000 AS "P_0", 0.992000 AS "P_1", 1 AS "D", 0.992000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   CAST(NULL AS FLOAT)  AS "Score_0",
   "DT_Output"."P_0" AS "Proba_0",
   CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN LN( "DT_Output"."P_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
   CAST(NULL AS FLOAT)  AS "Score_1",
   "DT_Output"."P_1" AS "Proba_1",
   CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN LN( "DT_Output"."P_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"