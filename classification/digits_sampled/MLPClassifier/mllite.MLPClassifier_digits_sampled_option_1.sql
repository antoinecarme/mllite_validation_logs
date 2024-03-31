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
    0.072905 + -0.025613 * t.OUT_0  + 0.027735 * t.OUT_1  + 0.224565 * t.OUT_2  + 0.265412 * t.OUT_3  + 0.125106 * t.OUT_4  + 0.111604 * t.OUT_5  + -0.059675 * t.OUT_6  + -0.043032 * t.OUT_7  + -0.133345 * t.OUT_8  + -0.236334 * t.OUT_9  + -0.242434 * t.OUT_10  + -0.219286 * t.OUT_11  + 0.162308 * t.OUT_12  + 0.148104 * t.OUT_13  + 0.081640 * t.OUT_14  + -0.282283 * t.OUT_15  + -0.301131 * t.OUT_16  + 0.260975 * t.OUT_17  + -0.042170 * t.OUT_18  + 0.087488 * t.OUT_19  + 0.079279 * t.OUT_20  + -0.296899 * t.OUT_21  + -0.250704 * t.OUT_22  + -0.004432 * t.OUT_23  + 0.098972 * t.OUT_24  + 0.098210 * t.OUT_25  + 0.166570 * t.OUT_26  + -0.153732 * t.OUT_27  + 0.113145 * t.OUT_28  + 0.011446 * t.OUT_29  + 0.117596 * t.OUT_30  + -0.209900 * t.OUT_31  + 0.135719 * t.OUT_32  + 0.232427 * t.OUT_33  + -0.256476 * t.OUT_34  + -0.212149 * t.OUT_35  + -0.221905 * t.OUT_36  + -0.079525 * t.OUT_37  + -0.083311 * t.OUT_38  + -0.252666 * t.OUT_39  + 0.068648 * t.OUT_40  + -0.170201 * t.OUT_41  + -0.287095 * t.OUT_42  + 0.105874 * t.OUT_43  + 0.215145 * t.OUT_44  + 0.131960 * t.OUT_45  + 0.076969 * t.OUT_46  + 0.228682 * t.OUT_47  + 0.188350 * t.OUT_48  + -0.300568 * t.OUT_49  + -0.153086 * t.OUT_50  + 0.250182 * t.OUT_51  + -0.007876 * t.OUT_52  + 0.101170 * t.OUT_53  + -0.193588 * t.OUT_54  + -0.167595 * t.OUT_55  + -0.090571 * t.OUT_56  + -0.288812 * t.OUT_57  + -0.011228 * t.OUT_58  + -0.131655 * t.OUT_59  + -0.065309 * t.OUT_60  + 0.020479 * t.OUT_61  + 0.036676 * t.OUT_62  + 0.140147 * t.OUT_63 AS OUT_0,
    -0.193930 + 0.154095 * t.OUT_0  + -0.247875 * t.OUT_1  + 0.019432 * t.OUT_2  + -0.304680 * t.OUT_3  + -0.184001 * t.OUT_4  + -0.331064 * t.OUT_5  + -0.284359 * t.OUT_6  + -0.018874 * t.OUT_7  + 0.081378 * t.OUT_8  + 0.216873 * t.OUT_9  + 0.120556 * t.OUT_10  + -0.272309 * t.OUT_11  + 0.209043 * t.OUT_12  + 0.197858 * t.OUT_13  + 0.024604 * t.OUT_14  + 0.013688 * t.OUT_15  + 0.180078 * t.OUT_16  + 0.236388 * t.OUT_17  + 0.241205 * t.OUT_18  + 0.137219 * t.OUT_19  + 0.168617 * t.OUT_20  + 0.105181 * t.OUT_21  + -0.325009 * t.OUT_22  + -0.073960 * t.OUT_23  + -0.090357 * t.OUT_24  + -0.255559 * t.OUT_25  + 0.211536 * t.OUT_26  + 0.002748 * t.OUT_27  + -0.034981 * t.OUT_28  + -0.149374 * t.OUT_29  + 0.115764 * t.OUT_30  + -0.022775 * t.OUT_31  + -0.280731 * t.OUT_32  + -0.245172 * t.OUT_33  + -0.269314 * t.OUT_34  + -0.232130 * t.OUT_35  + -0.262392 * t.OUT_36  + 0.034876 * t.OUT_37  + 0.198349 * t.OUT_38  + -0.144333 * t.OUT_39  + -0.181852 * t.OUT_40  + 0.108505 * t.OUT_41  + 0.133904 * t.OUT_42  + 0.106129 * t.OUT_43  + 0.220194 * t.OUT_44  + -0.007576 * t.OUT_45  + 0.078251 * t.OUT_46  + 0.151656 * t.OUT_47  + -0.179307 * t.OUT_48  + -0.202905 * t.OUT_49  + -0.048073 * t.OUT_50  + 0.009767 * t.OUT_51  + 0.099613 * t.OUT_52  + -0.169251 * t.OUT_53  + -0.221514 * t.OUT_54  + -0.294174 * t.OUT_55  + 0.075838 * t.OUT_56  + 0.178976 * t.OUT_57  + 0.255242 * t.OUT_58  + 0.220572 * t.OUT_59  + -0.059624 * t.OUT_60  + -0.091481 * t.OUT_61  + 0.063909 * t.OUT_62  + -0.163946 * t.OUT_63 AS OUT_1,
    -0.011577 + -0.121240 * t.OUT_0  + 0.097182 * t.OUT_1  + 0.272570 * t.OUT_2  + -0.121555 * t.OUT_3  + -0.171132 * t.OUT_4  + -0.057263 * t.OUT_5  + -0.138350 * t.OUT_6  + -0.239394 * t.OUT_7  + -0.059769 * t.OUT_8  + -0.181472 * t.OUT_9  + 0.098653 * t.OUT_10  + 0.083520 * t.OUT_11  + 0.205678 * t.OUT_12  + -0.170814 * t.OUT_13  + 0.024114 * t.OUT_14  + 0.148243 * t.OUT_15  + -0.165366 * t.OUT_16  + -0.010595 * t.OUT_17  + -0.210291 * t.OUT_18  + 0.234558 * t.OUT_19  + 0.198883 * t.OUT_20  + 0.019386 * t.OUT_21  + -0.082181 * t.OUT_22  + -0.068791 * t.OUT_23  + -0.115281 * t.OUT_24  + -0.128890 * t.OUT_25  + 0.189129 * t.OUT_26  + 0.066633 * t.OUT_27  + 0.164238 * t.OUT_28  + -0.064983 * t.OUT_29  + -0.193444 * t.OUT_30  + 0.055791 * t.OUT_31  + -0.267053 * t.OUT_32  + -0.147429 * t.OUT_33  + -0.133791 * t.OUT_34  + -0.297662 * t.OUT_35  + 0.025777 * t.OUT_36  + 0.051318 * t.OUT_37  + 0.307111 * t.OUT_38  + 0.123827 * t.OUT_39  + 0.273531 * t.OUT_40  + -0.178484 * t.OUT_41  + 0.028174 * t.OUT_42  + -0.027486 * t.OUT_43  + -0.154740 * t.OUT_44  + 0.005296 * t.OUT_45  + -0.176262 * t.OUT_46  + -0.086117 * t.OUT_47  + 0.038748 * t.OUT_48  + -0.139897 * t.OUT_49  + -0.227233 * t.OUT_50  + -0.009922 * t.OUT_51  + 0.009163 * t.OUT_52  + -0.062074 * t.OUT_53  + 0.114608 * t.OUT_54  + 0.271146 * t.OUT_55  + 0.137762 * t.OUT_56  + 0.296775 * t.OUT_57  + 0.216108 * t.OUT_58  + -0.292239 * t.OUT_59  + 0.104591 * t.OUT_60  + -0.179562 * t.OUT_61  + -0.236956 * t.OUT_62  + 0.001121 * t.OUT_63 AS OUT_2,
    0.172904 + -0.021865 * t.OUT_0  + -0.022417 * t.OUT_1  + -0.076537 * t.OUT_2  + 0.082912 * t.OUT_3  + -0.259610 * t.OUT_4  + -0.023930 * t.OUT_5  + 0.204653 * t.OUT_6  + 0.045661 * t.OUT_7  + 0.172532 * t.OUT_8  + 0.125771 * t.OUT_9  + 0.238012 * t.OUT_10  + 0.078934 * t.OUT_11  + -0.216306 * t.OUT_12  + 0.101109 * t.OUT_13  + 0.113279 * t.OUT_14  + 0.173108 * t.OUT_15  + -0.239779 * t.OUT_16  + -0.267821 * t.OUT_17  + 0.085488 * t.OUT_18  + -0.170083 * t.OUT_19  + -0.050948 * t.OUT_20  + -0.093791 * t.OUT_21  + 0.223549 * t.OUT_22  + -0.304734 * t.OUT_23  + -0.060358 * t.OUT_24  + 0.142971 * t.OUT_25  + 0.143263 * t.OUT_26  + 0.177844 * t.OUT_27  + 0.175897 * t.OUT_28  + -0.179805 * t.OUT_29  + 0.060155 * t.OUT_30  + -0.136632 * t.OUT_31  + 0.221463 * t.OUT_32  + -0.237738 * t.OUT_33  + -0.081070 * t.OUT_34  + 0.038025 * t.OUT_35  + 0.079683 * t.OUT_36  + -0.227750 * t.OUT_37  + -0.077811 * t.OUT_38  + -0.245958 * t.OUT_39  + 0.268718 * t.OUT_40  + 0.194504 * t.OUT_41  + -0.183662 * t.OUT_42  + -0.145252 * t.OUT_43  + 0.006918 * t.OUT_44  + 0.236779 * t.OUT_45  + -0.059366 * t.OUT_46  + -0.090140 * t.OUT_47  + 0.224785 * t.OUT_48  + -0.179773 * t.OUT_49  + 0.154059 * t.OUT_50  + 0.092375 * t.OUT_51  + 0.144595 * t.OUT_52  + -0.284554 * t.OUT_53  + -0.062040 * t.OUT_54  + -0.131648 * t.OUT_55  + 0.110415 * t.OUT_56  + 0.192502 * t.OUT_57  + 0.048981 * t.OUT_58  + -0.305636 * t.OUT_59  + 0.219135 * t.OUT_60  + -0.190507 * t.OUT_61  + -0.047628 * t.OUT_62  + -0.039822 * t.OUT_63 AS OUT_3
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
    -0.170863 + 0.263922 * t.OUT_0  + 0.309850 * t.OUT_1  + 0.300636 * t.OUT_2  + 0.456819 * t.OUT_3 AS OUT_0,
    0.221743 + 0.463998 * t.OUT_0  + 0.164036 * t.OUT_1  + 0.622768 * t.OUT_2  + 0.362130 * t.OUT_3 AS OUT_1,
    -0.522781 + 0.475544 * t.OUT_0  + 0.662262 * t.OUT_1  + -0.370314 * t.OUT_2  + 0.423954 * t.OUT_3 AS OUT_2,
    0.196622 + 0.502136 * t.OUT_0  + 0.380694 * t.OUT_1  + 0.446546 * t.OUT_2  + -0.671418 * t.OUT_3 AS OUT_3,
    -0.725674 + 0.196133 * t.OUT_0  + 0.611036 * t.OUT_1  + 0.286403 * t.OUT_2  + 0.233144 * t.OUT_3 AS OUT_4,
    0.380153 + -0.488154 * t.OUT_0  + -0.389539 * t.OUT_1  + 0.672739 * t.OUT_2  + 0.603504 * t.OUT_3 AS OUT_5,
    0.018228 + -0.067637 * t.OUT_0  + 0.144896 * t.OUT_1  + -0.036250 * t.OUT_2  + 0.144410 * t.OUT_3 AS OUT_6,
    0.026431 + -0.470702 * t.OUT_0  + 0.431023 * t.OUT_1  + 0.260399 * t.OUT_2  + 0.566409 * t.OUT_3 AS OUT_7
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
    -0.220675 + 0.293301 * t.OUT_0  + -0.060182 * t.OUT_1  + 0.324332 * t.OUT_2  + -0.413953 * t.OUT_3  + 0.265189 * t.OUT_4  + -0.504579 * t.OUT_5  + 0.596291 * t.OUT_6  + -0.227899 * t.OUT_7 AS OUT_0,
    -0.013264 + -0.527299 * t.OUT_0  + -0.245182 * t.OUT_1  + -0.510585 * t.OUT_2  + 0.092904 * t.OUT_3  + 0.044977 * t.OUT_4  + 0.105590 * t.OUT_5  + -0.505079 * t.OUT_6  + -0.272220 * t.OUT_7 AS OUT_1,
    0.526617 + -0.482075 * t.OUT_0  + -0.181739 * t.OUT_1  + 0.513248 * t.OUT_2  + -0.243501 * t.OUT_3  + 0.415848 * t.OUT_4  + 0.231779 * t.OUT_5  + -0.210077 * t.OUT_6  + -0.166107 * t.OUT_7 AS OUT_2,
    0.024266 + -0.218493 * t.OUT_0  + 0.384823 * t.OUT_1  + -0.172366 * t.OUT_2  + 0.535203 * t.OUT_3  + 0.382490 * t.OUT_4  + 0.223637 * t.OUT_5  + -0.230111 * t.OUT_6  + 0.299160 * t.OUT_7 AS OUT_3,
    -0.514099 + -0.410232 * t.OUT_0  + 0.307740 * t.OUT_1  + 0.160227 * t.OUT_2  + -0.542899 * t.OUT_3  + -0.347849 * t.OUT_4  + -0.190328 * t.OUT_5  + 0.012797 * t.OUT_6  + 0.087162 * t.OUT_7 AS OUT_4,
    -0.314064 + 0.262046 * t.OUT_0  + -0.272955 * t.OUT_1  + -0.355290 * t.OUT_2  + -0.284866 * t.OUT_3  + -0.399593 * t.OUT_4  + 0.041223 * t.OUT_5  + -0.212515 * t.OUT_6  + -0.258584 * t.OUT_7 AS OUT_5
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
    -0.177433 + -0.471783 * t.OUT_0  + 0.562760 * t.OUT_1  + -0.532556 * t.OUT_2  + -0.354775 * t.OUT_3  + -0.342878 * t.OUT_4  + -0.243502 * t.OUT_5 AS OUT_0,
    -0.579072 + 0.301155 * t.OUT_0  + -0.365858 * t.OUT_1  + 0.506833 * t.OUT_2  + -0.259058 * t.OUT_3  + 0.292214 * t.OUT_4  + 0.013625 * t.OUT_5 AS OUT_1,
    -0.077844 + -0.257529 * t.OUT_0  + 0.198616 * t.OUT_1  + -0.557337 * t.OUT_2  + 0.065221 * t.OUT_3  + -0.400040 * t.OUT_4  + 0.560989 * t.OUT_5 AS OUT_2,
    -0.241101 + -0.161037 * t.OUT_0  + -0.397271 * t.OUT_1  + -0.062445 * t.OUT_2  + 0.390930 * t.OUT_3  + -0.150599 * t.OUT_4  + 0.453208 * t.OUT_5 AS OUT_3,
    -0.017027 + -0.456864 * t.OUT_0  + 0.277054 * t.OUT_1  + 0.503291 * t.OUT_2  + -0.050794 * t.OUT_3  + 0.461002 * t.OUT_4  + 0.418748 * t.OUT_5 AS OUT_4,
    -0.135275 + 0.100560 * t.OUT_0  + -0.315354 * t.OUT_1  + -0.014862 * t.OUT_2  + 0.165504 * t.OUT_3  + -0.317853 * t.OUT_4  + -0.136175 * t.OUT_5 AS OUT_5,
    0.560879 + -0.474362 * t.OUT_0  + -0.341750 * t.OUT_1  + -0.152499 * t.OUT_2  + 0.337009 * t.OUT_3  + -0.265244 * t.OUT_4  + -0.246502 * t.OUT_5 AS OUT_6,
    0.355655 + -0.229729 * t.OUT_0  + -0.350976 * t.OUT_1  + -0.247588 * t.OUT_2  + 0.285257 * t.OUT_3  + 0.084499 * t.OUT_4  + -0.266297 * t.OUT_5 AS OUT_7,
    -0.331653 + 0.470979 * t.OUT_0  + -0.582422 * t.OUT_1  + 0.457104 * t.OUT_2  + -0.405993 * t.OUT_3  + 0.266218 * t.OUT_4  + 0.116867 * t.OUT_5 AS OUT_8,
    0.050140 + -0.328186 * t.OUT_0  + 0.120287 * t.OUT_1  + -0.269343 * t.OUT_2  + 0.296464 * t.OUT_3  + 0.506715 * t.OUT_4  + -0.474103 * t.OUT_5 AS OUT_9
 FROM Hidden_Layer_3_Activation AS t
)

, model_scores_cte AS 
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
  FROM "Output_Layer_BA" AS t ),
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
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    CAST(NULL AS FLOAT) AS "LogProba_4",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    CAST(NULL AS FLOAT) AS "LogProba_5",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    CAST(NULL AS FLOAT) AS "LogProba_6",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    CAST(NULL AS FLOAT) AS "LogProba_7",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    CAST(NULL AS FLOAT) AS "LogProba_8",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    CAST(NULL AS FLOAT) AS "LogProba_9",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
   CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
   CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
   CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
   CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
   CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
   CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
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
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte