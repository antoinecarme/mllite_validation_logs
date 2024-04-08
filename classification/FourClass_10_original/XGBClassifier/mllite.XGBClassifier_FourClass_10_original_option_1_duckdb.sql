WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < -0.039238) THEN CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_8" < -0.393650) THEN CASE WHEN (t."X_3" < 0.280926) THEN CASE WHEN (t."X_0" < -0.097847) THEN CASE WHEN (t."X_3" < -1.306992) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_7" < -1.954820) THEN 45 ELSE 46 END END ELSE CASE WHEN (t."X_8" < -2.138658) THEN 29 ELSE CASE WHEN (t."X_0" < 0.419925) THEN 47 ELSE 48 END END END ELSE CASE WHEN (t."X_0" < 0.419925) THEN CASE WHEN (t."X_7" < -0.847658) THEN CASE WHEN (t."X_3" < -1.665121) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_1" < 1.084020) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_3" < 0.838583) THEN CASE WHEN (t."X_8" < 0.485588) THEN 53 ELSE 54 END ELSE 34 END END END ELSE CASE WHEN (t."X_8" < -0.880982) THEN 9 ELSE CASE WHEN (t."X_0" < 0.419925) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_1" < -0.296731) THEN CASE WHEN (t."X_0" < 1.267472) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_8" < -0.880982) THEN CASE WHEN (t."X_0" < -0.466241) THEN CASE WHEN (t."X_5" < -0.828796) THEN 55 ELSE 56 END ELSE 36 END ELSE CASE WHEN (t."X_3" < -1.306992) THEN CASE WHEN (t."X_0" < -0.866965) THEN 57 ELSE 58 END ELSE 38 END END END ELSE CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_7" < 1.006853) THEN CASE WHEN (t."X_8" < 0.485588) THEN 39 ELSE CASE WHEN (t."X_3" < -1.306992) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_0" < 0.419925) THEN CASE WHEN (t."X_0" < -0.866965) THEN 61 ELSE 62 END ELSE 42 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 9 AS nid,  -0.081081 AS "P_0", -0.178308 AS "P_1", -0.113730 AS "P_2", 0.373364 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.300000 AS "P_0", 0.000168 AS "P_1", -0.128763 AS "P_2", -0.171357 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.437288 AS "P_0", -0.172810 AS "P_1", -0.091760 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.547826 AS "P_0", -0.182539 AS "P_1", -0.182748 AS "P_2", -0.182539 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.085714 AS "P_0", -0.147963 AS "P_1", -0.117097 AS "P_2", 0.351029 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.174194 AS "P_0", -0.057927 AS "P_1", 0.018993 AS "P_2", -0.135391 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  0.176471 AS "P_0", -0.176400 AS "P_1", -0.035598 AS "P_2", 0.035487 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  0.390000 AS "P_0", -0.089877 AS "P_1", -0.120211 AS "P_2", -0.179930 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.024000 AS "P_0", -0.119902 AS "P_1", 0.215436 AS "P_2", -0.119902 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.074157 AS "P_0", -0.101006 AS "P_1", 0.275722 AS "P_2", -0.101006 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.070588 AS "P_0", 0.141430 AS "P_1", -0.000344 AS "P_2", -0.070456 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.189262 AS "P_0", 0.568321 AS "P_1", -0.189398 AS "P_2", -0.189194 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.080597 AS "P_0", -0.187991 AS "P_1", 0.294794 AS "P_2", -0.187991 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  0.370060 AS "P_0", -0.175971 AS "P_1", -0.147495 AS "P_2", -0.046549 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.179221 AS "P_0", -0.179150 AS "P_1", 0.131963 AS "P_2", 0.226281 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.148235 AS "P_0", -0.190520 AS "P_1", 0.514284 AS "P_2", -0.176394 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.010169 AS "P_0", -0.132109 AS "P_1", -0.173025 AS "P_2", 0.315601 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.188811 AS "P_0", -0.188743 AS "P_1", -0.138660 AS "P_2", 0.516586 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.138462 AS "P_0", -0.138364 AS "P_1", -0.138656 AS "P_2", 0.138725 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.070588 AS "P_0", -0.132247 AS "P_1", -0.167814 AS "P_2", 0.371012 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.092308 AS "P_0", 0.207998 AS "P_1", -0.184754 AS "P_2", 0.069453 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", -0.078129 AS "P_1", -0.104580 AS "P_2", 0.182896 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.052800 AS "P_0", -0.167920 AS "P_1", 0.119489 AS "P_2", 0.101044 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.174684 AS "P_0", -0.022613 AS "P_1", 0.022386 AS "P_2", -0.174606 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.169811 AS "P_0", -0.033815 AS "P_1", 0.372841 AS "P_2", -0.169739 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.139726 AS "P_0", -0.188973 AS "P_1", 0.500385 AS "P_2", -0.172524 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.050847 AS "P_0", 0.193498 AS "P_1", 0.030137 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.124528 AS "P_0", 0.056801 AS "P_1", 0.237142 AS "P_2", -0.169739 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.008451 AS "P_0", 0.160830 AS "P_1", -0.143843 AS "P_2", -0.008282 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.168932 AS "P_0", 0.472328 AS "P_1", -0.157460 AS "P_2", -0.145534 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.168000 AS "P_0", 0.523702 AS "P_1", -0.168161 AS "P_2", -0.187131 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.153488 AS "P_0", 0.349221 AS "P_1", -0.014291 AS "P_2", -0.181325 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.039238) THEN CASE WHEN (t."X_3" < 0.280926) THEN CASE WHEN (t."X_0" < -0.097847) THEN CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < -1.306992) THEN CASE WHEN (t."X_0" < -1.300768) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_8" < -1.368840) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_8" < 1.893170) THEN CASE WHEN (t."X_3" < -1.665121) THEN 51 ELSE 52 END ELSE 30 END END ELSE CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_7" < -1.954820) THEN 31 ELSE CASE WHEN (t."X_8" < -0.880982) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_7" < -0.847658) THEN CASE WHEN (t."X_3" < -1.306992) THEN 55 ELSE 56 END ELSE 34 END END END ELSE CASE WHEN (t."X_8" < 0.485588) THEN CASE WHEN (t."X_8" < -2.138658) THEN 19 ELSE CASE WHEN (t."X_8" < -0.393650) THEN CASE WHEN (t."X_0" < 0.419925) THEN 57 ELSE 58 END ELSE 36 END END ELSE CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_7" < -1.131669) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_0" < 0.419925) THEN 39 ELSE 40 END END END END ELSE CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_7" < 1.006853) THEN CASE WHEN (t."X_3" < -0.925313) THEN CASE WHEN (t."X_8" < -0.880982) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_0" < 0.834960) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_8" < -1.368840) THEN 43 ELSE 44 END END ELSE 12 END ELSE CASE WHEN (t."X_1" < -1.230132) THEN 13 ELSE CASE WHEN (t."X_6" < 1.174393) THEN CASE WHEN (t."X_8" < 0.485588) THEN 45 ELSE 46 END ELSE 26 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 12 AS nid,  -0.064125 AS "P_0", -0.166433 AS "P_1", -0.099108 AS "P_2", 0.276304 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.247747 AS "P_0", -0.001982 AS "P_1", -0.119517 AS "P_2", -0.161335 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.121758 AS "P_0", -0.171027 AS "P_1", -0.046401 AS "P_2", 0.063152 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.122584 AS "P_0", 0.129641 AS "P_1", 0.068431 AS "P_2", -0.110020 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.165111 AS "P_0", -0.153539 AS "P_1", -0.175331 AS "P_2", 0.410291 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.167824 AS "P_0", -0.167442 AS "P_1", 0.091241 AS "P_2", 0.177851 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.148191 AS "P_0", 0.050238 AS "P_1", 0.138203 AS "P_2", -0.035633 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.048609 AS "P_0", -0.151392 AS "P_1", -0.151174 AS "P_2", 0.228018 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.295655 AS "P_0", -0.031762 AS "P_1", -0.135057 AS "P_2", -0.180691 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.102117 AS "P_0", 0.107360 AS "P_1", -0.066917 AS "P_2", -0.164404 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.289589 AS "P_0", -0.159208 AS "P_1", -0.076703 AS "P_2", -0.159208 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  0.337662 AS "P_0", -0.165013 AS "P_1", -0.165163 AS "P_2", -0.165013 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.147212 AS "P_0", -0.172051 AS "P_1", 0.351731 AS "P_2", -0.171230 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.138844 AS "P_0", 0.049016 AS "P_1", 0.216971 AS "P_2", -0.181455 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.127961 AS "P_0", 0.229699 AS "P_1", -0.041103 AS "P_2", -0.127104 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.139344 AS "P_0", 0.310348 AS "P_1", -0.159349 AS "P_2", -0.138034 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.284569 AS "P_0", -0.168546 AS "P_1", 0.018263 AS "P_2", -0.177189 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.004022 AS "P_0", -0.118336 AS "P_1", 0.243845 AS "P_2", -0.177896 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.377323 AS "P_0", -0.171459 AS "P_1", -0.146707 AS "P_2", -0.179202 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.043524 AS "P_0", -0.128982 AS "P_1", -0.103270 AS "P_2", 0.154615 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.320474 AS "P_0", -0.117518 AS "P_1", -0.116506 AS "P_2", -0.104865 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.123143 AS "P_0", 0.000258 AS "P_1", -0.153991 AS "P_2", 0.217731 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.154738 AS "P_0", -0.173310 AS "P_1", 0.343340 AS "P_2", -0.174048 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.090070 AS "P_0", -0.169740 AS "P_1", 0.219891 AS "P_2", -0.021097 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.022430 AS "P_0", 0.006888 AS "P_1", 0.066198 AS "P_2", -0.050687 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.210510 AS "P_0", -0.113974 AS "P_1", -0.060095 AS "P_2", -0.054330 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.005245 AS "P_0", -0.118068 AS "P_1", -0.160318 AS "P_2", 0.219802 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.165861 AS "P_0", -0.177658 AS "P_1", -0.122196 AS "P_2", 0.325374 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.118516 AS "P_0", -0.160868 AS "P_1", 0.325961 AS "P_2", -0.159808 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.026865 AS "P_0", 0.029760 AS "P_1", 0.084135 AS "P_2", -0.164024 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.037829 AS "P_0", -0.121253 AS "P_1", -0.031670 AS "P_2", 0.117531 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.167907 AS "P_0", -0.080225 AS "P_1", 0.035902 AS "P_2", -0.136324 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.039238) THEN CASE WHEN (t."X_3" < 0.280926) THEN CASE WHEN (t."X_0" < 0.419925) THEN CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < -1.306992) THEN CASE WHEN (t."X_0" < -1.300768) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_8" < -1.368840) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_7" < -0.847658) THEN CASE WHEN (t."X_2" < -0.501776) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_3" < -1.306992) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_7" < -1.954820) THEN 17 ELSE CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_8" < -0.880982) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_3" < -1.306992) THEN 57 ELSE 58 END END END END ELSE CASE WHEN (t."X_8" < 0.485588) THEN CASE WHEN (t."X_1" < -1.805905) THEN CASE WHEN (t."X_0" < 1.869880) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_8" < -1.368840) THEN 35 ELSE CASE WHEN (t."X_0" < 0.834960) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_9" < 0.270104) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_4" < 0.007580) THEN 39 ELSE 40 END END END END ELSE CASE WHEN (t."X_8" < -0.393650) THEN CASE WHEN (t."X_3" < 0.838583) THEN CASE WHEN (t."X_8" < -1.368840) THEN CASE WHEN (t."X_5" < -0.008973) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_4" < 0.224487) THEN 43 ELSE 44 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_6" < 1.174393) THEN CASE WHEN (t."X_7" < 0.479871) THEN CASE WHEN (t."X_9" < 0.040178) THEN 61 ELSE 62 END ELSE 46 END ELSE 26 END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 12 AS nid,  -0.087526 AS "P_0", -0.163900 AS "P_1", 0.009726 AS "P_2", 0.180770 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.235119 AS "P_0", -0.033865 AS "P_1", -0.119182 AS "P_2", -0.160746 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.030348 AS "P_0", -0.138726 AS "P_1", -0.001986 AS "P_2", 0.129732 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.161960 AS "P_0", 0.075162 AS "P_1", 0.110135 AS "P_2", -0.080203 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.128005 AS "P_0", -0.153478 AS "P_1", -0.159624 AS "P_2", 0.274752 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.097927 AS "P_0", -0.160162 AS "P_1", 0.006984 AS "P_2", 0.160420 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  0.205814 AS "P_0", -0.160888 AS "P_1", -0.110673 AS "P_2", 0.003795 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.211011 AS "P_0", -0.019166 AS "P_1", -0.116171 AS "P_2", -0.161146 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.107454 AS "P_0", 0.075193 AS "P_1", -0.069931 AS "P_2", -0.162228 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.208337 AS "P_0", -0.148999 AS "P_1", -0.058181 AS "P_2", -0.148999 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  0.271886 AS "P_0", -0.152661 AS "P_1", -0.156997 AS "P_2", -0.152661 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.162694 AS "P_0", -0.155105 AS "P_1", 0.297332 AS "P_2", -0.154618 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.037821 AS "P_0", -0.158615 AS "P_1", 0.196285 AS "P_2", -0.129088 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.026103 AS "P_0", -0.050587 AS "P_1", 0.112772 AS "P_2", -0.139424 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.133960 AS "P_0", 0.001449 AS "P_1", 0.189662 AS "P_2", -0.128913 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.117679 AS "P_0", 0.234373 AS "P_1", -0.109348 AS "P_2", -0.154844 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.200839 AS "P_0", -0.158461 AS "P_1", 0.019686 AS "P_2", -0.165147 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.016732 AS "P_0", -0.114113 AS "P_1", 0.202109 AS "P_2", -0.173056 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.244576 AS "P_0", -0.161688 AS "P_1", -0.061244 AS "P_2", -0.166797 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.035378 AS "P_0", -0.123366 AS "P_1", -0.096304 AS "P_2", 0.131024 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.032259 AS "P_0", -0.161767 AS "P_1", -0.157571 AS "P_2", 0.189141 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.092489 AS "P_0", -0.105358 AS "P_1", -0.141180 AS "P_2", 0.224399 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.040128 AS "P_0", -0.090632 AS "P_1", -0.118757 AS "P_2", 0.132749 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.103962 AS "P_0", 0.179174 AS "P_1", -0.130905 AS "P_2", 0.008717 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.161620 AS "P_0", -0.158926 AS "P_1", 0.269316 AS "P_2", -0.159498 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.069427 AS "P_0", -0.158423 AS "P_1", 0.167924 AS "P_2", -0.028599 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.136261 AS "P_0", -0.001524 AS "P_1", 0.231690 AS "P_2", -0.119477 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.140093 AS "P_0", -0.030546 AS "P_1", 0.022046 AS "P_2", -0.171881 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.153403 AS "P_0", -0.116255 AS "P_1", -0.165749 AS "P_2", 0.290974 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.086187 AS "P_0", -0.152632 AS "P_1", -0.072201 AS "P_2", 0.083883 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.045027 AS "P_0", 0.067178 AS "P_1", -0.101001 AS "P_2", -0.040468 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.167523 AS "P_0", 0.156685 AS "P_1", -0.036120 AS "P_2", -0.026304 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.039238) THEN CASE WHEN (t."X_8" < -0.393650) THEN CASE WHEN (t."X_3" < -0.563521) THEN CASE WHEN (t."X_0" < -0.097847) THEN CASE WHEN (t."X_3" < -1.665121) THEN 27 ELSE 28 END ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.419925) THEN CASE WHEN (t."X_8" < -1.368840) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_3" < 0.838583) THEN CASE WHEN (t."X_7" < -1.457211) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_9" < 0.270104) THEN 49 ELSE 50 END END END END ELSE CASE WHEN (t."X_1" < 0.304038) THEN CASE WHEN (t."X_8" < 0.485588) THEN CASE WHEN (t."X_0" < 0.834960) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_0" < 1.267472) THEN CASE WHEN (t."X_1" < -0.296731) THEN 51 ELSE 52 END ELSE 36 END END ELSE CASE WHEN (t."X_8" < 1.893170) THEN CASE WHEN (t."X_3" < -1.665121) THEN 37 ELSE CASE WHEN (t."X_0" < -1.300768) THEN 53 ELSE 54 END END ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < 1.634100) THEN CASE WHEN (t."X_7" < 1.006853) THEN CASE WHEN (t."X_5" < -0.008973) THEN CASE WHEN (t."X_2" < -0.001365) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_2" < 0.282937) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_3" < -0.563521) THEN CASE WHEN (t."X_4" < -0.230470) THEN 59 ELSE 60 END ELSE 42 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 0.838583) THEN CASE WHEN (t."X_0" < 0.834960) THEN CASE WHEN (t."X_7" < 0.479871) THEN 43 ELSE CASE WHEN (t."X_6" < -1.062292) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_3" < -0.563521) THEN 45 ELSE 46 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 12 AS nid,  -0.046437 AS "P_0", -0.147511 AS "P_1", -0.080419 AS "P_2", 0.173495 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.105811 AS "P_0", 0.055640 AS "P_1", -0.104282 AS "P_2", -0.124186 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.139072 AS "P_0", -0.157025 AS "P_1", 0.226067 AS "P_2", -0.101648 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.149783 AS "P_0", -0.092331 AS "P_1", -0.162195 AS "P_2", 0.244251 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.018648 AS "P_0", -0.153949 AS "P_1", 0.179959 AS "P_2", -0.150660 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  0.211402 AS "P_0", -0.154628 AS "P_1", -0.057597 AS "P_2", -0.134818 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  0.215170 AS "P_0", -0.156097 AS "P_1", -0.110293 AS "P_2", -0.082666 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.045082 AS "P_0", -0.092278 AS "P_1", -0.103630 AS "P_2", 0.162113 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.102728 AS "P_0", -0.080720 AS "P_1", -0.105518 AS "P_2", 0.207905 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  0.113402 AS "P_0", -0.134945 AS "P_1", 0.010630 AS "P_2", -0.027052 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.013985 AS "P_0", 0.013642 AS "P_1", 0.094975 AS "P_2", -0.156687 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.163006 AS "P_0", -0.028361 AS "P_1", -0.018761 AS "P_2", -0.146892 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.159360 AS "P_0", -0.140529 AS "P_1", 0.281271 AS "P_2", -0.158619 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.125477 AS "P_0", 0.057962 AS "P_1", -0.052313 AS "P_2", 0.078812 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.160447 AS "P_0", 0.244487 AS "P_1", -0.159226 AS "P_2", -0.158170 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.156205 AS "P_0", 0.216121 AS "P_1", -0.054941 AS "P_2", -0.149979 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.159404 AS "P_0", -0.151173 AS "P_1", 0.034930 AS "P_2", 0.155572 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.112204 AS "P_0", -0.144211 AS "P_1", 0.193421 AS "P_2", -0.037755 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.095263 AS "P_0", -0.146953 AS "P_1", -0.156783 AS "P_2", 0.232036 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.129411 AS "P_0", -0.146943 AS "P_1", -0.080883 AS "P_2", 0.204861 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.211609 AS "P_0", -0.094623 AS "P_1", -0.105627 AS "P_2", -0.169199 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.015551 AS "P_0", 0.093016 AS "P_1", 0.027305 AS "P_2", -0.146026 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.143824 AS "P_0", -0.166996 AS "P_1", -0.092050 AS "P_2", 0.249565 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.011138 AS "P_0", 0.037054 AS "P_1", -0.168130 AS "P_2", 0.062874 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.015316 AS "P_0", -0.131667 AS "P_1", 0.197525 AS "P_2", -0.113884 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.044492 AS "P_0", -0.074473 AS "P_1", 0.099529 AS "P_2", -0.109716 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  0.052293 AS "P_0", 0.025552 AS "P_1", 0.014408 AS "P_2", -0.106969 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.089151 AS "P_0", -0.077626 AS "P_1", -0.067686 AS "P_2", 0.071035 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.057472 AS "P_0", -0.082591 AS "P_1", 0.168588 AS "P_2", -0.151598 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.124405 AS "P_0", 0.166017 AS "P_1", 0.036309 AS "P_2", -0.152237 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.023992 AS "P_0", 0.103227 AS "P_1", -0.134511 AS "P_2", -0.078515 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.149982 AS "P_0", 0.177591 AS "P_1", -0.042797 AS "P_2", -0.148604 AS "P_3"
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
    CASE WHEN (t."X_8" < 0.485588) THEN CASE WHEN (t."X_3" < -0.925313) THEN CASE WHEN (t."X_0" < -0.097847) THEN CASE WHEN (t."X_8" < -0.393650) THEN CASE WHEN (t."X_6" < 0.523451) THEN CASE WHEN (t."X_3" < -1.665121) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_4" < -0.230470) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_9" < 0.270104) THEN CASE WHEN (t."X_0" < -1.300768) THEN 45 ELSE 46 END ELSE 34 END END ELSE CASE WHEN (t."X_7" < -0.503622) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_7" < 1.006853) THEN CASE WHEN (t."X_0" < 0.834960) THEN CASE WHEN (t."X_8" < -1.368840) THEN CASE WHEN (t."X_7" < -1.131669) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_0" < -1.300768) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_8" < -0.393650) THEN CASE WHEN (t."X_3" < 0.838583) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_3" < 0.838583) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_5" < -0.008973) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_0" < -0.466241) THEN CASE WHEN (t."X_6" < -2.188066) THEN CASE WHEN (t."X_3" < -1.665121) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_7" < 0.479871) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_3" < 0.280926) THEN CASE WHEN (t."X_7" < -1.131669) THEN 27 ELSE CASE WHEN (t."X_8" < 0.885852) THEN 39 ELSE CASE WHEN (t."X_1" < 0.304038) THEN 55 ELSE 56 END END END ELSE CASE WHEN (t."X_6" < -1.062292) THEN 29 ELSE 30 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 17 AS nid,  -0.138533 AS "P_0", -0.126030 AS "P_1", 0.216926 AS "P_2", -0.090289 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.116603 AS "P_0", 0.084635 AS "P_1", 0.041503 AS "P_2", -0.064792 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.151818 AS "P_0", -0.064994 AS "P_1", 0.206817 AS "P_2", -0.115495 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.148821 AS "P_0", 0.014861 AS "P_1", 0.099882 AS "P_2", -0.029898 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.070546 AS "P_0", -0.145778 AS "P_1", -0.151553 AS "P_2", 0.128489 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.109762 AS "P_0", -0.081307 AS "P_1", -0.152167 AS "P_2", 0.183907 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.161409 AS "P_0", 0.126431 AS "P_1", -0.152105 AS "P_2", 0.079464 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.169147 AS "P_0", 0.235069 AS "P_1", -0.139962 AS "P_2", -0.154630 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  0.117108 AS "P_0", -0.089679 AS "P_1", -0.009896 AS "P_2", -0.054696 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  0.117725 AS "P_0", 0.001577 AS "P_1", -0.075956 AS "P_2", -0.155533 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  0.195478 AS "P_0", -0.156669 AS "P_1", -0.044311 AS "P_2", -0.153015 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.064141 AS "P_0", 0.094564 AS "P_1", -0.004460 AS "P_2", -0.049437 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.100121 AS "P_0", 0.101340 AS "P_1", 0.035492 AS "P_2", -0.102263 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.005399 AS "P_0", -0.101600 AS "P_1", 0.124775 AS "P_2", -0.149890 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.161345 AS "P_0", -0.144293 AS "P_1", -0.002748 AS "P_2", -0.149958 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.080380 AS "P_0", -0.148295 AS "P_1", 0.188807 AS "P_2", -0.140449 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.075783 AS "P_0", -0.029857 AS "P_1", 0.138565 AS "P_2", -0.141974 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.206383 AS "P_0", 0.028876 AS "P_1", -0.158988 AS "P_2", -0.123219 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.132864 AS "P_0", -0.027115 AS "P_1", 0.014518 AS "P_2", -0.125845 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.191491 AS "P_0", -0.147085 AS "P_1", -0.081232 AS "P_2", -0.105464 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  0.043552 AS "P_0", -0.146967 AS "P_1", -0.066150 AS "P_2", 0.109527 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.108992 AS "P_0", -0.067587 AS "P_1", 0.067762 AS "P_2", 0.082697 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.038347 AS "P_0", -0.097430 AS "P_1", -0.161661 AS "P_2", 0.186085 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.118642 AS "P_0", -0.137077 AS "P_1", 0.124917 AS "P_2", 0.021613 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.066904 AS "P_0", -0.154164 AS "P_1", -0.079932 AS "P_2", 0.156056 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.032486 AS "P_0", -0.110901 AS "P_1", 0.033010 AS "P_2", 0.019204 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.302628 AS "P_0", -0.159054 AS "P_1", -0.109671 AS "P_2", -0.172466 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.169658 AS "P_0", 0.240086 AS "P_1", -0.106283 AS "P_2", -0.162475 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.005616 AS "P_0", 0.112051 AS "P_1", -0.103391 AS "P_2", -0.092783 AS "P_3"
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
   0.250000 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.249023 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.251953 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.249023 + SUM(t."P_3") AS "Score_3",
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
   GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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