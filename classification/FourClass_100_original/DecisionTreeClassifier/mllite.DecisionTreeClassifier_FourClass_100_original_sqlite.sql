WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_49", t1."Leaf_50", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_65", t1."Leaf_66", t1."Leaf_69", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_76", t1."Leaf_78", t1."Leaf_81", t1."Leaf_85", t1."Leaf_86", t1."Leaf_87", t1."Leaf_88", t1."Leaf_95", t1."Leaf_96", t1."Leaf_101", t1."Leaf_102", t1."Leaf_103", t1."Leaf_104", t1."Leaf_105", t1."Leaf_106", t1."Leaf_109", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116", t1."Leaf_117", t1."Leaf_119", t1."Leaf_120", t1."Leaf_121", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" <= -0.195895) AND (t."X_50" > -0.743755)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" <= -0.195895) AND (t."X_50" <= -0.743755) AND (t."X_92" <= -0.514659)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" <= -0.195895) AND (t."X_50" <= -0.743755) AND (t."X_92" > -0.514659)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" > -0.195895) AND (t."X_24" > 1.746202) AND (t."X_38" <= 1.075104)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" > -0.195895) AND (t."X_24" > 1.746202) AND (t."X_38" > 1.075104)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" > -0.195895) AND (t."X_24" <= 1.746202) AND (t."X_25" <= -1.101986) AND (t."X_89" <= 1.473326)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" > -0.195895) AND (t."X_24" <= 1.746202) AND (t."X_25" <= -1.101986) AND (t."X_89" > 1.473326)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" > -0.195895) AND (t."X_24" <= 1.746202) AND (t."X_25" > -1.101986) AND (t."X_92" <= 2.087470)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" <= -0.456487) AND (t."X_35" > -0.195895) AND (t."X_24" <= 1.746202) AND (t."X_25" > -1.101986) AND (t."X_92" > 2.087470)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" <= -2.042675) AND (t."X_27" > 1.729097) AND (t."X_30" <= 0.697749)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" <= -2.042675) AND (t."X_27" > 1.729097) AND (t."X_30" > 0.697749)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" <= -2.042675) AND (t."X_27" <= 1.729097) AND (t."X_13" <= -1.293482)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" <= -2.042675) AND (t."X_27" <= 1.729097) AND (t."X_13" > -1.293482)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" > 0.854245) AND (t."X_75" > -0.107026)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" > 0.854245) AND (t."X_75" <= -0.107026) AND (t."X_6" <= 0.815105)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" > 0.854245) AND (t."X_75" <= -0.107026) AND (t."X_6" > 0.815105)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" <= 0.854245) AND (t."X_7" > 1.382299) AND (t."X_43" <= -0.416306)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" <= 0.854245) AND (t."X_7" > 1.382299) AND (t."X_43" > -0.416306)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" <= 0.854245) AND (t."X_7" <= 1.382299) AND (t."X_97" <= -1.454178)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" > 1.234337) AND (t."X_11" > -2.042675) AND (t."X_36" <= 0.854245) AND (t."X_7" <= 1.382299) AND (t."X_97" > -1.454178)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" <= 1.441320)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" > 1.211659) AND (t."X_87" <= -1.897293)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" > 1.211659) AND (t."X_87" > -1.897293)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" <= 0.048965) AND (t."X_46" > 1.426044) AND (t."X_72" <= 0.949186)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" <= 0.048965) AND (t."X_46" > 1.426044) AND (t."X_72" > 0.949186) AND (t."X_94" <= 0.442028)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" <= 0.048965) AND (t."X_46" > 1.426044) AND (t."X_72" > 0.949186) AND (t."X_94" > 0.442028)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" <= 0.048965) AND (t."X_46" <= 1.426044) AND (t."X_77" <= -0.981083)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" <= 0.048965) AND (t."X_46" <= 1.426044) AND (t."X_77" > -0.981083)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" > 0.048965) AND (t."X_97" <= 0.643748)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" > 0.048965) AND (t."X_97" > 0.643748) AND (t."X_73" <= 0.688747)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" > 0.048965) AND (t."X_97" > 0.643748) AND (t."X_73" > 0.688747) AND (t."X_11" <= 0.444009)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" <= 0.136527) AND (t."X_49" <= 1.234337) AND (t."X_53" > 1.441320) AND (t."X_96" <= 1.211659) AND (t."X_31" > 0.048965) AND (t."X_97" > 0.643748) AND (t."X_73" > 0.688747) AND (t."X_11" > 0.444009)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" > -0.456487) AND (t."X_31" <= -2.507588) AND (t."X_81" <= -0.447635)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" > -0.456487) AND (t."X_31" <= -2.507588) AND (t."X_81" > -0.447635) AND (t."X_33" > 0.456701)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" > -0.456487) AND (t."X_31" <= -2.507588) AND (t."X_81" > -0.447635) AND (t."X_33" <= 0.456701) AND (t."X_81" <= 1.658424)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" > -0.456487) AND (t."X_31" <= -2.507588) AND (t."X_81" > -0.447635) AND (t."X_33" <= 0.456701) AND (t."X_81" > 1.658424)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" > -0.456487) AND (t."X_31" > -2.507588) AND (t."X_79" <= -4.739720)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_62" <= -0.410318) AND (t."X_60" > 0.136527) AND (t."X_49" > -0.456487) AND (t."X_31" > -2.507588) AND (t."X_79" > -4.739720)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" > -0.547171)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" <= -1.994156) AND (t."X_53" <= 1.729831)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.729831) AND (t."X_27" <= -0.662094) AND (t."X_53" <= 2.176805)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.729831) AND (t."X_27" <= -0.662094) AND (t."X_53" > 2.176805)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.729831) AND (t."X_27" > -0.662094) AND (t."X_85" <= 0.958472)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.729831) AND (t."X_27" > -0.662094) AND (t."X_85" > 0.958472)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" > 0.923349) AND (t."X_50" <= 1.522982)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" > 0.923349) AND (t."X_50" > 1.522982)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" <= 0.923349) AND (t."X_77" <= 0.050208) AND (t."X_31" > -1.253298) AND (t."X_30" <= -0.674954)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" <= 0.923349) AND (t."X_77" <= 0.050208) AND (t."X_31" > -1.253298) AND (t."X_30" > -0.674954)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" <= 0.923349) AND (t."X_77" <= 0.050208) AND (t."X_31" <= -1.253298) AND (t."X_17" <= 1.184224)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" <= 0.923349) AND (t."X_77" <= 0.050208) AND (t."X_31" <= -1.253298) AND (t."X_17" > 1.184224)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" <= 0.923349) AND (t."X_77" > 0.050208) AND (t."X_19" <= -0.623073)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" <= 0.249759) AND (t."X_35" <= 0.923349) AND (t."X_77" > 0.050208) AND (t."X_19" > -0.623073)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" <= 2.205923)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" > 2.205923) AND (t."X_62" > 2.598422) AND (t."X_91" <= 0.298604)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" > 2.205923) AND (t."X_62" > 2.598422) AND (t."X_91" > 0.298604) AND (t."X_10" <= -0.405812)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" > 2.205923) AND (t."X_62" > 2.598422) AND (t."X_91" > 0.298604) AND (t."X_10" > -0.405812)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" > 2.205923) AND (t."X_62" <= 2.598422) AND (t."X_86" <= 1.768722)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" > 2.205923) AND (t."X_62" <= 2.598422) AND (t."X_86" > 1.768722) AND (t."X_41" <= 0.070766)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" <= -0.239804) AND (t."X_35" > 2.205923) AND (t."X_62" <= 2.598422) AND (t."X_86" > 1.768722) AND (t."X_41" > 0.070766)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" > -0.239804) AND (t."X_19" <= 1.258154)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" > -0.239804) AND (t."X_19" > 1.258154) AND (t."X_27" <= 2.476158)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.605783) AND (t."X_49" > -0.239804) AND (t."X_19" > 1.258154) AND (t."X_27" > 2.476158)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" > 0.249759) AND (t."X_86" <= -1.310761)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_62" > -0.410318) AND (t."X_31" <= -0.547171) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.605783) AND (t."X_46" > 0.249759) AND (t."X_86" > -1.310761)) THEN 126 ELSE NULL END AS "Leaf_126"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.249023 AS "P_0", 0.250000 AS "P_1", 0.250977 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.250977 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.146907 AS "P_0", 0.108247 AS "P_1", 0.283505 AS "P_2", 0.461340 AS "P_3", 3 AS "D", 0.461340 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.311321 AS "P_0", 0.336478 AS "P_1", 0.231132 AS "P_2", 0.121069 AS "P_3", 1 AS "D", 0.336478 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.222222 AS "P_0", 0.123932 AS "P_1", 0.111111 AS "P_2", 0.542735 AS "P_3", 3 AS "D", 0.542735 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.032468 AS "P_0", 0.084416 AS "P_1", 0.545455 AS "P_2", 0.337662 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.058824 AS "P_0", 0.156863 AS "P_1", 0.078431 AS "P_2", 0.705882 AS "P_3", 3 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.019417 AS "P_0", 0.048544 AS "P_1", 0.776699 AS "P_2", 0.155340 AS "P_3", 2 AS "D", 0.776699 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.727273 AS "P_1", 0.090909 AS "P_2", 0.181818 AS "P_3", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.075000 AS "P_0", 0.000000 AS "P_1", 0.075000 AS "P_2", 0.850000 AS "P_3", 3 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.027027 AS "P_0", 0.000000 AS "P_1", 0.054054 AS "P_2", 0.918919 AS "P_3", 3 AS "D", 0.918919 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.029412 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.970588 AS "P_3", 3 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.262887 AS "P_0", 0.036082 AS "P_1", 0.113402 AS "P_2", 0.587629 AS "P_3", 3 AS "D", 0.587629 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.025000 AS "P_0", 0.550000 AS "P_1", 0.100000 AS "P_2", 0.325000 AS "P_3", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.153846 AS "P_1", 0.153846 AS "P_2", 0.692308 AS "P_3", 3 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.037037 AS "P_0", 0.740741 AS "P_1", 0.074074 AS "P_2", 0.148148 AS "P_3", 1 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.045455 AS "P_0", 0.863636 AS "P_1", 0.045455 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.183673 AS "P_0", 0.040816 AS "P_1", 0.081633 AS "P_2", 0.693878 AS "P_3", 3 AS "D", 0.693878 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.510638 AS "P_0", 0.021277 AS "P_1", 0.212766 AS "P_2", 0.255319 AS "P_3", 0 AS "D", 0.510638 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.605263 AS "P_0", 0.026316 AS "P_1", 0.052632 AS "P_2", 0.315789 AS "P_3", 0 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.888889 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.250000 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.863636 AS "P_0", 0.000000 AS "P_1", 0.045455 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.551724 AS "P_2", 0.448276 AS "P_3", 2 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.027027 AS "P_0", 0.067568 AS "P_1", 0.864865 AS "P_2", 0.040541 AS "P_3", 2 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.277778 AS "P_2", 0.722222 AS "P_3", 3 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.071429 AS "P_2", 0.928571 AS "P_3", 3 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.028571 AS "P_0", 0.014286 AS "P_1", 0.914286 AS "P_2", 0.042857 AS "P_3", 2 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.084615 AS "P_0", 0.350000 AS "P_1", 0.361538 AS "P_2", 0.203846 AS "P_3", 2 AS "D", 0.361538 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.468085 AS "P_0", 0.327128 AS "P_1", 0.140957 AS "P_2", 0.063830 AS "P_3", 0 AS "D", 0.468085 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.139241 AS "P_0", 0.075949 AS "P_1", 0.734177 AS "P_2", 0.050633 AS "P_3", 2 AS "D", 0.734177 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.060773 AS "P_0", 0.469613 AS "P_1", 0.198895 AS "P_2", 0.270718 AS "P_3", 1 AS "D", 0.469613 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.016393 AS "P_0", 0.065574 AS "P_1", 0.901639 AS "P_2", 0.016393 AS "P_3", 2 AS "D", 0.901639 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.555556 AS "P_0", 0.111111 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.769231 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.230769 AS "P_3", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.160714 AS "P_0", 0.232143 AS "P_1", 0.035714 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.016000 AS "P_0", 0.576000 AS "P_1", 0.272000 AS "P_2", 0.136000 AS "P_3", 1 AS "D", 0.576000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.240000 AS "P_0", 0.440000 AS "P_1", 0.080000 AS "P_2", 0.240000 AS "P_3", 1 AS "D", 0.440000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.096774 AS "P_0", 0.064516 AS "P_1", 0.000000 AS "P_2", 0.838710 AS "P_3", 3 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.052632 AS "P_0", 0.526316 AS "P_1", 0.105263 AS "P_2", 0.315789 AS "P_3", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.100000 AS "P_0", 0.200000 AS "P_1", 0.100000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.012987 AS "P_0", 0.753247 AS "P_1", 0.064935 AS "P_2", 0.168831 AS "P_3", 1 AS "D", 0.753247 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.020833 AS "P_0", 0.291667 AS "P_1", 0.604167 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.604167 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 0.931035 AS "P_1", 0.051724 AS "P_2", 0.017241 AS "P_3", 1 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.052632 AS "P_0", 0.210526 AS "P_1", 0.105263 AS "P_2", 0.631579 AS "P_3", 3 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 0.071429 AS "P_1", 0.071429 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.200000 AS "P_0", 0.600000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.024390 AS "P_0", 0.195122 AS "P_1", 0.707317 AS "P_2", 0.073171 AS "P_3", 2 AS "D", 0.707317 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.034483 AS "P_0", 0.068966 AS "P_1", 0.000000 AS "P_2", 0.896552 AS "P_3", 3 AS "D", 0.896552 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
   CAST(NULL AS FLOAT)  AS "Score_2",
   "DT_Output"."P_2" AS "Proba_2",
   CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN LN( "DT_Output"."P_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
   CAST(NULL AS FLOAT)  AS "Score_3",
   "DT_Output"."P_3" AS "Proba_3",
   CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN LN( "DT_Output"."P_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"