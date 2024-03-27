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
    0.074048 + -0.025613 * t.OUT_0  + 0.113009 * t.OUT_1  + 0.289499 * t.OUT_2  + 0.296493 * t.OUT_3  + 0.141936 * t.OUT_4  + 0.127053 * t.OUT_5  + -0.058841 * t.OUT_6  + -0.040582 * t.OUT_7  + -0.083098 * t.OUT_8  + -0.181236 * t.OUT_9  + -0.204857 * t.OUT_10  + -0.214270 * t.OUT_11  + 0.148808 * t.OUT_12  + 0.140778 * t.OUT_13  + 0.067291 * t.OUT_14  + -0.285572 * t.OUT_15  + -0.296393 * t.OUT_16  + 0.268483 * t.OUT_17  + -0.041301 * t.OUT_18  + 0.053659 * t.OUT_19  + 0.052631 * t.OUT_20  + -0.315540 * t.OUT_21  + -0.269060 * t.OUT_22  + 0.001633 * t.OUT_23  + 0.006737 * t.OUT_24  + 0.081109 * t.OUT_25  + 0.157181 * t.OUT_26  + -0.149188 * t.OUT_27  + 0.110541 * t.OUT_28  + -0.004340 * t.OUT_29  + 0.106689 * t.OUT_30  + -0.188063 * t.OUT_31  + 0.135719 * t.OUT_32  + 0.221046 * t.OUT_33  + -0.256648 * t.OUT_34  + -0.208643 * t.OUT_35  + -0.227563 * t.OUT_36  + -0.086482 * t.OUT_37  + -0.082490 * t.OUT_38  + -0.252666 * t.OUT_39  + 0.093160 * t.OUT_40  + -0.180906 * t.OUT_41  + -0.292580 * t.OUT_42  + 0.098787 * t.OUT_43  + 0.186181 * t.OUT_44  + 0.123708 * t.OUT_45  + 0.097901 * t.OUT_46  + 0.257574 * t.OUT_47  + 0.196614 * t.OUT_48  + -0.285734 * t.OUT_49  + -0.139538 * t.OUT_50  + 0.257066 * t.OUT_51  + -0.011761 * t.OUT_52  + 0.088790 * t.OUT_53  + -0.196211 * t.OUT_54  + -0.170535 * t.OUT_55  + -0.079009 * t.OUT_56  + -0.213033 * t.OUT_57  + 0.054330 * t.OUT_58  + -0.097534 * t.OUT_59  + -0.067007 * t.OUT_60  + -0.025809 * t.OUT_61  + -0.012561 * t.OUT_62  + 0.089414 * t.OUT_63 AS OUT_0,
    -0.207576 + 0.154095 * t.OUT_0  + -0.256977 * t.OUT_1  + 0.000699 * t.OUT_2  + -0.320146 * t.OUT_3  + -0.183130 * t.OUT_4  + -0.273148 * t.OUT_5  + -0.255256 * t.OUT_6  + -0.017946 * t.OUT_7  + 0.083019 * t.OUT_8  + 0.190289 * t.OUT_9  + 0.102289 * t.OUT_10  + -0.284758 * t.OUT_11  + 0.191705 * t.OUT_12  + 0.193184 * t.OUT_13  + 0.026549 * t.OUT_14  + 0.017155 * t.OUT_15  + 0.219911 * t.OUT_16  + 0.202547 * t.OUT_17  + 0.223297 * t.OUT_18  + 0.149446 * t.OUT_19  + 0.174514 * t.OUT_20  + 0.083559 * t.OUT_21  + -0.352126 * t.OUT_22  + -0.078716 * t.OUT_23  + -0.017516 * t.OUT_24  + -0.281649 * t.OUT_25  + 0.194901 * t.OUT_26  + 0.061502 * t.OUT_27  + -0.009072 * t.OUT_28  + -0.169183 * t.OUT_29  + 0.083237 * t.OUT_30  + -0.002927 * t.OUT_31  + -0.280731 * t.OUT_32  + -0.282281 * t.OUT_33  + -0.284424 * t.OUT_34  + -0.178213 * t.OUT_35  + -0.235116 * t.OUT_36  + 0.009534 * t.OUT_37  + 0.164905 * t.OUT_38  + -0.144333 * t.OUT_39  + -0.166960 * t.OUT_40  + 0.076917 * t.OUT_41  + 0.121413 * t.OUT_42  + 0.105939 * t.OUT_43  + 0.242181 * t.OUT_44  + -0.040959 * t.OUT_45  + 0.049612 * t.OUT_46  + 0.147126 * t.OUT_47  + -0.169960 * t.OUT_48  + -0.207597 * t.OUT_49  + -0.065710 * t.OUT_50  + -0.012446 * t.OUT_51  + 0.089351 * t.OUT_52  + -0.198408 * t.OUT_53  + -0.247454 * t.OUT_54  + -0.303806 * t.OUT_55  + 0.090318 * t.OUT_56  + 0.171107 * t.OUT_57  + 0.235008 * t.OUT_58  + 0.204514 * t.OUT_59  + -0.071613 * t.OUT_60  + -0.111104 * t.OUT_61  + 0.029654 * t.OUT_62  + -0.187913 * t.OUT_63 AS OUT_1,
    -0.030229 + -0.121240 * t.OUT_0  + 0.126312 * t.OUT_1  + 0.285833 * t.OUT_2  + -0.118557 * t.OUT_3  + -0.185246 * t.OUT_4  + -0.073757 * t.OUT_5  + -0.135024 * t.OUT_6  + -0.257606 * t.OUT_7  + -0.059769 * t.OUT_8  + -0.170989 * t.OUT_9  + 0.105718 * t.OUT_10  + 0.073932 * t.OUT_11  + 0.189537 * t.OUT_12  + -0.207809 * t.OUT_13  + 0.062219 * t.OUT_14  + 0.125220 * t.OUT_15  + -0.165366 * t.OUT_16  + -0.008547 * t.OUT_17  + -0.223346 * t.OUT_18  + 0.221335 * t.OUT_19  + 0.180319 * t.OUT_20  + -0.022863 * t.OUT_21  + -0.103697 * t.OUT_22  + -0.072588 * t.OUT_23  + -0.115281 * t.OUT_24  + -0.134718 * t.OUT_25  + 0.179553 * t.OUT_26  + 0.051644 * t.OUT_27  + 0.141491 * t.OUT_28  + -0.097188 * t.OUT_29  + -0.201369 * t.OUT_30  + 0.055791 * t.OUT_31  + -0.267053 * t.OUT_32  + -0.144720 * t.OUT_33  + -0.133952 * t.OUT_34  + -0.297149 * t.OUT_35  + 0.015406 * t.OUT_36  + 0.023552 * t.OUT_37  + 0.279783 * t.OUT_38  + 0.123827 * t.OUT_39  + 0.273531 * t.OUT_40  + -0.187748 * t.OUT_41  + 0.022713 * t.OUT_42  + -0.032616 * t.OUT_43  + -0.167841 * t.OUT_44  + -0.019653 * t.OUT_45  + -0.174110 * t.OUT_46  + -0.077412 * t.OUT_47  + 0.038748 * t.OUT_48  + -0.147169 * t.OUT_49  + -0.223559 * t.OUT_50  + -0.006269 * t.OUT_51  + -0.024216 * t.OUT_52  + -0.078226 * t.OUT_53  + 0.131414 * t.OUT_54  + 0.267515 * t.OUT_55  + 0.137762 * t.OUT_56  + 0.307953 * t.OUT_57  + 0.226241 * t.OUT_58  + -0.291186 * t.OUT_59  + 0.070892 * t.OUT_60  + -0.215515 * t.OUT_61  + -0.237977 * t.OUT_62  + -0.010757 * t.OUT_63 AS OUT_2,
    0.177316 + -0.021865 * t.OUT_0  + -0.049180 * t.OUT_1  + -0.098666 * t.OUT_2  + 0.074169 * t.OUT_3  + -0.237570 * t.OUT_4  + 0.025828 * t.OUT_5  + 0.356088 * t.OUT_6  + 0.084853 * t.OUT_7  + 0.205892 * t.OUT_8  + 0.113560 * t.OUT_9  + 0.219525 * t.OUT_10  + 0.086514 * t.OUT_11  + -0.191402 * t.OUT_12  + 0.102044 * t.OUT_13  + 0.098019 * t.OUT_14  + 0.169139 * t.OUT_15  + -0.265254 * t.OUT_16  + -0.279141 * t.OUT_17  + 0.077087 * t.OUT_18  + -0.116822 * t.OUT_19  + -0.006173 * t.OUT_20  + -0.104410 * t.OUT_21  + 0.189179 * t.OUT_22  + -0.312925 * t.OUT_23  + -0.054240 * t.OUT_24  + 0.202246 * t.OUT_25  + 0.155061 * t.OUT_26  + 0.191492 * t.OUT_27  + 0.185281 * t.OUT_28  + -0.179193 * t.OUT_29  + 0.051313 * t.OUT_30  + -0.161068 * t.OUT_31  + 0.221463 * t.OUT_32  + -0.253054 * t.OUT_33  + -0.094047 * t.OUT_34  + 0.043528 * t.OUT_35  + 0.086599 * t.OUT_36  + -0.213355 * t.OUT_37  + -0.078965 * t.OUT_38  + -0.245958 * t.OUT_39  + 0.259051 * t.OUT_40  + 0.155898 * t.OUT_41  + -0.228335 * t.OUT_42  + -0.139853 * t.OUT_43  + 0.048081 * t.OUT_44  + 0.234626 * t.OUT_45  + -0.072256 * t.OUT_46  + -0.094119 * t.OUT_47  + 0.227524 * t.OUT_48  + -0.214821 * t.OUT_49  + 0.123788 * t.OUT_50  + 0.090064 * t.OUT_51  + 0.174068 * t.OUT_52  + -0.292594 * t.OUT_53  + -0.086724 * t.OUT_54  + -0.193865 * t.OUT_55  + 0.120884 * t.OUT_56  + 0.156156 * t.OUT_57  + 0.028358 * t.OUT_58  + -0.314667 * t.OUT_59  + 0.225817 * t.OUT_60  + -0.191768 * t.OUT_61  + -0.091642 * t.OUT_62  + -0.108792 * t.OUT_63 AS OUT_3
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
    -0.120919 + 0.282723 * t.OUT_0  + 0.346360 * t.OUT_1  + 0.245278 * t.OUT_2  + 0.430593 * t.OUT_3 AS OUT_0,
    0.102568 + 0.472097 * t.OUT_0  + 0.165680 * t.OUT_1  + 0.622125 * t.OUT_2  + 0.354882 * t.OUT_3 AS OUT_1,
    -0.462155 + 0.477643 * t.OUT_0  + 0.648802 * t.OUT_1  + -0.327343 * t.OUT_2  + 0.445773 * t.OUT_3 AS OUT_2,
    0.150733 + 0.487639 * t.OUT_0  + 0.389178 * t.OUT_1  + 0.437758 * t.OUT_2  + -0.664178 * t.OUT_3 AS OUT_3,
    -0.740066 + 0.204521 * t.OUT_0  + 0.595655 * t.OUT_1  + 0.327842 * t.OUT_2  + 0.268982 * t.OUT_3 AS OUT_4,
    0.193000 + -0.501302 * t.OUT_0  + -0.397407 * t.OUT_1  + 0.693437 * t.OUT_2  + 0.562402 * t.OUT_3 AS OUT_5,
    0.137252 + -0.065841 * t.OUT_0  + 0.145786 * t.OUT_1  + -0.013499 * t.OUT_2  + 0.166581 * t.OUT_3 AS OUT_6,
    -0.056538 + -0.446148 * t.OUT_0  + 0.441744 * t.OUT_1  + 0.236635 * t.OUT_2  + 0.551439 * t.OUT_3 AS OUT_7
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
    -0.174633 + 0.304691 * t.OUT_0  + -0.045397 * t.OUT_1  + 0.327536 * t.OUT_2  + -0.416496 * t.OUT_3  + 0.262889 * t.OUT_4  + -0.346166 * t.OUT_5  + 0.602959 * t.OUT_6  + -0.217256 * t.OUT_7 AS OUT_0,
    -0.011692 + -0.574658 * t.OUT_0  + -0.243419 * t.OUT_1  + -0.557870 * t.OUT_2  + 0.094722 * t.OUT_3  + 0.044977 * t.OUT_4  + 0.107148 * t.OUT_5  + -0.497519 * t.OUT_6  + -0.271305 * t.OUT_7 AS OUT_1,
    0.496035 + -0.486008 * t.OUT_0  + -0.180576 * t.OUT_1  + 0.503508 * t.OUT_2  + -0.268870 * t.OUT_3  + 0.402390 * t.OUT_4  + 0.317782 * t.OUT_5  + -0.214522 * t.OUT_6  + -0.159233 * t.OUT_7 AS OUT_2,
    -0.103829 + -0.213697 * t.OUT_0  + 0.384311 * t.OUT_1  + -0.166613 * t.OUT_2  + 0.514880 * t.OUT_3  + 0.387743 * t.OUT_4  + 0.163460 * t.OUT_5  + -0.252653 * t.OUT_6  + 0.270168 * t.OUT_7 AS OUT_3,
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
    -0.023532 + -0.466317 * t.OUT_0  + 0.558496 * t.OUT_1  + -0.503143 * t.OUT_2  + -0.344746 * t.OUT_3  + -0.389083 * t.OUT_4  + -0.288505 * t.OUT_5 AS OUT_0,
    -0.434186 + 0.278203 * t.OUT_0  + -0.388177 * t.OUT_1  + 0.494601 * t.OUT_2  + -0.244346 * t.OUT_3  + 0.337891 * t.OUT_4  + 0.013625 * t.OUT_5 AS OUT_1,
    0.040558 + -0.250054 * t.OUT_0  + 0.215455 * t.OUT_1  + -0.547213 * t.OUT_2  + 0.085819 * t.OUT_3  + -0.446701 * t.OUT_4  + 0.608485 * t.OUT_5 AS OUT_2,
    -0.210392 + -0.168636 * t.OUT_0  + -0.419848 * t.OUT_1  + -0.068429 * t.OUT_2  + 0.388046 * t.OUT_3  + -0.150599 * t.OUT_4  + 0.500203 * t.OUT_5 AS OUT_3,
    -0.089932 + -0.443913 * t.OUT_0  + 0.280790 * t.OUT_1  + 0.510067 * t.OUT_2  + -0.064020 * t.OUT_3  + 0.508040 * t.OUT_4  + 0.465535 * t.OUT_5 AS OUT_4,
    -0.194141 + 0.211156 * t.OUT_0  + -0.326212 * t.OUT_1  + 0.042798 * t.OUT_2  + 0.260887 * t.OUT_3  + -0.363815 * t.OUT_4  + -0.136175 * t.OUT_5 AS OUT_5,
    0.380124 + -0.535221 * t.OUT_0  + -0.333509 * t.OUT_1  + -0.224353 * t.OUT_2  + 0.256574 * t.OUT_3  + -0.310573 * t.OUT_4  + -0.291553 * t.OUT_5 AS OUT_6,
    0.210664 + -0.259634 * t.OUT_0  + -0.351037 * t.OUT_1  + -0.288348 * t.OUT_2  + 0.251682 * t.OUT_3  + 0.084499 * t.OUT_4  + -0.266297 * t.OUT_5 AS OUT_7,
    -0.306892 + 0.447336 * t.OUT_0  + -0.580398 * t.OUT_1  + 0.449010 * t.OUT_2  + -0.407341 * t.OUT_3  + 0.311561 * t.OUT_4  + 0.116867 * t.OUT_5 AS OUT_8,
    0.026412 + -0.305950 * t.OUT_0  + 0.127089 * t.OUT_1  + -0.247820 * t.OUT_2  + 0.326530 * t.OUT_3  + 0.553982 * t.OUT_4  + -0.521211 * t.OUT_5 AS OUT_9
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