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
    0.082071 + -0.025613 * t.OUT_0  + 0.024167 * t.OUT_1  + 0.230192 * t.OUT_2  + 0.271518 * t.OUT_3  + 0.137308 * t.OUT_4  + 0.116098 * t.OUT_5  + -0.032596 * t.OUT_6  + 0.005568 * t.OUT_7  + -0.090739 * t.OUT_8  + -0.212950 * t.OUT_9  + -0.234712 * t.OUT_10  + -0.205485 * t.OUT_11  + 0.177378 * t.OUT_12  + 0.153239 * t.OUT_13  + 0.090442 * t.OUT_14  + -0.227347 * t.OUT_15  + -0.223610 * t.OUT_16  + 0.270323 * t.OUT_17  + -0.035043 * t.OUT_18  + 0.113063 * t.OUT_19  + 0.103666 * t.OUT_20  + -0.288507 * t.OUT_21  + -0.220268 * t.OUT_22  + 0.012365 * t.OUT_23  + 0.098972 * t.OUT_24  + 0.097418 * t.OUT_25  + 0.170979 * t.OUT_26  + -0.145971 * t.OUT_27  + 0.123601 * t.OUT_28  + 0.022559 * t.OUT_29  + 0.161074 * t.OUT_30  + -0.162469 * t.OUT_31  + 0.135719 * t.OUT_32  + 0.245188 * t.OUT_33  + -0.247763 * t.OUT_34  + -0.209869 * t.OUT_35  + -0.212975 * t.OUT_36  + -0.060526 * t.OUT_37  + -0.045673 * t.OUT_38  + -0.222738 * t.OUT_39  + 0.102492 * t.OUT_40  + -0.148093 * t.OUT_41  + -0.273365 * t.OUT_42  + 0.112015 * t.OUT_43  + 0.242849 * t.OUT_44  + 0.142930 * t.OUT_45  + 0.078393 * t.OUT_46  + 0.212118 * t.OUT_47  + 0.179172 * t.OUT_48  + -0.288473 * t.OUT_49  + -0.141459 * t.OUT_50  + 0.253924 * t.OUT_51  + 0.014583 * t.OUT_52  + 0.114623 * t.OUT_53  + -0.186561 * t.OUT_54  + -0.099307 * t.OUT_55  + -0.070765 * t.OUT_56  + -0.296063 * t.OUT_57  + -0.005362 * t.OUT_58  + -0.123967 * t.OUT_59  + -0.050065 * t.OUT_60  + 0.033735 * t.OUT_61  + 0.058466 * t.OUT_62  + 0.213796 * t.OUT_63 AS OUT_0,
    -0.175792 + 0.154095 * t.OUT_0  + -0.238174 * t.OUT_1  + 0.035436 * t.OUT_2  + -0.287191 * t.OUT_3  + -0.165063 * t.OUT_4  + -0.312458 * t.OUT_5  + -0.279391 * t.OUT_6  + 0.002450 * t.OUT_7  + 0.109609 * t.OUT_8  + 0.232234 * t.OUT_9  + 0.137927 * t.OUT_10  + -0.252456 * t.OUT_11  + 0.229972 * t.OUT_12  + 0.217395 * t.OUT_13  + 0.004971 * t.OUT_14  + 0.037486 * t.OUT_15  + 0.176425 * t.OUT_16  + 0.255727 * t.OUT_17  + 0.258588 * t.OUT_18  + 0.148706 * t.OUT_19  + 0.180486 * t.OUT_20  + 0.123867 * t.OUT_21  + -0.303342 * t.OUT_22  + -0.060567 * t.OUT_23  + -0.090357 * t.OUT_24  + -0.230409 * t.OUT_25  + 0.227505 * t.OUT_26  + 0.001214 * t.OUT_27  + -0.025137 * t.OUT_28  + -0.125243 * t.OUT_29  + 0.139941 * t.OUT_30  + -0.000784 * t.OUT_31  + -0.250599 * t.OUT_32  + -0.222709 * t.OUT_33  + -0.254354 * t.OUT_34  + -0.236798 * t.OUT_35  + -0.257250 * t.OUT_36  + 0.056778 * t.OUT_37  + 0.222814 * t.OUT_38  + -0.144333 * t.OUT_39  + -0.157461 * t.OUT_40  + 0.126673 * t.OUT_41  + 0.149389 * t.OUT_42  + 0.119239 * t.OUT_43  + 0.231776 * t.OUT_44  + 0.009308 * t.OUT_45  + 0.096123 * t.OUT_46  + 0.164243 * t.OUT_47  + -0.154059 * t.OUT_48  + -0.192842 * t.OUT_49  + -0.033072 * t.OUT_50  + 0.028576 * t.OUT_51  + 0.117876 * t.OUT_52  + -0.150497 * t.OUT_53  + -0.204034 * t.OUT_54  + -0.230410 * t.OUT_55  + 0.103100 * t.OUT_56  + 0.192222 * t.OUT_57  + 0.268547 * t.OUT_58  + 0.238399 * t.OUT_59  + -0.041679 * t.OUT_60  + -0.072432 * t.OUT_61  + 0.086036 * t.OUT_62  + -0.096881 * t.OUT_63 AS OUT_1,
    -0.019852 + -0.121240 * t.OUT_0  + 0.086099 * t.OUT_1  + 0.270026 * t.OUT_2  + -0.147398 * t.OUT_3  + -0.177486 * t.OUT_4  + -0.047361 * t.OUT_5  + -0.152094 * t.OUT_6  + -0.235949 * t.OUT_7  + -0.059769 * t.OUT_8  + -0.187887 * t.OUT_9  + 0.067859 * t.OUT_10  + 0.080041 * t.OUT_11  + 0.199743 * t.OUT_12  + -0.205685 * t.OUT_13  + 0.037700 * t.OUT_14  + 0.121673 * t.OUT_15  + -0.165366 * t.OUT_16  + -0.039153 * t.OUT_17  + -0.231317 * t.OUT_18  + 0.243258 * t.OUT_19  + 0.191340 * t.OUT_20  + -0.023023 * t.OUT_21  + -0.108648 * t.OUT_22  + -0.068791 * t.OUT_23  + -0.115281 * t.OUT_24  + -0.123944 * t.OUT_25  + 0.194863 * t.OUT_26  + 0.064516 * t.OUT_27  + 0.148114 * t.OUT_28  + -0.107525 * t.OUT_29  + -0.176012 * t.OUT_30  + 0.055791 * t.OUT_31  + -0.237015 * t.OUT_32  + -0.137898 * t.OUT_33  + -0.124969 * t.OUT_34  + -0.289070 * t.OUT_35  + 0.042672 * t.OUT_36  + 0.058157 * t.OUT_37  + 0.265785 * t.OUT_38  + 0.123827 * t.OUT_39  + 0.243448 * t.OUT_40  + -0.142933 * t.OUT_41  + 0.035414 * t.OUT_42  + -0.017999 * t.OUT_43  + -0.131837 * t.OUT_44  + 0.016942 * t.OUT_45  + -0.179652 * t.OUT_46  + -0.086117 * t.OUT_47  + 0.038748 * t.OUT_48  + -0.167123 * t.OUT_49  + -0.220139 * t.OUT_50  + -0.010626 * t.OUT_51  + 0.025993 * t.OUT_52  + -0.061871 * t.OUT_53  + 0.105197 * t.OUT_54  + 0.284006 * t.OUT_55  + 0.137762 * t.OUT_56  + 0.233171 * t.OUT_57  + 0.208750 * t.OUT_58  + -0.311241 * t.OUT_59  + 0.131804 * t.OUT_60  + -0.169780 * t.OUT_61  + -0.239198 * t.OUT_62  + 0.016932 * t.OUT_63 AS OUT_2,
    0.185997 + -0.021865 * t.OUT_0  + -0.008862 * t.OUT_1  + -0.062873 * t.OUT_2  + 0.107039 * t.OUT_3  + -0.254066 * t.OUT_4  + -0.012991 * t.OUT_5  + 0.211560 * t.OUT_6  + -0.015191 * t.OUT_7  + 0.125770 * t.OUT_8  + 0.131357 * t.OUT_9  + 0.248193 * t.OUT_10  + 0.090333 * t.OUT_11  + -0.204304 * t.OUT_12  + 0.112275 * t.OUT_13  + 0.139095 * t.OUT_14  + 0.138755 * t.OUT_15  + -0.244600 * t.OUT_16  + -0.266227 * t.OUT_17  + 0.102259 * t.OUT_18  + -0.141627 * t.OUT_19  + -0.016392 * t.OUT_20  + -0.074826 * t.OUT_21  + 0.238089 * t.OUT_22  + -0.236045 * t.OUT_23  + -0.060358 * t.OUT_24  + 0.150585 * t.OUT_25  + 0.154191 * t.OUT_26  + 0.180144 * t.OUT_27  + 0.196989 * t.OUT_28  + -0.166749 * t.OUT_29  + 0.069661 * t.OUT_30  + -0.119526 * t.OUT_31  + 0.191819 * t.OUT_32  + -0.200331 * t.OUT_33  + -0.078507 * t.OUT_34  + 0.041432 * t.OUT_35  + 0.098651 * t.OUT_36  + -0.216760 * t.OUT_37  + -0.065969 * t.OUT_38  + -0.216086 * t.OUT_39  + 0.255335 * t.OUT_40  + 0.207061 * t.OUT_41  + -0.183145 * t.OUT_42  + -0.118843 * t.OUT_43  + 0.032723 * t.OUT_44  + 0.245084 * t.OUT_45  + -0.057848 * t.OUT_46  + -0.078452 * t.OUT_47  + 0.212617 * t.OUT_48  + -0.178488 * t.OUT_49  + 0.160042 * t.OUT_50  + 0.113613 * t.OUT_51  + 0.152092 * t.OUT_52  + -0.283646 * t.OUT_53  + -0.064283 * t.OUT_54  + -0.140035 * t.OUT_55  + 0.129285 * t.OUT_56  + 0.203987 * t.OUT_57  + 0.066528 * t.OUT_58  + -0.286425 * t.OUT_59  + 0.217320 * t.OUT_60  + -0.200842 * t.OUT_61  + -0.059012 * t.OUT_62  + -0.075751 * t.OUT_63 AS OUT_3
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
    -0.214143 + 0.241595 * t.OUT_0  + 0.281933 * t.OUT_1  + 0.282440 * t.OUT_2  + 0.433303 * t.OUT_3 AS OUT_0,
    0.229807 + 0.442287 * t.OUT_0  + 0.179401 * t.OUT_1  + 0.626504 * t.OUT_2  + 0.357252 * t.OUT_3 AS OUT_1,
    -0.514996 + 0.491537 * t.OUT_0  + 0.669087 * t.OUT_1  + -0.339840 * t.OUT_2  + 0.413214 * t.OUT_3 AS OUT_2,
    0.194459 + 0.478910 * t.OUT_0  + 0.374365 * t.OUT_1  + 0.441947 * t.OUT_2  + -0.670744 * t.OUT_3 AS OUT_3,
    -0.705166 + 0.205650 * t.OUT_0  + 0.624949 * t.OUT_1  + 0.349262 * t.OUT_2  + 0.228754 * t.OUT_3 AS OUT_4,
    0.424940 + -0.489465 * t.OUT_0  + -0.349319 * t.OUT_1  + 0.677131 * t.OUT_2  + 0.643638 * t.OUT_3 AS OUT_5,
    -0.008643 + -0.049779 * t.OUT_0  + 0.131023 * t.OUT_1  + -0.001542 * t.OUT_2  + 0.121380 * t.OUT_3 AS OUT_6,
    0.035034 + -0.492196 * t.OUT_0  + 0.438880 * t.OUT_1  + 0.249485 * t.OUT_2  + 0.576142 * t.OUT_3 AS OUT_7
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
    -0.225960 + 0.287134 * t.OUT_0  + -0.064456 * t.OUT_1  + 0.321966 * t.OUT_2  + -0.391331 * t.OUT_3  + 0.264090 * t.OUT_4  + -0.573973 * t.OUT_5  + 0.590878 * t.OUT_6  + -0.236258 * t.OUT_7 AS OUT_0,
    0.042236 + -0.546086 * t.OUT_0  + -0.166256 * t.OUT_1  + -0.526800 * t.OUT_2  + 0.148242 * t.OUT_3  + 0.044977 * t.OUT_4  + 0.158576 * t.OUT_5  + -0.450284 * t.OUT_6  + -0.194230 * t.OUT_7 AS OUT_1,
    0.548039 + -0.474302 * t.OUT_0  + -0.172591 * t.OUT_1  + 0.522738 * t.OUT_2  + -0.210419 * t.OUT_3  + 0.425745 * t.OUT_4  + 0.212295 * t.OUT_5  + -0.203710 * t.OUT_6  + -0.160988 * t.OUT_7 AS OUT_2,
    0.046850 + -0.210799 * t.OUT_0  + 0.387102 * t.OUT_1  + -0.158466 * t.OUT_2  + 0.563269 * t.OUT_3  + 0.405154 * t.OUT_4  + 0.248759 * t.OUT_5  + -0.203721 * t.OUT_6  + 0.333603 * t.OUT_7 AS OUT_3,
    -0.514099 + -0.426106 * t.OUT_0  + 0.323079 * t.OUT_1  + 0.160227 * t.OUT_2  + -0.559200 * t.OUT_3  + -0.363429 * t.OUT_4  + -0.163486 * t.OUT_5  + 0.012797 * t.OUT_6  + 0.087162 * t.OUT_7 AS OUT_4,
    -0.314064 + 0.232046 * t.OUT_0  + -0.242876 * t.OUT_1  + -0.370909 * t.OUT_2  + -0.300043 * t.OUT_3  + -0.415423 * t.OUT_4  + 0.041223 * t.OUT_5  + -0.182967 * t.OUT_6  + -0.273546 * t.OUT_7 AS OUT_5
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
    0.328218 + -0.522463 * t.OUT_0  + 0.490698 * t.OUT_1  + -0.386022 * t.OUT_2  + 0.529959 * t.OUT_3  + 0.023167 * t.OUT_4  + -0.385207 * t.OUT_5 AS OUT_0,
    0.562413 + 0.316747 * t.OUT_0  + -0.371423 * t.OUT_1  + -0.363099 * t.OUT_2  + -0.030008 * t.OUT_3  + 0.433681 * t.OUT_4  + 0.330673 * t.OUT_5 AS OUT_1,
    -0.277629 + -0.298095 * t.OUT_0  + 0.625569 * t.OUT_1  + -0.588153 * t.OUT_2  + -0.104461 * t.OUT_3  + -0.073574 * t.OUT_4  + -0.446636 * t.OUT_5 AS OUT_2,
    0.034966 + -0.120349 * t.OUT_0  + -0.351080 * t.OUT_1  + 0.182507 * t.OUT_2  + -0.219700 * t.OUT_3  + 0.177218 * t.OUT_4  + -0.160997 * t.OUT_5 AS OUT_3,
    0.619958 + -0.519252 * t.OUT_0  + 0.225405 * t.OUT_1  + -0.637921 * t.OUT_2  + 0.473359 * t.OUT_3  + 0.382514 * t.OUT_4  + 0.512074 * t.OUT_5 AS OUT_4,
    0.513062 + 0.069310 * t.OUT_0  + -0.393987 * t.OUT_1  + 0.539415 * t.OUT_2  + -0.351350 * t.OUT_3  + 0.318210 * t.OUT_4  + -0.358282 * t.OUT_5 AS OUT_5,
    0.529132 + -0.452619 * t.OUT_0  + 0.305651 * t.OUT_1  + -0.608064 * t.OUT_2  + -0.395583 * t.OUT_3  + -0.391339 * t.OUT_4  + -0.301597 * t.OUT_5 AS OUT_6,
    -0.114182 + -0.191357 * t.OUT_0  + -0.278541 * t.OUT_1  + 0.005322 * t.OUT_2  + -0.236596 * t.OUT_3  + 0.238592 * t.OUT_4  + 0.090333 * t.OUT_5 AS OUT_7
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
    CAST(NULL AS FLOAT) AS "Proba_7", t.OUT_7 AS "Score_7", CAST(NULL AS FLOAT) AS "LogProba_7"
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
    t1."Score_7" AS "Score_7"
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
 END AS "DecisionProba"
FROM arg_max_cte