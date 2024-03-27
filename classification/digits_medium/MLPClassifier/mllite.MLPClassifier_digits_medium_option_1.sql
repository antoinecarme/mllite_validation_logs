WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    X_0 AS OUT_0,
    X_1 AS OUT_1,
    X_2 AS OUT_2,
    X_3 AS OUT_3,
    X_4 AS OUT_4,
    X_5 AS OUT_5,
    X_6 AS OUT_6,
    X_7 AS OUT_7,
    X_8 AS OUT_8,
    X_9 AS OUT_9,
    X_10 AS OUT_10,
    X_11 AS OUT_11,
    X_12 AS OUT_12,
    X_13 AS OUT_13,
    X_14 AS OUT_14,
    X_15 AS OUT_15,
    X_16 AS OUT_16,
    X_17 AS OUT_17,
    X_18 AS OUT_18,
    X_19 AS OUT_19,
    X_20 AS OUT_20,
    X_21 AS OUT_21,
    X_22 AS OUT_22,
    X_23 AS OUT_23,
    X_24 AS OUT_24,
    X_25 AS OUT_25,
    X_26 AS OUT_26,
    X_27 AS OUT_27,
    X_28 AS OUT_28,
    X_29 AS OUT_29,
    X_30 AS OUT_30,
    X_31 AS OUT_31,
    X_32 AS OUT_32,
    X_33 AS OUT_33,
    X_34 AS OUT_34,
    X_35 AS OUT_35,
    X_36 AS OUT_36,
    X_37 AS OUT_37,
    X_38 AS OUT_38,
    X_39 AS OUT_39,
    X_40 AS OUT_40,
    X_41 AS OUT_41,
    X_42 AS OUT_42,
    X_43 AS OUT_43,
    X_44 AS OUT_44,
    X_45 AS OUT_45,
    X_46 AS OUT_46,
    X_47 AS OUT_47,
    X_48 AS OUT_48,
    X_49 AS OUT_49,
    X_50 AS OUT_50,
    X_51 AS OUT_51,
    X_52 AS OUT_52,
    X_53 AS OUT_53,
    X_54 AS OUT_54,
    X_55 AS OUT_55,
    X_56 AS OUT_56,
    X_57 AS OUT_57,
    X_58 AS OUT_58,
    X_59 AS OUT_59,
    X_60 AS OUT_60,
    X_61 AS OUT_61,
    X_62 AS OUT_62,
    X_63 AS OUT_63
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.068565 + -0.025613 * t.OUT_0  + 0.065646 * t.OUT_1  + 0.224953 * t.OUT_2  + 0.260561 * t.OUT_3  + 0.120980 * t.OUT_4  + 0.103269 * t.OUT_5  + -0.065966 * t.OUT_6  + -0.037948 * t.OUT_7  + -0.051841 * t.OUT_8  + -0.235295 * t.OUT_9  + -0.246872 * t.OUT_10  + -0.222385 * t.OUT_11  + 0.161316 * t.OUT_12  + 0.142742 * t.OUT_13  + 0.066342 * t.OUT_14  + -0.273048 * t.OUT_15  + -0.253545 * t.OUT_16  + 0.249738 * t.OUT_17  + -0.046037 * t.OUT_18  + 0.096639 * t.OUT_19  + 0.081464 * t.OUT_20  + -0.302625 * t.OUT_21  + -0.251433 * t.OUT_22  + -0.002306 * t.OUT_23  + 0.050220 * t.OUT_24  + 0.086057 * t.OUT_25  + 0.160299 * t.OUT_26  + -0.157273 * t.OUT_27  + 0.108189 * t.OUT_28  + 0.011657 * t.OUT_29  + 0.117753 * t.OUT_30  + -0.189299 * t.OUT_31  + 0.135719 * t.OUT_32  + 0.233188 * t.OUT_33  + -0.259405 * t.OUT_34  + -0.226935 * t.OUT_35  + -0.231726 * t.OUT_36  + -0.080083 * t.OUT_37  + -0.085029 * t.OUT_38  + -0.252666 * t.OUT_39  + 0.102492 * t.OUT_40  + -0.169635 * t.OUT_41  + -0.288410 * t.OUT_42  + 0.095328 * t.OUT_43  + 0.209104 * t.OUT_44  + 0.128345 * t.OUT_45  + 0.073407 * t.OUT_46  + 0.224732 * t.OUT_47  + 0.193557 * t.OUT_48  + -0.296198 * t.OUT_49  + -0.154843 * t.OUT_50  + 0.241608 * t.OUT_51  + -0.007625 * t.OUT_52  + 0.095342 * t.OUT_53  + -0.201065 * t.OUT_54  + -0.181433 * t.OUT_55  + -0.085867 * t.OUT_56  + -0.260848 * t.OUT_57  + -0.009609 * t.OUT_58  + -0.134308 * t.OUT_59  + -0.067613 * t.OUT_60  + 0.010977 * t.OUT_61  + 0.023646 * t.OUT_62  + 0.140423 * t.OUT_63 AS OUT_0,
    -0.203207 + 0.154095 * t.OUT_0  + -0.223246 * t.OUT_1  + 0.009881 * t.OUT_2  + -0.317274 * t.OUT_3  + -0.186715 * t.OUT_4  + -0.303201 * t.OUT_5  + -0.270275 * t.OUT_6  + -0.012340 * t.OUT_7  + 0.141198 * t.OUT_8  + 0.203498 * t.OUT_9  + 0.108242 * t.OUT_10  + -0.282077 * t.OUT_11  + 0.200516 * t.OUT_12  + 0.195431 * t.OUT_13  + 0.003729 * t.OUT_14  + 0.020185 * t.OUT_15  + 0.205897 * t.OUT_16  + 0.220850 * t.OUT_17  + 0.229521 * t.OUT_18  + 0.131867 * t.OUT_19  + 0.159382 * t.OUT_20  + 0.090122 * t.OUT_21  + -0.334997 * t.OUT_22  + -0.071411 * t.OUT_23  + -0.097344 * t.OUT_24  + -0.269831 * t.OUT_25  + 0.200042 * t.OUT_26  + 0.017013 * t.OUT_27  + -0.025778 * t.OUT_28  + -0.157519 * t.OUT_29  + 0.101445 * t.OUT_30  + -0.000784 * t.OUT_31  + -0.280731 * t.OUT_32  + -0.259987 * t.OUT_33  + -0.284699 * t.OUT_34  + -0.232840 * t.OUT_35  + -0.251270 * t.OUT_36  + 0.027742 * t.OUT_37  + 0.182091 * t.OUT_38  + -0.144333 * t.OUT_39  + -0.157461 * t.OUT_40  + 0.094532 * t.OUT_41  + 0.118950 * t.OUT_42  + 0.092162 * t.OUT_43  + 0.232207 * t.OUT_44  + -0.019497 * t.OUT_45  + 0.062901 * t.OUT_46  + 0.149813 * t.OUT_47  + -0.175935 * t.OUT_48  + -0.207174 * t.OUT_49  + -0.062447 * t.OUT_50  + -0.003915 * t.OUT_51  + 0.091646 * t.OUT_52  + -0.184723 * t.OUT_53  + -0.233830 * t.OUT_54  + -0.303479 * t.OUT_55  + 0.081220 * t.OUT_56  + 0.198273 * t.OUT_57  + 0.244299 * t.OUT_58  + 0.209447 * t.OUT_59  + -0.070289 * t.OUT_60  + -0.103999 * t.OUT_61  + 0.050293 * t.OUT_62  + -0.169478 * t.OUT_63 AS OUT_1,
    -0.026124 + -0.121240 * t.OUT_0  + 0.130489 * t.OUT_1  + 0.287992 * t.OUT_2  + -0.087168 * t.OUT_3  + -0.180164 * t.OUT_4  + -0.066890 * t.OUT_5  + -0.129983 * t.OUT_6  + -0.265979 * t.OUT_7  + -0.059769 * t.OUT_8  + -0.178987 * t.OUT_9  + 0.108212 * t.OUT_10  + 0.079538 * t.OUT_11  + 0.193123 * t.OUT_12  + -0.197739 * t.OUT_13  + 0.074605 * t.OUT_14  + 0.121673 * t.OUT_15  + -0.165366 * t.OUT_16  + 0.001582 * t.OUT_17  + -0.217243 * t.OUT_18  + 0.224544 * t.OUT_19  + 0.183147 * t.OUT_20  + -0.020607 * t.OUT_21  + -0.120126 * t.OUT_22  + -0.042941 * t.OUT_23  + -0.115281 * t.OUT_24  + -0.129264 * t.OUT_25  + 0.179734 * t.OUT_26  + 0.052188 * t.OUT_27  + 0.145478 * t.OUT_28  + -0.106255 * t.OUT_29  + -0.223662 * t.OUT_30  + 0.055791 * t.OUT_31  + -0.267053 * t.OUT_32  + -0.151487 * t.OUT_33  + -0.139121 * t.OUT_34  + -0.299882 * t.OUT_35  + 0.024557 * t.OUT_36  + 0.011080 * t.OUT_37  + 0.249956 * t.OUT_38  + 0.123827 * t.OUT_39  + 0.273531 * t.OUT_40  + -0.186769 * t.OUT_41  + 0.017118 * t.OUT_42  + -0.033387 * t.OUT_43  + -0.156411 * t.OUT_44  + -0.022918 * t.OUT_45  + -0.205266 * t.OUT_46  + -0.086117 * t.OUT_47  + 0.038748 * t.OUT_48  + -0.145120 * t.OUT_49  + -0.211374 * t.OUT_50  + 0.025400 * t.OUT_51  + -0.010455 * t.OUT_52  + -0.085781 * t.OUT_53  + 0.124230 * t.OUT_54  + 0.293428 * t.OUT_55  + 0.137762 * t.OUT_56  + 0.308895 * t.OUT_57  + 0.227436 * t.OUT_58  + -0.256490 * t.OUT_59  + 0.078415 * t.OUT_60  + -0.222077 * t.OUT_61  + -0.222105 * t.OUT_62  + 0.021382 * t.OUT_63 AS OUT_2,
    0.178082 + -0.021865 * t.OUT_0  + -0.019226 * t.OUT_1  + -0.091075 * t.OUT_2  + 0.070477 * t.OUT_3  + -0.239311 * t.OUT_4  + 0.036971 * t.OUT_5  + 0.286731 * t.OUT_6  + 0.043999 * t.OUT_7  + 0.110003 * t.OUT_8  + 0.117414 * t.OUT_9  + 0.223586 * t.OUT_10  + 0.078900 * t.OUT_11  + -0.199856 * t.OUT_12  + 0.127284 * t.OUT_13  + 0.159624 * t.OUT_14  + 0.194012 * t.OUT_15  + -0.274692 * t.OUT_16  + -0.285667 * t.OUT_17  + 0.079904 * t.OUT_18  + -0.122506 * t.OUT_19  + -0.012722 * t.OUT_20  + -0.075837 * t.OUT_21  + 0.227415 * t.OUT_22  + -0.252704 * t.OUT_23  + -0.029700 * t.OUT_24  + 0.175749 * t.OUT_25  + 0.158097 * t.OUT_26  + 0.201569 * t.OUT_27  + 0.191915 * t.OUT_28  + -0.156684 * t.OUT_29  + 0.063240 * t.OUT_30  + -0.119526 * t.OUT_31  + 0.221463 * t.OUT_32  + -0.236869 * t.OUT_33  + -0.098896 * t.OUT_34  + 0.028317 * t.OUT_35  + 0.101389 * t.OUT_36  + -0.194649 * t.OUT_37  + -0.075495 * t.OUT_38  + -0.245958 * t.OUT_39  + 0.285498 * t.OUT_40  + 0.170073 * t.OUT_41  + -0.218569 * t.OUT_42  + -0.150402 * t.OUT_43  + 0.057988 * t.OUT_44  + 0.258762 * t.OUT_45  + -0.064782 * t.OUT_46  + -0.082199 * t.OUT_47  + 0.221785 * t.OUT_48  + -0.203399 * t.OUT_49  + 0.132996 * t.OUT_50  + 0.085551 * t.OUT_51  + 0.166778 * t.OUT_52  + -0.271660 * t.OUT_53  + -0.068420 * t.OUT_54  + -0.153709 * t.OUT_55  + 0.108609 * t.OUT_56  + 0.194890 * t.OUT_57  + 0.037152 * t.OUT_58  + -0.316064 * t.OUT_59  + 0.223656 * t.OUT_60  + -0.168934 * t.OUT_61  + -0.057849 * t.OUT_62  + -0.106041 * t.OUT_63 AS OUT_3
 FROM Input_Layer_BA AS t
)
,
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3
 FROM Hidden_Layer_1_BA AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    -0.152505 + 0.250334 * t.OUT_0  + 0.323975 * t.OUT_1  + 0.227391 * t.OUT_2  + 0.453962 * t.OUT_3 AS OUT_0,
    0.181528 + 0.441250 * t.OUT_0  + 0.160250 * t.OUT_1  + 0.618777 * t.OUT_2  + 0.352872 * t.OUT_3 AS OUT_1,
    -0.506726 + 0.491413 * t.OUT_0  + 0.656115 * t.OUT_1  + -0.329266 * t.OUT_2  + 0.430361 * t.OUT_3 AS OUT_2,
    0.174810 + 0.474990 * t.OUT_0  + 0.382123 * t.OUT_1  + 0.433345 * t.OUT_2  + -0.670295 * t.OUT_3 AS OUT_3,
    -0.736090 + 0.207374 * t.OUT_0  + 0.603784 * t.OUT_1  + 0.317801 * t.OUT_2  + 0.231644 * t.OUT_3 AS OUT_4,
    0.359813 + -0.473295 * t.OUT_0  + -0.381315 * t.OUT_1  + 0.724535 * t.OUT_2  + 0.594477 * t.OUT_3 AS OUT_5,
    0.022883 + -0.069089 * t.OUT_0  + 0.138857 * t.OUT_1  + -0.045112 * t.OUT_2  + 0.148270 * t.OUT_3 AS OUT_6,
    0.016636 + -0.461690 * t.OUT_0  + 0.439218 * t.OUT_1  + 0.234485 * t.OUT_2  + 0.564672 * t.OUT_3 AS OUT_7
 FROM Hidden_Layer_1_Activation AS t
)
,
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5,
    CASE WHEN (OUT_6 > 0) THEN OUT_6 ELSE 0 END AS OUT_6,
    CASE WHEN (OUT_7 > 0) THEN OUT_7 ELSE 0 END AS OUT_7
 FROM Hidden_Layer_2_BA AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    -0.223519 + 0.293143 * t.OUT_0  + -0.057713 * t.OUT_1  + 0.322652 * t.OUT_2  + -0.414844 * t.OUT_3  + 0.261675 * t.OUT_4  + -0.481203 * t.OUT_5  + 0.590984 * t.OUT_6  + -0.234432 * t.OUT_7 AS OUT_0,
    -0.009232 + -0.574658 * t.OUT_0  + -0.239175 * t.OUT_1  + -0.557870 * t.OUT_2  + 0.099550 * t.OUT_3  + 0.044977 * t.OUT_4  + 0.108642 * t.OUT_5  + -0.497021 * t.OUT_6  + -0.269686 * t.OUT_7 AS OUT_1,
    0.536008 + -0.478215 * t.OUT_0  + -0.171607 * t.OUT_1  + 0.513434 * t.OUT_2  + -0.242892 * t.OUT_3  + 0.412864 * t.OUT_4  + 0.246761 * t.OUT_5  + -0.213993 * t.OUT_6  + -0.170049 * t.OUT_7 AS OUT_2,
    -0.009230 + -0.235041 * t.OUT_0  + 0.366726 * t.OUT_1  + -0.184304 * t.OUT_2  + 0.530054 * t.OUT_3  + 0.372032 * t.OUT_4  + 0.201401 * t.OUT_5  + -0.244662 * t.OUT_6  + 0.282846 * t.OUT_7 AS OUT_3,
    -0.514099 + -0.456963 * t.OUT_0  + 0.353595 * t.OUT_1  + 0.160227 * t.OUT_2  + -0.590324 * t.OUT_3  + -0.394099 * t.OUT_4  + -0.190328 * t.OUT_5  + 0.012797 * t.OUT_6  + 0.087162 * t.OUT_7 AS OUT_4,
    -0.314064 + 0.262046 * t.OUT_0  + -0.272955 * t.OUT_1  + -0.401604 * t.OUT_2  + -0.330454 * t.OUT_3  + -0.446251 * t.OUT_4  + 0.041223 * t.OUT_5  + -0.212515 * t.OUT_6  + -0.303818 * t.OUT_7 AS OUT_5
 FROM Hidden_Layer_2_Activation AS t
)
,
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5
 FROM Hidden_Layer_3_BA AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    -0.151056 + -0.466051 * t.OUT_0  + 0.546363 * t.OUT_1  + -0.524304 * t.OUT_2  + -0.345979 * t.OUT_3  + -0.389083 * t.OUT_4  + -0.288505 * t.OUT_5 AS OUT_0,
    -0.541346 + 0.301699 * t.OUT_0  + -0.380402 * t.OUT_1  + 0.506697 * t.OUT_2  + -0.250591 * t.OUT_3  + 0.337891 * t.OUT_4  + 0.013625 * t.OUT_5 AS OUT_1,
    -0.058177 + -0.250165 * t.OUT_0  + 0.247371 * t.OUT_1  + -0.550004 * t.OUT_2  + 0.067320 * t.OUT_3  + -0.446701 * t.OUT_4  + 0.608485 * t.OUT_5 AS OUT_2,
    -0.241595 + -0.157605 * t.OUT_0  + -0.444782 * t.OUT_1  + -0.062234 * t.OUT_2  + 0.393163 * t.OUT_3  + -0.150599 * t.OUT_4  + 0.500203 * t.OUT_5 AS OUT_3,
    0.007968 + -0.435199 * t.OUT_0  + 0.273228 * t.OUT_1  + 0.523399 * t.OUT_2  + -0.039322 * t.OUT_3  + 0.508040 * t.OUT_4  + 0.465535 * t.OUT_5 AS OUT_4,
    -0.164337 + 0.124278 * t.OUT_0  + -0.338144 * t.OUT_1  + 0.021766 * t.OUT_2  + 0.238835 * t.OUT_3  + -0.363815 * t.OUT_4  + -0.136175 * t.OUT_5 AS OUT_5,
    0.523988 + -0.497023 * t.OUT_0  + -0.323440 * t.OUT_1  + -0.171730 * t.OUT_2  + 0.312263 * t.OUT_3  + -0.310573 * t.OUT_4  + -0.291553 * t.OUT_5 AS OUT_6,
    0.332996 + -0.230508 * t.OUT_0  + -0.359362 * t.OUT_1  + -0.251288 * t.OUT_2  + 0.284678 * t.OUT_3  + 0.084499 * t.OUT_4  + -0.266297 * t.OUT_5 AS OUT_7,
    -0.321239 + 0.458872 * t.OUT_0  + -0.577182 * t.OUT_1  + 0.448445 * t.OUT_2  + -0.408569 * t.OUT_3  + 0.311561 * t.OUT_4  + 0.116867 * t.OUT_5 AS OUT_8,
    0.033606 + -0.328823 * t.OUT_0  + 0.108312 * t.OUT_1  + -0.270918 * t.OUT_2  + 0.291315 * t.OUT_3  + 0.553982 * t.OUT_4  + -0.521211 * t.OUT_5 AS OUT_9
 FROM Hidden_Layer_3_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2",
    CAST(NULL AS FLOAT) AS "Proba_3", t.OUT_3 AS "Score_3", CAST(NULL AS FLOAT) AS "LogProba_3",
    CAST(NULL AS FLOAT) AS "Proba_4", t.OUT_4 AS "Score_4", CAST(NULL AS FLOAT) AS "LogProba_4",
    CAST(NULL AS FLOAT) AS "Proba_5", t.OUT_5 AS "Score_5", CAST(NULL AS FLOAT) AS "LogProba_5",
    CAST(NULL AS FLOAT) AS "Proba_6", t.OUT_6 AS "Score_6", CAST(NULL AS FLOAT) AS "LogProba_6",
    CAST(NULL AS FLOAT) AS "Proba_7", t.OUT_7 AS "Score_7", CAST(NULL AS FLOAT) AS "LogProba_7",
    CAST(NULL AS FLOAT) AS "Proba_8", t.OUT_8 AS "Score_8", CAST(NULL AS FLOAT) AS "LogProba_8",
    CAST(NULL AS FLOAT) AS "Proba_9", t.OUT_9 AS "Score_9", CAST(NULL AS FLOAT) AS "LogProba_9"
  FROM "Output_Layer_BA" AS t )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 4 AS class,  "LogProba_4" AS "LogProba", "Proba_4" AS "Proba", "Score_4" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 5 AS class,  "LogProba_5" AS "LogProba", "Proba_5" AS "Proba", "Score_5" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 6 AS class,  "LogProba_6" AS "LogProba", "Proba_6" AS "Proba", "Score_6" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 7 AS class,  "LogProba_7" AS "LogProba", "Proba_7" AS "Proba", "Score_7" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 8 AS class,  "LogProba_8" AS "LogProba", "Proba_8" AS "Proba", "Score_8" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 9 AS class,  "LogProba_9" AS "LogProba", "Proba_9" AS "Proba", "Score_9" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
   t."LogProba_4" AS "LogProba_4", t."Proba_4" AS "Proba_4", t."Score_4" AS "Score_4",
   t."LogProba_5" AS "LogProba_5", t."Proba_5" AS "Proba_5", t."Score_5" AS "Score_5",
   t."LogProba_6" AS "LogProba_6", t."Proba_6" AS "Proba_6", t."Score_6" AS "Score_6",
   t."LogProba_7" AS "LogProba_7", t."Proba_7" AS "Proba_7", t."Score_7" AS "Score_7",
   t."LogProba_8" AS "LogProba_8", t."Proba_8" AS "Proba_8", t."Score_8" AS "Score_8",
   t."LogProba_9" AS "LogProba_9", t."Proba_9" AS "Proba_9", t."Score_9" AS "Score_9",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."Score_2" AS "Score_2",
    EXP(max(-32.0, soft_max_score_max."Score_2" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_2",
    soft_max_score_max."Score_3" AS "Score_3",
    EXP(max(-32.0, soft_max_score_max."Score_3" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_3",
    soft_max_score_max."Score_4" AS "Score_4",
    EXP(max(-32.0, soft_max_score_max."Score_4" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_4",
    soft_max_score_max."Score_5" AS "Score_5",
    EXP(max(-32.0, soft_max_score_max."Score_5" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_5",
    soft_max_score_max."Score_6" AS "Score_6",
    EXP(max(-32.0, soft_max_score_max."Score_6" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_6",
    soft_max_score_max."Score_7" AS "Score_7",
    EXP(max(-32.0, soft_max_score_max."Score_7" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_7",
    soft_max_score_max."Score_8" AS "Score_8",
    EXP(max(-32.0, soft_max_score_max."Score_8" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_8",
    soft_max_score_max."Score_9" AS "Score_9",
    EXP(max(-32.0, soft_max_score_max."Score_9" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_9",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 2 AS "class", t."ExpDelta_Score_2" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 3 AS "class", t."ExpDelta_Score_3" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 4 AS "class", t."ExpDelta_Score_4" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 5 AS "class", t."ExpDelta_Score_5" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 6 AS "class", t."ExpDelta_Score_6" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 7 AS "class", t."ExpDelta_Score_7" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 8 AS "class", t."ExpDelta_Score_8" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 9 AS "class", t."ExpDelta_Score_9" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."ExpDelta_Score_2" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."ExpDelta_Score_3" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    CAST(NULL AS FLOAT) AS "LogProba_4",
    t1."ExpDelta_Score_4" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    CAST(NULL AS FLOAT) AS "LogProba_5",
    t1."ExpDelta_Score_5" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    CAST(NULL AS FLOAT) AS "LogProba_6",
    t1."ExpDelta_Score_6" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    CAST(NULL AS FLOAT) AS "LogProba_7",
    t1."ExpDelta_Score_7" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    CAST(NULL AS FLOAT) AS "LogProba_8",
    t1."ExpDelta_Score_8" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    CAST(NULL AS FLOAT) AS "LogProba_9",
    t1."ExpDelta_Score_9" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 4 AS class,  "LogProba_4" AS "LogProba", "Proba_4" AS "Proba", "Score_4" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 5 AS class,  "LogProba_5" AS "LogProba", "Proba_5" AS "Proba", "Score_5" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 6 AS class,  "LogProba_6" AS "LogProba", "Proba_6" AS "Proba", "Score_6" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 7 AS class,  "LogProba_7" AS "LogProba", "Proba_7" AS "Proba", "Score_7" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 8 AS class,  "LogProba_8" AS "LogProba", "Proba_8" AS "Proba", "Score_8" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 9 AS class,  "LogProba_9" AS "LogProba", "Proba_9" AS "Proba", "Score_9" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
   t."LogProba_4" AS "LogProba_4", t."Proba_4" AS "Proba_4", t."Score_4" AS "Score_4",
   t."LogProba_5" AS "LogProba_5", t."Proba_5" AS "Proba_5", t."Score_5" AS "Score_5",
   t."LogProba_6" AS "LogProba_6", t."Proba_6" AS "Proba_6", t."Score_6" AS "Score_6",
   t."LogProba_7" AS "LogProba_7", t."Proba_7" AS "Proba_7", t."Score_7" AS "Score_7",
   t."LogProba_8" AS "LogProba_8", t."Proba_8" AS "Proba_8", t."Score_8" AS "Score_8",
   t."LogProba_9" AS "LogProba_9", t."Proba_9" AS "Proba_9", t."Score_9" AS "Score_9",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
   score_max."LogProba_4" AS "LogProba_4", score_max."Proba_4" AS "Proba_4", score_max."Score_4" AS "Score_4",
   score_max."LogProba_5" AS "LogProba_5", score_max."Proba_5" AS "Proba_5", score_max."Score_5" AS "Score_5",
   score_max."LogProba_6" AS "LogProba_6", score_max."Proba_6" AS "Proba_6", score_max."Score_6" AS "Score_6",
   score_max."LogProba_7" AS "LogProba_7", score_max."Proba_7" AS "Proba_7", score_max."Score_7" AS "Score_7",
   score_max."LogProba_8" AS "LogProba_8", score_max."Proba_8" AS "Proba_8", score_max."Score_8" AS "Score_8",
   score_max."LogProba_9" AS "LogProba_9", score_max."Proba_9" AS "Proba_9", score_max."Score_9" AS "Score_9",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
   score_max."LogProba_4" AS "LogProba_4", score_max."Proba_4" AS "Proba_4", score_max."Score_4" AS "Score_4",
   score_max."LogProba_5" AS "LogProba_5", score_max."Proba_5" AS "Proba_5", score_max."Score_5" AS "Score_5",
   score_max."LogProba_6" AS "LogProba_6", score_max."Proba_6" AS "Proba_6", score_max."Score_6" AS "Score_6",
   score_max."LogProba_7" AS "LogProba_7", score_max."Proba_7" AS "Proba_7", score_max."Score_7" AS "Score_7",
   score_max."LogProba_8" AS "LogProba_8", score_max."Proba_8" AS "Proba_8", score_max."Score_8" AS "Score_8",
   score_max."LogProba_9" AS "LogProba_9", score_max."Proba_9" AS "Proba_9", score_max."Score_9" AS "Score_9",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
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
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
   WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3"
   WHEN (arg_max_cte."arg_max_Score" = 4) THEN arg_max_cte."Proba_4"
   WHEN (arg_max_cte."arg_max_Score" = 5) THEN arg_max_cte."Proba_5"
   WHEN (arg_max_cte."arg_max_Score" = 6) THEN arg_max_cte."Proba_6"
   WHEN (arg_max_cte."arg_max_Score" = 7) THEN arg_max_cte."Proba_7"
   WHEN (arg_max_cte."arg_max_Score" = 8) THEN arg_max_cte."Proba_8"
   WHEN (arg_max_cte."arg_max_Score" = 9) THEN arg_max_cte."Proba_9"
 END AS "DecisionProba"
FROM arg_max_cte