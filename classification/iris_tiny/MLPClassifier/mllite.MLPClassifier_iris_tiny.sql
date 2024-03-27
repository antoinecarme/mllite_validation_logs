WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    X_0 AS OUT_0,
    X_1 AS OUT_1,
    X_2 AS OUT_2,
    X_3 AS OUT_3
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.095396 + 0.001413 * t.OUT_0  + 0.123403 * t.OUT_1  + -0.088927 * t.OUT_2  + 0.114219 * t.OUT_3 AS OUT_0,
    0.020966 + 0.112373 * t.OUT_0  + -0.181861 * t.OUT_1  + -0.016060 * t.OUT_2  + -0.222927 * t.OUT_3 AS OUT_1,
    0.122204 + -0.098035 * t.OUT_0  + -0.078942 * t.OUT_1  + -0.167284 * t.OUT_2  + -0.166419 * t.OUT_3 AS OUT_2,
    0.221331 + -0.006960 * t.OUT_0  + 0.136823 * t.OUT_1  + 0.171767 * t.OUT_2  + -0.045571 * t.OUT_3 AS OUT_3,
    -0.100724 + 0.056048 * t.OUT_0  + 0.167206 * t.OUT_1  + 0.240777 * t.OUT_2  + -0.153713 * t.OUT_3 AS OUT_4,
    0.007451 + -0.157718 * t.OUT_0  + 0.203304 * t.OUT_1  + 0.068891 * t.OUT_2  + 0.125891 * t.OUT_3 AS OUT_5,
    0.225068 + 0.057152 * t.OUT_0  + 0.163778 * t.OUT_1  + -0.002719 * t.OUT_2  + -0.027297 * t.OUT_3 AS OUT_6,
    0.190451 + -0.004297 * t.OUT_0  + 0.135553 * t.OUT_1  + 0.071095 * t.OUT_2  + -0.096310 * t.OUT_3 AS OUT_7,
    0.169598 + 0.192413 * t.OUT_0  + -0.111988 * t.OUT_1  + 0.010481 * t.OUT_2  + -0.070152 * t.OUT_3 AS OUT_8,
    -0.038972 + 0.038392 * t.OUT_0  + 0.046746 * t.OUT_1  + 0.089212 * t.OUT_2  + 0.122500 * t.OUT_3 AS OUT_9,
    -0.142945 + 0.210978 * t.OUT_0  + 0.032064 * t.OUT_1  + 0.045168 * t.OUT_2  + 0.158564 * t.OUT_3 AS OUT_10,
    -0.096656 + -0.026499 * t.OUT_0  + 0.166071 * t.OUT_1  + 0.164248 * t.OUT_2  + -0.077659 * t.OUT_3 AS OUT_11,
    0.069032 + 0.250912 * t.OUT_0  + 0.140726 * t.OUT_1  + 0.078369 * t.OUT_2  + 0.095501 * t.OUT_3 AS OUT_12,
    -0.204436 + -0.182845 * t.OUT_0  + -0.000589 * t.OUT_1  + -0.100990 * t.OUT_2  + -0.175225 * t.OUT_3 AS OUT_13,
    -0.092806 + -0.100623 * t.OUT_0  + 0.138138 * t.OUT_1  + -0.068665 * t.OUT_2  + 0.169918 * t.OUT_3 AS OUT_14,
    -0.192171 + 0.120337 * t.OUT_0  + 0.197889 * t.OUT_1  + -0.177100 * t.OUT_2  + -0.027215 * t.OUT_3 AS OUT_15,
    -0.039351 + 0.137698 * t.OUT_0  + 0.049846 * t.OUT_1  + -0.117417 * t.OUT_2  + 0.070113 * t.OUT_3 AS OUT_16,
    -0.075174 + -0.115070 * t.OUT_0  + -0.082576 * t.OUT_1  + -0.143667 * t.OUT_2  + -0.147349 * t.OUT_3 AS OUT_17,
    -0.013875 + -0.122237 * t.OUT_0  + -0.065666 * t.OUT_1  + 0.066427 * t.OUT_2  + -0.141136 * t.OUT_3 AS OUT_18,
    -0.040220 + -0.159593 * t.OUT_0  + -0.119020 * t.OUT_1  + -0.034734 * t.OUT_2  + 0.052454 * t.OUT_3 AS OUT_19,
    0.226100 + 0.092126 * t.OUT_0  + 0.119767 * t.OUT_1  + -0.120561 * t.OUT_2  + -0.095191 * t.OUT_3 AS OUT_20,
    0.157066 + -0.207328 * t.OUT_0  + 0.133635 * t.OUT_1  + -0.172203 * t.OUT_2  + 0.183818 * t.OUT_3 AS OUT_21,
    -0.100141 + -0.009127 * t.OUT_0  + -0.137754 * t.OUT_1  + 0.241910 * t.OUT_2  + -0.185146 * t.OUT_3 AS OUT_22,
    -0.023019 + -0.012245 * t.OUT_0  + 0.054379 * t.OUT_1  + -0.115875 * t.OUT_2  + -0.144311 * t.OUT_3 AS OUT_23,
    0.135882 + -0.047717 * t.OUT_0  + -0.153069 * t.OUT_1  + -0.057221 * t.OUT_2  + 0.105694 * t.OUT_3 AS OUT_24,
    -0.216829 + -0.188602 * t.OUT_0  + -0.000634 * t.OUT_1  + 0.083368 * t.OUT_2  + 0.016502 * t.OUT_3 AS OUT_25,
    -0.099444 + -0.096133 * t.OUT_0  + 0.072311 * t.OUT_1  + 0.134694 * t.OUT_2  + 0.184582 * t.OUT_3 AS OUT_26,
    0.006694 + 0.184178 * t.OUT_0  + -0.101192 * t.OUT_1  + 0.083848 * t.OUT_2  + 0.128039 * t.OUT_3 AS OUT_27,
    -0.119039 + -0.017654 * t.OUT_0  + 0.109744 * t.OUT_1  + -0.185188 * t.OUT_2  + -0.144595 * t.OUT_3 AS OUT_28,
    0.034161 + 0.033008 * t.OUT_0  + -0.195226 * t.OUT_1  + 0.207068 * t.OUT_2  + -0.141494 * t.OUT_3 AS OUT_29,
    -0.219782 + -0.185496 * t.OUT_0  + -0.186356 * t.OUT_1  + 0.183259 * t.OUT_2  + -0.169756 * t.OUT_3 AS OUT_30,
    -0.040596 + 0.024825 * t.OUT_0  + 0.180078 * t.OUT_1  + 0.202042 * t.OUT_2  + 0.081275 * t.OUT_3 AS OUT_31,
    -0.057258 + -0.061428 * t.OUT_0  + 0.227437 * t.OUT_1  + 0.026149 * t.OUT_2  + 0.077146 * t.OUT_3 AS OUT_32,
    0.115420 + 0.100341 * t.OUT_0  + -0.150591 * t.OUT_1  + 0.254784 * t.OUT_2  + 0.119011 * t.OUT_3 AS OUT_33,
    -0.018528 + -0.020403 * t.OUT_0  + -0.062380 * t.OUT_1  + 0.178309 * t.OUT_2  + -0.041478 * t.OUT_3 AS OUT_34,
    0.139107 + 0.087462 * t.OUT_0  + -0.202262 * t.OUT_1  + 0.076549 * t.OUT_2  + 0.046781 * t.OUT_3 AS OUT_35,
    -0.018475 + -0.159850 * t.OUT_0  + -0.156878 * t.OUT_1  + -0.081848 * t.OUT_2  + 0.196625 * t.OUT_3 AS OUT_36,
    -0.236294 + 0.197736 * t.OUT_0  + -0.193449 * t.OUT_1  + 0.196573 * t.OUT_2  + -0.193231 * t.OUT_3 AS OUT_37,
    0.189832 + -0.175863 * t.OUT_0  + -0.079753 * t.OUT_1  + -0.208680 * t.OUT_2  + -0.066630 * t.OUT_3 AS OUT_38,
    -0.221136 + 0.129082 * t.OUT_0  + -0.054998 * t.OUT_1  + -0.193415 * t.OUT_2  + -0.074223 * t.OUT_3 AS OUT_39,
    -0.009981 + -0.172538 * t.OUT_0  + -0.157202 * t.OUT_1  + -0.025159 * t.OUT_2  + 0.004695 * t.OUT_3 AS OUT_40,
    -0.024559 + 0.116096 * t.OUT_0  + -0.189402 * t.OUT_1  + -0.028815 * t.OUT_2  + -0.093037 * t.OUT_3 AS OUT_41,
    0.112217 + 0.079759 * t.OUT_0  + -0.190130 * t.OUT_1  + 0.115347 * t.OUT_2  + -0.053539 * t.OUT_3 AS OUT_42,
    -0.255272 + 0.205093 * t.OUT_0  + 0.033078 * t.OUT_1  + 0.188526 * t.OUT_2  + -0.087616 * t.OUT_3 AS OUT_43,
    -0.084426 + -0.150790 * t.OUT_0  + -0.157723 * t.OUT_1  + 0.043977 * t.OUT_2  + -0.050261 * t.OUT_3 AS OUT_44,
    0.196254 + -0.158336 * t.OUT_0  + -0.163386 * t.OUT_1  + -0.038635 * t.OUT_2  + 0.122060 * t.OUT_3 AS OUT_45,
    0.157409 + 0.092633 * t.OUT_0  + 0.057113 * t.OUT_1  + -0.141307 * t.OUT_2  + 0.046523 * t.OUT_3 AS OUT_46,
    -0.147924 + 0.053886 * t.OUT_0  + 0.050655 * t.OUT_1  + -0.173181 * t.OUT_2  + -0.144212 * t.OUT_3 AS OUT_47,
    0.165103 + 0.149056 * t.OUT_0  + -0.048182 * t.OUT_1  + 0.049005 * t.OUT_2  + -0.086539 * t.OUT_3 AS OUT_48,
    0.079890 + 0.207459 * t.OUT_0  + 0.091229 * t.OUT_1  + 0.059949 * t.OUT_2  + -0.016509 * t.OUT_3 AS OUT_49,
    0.223532 + 0.194881 * t.OUT_0  + 0.038708 * t.OUT_1  + -0.200050 * t.OUT_2  + 0.218005 * t.OUT_3 AS OUT_50,
    0.207382 + -0.156031 * t.OUT_0  + -0.158922 * t.OUT_1  + -0.028284 * t.OUT_2  + 0.024223 * t.OUT_3 AS OUT_51,
    -0.088162 + 0.155419 * t.OUT_0  + -0.031468 * t.OUT_1  + 0.166869 * t.OUT_2  + -0.172371 * t.OUT_3 AS OUT_52,
    0.182653 + 0.207642 * t.OUT_0  + 0.207117 * t.OUT_1  + -0.077705 * t.OUT_2  + -0.098722 * t.OUT_3 AS OUT_53,
    0.225654 + -0.112003 * t.OUT_0  + 0.272452 * t.OUT_1  + 0.027004 * t.OUT_2  + -0.169216 * t.OUT_3 AS OUT_54,
    0.217842 + 0.096954 * t.OUT_0  + -0.017301 * t.OUT_1  + -0.068799 * t.OUT_2  + 0.096391 * t.OUT_3 AS OUT_55,
    0.136249 + 0.049754 * t.OUT_0  + -0.225403 * t.OUT_1  + 0.063211 * t.OUT_2  + -0.136033 * t.OUT_3 AS OUT_56,
    0.035240 + 0.018012 * t.OUT_0  + -0.116709 * t.OUT_1  + -0.122389 * t.OUT_2  + -0.046736 * t.OUT_3 AS OUT_57,
    0.046541 + 0.042723 * t.OUT_0  + 0.110443 * t.OUT_1  + 0.011398 * t.OUT_2  + -0.167038 * t.OUT_3 AS OUT_58,
    -0.049239 + 0.124820 * t.OUT_0  + -0.208077 * t.OUT_1  + 0.147711 * t.OUT_2  + 0.018054 * t.OUT_3 AS OUT_59,
    -0.030121 + -0.176518 * t.OUT_0  + 0.082876 * t.OUT_1  + 0.073041 * t.OUT_2  + -0.176220 * t.OUT_3 AS OUT_60,
    -0.014917 + 0.004818 * t.OUT_0  + -0.152676 * t.OUT_1  + 0.128780 * t.OUT_2  + -0.105967 * t.OUT_3 AS OUT_61,
    0.010084 + 0.085263 * t.OUT_0  + 0.205965 * t.OUT_1  + 0.166876 * t.OUT_2  + 0.194824 * t.OUT_3 AS OUT_62,
    -0.085344 + 0.124311 * t.OUT_0  + 0.218683 * t.OUT_1  + 0.151301 * t.OUT_2  + -0.158968 * t.OUT_3 AS OUT_63,
    -0.151722 + -0.175557 * t.OUT_0  + -0.109984 * t.OUT_1  + 0.077483 * t.OUT_2  + 0.207306 * t.OUT_3 AS OUT_64,
    0.020260 + 0.154284 * t.OUT_0  + 0.112781 * t.OUT_1  + -0.174643 * t.OUT_2  + -0.142155 * t.OUT_3 AS OUT_65,
    0.231954 + -0.133716 * t.OUT_0  + -0.115576 * t.OUT_1  + -0.020091 * t.OUT_2  + 0.093519 * t.OUT_3 AS OUT_66,
    -0.068275 + -0.192467 * t.OUT_0  + 0.176415 * t.OUT_1  + -0.165604 * t.OUT_2  + -0.152247 * t.OUT_3 AS OUT_67,
    -0.125514 + 0.224151 * t.OUT_0  + -0.215733 * t.OUT_1  + 0.077123 * t.OUT_2  + 0.114431 * t.OUT_3 AS OUT_68,
    -0.157499 + 0.240369 * t.OUT_0  + 0.143954 * t.OUT_1  + 0.077548 * t.OUT_2  + -0.085391 * t.OUT_3 AS OUT_69,
    -0.086552 + -0.045546 * t.OUT_0  + 0.071692 * t.OUT_1  + 0.208875 * t.OUT_2  + -0.174079 * t.OUT_3 AS OUT_70,
    -0.116597 + -0.165992 * t.OUT_0  + -0.134079 * t.OUT_1  + 0.123263 * t.OUT_2  + -0.123349 * t.OUT_3 AS OUT_71,
    -0.033698 + 0.002979 * t.OUT_0  + 0.121607 * t.OUT_1  + 0.232555 * t.OUT_2  + -0.213181 * t.OUT_3 AS OUT_72,
    -0.075462 + 0.217707 * t.OUT_0  + 0.106250 * t.OUT_1  + -0.148409 * t.OUT_2  + 0.042560 * t.OUT_3 AS OUT_73,
    0.191070 + -0.173311 * t.OUT_0  + 0.006743 * t.OUT_1  + 0.052584 * t.OUT_2  + -0.194469 * t.OUT_3 AS OUT_74,
    -0.027079 + 0.078929 * t.OUT_0  + -0.128955 * t.OUT_1  + 0.162932 * t.OUT_2  + 0.238296 * t.OUT_3 AS OUT_75,
    0.043465 + 0.096129 * t.OUT_0  + 0.194572 * t.OUT_1  + 0.068979 * t.OUT_2  + -0.253604 * t.OUT_3 AS OUT_76,
    0.005757 + 0.129387 * t.OUT_0  + 0.193443 * t.OUT_1  + 0.208658 * t.OUT_2  + -0.018740 * t.OUT_3 AS OUT_77,
    -0.006800 + 0.197882 * t.OUT_0  + -0.125663 * t.OUT_1  + -0.093058 * t.OUT_2  + 0.226384 * t.OUT_3 AS OUT_78,
    0.031839 + -0.093572 * t.OUT_0  + 0.052107 * t.OUT_1  + 0.189158 * t.OUT_2  + 0.031467 * t.OUT_3 AS OUT_79,
    -0.078874 + 0.112600 * t.OUT_0  + 0.136410 * t.OUT_1  + 0.131054 * t.OUT_2  + -0.026780 * t.OUT_3 AS OUT_80,
    0.206228 + 0.178072 * t.OUT_0  + 0.026419 * t.OUT_1  + 0.262139 * t.OUT_2  + -0.059245 * t.OUT_3 AS OUT_81,
    0.251573 + 0.187765 * t.OUT_0  + 0.004319 * t.OUT_1  + 0.004799 * t.OUT_2  + 0.197866 * t.OUT_3 AS OUT_82,
    0.084264 + -0.033383 * t.OUT_0  + 0.223909 * t.OUT_1  + 0.065748 * t.OUT_2  + -0.147138 * t.OUT_3 AS OUT_83,
    0.041405 + -0.183685 * t.OUT_0  + 0.085086 * t.OUT_1  + 0.139230 * t.OUT_2  + -0.156101 * t.OUT_3 AS OUT_84,
    0.076704 + 0.131656 * t.OUT_0  + 0.117336 * t.OUT_1  + 0.093847 * t.OUT_2  + -0.129306 * t.OUT_3 AS OUT_85,
    -0.000930 + 0.027505 * t.OUT_0  + -0.144141 * t.OUT_1  + 0.171605 * t.OUT_2  + 0.032270 * t.OUT_3 AS OUT_86,
    0.154070 + -0.045510 * t.OUT_0  + -0.032623 * t.OUT_1  + -0.204791 * t.OUT_2  + 0.170446 * t.OUT_3 AS OUT_87,
    0.072886 + -0.179601 * t.OUT_0  + 0.195130 * t.OUT_1  + 0.078802 * t.OUT_2  + -0.037073 * t.OUT_3 AS OUT_88,
    -0.029741 + -0.218667 * t.OUT_0  + 0.138319 * t.OUT_1  + 0.222453 * t.OUT_2  + 0.088180 * t.OUT_3 AS OUT_89,
    -0.054875 + -0.087854 * t.OUT_0  + -0.069635 * t.OUT_1  + 0.049404 * t.OUT_2  + 0.151620 * t.OUT_3 AS OUT_90,
    -0.229895 + 0.203712 * t.OUT_0  + -0.073834 * t.OUT_1  + 0.176994 * t.OUT_2  + 0.113436 * t.OUT_3 AS OUT_91,
    0.216591 + -0.009776 * t.OUT_0  + 0.151239 * t.OUT_1  + -0.103005 * t.OUT_2  + -0.178811 * t.OUT_3 AS OUT_92,
    -0.200400 + -0.048975 * t.OUT_0  + -0.124573 * t.OUT_1  + 0.079715 * t.OUT_2  + 0.098564 * t.OUT_3 AS OUT_93,
    -0.122221 + -0.055625 * t.OUT_0  + 0.031332 * t.OUT_1  + -0.169219 * t.OUT_2  + -0.152611 * t.OUT_3 AS OUT_94,
    0.206776 + -0.227899 * t.OUT_0  + 0.183175 * t.OUT_1  + 0.050684 * t.OUT_2  + 0.119714 * t.OUT_3 AS OUT_95,
    -0.156734 + 0.080030 * t.OUT_0  + -0.191749 * t.OUT_1  + -0.200516 * t.OUT_2  + -0.175211 * t.OUT_3 AS OUT_96,
    0.201587 + -0.086866 * t.OUT_0  + -0.145365 * t.OUT_1  + 0.120773 * t.OUT_2  + -0.072869 * t.OUT_3 AS OUT_97,
    -0.134914 + -0.093217 * t.OUT_0  + -0.135137 * t.OUT_1  + 0.004431 * t.OUT_2  + 0.169879 * t.OUT_3 AS OUT_98,
    0.219189 + -0.048806 * t.OUT_0  + -0.125113 * t.OUT_1  + 0.007153 * t.OUT_2  + -0.142700 * t.OUT_3 AS OUT_99
 FROM Input_Layer_BA AS t
)
,
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5,
    CASE WHEN (OUT_6 > 0) THEN OUT_6 ELSE 0 END AS OUT_6,
    CASE WHEN (OUT_7 > 0) THEN OUT_7 ELSE 0 END AS OUT_7,
    CASE WHEN (OUT_8 > 0) THEN OUT_8 ELSE 0 END AS OUT_8,
    CASE WHEN (OUT_9 > 0) THEN OUT_9 ELSE 0 END AS OUT_9,
    CASE WHEN (OUT_10 > 0) THEN OUT_10 ELSE 0 END AS OUT_10,
    CASE WHEN (OUT_11 > 0) THEN OUT_11 ELSE 0 END AS OUT_11,
    CASE WHEN (OUT_12 > 0) THEN OUT_12 ELSE 0 END AS OUT_12,
    CASE WHEN (OUT_13 > 0) THEN OUT_13 ELSE 0 END AS OUT_13,
    CASE WHEN (OUT_14 > 0) THEN OUT_14 ELSE 0 END AS OUT_14,
    CASE WHEN (OUT_15 > 0) THEN OUT_15 ELSE 0 END AS OUT_15,
    CASE WHEN (OUT_16 > 0) THEN OUT_16 ELSE 0 END AS OUT_16,
    CASE WHEN (OUT_17 > 0) THEN OUT_17 ELSE 0 END AS OUT_17,
    CASE WHEN (OUT_18 > 0) THEN OUT_18 ELSE 0 END AS OUT_18,
    CASE WHEN (OUT_19 > 0) THEN OUT_19 ELSE 0 END AS OUT_19,
    CASE WHEN (OUT_20 > 0) THEN OUT_20 ELSE 0 END AS OUT_20,
    CASE WHEN (OUT_21 > 0) THEN OUT_21 ELSE 0 END AS OUT_21,
    CASE WHEN (OUT_22 > 0) THEN OUT_22 ELSE 0 END AS OUT_22,
    CASE WHEN (OUT_23 > 0) THEN OUT_23 ELSE 0 END AS OUT_23,
    CASE WHEN (OUT_24 > 0) THEN OUT_24 ELSE 0 END AS OUT_24,
    CASE WHEN (OUT_25 > 0) THEN OUT_25 ELSE 0 END AS OUT_25,
    CASE WHEN (OUT_26 > 0) THEN OUT_26 ELSE 0 END AS OUT_26,
    CASE WHEN (OUT_27 > 0) THEN OUT_27 ELSE 0 END AS OUT_27,
    CASE WHEN (OUT_28 > 0) THEN OUT_28 ELSE 0 END AS OUT_28,
    CASE WHEN (OUT_29 > 0) THEN OUT_29 ELSE 0 END AS OUT_29,
    CASE WHEN (OUT_30 > 0) THEN OUT_30 ELSE 0 END AS OUT_30,
    CASE WHEN (OUT_31 > 0) THEN OUT_31 ELSE 0 END AS OUT_31,
    CASE WHEN (OUT_32 > 0) THEN OUT_32 ELSE 0 END AS OUT_32,
    CASE WHEN (OUT_33 > 0) THEN OUT_33 ELSE 0 END AS OUT_33,
    CASE WHEN (OUT_34 > 0) THEN OUT_34 ELSE 0 END AS OUT_34,
    CASE WHEN (OUT_35 > 0) THEN OUT_35 ELSE 0 END AS OUT_35,
    CASE WHEN (OUT_36 > 0) THEN OUT_36 ELSE 0 END AS OUT_36,
    CASE WHEN (OUT_37 > 0) THEN OUT_37 ELSE 0 END AS OUT_37,
    CASE WHEN (OUT_38 > 0) THEN OUT_38 ELSE 0 END AS OUT_38,
    CASE WHEN (OUT_39 > 0) THEN OUT_39 ELSE 0 END AS OUT_39,
    CASE WHEN (OUT_40 > 0) THEN OUT_40 ELSE 0 END AS OUT_40,
    CASE WHEN (OUT_41 > 0) THEN OUT_41 ELSE 0 END AS OUT_41,
    CASE WHEN (OUT_42 > 0) THEN OUT_42 ELSE 0 END AS OUT_42,
    CASE WHEN (OUT_43 > 0) THEN OUT_43 ELSE 0 END AS OUT_43,
    CASE WHEN (OUT_44 > 0) THEN OUT_44 ELSE 0 END AS OUT_44,
    CASE WHEN (OUT_45 > 0) THEN OUT_45 ELSE 0 END AS OUT_45,
    CASE WHEN (OUT_46 > 0) THEN OUT_46 ELSE 0 END AS OUT_46,
    CASE WHEN (OUT_47 > 0) THEN OUT_47 ELSE 0 END AS OUT_47,
    CASE WHEN (OUT_48 > 0) THEN OUT_48 ELSE 0 END AS OUT_48,
    CASE WHEN (OUT_49 > 0) THEN OUT_49 ELSE 0 END AS OUT_49,
    CASE WHEN (OUT_50 > 0) THEN OUT_50 ELSE 0 END AS OUT_50,
    CASE WHEN (OUT_51 > 0) THEN OUT_51 ELSE 0 END AS OUT_51,
    CASE WHEN (OUT_52 > 0) THEN OUT_52 ELSE 0 END AS OUT_52,
    CASE WHEN (OUT_53 > 0) THEN OUT_53 ELSE 0 END AS OUT_53,
    CASE WHEN (OUT_54 > 0) THEN OUT_54 ELSE 0 END AS OUT_54,
    CASE WHEN (OUT_55 > 0) THEN OUT_55 ELSE 0 END AS OUT_55,
    CASE WHEN (OUT_56 > 0) THEN OUT_56 ELSE 0 END AS OUT_56,
    CASE WHEN (OUT_57 > 0) THEN OUT_57 ELSE 0 END AS OUT_57,
    CASE WHEN (OUT_58 > 0) THEN OUT_58 ELSE 0 END AS OUT_58,
    CASE WHEN (OUT_59 > 0) THEN OUT_59 ELSE 0 END AS OUT_59,
    CASE WHEN (OUT_60 > 0) THEN OUT_60 ELSE 0 END AS OUT_60,
    CASE WHEN (OUT_61 > 0) THEN OUT_61 ELSE 0 END AS OUT_61,
    CASE WHEN (OUT_62 > 0) THEN OUT_62 ELSE 0 END AS OUT_62,
    CASE WHEN (OUT_63 > 0) THEN OUT_63 ELSE 0 END AS OUT_63,
    CASE WHEN (OUT_64 > 0) THEN OUT_64 ELSE 0 END AS OUT_64,
    CASE WHEN (OUT_65 > 0) THEN OUT_65 ELSE 0 END AS OUT_65,
    CASE WHEN (OUT_66 > 0) THEN OUT_66 ELSE 0 END AS OUT_66,
    CASE WHEN (OUT_67 > 0) THEN OUT_67 ELSE 0 END AS OUT_67,
    CASE WHEN (OUT_68 > 0) THEN OUT_68 ELSE 0 END AS OUT_68,
    CASE WHEN (OUT_69 > 0) THEN OUT_69 ELSE 0 END AS OUT_69,
    CASE WHEN (OUT_70 > 0) THEN OUT_70 ELSE 0 END AS OUT_70,
    CASE WHEN (OUT_71 > 0) THEN OUT_71 ELSE 0 END AS OUT_71,
    CASE WHEN (OUT_72 > 0) THEN OUT_72 ELSE 0 END AS OUT_72,
    CASE WHEN (OUT_73 > 0) THEN OUT_73 ELSE 0 END AS OUT_73,
    CASE WHEN (OUT_74 > 0) THEN OUT_74 ELSE 0 END AS OUT_74,
    CASE WHEN (OUT_75 > 0) THEN OUT_75 ELSE 0 END AS OUT_75,
    CASE WHEN (OUT_76 > 0) THEN OUT_76 ELSE 0 END AS OUT_76,
    CASE WHEN (OUT_77 > 0) THEN OUT_77 ELSE 0 END AS OUT_77,
    CASE WHEN (OUT_78 > 0) THEN OUT_78 ELSE 0 END AS OUT_78,
    CASE WHEN (OUT_79 > 0) THEN OUT_79 ELSE 0 END AS OUT_79,
    CASE WHEN (OUT_80 > 0) THEN OUT_80 ELSE 0 END AS OUT_80,
    CASE WHEN (OUT_81 > 0) THEN OUT_81 ELSE 0 END AS OUT_81,
    CASE WHEN (OUT_82 > 0) THEN OUT_82 ELSE 0 END AS OUT_82,
    CASE WHEN (OUT_83 > 0) THEN OUT_83 ELSE 0 END AS OUT_83,
    CASE WHEN (OUT_84 > 0) THEN OUT_84 ELSE 0 END AS OUT_84,
    CASE WHEN (OUT_85 > 0) THEN OUT_85 ELSE 0 END AS OUT_85,
    CASE WHEN (OUT_86 > 0) THEN OUT_86 ELSE 0 END AS OUT_86,
    CASE WHEN (OUT_87 > 0) THEN OUT_87 ELSE 0 END AS OUT_87,
    CASE WHEN (OUT_88 > 0) THEN OUT_88 ELSE 0 END AS OUT_88,
    CASE WHEN (OUT_89 > 0) THEN OUT_89 ELSE 0 END AS OUT_89,
    CASE WHEN (OUT_90 > 0) THEN OUT_90 ELSE 0 END AS OUT_90,
    CASE WHEN (OUT_91 > 0) THEN OUT_91 ELSE 0 END AS OUT_91,
    CASE WHEN (OUT_92 > 0) THEN OUT_92 ELSE 0 END AS OUT_92,
    CASE WHEN (OUT_93 > 0) THEN OUT_93 ELSE 0 END AS OUT_93,
    CASE WHEN (OUT_94 > 0) THEN OUT_94 ELSE 0 END AS OUT_94,
    CASE WHEN (OUT_95 > 0) THEN OUT_95 ELSE 0 END AS OUT_95,
    CASE WHEN (OUT_96 > 0) THEN OUT_96 ELSE 0 END AS OUT_96,
    CASE WHEN (OUT_97 > 0) THEN OUT_97 ELSE 0 END AS OUT_97,
    CASE WHEN (OUT_98 > 0) THEN OUT_98 ELSE 0 END AS OUT_98,
    CASE WHEN (OUT_99 > 0) THEN OUT_99 ELSE 0 END AS OUT_99
 FROM Hidden_Layer_1_BA AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    0.149499 + 0.123687 * t.OUT_0  + 0.130285 * t.OUT_1  + -0.147232 * t.OUT_2  + -0.060276 * t.OUT_3  + -0.071750 * t.OUT_4  + -0.231955 * t.OUT_5  + 0.044603 * t.OUT_6  + 0.116127 * t.OUT_7  + 0.143258 * t.OUT_8  + 0.134665 * t.OUT_9  + -0.229118 * t.OUT_10  + -0.245226 * t.OUT_11  + 0.138484 * t.OUT_12  + 0.089560 * t.OUT_13  + 0.175633 * t.OUT_14  + 0.035251 * t.OUT_15  + -0.074643 * t.OUT_16  + -0.023104 * t.OUT_17  + -0.141248 * t.OUT_18  + -0.187009 * t.OUT_19  + 0.073906 * t.OUT_20  + -0.058436 * t.OUT_21  + -0.063727 * t.OUT_22  + -0.011849 * t.OUT_23  + -0.147600 * t.OUT_24  + -0.000088 * t.OUT_25  + -0.169324 * t.OUT_26  + 0.026450 * t.OUT_27  + 0.077292 * t.OUT_28  + -0.153186 * t.OUT_29  + -0.140442 * t.OUT_30  + -0.073081 * t.OUT_31  + -0.039428 * t.OUT_32  + -0.080149 * t.OUT_33  + -0.224596 * t.OUT_34  + -0.197292 * t.OUT_35  + 0.032638 * t.OUT_36  + 0.134863 * t.OUT_37  + 0.061958 * t.OUT_38  + 0.185122 * t.OUT_39  + -0.127733 * t.OUT_40  + 0.088953 * t.OUT_41  + 0.035029 * t.OUT_42  + -0.086919 * t.OUT_43  + 0.037135 * t.OUT_44  + -0.167643 * t.OUT_45  + -0.104302 * t.OUT_46  + -0.124553 * t.OUT_47  + 0.098367 * t.OUT_48  + 0.177770 * t.OUT_49  + -0.071858 * t.OUT_50  + -0.122756 * t.OUT_51  + -0.168053 * t.OUT_52  + -0.162832 * t.OUT_53  + 0.259494 * t.OUT_54  + 0.168474 * t.OUT_55  + 0.194848 * t.OUT_56  + -0.012243 * t.OUT_57  + -0.067700 * t.OUT_58  + 0.155943 * t.OUT_59  + 0.199765 * t.OUT_60  + 0.123323 * t.OUT_61  + -0.047142 * t.OUT_62  + -0.047305 * t.OUT_63  + 0.170070 * t.OUT_64  + 0.017606 * t.OUT_65  + -0.134599 * t.OUT_66  + -0.070992 * t.OUT_67  + -0.090604 * t.OUT_68  + -0.156939 * t.OUT_69  + 0.105910 * t.OUT_70  + -0.203574 * t.OUT_71  + -0.091478 * t.OUT_72  + 0.234277 * t.OUT_73  + -0.138795 * t.OUT_74  + -0.197757 * t.OUT_75  + 0.164401 * t.OUT_76  + 0.082076 * t.OUT_77  + -0.223574 * t.OUT_78  + -0.057780 * t.OUT_79  + -0.130607 * t.OUT_80  + -0.163549 * t.OUT_81  + -0.139371 * t.OUT_82  + 0.184118 * t.OUT_83  + -0.174556 * t.OUT_84  + 0.205151 * t.OUT_85  + -0.242309 * t.OUT_86  + -0.025500 * t.OUT_87  + 0.080119 * t.OUT_88  + 0.175546 * t.OUT_89  + 0.155383 * t.OUT_90  + 0.019995 * t.OUT_91  + 0.154174 * t.OUT_92  + -0.141780 * t.OUT_93  + -0.165584 * t.OUT_94  + 0.029874 * t.OUT_95  + -0.166456 * t.OUT_96  + -0.109423 * t.OUT_97  + -0.199418 * t.OUT_98  + 0.199836 * t.OUT_99 AS OUT_0,
    -0.092878 + 0.167265 * t.OUT_0  + -0.176813 * t.OUT_1  + -0.174194 * t.OUT_2  + 0.099397 * t.OUT_3  + 0.216353 * t.OUT_4  + -0.115136 * t.OUT_5  + -0.173362 * t.OUT_6  + -0.046255 * t.OUT_7  + -0.168859 * t.OUT_8  + 0.039864 * t.OUT_9  + -0.127194 * t.OUT_10  + -0.055808 * t.OUT_11  + 0.133481 * t.OUT_12  + 0.132537 * t.OUT_13  + -0.066713 * t.OUT_14  + 0.109134 * t.OUT_15  + 0.167418 * t.OUT_16  + -0.040567 * t.OUT_17  + 0.200211 * t.OUT_18  + -0.174870 * t.OUT_19  + -0.087466 * t.OUT_20  + 0.197077 * t.OUT_21  + -0.103706 * t.OUT_22  + 0.070952 * t.OUT_23  + 0.066783 * t.OUT_24  + 0.095540 * t.OUT_25  + 0.156399 * t.OUT_26  + -0.110694 * t.OUT_27  + 0.178578 * t.OUT_28  + 0.000318 * t.OUT_29  + 0.136262 * t.OUT_30  + 0.199351 * t.OUT_31  + 0.145731 * t.OUT_32  + 0.162085 * t.OUT_33  + 0.008442 * t.OUT_34  + -0.190436 * t.OUT_35  + -0.076406 * t.OUT_36  + 0.013623 * t.OUT_37  + 0.010282 * t.OUT_38  + -0.152006 * t.OUT_39  + -0.185741 * t.OUT_40  + 0.022081 * t.OUT_41  + 0.122902 * t.OUT_42  + -0.169352 * t.OUT_43  + 0.114812 * t.OUT_44  + 0.013143 * t.OUT_45  + 0.241589 * t.OUT_46  + 0.180980 * t.OUT_47  + -0.121395 * t.OUT_48  + 0.148610 * t.OUT_49  + 0.141546 * t.OUT_50  + 0.165788 * t.OUT_51  + 0.182670 * t.OUT_52  + 0.116510 * t.OUT_53  + 0.077627 * t.OUT_54  + 0.166362 * t.OUT_55  + 0.001197 * t.OUT_56  + -0.027236 * t.OUT_57  + 0.105607 * t.OUT_58  + -0.126262 * t.OUT_59  + -0.001439 * t.OUT_60  + -0.051146 * t.OUT_61  + -0.156366 * t.OUT_62  + -0.070539 * t.OUT_63  + -0.087578 * t.OUT_64  + -0.163832 * t.OUT_65  + 0.159151 * t.OUT_66  + -0.175433 * t.OUT_67  + -0.216683 * t.OUT_68  + 0.095592 * t.OUT_69  + 0.085920 * t.OUT_70  + -0.198882 * t.OUT_71  + 0.043527 * t.OUT_72  + -0.024987 * t.OUT_73  + -0.011309 * t.OUT_74  + -0.170200 * t.OUT_75  + -0.184445 * t.OUT_76  + -0.227691 * t.OUT_77  + -0.170800 * t.OUT_78  + -0.030115 * t.OUT_79  + 0.122542 * t.OUT_80  + -0.102786 * t.OUT_81  + 0.063662 * t.OUT_82  + 0.054630 * t.OUT_83  + -0.201822 * t.OUT_84  + 0.226003 * t.OUT_85  + -0.063155 * t.OUT_86  + 0.065094 * t.OUT_87  + 0.194090 * t.OUT_88  + 0.026058 * t.OUT_89  + -0.158897 * t.OUT_90  + -0.071546 * t.OUT_91  + -0.138111 * t.OUT_92  + -0.064583 * t.OUT_93  + -0.192407 * t.OUT_94  + -0.109152 * t.OUT_95  + -0.048821 * t.OUT_96  + -0.251195 * t.OUT_97  + 0.208014 * t.OUT_98  + 0.193067 * t.OUT_99 AS OUT_1,
    -0.126358 + -0.192368 * t.OUT_0  + 0.222324 * t.OUT_1  + -0.143742 * t.OUT_2  + 0.150195 * t.OUT_3  + -0.091497 * t.OUT_4  + 0.011731 * t.OUT_5  + 0.106806 * t.OUT_6  + -0.125682 * t.OUT_7  + 0.185385 * t.OUT_8  + -0.168963 * t.OUT_9  + 0.037964 * t.OUT_10  + -0.082779 * t.OUT_11  + -0.188656 * t.OUT_12  + 0.045873 * t.OUT_13  + -0.169187 * t.OUT_14  + -0.207618 * t.OUT_15  + -0.186654 * t.OUT_16  + 0.109409 * t.OUT_17  + 0.011152 * t.OUT_18  + 0.156918 * t.OUT_19  + -0.034228 * t.OUT_20  + 0.180841 * t.OUT_21  + 0.186493 * t.OUT_22  + 0.018319 * t.OUT_23  + 0.104495 * t.OUT_24  + -0.005308 * t.OUT_25  + -0.095615 * t.OUT_26  + -0.099310 * t.OUT_27  + -0.185054 * t.OUT_28  + -0.069157 * t.OUT_29  + -0.172414 * t.OUT_30  + 0.244367 * t.OUT_31  + -0.100203 * t.OUT_32  + -0.049087 * t.OUT_33  + 0.143643 * t.OUT_34  + 0.062094 * t.OUT_35  + 0.071713 * t.OUT_36  + 0.134400 * t.OUT_37  + -0.048880 * t.OUT_38  + -0.157632 * t.OUT_39  + -0.157813 * t.OUT_40  + -0.094844 * t.OUT_41  + 0.089426 * t.OUT_42  + 0.016468 * t.OUT_43  + -0.167791 * t.OUT_44  + -0.060541 * t.OUT_45  + -0.161114 * t.OUT_46  + 0.182946 * t.OUT_47  + 0.150161 * t.OUT_48  + -0.074262 * t.OUT_49  + -0.176635 * t.OUT_50  + 0.126837 * t.OUT_51  + -0.121893 * t.OUT_52  + -0.144436 * t.OUT_53  + -0.064835 * t.OUT_54  + 0.081502 * t.OUT_55  + -0.112363 * t.OUT_56  + 0.134695 * t.OUT_57  + -0.161854 * t.OUT_58  + 0.170347 * t.OUT_59  + -0.210250 * t.OUT_60  + -0.153517 * t.OUT_61  + 0.214648 * t.OUT_62  + -0.046602 * t.OUT_63  + 0.044365 * t.OUT_64  + 0.114272 * t.OUT_65  + -0.154982 * t.OUT_66  + -0.027029 * t.OUT_67  + 0.022260 * t.OUT_68  + 0.145756 * t.OUT_69  + 0.008919 * t.OUT_70  + 0.174065 * t.OUT_71  + -0.129525 * t.OUT_72  + 0.020358 * t.OUT_73  + -0.008695 * t.OUT_74  + -0.045343 * t.OUT_75  + -0.044054 * t.OUT_76  + 0.231535 * t.OUT_77  + -0.004528 * t.OUT_78  + 0.212722 * t.OUT_79  + -0.005881 * t.OUT_80  + -0.097076 * t.OUT_81  + -0.172461 * t.OUT_82  + -0.080925 * t.OUT_83  + -0.076778 * t.OUT_84  + 0.055092 * t.OUT_85  + -0.102242 * t.OUT_86  + -0.047723 * t.OUT_87  + -0.050437 * t.OUT_88  + 0.246058 * t.OUT_89  + 0.116898 * t.OUT_90  + 0.047717 * t.OUT_91  + 0.214980 * t.OUT_92  + -0.169690 * t.OUT_93  + 0.009980 * t.OUT_94  + -0.029828 * t.OUT_95  + 0.121959 * t.OUT_96  + -0.195074 * t.OUT_97  + 0.175615 * t.OUT_98  + 0.104381 * t.OUT_99 AS OUT_2
 FROM Hidden_Layer_1_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2"
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
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
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
    t1."Score_2" AS "Score_2"
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
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
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
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
 END AS "DecisionProba"
FROM arg_max_cte