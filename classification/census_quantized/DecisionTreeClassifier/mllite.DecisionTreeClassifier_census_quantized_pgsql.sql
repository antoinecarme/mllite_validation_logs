WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_24", t1."Leaf_27", t1."Leaf_30", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_61", t1."Leaf_63", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_78", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84", t1."Leaf_85", t1."Leaf_88", t1."Leaf_89", t1."Leaf_90", t1."Leaf_93", t1."Leaf_94", t1."Leaf_95", t1."Leaf_96", t1."Leaf_97", t1."Leaf_98", t1."Leaf_99", t1."Leaf_102", t1."Leaf_105", t1."Leaf_106", t1."Leaf_111", t1."Leaf_112", t1."Leaf_114", t1."Leaf_115", t1."Leaf_116", t1."Leaf_120", t1."Leaf_121", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" > 9.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" > 4.500000) AND (t."X_10" > 9.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 2.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 6.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 6.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" > 9.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 0.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" > 6.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 7.000000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" > 9.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 4.500000) AND (t."X_2" <= 7.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 4.500000) AND (t."X_2" > 7.500000) AND (t."X_4" <= 8.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 4.500000) AND (t."X_2" > 7.500000) AND (t."X_4" > 8.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" > 3.500000) AND (t."X_4" <= 8.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 8.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" <= 3.500000) AND (t."X_2" <= 0.500000) AND (t."X_4" <= 8.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" <= 3.500000) AND (t."X_2" <= 0.500000) AND (t."X_4" > 8.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" <= 3.500000) AND (t."X_2" > 0.500000) AND (t."X_4" <= 8.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" <= 3.500000) AND (t."X_2" > 0.500000) AND (t."X_4" > 8.500000) AND (t."X_2" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 4.500000) AND (t."X_2" <= 3.500000) AND (t."X_2" > 0.500000) AND (t."X_4" > 8.500000) AND (t."X_2" > 2.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_4" <= 0.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_4" <= 2.000000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" <= 4.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" <= 6.500000) AND (t."X_0" <= 6.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" <= 6.500000) AND (t."X_0" > 6.500000)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_2" <= 6.000000)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_2" > 6.000000) AND (t."X_2" > 8.500000)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_2" > 6.000000) AND (t."X_2" <= 8.500000) AND (t."X_4" > 6.500000)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_2" > 6.000000) AND (t."X_2" <= 8.500000) AND (t."X_4" <= 6.500000) AND (t."X_2" <= 7.500000)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_2" > 6.000000) AND (t."X_2" <= 8.500000) AND (t."X_4" <= 6.500000) AND (t."X_2" > 7.500000)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" > 6.500000) AND (t."X_0" > 6.500000)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" > 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 6.000000)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" > 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 6.000000) AND (t."X_2" <= 8.500000)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_4" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" > 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 6.000000) AND (t."X_2" > 8.500000)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_4" > 2.000000) AND (t."X_2" <= 2.500000)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_4" > 2.000000) AND (t."X_2" > 2.500000) AND (t."X_4" > 6.500000)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_4" > 2.000000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 6.500000) AND (t."X_0" <= 6.500000)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_4" > 2.000000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 6.500000) AND (t."X_0" > 6.500000)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 7.000000) AND (t."X_2" <= 2.000000) AND (t."X_4" <= 8.500000)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 7.000000) AND (t."X_2" <= 2.000000) AND (t."X_4" > 8.500000)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 7.000000) AND (t."X_2" > 2.000000) AND (t."X_2" <= 4.500000)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 7.000000) AND (t."X_2" > 2.000000) AND (t."X_2" > 4.500000)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 0.500000)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" > 0.500000)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" <= 4.500000)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" > 9.500000)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" > 9.500000) AND (t."X_0" <= 6.500000)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" > 9.500000) AND (t."X_0" > 6.500000)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 2.500000) AND (t."X_2" <= 1.000000)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 2.500000) AND (t."X_2" > 1.000000)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_4" > 8.500000)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 8.500000) AND (t."X_2" <= 6.000000)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 8.500000) AND (t."X_2" > 6.000000)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" > 6.500000) AND (t."X_2" <= 2.500000) AND (t."X_12" > 0.500000)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" > 6.500000) AND (t."X_2" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" <= 1.500000)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" > 6.500000) AND (t."X_2" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 8.500000)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" > 6.500000) AND (t."X_2" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 1.500000) AND (t."X_4" > 8.500000)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" > 6.500000) AND (t."X_2" > 2.500000) AND (t."X_12" <= 0.500000)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000) AND (t."X_11" <= 9.500000) AND (t."X_0" > 6.500000) AND (t."X_2" > 2.500000) AND (t."X_12" > 0.500000)) THEN 126 ELSE NULL END AS "Leaf_126"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.760718 AS "P_0", 0.239282 AS "P_1", 0 AS "D", 0.760718 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.840276 AS "P_0", 0.159724 AS "P_1", 0 AS "D", 0.840276 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.519405 AS "P_0", 0.480595 AS "P_1", 0 AS "D", 0.519405 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.714509 AS "P_0", 0.285491 AS "P_1", 0 AS "D", 0.714509 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.404565 AS "P_0", 0.595435 AS "P_1", 1 AS "D", 0.595435 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.950909 AS "P_0", 0.049091 AS "P_1", 0 AS "D", 0.950909 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.637733 AS "P_0", 0.362267 AS "P_1", 0 AS "D", 0.637733 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.460772 AS "P_0", 0.539228 AS "P_1", 1 AS "D", 0.539228 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.131437 AS "P_0", 0.868563 AS "P_1", 1 AS "D", 0.868563 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.263651 AS "P_0", 0.736349 AS "P_1", 1 AS "D", 0.736349 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.003030 AS "P_0", 0.996970 AS "P_1", 1 AS "D", 0.996970 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.677261 AS "P_0", 0.322739 AS "P_1", 0 AS "D", 0.677261 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.277612 AS "P_0", 0.722388 AS "P_1", 1 AS "D", 0.722388 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.417040 AS "P_0", 0.582960 AS "P_1", 1 AS "D", 0.582960 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.678251 AS "P_0", 0.321749 AS "P_1", 0 AS "D", 0.678251 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.425046 AS "P_0", 0.574954 AS "P_1", 1 AS "D", 0.574954 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.736091 AS "P_0", 0.263909 AS "P_1", 0 AS "D", 0.736091 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.546891 AS "P_0", 0.453109 AS "P_1", 0 AS "D", 0.546891 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.929055 AS "P_0", 0.070945 AS "P_1", 0 AS "D", 0.929055 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.756266 AS "P_0", 0.243734 AS "P_1", 0 AS "D", 0.756266 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.784713 AS "P_0", 0.215287 AS "P_1", 0 AS "D", 0.784713 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.452690 AS "P_0", 0.547310 AS "P_1", 1 AS "D", 0.547310 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.542857 AS "P_0", 0.457143 AS "P_1", 0 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.034843 AS "P_0", 0.965157 AS "P_1", 1 AS "D", 0.965157 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.852941 AS "P_0", 0.147059 AS "P_1", 0 AS "D", 0.852941 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.486679 AS "P_0", 0.513322 AS "P_1", 1 AS "D", 0.513322 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.948980 AS "P_0", 0.051020 AS "P_1", 0 AS "D", 0.948980 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.764151 AS "P_0", 0.235849 AS "P_1", 0 AS "D", 0.764151 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.605263 AS "P_0", 0.394737 AS "P_1", 0 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.242123 AS "P_0", 0.757877 AS "P_1", 1 AS "D", 0.757877 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.673469 AS "P_0", 0.326531 AS "P_1", 0 AS "D", 0.673469 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.609756 AS "P_0", 0.390244 AS "P_1", 0 AS "D", 0.609756 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.641026 AS "P_0", 0.358974 AS "P_1", 0 AS "D", 0.641026 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.921053 AS "P_0", 0.078947 AS "P_1", 0 AS "D", 0.921053 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.703704 AS "P_0", 0.296296 AS "P_1", 0 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.736364 AS "P_0", 0.263636 AS "P_1", 0 AS "D", 0.736364 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.459646 AS "P_0", 0.540354 AS "P_1", 1 AS "D", 0.540354 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.701456 AS "P_0", 0.298544 AS "P_1", 0 AS "D", 0.701456 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.397059 AS "P_0", 0.602941 AS "P_1", 1 AS "D", 0.602941 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.512195 AS "P_0", 0.487805 AS "P_1", 0 AS "D", 0.512195 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.652174 AS "P_0", 0.347826 AS "P_1", 0 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
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