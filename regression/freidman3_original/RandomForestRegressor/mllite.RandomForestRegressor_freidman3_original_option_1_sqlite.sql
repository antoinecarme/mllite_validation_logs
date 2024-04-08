WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.095687) THEN CASE WHEN (model_input."X_0" <= 73.344742) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 844.359009) THEN CASE WHEN (model_input."X_3" <= 3.284284) THEN CASE WHEN (model_input."X_1" <= 516.203247) THEN CASE WHEN (model_input."X_0" <= 61.852608) THEN 13 ELSE CASE WHEN (model_input."X_2" <= 0.408432) THEN 29 ELSE 30 END END ELSE CASE WHEN (model_input."X_3" <= 1.956422) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_2" <= 0.192716) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 32.080063) THEN CASE WHEN (model_input."X_1" <= 465.978821) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_1" <= 287.229309) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (model_input."X_0" <= 78.891655) THEN CASE WHEN (model_input."X_0" <= 37.477390) THEN CASE WHEN (model_input."X_1" <= 1392.362305) THEN CASE WHEN (model_input."X_2" <= 0.335146) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_3" <= 6.058321) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_2" <= 0.474312) THEN CASE WHEN (model_input."X_2" <= 0.326937) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_0" <= 64.775703) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_2" <= 0.315762) THEN 23 ELSE 24 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.359636 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.553683 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.411080 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.882915 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.224450 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.349357 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.481220 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.211790 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.388157 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.096853 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.349715 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.438457 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.290553 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.193177 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.048692 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.185076 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.405081 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.492725 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.366517 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.271738 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.390212 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.495740 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.367959 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.447731 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.468457 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.535193 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.529887 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.471986 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.022429 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.074955 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.515818 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.553334 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.453876 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.481645 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.511054 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.470951 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.540122 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.566545 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.503018 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.521304 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.443506 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.460097 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.027524) THEN 1 ELSE CASE WHEN (model_input."X_0" <= 96.770569) THEN CASE WHEN (model_input."X_2" <= 0.355012) THEN CASE WHEN (model_input."X_0" <= 25.328228) THEN CASE WHEN (model_input."X_2" <= 0.154014) THEN 15 ELSE CASE WHEN (model_input."X_1" <= 919.819336) THEN 29 ELSE 30 END END ELSE CASE WHEN (model_input."X_1" <= 584.688721) THEN CASE WHEN (model_input."X_0" <= 42.655708) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_2" <= 0.072948) THEN 11 ELSE 12 END END END ELSE CASE WHEN (model_input."X_1" <= 480.254578) THEN CASE WHEN (model_input."X_0" <= 52.844711) THEN CASE WHEN (model_input."X_1" <= 369.109253) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_1" <= 347.523682) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_0" <= 39.541840) THEN CASE WHEN (model_input."X_0" <= 11.210439) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_1" <= 704.013062) THEN 27 ELSE 28 END END END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.345667 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.372693 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.391833 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.264309 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.455595 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.442208 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.183445 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.028685 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.271880 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.999699 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.346111 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.227329 AS "E"
    UNION ALL
    SELECT 14 AS nid, 0.962470 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.297325 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.478429 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.337527 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.480100 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.453014 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.271534 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.232010 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.370345 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.512592 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.393436 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.536537 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.451075 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.388649 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.472684 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.445153 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.511704 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.564603 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.518677 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.044032) THEN 1 ELSE CASE WHEN (model_input."X_1" <= 729.039673) THEN CASE WHEN (model_input."X_0" <= 42.212376) THEN CASE WHEN (model_input."X_2" <= 0.179540) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 9.236321) THEN 21 ELSE CASE WHEN (model_input."X_1" <= 528.296021) THEN 23 ELSE 24 END END END ELSE CASE WHEN (model_input."X_2" <= 0.591877) THEN CASE WHEN (model_input."X_0" <= 73.048492) THEN CASE WHEN (model_input."X_3" <= 3.061430) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_1" <= 442.804993) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 347.523682) THEN 19 ELSE CASE WHEN (model_input."X_2" <= 0.650670) THEN 25 ELSE 26 END END END END ELSE CASE WHEN (model_input."X_2" <= 0.130403) THEN 13 ELSE CASE WHEN (model_input."X_0" <= 22.541237) THEN CASE WHEN (model_input."X_0" <= 10.844840) THEN CASE WHEN (model_input."X_0" <= 4.838325) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_2" <= 0.227662) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_2" <= 0.430963) THEN CASE WHEN (model_input."X_3" <= 10.200077) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_1" <= 1485.542480) THEN 35 ELSE 36 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.326894 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.081775 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.365403 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.264436 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.482075 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.436813 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.173177 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.046836 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.333210 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.116677 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.851281 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.592606 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.023732 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.135671 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.506818 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.263849 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.471406 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.280815 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.089321 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.230265 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.358945 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.563580 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.448362 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.432646 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.526942 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.309875 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.383480 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.547540 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.479128 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.434970 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.493073 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.401245 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.502421 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.566646 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.530557 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.480718 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.514252 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.504214 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.538084 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.568373 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.561464 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_3" <= 2.422003) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.254820) THEN CASE WHEN (model_input."X_0" <= 46.914299) THEN CASE WHEN (model_input."X_0" <= 14.603495) THEN 17 ELSE CASE WHEN (model_input."X_3" <= 9.116226) THEN CASE WHEN (model_input."X_3" <= 4.637605) THEN 31 ELSE 32 END ELSE 28 END END ELSE CASE WHEN (model_input."X_0" <= 77.295410) THEN CASE WHEN (model_input."X_3" <= 8.287296) THEN 15 ELSE 16 END ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= 240.774139) THEN CASE WHEN (model_input."X_2" <= 0.465395) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 39.276978) THEN CASE WHEN (model_input."X_1" <= 378.722015) THEN 29 ELSE CASE WHEN (model_input."X_0" <= 14.616403) THEN 33 ELSE 34 END END ELSE CASE WHEN (model_input."X_1" <= 730.325134) THEN CASE WHEN (model_input."X_0" <= 78.270935) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_2" <= 0.339953) THEN 25 ELSE 26 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.337972 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.280680 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.382026 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.111990 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.184499 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.434007 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.291608 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.985580 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.044092 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.461466 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.680325 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.286603 AS "E"
    UNION ALL
    SELECT 13 AS nid, 0.901476 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.097720 AS "E"
    UNION ALL
    SELECT 15 AS nid, 0.792981 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.486921 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.256097 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.529852 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.424299 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.358669 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.456056 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.392903 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.319544 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.395096 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.473836 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.275574 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.204156 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.445144 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.541404 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.317268 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.261677 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.559232 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.526546 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_3" <= 2.422003) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.254820) THEN CASE WHEN (model_input."X_0" <= 55.776665) THEN CASE WHEN (model_input."X_3" <= 9.257154) THEN CASE WHEN (model_input."X_0" <= 20.048975) THEN 19 ELSE CASE WHEN (model_input."X_2" <= 0.162053) THEN 39 ELSE 40 END END ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 425.449432) THEN 11 ELSE CASE WHEN (model_input."X_1" <= 490.803497) THEN 33 ELSE 34 END END END ELSE CASE WHEN (model_input."X_1" <= 347.523682) THEN CASE WHEN (model_input."X_1" <= 187.384659) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 44.843964) THEN CASE WHEN (model_input."X_1" <= 235.588928) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_2" <= 0.658563) THEN 25 ELSE 26 END END END ELSE CASE WHEN (model_input."X_0" <= 40.929958) THEN CASE WHEN (model_input."X_0" <= 33.442200) THEN CASE WHEN (model_input."X_0" <= 14.690535) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_2" <= 0.536657) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_1" <= 1115.891602) THEN CASE WHEN (model_input."X_3" <= 7.184176) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_2" <= 0.453336) THEN 29 ELSE 30 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.315988 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.265071 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.371300 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.142206 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.133991 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.426775 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.274616 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.913008 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.350530 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.731225 AS "E"
    UNION ALL
    SELECT 12 AS nid, 0.985721 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.210075 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.474930 AS "E"
    UNION ALL
    SELECT 15 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.260644 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.389172 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.196380 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.466059 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.281213 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.522245 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.422883 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.435188 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.142248 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.228859 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.395002 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.464704 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.417736 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.498252 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.372607 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.453228 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 34 AS nid, 0.952672 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.542742 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.490712 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.453335 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.522749 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.262002 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.310030 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.554769 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.528042 AS "E"
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
