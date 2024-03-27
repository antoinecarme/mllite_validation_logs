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
    -0.098329 + -0.000659 * t.OUT_0  + 0.121147 * t.OUT_1  + -0.086826 * t.OUT_2  + 0.116799 * t.OUT_3 AS OUT_0,
    0.021627 + 0.113077 * t.OUT_0  + -0.181137 * t.OUT_1  + -0.015338 * t.OUT_2  + -0.222234 * t.OUT_3 AS OUT_1,
    0.122204 + -0.098035 * t.OUT_0  + -0.078942 * t.OUT_1  + -0.196642 * t.OUT_2  + -0.166419 * t.OUT_3 AS OUT_2,
    0.218485 + -0.008064 * t.OUT_0  + 0.133811 * t.OUT_1  + 0.172386 * t.OUT_2  + -0.044942 * t.OUT_3 AS OUT_3,
    -0.101992 + 0.055435 * t.OUT_0  + 0.166121 * t.OUT_1  + 0.240778 * t.OUT_2  + -0.153646 * t.OUT_3 AS OUT_4,
    0.004558 + -0.158829 * t.OUT_0  + 0.200779 * t.OUT_1  + 0.069804 * t.OUT_2  + 0.126639 * t.OUT_3 AS OUT_5,
    0.226225 + 0.057715 * t.OUT_0  + 0.164800 * t.OUT_1  + -0.002822 * t.OUT_2  + -0.027504 * t.OUT_3 AS OUT_6,
    0.192922 + -0.003521 * t.OUT_0  + 0.138404 * t.OUT_1  + 0.070487 * t.OUT_2  + -0.096947 * t.OUT_3 AS OUT_7,
    0.170788 + 0.192993 * t.OUT_0  + -0.110929 * t.OUT_1  + 0.010444 * t.OUT_2  + -0.070270 * t.OUT_3 AS OUT_8,
    -0.022945 + 0.038389 * t.OUT_0  + 0.055895 * t.OUT_1  + 0.087581 * t.OUT_2  + 0.121173 * t.OUT_3 AS OUT_9,
    -0.147997 + 0.211048 * t.OUT_0  + 0.033491 * t.OUT_1  + 0.046550 * t.OUT_2  + 0.159606 * t.OUT_3 AS OUT_10,
    -0.098459 + -0.027324 * t.OUT_0  + 0.164319 * t.OUT_1  + 0.164475 * t.OUT_2  + -0.077339 * t.OUT_3 AS OUT_11,
    0.067193 + 0.251271 * t.OUT_0  + 0.138981 * t.OUT_1  + 0.077274 * t.OUT_2  + 0.094405 * t.OUT_3 AS OUT_12,
    -0.204436 + -0.185541 * t.OUT_0  + -0.000589 * t.OUT_1  + -0.100990 * t.OUT_2  + -0.177913 * t.OUT_3 AS OUT_13,
    -0.092806 + -0.100623 * t.OUT_0  + 0.138138 * t.OUT_1  + -0.068665 * t.OUT_2  + 0.199310 * t.OUT_3 AS OUT_14,
    -0.192780 + 0.119695 * t.OUT_0  + 0.197097 * t.OUT_1  + -0.177719 * t.OUT_2  + -0.028022 * t.OUT_3 AS OUT_15,
    -0.040594 + 0.137104 * t.OUT_0  + 0.048797 * t.OUT_1  + -0.117339 * t.OUT_2  + 0.070285 * t.OUT_3 AS OUT_16,
    -0.075174 + -0.115070 * t.OUT_0  + -0.082576 * t.OUT_1  + -0.143667 * t.OUT_2  + -0.147349 * t.OUT_3 AS OUT_17,
    -0.013875 + -0.122237 * t.OUT_0  + -0.065666 * t.OUT_1  + 0.066427 * t.OUT_2  + -0.141136 * t.OUT_3 AS OUT_18,
    -0.040220 + -0.186389 * t.OUT_0  + -0.119020 * t.OUT_1  + -0.034734 * t.OUT_2  + 0.052454 * t.OUT_3 AS OUT_19,
    0.227486 + 0.092781 * t.OUT_0  + 0.121127 * t.OUT_1  + -0.120703 * t.OUT_2  + -0.095450 * t.OUT_3 AS OUT_20,
    0.157066 + -0.207561 * t.OUT_0  + 0.133635 * t.OUT_1  + -0.201623 * t.OUT_2  + 0.186514 * t.OUT_3 AS OUT_21,
    -0.099615 + -0.008712 * t.OUT_0  + -0.137206 * t.OUT_1  + 0.242264 * t.OUT_2  + -0.184817 * t.OUT_3 AS OUT_22,
    -0.023077 + -0.012299 * t.OUT_0  + 0.054331 * t.OUT_1  + -0.115931 * t.OUT_2  + -0.144443 * t.OUT_3 AS OUT_23,
    0.135882 + -0.047717 * t.OUT_0  + -0.153069 * t.OUT_1  + -0.057221 * t.OUT_2  + 0.105694 * t.OUT_3 AS OUT_24,
    -0.216829 + -0.188851 * t.OUT_0  + -0.000634 * t.OUT_1  + 0.083368 * t.OUT_2  + 0.016502 * t.OUT_3 AS OUT_25,
    -0.099540 + -0.096021 * t.OUT_0  + 0.072384 * t.OUT_1  + 0.135206 * t.OUT_2  + 0.185239 * t.OUT_3 AS OUT_26,
    0.008445 + 0.184848 * t.OUT_0  + -0.099306 * t.OUT_1  + 0.083455 * t.OUT_2  + 0.127537 * t.OUT_3 AS OUT_27,
    -0.119039 + -0.017654 * t.OUT_0  + 0.109744 * t.OUT_1  + -0.185440 * t.OUT_2  + -0.144595 * t.OUT_3 AS OUT_28,
    0.034205 + 0.033294 * t.OUT_0  + -0.195101 * t.OUT_1  + 0.208961 * t.OUT_2  + -0.136108 * t.OUT_3 AS OUT_29,
    -0.219782 + -0.185748 * t.OUT_0  + -0.186607 * t.OUT_1  + 0.185954 * t.OUT_2  + -0.199146 * t.OUT_3 AS OUT_30,
    -0.042870 + 0.023897 * t.OUT_0  + 0.177711 * t.OUT_1  + 0.202499 * t.OUT_2  + 0.081789 * t.OUT_3 AS OUT_31,
    -0.058511 + -0.062019 * t.OUT_0  + 0.226390 * t.OUT_1  + 0.026218 * t.OUT_2  + 0.077301 * t.OUT_3 AS OUT_32,
    0.114186 + 0.099735 * t.OUT_0  + -0.151632 * t.OUT_1  + 0.254706 * t.OUT_2  + 0.118965 * t.OUT_3 AS OUT_33,
    -0.017679 + -0.019616 * t.OUT_0  + -0.061557 * t.OUT_1  + 0.179017 * t.OUT_2  + -0.040806 * t.OUT_3 AS OUT_34,
    0.141137 + 0.088423 * t.OUT_0  + -0.200173 * t.OUT_1  + 0.073064 * t.OUT_2  + 0.032806 * t.OUT_3 AS OUT_35,
    -0.018475 + -0.159850 * t.OUT_0  + -0.183640 * t.OUT_1  + -0.081848 * t.OUT_2  + 0.196866 * t.OUT_3 AS OUT_36,
    -0.234673 + 0.198341 * t.OUT_0  + -0.191827 * t.OUT_1  + 0.195802 * t.OUT_2  + -0.194368 * t.OUT_3 AS OUT_37,
    0.189832 + -0.175863 * t.OUT_0  + -0.079753 * t.OUT_1  + -0.208912 * t.OUT_2  + -0.066630 * t.OUT_3 AS OUT_38,
    -0.221136 + 0.129082 * t.OUT_0  + -0.054998 * t.OUT_1  + -0.193659 * t.OUT_2  + -0.074223 * t.OUT_3 AS OUT_39,
    -0.009981 + -0.172538 * t.OUT_0  + -0.157202 * t.OUT_1  + -0.025159 * t.OUT_2  + 0.004695 * t.OUT_3 AS OUT_40,
    -0.025688 + 0.115259 * t.OUT_0  + -0.190492 * t.OUT_1  + -0.029177 * t.OUT_2  + -0.093319 * t.OUT_3 AS OUT_41,
    0.112183 + 0.079887 * t.OUT_0  + -0.190105 * t.OUT_1  + 0.115594 * t.OUT_2  + -0.053274 * t.OUT_3 AS OUT_42,
    -0.254137 + 0.205636 * t.OUT_0  + 0.034092 * t.OUT_1  + 0.188050 * t.OUT_2  + -0.088342 * t.OUT_3 AS OUT_43,
    -0.084426 + -0.150790 * t.OUT_0  + -0.157723 * t.OUT_1  + 0.043977 * t.OUT_2  + -0.050261 * t.OUT_3 AS OUT_44,
    0.196254 + -0.185116 * t.OUT_0  + -0.190227 * t.OUT_1  + -0.038635 * t.OUT_2  + 0.122060 * t.OUT_3 AS OUT_45,
    0.156149 + 0.092015 * t.OUT_0  + 0.055984 * t.OUT_1  + -0.141299 * t.OUT_2  + 0.046604 * t.OUT_3 AS OUT_46,
    -0.147839 + 0.053972 * t.OUT_0  + 0.050740 * t.OUT_1  + -0.173097 * t.OUT_2  + -0.144126 * t.OUT_3 AS OUT_47,
    0.166270 + 0.149626 * t.OUT_0  + -0.047144 * t.OUT_1  + 0.048940 * t.OUT_2  + -0.086694 * t.OUT_3 AS OUT_48,
    0.077937 + 0.217748 * t.OUT_0  + 0.089217 * t.OUT_1  + 0.058395 * t.OUT_2  + -0.017688 * t.OUT_3 AS OUT_49,
    0.222274 + 0.194285 * t.OUT_0  + 0.037652 * t.OUT_1  + -0.199935 * t.OUT_2  + 0.218230 * t.OUT_3 AS OUT_50,
    0.207382 + -0.156031 * t.OUT_0  + -0.158922 * t.OUT_1  + -0.028284 * t.OUT_2  + 0.024223 * t.OUT_3 AS OUT_51,
    -0.089471 + 0.154781 * t.OUT_0  + -0.032619 * t.OUT_1  + 0.166847 * t.OUT_2  + -0.172328 * t.OUT_3 AS OUT_52,
    0.181315 + 0.206994 * t.OUT_0  + 0.205937 * t.OUT_1  + -0.077715 * t.OUT_2  + -0.098659 * t.OUT_3 AS OUT_53,
    0.225348 + -0.112318 * t.OUT_0  + 0.272170 * t.OUT_1  + 0.026472 * t.OUT_2  + -0.170172 * t.OUT_3 AS OUT_54,
    0.221902 + 0.106492 * t.OUT_0  + -0.015868 * t.OUT_1  + -0.070250 * t.OUT_2  + 0.095241 * t.OUT_3 AS OUT_55,
    0.135937 + 0.049461 * t.OUT_0  + -0.225700 * t.OUT_1  + 0.062932 * t.OUT_2  + -0.136295 * t.OUT_3 AS OUT_56,
    0.035240 + 0.018012 * t.OUT_0  + -0.116709 * t.OUT_1  + -0.122389 * t.OUT_2  + -0.046736 * t.OUT_3 AS OUT_57,
    0.045321 + 0.042140 * t.OUT_0  + 0.109425 * t.OUT_1  + 0.011430 * t.OUT_2  + -0.166936 * t.OUT_3 AS OUT_58,
    -0.047989 + 0.125435 * t.OUT_0  + -0.206930 * t.OUT_1  + 0.147716 * t.OUT_2  + 0.017989 * t.OUT_3 AS OUT_59,
    -0.030121 + -0.179208 * t.OUT_0  + 0.082876 * t.OUT_1  + 0.073041 * t.OUT_2  + -0.176220 * t.OUT_3 AS OUT_60,
    -0.015552 + 0.004227 * t.OUT_0  + -0.153296 * t.OUT_1  + 0.128232 * t.OUT_2  + -0.106495 * t.OUT_3 AS OUT_61,
    0.011300 + 0.085795 * t.OUT_0  + 0.207048 * t.OUT_1  + 0.165609 * t.OUT_2  + 0.193267 * t.OUT_3 AS OUT_62,
    -0.084488 + 0.124738 * t.OUT_0  + 0.219547 * t.OUT_1  + 0.151211 * t.OUT_2  + -0.159157 * t.OUT_3 AS OUT_63,
    -0.151722 + -0.178246 * t.OUT_0  + -0.109984 * t.OUT_1  + 0.077483 * t.OUT_2  + 0.207539 * t.OUT_3 AS OUT_64,
    0.021503 + 0.154826 * t.OUT_0  + 0.113878 * t.OUT_1  + -0.175329 * t.OUT_2  + -0.143200 * t.OUT_3 AS OUT_65,
    0.231954 + -0.133716 * t.OUT_0  + -0.115576 * t.OUT_1  + -0.020091 * t.OUT_2  + 0.093519 * t.OUT_3 AS OUT_66,
    -0.068275 + -0.192713 * t.OUT_0  + 0.176415 * t.OUT_1  + -0.165604 * t.OUT_2  + -0.152247 * t.OUT_3 AS OUT_67,
    -0.124141 + 0.224719 * t.OUT_0  + -0.214456 * t.OUT_1  + 0.076311 * t.OUT_2  + 0.113176 * t.OUT_3 AS OUT_68,
    -0.160003 + 0.239393 * t.OUT_0  + 0.141316 * t.OUT_1  + 0.078087 * t.OUT_2  + -0.084807 * t.OUT_3 AS OUT_69,
    -0.072539 + -0.045582 * t.OUT_0  + 0.080876 * t.OUT_1  + 0.207393 * t.OUT_2  + -0.175283 * t.OUT_3 AS OUT_70,
    -0.116597 + -0.195333 * t.OUT_0  + -0.134079 * t.OUT_1  + 0.123263 * t.OUT_2  + -0.123349 * t.OUT_3 AS OUT_71,
    -0.034956 + 0.002392 * t.OUT_0  + 0.120586 * t.OUT_1  + 0.232658 * t.OUT_2  + -0.212983 * t.OUT_3 AS OUT_72,
    -0.073916 + 0.218386 * t.OUT_0  + 0.107825 * t.OUT_1  + -0.148624 * t.OUT_2  + 0.042240 * t.OUT_3 AS OUT_73,
    0.191070 + -0.173311 * t.OUT_0  + 0.006743 * t.OUT_1  + 0.052584 * t.OUT_2  + -0.194713 * t.OUT_3 AS OUT_74,
    -0.025694 + 0.079109 * t.OUT_0  + -0.127586 * t.OUT_1  + 0.155773 * t.OUT_2  + 0.237735 * t.OUT_3 AS OUT_75,
    0.044880 + 0.096783 * t.OUT_0  + 0.195954 * t.OUT_1  + 0.068865 * t.OUT_2  + -0.253819 * t.OUT_3 AS OUT_76,
    0.006939 + 0.129958 * t.OUT_0  + 0.194476 * t.OUT_1  + 0.208501 * t.OUT_2  + -0.019027 * t.OUT_3 AS OUT_77,
    -0.005015 + 0.195598 * t.OUT_0  + -0.123844 * t.OUT_1  + -0.091628 * t.OUT_2  + 0.227489 * t.OUT_3 AS OUT_78,
    0.028055 + -0.092346 * t.OUT_0  + 0.050509 * t.OUT_1  + 0.190373 * t.OUT_2  + 0.032500 * t.OUT_3 AS OUT_79,
    -0.080367 + 0.111887 * t.OUT_0  + 0.135031 * t.OUT_1  + 0.131114 * t.OUT_2  + -0.026625 * t.OUT_3 AS OUT_80,
    0.203746 + 0.176770 * t.OUT_0  + 0.024125 * t.OUT_1  + 0.262534 * t.OUT_2  + -0.058815 * t.OUT_3 AS OUT_81,
    0.250293 + 0.187153 * t.OUT_0  + 0.003242 * t.OUT_1  + 0.004832 * t.OUT_2  + 0.197974 * t.OUT_3 AS OUT_82,
    0.088610 + -0.032517 * t.OUT_0  + 0.229384 * t.OUT_1  + 0.064837 * t.OUT_2  + -0.147963 * t.OUT_3 AS OUT_83,
    0.041405 + -0.186382 * t.OUT_0  + 0.085086 * t.OUT_1  + 0.139230 * t.OUT_2  + -0.156101 * t.OUT_3 AS OUT_84,
    0.074969 + 0.131497 * t.OUT_0  + 0.115810 * t.OUT_1  + 0.103303 * t.OUT_2  + -0.130083 * t.OUT_3 AS OUT_85,
    -0.000670 + 0.027809 * t.OUT_0  + -0.143865 * t.OUT_1  + 0.171961 * t.OUT_2  + 0.032625 * t.OUT_3 AS OUT_86,
    0.154070 + -0.045510 * t.OUT_0  + -0.032623 * t.OUT_1  + -0.205026 * t.OUT_2  + 0.170446 * t.OUT_3 AS OUT_87,
    0.072312 + -0.180172 * t.OUT_0  + 0.194530 * t.OUT_1  + 0.077819 * t.OUT_2  + -0.038047 * t.OUT_3 AS OUT_88,
    -0.029304 + -0.218292 * t.OUT_0  + 0.138956 * t.OUT_1  + 0.222858 * t.OUT_2  + 0.088670 * t.OUT_3 AS OUT_89,
    -0.054875 + -0.087854 * t.OUT_0  + -0.069635 * t.OUT_1  + 0.049404 * t.OUT_2  + 0.151620 * t.OUT_3 AS OUT_90,
    -0.228662 + 0.204276 * t.OUT_0  + -0.072676 * t.OUT_1  + 0.176760 * t.OUT_2  + 0.113027 * t.OUT_3 AS OUT_91,
    0.217775 + -0.008885 * t.OUT_0  + 0.152406 * t.OUT_1  + -0.102499 * t.OUT_2  + -0.178425 * t.OUT_3 AS OUT_92,
    -0.200400 + -0.048975 * t.OUT_0  + -0.124573 * t.OUT_1  + 0.079715 * t.OUT_2  + 0.098564 * t.OUT_3 AS OUT_93,
    -0.122221 + -0.055625 * t.OUT_0  + 0.031332 * t.OUT_1  + -0.169219 * t.OUT_2  + -0.152611 * t.OUT_3 AS OUT_94,
    0.206771 + -0.227905 * t.OUT_0  + 0.183170 * t.OUT_1  + 0.050676 * t.OUT_2  + 0.119704 * t.OUT_3 AS OUT_95,
    -0.156734 + 0.080030 * t.OUT_0  + -0.191995 * t.OUT_1  + -0.200754 * t.OUT_2  + -0.175211 * t.OUT_3 AS OUT_96,
    0.201561 + -0.086892 * t.OUT_0  + -0.145391 * t.OUT_1  + 0.120747 * t.OUT_2  + -0.072895 * t.OUT_3 AS OUT_97,
    -0.134914 + -0.093217 * t.OUT_0  + -0.135137 * t.OUT_1  + 0.004431 * t.OUT_2  + 0.199270 * t.OUT_3 AS OUT_98,
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
    0.151426 + 0.123479 * t.OUT_0  + 0.130665 * t.OUT_1  + -0.147232 * t.OUT_2  + -0.059730 * t.OUT_3  + -0.071447 * t.OUT_4  + -0.232978 * t.OUT_5  + 0.046207 * t.OUT_6  + 0.117247 * t.OUT_7  + 0.143858 * t.OUT_8  + 0.134867 * t.OUT_9  + -0.228673 * t.OUT_10  + -0.244890 * t.OUT_11  + 0.139071 * t.OUT_12  + 0.089560 * t.OUT_13  + 0.178321 * t.OUT_14  + 0.035140 * t.OUT_15  + -0.072413 * t.OUT_16  + -0.023104 * t.OUT_17  + -0.141248 * t.OUT_18  + -0.187259 * t.OUT_19  + 0.076463 * t.OUT_20  + -0.058436 * t.OUT_21  + -0.063985 * t.OUT_22  + -0.011759 * t.OUT_23  + -0.147600 * t.OUT_24  + -0.000088 * t.OUT_25  + -0.170103 * t.OUT_26  + 0.026370 * t.OUT_27  + 0.077292 * t.OUT_28  + -0.153955 * t.OUT_29  + -0.140442 * t.OUT_30  + -0.072923 * t.OUT_31  + -0.037476 * t.OUT_32  + -0.080518 * t.OUT_33  + -0.225118 * t.OUT_34  + -0.197539 * t.OUT_35  + 0.032638 * t.OUT_36  + 0.134461 * t.OUT_37  + 0.061958 * t.OUT_38  + 0.185375 * t.OUT_39  + -0.127733 * t.OUT_40  + 0.088884 * t.OUT_41  + 0.034534 * t.OUT_42  + -0.086794 * t.OUT_43  + 0.037135 * t.OUT_44  + -0.167643 * t.OUT_45  + -0.104508 * t.OUT_46  + -0.124614 * t.OUT_47  + 0.098970 * t.OUT_48  + 0.178525 * t.OUT_49  + -0.069713 * t.OUT_50  + -0.122756 * t.OUT_51  + -0.167917 * t.OUT_52  + -0.160808 * t.OUT_53  + 0.259393 * t.OUT_54  + 0.169890 * t.OUT_55  + 0.194729 * t.OUT_56  + -0.012243 * t.OUT_57  + -0.064912 * t.OUT_58  + 0.155447 * t.OUT_59  + 0.200004 * t.OUT_60  + 0.123103 * t.OUT_61  + -0.046842 * t.OUT_62  + -0.046546 * t.OUT_63  + 0.170070 * t.OUT_64  + 0.021211 * t.OUT_65  + -0.134599 * t.OUT_66  + -0.070992 * t.OUT_67  + -0.090948 * t.OUT_68  + -0.156014 * t.OUT_69  + 0.106070 * t.OUT_70  + -0.203810 * t.OUT_71  + -0.091277 * t.OUT_72  + 0.236064 * t.OUT_73  + -0.138795 * t.OUT_74  + -0.198117 * t.OUT_75  + 0.165909 * t.OUT_76  + 0.082480 * t.OUT_77  + -0.223245 * t.OUT_78  + -0.058487 * t.OUT_79  + -0.130062 * t.OUT_80  + -0.163306 * t.OUT_81  + -0.138766 * t.OUT_82  + 0.185912 * t.OUT_83  + -0.177244 * t.OUT_84  + 0.205646 * t.OUT_85  + -0.242889 * t.OUT_86  + -0.025500 * t.OUT_87  + 0.085237 * t.OUT_88  + 0.174439 * t.OUT_89  + 0.182126 * t.OUT_90  + 0.019788 * t.OUT_91  + 0.154101 * t.OUT_92  + -0.141780 * t.OUT_93  + -0.194919 * t.OUT_94  + 0.029845 * t.OUT_95  + -0.166456 * t.OUT_96  + -0.109451 * t.OUT_97  + -0.199657 * t.OUT_98  + 0.200075 * t.OUT_99 AS OUT_0,
    -0.094136 + 0.167388 * t.OUT_0  + -0.177057 * t.OUT_1  + -0.174194 * t.OUT_2  + 0.098773 * t.OUT_3  + 0.215914 * t.OUT_4  + -0.116618 * t.OUT_5  + -0.174297 * t.OUT_6  + -0.047023 * t.OUT_7  + -0.169382 * t.OUT_8  + 0.039509 * t.OUT_9  + -0.127729 * t.OUT_10  + -0.056283 * t.OUT_11  + 0.132912 * t.OUT_12  + 0.132537 * t.OUT_13  + -0.066713 * t.OUT_14  + 0.109061 * t.OUT_15  + 0.166068 * t.OUT_16  + -0.040567 * t.OUT_17  + 0.200450 * t.OUT_18  + -0.174870 * t.OUT_19  + -0.089106 * t.OUT_20  + 0.197318 * t.OUT_21  + -0.103407 * t.OUT_22  + 0.070848 * t.OUT_23  + 0.066783 * t.OUT_24  + 0.095540 * t.OUT_25  + 0.156961 * t.OUT_26  + -0.110912 * t.OUT_27  + 0.181270 * t.OUT_28  + 0.000815 * t.OUT_29  + 0.136262 * t.OUT_30  + 0.198935 * t.OUT_31  + 0.144569 * t.OUT_32  + 0.162072 * t.OUT_33  + 0.013112 * t.OUT_34  + -0.190176 * t.OUT_35  + -0.076406 * t.OUT_36  + 0.013766 * t.OUT_37  + 0.010282 * t.OUT_38  + -0.152006 * t.OUT_39  + -0.185992 * t.OUT_40  + 0.021956 * t.OUT_41  + 0.123545 * t.OUT_42  + -0.169645 * t.OUT_43  + 0.114812 * t.OUT_44  + 0.013143 * t.OUT_45  + 0.239246 * t.OUT_46  + 0.181018 * t.OUT_47  + -0.121928 * t.OUT_48  + 0.147966 * t.OUT_49  + 0.140254 * t.OUT_50  + 0.165788 * t.OUT_51  + 0.182336 * t.OUT_52  + 0.115356 * t.OUT_53  + 0.077484 * t.OUT_54  + 0.165268 * t.OUT_55  + 0.001562 * t.OUT_56  + -0.027236 * t.OUT_57  + 0.104068 * t.OUT_58  + -0.125988 * t.OUT_59  + -0.001439 * t.OUT_60  + -0.050464 * t.OUT_61  + -0.156813 * t.OUT_62  + -0.071118 * t.OUT_63  + -0.087578 * t.OUT_64  + -0.165906 * t.OUT_65  + 0.185941 * t.OUT_66  + -0.175433 * t.OUT_67  + -0.216656 * t.OUT_68  + 0.094942 * t.OUT_69  + 0.085683 * t.OUT_70  + -0.199122 * t.OUT_71  + 0.043130 * t.OUT_72  + -0.025939 * t.OUT_73  + -0.011309 * t.OUT_74  + -0.170069 * t.OUT_75  + -0.185283 * t.OUT_76  + -0.228165 * t.OUT_77  + -0.171228 * t.OUT_78  + -0.031026 * t.OUT_79  + 0.121994 * t.OUT_80  + -0.103228 * t.OUT_81  + 0.063026 * t.OUT_82  + 0.053609 * t.OUT_83  + -0.202059 * t.OUT_84  + 0.225396 * t.OUT_85  + -0.061766 * t.OUT_86  + 0.065094 * t.OUT_87  + 0.191528 * t.OUT_88  + 0.025712 * t.OUT_89  + -0.158897 * t.OUT_90  + -0.071656 * t.OUT_91  + -0.139948 * t.OUT_92  + -0.064583 * t.OUT_93  + -0.192652 * t.OUT_94  + -0.109208 * t.OUT_95  + -0.048821 * t.OUT_96  + -0.251207 * t.OUT_97  + 0.208246 * t.OUT_98  + 0.193312 * t.OUT_99 AS OUT_1,
    -0.124720 + -0.191873 * t.OUT_0  + 0.222642 * t.OUT_1  + -0.143742 * t.OUT_2  + 0.149004 * t.OUT_3  + -0.093504 * t.OUT_4  + 0.012421 * t.OUT_5  + 0.108305 * t.OUT_6  + -0.125100 * t.OUT_7  + 0.185585 * t.OUT_8  + -0.186399 * t.OUT_9  + 0.036724 * t.OUT_10  + -0.084705 * t.OUT_11  + -0.189781 * t.OUT_12  + 0.045873 * t.OUT_13  + -0.169187 * t.OUT_14  + -0.207122 * t.OUT_15  + -0.185185 * t.OUT_16  + 0.109409 * t.OUT_17  + 0.011152 * t.OUT_18  + 0.156918 * t.OUT_19  + -0.033013 * t.OUT_20  + 0.183534 * t.OUT_21  + 0.186549 * t.OUT_22  + 0.018334 * t.OUT_23  + 0.104495 * t.OUT_24  + -0.005308 * t.OUT_25  + -0.095202 * t.OUT_26  + -0.103044 * t.OUT_27  + -0.185306 * t.OUT_28  + -0.068856 * t.OUT_29  + -0.172414 * t.OUT_30  + 0.241863 * t.OUT_31  + -0.099615 * t.OUT_32  + -0.051815 * t.OUT_33  + 0.144056 * t.OUT_34  + 0.048763 * t.OUT_35  + 0.071713 * t.OUT_36  + 0.117057 * t.OUT_37  + -0.048880 * t.OUT_38  + -0.157632 * t.OUT_39  + -0.184587 * t.OUT_40  + -0.093464 * t.OUT_41  + 0.090104 * t.OUT_42  + 0.013954 * t.OUT_43  + -0.197155 * t.OUT_44  + -0.060541 * t.OUT_45  + -0.160289 * t.OUT_46  + 0.183232 * t.OUT_47  + 0.150053 * t.OUT_48  + -0.074948 * t.OUT_49  + -0.175025 * t.OUT_50  + 0.126837 * t.OUT_51  + -0.123969 * t.OUT_52  + -0.142839 * t.OUT_53  + -0.064352 * t.OUT_54  + 0.082077 * t.OUT_55  + -0.109995 * t.OUT_56  + 0.134695 * t.OUT_57  + -0.160574 * t.OUT_58  + 0.170662 * t.OUT_59  + -0.210480 * t.OUT_60  + -0.152519 * t.OUT_61  + 0.212361 * t.OUT_62  + -0.046817 * t.OUT_63  + 0.044365 * t.OUT_64  + 0.115032 * t.OUT_65  + -0.181720 * t.OUT_66  + -0.027029 * t.OUT_67  + 0.006837 * t.OUT_68  + 0.146116 * t.OUT_69  + 0.005997 * t.OUT_70  + 0.176752 * t.OUT_71  + -0.131857 * t.OUT_72  + 0.021987 * t.OUT_73  + -0.008695 * t.OUT_74  + -0.052078 * t.OUT_75  + -0.042568 * t.OUT_76  + 0.229811 * t.OUT_77  + -0.004918 * t.OUT_78  + 0.213334 * t.OUT_79  + -0.007013 * t.OUT_80  + -0.099064 * t.OUT_81  + -0.173374 * t.OUT_82  + -0.079492 * t.OUT_83  + -0.076778 * t.OUT_84  + 0.055504 * t.OUT_85  + -0.101592 * t.OUT_86  + -0.047723 * t.OUT_87  + -0.051895 * t.OUT_88  + 0.246608 * t.OUT_89  + 0.116898 * t.OUT_90  + 0.042588 * t.OUT_91  + 0.215220 * t.OUT_92  + -0.169690 * t.OUT_93  + 0.009980 * t.OUT_94  + -0.029706 * t.OUT_95  + 0.121959 * t.OUT_96  + -0.195048 * t.OUT_97  + 0.178303 * t.OUT_98  + 0.104381 * t.OUT_99 AS OUT_2
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