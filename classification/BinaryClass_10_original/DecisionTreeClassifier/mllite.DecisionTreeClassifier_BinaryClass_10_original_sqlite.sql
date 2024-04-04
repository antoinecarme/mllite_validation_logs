WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_74", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82", t1."Leaf_84", t1."Leaf_86", t1."Leaf_90", t1."Leaf_91", t1."Leaf_92", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_98", t1."Leaf_99", t1."Leaf_100", t1."Leaf_102", t1."Leaf_104", t1."Leaf_108", t1."Leaf_110", t1."Leaf_111", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116", t1."Leaf_119", t1."Leaf_120", t1."Leaf_121", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" <= -0.798806) AND (t."X_0" > -1.197379)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" <= -0.798806) AND (t."X_0" <= -1.197379) AND (t."X_0" <= -1.387209)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" <= -0.798806) AND (t."X_0" <= -1.197379) AND (t."X_0" > -1.387209)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" > 1.030633)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" > 0.258377) AND (t."X_6" <= 0.779894)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" > 0.258377) AND (t."X_6" > 0.779894)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" <= 0.258377) AND (t."X_7" <= -0.193734) AND (t."X_5" <= 0.331613)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" <= 0.258377) AND (t."X_7" <= -0.193734) AND (t."X_5" > 0.331613)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" <= 0.258377) AND (t."X_7" > -0.193734) AND (t."X_3" > 1.023445)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" <= 0.258377) AND (t."X_7" > -0.193734) AND (t."X_3" <= 1.023445) AND (t."X_5" <= 0.428393)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" <= 0.258377) AND (t."X_7" > -0.193734) AND (t."X_3" <= 1.023445) AND (t."X_5" > 0.428393)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" > 1.002348)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" <= -0.979345) AND (t."X_7" <= 0.752163)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" <= -0.979345) AND (t."X_7" > 0.752163)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" > 0.017741) AND (t."X_1" <= -0.321530)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" > 0.017741) AND (t."X_1" > -0.321530)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" > 1.612893)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893) AND (t."X_4" <= 0.028087)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" <= 0.017741) AND (t."X_7" <= 0.081591)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" <= 0.017741) AND (t."X_7" > 0.081591) AND (t."X_9" <= -0.698833)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" <= 0.017741) AND (t."X_7" > 0.081591) AND (t."X_9" > -0.698833) AND (t."X_7" <= 0.228483)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" <= 0.017741) AND (t."X_7" > 0.081591) AND (t."X_9" > -0.698833) AND (t."X_7" > 0.228483)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" <= -0.559083) AND (t."X_1" > 0.288637) AND (t."X_0" <= -1.343617)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" <= -0.559083) AND (t."X_1" > 0.288637) AND (t."X_0" > -1.343617) AND (t."X_3" <= -1.122504)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" <= -0.559083) AND (t."X_1" > 0.288637) AND (t."X_0" > -1.343617) AND (t."X_3" > -1.122504)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" <= -0.559083) AND (t."X_1" <= 0.288637) AND (t."X_9" <= -1.057032)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" <= -0.559083) AND (t."X_1" <= 0.288637) AND (t."X_9" > -1.057032)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893) AND (t."X_4" > 0.028087) AND (t."X_3" > 1.085441) AND (t."X_0" <= -0.146587)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893) AND (t."X_4" > 0.028087) AND (t."X_3" > 1.085441) AND (t."X_0" > -0.146587)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" > 0.918785) AND (t."X_0" <= 0.988100)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" > 0.918785) AND (t."X_0" > 0.988100) AND (t."X_1" <= -0.756582)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" > 0.918785) AND (t."X_0" > 0.988100) AND (t."X_1" > -0.756582)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" <= -0.563125)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" > 0.532025)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" <= -0.059112) AND (t."X_4" > 0.401493) AND (t."X_9" <= 0.361858)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" <= -0.059112) AND (t."X_4" > 0.401493) AND (t."X_9" > 0.361858)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" <= -0.059112) AND (t."X_4" <= 0.401493) AND (t."X_0" <= 2.596822)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" <= -0.059112) AND (t."X_4" <= 0.401493) AND (t."X_0" > 2.596822)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" > 1.530428)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" > 1.322483)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" <= 1.322483) AND (t."X_8" <= -0.671800) AND (t."X_1" > 0.436465)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" <= 1.322483) AND (t."X_8" <= -0.671800) AND (t."X_1" <= 0.436465) AND (t."X_2" <= -0.514565)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" <= 1.322483) AND (t."X_8" <= -0.671800) AND (t."X_1" <= 0.436465) AND (t."X_2" > -0.514565)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" <= 1.322483) AND (t."X_8" > -0.671800) AND (t."X_4" <= -0.702480)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" <= 1.322483) AND (t."X_8" > -0.671800) AND (t."X_4" > -0.702480) AND (t."X_2" <= -0.238201)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428) AND (t."X_3" <= 1.322483) AND (t."X_8" > -0.671800) AND (t."X_4" > -0.702480) AND (t."X_2" > -0.238201)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893) AND (t."X_4" > 0.028087) AND (t."X_3" <= 1.085441) AND (t."X_7" > -0.788463)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893) AND (t."X_4" > 0.028087) AND (t."X_3" <= 1.085441) AND (t."X_7" <= -0.788463) AND (t."X_4" <= 0.851290)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893) AND (t."X_4" > 0.028087) AND (t."X_3" <= 1.085441) AND (t."X_7" <= -0.788463) AND (t."X_4" > 0.851290)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" > 0.891910)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" > 0.881598)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" > -0.323677)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" > 1.599106)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" <= 1.599106) AND (t."X_9" <= -2.485155)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.048912)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" > 0.887079) AND (t."X_4" > 1.048912) AND (t."X_0" <= -0.123640)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" > 0.887079) AND (t."X_4" > 1.048912) AND (t."X_0" > -0.123640)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" <= 1.599106) AND (t."X_9" > -2.485155) AND (t."X_5" > 0.820089) AND (t."X_7" <= -0.153012)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" <= 1.599106) AND (t."X_9" > -2.485155) AND (t."X_5" > 0.820089) AND (t."X_7" > -0.153012)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" <= 1.599106) AND (t."X_9" > -2.485155) AND (t."X_5" <= 0.820089) AND (t."X_1" <= 1.541370)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" <= 1.599106) AND (t."X_9" > -2.485155) AND (t."X_5" <= 0.820089) AND (t."X_1" > 1.541370) AND (t."X_0" <= -0.043695)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677) AND (t."X_0" <= 1.599106) AND (t."X_9" > -2.485155) AND (t."X_5" <= 0.820089) AND (t."X_1" > 1.541370) AND (t."X_0" > -0.043695)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" > -0.559083) AND (t."X_9" <= 0.508804)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" > -0.559083) AND (t."X_9" > 0.508804)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 1 AS nid,  0.838828 AS "P_0", 0.161172 AS "P_1", 0 AS "D", 0.838828 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.125523 AS "P_0", 0.874477 AS "P_1", 1 AS "D", 0.874477 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.382979 AS "P_0", 0.617021 AS "P_1", 1 AS "D", 0.617021 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.313253 AS "P_0", 0.686747 AS "P_1", 1 AS "D", 0.686747 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.269231 AS "P_0", 0.730769 AS "P_1", 1 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.441860 AS "P_0", 0.558140 AS "P_1", 1 AS "D", 0.558140 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.057143 AS "P_0", 0.942857 AS "P_1", 1 AS "D", 0.942857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.303030 AS "P_0", 0.696970 AS "P_1", 1 AS "D", 0.696970 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.926230 AS "P_0", 0.073770 AS "P_1", 0 AS "D", 0.926230 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.661111 AS "P_0", 0.338889 AS "P_1", 0 AS "D", 0.661111 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.469565 AS "P_0", 0.530435 AS "P_1", 1 AS "D", 0.530435 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.671642 AS "P_0", 0.328358 AS "P_1", 0 AS "D", 0.671642 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.116279 AS "P_0", 0.883721 AS "P_1", 1 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.930233 AS "P_0", 0.069767 AS "P_1", 0 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.975000 AS "P_0", 0.025000 AS "P_1", 0 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.990654 AS "P_0", 0.009346 AS "P_1", 0 AS "D", 0.990654 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.835526 AS "P_0", 0.164474 AS "P_1", 0 AS "D", 0.835526 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.576923 AS "P_0", 0.423077 AS "P_1", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.970000 AS "P_0", 0.030000 AS "P_1", 0 AS "D", 0.970000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.379310 AS "P_0", 0.620690 AS "P_1", 1 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.173469 AS "P_0", 0.826531 AS "P_1", 1 AS "D", 0.826531 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.024476 AS "P_0", 0.975524 AS "P_1", 1 AS "D", 0.975524 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.147368 AS "P_0", 0.852632 AS "P_1", 1 AS "D", 0.852632 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.113636 AS "P_0", 0.886364 AS "P_1", 1 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.023810 AS "P_0", 0.976190 AS "P_1", 1 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
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