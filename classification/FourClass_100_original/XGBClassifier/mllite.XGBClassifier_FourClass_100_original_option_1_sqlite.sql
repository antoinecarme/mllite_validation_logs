WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < -0.235750) THEN CASE WHEN (t."X_66" < -1.861054) THEN CASE WHEN (t."X_60" < -0.152103) THEN CASE WHEN (t."X_62" < -0.283495) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_35" < 1.420471) THEN CASE WHEN (t."X_49" < -0.227978) THEN 31 ELSE CASE WHEN (t."X_6" < -0.695836) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_0" < 0.293314) THEN 33 ELSE 34 END END END ELSE CASE WHEN (t."X_62" < 0.229907) THEN CASE WHEN (t."X_60" < -0.152103) THEN CASE WHEN (t."X_35" < 2.075005) THEN CASE WHEN (t."X_46" < -0.352303) THEN 57 ELSE 58 END ELSE 36 END ELSE CASE WHEN (t."X_35" < -0.044612) THEN 37 ELSE CASE WHEN (t."X_49" < -0.687597) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_35" < 2.075005) THEN CASE WHEN (t."X_60" < -1.214231) THEN 39 ELSE CASE WHEN (t."X_49" < -0.227978) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_58" < 0.236990) THEN 41 ELSE 42 END END END END ELSE CASE WHEN (t."X_49" < 0.337109) THEN CASE WHEN (t."X_62" < -0.825486) THEN CASE WHEN (t."X_53" < -0.692949) THEN CASE WHEN (t."X_29" < 0.214803) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_11" < -0.037651) THEN 45 ELSE 46 END END ELSE CASE WHEN (t."X_79" < -2.628947) THEN CASE WHEN (t."X_60" < 0.839015) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_65" < 1.275709) THEN 49 ELSE 50 END END END ELSE CASE WHEN (t."X_11" < 1.676155) THEN CASE WHEN (t."X_62" < 1.923750) THEN CASE WHEN (t."X_60" < -0.152103) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_16" < 0.266025) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_35" < -0.562023) THEN 29 ELSE 30 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 15 AS nid,  -0.132109 AS "P_0", -0.091525 AS "P_1", -0.172953 AS "P_2", 0.396610 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.016400 AS "P_0", 0.048649 AS "P_1", 0.048446 AS "P_2", -0.113514 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.167928 AS "P_0", 0.072000 AS "P_1", 0.215718 AS "P_2", -0.120000 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.156436 AS "P_0", 0.521739 AS "P_1", -0.182678 AS "P_2", -0.182609 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.050707 AS "P_0", -0.132203 AS "P_1", 0.192943 AS "P_2", -0.010169 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.072204 AS "P_0", -0.168000 AS "P_1", 0.119770 AS "P_2", -0.024000 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.169739 AS "P_0", -0.124528 AS "P_1", 0.011149 AS "P_2", 0.283019 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.087870 AS "P_0", -0.182023 AS "P_1", -0.020390 AS "P_2", 0.114607 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.180653 AS "P_0", 0.195181 AS "P_1", -0.036300 AS "P_2", 0.021687 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.039159 AS "P_0", -0.054545 AS "P_1", -0.148141 AS "P_2", 0.163636 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.169739 AS "P_0", -0.079245 AS "P_1", -0.124625 AS "P_2", 0.373585 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.070456 AS "P_0", 0.000000 AS "P_1", 0.035102 AS "P_2", 0.035294 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.167928 AS "P_0", -0.168000 AS "P_1", -0.168072 AS "P_2", 0.504000 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.010006 AS "P_0", -0.050847 AS "P_1", -0.132298 AS "P_2", 0.193220 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.009407 AS "P_0", -0.175385 AS "P_1", 0.045956 AS "P_2", 0.120000 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.459260 AS "P_0", -0.176471 AS "P_1", -0.176542 AS "P_2", -0.105882 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.078486 AS "P_0", 0.078261 AS "P_1", -0.000178 AS "P_2", -0.156522 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.171357 AS "P_0", 0.428571 AS "P_1", -0.085834 AS "P_2", -0.171429 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.395705 AS "P_0", -0.088152 AS "P_1", -0.167857 AS "P_2", -0.139336 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.166740 AS "P_0", 0.058065 AS "P_1", -0.143323 AS "P_2", -0.081290 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.040561 AS "P_0", 0.035294 AS "P_1", -0.040887 AS "P_2", 0.046154 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.098903 AS "P_0", -0.052427 AS "P_1", 0.331644 AS "P_2", -0.180583 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.192725 AS "P_0", 0.147170 AS "P_1", -0.169883 AS "P_2", -0.169811 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.437703 AS "P_0", -0.172881 AS "P_1", -0.091643 AS "P_2", -0.172881 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.167928 AS "P_0", -0.120000 AS "P_1", 0.359639 AS "P_2", -0.072000 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.178982 AS "P_0", -0.179058 AS "P_1", 0.549209 AS "P_2", -0.191623 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.019196 AS "P_0", 0.058065 AS "P_1", -0.174265 AS "P_2", 0.135484 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.164751 AS "P_0", -0.151648 AS "P_1", -0.178098 AS "P_2", 0.494506 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.153402 AS "P_0", -0.181395 AS "P_1", -0.069903 AS "P_2", 0.404651 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.186816 AS "P_0", -0.186885 AS "P_1", 0.304550 AS "P_2", 0.068852 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.191422 AS "P_0", 0.523404 AS "P_1", -0.166041 AS "P_2", -0.165957 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.152148 AS "P_0", 0.170149 AS "P_1", 0.116163 AS "P_2", -0.134328 AS "P_3"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_62" < -0.283495) THEN CASE WHEN (t."X_60" < -0.152103) THEN CASE WHEN (t."X_53" < 1.342487) THEN CASE WHEN (t."X_46" < -0.943775) THEN 15 ELSE CASE WHEN (t."X_49" < -2.977076) THEN 31 ELSE CASE WHEN (t."X_47" < -1.246995) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_49" < 0.872043) THEN CASE WHEN (t."X_31" < 0.225358) THEN 33 ELSE 34 END ELSE 18 END END ELSE CASE WHEN (t."X_49" < -0.227978) THEN CASE WHEN (t."X_35" < -0.044612) THEN 19 ELSE CASE WHEN (t."X_75" < -0.014227) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_31" < -1.991572) THEN CASE WHEN (t."X_81" < -0.278211) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_79" < -2.628947) THEN 39 ELSE CASE WHEN (t."X_21" < 0.866713) THEN 55 ELSE 56 END END END END END ELSE CASE WHEN (t."X_31" < -0.732387) THEN CASE WHEN (t."X_66" < -1.861054) THEN CASE WHEN (t."X_53" < 0.851536) THEN CASE WHEN (t."X_60" < 0.348937) THEN 41 ELSE 42 END ELSE 24 END ELSE CASE WHEN (t."X_60" < -0.152103) THEN CASE WHEN (t."X_99" < 0.018735) THEN CASE WHEN (t."X_89" < -0.077101) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_16" < 0.266025) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_49" < -0.227978) THEN CASE WHEN (t."X_35" < 2.075005) THEN 61 ELSE 62 END ELSE 46 END END END ELSE CASE WHEN (t."X_79" < -2.628947) THEN CASE WHEN (t."X_27" < -0.716624) THEN 27 ELSE CASE WHEN (t."X_11" < -0.599210) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_46" < -0.352303) THEN CASE WHEN (t."X_49" < -1.253111) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_49" < 1.532731) THEN 51 ELSE 52 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 15 AS nid,  -0.056454 AS "P_0", 0.137488 AS "P_1", 0.000999 AS "P_2", -0.076821 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.132512 AS "P_0", 0.256810 AS "P_1", -0.167519 AS "P_2", 0.003946 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.169446 AS "P_0", 0.159841 AS "P_1", -0.133149 AS "P_2", 0.123510 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.068344 AS "P_0", -0.079900 AS "P_1", 0.034754 AS "P_2", -0.029992 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  0.282997 AS "P_0", -0.019990 AS "P_1", -0.119519 AS "P_2", -0.159171 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  0.177144 AS "P_0", -0.169170 AS "P_1", -0.164476 AS "P_2", 0.118246 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.029317 AS "P_0", -0.136160 AS "P_1", -0.039172 AS "P_2", 0.121213 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  0.309075 AS "P_0", -0.171998 AS "P_1", -0.049866 AS "P_2", -0.148503 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.148751 AS "P_0", -0.169840 AS "P_1", -0.153932 AS "P_2", 0.387587 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.031441 AS "P_0", -0.164578 AS "P_1", -0.003421 AS "P_2", 0.158195 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.161605 AS "P_0", -0.124489 AS "P_1", 0.273521 AS "P_2", -0.063273 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.166886 AS "P_0", -0.173286 AS "P_1", 0.060916 AS "P_2", 0.238049 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.161277 AS "P_0", 0.095447 AS "P_1", 0.176797 AS "P_2", -0.161526 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.167956 AS "P_0", 0.048635 AS "P_1", 0.240469 AS "P_2", -0.161663 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.175890 AS "P_0", -0.173830 AS "P_1", 0.383803 AS "P_2", -0.176197 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.172221 AS "P_0", 0.033804 AS "P_1", 0.216192 AS "P_2", -0.117218 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.174843 AS "P_0", 0.398801 AS "P_1", -0.180354 AS "P_2", -0.113934 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.164133 AS "P_0", 0.055183 AS "P_1", 0.223596 AS "P_2", -0.141798 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.261064 AS "P_0", -0.043577 AS "P_1", -0.161164 AS "P_2", -0.121438 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.071422 AS "P_0", 0.288728 AS "P_1", -0.089467 AS "P_2", -0.159591 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.257744 AS "P_0", -0.057609 AS "P_1", -0.144817 AS "P_2", -0.112780 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.107423 AS "P_0", -0.058474 AS "P_1", 0.073600 AS "P_2", -0.134883 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.124186 AS "P_0", -0.071289 AS "P_1", 0.076592 AS "P_2", 0.110575 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.098958 AS "P_0", -0.163350 AS "P_1", -0.153567 AS "P_2", 0.340677 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.177794 AS "P_0", -0.147894 AS "P_1", 0.394206 AS "P_2", -0.180307 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.042182 AS "P_0", -0.165743 AS "P_1", 0.268111 AS "P_2", -0.125253 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.116303 AS "P_0", 0.051264 AS "P_1", -0.162259 AS "P_2", 0.196504 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.168382 AS "P_0", -0.171700 AS "P_1", -0.079465 AS "P_2", 0.367711 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  0.035654 AS "P_0", 0.031519 AS "P_1", -0.112745 AS "P_2", 0.037126 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.064479 AS "P_0", 0.104148 AS "P_1", 0.030737 AS "P_2", -0.074870 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.175349 AS "P_0", 0.336064 AS "P_1", -0.124995 AS "P_2", -0.178445 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.114841 AS "P_0", 0.058148 AS "P_1", -0.122079 AS "P_2", 0.147902 AS "P_3"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_62" < 0.229907) THEN CASE WHEN (t."X_60" < -0.152103) THEN CASE WHEN (t."X_49" < -0.687597) THEN CASE WHEN (t."X_11" < -0.998451) THEN 15 ELSE CASE WHEN (t."X_31" < 0.751899) THEN CASE WHEN (t."X_35" < 0.429602) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_91" < 0.050734) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_46" < 0.139348) THEN CASE WHEN (t."X_97" < 0.237063) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_53" < 0.319685) THEN CASE WHEN (t."X_67" < 0.503616) THEN 61 ELSE 62 END ELSE 36 END END END ELSE CASE WHEN (t."X_49" < -0.687597) THEN CASE WHEN (t."X_35" < -0.044612) THEN 19 ELSE CASE WHEN (t."X_11" < -0.599210) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_31" < -1.991572) THEN CASE WHEN (t."X_33" < -0.060349) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_27" < 2.023309) THEN 41 ELSE 42 END END END END ELSE CASE WHEN (t."X_31" < -0.732387) THEN CASE WHEN (t."X_66" < 0.314788) THEN CASE WHEN (t."X_53" < 0.319685) THEN CASE WHEN (t."X_49" < -0.227978) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_65" < 0.670603) THEN 45 ELSE 46 END END ELSE CASE WHEN (t."X_35" < 0.429602) THEN CASE WHEN (t."X_18" < -0.165968) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_27" < -0.716624) THEN 49 ELSE 50 END END END ELSE CASE WHEN (t."X_66" < 5.301510) THEN CASE WHEN (t."X_53" < 0.851536) THEN CASE WHEN (t."X_46" < 0.637573) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_11" < 1.063284) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_44" < -0.487013) THEN 29 ELSE CASE WHEN (t."X_69" < -0.028311) THEN 55 ELSE 56 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 15 AS nid,  0.027230 AS "P_0", -0.053605 AS "P_1", 0.167320 AS "P_2", -0.117980 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.115778 AS "P_0", 0.177460 AS "P_1", -0.132457 AS "P_2", 0.024269 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  0.050281 AS "P_0", -0.126418 AS "P_1", -0.156178 AS "P_2", 0.225622 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.013260 AS "P_0", 0.037740 AS "P_1", -0.055380 AS "P_2", -0.003690 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.137964 AS "P_0", 0.273259 AS "P_1", -0.169204 AS "P_2", -0.006848 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.031632 AS "P_0", -0.109998 AS "P_1", 0.003572 AS "P_2", 0.112882 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.163177 AS "P_0", -0.151500 AS "P_1", 0.012898 AS "P_2", 0.199965 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.050618 AS "P_0", -0.159567 AS "P_1", -0.169845 AS "P_2", 0.253907 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.159908 AS "P_0", -0.165308 AS "P_1", 0.052589 AS "P_2", 0.185824 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.157750 AS "P_0", -0.090970 AS "P_1", 0.220801 AS "P_2", -0.061978 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.108819 AS "P_0", -0.134620 AS "P_1", 0.255664 AS "P_2", -0.136936 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.154442 AS "P_0", 0.125062 AS "P_1", 0.083527 AS "P_2", -0.114350 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.159581 AS "P_0", 0.071982 AS "P_1", 0.148469 AS "P_2", -0.115202 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.168051 AS "P_0", -0.140387 AS "P_1", 0.263892 AS "P_2", -0.100942 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.034834 AS "P_0", -0.104596 AS "P_1", 0.092470 AS "P_2", -0.033290 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.111740 AS "P_0", 0.191243 AS "P_1", -0.090983 AS "P_2", -0.003290 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.154654 AS "P_0", 0.166504 AS "P_1", 0.001290 AS "P_2", -0.079024 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.160783 AS "P_0", 0.313731 AS "P_1", -0.180483 AS "P_2", -0.107304 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.057727 AS "P_0", 0.210725 AS "P_1", -0.111677 AS "P_2", -0.095991 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.065725 AS "P_0", -0.070257 AS "P_1", -0.011184 AS "P_2", 0.127694 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.123892 AS "P_0", 0.155720 AS "P_1", 0.078640 AS "P_2", -0.152955 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.085542 AS "P_0", 0.131041 AS "P_1", -0.090945 AS "P_2", -0.176920 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.226884 AS "P_0", -0.074568 AS "P_1", -0.092411 AS "P_2", -0.141913 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.073526 AS "P_0", 0.173885 AS "P_1", -0.154121 AS "P_2", -0.170495 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  0.222886 AS "P_0", -0.051968 AS "P_1", -0.154313 AS "P_2", -0.105752 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.299371 AS "P_0", -0.169325 AS "P_1", -0.154895 AS "P_2", -0.110703 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.102048 AS "P_0", -0.141470 AS "P_1", -0.164441 AS "P_2", 0.285211 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.135647 AS "P_0", -0.176448 AS "P_1", -0.157940 AS "P_2", 0.129434 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  0.281252 AS "P_0", -0.161964 AS "P_1", -0.118824 AS "P_2", -0.133411 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.135545 AS "P_0", -0.093113 AS "P_1", -0.160892 AS "P_2", 0.062925 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.138842 AS "P_0", -0.170492 AS "P_1", -0.166352 AS "P_2", 0.326664 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.162794 AS "P_0", -0.017145 AS "P_1", -0.154854 AS "P_2", 0.234783 AS "P_3"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_62" < 1.229092) THEN CASE WHEN (t."X_60" < -0.152103) THEN CASE WHEN (t."X_46" < 0.139348) THEN CASE WHEN (t."X_66" < -1.861054) THEN CASE WHEN (t."X_70" < 0.031255) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_65" < 2.000381) THEN CASE WHEN (t."X_95" < -0.211055) THEN 53 ELSE 54 END ELSE 32 END END ELSE CASE WHEN (t."X_31" < 0.225358) THEN CASE WHEN (t."X_21" < -0.519740) THEN CASE WHEN (t."X_65" < -0.582603) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_35" < 2.075005) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_60" < -1.846852) THEN CASE WHEN (t."X_27" < -0.716624) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_46" < 2.045712) THEN 61 ELSE 62 END END END END ELSE CASE WHEN (t."X_49" < -0.687597) THEN CASE WHEN (t."X_35" < 0.429602) THEN CASE WHEN (t."X_11" < -0.599210) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_90" < -0.023454) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_66" < 0.314788) THEN CASE WHEN (t."X_60" < 1.378785) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_35" < -0.562023) THEN 43 ELSE 44 END END END END ELSE CASE WHEN (t."X_65" < 1.275709) THEN CASE WHEN (t."X_79" < -1.460982) THEN CASE WHEN (t."X_46" < 0.139348) THEN CASE WHEN (t."X_78" < -0.051470) THEN 45 ELSE 46 END ELSE 24 END ELSE CASE WHEN (t."X_46" < 0.637573) THEN CASE WHEN (t."X_31" < 0.751899) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_25" < -0.956864) THEN 49 ELSE 50 END END END ELSE CASE WHEN (t."X_11" < -0.998451) THEN 13 ELSE CASE WHEN (t."X_12" < 0.625597) THEN CASE WHEN (t."X_37" < 0.048729) THEN 51 ELSE 52 END ELSE 28 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 13 AS nid,  0.121812 AS "P_0", 0.115874 AS "P_1", -0.161753 AS "P_2", -0.162443 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.137415 AS "P_0", 0.184357 AS "P_1", 0.006792 AS "P_2", -0.156786 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  -0.138754 AS "P_0", 0.157331 AS "P_1", 0.050620 AS "P_2", -0.115751 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.156329 AS "P_0", 0.320915 AS "P_1", -0.127105 AS "P_2", -0.156990 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.030955 AS "P_0", 0.110315 AS "P_1", -0.061697 AS "P_2", -0.050116 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.226623 AS "P_0", -0.094431 AS "P_1", -0.131520 AS "P_2", -0.046274 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.185967 AS "P_0", 0.301703 AS "P_1", -0.153501 AS "P_2", -0.083347 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.013511 AS "P_0", 0.022781 AS "P_1", -0.052699 AS "P_2", 0.029954 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.081708 AS "P_0", -0.158308 AS "P_1", -0.165923 AS "P_2", 0.250900 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.068347 AS "P_0", -0.122000 AS "P_1", 0.054737 AS "P_2", 0.089168 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.098758 AS "P_0", -0.030023 AS "P_1", 0.114235 AS "P_2", -0.044937 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.159874 AS "P_0", -0.149944 AS "P_1", 0.276630 AS "P_2", -0.155519 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.153396 AS "P_0", 0.291571 AS "P_1", -0.129085 AS "P_2", -0.115046 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.047641 AS "P_0", -0.104308 AS "P_1", 0.051442 AS "P_2", 0.065626 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.040922 AS "P_0", -0.181185 AS "P_1", 0.276070 AS "P_2", -0.153261 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.119209 AS "P_0", -0.018677 AS "P_1", 0.155985 AS "P_2", -0.063464 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.055297 AS "P_0", 0.020756 AS "P_1", 0.052813 AS "P_2", -0.022746 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  0.165750 AS "P_0", 0.010704 AS "P_1", -0.160163 AS "P_2", -0.118250 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.136438 AS "P_0", 0.085811 AS "P_1", -0.158528 AS "P_2", -0.157232 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.243361 AS "P_0", -0.133740 AS "P_1", -0.079054 AS "P_2", -0.142604 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.032260 AS "P_0", 0.196632 AS "P_1", -0.135393 AS "P_2", -0.160417 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.175145 AS "P_0", 0.358880 AS "P_1", -0.152963 AS "P_2", -0.159427 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.076939 AS "P_0", -0.120138 AS "P_1", -0.026556 AS "P_2", 0.060002 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.086689 AS "P_0", 0.094212 AS "P_1", -0.111952 AS "P_2", 0.072405 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.039460 AS "P_0", -0.154155 AS "P_1", -0.103736 AS "P_2", 0.191214 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.133192 AS "P_0", -0.110238 AS "P_1", -0.027290 AS "P_2", -0.014806 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.114463 AS "P_0", -0.096751 AS "P_1", -0.156560 AS "P_2", 0.231953 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.113534 AS "P_0", -0.165032 AS "P_1", 0.033571 AS "P_2", 0.203364 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.109453 AS "P_0", -0.117761 AS "P_1", -0.158430 AS "P_2", 0.317584 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.138176 AS "P_0", -0.134549 AS "P_1", -0.088841 AS "P_2", 0.025230 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.243413 AS "P_0", -0.075333 AS "P_1", -0.142638 AS "P_2", -0.132998 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.055687 AS "P_0", -0.119703 AS "P_1", 0.146957 AS "P_2", -0.091942 AS "P_3"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_31" < -0.732387) THEN CASE WHEN (t."X_62" < 1.229092) THEN CASE WHEN (t."X_35" < 0.429602) THEN CASE WHEN (t."X_66" < 0.314788) THEN CASE WHEN (t."X_60" < 0.348937) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_62" < -0.283495) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_60" < -0.719027) THEN CASE WHEN (t."X_33" < -0.284288) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_49" < -1.927302) THEN 35 ELSE CASE WHEN (t."X_17" < -0.054464) THEN 53 ELSE 54 END END END END ELSE CASE WHEN (t."X_27" < -0.716624) THEN 9 ELSE CASE WHEN (t."X_46" < 0.139348) THEN 19 ELSE CASE WHEN (t."X_53" < -0.144922) THEN 37 ELSE 38 END END END END ELSE CASE WHEN (t."X_62" < -0.825486) THEN CASE WHEN (t."X_53" < -0.144922) THEN CASE WHEN (t."X_50" < -0.250616) THEN 21 ELSE CASE WHEN (t."X_40" < 0.288548) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_11" < -0.599210) THEN CASE WHEN (t."X_2" < 0.532279) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_46" < 1.028033) THEN 43 ELSE 44 END END END ELSE CASE WHEN (t."X_66" < 0.314788) THEN CASE WHEN (t."X_53" < 0.319685) THEN CASE WHEN (t."X_60" < 0.348937) THEN CASE WHEN (t."X_86" < -0.063927) THEN 55 ELSE 56 END ELSE 46 END ELSE CASE WHEN (t."X_46" < 0.139348) THEN CASE WHEN (t."X_15" < 0.003042) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_11" < 1.063284) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_79" < -1.460982) THEN CASE WHEN (t."X_60" < -0.719027) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_27" < -0.716624) THEN CASE WHEN (t."X_60" < -1.214231) THEN 61 ELSE 62 END ELSE 52 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 9 AS nid,  -0.136774 AS "P_0", 0.219702 AS "P_1", -0.084279 AS "P_2", -0.115783 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.128741 AS "P_0", -0.112195 AS "P_1", 0.218295 AS "P_2", -0.111108 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.113577 AS "P_0", 0.034452 AS "P_1", -0.148548 AS "P_2", 0.152078 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.152913 AS "P_0", 0.050749 AS "P_1", -0.000817 AS "P_2", 0.064301 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.155209 AS "P_0", -0.066522 AS "P_1", 0.196350 AS "P_2", -0.125339 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.156335 AS "P_0", -0.010038 AS "P_1", -0.173172 AS "P_2", 0.208397 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.153667 AS "P_0", 0.167968 AS "P_1", -0.082568 AS "P_2", -0.041510 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.185925 AS "P_0", -0.134655 AS "P_1", -0.156582 AS "P_2", 0.047122 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.107662 AS "P_0", -0.162900 AS "P_1", -0.047283 AS "P_2", 0.205217 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.156140 AS "P_0", -0.146690 AS "P_1", -0.155407 AS "P_2", 0.262347 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.100508 AS "P_0", 0.116313 AS "P_1", -0.028349 AS "P_2", -0.041601 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.123325 AS "P_0", 0.006038 AS "P_1", -0.092922 AS "P_2", -0.036763 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.038986 AS "P_0", -0.169071 AS "P_1", -0.151281 AS "P_2", 0.169808 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.112300 AS "P_0", -0.151903 AS "P_1", 0.096574 AS "P_2", 0.109971 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.120811 AS "P_0", -0.105689 AS "P_1", 0.260804 AS "P_2", -0.102261 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.013972 AS "P_0", 0.025945 AS "P_1", -0.008814 AS "P_2", -0.001362 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.126928 AS "P_0", 0.106903 AS "P_1", -0.071677 AS "P_2", 0.056524 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  0.238097 AS "P_0", -0.144808 AS "P_1", -0.104524 AS "P_2", -0.096551 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.125712 AS "P_0", -0.054310 AS "P_1", 0.220261 AS "P_2", -0.155307 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.168206 AS "P_0", -0.041273 AS "P_1", -0.121851 AS "P_2", -0.071780 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.126139 AS "P_0", 0.262070 AS "P_1", -0.162985 AS "P_2", -0.152314 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.187775 AS "P_0", -0.123727 AS "P_1", -0.027844 AS "P_2", -0.140419 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.134502 AS "P_0", -0.167342 AS "P_1", 0.188686 AS "P_2", -0.009226 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.160516 AS "P_0", -0.139205 AS "P_1", 0.009651 AS "P_2", 0.175478 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.150916 AS "P_0", 0.084305 AS "P_1", 0.136327 AS "P_2", -0.122267 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.041283 AS "P_0", 0.184203 AS "P_1", -0.106626 AS "P_2", -0.106441 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.117054 AS "P_0", 0.224961 AS "P_1", -0.040297 AS "P_2", -0.160341 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.138762 AS "P_0", 0.067880 AS "P_1", -0.141585 AS "P_2", -0.153430 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  0.082967 AS "P_0", -0.036436 AS "P_1", 0.056597 AS "P_2", -0.162721 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.209541 AS "P_0", -0.018773 AS "P_1", -0.151544 AS "P_2", -0.158280 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.059879 AS "P_0", -0.032166 AS "P_1", -0.162811 AS "P_2", 0.206988 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.150129 AS "P_0", -0.022807 AS "P_1", -0.151803 AS "P_2", -0.089530 AS "P_3"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.249023 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.250000 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.250977 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.250000 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
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
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3"
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
    t1."Score_3" AS "Score_3"
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte