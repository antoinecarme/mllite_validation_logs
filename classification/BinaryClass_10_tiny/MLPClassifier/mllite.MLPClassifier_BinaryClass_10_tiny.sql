WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
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
    X_9 AS OUT_9
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.192577 + -0.050097 * t.OUT_0  + 0.069521 * t.OUT_1  + -0.063912 * t.OUT_2  + 0.085131 * t.OUT_3  + -0.086014 * t.OUT_4  + 0.116482 * t.OUT_5  + 0.172276 * t.OUT_6  + -0.141629 * t.OUT_7  + 0.182449 * t.OUT_8  + 0.135690 * t.OUT_9 AS OUT_0,
    0.119602 + 0.143278 * t.OUT_0  + -0.190387 * t.OUT_1  + -0.026995 * t.OUT_2  + -0.180281 * t.OUT_3  + 0.048832 * t.OUT_4  + 0.169295 * t.OUT_5  + -0.101283 * t.OUT_6  + -0.040242 * t.OUT_7  + -0.128530 * t.OUT_8  + 0.132193 * t.OUT_9 AS OUT_1,
    0.226188 + -0.065811 * t.OUT_0  + -0.108635 * t.OUT_1  + -0.222170 * t.OUT_2  + -0.130813 * t.OUT_3  + 0.109093 * t.OUT_4  + -0.183392 * t.OUT_5  + -0.216223 * t.OUT_6  + -0.144024 * t.OUT_7  + -0.134320 * t.OUT_8  + -0.154986 * t.OUT_9 AS OUT_2,
    0.076649 + -0.048909 * t.OUT_0  + 0.104200 * t.OUT_1  + 0.172819 * t.OUT_2  + -0.100531 * t.OUT_3  + 0.234886 * t.OUT_4  + 0.163867 * t.OUT_5  + 0.063233 * t.OUT_6  + -0.060233 * t.OUT_7  + -0.077806 * t.OUT_8  + -0.078220 * t.OUT_9 AS OUT_3,
    0.143689 + 0.071699 * t.OUT_0  + 0.181990 * t.OUT_1  + 0.192838 * t.OUT_2  + -0.135596 * t.OUT_3  + -0.139453 * t.OUT_4  + -0.208586 * t.OUT_5  + 0.079435 * t.OUT_6  + -0.095662 * t.OUT_7  + 0.193313 * t.OUT_8  + -0.138244 * t.OUT_9 AS OUT_4,
    0.062199 + -0.134590 * t.OUT_0  + 0.228940 * t.OUT_1  + 0.011055 * t.OUT_2  + 0.120988 * t.OUT_3  + 0.029282 * t.OUT_4  + 0.197141 * t.OUT_5  + -0.196914 * t.OUT_6  + -0.257639 * t.OUT_7  + -0.170883 * t.OUT_8  + -0.198162 * t.OUT_9 AS OUT_5,
    -0.094200 + 0.033493 * t.OUT_0  + 0.136723 * t.OUT_1  + -0.016636 * t.OUT_2  + 0.015695 * t.OUT_3  + 0.264180 * t.OUT_4  + -0.173313 * t.OUT_5  + -0.231161 * t.OUT_6  + 0.028593 * t.OUT_7  + -0.178292 * t.OUT_8  + 0.170773 * t.OUT_9 AS OUT_6,
    0.127990 + -0.022261 * t.OUT_0  + 0.163655 * t.OUT_1  + 0.119400 * t.OUT_2  + -0.099925 * t.OUT_3  + 0.160505 * t.OUT_4  + -0.138856 * t.OUT_5  + 0.058561 * t.OUT_6  + -0.170503 * t.OUT_7  + -0.007536 * t.OUT_8  + 0.138917 * t.OUT_9 AS OUT_7,
    -0.040507 + 0.165560 * t.OUT_0  + -0.132411 * t.OUT_1  + -0.005718 * t.OUT_2  + -0.022631 * t.OUT_3  + 0.209916 * t.OUT_4  + -0.169574 * t.OUT_5  + 0.001542 * t.OUT_6  + 0.052379 * t.OUT_7  + -0.083762 * t.OUT_8  + -0.061594 * t.OUT_9 AS OUT_8,
    0.074117 + 0.020540 * t.OUT_0  + 0.006486 * t.OUT_1  + 0.143079 * t.OUT_2  + 0.177837 * t.OUT_3  + -0.075567 * t.OUT_4  + -0.013868 * t.OUT_5  + -0.043359 * t.OUT_6  + 0.185483 * t.OUT_7  + 0.137006 * t.OUT_8  + 0.120487 * t.OUT_9 AS OUT_9,
    -0.127235 + 0.164861 * t.OUT_0  + 0.065246 * t.OUT_1  + 0.017044 * t.OUT_2  + 0.126146 * t.OUT_3  + -0.111194 * t.OUT_4  + 0.084523 * t.OUT_5  + 0.069393 * t.OUT_6  + 0.122799 * t.OUT_7  + -0.174903 * t.OUT_8  + 0.085913 * t.OUT_9 AS OUT_10,
    0.259266 + -0.066371 * t.OUT_0  + 0.129926 * t.OUT_1  + 0.166968 * t.OUT_2  + -0.121413 * t.OUT_3  + -0.134815 * t.OUT_4  + 0.178427 * t.OUT_5  + 0.178281 * t.OUT_6  + 0.033902 * t.OUT_7  + -0.091330 * t.OUT_8  + -0.096899 * t.OUT_9 AS OUT_11,
    0.008037 + 0.253184 * t.OUT_0  + 0.082576 * t.OUT_1  + 0.080606 * t.OUT_2  + 0.153414 * t.OUT_3  + 0.076317 * t.OUT_4  + -0.084225 * t.OUT_5  + -0.029708 * t.OUT_6  + -0.043336 * t.OUT_7  + -0.139472 * t.OUT_8  + 0.049912 * t.OUT_9 AS OUT_12,
    -0.191408 + -0.186278 * t.OUT_0  + 0.019983 * t.OUT_1  + -0.117927 * t.OUT_2  + -0.179571 * t.OUT_3  + -0.178476 * t.OUT_4  + 0.177613 * t.OUT_5  + 0.083740 * t.OUT_6  + -0.207172 * t.OUT_7  + -0.117200 * t.OUT_8  + -0.143084 * t.OUT_9 AS OUT_13,
    -0.199623 + -0.124504 * t.OUT_0  + 0.162498 * t.OUT_1  + -0.036512 * t.OUT_2  + 0.166439 * t.OUT_3  + -0.074807 * t.OUT_4  + -0.058381 * t.OUT_5  + 0.089946 * t.OUT_6  + -0.249588 * t.OUT_7  + 0.216094 * t.OUT_8  + 0.026949 * t.OUT_9 AS OUT_14,
    0.165469 + 0.062702 * t.OUT_0  + 0.188948 * t.OUT_1  + -0.174817 * t.OUT_2  + -0.039125 * t.OUT_3  + -0.241411 * t.OUT_4  + -0.180498 * t.OUT_5  + 0.035179 * t.OUT_6  + 0.224596 * t.OUT_7  + -0.005838 * t.OUT_8  + 0.192963 * t.OUT_9 AS OUT_15,
    -0.040755 + 0.091240 * t.OUT_0  + 0.064367 * t.OUT_1  + -0.096915 * t.OUT_2  + 0.028028 * t.OUT_3  + -0.066229 * t.OUT_4  + -0.077949 * t.OUT_5  + -0.018239 * t.OUT_6  + -0.087299 * t.OUT_7  + 0.121573 * t.OUT_8  + -0.086898 * t.OUT_9 AS OUT_16,
    -0.241570 + -0.082710 * t.OUT_0  + -0.051278 * t.OUT_1  + -0.137039 * t.OUT_2  + -0.119986 * t.OUT_3  + -0.043726 * t.OUT_4  + -0.044364 * t.OUT_5  + 0.184023 * t.OUT_6  + 0.046457 * t.OUT_7  + -0.136602 * t.OUT_8  + 0.193114 * t.OUT_9 AS OUT_17,
    -0.204475 + -0.098433 * t.OUT_0  + -0.089571 * t.OUT_1  + 0.046653 * t.OUT_2  + -0.116458 * t.OUT_3  + 0.008493 * t.OUT_4  + 0.029062 * t.OUT_5  + -0.166956 * t.OUT_6  + -0.106426 * t.OUT_7  + -0.089377 * t.OUT_8  + 0.142006 * t.OUT_9 AS OUT_18,
    -0.069642 + -0.150145 * t.OUT_0  + -0.148238 * t.OUT_1  + -0.063984 * t.OUT_2  + 0.082590 * t.OUT_3  + -0.007413 * t.OUT_4  + -0.210127 * t.OUT_5  + -0.183988 * t.OUT_6  + 0.198501 * t.OUT_7  + -0.119852 * t.OUT_8  + 0.103497 * t.OUT_9 AS OUT_19,
    0.142852 + 0.130468 * t.OUT_0  + 0.131744 * t.OUT_1  + -0.125149 * t.OUT_2  + -0.041963 * t.OUT_3  + 0.210553 * t.OUT_4  + 0.096798 * t.OUT_5  + -0.149857 * t.OUT_6  + -0.059920 * t.OUT_7  + 0.130195 * t.OUT_8  + -0.172268 * t.OUT_9 AS OUT_20,
    0.055034 + -0.201172 * t.OUT_0  + 0.115488 * t.OUT_1  + -0.226967 * t.OUT_2  + 0.233587 * t.OUT_3  + 0.179840 * t.OUT_4  + 0.094017 * t.OUT_5  + -0.238122 * t.OUT_6  + 0.058454 * t.OUT_7  + 0.111717 * t.OUT_8  + -0.018353 * t.OUT_9 AS OUT_21,
    0.078211 + -0.064498 * t.OUT_0  + -0.130345 * t.OUT_1  + 0.235589 * t.OUT_2  + -0.240146 * t.OUT_3  + -0.146893 * t.OUT_4  + -0.027500 * t.OUT_5  + -0.148805 * t.OUT_6  + -0.162882 * t.OUT_7  + -0.181028 * t.OUT_8  + 0.090270 * t.OUT_9 AS OUT_22,
    -0.010254 + -0.019391 * t.OUT_0  + 0.070524 * t.OUT_1  + -0.061768 * t.OUT_2  + -0.146867 * t.OUT_3  + 0.023982 * t.OUT_4  + -0.077476 * t.OUT_5  + 0.128801 * t.OUT_6  + 0.002253 * t.OUT_7  + -0.021256 * t.OUT_8  + -0.243773 * t.OUT_9 AS OUT_23,
    0.209903 + -0.018523 * t.OUT_0  + -0.167771 * t.OUT_1  + -0.080665 * t.OUT_2  + 0.129726 * t.OUT_3  + 0.119147 * t.OUT_4  + 0.125367 * t.OUT_5  + -0.018819 * t.OUT_6  + -0.035416 * t.OUT_7  + -0.241133 * t.OUT_8  + 0.219641 * t.OUT_9 AS OUT_24,
    0.017224 + -0.246945 * t.OUT_0  + 0.033222 * t.OUT_1  + 0.116041 * t.OUT_2  + -0.017849 * t.OUT_3  + -0.244482 * t.OUT_4  + -0.141892 * t.OUT_5  + -0.039995 * t.OUT_6  + -0.134659 * t.OUT_7  + 0.220977 * t.OUT_8  + -0.107943 * t.OUT_9 AS OUT_25,
    -0.089594 + -0.093509 * t.OUT_0  + 0.043567 * t.OUT_1  + 0.084470 * t.OUT_2  + 0.180558 * t.OUT_3  + -0.091140 * t.OUT_4  + 0.167888 * t.OUT_5  + 0.038130 * t.OUT_6  + -0.200774 * t.OUT_7  + -0.000318 * t.OUT_8  + 0.125448 * t.OUT_9 AS OUT_26,
    -0.040030 + 0.219077 * t.OUT_0  + -0.100579 * t.OUT_1  + 0.073609 * t.OUT_2  + 0.178569 * t.OUT_3  + -0.010523 * t.OUT_4  + 0.120389 * t.OUT_5  + 0.071007 * t.OUT_6  + -0.102905 * t.OUT_7  + -0.038952 * t.OUT_8  + -0.199953 * t.OUT_9 AS OUT_27,
    -0.087622 + -0.049399 * t.OUT_0  + 0.072081 * t.OUT_1  + -0.176059 * t.OUT_2  + -0.115528 * t.OUT_3  + -0.142860 * t.OUT_4  + 0.055609 * t.OUT_5  + 0.087104 * t.OUT_6  + 0.195655 * t.OUT_7  + 0.176970 * t.OUT_8  + 0.110015 * t.OUT_9 AS OUT_28,
    -0.224815 + 0.032085 * t.OUT_0  + -0.252524 * t.OUT_1  + 0.144895 * t.OUT_2  + -0.129109 * t.OUT_3  + 0.011860 * t.OUT_4  + -0.219777 * t.OUT_5  + -0.099275 * t.OUT_6  + -0.165013 * t.OUT_7  + 0.090015 * t.OUT_8  + 0.197046 * t.OUT_9 AS OUT_29,
    0.215110 + -0.180081 * t.OUT_0  + -0.240846 * t.OUT_1  + 0.177012 * t.OUT_2  + -0.165641 * t.OUT_3  + -0.184604 * t.OUT_4  + -0.237439 * t.OUT_5  + -0.206397 * t.OUT_6  + -0.002979 * t.OUT_7  + 0.008302 * t.OUT_8  + 0.056298 * t.OUT_9 AS OUT_30,
    0.196670 + -0.019243 * t.OUT_0  + 0.142723 * t.OUT_1  + 0.203614 * t.OUT_2  + 0.044143 * t.OUT_3  + -0.051892 * t.OUT_4  + -0.104754 * t.OUT_5  + 0.045686 * t.OUT_6  + 0.119810 * t.OUT_7  + 0.186741 * t.OUT_8  + -0.061157 * t.OUT_9 AS OUT_31,
    0.127877 + -0.042683 * t.OUT_0  + 0.235134 * t.OUT_1  + -0.012007 * t.OUT_2  + 0.089294 * t.OUT_3  + -0.088652 * t.OUT_4  + 0.015862 * t.OUT_5  + 0.010774 * t.OUT_6  + -0.260464 * t.OUT_7  + 0.163080 * t.OUT_8  + 0.073319 * t.OUT_9 AS OUT_32,
    -0.041937 + 0.052550 * t.OUT_0  + -0.189276 * t.OUT_1  + 0.204426 * t.OUT_2  + 0.132210 * t.OUT_3  + 0.093315 * t.OUT_4  + -0.252388 * t.OUT_5  + 0.082148 * t.OUT_6  + 0.202977 * t.OUT_7  + -0.207599 * t.OUT_8  + 0.113562 * t.OUT_9 AS OUT_33,
    0.168161 + -0.019983 * t.OUT_0  + -0.119331 * t.OUT_1  + 0.114903 * t.OUT_2  + -0.038914 * t.OUT_3  + -0.022207 * t.OUT_4  + -0.094867 * t.OUT_5  + -0.221402 * t.OUT_6  + -0.174134 * t.OUT_7  + -0.079782 * t.OUT_8  + -0.107679 * t.OUT_9 AS OUT_34,
    0.015656 + 0.127648 * t.OUT_0  + -0.210016 * t.OUT_1  + 0.032349 * t.OUT_2  + 0.046395 * t.OUT_3  + 0.136942 * t.OUT_4  + -0.113690 * t.OUT_5  + -0.193775 * t.OUT_6  + -0.201804 * t.OUT_7  + 0.055781 * t.OUT_8  + 0.095063 * t.OUT_9 AS OUT_35,
    0.168773 + -0.189885 * t.OUT_0  + -0.153542 * t.OUT_1  + -0.045685 * t.OUT_2  + 0.186016 * t.OUT_3  + -0.053656 * t.OUT_4  + 0.181382 * t.OUT_5  + 0.046774 * t.OUT_6  + 0.039075 * t.OUT_7  + 0.017856 * t.OUT_8  + -0.010515 * t.OUT_9 AS OUT_36,
    -0.007594 + 0.171542 * t.OUT_0  + -0.173112 * t.OUT_1  + 0.240480 * t.OUT_2  + -0.204396 * t.OUT_3  + -0.183434 * t.OUT_4  + 0.150605 * t.OUT_5  + -0.025065 * t.OUT_6  + 0.007692 * t.OUT_7  + 0.207784 * t.OUT_8  + -0.253256 * t.OUT_9 AS OUT_37,
    0.163748 + -0.140323 * t.OUT_0  + -0.109991 * t.OUT_1  + -0.262512 * t.OUT_2  + -0.033866 * t.OUT_3  + 0.211359 * t.OUT_4  + -0.206605 * t.OUT_5  + -0.165566 * t.OUT_6  + -0.068214 * t.OUT_7  + -0.111421 * t.OUT_8  + 0.054251 * t.OUT_9 AS OUT_38,
    -0.082894 + 0.153571 * t.OUT_0  + -0.032602 * t.OUT_1  + -0.241052 * t.OUT_2  + -0.098079 * t.OUT_3  + -0.199240 * t.OUT_4  + 0.062599 * t.OUT_5  + 0.208121 * t.OUT_6  + 0.145923 * t.OUT_7  + -0.151632 * t.OUT_8  + -0.027569 * t.OUT_9 AS OUT_39,
    0.055746 + -0.139261 * t.OUT_0  + -0.187129 * t.OUT_1  + -0.052770 * t.OUT_2  + 0.031893 * t.OUT_3  + 0.021047 * t.OUT_4  + 0.099753 * t.OUT_5  + -0.156348 * t.OUT_6  + -0.146402 * t.OUT_7  + 0.098107 * t.OUT_8  + 0.123627 * t.OUT_9 AS OUT_40,
    0.090124 + 0.143572 * t.OUT_0  + -0.200679 * t.OUT_1  + -0.043072 * t.OUT_2  + -0.043589 * t.OUT_3  + -0.038725 * t.OUT_4  + 0.014175 * t.OUT_5  + -0.178480 * t.OUT_6  + 0.076852 * t.OUT_7  + -0.149183 * t.OUT_8  + -0.193761 * t.OUT_9 AS OUT_41,
    -0.072539 + 0.075910 * t.OUT_0  + -0.187537 * t.OUT_1  + 0.063097 * t.OUT_2  + -0.051820 * t.OUT_3  + 0.092607 * t.OUT_4  + 0.171566 * t.OUT_5  + 0.178849 * t.OUT_6  + 0.028043 * t.OUT_7  + 0.097175 * t.OUT_8  + -0.078519 * t.OUT_9 AS OUT_42,
    0.216715 + 0.183432 * t.OUT_0  + 0.061603 * t.OUT_1  + 0.221410 * t.OUT_2  + -0.108344 * t.OUT_3  + -0.201340 * t.OUT_4  + -0.035254 * t.OUT_5  + 0.229349 * t.OUT_6  + -0.112376 * t.OUT_7  + 0.199075 * t.OUT_8  + -0.215490 * t.OUT_9 AS OUT_43,
    -0.177934 + -0.124038 * t.OUT_0  + -0.177075 * t.OUT_1  + 0.014733 * t.OUT_2  + -0.019419 * t.OUT_3  + -0.074015 * t.OUT_4  + -0.190521 * t.OUT_5  + 0.080400 * t.OUT_6  + -0.092803 * t.OUT_7  + 0.186618 * t.OUT_8  + 0.042912 * t.OUT_9 AS OUT_44,
    -0.029495 + -0.148467 * t.OUT_0  + -0.213260 * t.OUT_1  + -0.060356 * t.OUT_2  + 0.151023 * t.OUT_3  + 0.224517 * t.OUT_4  + -0.028344 * t.OUT_5  + -0.156804 * t.OUT_6  + -0.118441 * t.OUT_7  + -0.008958 * t.OUT_8  + 0.071528 * t.OUT_9 AS OUT_45,
    0.204041 + 0.105829 * t.OUT_0  + 0.052467 * t.OUT_1  + -0.179721 * t.OUT_2  + 0.061107 * t.OUT_3  + 0.113996 * t.OUT_4  + 0.110069 * t.OUT_5  + 0.129419 * t.OUT_6  + -0.150389 * t.OUT_7  + -0.119871 * t.OUT_8  + -0.233335 * t.OUT_9 AS OUT_46,
    -0.058976 + 0.112831 * t.OUT_0  + 0.087651 * t.OUT_1  + -0.167970 * t.OUT_2  + -0.087115 * t.OUT_3  + -0.124040 * t.OUT_4  + -0.197941 * t.OUT_5  + 0.153853 * t.OUT_6  + 0.034938 * t.OUT_7  + 0.213377 * t.OUT_8  + 0.183840 * t.OUT_9 AS OUT_47,
    0.173351 + 0.127564 * t.OUT_0  + -0.041165 * t.OUT_1  + 0.089531 * t.OUT_2  + -0.102613 * t.OUT_3  + 0.195810 * t.OUT_4  + -0.048360 * t.OUT_5  + 0.160875 * t.OUT_6  + -0.130517 * t.OUT_7  + -0.068496 * t.OUT_8  + -0.143217 * t.OUT_9 AS OUT_48,
    0.022259 + 0.188063 * t.OUT_0  + 0.042848 * t.OUT_1  + 0.115008 * t.OUT_2  + 0.045303 * t.OUT_3  + 0.076547 * t.OUT_4  + 0.184931 * t.OUT_5  + -0.033792 * t.OUT_6  + 0.210139 * t.OUT_7  + 0.000024 * t.OUT_8  + 0.136924 * t.OUT_9 AS OUT_49,
    0.259019 + 0.170613 * t.OUT_0  + -0.004582 * t.OUT_1  + -0.238334 * t.OUT_2  + 0.233680 * t.OUT_3  + 0.175210 * t.OUT_4  + -0.188577 * t.OUT_5  + -0.100974 * t.OUT_6  + 0.011015 * t.OUT_7  + -0.001294 * t.OUT_8  + -0.020474 * t.OUT_9 AS OUT_50,
    -0.156903 + -0.123981 * t.OUT_0  + -0.142161 * t.OUT_1  + -0.053026 * t.OUT_2  + 0.056225 * t.OUT_3  + 0.235715 * t.OUT_4  + -0.051739 * t.OUT_5  + 0.100424 * t.OUT_6  + -0.080146 * t.OUT_7  + -0.183843 * t.OUT_8  + 0.111580 * t.OUT_9 AS OUT_51,
    -0.154347 + 0.113539 * t.OUT_0  + -0.007665 * t.OUT_1  + 0.176477 * t.OUT_2  + -0.209275 * t.OUT_3  + -0.078410 * t.OUT_4  + -0.009982 * t.OUT_5  + -0.118545 * t.OUT_6  + -0.226916 * t.OUT_7  + 0.110822 * t.OUT_8  + 0.218123 * t.OUT_9 AS OUT_52,
    -0.001671 + 0.221166 * t.OUT_0  + 0.166414 * t.OUT_1  + -0.122140 * t.OUT_2  + -0.082477 * t.OUT_3  + 0.194562 * t.OUT_4  + 0.075170 * t.OUT_5  + -0.149704 * t.OUT_6  + -0.196591 * t.OUT_7  + 0.128311 * t.OUT_8  + -0.130018 * t.OUT_9 AS OUT_53,
    -0.008563 + -0.169681 * t.OUT_0  + 0.264075 * t.OUT_1  + 0.018457 * t.OUT_2  + -0.223413 * t.OUT_3  + 0.157365 * t.OUT_4  + -0.107654 * t.OUT_5  + 0.188524 * t.OUT_6  + -0.104580 * t.OUT_7  + -0.133905 * t.OUT_8  + 0.004355 * t.OUT_9 AS OUT_54,
    -0.038359 + 0.125326 * t.OUT_0  + -0.017361 * t.OUT_1  + -0.059888 * t.OUT_2  + 0.100079 * t.OUT_3  + 0.184549 * t.OUT_4  + 0.201300 * t.OUT_5  + 0.101936 * t.OUT_6  + 0.189176 * t.OUT_7  + 0.160723 * t.OUT_8  + 0.188250 * t.OUT_9 AS OUT_55,
    0.228978 + 0.085158 * t.OUT_0  + -0.190699 * t.OUT_1  + 0.067491 * t.OUT_2  + -0.094248 * t.OUT_3  + 0.144786 * t.OUT_4  + -0.004642 * t.OUT_5  + -0.162280 * t.OUT_6  + 0.191637 * t.OUT_7  + -0.000962 * t.OUT_8  + -0.047003 * t.OUT_9 AS OUT_56,
    -0.025564 + 0.046962 * t.OUT_0  + -0.145655 * t.OUT_1  + -0.138484 * t.OUT_2  + -0.012750 * t.OUT_3  + 0.053832 * t.OUT_4  + -0.235869 * t.OUT_5  + 0.141625 * t.OUT_6  + 0.054322 * t.OUT_7  + 0.081098 * t.OUT_8  + 0.201523 * t.OUT_9 AS OUT_57,
    0.051523 + 0.000269 * t.OUT_0  + 0.126010 * t.OUT_1  + 0.029108 * t.OUT_2  + -0.201422 * t.OUT_3  + 0.010152 * t.OUT_4  + -0.140832 * t.OUT_5  + -0.087883 * t.OUT_6  + -0.232606 * t.OUT_7  + 0.143579 * t.OUT_8  + -0.145419 * t.OUT_9 AS OUT_58,
    0.145936 + 0.137960 * t.OUT_0  + -0.227775 * t.OUT_1  + 0.129711 * t.OUT_2  + 0.047433 * t.OUT_3  + -0.050563 * t.OUT_4  + 0.122653 * t.OUT_5  + -0.185382 * t.OUT_6  + -0.105305 * t.OUT_7  + -0.231373 * t.OUT_8  + -0.007453 * t.OUT_9 AS OUT_59,
    0.086580 + -0.173500 * t.OUT_0  + 0.061836 * t.OUT_1  + 0.047676 * t.OUT_2  + -0.144597 * t.OUT_3  + 0.002043 * t.OUT_4  + 0.037336 * t.OUT_5  + 0.079402 * t.OUT_6  + -0.147221 * t.OUT_7  + -0.222062 * t.OUT_8  + -0.161915 * t.OUT_9 AS OUT_60,
    0.063678 + -0.002787 * t.OUT_0  + -0.089479 * t.OUT_1  + 0.182913 * t.OUT_2  + -0.109575 * t.OUT_3  + 0.010104 * t.OUT_4  + -0.060943 * t.OUT_5  + -0.084578 * t.OUT_6  + -0.058906 * t.OUT_7  + 0.240087 * t.OUT_8  + 0.104739 * t.OUT_9 AS OUT_61,
    -0.023775 + 0.099390 * t.OUT_0  + 0.241228 * t.OUT_1  + 0.137918 * t.OUT_2  + 0.217319 * t.OUT_3  + 0.000698 * t.OUT_4  + -0.033155 * t.OUT_5  + 0.190678 * t.OUT_6  + 0.036386 * t.OUT_7  + -0.105321 * t.OUT_8  + 0.111053 * t.OUT_9 AS OUT_62,
    0.170654 + 0.106315 * t.OUT_0  + 0.194391 * t.OUT_1  + 0.191796 * t.OUT_2  + -0.168512 * t.OUT_3  + -0.039464 * t.OUT_4  + -0.026583 * t.OUT_5  + 0.138070 * t.OUT_6  + -0.024639 * t.OUT_7  + -0.107000 * t.OUT_8  + -0.062068 * t.OUT_9 AS OUT_63,
    -0.182353 + -0.173673 * t.OUT_0  + -0.082874 * t.OUT_1  + 0.048810 * t.OUT_2  + 0.250242 * t.OUT_3  + -0.170572 * t.OUT_4  + 0.192109 * t.OUT_5  + -0.056937 * t.OUT_6  + 0.054580 * t.OUT_7  + -0.142277 * t.OUT_8  + -0.209102 * t.OUT_9 AS OUT_64,
    0.110441 + 0.181475 * t.OUT_0  + 0.148222 * t.OUT_1  + -0.186855 * t.OUT_2  + -0.117736 * t.OUT_3  + 0.006277 * t.OUT_4  + 0.178776 * t.OUT_5  + 0.148900 * t.OUT_6  + 0.155853 * t.OUT_7  + -0.247028 * t.OUT_8  + -0.140851 * t.OUT_9 AS OUT_65,
    0.254579 + -0.162741 * t.OUT_0  + -0.077812 * t.OUT_1  + 0.012527 * t.OUT_2  + 0.058680 * t.OUT_3  + 0.191294 * t.OUT_4  + 0.005363 * t.OUT_5  + 0.181148 * t.OUT_6  + -0.016591 * t.OUT_7  + 0.246730 * t.OUT_8  + 0.123606 * t.OUT_9 AS OUT_66,
    0.132201 + -0.246277 * t.OUT_0  + 0.140378 * t.OUT_1  + -0.130498 * t.OUT_2  + -0.174078 * t.OUT_3  + -0.079541 * t.OUT_4  + -0.038699 * t.OUT_5  + 0.124337 * t.OUT_6  + 0.222946 * t.OUT_7  + 0.256666 * t.OUT_8  + -0.096574 * t.OUT_9 AS OUT_67,
    -0.011113 + 0.235508 * t.OUT_0  + -0.184293 * t.OUT_1  + 0.058590 * t.OUT_2  + 0.089125 * t.OUT_3  + -0.134370 * t.OUT_4  + 0.119681 * t.OUT_5  + 0.178146 * t.OUT_6  + 0.018617 * t.OUT_7  + -0.022286 * t.OUT_8  + 0.173642 * t.OUT_9 AS OUT_68,
    0.003444 + 0.253938 * t.OUT_0  + 0.162830 * t.OUT_1  + 0.025714 * t.OUT_2  + -0.135157 * t.OUT_3  + -0.184382 * t.OUT_4  + -0.058111 * t.OUT_5  + -0.040714 * t.OUT_6  + 0.178125 * t.OUT_7  + 0.198951 * t.OUT_8  + -0.135617 * t.OUT_9 AS OUT_69,
    0.101385 + -0.002555 * t.OUT_0  + 0.069701 * t.OUT_1  + 0.205857 * t.OUT_2  + -0.120211 * t.OUT_3  + -0.098721 * t.OUT_4  + 0.064413 * t.OUT_5  + -0.156497 * t.OUT_6  + 0.158800 * t.OUT_7  + -0.167390 * t.OUT_8  + 0.137575 * t.OUT_9 AS OUT_70,
    -0.109994 + -0.219425 * t.OUT_0  + -0.124243 * t.OUT_1  + 0.148396 * t.OUT_2  + -0.147016 * t.OUT_3  + -0.147009 * t.OUT_4  + 0.063643 * t.OUT_5  + 0.017000 * t.OUT_6  + -0.140365 * t.OUT_7  + 0.117750 * t.OUT_8  + -0.080383 * t.OUT_9 AS OUT_71,
    -0.179362 + -0.037446 * t.OUT_0  + 0.076162 * t.OUT_1  + 0.245902 * t.OUT_2  + -0.245666 * t.OUT_3  + -0.015325 * t.OUT_4  + -0.111652 * t.OUT_5  + 0.004747 * t.OUT_6  + 0.143587 * t.OUT_7  + 0.180431 * t.OUT_8  + 0.003286 * t.OUT_9 AS OUT_72,
    -0.093978 + 0.254169 * t.OUT_0  + 0.135507 * t.OUT_1  + -0.153151 * t.OUT_2  + 0.034286 * t.OUT_3  + -0.092545 * t.OUT_4  + 0.036392 * t.OUT_5  + 0.102126 * t.OUT_6  + 0.009545 * t.OUT_7  + -0.007938 * t.OUT_8  + -0.073818 * t.OUT_9 AS OUT_73,
    0.057296 + -0.196327 * t.OUT_0  + 0.029033 * t.OUT_1  + 0.080732 * t.OUT_2  + -0.248232 * t.OUT_3  + 0.164921 * t.OUT_4  + 0.130281 * t.OUT_5  + -0.047084 * t.OUT_6  + -0.115934 * t.OUT_7  + -0.124212 * t.OUT_8  + -0.164536 * t.OUT_9 AS OUT_74,
    0.180268 + 0.122173 * t.OUT_0  + -0.080930 * t.OUT_1  + 0.108861 * t.OUT_2  + 0.169505 * t.OUT_3  + -0.022377 * t.OUT_4  + -0.028916 * t.OUT_5  + 0.067973 * t.OUT_6  + 0.005271 * t.OUT_7  + 0.202486 * t.OUT_8  + 0.010572 * t.OUT_9 AS OUT_75,
    0.064000 + 0.080006 * t.OUT_0  + 0.215899 * t.OUT_1  + 0.113185 * t.OUT_2  + -0.254847 * t.OUT_3  + 0.069887 * t.OUT_4  + 0.121975 * t.OUT_5  + -0.102132 * t.OUT_6  + 0.119880 * t.OUT_7  + 0.075589 * t.OUT_8  + 0.206622 * t.OUT_9 AS OUT_76,
    0.088799 + 0.163303 * t.OUT_0  + 0.221547 * t.OUT_1  + 0.189032 * t.OUT_2  + 0.021353 * t.OUT_3  + 0.010503 * t.OUT_4  + -0.031740 * t.OUT_5  + 0.147054 * t.OUT_6  + -0.091712 * t.OUT_7  + -0.239088 * t.OUT_8  + -0.193898 * t.OUT_9 AS OUT_77,
    0.206247 + 0.225229 * t.OUT_0  + -0.127478 * t.OUT_1  + -0.151591 * t.OUT_2  + 0.168588 * t.OUT_3  + 0.045524 * t.OUT_4  + -0.164722 * t.OUT_5  + -0.169963 * t.OUT_6  + 0.204241 * t.OUT_7  + 0.215062 * t.OUT_8  + 0.194819 * t.OUT_9 AS OUT_78,
    -0.029265 + -0.151613 * t.OUT_0  + -0.001390 * t.OUT_1  + 0.186443 * t.OUT_2  + -0.033737 * t.OUT_3  + 0.012648 * t.OUT_4  + 0.193292 * t.OUT_5  + 0.167350 * t.OUT_6  + -0.102787 * t.OUT_7  + -0.148873 * t.OUT_8  + -0.220732 * t.OUT_9 AS OUT_79,
    0.164819 + 0.073066 * t.OUT_0  + 0.155641 * t.OUT_1  + 0.140610 * t.OUT_2  + -0.075985 * t.OUT_3  + -0.069690 * t.OUT_4  + -0.093761 * t.OUT_5  + 0.253034 * t.OUT_6  + -0.079698 * t.OUT_7  + -0.167498 * t.OUT_8  + -0.010265 * t.OUT_9 AS OUT_80,
    -0.043103 + 0.181192 * t.OUT_0  + 0.011693 * t.OUT_1  + 0.206734 * t.OUT_2  + -0.063016 * t.OUT_3  + 0.209233 * t.OUT_4  + 0.018042 * t.OUT_5  + -0.026924 * t.OUT_6  + -0.136957 * t.OUT_7  + 0.107120 * t.OUT_8  + 0.239284 * t.OUT_9 AS OUT_81,
    -0.027236 + 0.140253 * t.OUT_0  + 0.022720 * t.OUT_1  + 0.020372 * t.OUT_2  + 0.151726 * t.OUT_3  + 0.239192 * t.OUT_4  + -0.091591 * t.OUT_5  + -0.203309 * t.OUT_6  + -0.159203 * t.OUT_7  + -0.039793 * t.OUT_8  + 0.035103 * t.OUT_9 AS OUT_82,
    0.191011 + -0.049909 * t.OUT_0  + 0.243775 * t.OUT_1  + 0.118283 * t.OUT_2  + -0.146920 * t.OUT_3  + 0.055784 * t.OUT_4  + -0.073509 * t.OUT_5  + 0.168825 * t.OUT_6  + -0.243536 * t.OUT_7  + -0.058466 * t.OUT_8  + 0.044672 * t.OUT_9 AS OUT_83,
    -0.187887 + -0.237460 * t.OUT_0  + 0.054842 * t.OUT_1  + 0.161646 * t.OUT_2  + -0.178118 * t.OUT_3  + 0.008679 * t.OUT_4  + 0.103073 * t.OUT_5  + -0.035243 * t.OUT_6  + -0.019685 * t.OUT_7  + 0.162788 * t.OUT_8  + 0.224794 * t.OUT_9 AS OUT_84,
    -0.236579 + 0.145449 * t.OUT_0  + 0.122839 * t.OUT_1  + 0.092567 * t.OUT_2  + -0.124090 * t.OUT_3  + 0.028646 * t.OUT_4  + 0.173548 * t.OUT_5  + -0.205606 * t.OUT_6  + 0.016856 * t.OUT_7  + 0.134455 * t.OUT_8  + -0.200485 * t.OUT_9 AS OUT_85,
    -0.061019 + 0.037579 * t.OUT_0  + -0.187473 * t.OUT_1  + 0.109108 * t.OUT_2  + 0.043227 * t.OUT_3  + -0.012907 * t.OUT_4  + -0.242269 * t.OUT_5  + -0.065007 * t.OUT_6  + -0.105153 * t.OUT_7  + 0.161652 * t.OUT_8  + -0.143095 * t.OUT_9 AS OUT_86,
    -0.138251 + -0.035316 * t.OUT_0  + -0.059454 * t.OUT_1  + -0.259667 * t.OUT_2  + 0.199074 * t.OUT_3  + 0.116706 * t.OUT_4  + -0.146406 * t.OUT_5  + -0.194929 * t.OUT_6  + -0.070176 * t.OUT_7  + -0.041900 * t.OUT_8  + -0.137661 * t.OUT_9 AS OUT_87,
    -0.256286 + -0.149519 * t.OUT_0  + 0.212057 * t.OUT_1  + 0.058652 * t.OUT_2  + -0.000288 * t.OUT_3  + 0.053365 * t.OUT_4  + 0.003468 * t.OUT_5  + 0.181930 * t.OUT_6  + -0.129473 * t.OUT_7  + -0.036157 * t.OUT_8  + -0.137578 * t.OUT_9 AS OUT_88,
    0.042984 + -0.213109 * t.OUT_0  + 0.125323 * t.OUT_1  + 0.194211 * t.OUT_2  + 0.083792 * t.OUT_3  + -0.028615 * t.OUT_4  + -0.107257 * t.OUT_5  + -0.042646 * t.OUT_6  + -0.036643 * t.OUT_7  + -0.212897 * t.OUT_8  + 0.214860 * t.OUT_9 AS OUT_89,
    -0.206165 + -0.069960 * t.OUT_0  + -0.076153 * t.OUT_1  + 0.035380 * t.OUT_2  + 0.158069 * t.OUT_3  + -0.044269 * t.OUT_4  + -0.145767 * t.OUT_5  + -0.090390 * t.OUT_6  + 0.107010 * t.OUT_7  + -0.126313 * t.OUT_8  + -0.091081 * t.OUT_9 AS OUT_90,
    0.197019 + 0.180448 * t.OUT_0  + -0.038003 * t.OUT_1  + 0.215346 * t.OUT_2  + 0.106083 * t.OUT_3  + -0.242142 * t.OUT_4  + 0.162024 * t.OUT_5  + -0.004230 * t.OUT_6  + -0.111929 * t.OUT_7  + -0.149352 * t.OUT_8  + 0.200453 * t.OUT_9 AS OUT_91,
    0.150240 + -0.019253 * t.OUT_0  + 0.193736 * t.OUT_1  + -0.049034 * t.OUT_2  + -0.179992 * t.OUT_3  + 0.200443 * t.OUT_4  + -0.138045 * t.OUT_5  + 0.193384 * t.OUT_6  + -0.259270 * t.OUT_7  + -0.113607 * t.OUT_8  + 0.174371 * t.OUT_9 AS OUT_92,
    -0.185031 + -0.037494 * t.OUT_0  + -0.153687 * t.OUT_1  + 0.043436 * t.OUT_2  + 0.125670 * t.OUT_3  + -0.176689 * t.OUT_4  + -0.087615 * t.OUT_5  + -0.118819 * t.OUT_6  + -0.214181 * t.OUT_7  + -0.175007 * t.OUT_8  + -0.067159 * t.OUT_9 AS OUT_93,
    -0.207804 + -0.028742 * t.OUT_0  + 0.007569 * t.OUT_1  + -0.190162 * t.OUT_2  + -0.121595 * t.OUT_3  + -0.111626 * t.OUT_4  + 0.154671 * t.OUT_5  + 0.017019 * t.OUT_6  + -0.194351 * t.OUT_7  + -0.108215 * t.OUT_8  + -0.235458 * t.OUT_9 AS OUT_94,
    -0.117302 + -0.229817 * t.OUT_0  + 0.169846 * t.OUT_1  + 0.081137 * t.OUT_2  + 0.115249 * t.OUT_3  + 0.180599 * t.OUT_4  + 0.252621 * t.OUT_5  + 0.012718 * t.OUT_6  + 0.250483 * t.OUT_7  + -0.051614 * t.OUT_8  + -0.139661 * t.OUT_9 AS OUT_95,
    0.089948 + 0.049704 * t.OUT_0  + -0.185313 * t.OUT_1  + -0.194815 * t.OUT_2  + -0.193456 * t.OUT_3  + -0.177300 * t.OUT_4  + -0.005108 * t.OUT_5  + -0.134209 * t.OUT_6  + 0.228309 * t.OUT_7  + 0.168497 * t.OUT_8  + 0.198496 * t.OUT_9 AS OUT_96,
    0.031726 + -0.046736 * t.OUT_0  + -0.106560 * t.OUT_1  + 0.108078 * t.OUT_2  + -0.037903 * t.OUT_3  + 0.214564 * t.OUT_4  + 0.111334 * t.OUT_5  + 0.115841 * t.OUT_6  + 0.197802 * t.OUT_7  + 0.047244 * t.OUT_8  + 0.249619 * t.OUT_9 AS OUT_97,
    0.233069 + -0.059687 * t.OUT_0  + -0.125715 * t.OUT_1  + -0.024901 * t.OUT_2  + 0.227593 * t.OUT_3  + -0.142985 * t.OUT_4  + -0.115511 * t.OUT_5  + -0.159776 * t.OUT_6  + 0.185535 * t.OUT_7  + 0.168148 * t.OUT_8  + -0.026004 * t.OUT_9 AS OUT_98,
    0.129527 + -0.078532 * t.OUT_0  + -0.116205 * t.OUT_1  + 0.034855 * t.OUT_2  + -0.165520 * t.OUT_3  + 0.177957 * t.OUT_4  + -0.027010 * t.OUT_5  + 0.208554 * t.OUT_6  + 0.130891 * t.OUT_7  + 0.083553 * t.OUT_8  + -0.086992 * t.OUT_9 AS OUT_99
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
    0.005666 + 0.233190 * t.OUT_0  + -0.027298 * t.OUT_1  + -0.257802 * t.OUT_2  + 0.102890 * t.OUT_3  + -0.069885 * t.OUT_4  + -0.153426 * t.OUT_5  + -0.137242 * t.OUT_6  + 0.179500 * t.OUT_7  + -0.145620 * t.OUT_8  + 0.170523 * t.OUT_9  + -0.189715 * t.OUT_10  + 0.268291 * t.OUT_11  + -0.197364 * t.OUT_12  + 0.007513 * t.OUT_13  + 0.204816 * t.OUT_14  + 0.004411 * t.OUT_15  + 0.132410 * t.OUT_16  + -0.200469 * t.OUT_17  + 0.002861 * t.OUT_18  + -0.116118 * t.OUT_19  + -0.024303 * t.OUT_20  + -0.177348 * t.OUT_21  + 0.232992 * t.OUT_22  + 0.086053 * t.OUT_23  + -0.124460 * t.OUT_24  + 0.036655 * t.OUT_25  + -0.030476 * t.OUT_26  + -0.165098 * t.OUT_27  + 0.161917 * t.OUT_28  + -0.272802 * t.OUT_29  + -0.219928 * t.OUT_30  + 0.172045 * t.OUT_31  + -0.062337 * t.OUT_32  + -0.206457 * t.OUT_33  + -0.125546 * t.OUT_34  + -0.096683 * t.OUT_35  + 0.033762 * t.OUT_36  + 0.036267 * t.OUT_37  + -0.220515 * t.OUT_38  + -0.126870 * t.OUT_39  + -0.129031 * t.OUT_40  + -0.254562 * t.OUT_41  + -0.037019 * t.OUT_42  + 0.168278 * t.OUT_43  + -0.062180 * t.OUT_44  + -0.077632 * t.OUT_45  + -0.088811 * t.OUT_46  + -0.136587 * t.OUT_47  + 0.260677 * t.OUT_48  + 0.247401 * t.OUT_49  + -0.082274 * t.OUT_50  + -0.026806 * t.OUT_51  + 0.257677 * t.OUT_52  + -0.196427 * t.OUT_53  + 0.120917 * t.OUT_54  + 0.005183 * t.OUT_55  + -0.012402 * t.OUT_56  + -0.121748 * t.OUT_57  + 0.142455 * t.OUT_58  + -0.134140 * t.OUT_59  + -0.039215 * t.OUT_60  + 0.058948 * t.OUT_61  + -0.050111 * t.OUT_62  + 0.127158 * t.OUT_63  + -0.032219 * t.OUT_64  + -0.057478 * t.OUT_65  + 0.042818 * t.OUT_66  + 0.215969 * t.OUT_67  + -0.073918 * t.OUT_68  + -0.148206 * t.OUT_69  + -0.138761 * t.OUT_70  + 0.180096 * t.OUT_71  + 0.242502 * t.OUT_72  + -0.140702 * t.OUT_73  + 0.072487 * t.OUT_74  + -0.185547 * t.OUT_75  + 0.196490 * t.OUT_76  + -0.055533 * t.OUT_77  + -0.128114 * t.OUT_78  + 0.036622 * t.OUT_79  + 0.251050 * t.OUT_80  + -0.034945 * t.OUT_81  + 0.091029 * t.OUT_82  + 0.224964 * t.OUT_83  + 0.173860 * t.OUT_84  + -0.170320 * t.OUT_85  + -0.035631 * t.OUT_86  + -0.105644 * t.OUT_87  + -0.168756 * t.OUT_88  + 0.008890 * t.OUT_89  + -0.024017 * t.OUT_90  + 0.098623 * t.OUT_91  + 0.242315 * t.OUT_92  + -0.072893 * t.OUT_93  + -0.108037 * t.OUT_94  + 0.026241 * t.OUT_95  + 0.054599 * t.OUT_96  + -0.002565 * t.OUT_97  + -0.091972 * t.OUT_98  + 0.232491 * t.OUT_99 AS OUT_0
 FROM Hidden_Layer_1_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0"
  FROM "Output_Layer_BA" AS t )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
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
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1"
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
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
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
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte