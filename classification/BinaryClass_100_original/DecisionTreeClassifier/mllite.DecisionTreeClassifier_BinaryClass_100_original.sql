WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_43", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_76", t1."Leaf_78", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_86", t1."Leaf_89", t1."Leaf_90", t1."Leaf_93", t1."Leaf_95", t1."Leaf_99", t1."Leaf_101", t1."Leaf_102", t1."Leaf_104", t1."Leaf_105", t1."Leaf_107", t1."Leaf_108", t1."Leaf_109", t1."Leaf_111", t1."Leaf_113", t1."Leaf_117", t1."Leaf_118", t1."Leaf_119", t1."Leaf_121", t1."Leaf_122", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" > 1.025787) AND (t."X_56" > -0.540293)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" > 1.025787) AND (t."X_56" <= -0.540293) AND (t."X_30" <= -0.596365)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" > 1.025787) AND (t."X_56" <= -0.540293) AND (t."X_30" > -0.596365)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" <= -0.484264)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" > 1.139656) AND (t."X_7" <= 0.527327)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" > 1.139656) AND (t."X_7" > 0.527327)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" <= -0.966051) AND (t."X_23" <= 0.032591)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" <= -0.966051) AND (t."X_23" > 0.032591)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" > -0.966051) AND (t."X_90" <= -2.104604)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" > -0.966051) AND (t."X_90" > -2.104604) AND (t."X_58" <= -2.023205)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" > -0.966051) AND (t."X_90" > -2.104604) AND (t."X_58" > -2.023205) AND (t."X_47" <= -2.201104)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" > -0.966051) AND (t."X_90" > -2.104604) AND (t."X_58" > -2.023205) AND (t."X_47" > -2.201104) AND (t."X_88" <= 2.330611)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" <= 0.453636) AND (t."X_23" <= 1.025787) AND (t."X_4" > -0.484264) AND (t."X_74" <= 1.139656) AND (t."X_22" > -0.966051) AND (t."X_90" > -2.104604) AND (t."X_58" > -2.023205) AND (t."X_47" > -2.201104) AND (t."X_88" > 2.330611)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" > 0.888567) AND (t."X_61" <= -0.979345) AND (t."X_63" <= 1.300394)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" > 0.888567) AND (t."X_61" <= -0.979345) AND (t."X_63" > 1.300394)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" > 0.888567) AND (t."X_61" > -0.979345) AND (t."X_36" <= -1.290428)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" <= -0.563985)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" <= -0.537720) AND (t."X_69" <= 0.063465)) THEN 47 ELSE NULL END AS Leaf_47,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" <= -0.537720) AND (t."X_69" > 0.063465) AND (t."X_39" <= -0.890436)) THEN 49 ELSE NULL END AS Leaf_49,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" <= -0.537720) AND (t."X_69" > 0.063465) AND (t."X_39" > -0.890436)) THEN 50 ELSE NULL END AS Leaf_50,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" <= -0.337167) AND (t."X_92" <= -0.218010)) THEN 53 ELSE NULL END AS Leaf_53,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" <= -0.337167) AND (t."X_92" > -0.218010) AND (t."X_63" <= 0.807869)) THEN 55 ELSE NULL END AS Leaf_55,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" <= -0.337167) AND (t."X_92" > -0.218010) AND (t."X_63" > 0.807869)) THEN 56 ELSE NULL END AS Leaf_56,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" > -0.337167) AND (t."X_57" <= -1.307408) AND (t."X_30" <= -0.443176)) THEN 59 ELSE NULL END AS Leaf_59,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" > -0.337167) AND (t."X_57" <= -1.307408) AND (t."X_30" > -0.443176)) THEN 60 ELSE NULL END AS Leaf_60,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" > -0.337167) AND (t."X_57" > -1.307408) AND (t."X_69" > 1.482826)) THEN 62 ELSE NULL END AS Leaf_62,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" > -0.337167) AND (t."X_57" > -1.307408) AND (t."X_69" <= 1.482826) AND (t."X_89" <= -2.174616)) THEN 63 ELSE NULL END AS Leaf_63,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" <= 0.415185) AND (t."X_4" > -0.563985) AND (t."X_51" > -0.537720) AND (t."X_40" > -0.337167) AND (t."X_57" > -1.307408) AND (t."X_69" <= 1.482826) AND (t."X_89" > -2.174616)) THEN 64 ELSE NULL END AS Leaf_64,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" > 0.415185) AND (t."X_39" <= -1.484154)) THEN 65 ELSE NULL END AS Leaf_65,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" > 0.888567) AND (t."X_61" > -0.979345) AND (t."X_36" > -1.290428) AND (t."X_41" <= -1.609373)) THEN 67 ELSE NULL END AS Leaf_67,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" > 0.888567) AND (t."X_61" > -0.979345) AND (t."X_36" > -1.290428) AND (t."X_41" > -1.609373) AND (t."X_28" <= 2.322834)) THEN 69 ELSE NULL END AS Leaf_69,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" > 0.888567) AND (t."X_61" > -0.979345) AND (t."X_36" > -1.290428) AND (t."X_41" > -1.609373) AND (t."X_28" > 2.322834)) THEN 70 ELSE NULL END AS Leaf_70,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" > 0.415185) AND (t."X_39" > -1.484154) AND (t."X_15" > 1.662868) AND (t."X_30" <= 0.061249)) THEN 73 ELSE NULL END AS Leaf_73,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" > 0.415185) AND (t."X_39" > -1.484154) AND (t."X_15" > 1.662868) AND (t."X_30" > 0.061249)) THEN 74 ELSE NULL END AS Leaf_74,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" > 0.415185) AND (t."X_39" > -1.484154) AND (t."X_15" <= 1.662868) AND (t."X_76" <= -1.569445)) THEN 75 ELSE NULL END AS Leaf_75,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" <= 1.001798) AND (t."X_67" <= 0.888567) AND (t."X_67" > 0.415185) AND (t."X_39" > -1.484154) AND (t."X_15" <= 1.662868) AND (t."X_76" > -1.569445)) THEN 76 ELSE NULL END AS Leaf_76,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" > 1.001798) AND (t."X_43" > -1.935391)) THEN 78 ELSE NULL END AS Leaf_78,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" > 1.001798) AND (t."X_43" <= -1.935391) AND (t."X_77" <= -0.042490)) THEN 79 ELSE NULL END AS Leaf_79,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" > -0.732886) AND (t."X_67" > 1.001798) AND (t."X_43" <= -1.935391) AND (t."X_77" > -0.042490)) THEN 80 ELSE NULL END AS Leaf_80,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" <= -2.565738)) THEN 81 ELSE NULL END AS Leaf_81,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" <= -2.772907)) THEN 83 ELSE NULL END AS Leaf_83,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" > -2.772907) AND (t."X_7" > 2.700833)) THEN 86 ELSE NULL END AS Leaf_86,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" > 2.151857) AND (t."X_30" <= -0.817242)) THEN 89 ELSE NULL END AS Leaf_89,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" > 2.151857) AND (t."X_30" > -0.817242)) THEN 90 ELSE NULL END AS Leaf_90,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" <= -1.522347)) THEN 93 ELSE NULL END AS Leaf_93,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" <= -1.847123)) THEN 95 ELSE NULL END AS Leaf_95,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" <= -1.247801) AND (t."X_42" <= -0.444493)) THEN 99 ELSE NULL END AS Leaf_99,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" <= -1.247801) AND (t."X_42" > -0.444493) AND (t."X_98" <= 1.144148)) THEN 101 ELSE NULL END AS Leaf_101,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" <= -1.247801) AND (t."X_42" > -0.444493) AND (t."X_98" > 1.144148)) THEN 102 ELSE NULL END AS Leaf_102,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" > -1.247801) AND (t."X_30" > -1.082870)) THEN 104 ELSE NULL END AS Leaf_104,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" > -1.247801) AND (t."X_30" <= -1.082870) AND (t."X_27" <= -0.499054)) THEN 105 ELSE NULL END AS Leaf_105,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" > -1.247801) AND (t."X_30" <= -1.082870) AND (t."X_27" > -0.499054) AND (t."X_56" <= 1.343418)) THEN 107 ELSE NULL END AS Leaf_107,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" <= 0.891910) AND (t."X_93" > -1.522347) AND (t."X_17" > -1.847123) AND (t."X_55" > -1.247801) AND (t."X_30" <= -1.082870) AND (t."X_27" > -0.499054) AND (t."X_56" > 1.343418)) THEN 108 ELSE NULL END AS Leaf_108,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" > 0.891910) AND (t."X_11" <= -2.483008)) THEN 109 ELSE NULL END AS Leaf_109,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" > 0.891910) AND (t."X_11" > -2.483008) AND (t."X_5" <= -3.072110)) THEN 111 ELSE NULL END AS Leaf_111,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" > 0.891910) AND (t."X_11" > -2.483008) AND (t."X_5" > -3.072110) AND (t."X_88" <= -2.745571)) THEN 113 ELSE NULL END AS Leaf_113,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" > -2.772907) AND (t."X_7" <= 2.700833) AND (t."X_56" <= -2.544308) AND (t."X_7" <= -0.621602)) THEN 117 ELSE NULL END AS Leaf_117,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" > -2.772907) AND (t."X_7" <= 2.700833) AND (t."X_56" <= -2.544308) AND (t."X_7" > -0.621602)) THEN 118 ELSE NULL END AS Leaf_118,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" > -2.772907) AND (t."X_7" <= 2.700833) AND (t."X_56" > -2.544308) AND (t."X_39" <= 2.121185)) THEN 119 ELSE NULL END AS Leaf_119,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" > -2.772907) AND (t."X_7" <= 2.700833) AND (t."X_56" > -2.544308) AND (t."X_39" > 2.121185) AND (t."X_55" <= -0.159216)) THEN 121 ELSE NULL END AS Leaf_121,
      CASE WHEN((t."X_61" <= 0.084664) AND (t."X_1" <= -0.732886) AND (t."X_14" > -2.772907) AND (t."X_7" <= 2.700833) AND (t."X_56" > -2.544308) AND (t."X_39" > 2.121185) AND (t."X_55" > -0.159216)) THEN 122 ELSE NULL END AS Leaf_122,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" > 0.891910) AND (t."X_11" > -2.483008) AND (t."X_5" > -3.072110) AND (t."X_88" > -2.745571) AND (t."X_24" > -2.628786)) THEN 124 ELSE NULL END AS Leaf_124,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" > 0.891910) AND (t."X_11" > -2.483008) AND (t."X_5" > -3.072110) AND (t."X_88" > -2.745571) AND (t."X_24" <= -2.628786) AND (t."X_83" <= 0.200943)) THEN 125 ELSE NULL END AS Leaf_125,
      CASE WHEN((t."X_61" > 0.084664) AND (t."X_61" > 0.453636) AND (t."X_21" > -2.565738) AND (t."X_76" <= 2.151857) AND (t."X_61" > 0.891910) AND (t."X_11" > -2.483008) AND (t."X_5" > -3.072110) AND (t."X_88" > -2.745571) AND (t."X_24" <= -2.628786) AND (t."X_83" > 0.200943)) THEN 126 ELSE NULL END AS Leaf_126
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.831502 AS "P_0", 0.168498 AS "P_1", 0 AS "D", 0.831502 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.121339 AS "P_0", 0.878661 AS "P_1", 1 AS "D", 0.878661 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.382979 AS "P_0", 0.617021 AS "P_1", 1 AS "D", 0.617021 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.057292 AS "P_0", 0.942708 AS "P_1", 1 AS "D", 0.942708 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.294872 AS "P_0", 0.705128 AS "P_1", 1 AS "D", 0.705128 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.236111 AS "P_0", 0.763889 AS "P_1", 1 AS "D", 0.763889 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.161290 AS "P_0", 0.838710 AS "P_1", 1 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.107143 AS "P_0", 0.892857 AS "P_1", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.974790 AS "P_0", 0.025210 AS "P_1", 0 AS "D", 0.974790 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.720779 AS "P_0", 0.279221 AS "P_1", 0 AS "D", 0.720779 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.597156 AS "P_0", 0.402844 AS "P_1", 0 AS "D", 0.597156 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.989691 AS "P_0", 0.010309 AS "P_1", 0 AS "D", 0.989691 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.705882 AS "P_0", 0.294118 AS "P_1", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.310345 AS "P_0", 0.689655 AS "P_1", 1 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.116279 AS "P_0", 0.883721 AS "P_1", 1 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.459459 AS "P_0", 0.540541 AS "P_1", 1 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.350877 AS "P_0", 0.649123 AS "P_1", 1 AS "D", 0.649123 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.189189 AS "P_0", 0.810811 AS "P_1", 1 AS "D", 0.810811 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.093750 AS "P_0", 0.906250 AS "P_1", 1 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.025641 AS "P_0", 0.974359 AS "P_1", 1 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.983333 AS "P_0", 0.016667 AS "P_1", 0 AS "D", 0.983333 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.052356 AS "P_0", 0.947644 AS "P_1", 1 AS "D", 0.947644 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.978903 AS "P_0", 0.021097 AS "P_1", 0 AS "D", 0.978903 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.983051 AS "P_0", 0.016949 AS "P_1", 0 AS "D", 0.983051 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.047493 AS "P_0", 0.952507 AS "P_1", 1 AS "D", 0.952507 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.147368 AS "P_0", 0.852632 AS "P_1", 1 AS "D", 0.852632 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.014085 AS "P_0", 0.985915 AS "P_1", 1 AS "D", 0.985915 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.109890 AS "P_0", 0.890110 AS "P_1", 1 AS "D", 0.890110 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.089888 AS "P_0", 0.910112 AS "P_1", 1 AS "D", 0.910112 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.010601 AS "P_0", 0.989399 AS "P_1", 1 AS "D", 0.989399 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.007092 AS "P_0", 0.992908 AS "P_1", 1 AS "D", 0.992908 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.003559 AS "P_0", 0.996441 AS "P_1", 1 AS "D", 0.996441 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.987179 AS "P_0", 0.012821 AS "P_1", 0 AS "D", 0.987179 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.991379 AS "P_0", 0.008621 AS "P_1", 0 AS "D", 0.991379 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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