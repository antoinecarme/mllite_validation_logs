WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
   CAST("Values"."sv_52" AS FLOAT) AS "sv_52",
   CAST("Values"."sv_53" AS FLOAT) AS "sv_53",
   CAST("Values"."sv_54" AS FLOAT) AS "sv_54",
   CAST("Values"."sv_55" AS FLOAT) AS "sv_55",
   CAST("Values"."sv_56" AS FLOAT) AS "sv_56",
   CAST("Values"."sv_57" AS FLOAT) AS "sv_57",
   CAST("Values"."sv_58" AS FLOAT) AS "sv_58",
   CAST("Values"."sv_59" AS FLOAT) AS "sv_59",
   CAST("Values"."sv_60" AS FLOAT) AS "sv_60",
   CAST("Values"."sv_61" AS FLOAT) AS "sv_61",
   CAST("Values"."sv_62" AS FLOAT) AS "sv_62",
   CAST("Values"."sv_63" AS FLOAT) AS "sv_63"
  FROM
  (
     SELECT 0 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 4.000000 AS "sv_2", 12.000000 AS "sv_3", 5.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 12.000000 AS "sv_10", 14.000000 AS "sv_11", 15.000000 AS "sv_12", 7.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 2.000000 AS "sv_17", 14.000000 AS "sv_18", 1.000000 AS "sv_19", 2.000000 AS "sv_20", 16.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 4.000000 AS "sv_25", 8.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 10.000000 AS "sv_29", 4.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 7.000000 AS "sv_33", 8.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 6.000000 AS "sv_37", 8.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 4.000000 AS "sv_41", 11.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 5.000000 AS "sv_45", 8.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 14.000000 AS "sv_50", 11.000000 AS "sv_51", 3.000000 AS "sv_52", 13.000000 AS "sv_53", 5.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 2.000000 AS "sv_58", 11.000000 AS "sv_59", 16.000000 AS "sv_60", 11.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 9.000000 AS "sv_3", 15.000000 AS "sv_4", 11.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 11.000000 AS "sv_10", 16.000000 AS "sv_11", 8.000000 AS "sv_12", 14.000000 AS "sv_13", 6.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 2.000000 AS "sv_17", 16.000000 AS "sv_18", 10.000000 AS "sv_19", 0.000000 AS "sv_20", 9.000000 AS "sv_21", 9.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 1.000000 AS "sv_25", 16.000000 AS "sv_26", 4.000000 AS "sv_27", 0.000000 AS "sv_28", 8.000000 AS "sv_29", 8.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 4.000000 AS "sv_33", 16.000000 AS "sv_34", 4.000000 AS "sv_35", 0.000000 AS "sv_36", 8.000000 AS "sv_37", 8.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 1.000000 AS "sv_41", 16.000000 AS "sv_42", 5.000000 AS "sv_43", 1.000000 AS "sv_44", 11.000000 AS "sv_45", 3.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 12.000000 AS "sv_50", 12.000000 AS "sv_51", 10.000000 AS "sv_52", 10.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 1.000000 AS "sv_58", 10.000000 AS "sv_59", 13.000000 AS "sv_60", 3.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 2 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 12.000000 AS "sv_3", 1.000000 AS "sv_4", 6.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 11.000000 AS "sv_10", 12.000000 AS "sv_11", 0.000000 AS "sv_12", 16.000000 AS "sv_13", 2.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 16.000000 AS "sv_18", 5.000000 AS "sv_19", 0.000000 AS "sv_20", 12.000000 AS "sv_21", 4.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 3.000000 AS "sv_25", 15.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 8.000000 AS "sv_29", 4.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 7.000000 AS "sv_33", 12.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 4.000000 AS "sv_37", 7.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 2.000000 AS "sv_41", 15.000000 AS "sv_42", 1.000000 AS "sv_43", 1.000000 AS "sv_44", 12.000000 AS "sv_45", 5.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 16.000000 AS "sv_50", 11.000000 AS "sv_51", 12.000000 AS "sv_52", 15.000000 AS "sv_53", 3.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 4.000000 AS "sv_58", 12.000000 AS "sv_59", 12.000000 AS "sv_60", 3.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 11.000000 AS "sv_2", 10.000000 AS "sv_3", 0.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 11.000000 AS "sv_10", 15.000000 AS "sv_11", 0.000000 AS "sv_12", 0.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 11.000000 AS "sv_18", 16.000000 AS "sv_19", 5.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 13.000000 AS "sv_26", 16.000000 AS "sv_27", 11.000000 AS "sv_28", 0.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 2.000000 AS "sv_34", 7.000000 AS "sv_35", 16.000000 AS "sv_36", 2.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 2.000000 AS "sv_43", 14.000000 AS "sv_44", 6.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 6.000000 AS "sv_50", 10.000000 AS "sv_51", 15.000000 AS "sv_52", 13.000000 AS "sv_53", 8.000000 AS "sv_54", 3.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 8.000000 AS "sv_58", 16.000000 AS "sv_59", 16.000000 AS "sv_60", 16.000000 AS "sv_61", 16.000000 AS "sv_62", 12.000000 AS "sv_63"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 15.000000 AS "sv_3", 11.000000 AS "sv_4", 0.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 6.000000 AS "sv_10", 16.000000 AS "sv_11", 16.000000 AS "sv_12", 2.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 10.000000 AS "sv_18", 16.000000 AS "sv_19", 16.000000 AS "sv_20", 1.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 2.000000 AS "sv_25", 16.000000 AS "sv_26", 16.000000 AS "sv_27", 16.000000 AS "sv_28", 3.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 7.000000 AS "sv_33", 16.000000 AS "sv_34", 16.000000 AS "sv_35", 14.000000 AS "sv_36", 0.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 3.000000 AS "sv_42", 15.000000 AS "sv_43", 10.000000 AS "sv_44", 0.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 15.000000 AS "sv_51", 7.000000 AS "sv_52", 0.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 0.000000 AS "sv_58", 14.000000 AS "sv_59", 4.000000 AS "sv_60", 0.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 5 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 15.000000 AS "sv_4", 10.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 11.000000 AS "sv_11", 10.000000 AS "sv_12", 16.000000 AS "sv_13", 4.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 0.000000 AS "sv_18", 12.000000 AS "sv_19", 1.000000 AS "sv_20", 15.000000 AS "sv_21", 6.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 3.000000 AS "sv_27", 4.000000 AS "sv_28", 15.000000 AS "sv_29", 4.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 6.000000 AS "sv_35", 15.000000 AS "sv_36", 6.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 4.000000 AS "sv_41", 15.000000 AS "sv_42", 16.000000 AS "sv_43", 9.000000 AS "sv_44", 0.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 13.000000 AS "sv_50", 16.000000 AS "sv_51", 15.000000 AS "sv_52", 9.000000 AS "sv_53", 3.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 0.000000 AS "sv_58", 4.000000 AS "sv_59", 9.000000 AS "sv_60", 14.000000 AS "sv_61", 7.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 13.000000 AS "sv_3", 16.000000 AS "sv_4", 10.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 7.000000 AS "sv_9", 16.000000 AS "sv_10", 16.000000 AS "sv_11", 16.000000 AS "sv_12", 16.000000 AS "sv_13", 7.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 5.000000 AS "sv_18", 2.000000 AS "sv_19", 11.000000 AS "sv_20", 14.000000 AS "sv_21", 5.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 10.000000 AS "sv_27", 15.000000 AS "sv_28", 6.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 9.000000 AS "sv_34", 16.000000 AS "sv_35", 13.000000 AS "sv_36", 2.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 4.000000 AS "sv_42", 11.000000 AS "sv_43", 15.000000 AS "sv_44", 14.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 2.000000 AS "sv_50", 2.000000 AS "sv_51", 13.000000 AS "sv_52", 16.000000 AS "sv_53", 1.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 5.000000 AS "sv_58", 14.000000 AS "sv_59", 15.000000 AS "sv_60", 9.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 3.000000 AS "sv_3", 14.000000 AS "sv_4", 9.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 0.000000 AS "sv_10", 13.000000 AS "sv_11", 11.000000 AS "sv_12", 1.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 9.000000 AS "sv_18", 14.000000 AS "sv_19", 0.000000 AS "sv_20", 0.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 4.000000 AS "sv_25", 16.000000 AS "sv_26", 4.000000 AS "sv_27", 0.000000 AS "sv_28", 4.000000 AS "sv_29", 2.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 12.000000 AS "sv_33", 12.000000 AS "sv_34", 7.000000 AS "sv_35", 14.000000 AS "sv_36", 16.000000 AS "sv_37", 10.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 13.000000 AS "sv_41", 16.000000 AS "sv_42", 14.000000 AS "sv_43", 11.000000 AS "sv_44", 16.000000 AS "sv_45", 4.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 2.000000 AS "sv_49", 2.000000 AS "sv_50", 0.000000 AS "sv_51", 11.000000 AS "sv_52", 13.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 0.000000 AS "sv_58", 3.000000 AS "sv_59", 16.000000 AS "sv_60", 9.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 2.000000 AS "sv_2", 13.000000 AS "sv_3", 16.000000 AS "sv_4", 13.000000 AS "sv_5", 4.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 9.000000 AS "sv_10", 11.000000 AS "sv_11", 9.000000 AS "sv_12", 16.000000 AS "sv_13", 7.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 2.000000 AS "sv_17", 15.000000 AS "sv_18", 2.000000 AS "sv_19", 2.000000 AS "sv_20", 15.000000 AS "sv_21", 2.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 3.000000 AS "sv_25", 3.000000 AS "sv_26", 0.000000 AS "sv_27", 8.000000 AS "sv_28", 13.000000 AS "sv_29", 2.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 1.000000 AS "sv_34", 13.000000 AS "sv_35", 16.000000 AS "sv_36", 16.000000 AS "sv_37", 10.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 11.000000 AS "sv_43", 13.000000 AS "sv_44", 5.000000 AS "sv_45", 1.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 11.000000 AS "sv_51", 6.000000 AS "sv_52", 0.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 3.000000 AS "sv_58", 15.000000 AS "sv_59", 2.000000 AS "sv_60", 0.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 9 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 2.000000 AS "sv_2", 13.000000 AS "sv_3", 16.000000 AS "sv_4", 14.000000 AS "sv_5", 1.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 11.000000 AS "sv_10", 12.000000 AS "sv_11", 7.000000 AS "sv_12", 16.000000 AS "sv_13", 3.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 9.000000 AS "sv_18", 3.000000 AS "sv_19", 2.000000 AS "sv_20", 16.000000 AS "sv_21", 3.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 9.000000 AS "sv_28", 11.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 2.000000 AS "sv_34", 11.000000 AS "sv_35", 15.000000 AS "sv_36", 13.000000 AS "sv_37", 3.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 4.000000 AS "sv_42", 15.000000 AS "sv_43", 16.000000 AS "sv_44", 13.000000 AS "sv_45", 3.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 14.000000 AS "sv_51", 8.000000 AS "sv_52", 0.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 5.000000 AS "sv_58", 15.000000 AS "sv_59", 4.000000 AS "sv_60", 0.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 0.000000 AS "sv_2", 8.000000 AS "sv_3", 16.000000 AS "sv_4", 16.000000 AS "sv_5", 16.000000 AS "sv_6", 6.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 6.000000 AS "sv_10", 14.000000 AS "sv_11", 5.000000 AS "sv_12", 8.000000 AS "sv_13", 16.000000 AS "sv_14", 2.000000 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 7.000000 AS "sv_18", 4.000000 AS "sv_19", 0.000000 AS "sv_20", 6.000000 AS "sv_21", 12.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 0.000000 AS "sv_28", 12.000000 AS "sv_29", 6.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 11.000000 AS "sv_35", 16.000000 AS "sv_36", 16.000000 AS "sv_37", 10.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 12.000000 AS "sv_43", 16.000000 AS "sv_44", 8.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 6.000000 AS "sv_51", 16.000000 AS "sv_52", 0.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 0.000000 AS "sv_58", 12.000000 AS "sv_59", 9.000000 AS "sv_60", 0.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 11 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 5.000000 AS "sv_2", 12.000000 AS "sv_3", 13.000000 AS "sv_4", 2.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 3.000000 AS "sv_9", 16.000000 AS "sv_10", 14.000000 AS "sv_11", 16.000000 AS "sv_12", 13.000000 AS "sv_13", 1.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 4.000000 AS "sv_17", 16.000000 AS "sv_18", 9.000000 AS "sv_19", 16.000000 AS "sv_20", 12.000000 AS "sv_21", 1.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 1.000000 AS "sv_25", 9.000000 AS "sv_26", 16.000000 AS "sv_27", 15.000000 AS "sv_28", 1.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 1.000000 AS "sv_33", 13.000000 AS "sv_34", 16.000000 AS "sv_35", 16.000000 AS "sv_36", 5.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 3.000000 AS "sv_41", 16.000000 AS "sv_42", 5.000000 AS "sv_43", 12.000000 AS "sv_44", 16.000000 AS "sv_45", 0.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 3.000000 AS "sv_49", 15.000000 AS "sv_50", 7.000000 AS "sv_51", 14.000000 AS "sv_52", 12.000000 AS "sv_53", 0.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 6.000000 AS "sv_58", 16.000000 AS "sv_59", 13.000000 AS "sv_60", 3.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 12 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 8.000000 AS "sv_3", 15.000000 AS "sv_4", 11.000000 AS "sv_5", 3.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 11.000000 AS "sv_10", 12.000000 AS "sv_11", 9.000000 AS "sv_12", 14.000000 AS "sv_13", 11.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 2.000000 AS "sv_17", 14.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 13.000000 AS "sv_21", 6.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 7.000000 AS "sv_25", 15.000000 AS "sv_26", 8.000000 AS "sv_27", 12.000000 AS "sv_28", 9.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 6.000000 AS "sv_34", 13.000000 AS "sv_35", 16.000000 AS "sv_36", 8.000000 AS "sv_37", 0.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 13.000000 AS "sv_43", 9.000000 AS "sv_44", 15.000000 AS "sv_45", 4.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 0.000000 AS "sv_50", 16.000000 AS "sv_51", 8.000000 AS "sv_52", 14.000000 AS "sv_53", 3.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 0.000000 AS "sv_58", 11.000000 AS "sv_59", 15.000000 AS "sv_60", 8.000000 AS "sv_61", 0.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 7.000000 AS "sv_2", 13.000000 AS "sv_3", 10.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 1.000000 AS "sv_9", 15.000000 AS "sv_10", 3.000000 AS "sv_11", 9.000000 AS "sv_12", 10.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 3.000000 AS "sv_17", 16.000000 AS "sv_18", 4.000000 AS "sv_19", 13.000000 AS "sv_20", 11.000000 AS "sv_21", 0.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 0.000000 AS "sv_25", 6.000000 AS "sv_26", 12.000000 AS "sv_27", 12.000000 AS "sv_28", 16.000000 AS "sv_29", 0.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 0.000000 AS "sv_34", 0.000000 AS "sv_35", 0.000000 AS "sv_36", 12.000000 AS "sv_37", 5.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 5.000000 AS "sv_45", 11.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 1.000000 AS "sv_49", 11.000000 AS "sv_50", 2.000000 AS "sv_51", 0.000000 AS "sv_52", 7.000000 AS "sv_53", 11.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 7.000000 AS "sv_58", 13.000000 AS "sv_59", 16.000000 AS "sv_60", 15.000000 AS "sv_61", 4.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 14 AS "sv_idx", 0.000000 AS "sv_0", 0.000000 AS "sv_1", 1.000000 AS "sv_2", 12.000000 AS "sv_3", 16.000000 AS "sv_4", 14.000000 AS "sv_5", 2.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 0.000000 AS "sv_9", 13.000000 AS "sv_10", 11.000000 AS "sv_11", 3.000000 AS "sv_12", 16.000000 AS "sv_13", 5.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 4.000000 AS "sv_17", 14.000000 AS "sv_18", 0.000000 AS "sv_19", 0.000000 AS "sv_20", 15.000000 AS "sv_21", 6.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 6.000000 AS "sv_25", 12.000000 AS "sv_26", 8.000000 AS "sv_27", 13.000000 AS "sv_28", 16.000000 AS "sv_29", 5.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 9.000000 AS "sv_34", 12.000000 AS "sv_35", 4.000000 AS "sv_36", 10.000000 AS "sv_37", 8.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 3.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 11.000000 AS "sv_45", 5.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 0.000000 AS "sv_49", 16.000000 AS "sv_50", 14.000000 AS "sv_51", 5.000000 AS "sv_52", 15.000000 AS "sv_53", 4.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 0.000000 AS "sv_57", 3.000000 AS "sv_58", 12.000000 AS "sv_59", 16.000000 AS "sv_60", 11.000000 AS "sv_61", 1.000000 AS "sv_62", 0.000000 AS "sv_63"
     UNION ALL
     SELECT 15 AS "sv_idx", 0.000000 AS "sv_0", 1.000000 AS "sv_1", 11.000000 AS "sv_2", 13.000000 AS "sv_3", 10.000000 AS "sv_4", 1.000000 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.000000 AS "sv_8", 8.000000 AS "sv_9", 12.000000 AS "sv_10", 3.000000 AS "sv_11", 13.000000 AS "sv_12", 10.000000 AS "sv_13", 0.000000 AS "sv_14", 0.000000 AS "sv_15", 0.000000 AS "sv_16", 8.000000 AS "sv_17", 11.000000 AS "sv_18", 2.000000 AS "sv_19", 11.000000 AS "sv_20", 16.000000 AS "sv_21", 1.000000 AS "sv_22", 0.000000 AS "sv_23", 0.000000 AS "sv_24", 1.000000 AS "sv_25", 15.000000 AS "sv_26", 16.000000 AS "sv_27", 16.000000 AS "sv_28", 16.000000 AS "sv_29", 2.000000 AS "sv_30", 0.000000 AS "sv_31", 0.000000 AS "sv_32", 0.000000 AS "sv_33", 2.000000 AS "sv_34", 8.000000 AS "sv_35", 3.000000 AS "sv_36", 9.000000 AS "sv_37", 6.000000 AS "sv_38", 0.000000 AS "sv_39", 0.000000 AS "sv_40", 0.000000 AS "sv_41", 0.000000 AS "sv_42", 0.000000 AS "sv_43", 0.000000 AS "sv_44", 7.000000 AS "sv_45", 9.000000 AS "sv_46", 0.000000 AS "sv_47", 0.000000 AS "sv_48", 2.000000 AS "sv_49", 12.000000 AS "sv_50", 3.000000 AS "sv_51", 0.000000 AS "sv_52", 9.000000 AS "sv_53", 12.000000 AS "sv_54", 0.000000 AS "sv_55", 0.000000 AS "sv_56", 1.000000 AS "sv_57", 9.000000 AS "sv_58", 15.000000 AS "sv_59", 16.000000 AS "sv_60", 13.000000 AS "sv_61", 3.000000 AS "sv_62", 0.000000 AS "sv_63"
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
           EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.000449 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2) + power(model_input."X_10" - "SV_data"."sv_10", 2) + power(model_input."X_11" - "SV_data"."sv_11", 2) + power(model_input."X_12" - "SV_data"."sv_12", 2) + power(model_input."X_13" - "SV_data"."sv_13", 2) + power(model_input."X_14" - "SV_data"."sv_14", 2) + power(model_input."X_15" - "SV_data"."sv_15", 2) + power(model_input."X_16" - "SV_data"."sv_16", 2) + power(model_input."X_17" - "SV_data"."sv_17", 2) + power(model_input."X_18" - "SV_data"."sv_18", 2) + power(model_input."X_19" - "SV_data"."sv_19", 2) + power(model_input."X_20" - "SV_data"."sv_20", 2) + power(model_input."X_21" - "SV_data"."sv_21", 2) + power(model_input."X_22" - "SV_data"."sv_22", 2) + power(model_input."X_23" - "SV_data"."sv_23", 2) + power(model_input."X_24" - "SV_data"."sv_24", 2) + power(model_input."X_25" - "SV_data"."sv_25", 2) + power(model_input."X_26" - "SV_data"."sv_26", 2) + power(model_input."X_27" - "SV_data"."sv_27", 2) + power(model_input."X_28" - "SV_data"."sv_28", 2) + power(model_input."X_29" - "SV_data"."sv_29", 2) + power(model_input."X_30" - "SV_data"."sv_30", 2) + power(model_input."X_31" - "SV_data"."sv_31", 2) + power(model_input."X_32" - "SV_data"."sv_32", 2) + power(model_input."X_33" - "SV_data"."sv_33", 2) + power(model_input."X_34" - "SV_data"."sv_34", 2) + power(model_input."X_35" - "SV_data"."sv_35", 2) + power(model_input."X_36" - "SV_data"."sv_36", 2) + power(model_input."X_37" - "SV_data"."sv_37", 2) + power(model_input."X_38" - "SV_data"."sv_38", 2) + power(model_input."X_39" - "SV_data"."sv_39", 2) + power(model_input."X_40" - "SV_data"."sv_40", 2) + power(model_input."X_41" - "SV_data"."sv_41", 2) + power(model_input."X_42" - "SV_data"."sv_42", 2) + power(model_input."X_43" - "SV_data"."sv_43", 2) + power(model_input."X_44" - "SV_data"."sv_44", 2) + power(model_input."X_45" - "SV_data"."sv_45", 2) + power(model_input."X_46" - "SV_data"."sv_46", 2) + power(model_input."X_47" - "SV_data"."sv_47", 2) + power(model_input."X_48" - "SV_data"."sv_48", 2) + power(model_input."X_49" - "SV_data"."sv_49", 2) + power(model_input."X_50" - "SV_data"."sv_50", 2) + power(model_input."X_51" - "SV_data"."sv_51", 2) + power(model_input."X_52" - "SV_data"."sv_52", 2) + power(model_input."X_53" - "SV_data"."sv_53", 2) + power(model_input."X_54" - "SV_data"."sv_54", 2) + power(model_input."X_55" - "SV_data"."sv_55", 2) + power(model_input."X_56" - "SV_data"."sv_56", 2) + power(model_input."X_57" - "SV_data"."sv_57", 2) + power(model_input."X_58" - "SV_data"."sv_58", 2) + power(model_input."X_59" - "SV_data"."sv_59", 2) + power(model_input."X_60" - "SV_data"."sv_60", 2) + power(model_input."X_61" - "SV_data"."sv_61", 2) + power(model_input."X_62" - "SV_data"."sv_62", 2) + power(model_input."X_63" - "SV_data"."sv_63", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.892585 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 0.337448 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.892585 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 1.020918 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 0.088373 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 0 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 1 AS "sv_idx", 0.897129 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 2 AS "sv_idx", 0.108289 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 6 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 0 AS "c_1", 4 AS "c_2", 0 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 0 AS "c_1", 4 AS "c_2", 1 AS "sv_idx", 1.324506 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 0 AS "c_1", 4 AS "c_2", 7 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 0 AS "c_1", 5 AS "c_2", 0 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 0 AS "c_1", 5 AS "c_2", 1 AS "sv_idx", 1.227716 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 0 AS "c_1", 5 AS "c_2", 2 AS "sv_idx", 0.141358 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 0 AS "c_1", 5 AS "c_2", 8 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 0 AS "c_1", 5 AS "c_2", 9 AS "sv_idx", 0.892585 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 0 AS "c_1", 5 AS "c_2", 10 AS "sv_idx", 0.337448 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 0 AS "c_1", 6 AS "c_2", 0 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 0 AS "c_1", 6 AS "c_2", 1 AS "sv_idx", 1.652677 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 0 AS "c_1", 6 AS "c_2", 2 AS "sv_idx", 0.255081 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 0 AS "c_1", 6 AS "c_2", 11 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 0 AS "c_1", 6 AS "c_2", 12 AS "sv_idx", 0.892585 AS "Coeff"
     UNION ALL
     SELECT 6 AS "prob_idx", 0 AS "c_1", 7 AS "c_2", 0 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 6 AS "prob_idx", 0 AS "c_1", 7 AS "c_2", 1 AS "sv_idx", 1.554322 AS "Coeff"
     UNION ALL
     SELECT 6 AS "prob_idx", 0 AS "c_1", 7 AS "c_2", 2 AS "sv_idx", 0.400635 AS "Coeff"
     UNION ALL
     SELECT 6 AS "prob_idx", 0 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 0.876695 AS "Coeff"
     UNION ALL
     SELECT 6 AS "prob_idx", 0 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 0.892585 AS "Coeff"
     UNION ALL
     SELECT 6 AS "prob_idx", 0 AS "c_1", 7 AS "c_2", 15 AS "sv_idx", 0.337448 AS "Coeff"
     UNION ALL
     SELECT 7 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 7 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 4 AS "sv_idx", 1.020918 AS "Coeff"
     UNION ALL
     SELECT 7 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 8 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 3 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 8 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 4 AS "sv_idx", 0.897129 AS "Coeff"
     UNION ALL
     SELECT 8 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 6 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 9 AS "prob_idx", 1 AS "c_1", 4 AS "c_2", 3 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 9 AS "prob_idx", 1 AS "c_1", 4 AS "c_2", 4 AS "sv_idx", 1.324506 AS "Coeff"
     UNION ALL
     SELECT 9 AS "prob_idx", 1 AS "c_1", 4 AS "c_2", 7 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 10 AS "prob_idx", 1 AS "c_1", 5 AS "c_2", 3 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 10 AS "prob_idx", 1 AS "c_1", 5 AS "c_2", 4 AS "sv_idx", 1.227716 AS "Coeff"
     UNION ALL
     SELECT 10 AS "prob_idx", 1 AS "c_1", 5 AS "c_2", 8 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 10 AS "prob_idx", 1 AS "c_1", 5 AS "c_2", 9 AS "sv_idx", 1.020918 AS "Coeff"
     UNION ALL
     SELECT 10 AS "prob_idx", 1 AS "c_1", 5 AS "c_2", 10 AS "sv_idx", 0.088373 AS "Coeff"
     UNION ALL
     SELECT 11 AS "prob_idx", 1 AS "c_1", 6 AS "c_2", 3 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 11 AS "prob_idx", 1 AS "c_1", 6 AS "c_2", 4 AS "sv_idx", 1.652677 AS "Coeff"
     UNION ALL
     SELECT 11 AS "prob_idx", 1 AS "c_1", 6 AS "c_2", 11 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 11 AS "prob_idx", 1 AS "c_1", 6 AS "c_2", 12 AS "sv_idx", 1.020918 AS "Coeff"
     UNION ALL
     SELECT 12 AS "prob_idx", 1 AS "c_1", 7 AS "c_2", 3 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 12 AS "prob_idx", 1 AS "c_1", 7 AS "c_2", 4 AS "sv_idx", 1.554322 AS "Coeff"
     UNION ALL
     SELECT 12 AS "prob_idx", 1 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 0.809276 AS "Coeff"
     UNION ALL
     SELECT 12 AS "prob_idx", 1 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 1.020918 AS "Coeff"
     UNION ALL
     SELECT 12 AS "prob_idx", 1 AS "c_1", 7 AS "c_2", 15 AS "sv_idx", 0.088373 AS "Coeff"
     UNION ALL
     SELECT 13 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 5 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 13 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 6 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 14 AS "prob_idx", 2 AS "c_1", 4 AS "c_2", 5 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 14 AS "prob_idx", 2 AS "c_1", 4 AS "c_2", 7 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 15 AS "prob_idx", 2 AS "c_1", 5 AS "c_2", 5 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 15 AS "prob_idx", 2 AS "c_1", 5 AS "c_2", 8 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 15 AS "prob_idx", 2 AS "c_1", 5 AS "c_2", 9 AS "sv_idx", 0.897129 AS "Coeff"
     UNION ALL
     SELECT 15 AS "prob_idx", 2 AS "c_1", 5 AS "c_2", 10 AS "sv_idx", 0.108289 AS "Coeff"
     UNION ALL
     SELECT 16 AS "prob_idx", 2 AS "c_1", 6 AS "c_2", 5 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 16 AS "prob_idx", 2 AS "c_1", 6 AS "c_2", 11 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 16 AS "prob_idx", 2 AS "c_1", 6 AS "c_2", 12 AS "sv_idx", 0.897129 AS "Coeff"
     UNION ALL
     SELECT 17 AS "prob_idx", 2 AS "c_1", 7 AS "c_2", 5 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 17 AS "prob_idx", 2 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 0.763378 AS "Coeff"
     UNION ALL
     SELECT 17 AS "prob_idx", 2 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 0.897129 AS "Coeff"
     UNION ALL
     SELECT 17 AS "prob_idx", 2 AS "c_1", 7 AS "c_2", 15 AS "sv_idx", 0.108289 AS "Coeff"
     UNION ALL
     SELECT 18 AS "prob_idx", 3 AS "c_1", 4 AS "c_2", 6 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 18 AS "prob_idx", 3 AS "c_1", 4 AS "c_2", 7 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 19 AS "prob_idx", 3 AS "c_1", 5 AS "c_2", 6 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 19 AS "prob_idx", 3 AS "c_1", 5 AS "c_2", 8 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 19 AS "prob_idx", 3 AS "c_1", 5 AS "c_2", 9 AS "sv_idx", 1.324506 AS "Coeff"
     UNION ALL
     SELECT 20 AS "prob_idx", 3 AS "c_1", 6 AS "c_2", 6 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 20 AS "prob_idx", 3 AS "c_1", 6 AS "c_2", 11 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 20 AS "prob_idx", 3 AS "c_1", 6 AS "c_2", 12 AS "sv_idx", 1.324506 AS "Coeff"
     UNION ALL
     SELECT 21 AS "prob_idx", 3 AS "c_1", 7 AS "c_2", 6 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 21 AS "prob_idx", 3 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 0.692810 AS "Coeff"
     UNION ALL
     SELECT 21 AS "prob_idx", 3 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 1.324506 AS "Coeff"
     UNION ALL
     SELECT 22 AS "prob_idx", 4 AS "c_1", 5 AS "c_2", 7 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 22 AS "prob_idx", 4 AS "c_1", 5 AS "c_2", 8 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 22 AS "prob_idx", 4 AS "c_1", 5 AS "c_2", 9 AS "sv_idx", 1.227716 AS "Coeff"
     UNION ALL
     SELECT 22 AS "prob_idx", 4 AS "c_1", 5 AS "c_2", 10 AS "sv_idx", 0.141358 AS "Coeff"
     UNION ALL
     SELECT 23 AS "prob_idx", 4 AS "c_1", 6 AS "c_2", 7 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 23 AS "prob_idx", 4 AS "c_1", 6 AS "c_2", 11 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 23 AS "prob_idx", 4 AS "c_1", 6 AS "c_2", 12 AS "sv_idx", 1.227716 AS "Coeff"
     UNION ALL
     SELECT 24 AS "prob_idx", 4 AS "c_1", 7 AS "c_2", 7 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 24 AS "prob_idx", 4 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 0.764435 AS "Coeff"
     UNION ALL
     SELECT 24 AS "prob_idx", 4 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 1.227716 AS "Coeff"
     UNION ALL
     SELECT 24 AS "prob_idx", 4 AS "c_1", 7 AS "c_2", 15 AS "sv_idx", 0.141358 AS "Coeff"
     UNION ALL
     SELECT 25 AS "prob_idx", 5 AS "c_1", 6 AS "c_2", 8 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 25 AS "prob_idx", 5 AS "c_1", 6 AS "c_2", 9 AS "sv_idx", 1.652677 AS "Coeff"
     UNION ALL
     SELECT 25 AS "prob_idx", 5 AS "c_1", 6 AS "c_2", 10 AS "sv_idx", 0.255081 AS "Coeff"
     UNION ALL
     SELECT 25 AS "prob_idx", 5 AS "c_1", 6 AS "c_2", 11 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 25 AS "prob_idx", 5 AS "c_1", 6 AS "c_2", 12 AS "sv_idx", 1.652677 AS "Coeff"
     UNION ALL
     SELECT 26 AS "prob_idx", 5 AS "c_1", 7 AS "c_2", 8 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 26 AS "prob_idx", 5 AS "c_1", 7 AS "c_2", 9 AS "sv_idx", 1.554322 AS "Coeff"
     UNION ALL
     SELECT 26 AS "prob_idx", 5 AS "c_1", 7 AS "c_2", 10 AS "sv_idx", 0.400635 AS "Coeff"
     UNION ALL
     SELECT 26 AS "prob_idx", 5 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 1.008160 AS "Coeff"
     UNION ALL
     SELECT 26 AS "prob_idx", 5 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 1.652677 AS "Coeff"
     UNION ALL
     SELECT 26 AS "prob_idx", 5 AS "c_1", 7 AS "c_2", 15 AS "sv_idx", 0.255081 AS "Coeff"
     UNION ALL
     SELECT 27 AS "prob_idx", 6 AS "c_1", 7 AS "c_2", 11 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 27 AS "prob_idx", 6 AS "c_1", 7 AS "c_2", 12 AS "sv_idx", 1.554322 AS "Coeff"
     UNION ALL
     SELECT 27 AS "prob_idx", 6 AS "c_1", 7 AS "c_2", 13 AS "sv_idx", 2.063264 AS "Coeff"
     UNION ALL
     SELECT 27 AS "prob_idx", 6 AS "c_1", 7 AS "c_2", 14 AS "sv_idx", 1.554322 AS "Coeff"
     UNION ALL
     SELECT 27 AS "prob_idx", 6 AS "c_1", 7 AS "c_2", 15 AS "sv_idx", 0.400635 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 0.139462 AS "rho", -3.498402 AS "probA", 1.100996 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", -0.187209 AS "rho", 3.099294 AS "probA", -3.295724 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", -0.175037 AS "rho", 3.473924 AS "probA", -3.645561 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", -0.175159 AS "rho", 2.661045 AS "probA", -2.934013 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", 0.011174 AS "rho", -1.855199 AS "probA", -0.041459 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", 0.117322 AS "rho", -3.891511 AS "probA", 1.166594 AS "probB"
     UNION ALL
     SELECT 6 AS "prob_idx", 0.045358 AS "rho", -1.732644 AS "probA", 0.069654 AS "probB"
     UNION ALL
     SELECT 7 AS "prob_idx", -0.286764 AS "rho", 2.009982 AS "probA", -1.316839 AS "probB"
     UNION ALL
     SELECT 8 AS "prob_idx", -0.333427 AS "rho", 1.782273 AS "probA", -1.093868 AS "probB"
     UNION ALL
     SELECT 9 AS "prob_idx", -0.296770 AS "rho", 1.951064 AS "probA", -1.260900 AS "probB"
     UNION ALL
     SELECT 10 AS "prob_idx", -0.136139 AS "rho", -3.143539 AS "probA", -1.022231 AS "probB"
     UNION ALL
     SELECT 11 AS "prob_idx", -0.097301 AS "rho", 4.011396 AS "probA", 0.363140 AS "probB"
     UNION ALL
     SELECT 12 AS "prob_idx", -0.092998 AS "rho", -3.333288 AS "probA", -0.987522 AS "probB"
     UNION ALL
     SELECT 13 AS "prob_idx", 0.000000 AS "rho", 0.693147 AS "probA", -0.000000 AS "probB"
     UNION ALL
     SELECT 14 AS "prob_idx", 0.000000 AS "rho", 0.693147 AS "probA", -0.000000 AS "probB"
     UNION ALL
     SELECT 15 AS "prob_idx", 0.209566 AS "rho", 2.396178 AS "probA", 2.731611 AS "probB"
     UNION ALL
     SELECT 16 AS "prob_idx", 0.257723 AS "rho", 2.061934 AS "probA", 1.421299 AS "probB"
     UNION ALL
     SELECT 17 AS "prob_idx", 0.208761 AS "rho", 1.784479 AS "probA", 2.193547 AS "probB"
     UNION ALL
     SELECT 18 AS "prob_idx", 0.000000 AS "rho", 0.693147 AS "probA", -0.000000 AS "probB"
     UNION ALL
     SELECT 19 AS "prob_idx", 0.190208 AS "rho", 2.463789 AS "probA", 2.800936 AS "probB"
     UNION ALL
     SELECT 20 AS "prob_idx", 0.562492 AS "rho", 1.243461 AS "probA", 0.550935 AS "probB"
     UNION ALL
     SELECT 21 AS "prob_idx", 0.253210 AS "rho", 1.884711 AS "probA", 2.226861 AS "probB"
     UNION ALL
     SELECT 22 AS "prob_idx", 0.173952 AS "rho", 2.757071 AS "probA", 3.109014 AS "probB"
     UNION ALL
     SELECT 23 AS "prob_idx", 0.258070 AS "rho", 2.157272 AS "probA", 1.475385 AS "probB"
     UNION ALL
     SELECT 24 AS "prob_idx", 0.192946 AS "rho", 2.418531 AS "probA", 2.763117 AS "probB"
     UNION ALL
     SELECT 25 AS "prob_idx", 0.076615 AS "rho", -3.208704 AS "probA", 1.034803 AS "probB"
     UNION ALL
     SELECT 26 AS "prob_idx", 0.063254 AS "rho", -1.819131 AS "probA", 0.168355 AS "probB"
     UNION ALL
     SELECT 27 AS "prob_idx", -0.078079 AS "rho", -0.963328 AS "probA", -0.032850 AS "probB"
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
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1."c_1" == 2 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 2 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   SUM( CASE WHEN (t1."c_1" == 3 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 3 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   SUM( CASE WHEN (t1."c_1" == 4 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 4 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_4",
   CAST(NULL AS FLOAT) AS "Proba_4",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   SUM( CASE WHEN (t1."c_1" == 5 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 5 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_5",
   CAST(NULL AS FLOAT) AS "Proba_5",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   SUM( CASE WHEN (t1."c_1" == 6 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 6 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_6",
   CAST(NULL AS FLOAT) AS "Proba_6",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   SUM( CASE WHEN (t1."c_1" == 7 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 7 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_7",
   CAST(NULL AS FLOAT) AS "Proba_7",
   CAST(NULL AS FLOAT) AS "LogProba_7"
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
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
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
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
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
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
    CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
    CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
    CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
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
     t."Proba_4" AS "Proba_4",
     t."Score_4" AS "Score_4",
     t."Proba_5" AS "Proba_5",
     t."Score_5" AS "Score_5",
     t."Proba_6" AS "Proba_6",
     t."Score_6" AS "Score_6",
     t."Proba_7" AS "Proba_7",
     t."Score_7" AS "Score_7",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7" ) AS argmax_class_idx
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
  arg_max_cte."Score_4" AS "Score_4",
  arg_max_cte."Proba_4" AS "Proba_4",
  CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN LN( arg_max_cte."Proba_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
  arg_max_cte."Score_5" AS "Score_5",
  arg_max_cte."Proba_5" AS "Proba_5",
  CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN LN( arg_max_cte."Proba_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
  arg_max_cte."Score_6" AS "Score_6",
  arg_max_cte."Proba_6" AS "Proba_6",
  CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN LN( arg_max_cte."Proba_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
  arg_max_cte."Score_7" AS "Score_7",
  arg_max_cte."Proba_7" AS "Proba_7",
  CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN LN( arg_max_cte."Proba_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte