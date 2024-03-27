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
    0.061309 + -0.025613 * t.OUT_0  + -0.009256 * t.OUT_1  + 0.199344 * t.OUT_2  + 0.254131 * t.OUT_3  + 0.105737 * t.OUT_4  + 0.085406 * t.OUT_5  + -0.094606 * t.OUT_6  + -0.054960 * t.OUT_7  + -0.084223 * t.OUT_8  + -0.261650 * t.OUT_9  + -0.263499 * t.OUT_10  + -0.206091 * t.OUT_11  + 0.165404 * t.OUT_12  + 0.129304 * t.OUT_13  + 0.042922 * t.OUT_14  + -0.269995 * t.OUT_15  + -0.316240 * t.OUT_16  + 0.223011 * t.OUT_17  + -0.067735 * t.OUT_18  + 0.107523 * t.OUT_19  + 0.087566 * t.OUT_20  + -0.320306 * t.OUT_21  + -0.261576 * t.OUT_22  + -0.035898 * t.OUT_23  + -0.005708 * t.OUT_24  + 0.066619 * t.OUT_25  + 0.159188 * t.OUT_26  + -0.107852 * t.OUT_27  + 0.108933 * t.OUT_28  + -0.010838 * t.OUT_29  + 0.086810 * t.OUT_30  + -0.197030 * t.OUT_31  + 0.135719 * t.OUT_32  + 0.218213 * t.OUT_33  + -0.254382 * t.OUT_34  + -0.146281 * t.OUT_35  + -0.219285 * t.OUT_36  + -0.095281 * t.OUT_37  + -0.110182 * t.OUT_38  + -0.252666 * t.OUT_39  + 0.082262 * t.OUT_40  + -0.199313 * t.OUT_41  + -0.291895 * t.OUT_42  + 0.099064 * t.OUT_43  + 0.204737 * t.OUT_44  + 0.126084 * t.OUT_45  + 0.059521 * t.OUT_46  + 0.316054 * t.OUT_47  + 0.202540 * t.OUT_48  + -0.310387 * t.OUT_49  + -0.160437 * t.OUT_50  + 0.235579 * t.OUT_51  + -0.002643 * t.OUT_52  + 0.100913 * t.OUT_53  + -0.204726 * t.OUT_54  + -0.154852 * t.OUT_55  + -0.078399 * t.OUT_56  + -0.338040 * t.OUT_57  + -0.045867 * t.OUT_58  + -0.135870 * t.OUT_59  + -0.037697 * t.OUT_60  + 0.026910 * t.OUT_61  + 0.030230 * t.OUT_62  + 0.131955 * t.OUT_63 AS OUT_0,
    -0.191841 + 0.154095 * t.OUT_0  + -0.194687 * t.OUT_1  + 0.035267 * t.OUT_2  + -0.297494 * t.OUT_3  + -0.116499 * t.OUT_4  + -0.235402 * t.OUT_5  + -0.208535 * t.OUT_6  + -0.117373 * t.OUT_7  + 0.196088 * t.OUT_8  + 0.213508 * t.OUT_9  + 0.122750 * t.OUT_10  + -0.271827 * t.OUT_11  + 0.209764 * t.OUT_12  + 0.226438 * t.OUT_13  + 0.014082 * t.OUT_14  + -0.100031 * t.OUT_15  + 0.203686 * t.OUT_16  + 0.209590 * t.OUT_17  + 0.213087 * t.OUT_18  + 0.179955 * t.OUT_19  + 0.213814 * t.OUT_20  + 0.086832 * t.OUT_21  + -0.346519 * t.OUT_22  + -0.099772 * t.OUT_23  + -0.030034 * t.OUT_24  + -0.298898 * t.OUT_25  + 0.190986 * t.OUT_26  + 0.176634 * t.OUT_27  + 0.095606 * t.OUT_28  + -0.169623 * t.OUT_29  + 0.059229 * t.OUT_30  + -0.004169 * t.OUT_31  + -0.280731 * t.OUT_32  + -0.304698 * t.OUT_33  + -0.292532 * t.OUT_34  + -0.082798 * t.OUT_35  + -0.133124 * t.OUT_36  + 0.013580 * t.OUT_37  + 0.143950 * t.OUT_38  + -0.144333 * t.OUT_39  + -0.162843 * t.OUT_40  + 0.052341 * t.OUT_41  + 0.110344 * t.OUT_42  + 0.081439 * t.OUT_43  + 0.239470 * t.OUT_44  + -0.014912 * t.OUT_45  + 0.056954 * t.OUT_46  + 0.142097 * t.OUT_47  + -0.269975 * t.OUT_48  + -0.183520 * t.OUT_49  + -0.045595 * t.OUT_50  + -0.020470 * t.OUT_51  + 0.082613 * t.OUT_52  + -0.156934 * t.OUT_53  + -0.215921 * t.OUT_54  + -0.291824 * t.OUT_55  + 0.028911 * t.OUT_56  + 0.224821 * t.OUT_57  + 0.261107 * t.OUT_58  + 0.233894 * t.OUT_59  + -0.020987 * t.OUT_60  + -0.057954 * t.OUT_61  + 0.065097 * t.OUT_62  + -0.190951 * t.OUT_63 AS OUT_1,
    -0.024183 + -0.121240 * t.OUT_0  + 0.198597 * t.OUT_1  + 0.318124 * t.OUT_2  + -0.073515 * t.OUT_3  + -0.109312 * t.OUT_4  + 0.001515 * t.OUT_5  + -0.065778 * t.OUT_6  + -0.153460 * t.OUT_7  + -0.044242 * t.OUT_8  + -0.057315 * t.OUT_9  + 0.183181 * t.OUT_10  + 0.043641 * t.OUT_11  + 0.187278 * t.OUT_12  + -0.120876 * t.OUT_13  + 0.134656 * t.OUT_14  + 0.230096 * t.OUT_15  + -0.127974 * t.OUT_16  + 0.074590 * t.OUT_17  + -0.207049 * t.OUT_18  + 0.194586 * t.OUT_19  + 0.177982 * t.OUT_20  + 0.035054 * t.OUT_21  + -0.049834 * t.OUT_22  + -0.038772 * t.OUT_23  + -0.115281 * t.OUT_24  + -0.122754 * t.OUT_25  + 0.173958 * t.OUT_26  + 0.045427 * t.OUT_27  + 0.147119 * t.OUT_28  + -0.059299 * t.OUT_29  + -0.083195 * t.OUT_30  + 0.008248 * t.OUT_31  + -0.267053 * t.OUT_32  + -0.177979 * t.OUT_33  + -0.159335 * t.OUT_34  + -0.306861 * t.OUT_35  + 0.012172 * t.OUT_36  + 0.098715 * t.OUT_37  + 0.441133 * t.OUT_38  + 0.123827 * t.OUT_39  + 0.261701 * t.OUT_40  + -0.214799 * t.OUT_41  + -0.018867 * t.OUT_42  + -0.059937 * t.OUT_43  + -0.181676 * t.OUT_44  + 0.016933 * t.OUT_45  + -0.034805 * t.OUT_46  + -0.009583 * t.OUT_47  + 0.054908 * t.OUT_48  + -0.140921 * t.OUT_49  + -0.244902 * t.OUT_50  + -0.027005 * t.OUT_51  + -0.029966 * t.OUT_52  + -0.071275 * t.OUT_53  + 0.164133 * t.OUT_54  + 0.213460 * t.OUT_55  + 0.153920 * t.OUT_56  + 0.338381 * t.OUT_57  + 0.275185 * t.OUT_58  + -0.250247 * t.OUT_59  + 0.081944 * t.OUT_60  + -0.207779 * t.OUT_61  + -0.244778 * t.OUT_62  + -0.062820 * t.OUT_63 AS OUT_2,
    0.191085 + -0.021865 * t.OUT_0  + -0.011655 * t.OUT_1  + -0.097724 * t.OUT_2  + 0.056928 * t.OUT_3  + -0.205482 * t.OUT_4  + 0.080825 * t.OUT_5  + 0.339660 * t.OUT_6  + 0.010845 * t.OUT_7  + 0.164266 * t.OUT_8  + 0.077982 * t.OUT_9  + 0.202728 * t.OUT_10  + 0.101583 * t.OUT_11  + -0.131784 * t.OUT_12  + 0.140309 * t.OUT_13  + 0.136532 * t.OUT_14  + 0.118874 * t.OUT_15  + -0.184441 * t.OUT_16  + -0.277394 * t.OUT_17  + 0.084527 * t.OUT_18  + -0.068309 * t.OUT_19  + 0.020326 * t.OUT_20  + -0.096458 * t.OUT_21  + 0.177994 * t.OUT_22  + -0.356671 * t.OUT_23  + 0.008572 * t.OUT_24  + 0.163121 * t.OUT_25  + 0.170769 * t.OUT_26  + 0.306671 * t.OUT_27  + 0.233515 * t.OUT_28  + -0.198412 * t.OUT_29  + -0.016270 * t.OUT_30  + -0.178018 * t.OUT_31  + 0.221463 * t.OUT_32  + -0.254242 * t.OUT_33  + -0.078837 * t.OUT_34  + 0.116845 * t.OUT_35  + 0.165277 * t.OUT_36  + -0.239013 * t.OUT_37  + -0.148535 * t.OUT_38  + -0.245958 * t.OUT_39  + 0.207605 * t.OUT_40  + 0.141232 * t.OUT_41  + -0.197800 * t.OUT_42  + -0.116864 * t.OUT_43  + 0.108183 * t.OUT_44  + 0.254820 * t.OUT_45  + -0.095688 * t.OUT_46  + -0.137800 * t.OUT_47  + 0.178303 * t.OUT_48  + -0.196436 * t.OUT_49  + 0.142936 * t.OUT_50  + 0.071828 * t.OUT_51  + 0.208365 * t.OUT_52  + -0.254780 * t.OUT_53  + -0.072890 * t.OUT_54  + -0.114361 * t.OUT_55  + 0.026197 * t.OUT_56  + 0.175555 * t.OUT_57  + 0.023011 * t.OUT_58  + -0.294908 * t.OUT_59  + 0.251837 * t.OUT_60  + -0.153463 * t.OUT_61  + -0.066877 * t.OUT_62  + -0.044611 * t.OUT_63 AS OUT_3
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
    -0.087586 + 0.268180 * t.OUT_0  + 0.377401 * t.OUT_1  + 0.250205 * t.OUT_2  + 0.439872 * t.OUT_3 AS OUT_0,
    0.116567 + 0.426285 * t.OUT_0  + 0.206649 * t.OUT_1  + 0.639058 * t.OUT_2  + 0.300647 * t.OUT_3 AS OUT_1,
    -0.457152 + 0.498828 * t.OUT_0  + 0.618401 * t.OUT_1  + -0.301990 * t.OUT_2  + 0.497521 * t.OUT_3 AS OUT_2,
    0.215860 + 0.431381 * t.OUT_0  + 0.428539 * t.OUT_1  + 0.431433 * t.OUT_2  + -0.685278 * t.OUT_3 AS OUT_3,
    -0.747937 + 0.210437 * t.OUT_0  + 0.575159 * t.OUT_1  + 0.495282 * t.OUT_2  + 0.301414 * t.OUT_3 AS OUT_4,
    0.165209 + -0.500458 * t.OUT_0  + -0.428212 * t.OUT_1  + 0.657249 * t.OUT_2  + 0.503849 * t.OUT_3 AS OUT_5,
    0.176779 + -0.042442 * t.OUT_0  + 0.151098 * t.OUT_1  + 0.045697 * t.OUT_2  + 0.238456 * t.OUT_3 AS OUT_6,
    -0.068620 + -0.451536 * t.OUT_0  + 0.481036 * t.OUT_1  + 0.233639 * t.OUT_2  + 0.493359 * t.OUT_3 AS OUT_7
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
    -0.166627 + 0.326288 * t.OUT_0  + -0.019574 * t.OUT_1  + 0.330937 * t.OUT_2  + -0.426708 * t.OUT_3  + 0.262801 * t.OUT_4  + -0.301096 * t.OUT_5  + 0.622992 * t.OUT_6  + -0.203428 * t.OUT_7 AS OUT_0,
    -0.008566 + -0.574658 * t.OUT_0  + -0.238598 * t.OUT_1  + -0.557870 * t.OUT_2  + 0.099232 * t.OUT_3  + 0.044977 * t.OUT_4  + 0.110282 * t.OUT_5  + -0.507457 * t.OUT_6  + -0.266365 * t.OUT_7 AS OUT_1,
    0.426846 + -0.492945 * t.OUT_0  + -0.178607 * t.OUT_1  + 0.490273 * t.OUT_2  + -0.322792 * t.OUT_3  + 0.381150 * t.OUT_4  + 0.328449 * t.OUT_5  + -0.235911 * t.OUT_6  + -0.188315 * t.OUT_7 AS OUT_2,
    -0.105342 + -0.241018 * t.OUT_0  + 0.355915 * t.OUT_1  + -0.188712 * t.OUT_2  + 0.513314 * t.OUT_3  + 0.384856 * t.OUT_4  + 0.174899 * t.OUT_5  + -0.277179 * t.OUT_6  + 0.264766 * t.OUT_7 AS OUT_3,
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
    0.010759 + -0.473879 * t.OUT_0  + 0.562194 * t.OUT_1  + -0.494971 * t.OUT_2  + -0.336626 * t.OUT_3  + -0.389083 * t.OUT_4  + -0.288505 * t.OUT_5 AS OUT_0,
    -0.538466 + 0.358369 * t.OUT_0  + -0.362916 * t.OUT_1  + 0.508465 * t.OUT_2  + -0.252580 * t.OUT_3  + 0.337891 * t.OUT_4  + 0.013625 * t.OUT_5 AS OUT_1,
    0.053204 + -0.188820 * t.OUT_0  + 0.217281 * t.OUT_1  + -0.536145 * t.OUT_2  + 0.153520 * t.OUT_3  + -0.446701 * t.OUT_4  + 0.608485 * t.OUT_5 AS OUT_2,
    -0.256838 + -0.195225 * t.OUT_0  + -0.416558 * t.OUT_1  + -0.074936 * t.OUT_2  + 0.417024 * t.OUT_3  + -0.150599 * t.OUT_4  + 0.500203 * t.OUT_5 AS OUT_3,
    0.100693 + -0.421798 * t.OUT_0  + 0.283689 * t.OUT_1  + 0.521659 * t.OUT_2  + -0.068688 * t.OUT_3  + 0.508040 * t.OUT_4  + 0.465535 * t.OUT_5 AS OUT_4,
    -0.334831 + 0.179964 * t.OUT_0  + -0.328580 * t.OUT_1  + 0.001236 * t.OUT_2  + 0.143770 * t.OUT_3  + -0.363815 * t.OUT_4  + -0.136175 * t.OUT_5 AS OUT_5,
    0.422061 + -0.639234 * t.OUT_0  + -0.330303 * t.OUT_1  + -0.207103 * t.OUT_2  + 0.214726 * t.OUT_3  + -0.310573 * t.OUT_4  + -0.291553 * t.OUT_5 AS OUT_6,
    0.213929 + -0.236568 * t.OUT_0  + -0.358054 * t.OUT_1  + -0.295297 * t.OUT_2  + 0.210617 * t.OUT_3  + 0.084499 * t.OUT_4  + -0.266297 * t.OUT_5 AS OUT_7,
    -0.411366 + 0.380405 * t.OUT_0  + -0.600414 * t.OUT_1  + 0.417515 * t.OUT_2  + -0.410742 * t.OUT_3  + 0.311561 * t.OUT_4  + 0.116867 * t.OUT_5 AS OUT_8,
    -0.007781 + -0.266205 * t.OUT_0  + 0.122883 * t.OUT_1  + -0.248910 * t.OUT_2  + 0.362064 * t.OUT_3  + 0.553982 * t.OUT_4  + -0.521211 * t.OUT_5 AS OUT_9
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