WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "BinaryClass_100_medium" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_62", t1."Leaf_64", t1."Leaf_65", t1."Leaf_68", t1."Leaf_69", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_77", t1."Leaf_78", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" <= -0.468376)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" > 0.997794)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" <= -0.757851)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" > 1.081340) AND (t."X_35" <= 1.391857)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" > 1.081340) AND (t."X_35" > 1.391857)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" > 0.517274) AND (t."X_27" <= 0.447684)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" > 0.517274) AND (t."X_27" > 0.447684) AND (t."X_75" <= 0.265967)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" > 0.517274) AND (t."X_27" > 0.447684) AND (t."X_75" > 0.265967)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" <= 0.517274) AND (t."X_88" <= -1.235460) AND (t."X_82" <= 0.412921)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" <= 0.517274) AND (t."X_88" <= -1.235460) AND (t."X_82" > 0.412921)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" <= 0.517274) AND (t."X_88" > -1.235460) AND (t."X_21" <= 1.909163)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" > -0.373340) AND (t."X_67" <= 0.997794) AND (t."X_55" > -0.757851) AND (t."X_54" <= 1.081340) AND (t."X_36" <= 0.517274) AND (t."X_88" > -1.235460) AND (t."X_21" > 1.909163)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" > -0.296792) AND (t."X_35" <= -1.370050)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" > -0.296792) AND (t."X_35" > -1.370050)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" <= -0.296792) AND (t."X_30" <= -1.160220)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" <= -0.296792) AND (t."X_30" > -1.160220) AND (t."X_46" <= 0.930794)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" <= -0.296792) AND (t."X_30" > -1.160220) AND (t."X_46" > 0.930794) AND (t."X_38" > 0.025211)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" <= -0.296792) AND (t."X_30" > -1.160220) AND (t."X_46" > 0.930794) AND (t."X_38" <= 0.025211) AND (t."X_98" <= 0.651048)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" <= 0.919322) AND (t."X_67" <= -0.296792) AND (t."X_30" > -1.160220) AND (t."X_46" > 0.930794) AND (t."X_38" <= 0.025211) AND (t."X_98" > 0.651048)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" > 0.919322) AND (t."X_67" <= 1.048912)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" > 0.919322) AND (t."X_67" > 1.048912) AND (t."X_75" <= 0.316093)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" <= 0.890186) AND (t."X_67" > 0.919322) AND (t."X_67" > 1.048912) AND (t."X_75" > 0.316093)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" > 2.419238)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" > 0.890186) AND (t."X_76" > 2.151857)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" > 0.890186) AND (t."X_76" <= 2.151857) AND (t."X_11" <= -2.483008)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" > 0.890186) AND (t."X_76" <= 2.151857) AND (t."X_11" > -2.483008) AND (t."X_65" <= -3.045889)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" > 1.839647) AND (t."X_1" <= -1.260874)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" > 1.839647) AND (t."X_1" > -1.260874)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" <= -2.381173)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" > 2.574430)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" > 0.034948)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" <= -2.931893)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" > 0.890186) AND (t."X_76" <= 2.151857) AND (t."X_11" > -2.483008) AND (t."X_65" > -3.045889) AND (t."X_24" > -2.382322)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" > 0.890186) AND (t."X_76" <= 2.151857) AND (t."X_11" > -2.483008) AND (t."X_65" > -3.045889) AND (t."X_24" <= -2.382322) AND (t."X_11" <= -1.387360)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_61" > 0.053631) AND (t."X_4" > -0.468376) AND (t."X_61" > 0.890186) AND (t."X_76" <= 2.151857) AND (t."X_11" > -2.483008) AND (t."X_65" > -3.045889) AND (t."X_24" <= -2.382322) AND (t."X_11" > -1.387360)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" <= -2.772907) AND (t."X_76" <= 0.281359)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" <= -2.772907) AND (t."X_76" > 0.281359)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" > -2.772907) AND (t."X_98" > 2.077640) AND (t."X_96" <= 0.639514)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" > -2.772907) AND (t."X_98" > 2.077640) AND (t."X_96" > 0.639514)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" > -2.772907) AND (t."X_98" <= 2.077640) AND (t."X_8" > -2.222232)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" > -2.772907) AND (t."X_98" <= 2.077640) AND (t."X_8" <= -2.222232) AND (t."X_44" <= -0.495285)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_61" <= 0.053631) AND (t."X_1" <= -0.373340) AND (t."X_86" <= 2.419238) AND (t."X_15" <= 1.839647) AND (t."X_36" > -2.381173) AND (t."X_42" <= 2.574430) AND (t."X_4" <= 0.034948) AND (t."X_12" > -2.931893) AND (t."X_14" > -2.772907) AND (t."X_98" <= 2.077640) AND (t."X_8" <= -2.222232) AND (t."X_44" > -0.495285)) THEN 82 ELSE NULL END AS "Leaf_82"
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.827206 AS "P_0", 0.172794 AS "P_1", 0 AS "D", 0.827206 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.129167 AS "P_0", 0.870833 AS "P_1", 1 AS "D", 0.870833 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.106838 AS "P_0", 0.893162 AS "P_1", 1 AS "D", 0.893162 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.929825 AS "P_0", 0.070175 AS "P_1", 0 AS "D", 0.929825 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.653465 AS "P_0", 0.346535 AS "P_1", 0 AS "D", 0.653465 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.453125 AS "P_0", 0.546875 AS "P_1", 1 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.580000 AS "P_0", 0.420000 AS "P_1", 0 AS "D", 0.580000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.238636 AS "P_0", 0.761364 AS "P_1", 1 AS "D", 0.761364 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.027397 AS "P_0", 0.972603 AS "P_1", 1 AS "D", 0.972603 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.391304 AS "P_0", 0.608696 AS "P_1", 1 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.161290 AS "P_0", 0.838710 AS "P_1", 1 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.940828 AS "P_0", 0.059172 AS "P_1", 0 AS "D", 0.940828 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.020690 AS "P_0", 0.979310 AS "P_1", 1 AS "D", 0.979310 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.013889 AS "P_0", 0.986111 AS "P_1", 1 AS "D", 0.986111 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.006993 AS "P_0", 0.993007 AS "P_1", 1 AS "D", 0.993007 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.956790 AS "P_0", 0.043210 AS "P_1", 0 AS "D", 0.956790 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.962733 AS "P_0", 0.037267 AS "P_1", 0 AS "D", 0.962733 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.974843 AS "P_0", 0.025157 AS "P_1", 0 AS "D", 0.974843 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.981013 AS "P_0", 0.018987 AS "P_1", 0 AS "D", 0.981013 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.987179 AS "P_0", 0.012821 AS "P_1", 0 AS "D", 0.987179 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.993506 AS "P_0", 0.006494 AS "P_1", 0 AS "D", 0.993506 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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