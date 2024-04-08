WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "census_one_hot_tiny" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3",
   CAST("Values"."sv_4" AS FLOAT) AS "sv_4",
   CAST("Values"."sv_5" AS FLOAT) AS "sv_5",
   CAST("Values"."sv_6" AS FLOAT) AS "sv_6",
   CAST("Values"."sv_7" AS FLOAT) AS "sv_7",
   CAST("Values"."sv_8" AS FLOAT) AS "sv_8",
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9",
   CAST("Values"."sv_10" AS FLOAT) AS "sv_10",
   CAST("Values"."sv_11" AS FLOAT) AS "sv_11",
   CAST("Values"."sv_12" AS FLOAT) AS "sv_12",
   CAST("Values"."sv_13" AS FLOAT) AS "sv_13",
   CAST("Values"."sv_14" AS FLOAT) AS "sv_14",
   CAST("Values"."sv_15" AS FLOAT) AS "sv_15",
   CAST("Values"."sv_16" AS FLOAT) AS "sv_16",
   CAST("Values"."sv_17" AS FLOAT) AS "sv_17",
   CAST("Values"."sv_18" AS FLOAT) AS "sv_18",
   CAST("Values"."sv_19" AS FLOAT) AS "sv_19",
   CAST("Values"."sv_20" AS FLOAT) AS "sv_20",
   CAST("Values"."sv_21" AS FLOAT) AS "sv_21",
   CAST("Values"."sv_22" AS FLOAT) AS "sv_22",
   CAST("Values"."sv_23" AS FLOAT) AS "sv_23",
   CAST("Values"."sv_24" AS FLOAT) AS "sv_24",
   CAST("Values"."sv_25" AS FLOAT) AS "sv_25",
   CAST("Values"."sv_26" AS FLOAT) AS "sv_26",
   CAST("Values"."sv_27" AS FLOAT) AS "sv_27",
   CAST("Values"."sv_28" AS FLOAT) AS "sv_28",
   CAST("Values"."sv_29" AS FLOAT) AS "sv_29",
   CAST("Values"."sv_30" AS FLOAT) AS "sv_30",
   CAST("Values"."sv_31" AS FLOAT) AS "sv_31",
   CAST("Values"."sv_32" AS FLOAT) AS "sv_32",
   CAST("Values"."sv_33" AS FLOAT) AS "sv_33",
   CAST("Values"."sv_34" AS FLOAT) AS "sv_34",
   CAST("Values"."sv_35" AS FLOAT) AS "sv_35",
   CAST("Values"."sv_36" AS FLOAT) AS "sv_36",
   CAST("Values"."sv_37" AS FLOAT) AS "sv_37",
   CAST("Values"."sv_38" AS FLOAT) AS "sv_38",
   CAST("Values"."sv_39" AS FLOAT) AS "sv_39",
   CAST("Values"."sv_40" AS FLOAT) AS "sv_40",
   CAST("Values"."sv_41" AS FLOAT) AS "sv_41",
   CAST("Values"."sv_42" AS FLOAT) AS "sv_42",
   CAST("Values"."sv_43" AS FLOAT) AS "sv_43",
   CAST("Values"."sv_44" AS FLOAT) AS "sv_44",
   CAST("Values"."sv_45" AS FLOAT) AS "sv_45",
   CAST("Values"."sv_46" AS FLOAT) AS "sv_46",
   CAST("Values"."sv_47" AS FLOAT) AS "sv_47",
   CAST("Values"."sv_48" AS FLOAT) AS "sv_48",
   CAST("Values"."sv_49" AS FLOAT) AS "sv_49",
   CAST("Values"."sv_50" AS FLOAT) AS "sv_50",
   CAST("Values"."sv_51" AS FLOAT) AS "sv_51",
   CAST("Values"."sv_52" AS FLOAT) AS "sv_52"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 159537.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 1.000000 AS "sv_15", 12.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 1.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 1.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 1 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 165346.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 1.000000 AS "sv_14", 0.000000 AS "sv_15", 10.000000 AS "sv_16", 1.000000 AS "sv_17", 0.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 1.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 1.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 4.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 142712.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 9.000000 AS "sv_16", 0.000000 AS "sv_17", 0.000000 AS "sv_18", 0.000000 AS "sv_19", 1.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 1.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 1.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 3 AS "sv_idx", 4.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 175964.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 1.000000 AS "sv_14", 0.000000 AS "sv_15", 10.000000 AS "sv_16", 1.000000 AS "sv_17", 0.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 1.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 1.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 4 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 25806.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 1.000000 AS "sv_15", 16.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 1.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 1.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 1.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 0.000000 AS "sv_51", 1.000000 AS "sv_52"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 340543.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 1.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 13.000000 AS "sv_16", 0.000000 AS "sv_17", 0.000000 AS "sv_18", 0.000000 AS "sv_19", 1.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 1.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 1.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 6 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 1.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 126840.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 1.000000 AS "sv_14", 0.000000 AS "sv_15", 10.000000 AS "sv_16", 1.000000 AS "sv_17", 0.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 1.000000 AS "sv_30", 0.000000 AS "sv_31", 1.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 7 AS "sv_idx", 2.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 67187.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 9.000000 AS "sv_16", 0.000000 AS "sv_17", 0.000000 AS "sv_18", 0.000000 AS "sv_19", 1.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 1.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 1.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 1.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 8 AS "sv_idx", 2.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 188950.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 1.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 14.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 1.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 1.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 3.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 129707.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 1.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 13.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 1.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 1.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 4.000000 AS "sv_43", 0.000000 AS "sv_44", 1.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 1.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 78530.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 1.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 9.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 1.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 1.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 4.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 0.000000 AS "sv_51", 1.000000 AS "sv_52"
     UNION ALL
     SELECT 11 AS "sv_idx", 3.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 96586.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 1.000000 AS "sv_14", 0.000000 AS "sv_15", 10.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 1.000000 AS "sv_30", 1.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 1.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "sv_0", 1.000000 AS "sv_1", 0.000000 AS "sv_2", 0.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 229656.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 0.000000 AS "sv_11", 0.000000 AS "sv_12", 1.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 14.000000 AS "sv_16", 0.000000 AS "sv_17", 1.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 1.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 1.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 1.000000 AS "sv_44", 2.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 1.000000 AS "sv_50", 0.000000 AS "sv_51", 0.000000 AS "sv_52"
   ) AS "Values"
 ),
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.000000 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2) + power(model_input."X_10" - "SV_data"."sv_10", 2) + power(model_input."X_11" - "SV_data"."sv_11", 2) + power(model_input."X_12" - "SV_data"."sv_12", 2) + power(model_input."X_13" - "SV_data"."sv_13", 2) + power(model_input."X_14" - "SV_data"."sv_14", 2) + power(model_input."X_15" - "SV_data"."sv_15", 2) + power(model_input."X_16" - "SV_data"."sv_16", 2) + power(model_input."X_17" - "SV_data"."sv_17", 2) + power(model_input."X_18" - "SV_data"."sv_18", 2) + power(model_input."X_19" - "SV_data"."sv_19", 2) + power(model_input."X_20" - "SV_data"."sv_20", 2) + power(model_input."X_21" - "SV_data"."sv_21", 2) + power(model_input."X_22" - "SV_data"."sv_22", 2) + power(model_input."X_23" - "SV_data"."sv_23", 2) + power(model_input."X_24" - "SV_data"."sv_24", 2) + power(model_input."X_25" - "SV_data"."sv_25", 2) + power(model_input."X_26" - "SV_data"."sv_26", 2) + power(model_input."X_27" - "SV_data"."sv_27", 2) + power(model_input."X_28" - "SV_data"."sv_28", 2) + power(model_input."X_29" - "SV_data"."sv_29", 2) + power(model_input."X_30" - "SV_data"."sv_30", 2) + power(model_input."X_31" - "SV_data"."sv_31", 2) + power(model_input."X_32" - "SV_data"."sv_32", 2) + power(model_input."X_33" - "SV_data"."sv_33", 2) + power(model_input."X_34" - "SV_data"."sv_34", 2) + power(model_input."X_35" - "SV_data"."sv_35", 2) + power(model_input."X_36" - "SV_data"."sv_36", 2) + power(model_input."X_37" - "SV_data"."sv_37", 2) + power(model_input."X_38" - "SV_data"."sv_38", 2) + power(model_input."X_39" - "SV_data"."sv_39", 2) + power(model_input."X_40" - "SV_data"."sv_40", 2) + power(model_input."X_41" - "SV_data"."sv_41", 2) + power(model_input."X_42" - "SV_data"."sv_42", 2) + power(model_input."X_43" - "SV_data"."sv_43", 2) + power(model_input."X_44" - "SV_data"."sv_44", 2) + power(model_input."X_45" - "SV_data"."sv_45", 2) + power(model_input."X_46" - "SV_data"."sv_46", 2) + power(model_input."X_47" - "SV_data"."sv_47", 2) + power(model_input."X_48" - "SV_data"."sv_48", 2) + power(model_input."X_49" - "SV_data"."sv_49", 2) + power(model_input."X_50" - "SV_data"."sv_50", 2) + power(model_input."X_51" - "SV_data"."sv_51", 2) + power(model_input."X_52" - "SV_data"."sv_52", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.690548 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 0.076177 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.178460 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.233748 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 0.821067 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 0.690548 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 0.076177 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 0.178460 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -1.006607 AS "rho", 21.115694 AS "probA", -21.809303 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte