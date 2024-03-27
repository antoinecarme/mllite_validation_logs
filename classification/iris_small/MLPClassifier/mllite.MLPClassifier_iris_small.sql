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
    -0.091623 + 0.007874 * t.OUT_0  + 0.128350 * t.OUT_1  + -0.083512 * t.OUT_2  + 0.110441 * t.OUT_3 AS OUT_0,
    0.023835 + 0.114832 * t.OUT_0  + -0.178850 * t.OUT_1  + -0.014690 * t.OUT_2  + -0.221984 * t.OUT_3 AS OUT_1,
    0.122204 + -0.098035 * t.OUT_0  + -0.078942 * t.OUT_1  + -0.196642 * t.OUT_2  + -0.166419 * t.OUT_3 AS OUT_2,
    0.203522 + -0.018427 * t.OUT_0  + 0.119638 * t.OUT_1  + 0.171744 * t.OUT_2  + -0.045122 * t.OUT_3 AS OUT_3,
    -0.107258 + 0.051864 * t.OUT_0  + 0.158982 * t.OUT_1  + 0.241425 * t.OUT_2  + -0.154432 * t.OUT_3 AS OUT_4,
    -0.004927 + -0.154461 * t.OUT_0  + 0.187904 * t.OUT_1  + 0.072425 * t.OUT_2  + 0.128226 * t.OUT_3 AS OUT_5,
    0.229068 + 0.060186 * t.OUT_0  + 0.169412 * t.OUT_1  + -0.001345 * t.OUT_2  + -0.021828 * t.OUT_3 AS OUT_6,
    0.207436 + 0.006441 * t.OUT_0  + 0.152787 * t.OUT_1  + 0.071522 * t.OUT_2  + -0.096500 * t.OUT_3 AS OUT_7,
    0.174915 + 0.196080 * t.OUT_0  + -0.104861 * t.OUT_1  + 0.011024 * t.OUT_2  + -0.067361 * t.OUT_3 AS OUT_8,
    -0.033902 + 0.054305 * t.OUT_0  + 0.045479 * t.OUT_1  + 0.092086 * t.OUT_2  + 0.124330 * t.OUT_3 AS OUT_9,
    -0.136295 + 0.193057 * t.OUT_0  + 0.042309 * t.OUT_1  + 0.042580 * t.OUT_2  + 0.156918 * t.OUT_3 AS OUT_10,
    -0.112228 + -0.035600 * t.OUT_0  + 0.149722 * t.OUT_1  + 0.165525 * t.OUT_2  + -0.075847 * t.OUT_3 AS OUT_11,
    0.070038 + 0.248025 * t.OUT_0  + 0.143947 * t.OUT_1  + 0.083392 * t.OUT_2  + 0.099075 * t.OUT_3 AS OUT_12,
    -0.204436 + -0.212391 * t.OUT_0  + -0.000589 * t.OUT_1  + -0.100990 * t.OUT_2  + -0.204682 * t.OUT_3 AS OUT_13,
    -0.092806 + -0.100623 * t.OUT_0  + 0.138138 * t.OUT_1  + -0.068665 * t.OUT_2  + 0.199310 * t.OUT_3 AS OUT_14,
    -0.192066 + 0.120537 * t.OUT_0  + 0.198167 * t.OUT_1  + -0.177255 * t.OUT_2  + -0.027816 * t.OUT_3 AS OUT_15,
    -0.041942 + 0.135492 * t.OUT_0  + 0.045941 * t.OUT_1  + -0.120070 * t.OUT_2  + 0.062497 * t.OUT_3 AS OUT_16,
    -0.075174 + -0.115070 * t.OUT_0  + -0.082576 * t.OUT_1  + -0.143667 * t.OUT_2  + -0.147349 * t.OUT_3 AS OUT_17,
    -0.013875 + -0.122237 * t.OUT_0  + -0.065666 * t.OUT_1  + 0.066427 * t.OUT_2  + -0.141136 * t.OUT_3 AS OUT_18,
    -0.040220 + -0.186389 * t.OUT_0  + -0.119020 * t.OUT_1  + -0.034734 * t.OUT_2  + 0.052454 * t.OUT_3 AS OUT_19,
    0.238903 + 0.099769 * t.OUT_0  + 0.134215 * t.OUT_1  + -0.122557 * t.OUT_2  + -0.098042 * t.OUT_3 AS OUT_20,
    0.157066 + -0.237124 * t.OUT_0  + 0.133635 * t.OUT_1  + -0.201623 * t.OUT_2  + 0.213375 * t.OUT_3 AS OUT_21,
    -0.100095 + -0.009213 * t.OUT_0  + -0.137596 * t.OUT_1  + 0.241856 * t.OUT_2  + -0.184629 * t.OUT_3 AS OUT_22,
    -0.023133 + -0.012348 * t.OUT_0  + 0.054194 * t.OUT_1  + -0.115894 * t.OUT_2  + -0.144179 * t.OUT_3 AS OUT_23,
    0.135882 + -0.047717 * t.OUT_0  + -0.153069 * t.OUT_1  + -0.057221 * t.OUT_2  + 0.105694 * t.OUT_3 AS OUT_24,
    -0.216829 + -0.218212 * t.OUT_0  + -0.000634 * t.OUT_1  + 0.083368 * t.OUT_2  + 0.016502 * t.OUT_3 AS OUT_25,
    -0.096705 + -0.092612 * t.OUT_0  + 0.075606 * t.OUT_1  + 0.140010 * t.OUT_2  + 0.189756 * t.OUT_3 AS OUT_26,
    0.021045 + 0.192485 * t.OUT_0  + -0.085295 * t.OUT_1  + 0.084094 * t.OUT_2  + 0.127845 * t.OUT_3 AS OUT_27,
    -0.119039 + -0.017654 * t.OUT_0  + 0.109744 * t.OUT_1  + -0.214760 * t.OUT_2  + -0.144595 * t.OUT_3 AS OUT_28,
    0.035723 + 0.035192 * t.OUT_0  + -0.193554 * t.OUT_1  + 0.212548 * t.OUT_2  + -0.131164 * t.OUT_3 AS OUT_29,
    -0.219782 + -0.215072 * t.OUT_0  + -0.215941 * t.OUT_1  + 0.212810 * t.OUT_2  + -0.199146 * t.OUT_3 AS OUT_30,
    -0.057683 + 0.014361 * t.OUT_0  + 0.162828 * t.OUT_1  + 0.202460 * t.OUT_2  + 0.082196 * t.OUT_3 AS OUT_31,
    -0.060723 + -0.064042 * t.OUT_0  + 0.222524 * t.OUT_1  + 0.024372 * t.OUT_2  + 0.071138 * t.OUT_3 AS OUT_32,
    0.108201 + 0.095666 * t.OUT_0  + -0.159418 * t.OUT_1  + 0.255552 * t.OUT_2  + 0.118889 * t.OUT_3 AS OUT_33,
    -0.018040 + -0.020054 * t.OUT_0  + -0.061936 * t.OUT_1  + 0.178512 * t.OUT_2  + -0.041260 * t.OUT_3 AS OUT_34,
    0.132840 + 0.087432 * t.OUT_0  + -0.208892 * t.OUT_1  + 0.093505 * t.OUT_2  + 0.045063 * t.OUT_3 AS OUT_35,
    -0.018475 + -0.159850 * t.OUT_0  + -0.183640 * t.OUT_1  + -0.081848 * t.OUT_2  + 0.226317 * t.OUT_3 AS OUT_36,
    -0.227652 + 0.202807 * t.OUT_0  + -0.182522 * t.OUT_1  + 0.196149 * t.OUT_2  + -0.193547 * t.OUT_3 AS OUT_37,
    0.189832 + -0.175863 * t.OUT_0  + -0.079753 * t.OUT_1  + -0.238487 * t.OUT_2  + -0.066630 * t.OUT_3 AS OUT_38,
    -0.221136 + 0.129082 * t.OUT_0  + -0.054998 * t.OUT_1  + -0.223075 * t.OUT_2  + -0.074223 * t.OUT_3 AS OUT_39,
    -0.009981 + -0.172538 * t.OUT_0  + -0.157202 * t.OUT_1  + -0.025159 * t.OUT_2  + 0.004695 * t.OUT_3 AS OUT_40,
    -0.021180 + 0.117906 * t.OUT_0  + -0.186689 * t.OUT_1  + -0.028190 * t.OUT_2  + -0.092886 * t.OUT_3 AS OUT_41,
    0.114513 + 0.083322 * t.OUT_0  + -0.187753 * t.OUT_1  + 0.120810 * t.OUT_2  + -0.047543 * t.OUT_3 AS OUT_42,
    -0.257245 + 0.204814 * t.OUT_0  + 0.031381 * t.OUT_1  + 0.197055 * t.OUT_2  + -0.070737 * t.OUT_3 AS OUT_43,
    -0.084426 + -0.150790 * t.OUT_0  + -0.157723 * t.OUT_1  + 0.043977 * t.OUT_2  + -0.050261 * t.OUT_3 AS OUT_44,
    0.196254 + -0.185116 * t.OUT_0  + -0.190227 * t.OUT_1  + -0.038635 * t.OUT_2  + 0.122060 * t.OUT_3 AS OUT_45,
    0.151100 + 0.088605 * t.OUT_0  + 0.048915 * t.OUT_1  + -0.141296 * t.OUT_2  + 0.045243 * t.OUT_3 AS OUT_46,
    -0.146707 + 0.055104 * t.OUT_0  + 0.051861 * t.OUT_1  + -0.171966 * t.OUT_2  + -0.142947 * t.OUT_3 AS OUT_47,
    0.169436 + 0.152255 * t.OUT_0  + -0.042134 * t.OUT_1  + 0.050250 * t.OUT_2  + -0.082012 * t.OUT_3 AS OUT_48,
    0.075756 + 0.212637 * t.OUT_0  + 0.089392 * t.OUT_1  + 0.064410 * t.OUT_2  + -0.013512 * t.OUT_3 AS OUT_49,
    0.221170 + 0.192797 * t.OUT_0  + 0.035072 * t.OUT_1  + -0.202936 * t.OUT_2  + 0.209706 * t.OUT_3 AS OUT_50,
    0.207382 + -0.156031 * t.OUT_0  + -0.158922 * t.OUT_1  + -0.028284 * t.OUT_2  + 0.024223 * t.OUT_3 AS OUT_51,
    -0.096790 + 0.150203 * t.OUT_0  + -0.041830 * t.OUT_1  + 0.168230 * t.OUT_2  + -0.171034 * t.OUT_3 AS OUT_52,
    0.174805 + 0.202872 * t.OUT_0  + 0.197452 * t.OUT_1  + -0.077289 * t.OUT_2  + -0.098880 * t.OUT_3 AS OUT_53,
    0.224350 + -0.113367 * t.OUT_0  + 0.271164 * t.OUT_1  + 0.025162 * t.OUT_2  + -0.171595 * t.OUT_3 AS OUT_54,
    0.218852 + 0.110077 * t.OUT_0  + -0.015455 * t.OUT_1  + -0.064401 * t.OUT_2  + 0.099328 * t.OUT_3 AS OUT_55,
    0.136913 + 0.050379 * t.OUT_0  + -0.224788 * t.OUT_1  + 0.063938 * t.OUT_2  + -0.135535 * t.OUT_3 AS OUT_56,
    0.035240 + 0.018012 * t.OUT_0  + -0.116709 * t.OUT_1  + -0.122389 * t.OUT_2  + -0.046736 * t.OUT_3 AS OUT_57,
    0.044808 + 0.040918 * t.OUT_0  + 0.107621 * t.OUT_1  + 0.007771 * t.OUT_2  + -0.176097 * t.OUT_3 AS OUT_58,
    -0.042437 + 0.128806 * t.OUT_0  + -0.199189 * t.OUT_1  + 0.147070 * t.OUT_2  + 0.018200 * t.OUT_3 AS OUT_59,
    -0.030121 + -0.205991 * t.OUT_0  + 0.082876 * t.OUT_1  + 0.073041 * t.OUT_2  + -0.176220 * t.OUT_3 AS OUT_60,
    -0.015053 + 0.004883 * t.OUT_0  + -0.152693 * t.OUT_1  + 0.129045 * t.OUT_2  + -0.105742 * t.OUT_3 AS OUT_61,
    0.004859 + 0.082228 * t.OUT_0  + 0.200114 * t.OUT_1  + 0.193325 * t.OUT_2  + 0.221716 * t.OUT_3 AS OUT_62,
    -0.081105 + 0.127810 * t.OUT_0  + 0.225012 * t.OUT_1  + 0.153369 * t.OUT_2  + -0.154512 * t.OUT_3 AS OUT_63,
    -0.151722 + -0.205019 * t.OUT_0  + -0.109984 * t.OUT_1  + 0.077483 * t.OUT_2  + 0.237101 * t.OUT_3 AS OUT_64,
    0.021344 + 0.155711 * t.OUT_0  + 0.114946 * t.OUT_1  + -0.169186 * t.OUT_2  + -0.121485 * t.OUT_3 AS OUT_65,
    0.231954 + -0.133716 * t.OUT_0  + -0.115576 * t.OUT_1  + -0.020091 * t.OUT_2  + 0.093519 * t.OUT_3 AS OUT_66,
    -0.068275 + -0.222118 * t.OUT_0  + 0.176415 * t.OUT_1  + -0.165604 * t.OUT_2  + -0.152247 * t.OUT_3 AS OUT_67,
    -0.124415 + 0.225577 * t.OUT_0  + -0.213526 * t.OUT_1  + 0.080960 * t.OUT_2  + 0.124233 * t.OUT_3 AS OUT_68,
    -0.174642 + 0.229801 * t.OUT_0  + 0.126845 * t.OUT_1  + 0.077480 * t.OUT_2  + -0.084997 * t.OUT_3 AS OUT_69,
    -0.081311 + -0.030202 * t.OUT_0  + 0.071511 * t.OUT_1  + 0.211987 * t.OUT_2  + -0.172130 * t.OUT_3 AS OUT_70,
    -0.116597 + -0.195333 * t.OUT_0  + -0.134079 * t.OUT_1  + 0.123263 * t.OUT_2  + -0.123349 * t.OUT_3 AS OUT_71,
    -0.038113 + -0.000128 * t.OUT_0  + 0.115810 * t.OUT_1  + 0.231898 * t.OUT_2  + -0.218401 * t.OUT_3 AS OUT_72,
    -0.061320 + 0.225980 * t.OUT_0  + 0.121855 * t.OUT_1  + -0.149412 * t.OUT_2  + 0.040918 * t.OUT_3 AS OUT_73,
    0.191070 + -0.173311 * t.OUT_0  + 0.006743 * t.OUT_1  + 0.052584 * t.OUT_2  + -0.224140 * t.OUT_3 AS OUT_74,
    -0.033812 + 0.075929 * t.OUT_0  + -0.135600 * t.OUT_1  + 0.169889 * t.OUT_2  + 0.236125 * t.OUT_3 AS OUT_75,
    0.055880 + 0.103357 * t.OUT_0  + 0.208695 * t.OUT_1  + 0.067843 * t.OUT_2  + -0.255333 * t.OUT_3 AS OUT_76,
    0.008176 + 0.131596 * t.OUT_0  + 0.197244 * t.OUT_1  + 0.211621 * t.OUT_2  + -0.010143 * t.OUT_3 AS OUT_77,
    -0.004216 + 0.200564 * t.OUT_0  + -0.124336 * t.OUT_1  + -0.097147 * t.OUT_2  + 0.223587 * t.OUT_3 AS OUT_78,
    0.034104 + -0.095091 * t.OUT_0  + 0.052347 * t.OUT_1  + 0.186469 * t.OUT_2  + 0.029045 * t.OUT_3 AS OUT_79,
    -0.091335 + 0.105444 * t.OUT_0  + 0.122518 * t.OUT_1  + 0.132624 * t.OUT_2  + -0.024650 * t.OUT_3 AS OUT_80,
    0.187112 + 0.165760 * t.OUT_0  + 0.008149 * t.OUT_1  + 0.263999 * t.OUT_2  + -0.057190 * t.OUT_3 AS OUT_81,
    0.245788 + 0.183971 * t.OUT_0  + -0.003084 * t.OUT_1  + 0.005073 * t.OUT_2  + 0.195949 * t.OUT_3 AS OUT_82,
    0.101492 + -0.020510 * t.OUT_0  + 0.239574 * t.OUT_1  + 0.066879 * t.OUT_2  + -0.146746 * t.OUT_3 AS OUT_83,
    0.041405 + -0.213241 * t.OUT_0  + 0.085086 * t.OUT_1  + 0.139230 * t.OUT_2  + -0.156101 * t.OUT_3 AS OUT_84,
    0.080463 + 0.129247 * t.OUT_0  + 0.123322 * t.OUT_1  + 0.097750 * t.OUT_2  + -0.125678 * t.OUT_3 AS OUT_85,
    0.001163 + 0.029734 * t.OUT_0  + -0.141960 * t.OUT_1  + 0.174109 * t.OUT_2  + 0.034786 * t.OUT_3 AS OUT_86,
    0.154070 + -0.045510 * t.OUT_0  + -0.032623 * t.OUT_1  + -0.234563 * t.OUT_2  + 0.170446 * t.OUT_3 AS OUT_87,
    0.094084 + -0.164626 * t.OUT_0  + 0.216727 * t.OUT_1  + 0.076783 * t.OUT_2  + -0.045922 * t.OUT_3 AS OUT_88,
    -0.033281 + -0.219609 * t.OUT_0  + 0.136124 * t.OUT_1  + 0.225136 * t.OUT_2  + 0.094886 * t.OUT_3 AS OUT_89,
    -0.054875 + -0.087854 * t.OUT_0  + -0.069635 * t.OUT_1  + 0.049404 * t.OUT_2  + 0.151620 * t.OUT_3 AS OUT_90,
    -0.225255 + 0.207075 * t.OUT_0  + -0.067218 * t.OUT_1  + 0.178503 * t.OUT_2  + 0.117252 * t.OUT_3 AS OUT_91,
    0.218774 + -0.008338 * t.OUT_0  + 0.153934 * t.OUT_1  + -0.102982 * t.OUT_2  + -0.179041 * t.OUT_3 AS OUT_92,
    -0.200400 + -0.048975 * t.OUT_0  + -0.124573 * t.OUT_1  + 0.079715 * t.OUT_2  + 0.098564 * t.OUT_3 AS OUT_93,
    -0.122221 + -0.055625 * t.OUT_0  + 0.031332 * t.OUT_1  + -0.169219 * t.OUT_2  + -0.152611 * t.OUT_3 AS OUT_94,
    0.208998 + -0.225684 * t.OUT_0  + 0.185432 * t.OUT_1  + 0.053024 * t.OUT_2  + 0.122192 * t.OUT_3 AS OUT_95,
    -0.156734 + 0.080030 * t.OUT_0  + -0.221392 * t.OUT_1  + -0.230247 * t.OUT_2  + -0.175211 * t.OUT_3 AS OUT_96,
    0.204777 + -0.083588 * t.OUT_0  + -0.142076 * t.OUT_1  + 0.123920 * t.OUT_2  + -0.069078 * t.OUT_3 AS OUT_97,
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
    0.165276 + 0.123765 * t.OUT_0  + 0.164547 * t.OUT_1  + -0.147232 * t.OUT_2  + -0.054020 * t.OUT_3  + -0.066740 * t.OUT_4  + -0.243253 * t.OUT_5  + 0.058961 * t.OUT_6  + 0.127878 * t.OUT_7  + 0.150778 * t.OUT_8  + 0.135905 * t.OUT_9  + -0.222883 * t.OUT_10  + -0.240627 * t.OUT_11  + 0.145223 * t.OUT_12  + 0.089560 * t.OUT_13  + 0.205095 * t.OUT_14  + 0.034194 * t.OUT_15  + -0.055278 * t.OUT_16  + -0.023104 * t.OUT_17  + -0.141248 * t.OUT_18  + -0.216601 * t.OUT_19  + 0.090081 * t.OUT_20  + -0.058436 * t.OUT_21  + -0.064111 * t.OUT_22  + -0.011595 * t.OUT_23  + -0.147600 * t.OUT_24  + -0.000088 * t.OUT_25  + -0.171441 * t.OUT_26  + 0.028378 * t.OUT_27  + 0.077292 * t.OUT_28  + -0.154965 * t.OUT_29  + -0.140442 * t.OUT_30  + -0.070036 * t.OUT_31  + -0.021791 * t.OUT_32  + -0.080916 * t.OUT_33  + -0.226227 * t.OUT_34  + -0.198843 * t.OUT_35  + 0.032638 * t.OUT_36  + 0.134770 * t.OUT_37  + 0.061958 * t.OUT_38  + 0.214694 * t.OUT_39  + -0.127733 * t.OUT_40  + 0.090228 * t.OUT_41  + 0.033248 * t.OUT_42  + -0.083430 * t.OUT_43  + 0.037135 * t.OUT_44  + -0.167643 * t.OUT_45  + -0.106619 * t.OUT_46  + -0.125625 * t.OUT_47  + 0.105877 * t.OUT_48  + 0.185277 * t.OUT_49  + -0.054361 * t.OUT_50  + -0.122756 * t.OUT_51  + -0.164619 * t.OUT_52  + -0.145584 * t.OUT_53  + 0.258582 * t.OUT_54  + 0.177427 * t.OUT_55  + 0.195381 * t.OUT_56  + -0.012243 * t.OUT_57  + -0.045741 * t.OUT_58  + 0.155118 * t.OUT_59  + 0.229489 * t.OUT_60  + 0.123060 * t.OUT_61  + -0.043373 * t.OUT_62  + -0.038154 * t.OUT_63  + 0.170070 * t.OUT_64  + 0.025773 * t.OUT_65  + -0.134599 * t.OUT_66  + -0.070992 * t.OUT_67  + -0.090791 * t.OUT_68  + -0.146385 * t.OUT_69  + 0.106198 * t.OUT_70  + -0.233335 * t.OUT_71  + -0.087274 * t.OUT_72  + 0.249688 * t.OUT_73  + -0.138795 * t.OUT_74  + -0.198716 * t.OUT_75  + 0.178977 * t.OUT_76  + 0.087848 * t.OUT_77  + -0.216243 * t.OUT_78  + -0.059484 * t.OUT_79  + -0.123697 * t.OUT_80  + -0.159725 * t.OUT_81  + -0.132422 * t.OUT_82  + 0.199399 * t.OUT_83  + -0.204005 * t.OUT_84  + 0.213864 * t.OUT_85  + -0.244003 * t.OUT_86  + -0.025500 * t.OUT_87  + 0.118527 * t.OUT_88  + 0.168879 * t.OUT_89  + 0.182126 * t.OUT_90  + 0.020899 * t.OUT_91  + 0.152121 * t.OUT_92  + -0.141780 * t.OUT_93  + -0.194919 * t.OUT_94  + 0.028897 * t.OUT_95  + -0.166456 * t.OUT_96  + -0.108439 * t.OUT_97  + -0.229138 * t.OUT_98  + 0.229560 * t.OUT_99 AS OUT_0,
    -0.099875 + 0.167181 * t.OUT_0  + -0.183658 * t.OUT_1  + -0.174194 * t.OUT_2  + 0.095794 * t.OUT_3  + 0.213313 * t.OUT_4  + -0.133922 * t.OUT_5  + -0.180323 * t.OUT_6  + -0.052211 * t.OUT_7  + -0.172090 * t.OUT_8  + 0.038020 * t.OUT_9  + -0.131021 * t.OUT_10  + -0.058937 * t.OUT_11  + 0.129350 * t.OUT_12  + 0.132537 * t.OUT_13  + -0.066713 * t.OUT_14  + 0.110146 * t.OUT_15  + 0.157319 * t.OUT_16  + -0.040567 * t.OUT_17  + 0.229940 * t.OUT_18  + -0.174870 * t.OUT_19  + -0.098935 * t.OUT_20  + 0.226774 * t.OUT_21  + -0.097957 * t.OUT_22  + 0.070809 * t.OUT_23  + 0.066783 * t.OUT_24  + 0.095540 * t.OUT_25  + 0.138573 * t.OUT_26  + -0.112455 * t.OUT_27  + 0.208076 * t.OUT_28  + 0.011285 * t.OUT_29  + 0.136262 * t.OUT_30  + 0.196492 * t.OUT_31  + 0.135983 * t.OUT_32  + 0.162923 * t.OUT_33  + 0.017809 * t.OUT_34  + -0.188132 * t.OUT_35  + -0.076406 * t.OUT_36  + 0.014821 * t.OUT_37  + 0.010282 * t.OUT_38  + -0.152006 * t.OUT_39  + -0.215319 * t.OUT_40  + 0.022277 * t.OUT_41  + 0.129844 * t.OUT_42  + -0.171617 * t.OUT_43  + 0.114812 * t.OUT_44  + 0.013143 * t.OUT_45  + 0.226878 * t.OUT_46  + 0.182060 * t.OUT_47  + -0.124826 * t.OUT_48  + 0.144460 * t.OUT_49  + 0.132303 * t.OUT_50  + 0.165788 * t.OUT_51  + 0.181065 * t.OUT_52  + 0.108311 * t.OUT_53  + 0.078063 * t.OUT_54  + 0.161086 * t.OUT_55  + 0.002263 * t.OUT_56  + -0.027236 * t.OUT_57  + 0.095369 * t.OUT_58  + -0.124195 * t.OUT_59  + -0.001439 * t.OUT_60  + -0.049756 * t.OUT_61  + -0.159808 * t.OUT_62  + -0.075103 * t.OUT_63  + -0.087578 * t.OUT_64  + -0.177098 * t.OUT_65  + 0.185941 * t.OUT_66  + -0.175433 * t.OUT_67  + -0.216355 * t.OUT_68  + 0.090865 * t.OUT_69  + 0.086403 * t.OUT_70  + -0.228597 * t.OUT_71  + 0.041189 * t.OUT_72  + -0.032936 * t.OUT_73  + -0.011309 * t.OUT_74  + -0.169320 * t.OUT_75  + -0.190892 * t.OUT_76  + -0.231310 * t.OUT_77  + -0.174945 * t.OUT_78  + -0.023670 * t.OUT_79  + 0.118656 * t.OUT_80  + -0.105210 * t.OUT_81  + 0.059382 * t.OUT_82  + 0.046817 * t.OUT_83  + -0.231565 * t.OUT_84  + 0.221574 * t.OUT_85  + -0.055845 * t.OUT_86  + 0.065094 * t.OUT_87  + 0.161238 * t.OUT_88  + 0.018423 * t.OUT_89  + -0.158897 * t.OUT_90  + -0.072550 * t.OUT_91  + -0.150497 * t.OUT_92  + -0.064583 * t.OUT_93  + -0.222057 * t.OUT_94  + -0.125142 * t.OUT_95  + -0.048821 * t.OUT_96  + -0.251822 * t.OUT_97  + 0.237815 * t.OUT_98  + 0.222724 * t.OUT_99 AS OUT_1,
    -0.129929 + -0.192407 * t.OUT_0  + 0.216505 * t.OUT_1  + -0.143742 * t.OUT_2  + 0.158962 * t.OUT_3  + -0.080051 * t.OUT_4  + 0.016810 * t.OUT_5  + 0.104104 * t.OUT_6  + -0.126298 * t.OUT_7  + 0.189596 * t.OUT_8  + -0.171496 * t.OUT_9  + 0.047910 * t.OUT_10  + -0.070304 * t.OUT_11  + -0.179426 * t.OUT_12  + 0.045873 * t.OUT_13  + -0.169187 * t.OUT_14  + -0.206960 * t.OUT_15  + -0.191246 * t.OUT_16  + 0.109409 * t.OUT_17  + 0.011152 * t.OUT_18  + 0.156918 * t.OUT_19  + -0.036972 * t.OUT_20  + 0.210364 * t.OUT_21  + 0.186216 * t.OUT_22  + 0.017507 * t.OUT_23  + 0.104495 * t.OUT_24  + -0.005308 * t.OUT_25  + -0.095934 * t.OUT_26  + -0.085334 * t.OUT_27  + -0.214625 * t.OUT_28  + -0.068752 * t.OUT_29  + -0.172414 * t.OUT_30  + 0.259633 * t.OUT_31  + -0.109196 * t.OUT_32  + -0.052982 * t.OUT_33  + 0.143844 * t.OUT_34  + 0.058414 * t.OUT_35  + 0.071713 * t.OUT_36  + 0.130923 * t.OUT_37  + -0.048880 * t.OUT_38  + -0.157632 * t.OUT_39  + -0.184587 * t.OUT_40  + -0.073986 * t.OUT_41  + 0.088686 * t.OUT_42  + 0.030576 * t.OUT_43  + -0.197155 * t.OUT_44  + -0.060541 * t.OUT_45  + -0.162123 * t.OUT_46  + 0.181932 * t.OUT_47  + 0.154683 * t.OUT_48  + -0.067856 * t.OUT_49  + -0.182376 * t.OUT_50  + 0.126837 * t.OUT_51  + -0.109076 * t.OUT_52  + -0.150275 * t.OUT_53  + -0.064321 * t.OUT_54  + 0.087259 * t.OUT_55  + -0.119795 * t.OUT_56  + 0.134695 * t.OUT_57  + -0.165248 * t.OUT_58  + 0.165523 * t.OUT_59  + -0.240071 * t.OUT_60  + -0.159314 * t.OUT_61  + 0.230636 * t.OUT_62  + -0.044794 * t.OUT_63  + 0.044365 * t.OUT_64  + 0.113219 * t.OUT_65  + -0.181720 * t.OUT_66  + -0.027029 * t.OUT_67  + 0.022075 * t.OUT_68  + 0.144301 * t.OUT_69  + 0.002815 * t.OUT_70  + 0.203508 * t.OUT_71  + -0.117752 * t.OUT_72  + 0.017046 * t.OUT_73  + -0.008695 * t.OUT_74  + -0.049220 * t.OUT_75  + -0.047609 * t.OUT_76  + 0.242392 * t.OUT_77  + 0.002406 * t.OUT_78  + 0.212177 * t.OUT_79  + 0.001503 * t.OUT_80  + -0.083221 * t.OUT_81  + -0.163356 * t.OUT_82  + -0.084326 * t.OUT_83  + -0.076778 * t.OUT_84  + 0.058169 * t.OUT_85  + -0.103500 * t.OUT_86  + -0.047723 * t.OUT_87  + -0.085264 * t.OUT_88  + 0.245829 * t.OUT_89  + 0.116898 * t.OUT_90  + 0.059218 * t.OUT_91  + 0.212904 * t.OUT_92  + -0.169690 * t.OUT_93  + 0.009980 * t.OUT_94  + -0.026984 * t.OUT_95  + 0.121959 * t.OUT_96  + -0.195924 * t.OUT_97  + 0.205077 * t.OUT_98  + 0.104381 * t.OUT_99 AS OUT_2
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