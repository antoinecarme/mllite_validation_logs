WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 0.355557) THEN CASE WHEN (model_input."X_7" <= -0.922198) THEN CASE WHEN (model_input."X_4" <= -0.842804) THEN 11 ELSE CASE WHEN (model_input."X_2" <= 0.004638) THEN CASE WHEN (model_input."X_5" <= 1.681046) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_4" <= 1.064909) THEN 43 ELSE 44 END END END ELSE CASE WHEN (model_input."X_3" <= -0.007593) THEN CASE WHEN (model_input."X_5" <= -2.141015) THEN 21 ELSE CASE WHEN (model_input."X_0" <= 0.091880) THEN CASE WHEN (model_input."X_5" <= 0.558506) THEN 47 ELSE 48 END ELSE 34 END END ELSE CASE WHEN (model_input."X_7" <= -0.417358) THEN CASE WHEN (model_input."X_2" <= 0.701522) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_9" <= 0.574193) THEN CASE WHEN (model_input."X_6" <= 1.174559) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_5" <= -0.086397) THEN 41 ELSE 42 END END END END END ELSE CASE WHEN (model_input."X_2" <= 1.963608) THEN CASE WHEN (model_input."X_0" <= 1.290527) THEN CASE WHEN (model_input."X_7" <= 1.471791) THEN CASE WHEN (model_input."X_3" <= 0.295581) THEN CASE WHEN (model_input."X_9" <= 0.300822) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_3" <= 0.577023) THEN 27 ELSE 28 END END ELSE 20 END ELSE CASE WHEN (model_input."X_2" <= 0.300380) THEN CASE WHEN (model_input."X_5" <= 1.238986) THEN CASE WHEN (model_input."X_9" <= 0.576145) THEN 45 ELSE 46 END ELSE 36 END ELSE 18 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 33.901814 AS "E"
    UNION ALL
    SELECT 1 AS nid, -49.361359 AS "E"
    UNION ALL
    SELECT 2 AS nid, 140.954483 AS "E"
    UNION ALL
    SELECT 3 AS nid, 111.061905 AS "E"
    UNION ALL
    SELECT 4 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 5 AS nid, -156.206924 AS "E"
    UNION ALL
    SELECT 6 AS nid, 18.631275 AS "E"
    UNION ALL
    SELECT 7 AS nid, -54.884426 AS "E"
    UNION ALL
    SELECT 8 AS nid, 69.526764 AS "E"
    UNION ALL
    SELECT 9 AS nid, -45.133228 AS "E"
    UNION ALL
    SELECT 10 AS nid, 103.924767 AS "E"
    UNION ALL
    SELECT 11 AS nid, -251.819077 AS "E"
    UNION ALL
    SELECT 12 AS nid, -130.130875 AS "E"
    UNION ALL
    SELECT 13 AS nid, 81.240158 AS "E"
    UNION ALL
    SELECT 14 AS nid, 156.855499 AS "E"
    UNION ALL
    SELECT 15 AS nid, 96.108437 AS "E"
    UNION ALL
    SELECT 16 AS nid, 170.875702 AS "E"
    UNION ALL
    SELECT 17 AS nid, 150.342941 AS "E"
    UNION ALL
    SELECT 18 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 19 AS nid, 102.482567 AS "E"
    UNION ALL
    SELECT 20 AS nid, -24.999844 AS "E"
    UNION ALL
    SELECT 21 AS nid, -131.726334 AS "E"
    UNION ALL
    SELECT 22 AS nid, -45.279182 AS "E"
    UNION ALL
    SELECT 23 AS nid, -62.351631 AS "E"
    UNION ALL
    SELECT 24 AS nid, -10.696431 AS "E"
    UNION ALL
    SELECT 25 AS nid, 110.416153 AS "E"
    UNION ALL
    SELECT 26 AS nid, 35.047070 AS "E"
    UNION ALL
    SELECT 27 AS nid, 58.728134 AS "E"
    UNION ALL
    SELECT 28 AS nid, 11.366008 AS "E"
    UNION ALL
    SELECT 29 AS nid, -110.578651 AS "E"
    UNION ALL
    SELECT 30 AS nid, -153.593597 AS "E"
    UNION ALL
    SELECT 31 AS nid, 99.577248 AS "E"
    UNION ALL
    SELECT 32 AS nid, 136.429520 AS "E"
    UNION ALL
    SELECT 33 AS nid, -29.119684 AS "E"
    UNION ALL
    SELECT 34 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 35 AS nid, 141.994156 AS "E"
    UNION ALL
    SELECT 36 AS nid, 175.389267 AS "E"
    UNION ALL
    SELECT 37 AS nid, 73.871231 AS "E"
    UNION ALL
    SELECT 38 AS nid, 99.662483 AS "E"
    UNION ALL
    SELECT 39 AS nid, -126.874908 AS "E"
    UNION ALL
    SELECT 40 AS nid, -102.430511 AS "E"
    UNION ALL
    SELECT 41 AS nid, 141.067276 AS "E"
    UNION ALL
    SELECT 42 AS nid, 164.749603 AS "E"
    UNION ALL
    SELECT 43 AS nid, -175.497147 AS "E"
    UNION ALL
    SELECT 44 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 45 AS nid, 146.308655 AS "E"
    UNION ALL
    SELECT 46 AS nid, 139.836929 AS "E"
    UNION ALL
    SELECT 47 AS nid, -27.769781 AS "E"
    UNION ALL
    SELECT 48 AS nid, -33.169388 AS "E"
  ) AS "Values"
 ),
"DT_Output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_1" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_6" <= -0.298880) THEN CASE WHEN (model_input."X_0" <= 0.522876) THEN CASE WHEN (model_input."X_3" <= 0.274391) THEN CASE WHEN (model_input."X_5" <= -0.030243) THEN CASE WHEN (model_input."X_7" <= -0.271713) THEN CASE WHEN (model_input."X_3" <= -0.724715) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_2" <= -0.222634) THEN 33 ELSE 34 END END ELSE CASE WHEN (model_input."X_8" <= -1.246674) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_8" <= -0.287970) THEN 49 ELSE 50 END END ELSE CASE WHEN (model_input."X_1" <= 0.186173) THEN CASE WHEN (model_input."X_5" <= 0.290617) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_8" <= 0.670852) THEN 27 ELSE 28 END END END ELSE CASE WHEN (model_input."X_8" <= -0.254348) THEN CASE WHEN (model_input."X_2" <= -1.950910) THEN 9 ELSE CASE WHEN (model_input."X_7" <= -1.740068) THEN 11 ELSE CASE WHEN (model_input."X_4" <= 0.287630) THEN CASE WHEN (model_input."X_1" <= -0.326099) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_6" <= 0.619361) THEN 21 ELSE 22 END END END END ELSE CASE WHEN (model_input."X_1" <= 1.881772) THEN CASE WHEN (model_input."X_9" <= 0.402353) THEN CASE WHEN (model_input."X_4" <= -0.623786) THEN CASE WHEN (model_input."X_8" <= 0.257685) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_4" <= 0.189558) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_5" <= 1.692046) THEN CASE WHEN (model_input."X_8" <= 1.448655) THEN 43 ELSE 44 END ELSE 36 END END ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 20.702278 AS "E"
    UNION ALL
    SELECT 1 AS nid, -102.612816 AS "E"
    UNION ALL
    SELECT 2 AS nid, 76.754601 AS "E"
    UNION ALL
    SELECT 3 AS nid, -155.311096 AS "E"
    UNION ALL
    SELECT 4 AS nid, 55.482056 AS "E"
    UNION ALL
    SELECT 5 AS nid, -102.811722 AS "E"
    UNION ALL
    SELECT 6 AS nid, -260.309875 AS "E"
    UNION ALL
    SELECT 7 AS nid, -17.812895 AS "E"
    UNION ALL
    SELECT 8 AS nid, 130.793182 AS "E"
    UNION ALL
    SELECT 9 AS nid, -346.413483 AS "E"
    UNION ALL
    SELECT 10 AS nid, 4.093810 AS "E"
    UNION ALL
    SELECT 11 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 12 AS nid, 33.325199 AS "E"
    UNION ALL
    SELECT 13 AS nid, 110.849640 AS "E"
    UNION ALL
    SELECT 14 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 15 AS nid, 118.314697 AS "E"
    UNION ALL
    SELECT 16 AS nid, -4.447906 AS "E"
    UNION ALL
    SELECT 17 AS nid, -12.638218 AS "E"
    UNION ALL
    SELECT 18 AS nid, 100.895576 AS "E"
    UNION ALL
    SELECT 19 AS nid, -134.842392 AS "E"
    UNION ALL
    SELECT 20 AS nid, -28.073450 AS "E"
    UNION ALL
    SELECT 21 AS nid, -46.304359 AS "E"
    UNION ALL
    SELECT 22 AS nid, 47.872658 AS "E"
    UNION ALL
    SELECT 23 AS nid, -179.491501 AS "E"
    UNION ALL
    SELECT 24 AS nid, -101.355576 AS "E"
    UNION ALL
    SELECT 25 AS nid, 88.307419 AS "E"
    UNION ALL
    SELECT 26 AS nid, 172.035614 AS "E"
    UNION ALL
    SELECT 27 AS nid, 81.424904 AS "E"
    UNION ALL
    SELECT 28 AS nid, 139.836929 AS "E"
    UNION ALL
    SELECT 29 AS nid, 92.941422 AS "E"
    UNION ALL
    SELECT 30 AS nid, 143.687958 AS "E"
    UNION ALL
    SELECT 31 AS nid, -161.809143 AS "E"
    UNION ALL
    SELECT 32 AS nid, -214.856171 AS "E"
    UNION ALL
    SELECT 33 AS nid, -114.661217 AS "E"
    UNION ALL
    SELECT 34 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 35 AS nid, 180.251724 AS "E"
    UNION ALL
    SELECT 36 AS nid, 122.738846 AS "E"
    UNION ALL
    SELECT 37 AS nid, 53.577301 AS "E"
    UNION ALL
    SELECT 38 AS nid, 94.819313 AS "E"
    UNION ALL
    SELECT 39 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 40 AS nid, 30.267570 AS "E"
    UNION ALL
    SELECT 41 AS nid, -24.999844 AS "E"
    UNION ALL
    SELECT 42 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 43 AS nid, 175.022980 AS "E"
    UNION ALL
    SELECT 44 AS nid, 206.395447 AS "E"
    UNION ALL
    SELECT 45 AS nid, 85.374649 AS "E"
    UNION ALL
    SELECT 46 AS nid, 104.263977 AS "E"
    UNION ALL
    SELECT 47 AS nid, -26.363354 AS "E"
    UNION ALL
    SELECT 48 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 49 AS nid, -261.114166 AS "E"
    UNION ALL
    SELECT 50 AS nid, -259.773651 AS "E"
  ) AS "Values"
 ),
"DT_Output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_2" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= -1.292543) THEN CASE WHEN (model_input."X_5" <= -0.713527) THEN 3 ELSE CASE WHEN (model_input."X_1" <= -0.999638) THEN 25 ELSE CASE WHEN (model_input."X_3" <= -0.254776) THEN 33 ELSE 34 END END END ELSE CASE WHEN (model_input."X_1" <= 2.221136) THEN CASE WHEN (model_input."X_7" <= -0.213823) THEN CASE WHEN (model_input."X_2" <= 0.540213) THEN CASE WHEN (model_input."X_6" <= -0.597812) THEN CASE WHEN (model_input."X_8" <= -0.376571) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= -2.025746) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= -1.158851) THEN CASE WHEN (model_input."X_9" <= -1.814140) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_7" <= -1.198430) THEN 29 ELSE 30 END END END ELSE CASE WHEN (model_input."X_5" <= -1.608550) THEN CASE WHEN (model_input."X_5" <= -2.456165) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_7" <= 1.848700) THEN CASE WHEN (model_input."X_6" <= -0.893773) THEN 23 ELSE 24 END ELSE 22 END END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 2.226998 AS "E"
    UNION ALL
    SELECT 1 AS nid, -183.229584 AS "E"
    UNION ALL
    SELECT 2 AS nid, 25.002369 AS "E"
    UNION ALL
    SELECT 3 AS nid, -111.243858 AS "E"
    UNION ALL
    SELECT 4 AS nid, -237.218872 AS "E"
    UNION ALL
    SELECT 5 AS nid, 18.483492 AS "E"
    UNION ALL
    SELECT 6 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 7 AS nid, -28.703167 AS "E"
    UNION ALL
    SELECT 8 AS nid, 69.165459 AS "E"
    UNION ALL
    SELECT 9 AS nid, -123.193771 AS "E"
    UNION ALL
    SELECT 10 AS nid, 84.554207 AS "E"
    UNION ALL
    SELECT 11 AS nid, -64.389076 AS "E"
    UNION ALL
    SELECT 12 AS nid, 50.598866 AS "E"
    UNION ALL
    SELECT 13 AS nid, -159.166992 AS "E"
    UNION ALL
    SELECT 14 AS nid, -32.796440 AS "E"
    UNION ALL
    SELECT 15 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 16 AS nid, -183.599091 AS "E"
    UNION ALL
    SELECT 17 AS nid, -1.486135 AS "E"
    UNION ALL
    SELECT 18 AS nid, 76.641365 AS "E"
    UNION ALL
    SELECT 19 AS nid, 58.728134 AS "E"
    UNION ALL
    SELECT 20 AS nid, -46.877144 AS "E"
    UNION ALL
    SELECT 21 AS nid, 77.535339 AS "E"
    UNION ALL
    SELECT 22 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 23 AS nid, -6.457405 AS "E"
    UNION ALL
    SELECT 24 AS nid, 94.333893 AS "E"
    UNION ALL
    SELECT 25 AS nid, -261.114166 AS "E"
    UNION ALL
    SELECT 26 AS nid, -213.323593 AS "E"
    UNION ALL
    SELECT 27 AS nid, 11.366008 AS "E"
    UNION ALL
    SELECT 28 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 29 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 30 AS nid, 70.621719 AS "E"
    UNION ALL
    SELECT 31 AS nid, -131.726334 AS "E"
    UNION ALL
    SELECT 32 AS nid, -114.661209 AS "E"
    UNION ALL
    SELECT 33 AS nid, -211.791016 AS "E"
    UNION ALL
    SELECT 34 AS nid, -214.856171 AS "E"
  ) AS "Values"
 ),
"DT_Output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_3" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_6" <= -0.282896) THEN CASE WHEN (model_input."X_0" <= 0.522876) THEN CASE WHEN (model_input."X_0" <= -0.822142) THEN CASE WHEN (model_input."X_8" <= 0.489605) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_5" <= -0.282176) THEN CASE WHEN (model_input."X_7" <= 0.434838) THEN CASE WHEN (model_input."X_0" <= 0.058091) THEN 61 ELSE 62 END ELSE 50 END ELSE CASE WHEN (model_input."X_9" <= 1.138447) THEN CASE WHEN (model_input."X_2" <= -0.014246) THEN 45 ELSE 46 END ELSE 26 END END END ELSE CASE WHEN (model_input."X_4" <= 0.942619) THEN CASE WHEN (model_input."X_9" <= -0.051959) THEN 21 ELSE CASE WHEN (model_input."X_6" <= -1.057283) THEN 53 ELSE 54 END END ELSE 6 END END ELSE CASE WHEN (model_input."X_0" <= -0.130556) THEN CASE WHEN (model_input."X_7" <= -0.262498) THEN CASE WHEN (model_input."X_5" <= -0.729852) THEN CASE WHEN (model_input."X_0" <= -0.183178) THEN 59 ELSE 60 END ELSE CASE WHEN (model_input."X_9" <= -0.950757) THEN 43 ELSE 44 END END ELSE CASE WHEN (model_input."X_5" <= -1.921794) THEN 15 ELSE CASE WHEN (model_input."X_9" <= 0.473570) THEN CASE WHEN (model_input."X_7" <= 0.131774) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_9" <= 1.502033) THEN 55 ELSE 56 END END END END ELSE CASE WHEN (model_input."X_6" <= 1.694448) THEN CASE WHEN (model_input."X_0" <= 0.509019) THEN CASE WHEN (model_input."X_1" <= -1.241061) THEN 37 ELSE CASE WHEN (model_input."X_9" <= -0.324756) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_9" <= 0.449334) THEN CASE WHEN (model_input."X_5" <= -0.284277) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_6" <= 0.057341) THEN 51 ELSE 52 END END END ELSE CASE WHEN (model_input."X_8" <= 0.404852) THEN CASE WHEN (model_input."X_9" <= -0.017210) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_8" <= 1.044912) THEN 33 ELSE 34 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 24.952421 AS "E"
    UNION ALL
    SELECT 1 AS nid, -102.170143 AS "E"
    UNION ALL
    SELECT 2 AS nid, 96.265099 AS "E"
    UNION ALL
    SELECT 3 AS nid, -152.249649 AS "E"
    UNION ALL
    SELECT 4 AS nid, 78.116020 AS "E"
    UNION ALL
    SELECT 5 AS nid, 34.393341 AS "E"
    UNION ALL
    SELECT 6 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 7 AS nid, 23.105442 AS "E"
    UNION ALL
    SELECT 8 AS nid, 153.520462 AS "E"
    UNION ALL
    SELECT 9 AS nid, -79.850395 AS "E"
    UNION ALL
    SELECT 10 AS nid, 74.583359 AS "E"
    UNION ALL
    SELECT 11 AS nid, 113.687462 AS "E"
    UNION ALL
    SELECT 12 AS nid, 266.380646 AS "E"
    UNION ALL
    SELECT 13 AS nid, 369.049957 AS "E"
    UNION ALL
    SELECT 14 AS nid, 163.711288 AS "E"
    UNION ALL
    SELECT 15 AS nid, -131.726334 AS "E"
    UNION ALL
    SELECT 16 AS nid, 93.338791 AS "E"
    UNION ALL
    SELECT 17 AS nid, -36.268604 AS "E"
    UNION ALL
    SELECT 18 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 19 AS nid, -228.415283 AS "E"
    UNION ALL
    SELECT 20 AS nid, -122.955170 AS "E"
    UNION ALL
    SELECT 21 AS nid, 81.424904 AS "E"
    UNION ALL
    SELECT 22 AS nid, -12.638218 AS "E"
    UNION ALL
    SELECT 23 AS nid, -153.492096 AS "E"
    UNION ALL
    SELECT 24 AS nid, -74.096069 AS "E"
    UNION ALL
    SELECT 25 AS nid, -38.910175 AS "E"
    UNION ALL
    SELECT 26 AS nid, -126.874908 AS "E"
    UNION ALL
    SELECT 27 AS nid, 72.480316 AS "E"
    UNION ALL
    SELECT 28 AS nid, 148.961380 AS "E"
    UNION ALL
    SELECT 29 AS nid, 68.119453 AS "E"
    UNION ALL
    SELECT 30 AS nid, 138.542740 AS "E"
    UNION ALL
    SELECT 31 AS nid, 113.507927 AS "E"
    UNION ALL
    SELECT 32 AS nid, 182.353683 AS "E"
    UNION ALL
    SELECT 33 AS nid, 122.738846 AS "E"
    UNION ALL
    SELECT 34 AS nid, 184.197495 AS "E"
    UNION ALL
    SELECT 35 AS nid, 99.662483 AS "E"
    UNION ALL
    SELECT 36 AS nid, 45.298149 AS "E"
    UNION ALL
    SELECT 37 AS nid, 11.366008 AS "E"
    UNION ALL
    SELECT 38 AS nid, 79.470139 AS "E"
    UNION ALL
    SELECT 39 AS nid, 103.236122 AS "E"
    UNION ALL
    SELECT 40 AS nid, 63.626148 AS "E"
    UNION ALL
    SELECT 41 AS nid, -212.812744 AS "E"
    UNION ALL
    SELECT 42 AS nid, -251.819077 AS "E"
    UNION ALL
    SELECT 43 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 44 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 45 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 46 AS nid, -27.645927 AS "E"
    UNION ALL
    SELECT 47 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 48 AS nid, 358.545349 AS "E"
    UNION ALL
    SELECT 49 AS nid, -159.039383 AS "E"
    UNION ALL
    SELECT 50 AS nid, -114.661209 AS "E"
    UNION ALL
    SELECT 51 AS nid, 174.339767 AS "E"
    UNION ALL
    SELECT 52 AS nid, 206.395447 AS "E"
    UNION ALL
    SELECT 53 AS nid, -24.999844 AS "E"
    UNION ALL
    SELECT 54 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 55 AS nid, 141.067276 AS "E"
    UNION ALL
    SELECT 56 AS nid, 164.749603 AS "E"
    UNION ALL
    SELECT 57 AS nid, 109.664116 AS "E"
    UNION ALL
    SELECT 58 AS nid, 136.570740 AS "E"
    UNION ALL
    SELECT 59 AS nid, -45.346786 AS "E"
    UNION ALL
    SELECT 60 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 61 AS nid, -172.787689 AS "E"
    UNION ALL
    SELECT 62 AS nid, -153.540070 AS "E"
  ) AS "Values"
 ),
"DT_Output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_4" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= -0.243413) THEN CASE WHEN (model_input."X_9" <= 0.511878) THEN CASE WHEN (model_input."X_7" <= -0.978297) THEN CASE WHEN (model_input."X_9" <= -0.181523) THEN CASE WHEN (model_input."X_9" <= -0.968134) THEN 39 ELSE CASE WHEN (model_input."X_2" <= -0.223071) THEN 47 ELSE 48 END END ELSE 22 END ELSE CASE WHEN (model_input."X_5" <= -2.124424) THEN CASE WHEN (model_input."X_5" <= -2.456165) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_5" <= -0.719374) THEN CASE WHEN (model_input."X_2" <= -0.396093) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_2" <= 0.291730) THEN 27 ELSE 28 END END END END ELSE CASE WHEN (model_input."X_8" <= -0.956029) THEN 19 ELSE CASE WHEN (model_input."X_2" <= -0.916566) THEN 31 ELSE 32 END END END ELSE CASE WHEN (model_input."X_2" <= 1.963608) THEN CASE WHEN (model_input."X_4" <= 0.018480) THEN CASE WHEN (model_input."X_9" <= 0.482680) THEN CASE WHEN (model_input."X_6" <= 0.293416) THEN CASE WHEN (model_input."X_6" <= -0.234003) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_4" <= -0.214777) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_7" <= 0.241529) THEN CASE WHEN (model_input."X_9" <= 1.298816) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_5" <= 0.716327) THEN 43 ELSE 44 END END END ELSE CASE WHEN (model_input."X_6" <= -0.007041) THEN CASE WHEN (model_input."X_2" <= -0.666737) THEN CASE WHEN (model_input."X_6" <= -0.495197) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_9" <= 0.903018) THEN 33 ELSE 34 END END ELSE CASE WHEN (model_input."X_7" <= -0.295320) THEN CASE WHEN (model_input."X_5" <= -0.668347) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_8" <= 1.227234) THEN 35 ELSE 36 END END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 18.753826 AS "E"
    UNION ALL
    SELECT 1 AS nid, -115.408844 AS "E"
    UNION ALL
    SELECT 2 AS nid, 104.755562 AS "E"
    UNION ALL
    SELECT 3 AS nid, 72.149406 AS "E"
    UNION ALL
    SELECT 4 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 5 AS nid, -62.450752 AS "E"
    UNION ALL
    SELECT 6 AS nid, -251.586777 AS "E"
    UNION ALL
    SELECT 7 AS nid, -188.981308 AS "E"
    UNION ALL
    SELECT 8 AS nid, -26.299164 AS "E"
    UNION ALL
    SELECT 9 AS nid, 116.457718 AS "E"
    UNION ALL
    SELECT 10 AS nid, -12.774852 AS "E"
    UNION ALL
    SELECT 11 AS nid, -99.189835 AS "E"
    UNION ALL
    SELECT 12 AS nid, 48.950134 AS "E"
    UNION ALL
    SELECT 13 AS nid, -21.893471 AS "E"
    UNION ALL
    SELECT 14 AS nid, 102.082840 AS "E"
    UNION ALL
    SELECT 15 AS nid, -118.927490 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.752163 AS "E"
    UNION ALL
    SELECT 17 AS nid, -136.503555 AS "E"
    UNION ALL
    SELECT 18 AS nid, -43.219261 AS "E"
    UNION ALL
    SELECT 19 AS nid, -346.413483 AS "E"
    UNION ALL
    SELECT 20 AS nid, -235.782349 AS "E"
    UNION ALL
    SELECT 21 AS nid, -168.035385 AS "E"
    UNION ALL
    SELECT 22 AS nid, -251.819077 AS "E"
    UNION ALL
    SELECT 23 AS nid, 97.188324 AS "E"
    UNION ALL
    SELECT 24 AS nid, 160.502045 AS "E"
    UNION ALL
    SELECT 25 AS nid, 48.971371 AS "E"
    UNION ALL
    SELECT 26 AS nid, -5.627497 AS "E"
    UNION ALL
    SELECT 27 AS nid, -31.048944 AS "E"
    UNION ALL
    SELECT 28 AS nid, 28.267767 AS "E"
    UNION ALL
    SELECT 29 AS nid, -153.540070 AS "E"
    UNION ALL
    SELECT 30 AS nid, -102.430511 AS "E"
    UNION ALL
    SELECT 31 AS nid, -259.773651 AS "E"
    UNION ALL
    SELECT 32 AS nid, -211.791016 AS "E"
    UNION ALL
    SELECT 33 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 34 AS nid, -24.999844 AS "E"
    UNION ALL
    SELECT 35 AS nid, 111.826454 AS "E"
    UNION ALL
    SELECT 36 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 37 AS nid, 83.038361 AS "E"
    UNION ALL
    SELECT 38 AS nid, 111.338303 AS "E"
    UNION ALL
    SELECT 39 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 40 AS nid, -177.994232 AS "E"
    UNION ALL
    SELECT 41 AS nid, 140.452103 AS "E"
    UNION ALL
    SELECT 42 AS nid, 168.522003 AS "E"
    UNION ALL
    SELECT 43 AS nid, 175.229919 AS "E"
    UNION ALL
    SELECT 44 AS nid, 141.690338 AS "E"
    UNION ALL
    SELECT 45 AS nid, 107.733665 AS "E"
    UNION ALL
    SELECT 46 AS nid, 136.570740 AS "E"
    UNION ALL
    SELECT 47 AS nid, -170.078217 AS "E"
    UNION ALL
    SELECT 48 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 49 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 50 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 51 AS nid, -131.726334 AS "E"
    UNION ALL
    SELECT 52 AS nid, -114.661217 AS "E"
    UNION ALL
    SELECT 53 AS nid, 77.008301 AS "E"
    UNION ALL
    SELECT 54 AS nid, 89.068405 AS "E"
    UNION ALL
    SELECT 55 AS nid, 141.067276 AS "E"
    UNION ALL
    SELECT 56 AS nid, 139.836929 AS "E"
    UNION ALL
    SELECT 57 AS nid, 48.277954 AS "E"
    UNION ALL
    SELECT 58 AS nid, 49.318077 AS "E"
  ) AS "Values"
 ),
"DT_Output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
