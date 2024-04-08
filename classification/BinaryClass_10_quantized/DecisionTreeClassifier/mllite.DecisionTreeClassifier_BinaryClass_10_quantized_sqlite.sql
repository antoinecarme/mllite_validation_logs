WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_8", t1."Leaf_13", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_60", t1."Leaf_61", t1."Leaf_64", t1."Leaf_65", t1."Leaf_66", t1."Leaf_69", t1."Leaf_72", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_78", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84", t1."Leaf_85", t1."Leaf_88", t1."Leaf_92", t1."Leaf_94", t1."Leaf_95", t1."Leaf_97", t1."Leaf_98", t1."Leaf_100", t1."Leaf_103", t1."Leaf_106", t1."Leaf_107", t1."Leaf_108", t1."Leaf_111", t1."Leaf_112", t1."Leaf_113", t1."Leaf_117", t1."Leaf_119", t1."Leaf_120", t1."Leaf_121", t1."Leaf_123", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 5.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" > 6.500000) AND (t."X_0" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" > 6.500000) AND (t."X_0" <= 0.500000) AND (t."X_3" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" > 6.500000) AND (t."X_0" <= 0.500000) AND (t."X_3" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000) AND (t."X_6" > 3.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000) AND (t."X_6" <= 3.500000) AND (t."X_1" <= 6.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000) AND (t."X_6" <= 3.500000) AND (t."X_1" > 6.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" > 2.500000) AND (t."X_9" > 6.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" > 2.500000) AND (t."X_9" <= 6.500000) AND (t."X_9" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" > 2.500000) AND (t."X_9" <= 6.500000) AND (t."X_9" <= 3.500000) AND (t."X_7" <= 1.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" > 2.500000) AND (t."X_9" <= 6.500000) AND (t."X_9" <= 3.500000) AND (t."X_7" > 1.500000) AND (t."X_8" > 6.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" > 2.500000) AND (t."X_9" <= 6.500000) AND (t."X_9" <= 3.500000) AND (t."X_7" > 1.500000) AND (t."X_8" <= 6.500000) AND (t."X_1" <= 0.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_7" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_8" > 2.500000) AND (t."X_9" <= 6.500000) AND (t."X_9" <= 3.500000) AND (t."X_7" > 1.500000) AND (t."X_8" <= 6.500000) AND (t."X_1" > 0.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_1" > 8.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_1" <= 8.500000) AND (t."X_7" <= 2.500000) AND (t."X_9" <= 7.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_1" <= 8.500000) AND (t."X_7" <= 2.500000) AND (t."X_9" > 7.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_1" <= 8.500000) AND (t."X_7" > 2.500000) AND (t."X_9" <= 8.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_1" <= 8.500000) AND (t."X_7" > 2.500000) AND (t."X_9" > 8.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" > 0.500000) AND (t."X_2" > 5.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" > 0.500000) AND (t."X_2" <= 5.500000) AND (t."X_7" <= 5.000000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" > 0.500000) AND (t."X_2" <= 5.500000) AND (t."X_7" > 5.000000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" <= 3.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_8" > 4.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_8" <= 4.500000) AND (t."X_7" <= 5.000000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_8" <= 4.500000) AND (t."X_7" > 5.000000) AND (t."X_3" > 5.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_8" <= 4.500000) AND (t."X_7" > 5.000000) AND (t."X_3" <= 5.500000) AND (t."X_6" <= 2.500000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_8" <= 4.500000) AND (t."X_7" > 5.000000) AND (t."X_3" <= 5.500000) AND (t."X_6" > 2.500000)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" <= 3.500000) AND (t."X_0" <= 3.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_8" > 5.500000)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_8" <= 5.500000) AND (t."X_0" <= 7.500000)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_8" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_7" <= 1.500000)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_8" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_7" > 1.500000)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" > 3.500000) AND (t."X_0" > 2.500000)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" > 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_3" > 7.500000)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" > 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 5.500000)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" > 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 5.500000) AND (t."X_7" <= 6.000000)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_7" > 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 5.500000) AND (t."X_7" > 6.000000)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" <= 1.500000)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" > 7.500000)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" > 5.000000)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" <= 5.000000) AND (t."X_0" > 2.500000)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" <= 5.000000) AND (t."X_0" <= 2.500000) AND (t."X_6" <= 4.500000)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" <= 5.000000) AND (t."X_0" <= 2.500000) AND (t."X_6" > 4.500000) AND (t."X_9" <= 2.500000)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" <= 5.000000) AND (t."X_0" <= 2.500000) AND (t."X_6" > 4.500000) AND (t."X_9" > 2.500000)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" > 4.500000)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" > 2.500000) AND (t."X_8" <= 1.500000)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" > 2.500000) AND (t."X_8" > 1.500000) AND (t."X_9" > 3.000000)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" > 2.500000) AND (t."X_8" > 1.500000) AND (t."X_9" <= 3.000000) AND (t."X_7" <= 4.000000)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" > 2.500000) AND (t."X_8" > 1.500000) AND (t."X_9" <= 3.000000) AND (t."X_7" > 4.000000)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" > 8.000000) AND (t."X_8" <= 7.000000)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" > 8.000000) AND (t."X_8" > 7.000000)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" <= 2.500000)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" > 4.500000) AND (t."X_8" <= 6.000000)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" > 4.500000) AND (t."X_8" > 6.000000) AND (t."X_0" <= 7.000000)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" > 4.500000) AND (t."X_8" > 6.000000) AND (t."X_0" > 7.000000)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" <= 4.500000) AND (t."X_3" <= 1.500000)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" <= 4.500000) AND (t."X_3" > 1.500000) AND (t."X_1" <= 8.500000)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" <= 4.500000) AND (t."X_3" > 1.500000) AND (t."X_1" > 8.500000) AND (t."X_7" <= 3.500000)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.000000) AND (t."X_1" > 2.500000) AND (t."X_8" <= 4.500000) AND (t."X_3" > 1.500000) AND (t."X_1" > 8.500000) AND (t."X_7" > 3.500000)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.505859 AS "P_0", 0.494141 AS "P_1", 0 AS "D", 0.505859 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.792822 AS "P_0", 0.207178 AS "P_1", 0 AS "D", 0.792822 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.077859 AS "P_0", 0.922141 AS "P_1", 1 AS "D", 0.922141 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.900485 AS "P_0", 0.099515 AS "P_1", 0 AS "D", 0.900485 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.572139 AS "P_0", 0.427861 AS "P_1", 0 AS "D", 0.572139 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.477987 AS "P_0", 0.522013 AS "P_1", 1 AS "D", 0.522013 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.402878 AS "P_0", 0.597122 AS "P_1", 1 AS "D", 0.597122 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.229508 AS "P_0", 0.770492 AS "P_1", 1 AS "D", 0.770492 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.370370 AS "P_0", 0.629630 AS "P_1", 1 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.463415 AS "P_0", 0.536585 AS "P_1", 1 AS "D", 0.536585 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.576923 AS "P_0", 0.423077 AS "P_1", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.152174 AS "P_0", 0.847826 AS "P_1", 1 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.994220 AS "P_0", 0.005780 AS "P_1", 0 AS "D", 0.994220 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.832636 AS "P_0", 0.167364 AS "P_1", 0 AS "D", 0.832636 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.731544 AS "P_0", 0.268456 AS "P_1", 0 AS "D", 0.731544 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.795276 AS "P_0", 0.204724 AS "P_1", 0 AS "D", 0.795276 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.609756 AS "P_0", 0.390244 AS "P_1", 0 AS "D", 0.609756 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.883721 AS "P_0", 0.116279 AS "P_1", 0 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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