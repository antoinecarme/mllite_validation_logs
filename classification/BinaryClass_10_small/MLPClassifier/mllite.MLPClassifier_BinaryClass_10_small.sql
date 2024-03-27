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
    0.193193 + -0.038690 * t.OUT_0  + 0.066151 * t.OUT_1  + -0.065530 * t.OUT_2  + 0.088138 * t.OUT_3  + -0.150197 * t.OUT_4  + 0.116212 * t.OUT_5  + 0.171259 * t.OUT_6  + -0.141735 * t.OUT_7  + 0.180280 * t.OUT_8  + 0.153180 * t.OUT_9 AS OUT_0,
    0.113759 + 0.106546 * t.OUT_0  + -0.140989 * t.OUT_1  + -0.026976 * t.OUT_2  + -0.184822 * t.OUT_3  + 0.060924 * t.OUT_4  + 0.168893 * t.OUT_5  + -0.101615 * t.OUT_6  + -0.049697 * t.OUT_7  + -0.127094 * t.OUT_8  + 0.136677 * t.OUT_9 AS OUT_1,
    0.225343 + -0.069115 * t.OUT_0  + -0.049908 * t.OUT_1  + -0.221257 * t.OUT_2  + -0.131575 * t.OUT_3  + 0.148466 * t.OUT_4  + -0.182786 * t.OUT_5  + -0.215422 * t.OUT_6  + -0.142619 * t.OUT_7  + -0.130284 * t.OUT_8  + -0.165900 * t.OUT_9 AS OUT_2,
    0.055671 + -0.007427 * t.OUT_0  + 0.105057 * t.OUT_1  + 0.172623 * t.OUT_2  + -0.096714 * t.OUT_3  + 0.176335 * t.OUT_4  + 0.166211 * t.OUT_5  + 0.064324 * t.OUT_6  + -0.058486 * t.OUT_7  + -0.081552 * t.OUT_8  + -0.045970 * t.OUT_9 AS OUT_3,
    0.150766 + 0.063671 * t.OUT_0  + 0.183294 * t.OUT_1  + 0.192599 * t.OUT_2  + -0.135075 * t.OUT_3  + -0.078743 * t.OUT_4  + -0.210153 * t.OUT_5  + 0.078593 * t.OUT_6  + -0.038033 * t.OUT_7  + 0.195865 * t.OUT_8  + -0.154118 * t.OUT_9 AS OUT_4,
    0.065475 + -0.143271 * t.OUT_0  + 0.228898 * t.OUT_1  + 0.011133 * t.OUT_2  + 0.116866 * t.OUT_3  + 0.034643 * t.OUT_4  + 0.196672 * t.OUT_5  + -0.197100 * t.OUT_6  + -0.210617 * t.OUT_7  + -0.169704 * t.OUT_8  + -0.154707 * t.OUT_9 AS OUT_5,
    -0.096353 + 0.095315 * t.OUT_0  + 0.199760 * t.OUT_1  + -0.017964 * t.OUT_2  + 0.015448 * t.OUT_3  + 0.263560 * t.OUT_4  + -0.172242 * t.OUT_5  + -0.230388 * t.OUT_6  + 0.018935 * t.OUT_7  + -0.170989 * t.OUT_8  + 0.164017 * t.OUT_9 AS OUT_6,
    0.127392 + -0.016099 * t.OUT_0  + 0.110762 * t.OUT_1  + 0.118307 * t.OUT_2  + -0.098317 * t.OUT_3  + 0.159727 * t.OUT_4  + -0.139930 * t.OUT_5  + 0.057174 * t.OUT_6  + -0.170102 * t.OUT_7  + -0.009160 * t.OUT_8  + 0.167024 * t.OUT_9 AS OUT_7,
    -0.042396 + 0.207506 * t.OUT_0  + -0.067862 * t.OUT_1  + -0.005298 * t.OUT_2  + -0.024813 * t.OUT_3  + 0.209519 * t.OUT_4  + -0.169793 * t.OUT_5  + 0.001508 * t.OUT_6  + 0.049257 * t.OUT_7  + -0.077028 * t.OUT_8  + -0.115017 * t.OUT_9 AS OUT_8,
    0.099061 + 0.040406 * t.OUT_0  + -0.007581 * t.OUT_1  + 0.139930 * t.OUT_2  + 0.160681 * t.OUT_3  + -0.083120 * t.OUT_4  + -0.015169 * t.OUT_5  + -0.045371 * t.OUT_6  + 0.185234 * t.OUT_7  + 0.124133 * t.OUT_8  + 0.140227 * t.OUT_9 AS OUT_9,
    -0.154896 + 0.209069 * t.OUT_0  + 0.093047 * t.OUT_1  + -0.008663 * t.OUT_2  + 0.096494 * t.OUT_3  + -0.081275 * t.OUT_4  + 0.055289 * t.OUT_5  + 0.040871 * t.OUT_6  + 0.097622 * t.OUT_7  + -0.233165 * t.OUT_8  + 0.114427 * t.OUT_9 AS OUT_10,
    0.259874 + -0.038036 * t.OUT_0  + 0.130056 * t.OUT_1  + 0.166735 * t.OUT_2  + -0.096423 * t.OUT_3  + -0.132561 * t.OUT_4  + 0.179082 * t.OUT_5  + 0.178789 * t.OUT_6  + 0.054158 * t.OUT_7  + -0.092685 * t.OUT_8  + -0.081983 * t.OUT_9 AS OUT_11,
    0.006072 + 0.246723 * t.OUT_0  + 0.147712 * t.OUT_1  + 0.078225 * t.OUT_2  + 0.152978 * t.OUT_3  + 0.075795 * t.OUT_4  + -0.084403 * t.OUT_5  + -0.030889 * t.OUT_6  + -0.021311 * t.OUT_7  + -0.130798 * t.OUT_8  + 0.058321 * t.OUT_9 AS OUT_12,
    -0.190991 + -0.187521 * t.OUT_0  + 0.020142 * t.OUT_1  + -0.117516 * t.OUT_2  + -0.181515 * t.OUT_3  + -0.177805 * t.OUT_4  + 0.177524 * t.OUT_5  + 0.083888 * t.OUT_6  + -0.206976 * t.OUT_7  + -0.116495 * t.OUT_8  + -0.140036 * t.OUT_9 AS OUT_13,
    -0.207775 + -0.066356 * t.OUT_0  + 0.106961 * t.OUT_1  + -0.037323 * t.OUT_2  + 0.164504 * t.OUT_3  + -0.118890 * t.OUT_4  + -0.058682 * t.OUT_5  + 0.089279 * t.OUT_6  + -0.248457 * t.OUT_7  + 0.216345 * t.OUT_8  + 0.024442 * t.OUT_9 AS OUT_14,
    0.170697 + 0.064239 * t.OUT_0  + 0.136954 * t.OUT_1  + -0.175765 * t.OUT_2  + -0.046680 * t.OUT_3  + -0.243390 * t.OUT_4  + -0.179863 * t.OUT_5  + 0.035193 * t.OUT_6  + 0.224968 * t.OUT_7  + -0.018538 * t.OUT_8  + 0.200422 * t.OUT_9 AS OUT_15,
    -0.040368 + 0.092086 * t.OUT_0  + 0.009422 * t.OUT_1  + -0.097272 * t.OUT_2  + 0.033867 * t.OUT_3  + -0.080077 * t.OUT_4  + -0.077632 * t.OUT_5  + -0.018339 * t.OUT_6  + -0.099837 * t.OUT_7  + 0.140134 * t.OUT_8  + -0.087200 * t.OUT_9 AS OUT_16,
    -0.237143 + -0.089090 * t.OUT_0  + -0.066766 * t.OUT_1  + -0.151812 * t.OUT_2  + -0.132833 * t.OUT_3  + -0.041128 * t.OUT_4  + -0.044184 * t.OUT_5  + 0.185695 * t.OUT_6  + 0.047570 * t.OUT_7  + -0.076639 * t.OUT_8  + 0.172465 * t.OUT_9 AS OUT_17,
    -0.204334 + -0.095975 * t.OUT_0  + -0.090922 * t.OUT_1  + 0.043720 * t.OUT_2  + -0.115259 * t.OUT_3  + -0.031938 * t.OUT_4  + 0.028922 * t.OUT_5  + -0.167986 * t.OUT_6  + -0.105860 * t.OUT_7  + -0.092184 * t.OUT_8  + 0.121756 * t.OUT_9 AS OUT_18,
    -0.070809 + -0.211844 * t.OUT_0  + -0.086156 * t.OUT_1  + -0.057516 * t.OUT_2  + 0.081760 * t.OUT_3  + -0.006864 * t.OUT_4  + -0.209438 * t.OUT_5  + -0.181949 * t.OUT_6  + 0.195947 * t.OUT_7  + -0.120790 * t.OUT_8  + 0.098722 * t.OUT_9 AS OUT_19,
    0.188319 + 0.075359 * t.OUT_0  + 0.154309 * t.OUT_1  + -0.131425 * t.OUT_2  + -0.040127 * t.OUT_3  + 0.264212 * t.OUT_4  + 0.090585 * t.OUT_5  + -0.156220 * t.OUT_6  + 0.000372 * t.OUT_7  + 0.121782 * t.OUT_8  + -0.165265 * t.OUT_9 AS OUT_20,
    0.112326 + -0.201645 * t.OUT_0  + 0.163156 * t.OUT_1  + -0.222604 * t.OUT_2  + 0.233430 * t.OUT_3  + 0.182795 * t.OUT_4  + 0.094052 * t.OUT_5  + -0.236432 * t.OUT_6  + 0.048538 * t.OUT_7  + 0.134345 * t.OUT_8  + -0.017583 * t.OUT_9 AS OUT_21,
    0.134882 + -0.023023 * t.OUT_0  + -0.165351 * t.OUT_1  + 0.233556 * t.OUT_2  + -0.235684 * t.OUT_3  + -0.156092 * t.OUT_4  + -0.027447 * t.OUT_5  + -0.149917 * t.OUT_6  + -0.157749 * t.OUT_7  + -0.184312 * t.OUT_8  + 0.113470 * t.OUT_9 AS OUT_22,
    -0.004912 + 0.027413 * t.OUT_0  + 0.047166 * t.OUT_1  + -0.061524 * t.OUT_2  + -0.140761 * t.OUT_3  + -0.026205 * t.OUT_4  + -0.078248 * t.OUT_5  + 0.128638 * t.OUT_6  + -0.032787 * t.OUT_7  + -0.041816 * t.OUT_8  + -0.251327 * t.OUT_9 AS OUT_23,
    0.194079 + -0.044468 * t.OUT_0  + -0.122317 * t.OUT_1  + -0.081196 * t.OUT_2  + 0.129189 * t.OUT_3  + 0.163829 * t.OUT_4  + 0.123788 * t.OUT_5  + -0.019936 * t.OUT_6  + -0.038351 * t.OUT_7  + -0.238166 * t.OUT_8  + 0.187557 * t.OUT_9 AS OUT_24,
    0.063231 + -0.232847 * t.OUT_0  + 0.017389 * t.OUT_1  + 0.065191 * t.OUT_2  + 0.013185 * t.OUT_3  + -0.193077 * t.OUT_4  + -0.193640 * t.OUT_5  + -0.091568 * t.OUT_6  + -0.169129 * t.OUT_7  + 0.173187 * t.OUT_8  + -0.159620 * t.OUT_9 AS OUT_25,
    -0.089769 + -0.113078 * t.OUT_0  + 0.068218 * t.OUT_1  + 0.084396 * t.OUT_2  + 0.182063 * t.OUT_3  + -0.093691 * t.OUT_4  + 0.166697 * t.OUT_5  + 0.037343 * t.OUT_6  + -0.153040 * t.OUT_7  + 0.001724 * t.OUT_8  + 0.127799 * t.OUT_9 AS OUT_26,
    -0.058801 + 0.160639 * t.OUT_0  + -0.071081 * t.OUT_1  + 0.073178 * t.OUT_2  + 0.175385 * t.OUT_3  + 0.045148 * t.OUT_4  + 0.119633 * t.OUT_5  + 0.070355 * t.OUT_6  + -0.105146 * t.OUT_7  + -0.039304 * t.OUT_8  + -0.196877 * t.OUT_9 AS OUT_27,
    -0.104364 + -0.041417 * t.OUT_0  + 0.074585 * t.OUT_1  + -0.181313 * t.OUT_2  + -0.109685 * t.OUT_3  + -0.148100 * t.OUT_4  + 0.054951 * t.OUT_5  + 0.084305 * t.OUT_6  + 0.196843 * t.OUT_7  + 0.119268 * t.OUT_8  + 0.111595 * t.OUT_9 AS OUT_28,
    -0.255360 + 0.031766 * t.OUT_0  + -0.241783 * t.OUT_1  + 0.147310 * t.OUT_2  + -0.134433 * t.OUT_3  + -0.024700 * t.OUT_4  + -0.215359 * t.OUT_5  + -0.095656 * t.OUT_6  + -0.162881 * t.OUT_7  + 0.091216 * t.OUT_8  + 0.175499 * t.OUT_9 AS OUT_29,
    0.226193 + -0.192294 * t.OUT_0  + -0.178615 * t.OUT_1  + 0.179473 * t.OUT_2  + -0.168527 * t.OUT_3  + -0.181605 * t.OUT_4  + -0.237522 * t.OUT_5  + -0.205326 * t.OUT_6  + -0.002999 * t.OUT_7  + 0.012831 * t.OUT_8  + 0.052651 * t.OUT_9 AS OUT_30,
    0.161894 + 0.032609 * t.OUT_0  + 0.144886 * t.OUT_1  + 0.202311 * t.OUT_2  + 0.028393 * t.OUT_3  + -0.076246 * t.OUT_4  + -0.105995 * t.OUT_5  + 0.044547 * t.OUT_6  + 0.064877 * t.OUT_7  + 0.179934 * t.OUT_8  + -0.019345 * t.OUT_9 AS OUT_31,
    0.133924 + -0.046589 * t.OUT_0  + 0.238977 * t.OUT_1  + -0.012522 * t.OUT_2  + 0.090049 * t.OUT_3  + -0.035951 * t.OUT_4  + 0.013515 * t.OUT_5  + 0.009352 * t.OUT_6  + -0.206500 * t.OUT_7  + 0.152620 * t.OUT_8  + 0.073171 * t.OUT_9 AS OUT_32,
    -0.052320 + 0.052327 * t.OUT_0  + -0.125357 * t.OUT_1  + 0.204749 * t.OUT_2  + 0.130657 * t.OUT_3  + 0.132780 * t.OUT_4  + -0.252543 * t.OUT_5  + 0.082120 * t.OUT_6  + 0.197735 * t.OUT_7  + -0.198911 * t.OUT_8  + 0.073878 * t.OUT_9 AS OUT_33,
    0.165954 + -0.031722 * t.OUT_0  + -0.060097 * t.OUT_1  + 0.115184 * t.OUT_2  + -0.040703 * t.OUT_3  + -0.015802 * t.OUT_4  + -0.095310 * t.OUT_5  + -0.221410 * t.OUT_6  + -0.174702 * t.OUT_7  + -0.077842 * t.OUT_8  + -0.097427 * t.OUT_9 AS OUT_34,
    0.017154 + 0.124313 * t.OUT_0  + -0.145412 * t.OUT_1  + 0.033706 * t.OUT_2  + 0.045572 * t.OUT_3  + 0.188757 * t.OUT_4  + -0.112127 * t.OUT_5  + -0.192478 * t.OUT_6  + -0.155783 * t.OUT_7  + 0.020754 * t.OUT_8  + 0.091145 * t.OUT_9 AS OUT_35,
    0.170692 + -0.120485 * t.OUT_0  + -0.207011 * t.OUT_1  + -0.046241 * t.OUT_2  + 0.193761 * t.OUT_3  + -0.052705 * t.OUT_4  + 0.181456 * t.OUT_5  + 0.046710 * t.OUT_6  + 0.039940 * t.OUT_7  + 0.016629 * t.OUT_8  + -0.010392 * t.OUT_9 AS OUT_36,
    -0.000665 + 0.177976 * t.OUT_0  + -0.196708 * t.OUT_1  + 0.241004 * t.OUT_2  + -0.205711 * t.OUT_3  + -0.251627 * t.OUT_4  + 0.151356 * t.OUT_5  + -0.024470 * t.OUT_6  + 0.008861 * t.OUT_7  + 0.207301 * t.OUT_8  + -0.254706 * t.OUT_9 AS OUT_37,
    0.162741 + -0.143800 * t.OUT_0  + -0.049410 * t.OUT_1  + -0.261327 * t.OUT_2  + -0.036284 * t.OUT_3  + 0.215402 * t.OUT_4  + -0.205720 * t.OUT_5  + -0.164549 * t.OUT_6  + -0.053815 * t.OUT_7  + -0.106109 * t.OUT_8  + 0.053653 * t.OUT_9 AS OUT_38,
    -0.089547 + 0.105952 * t.OUT_0  + -0.024120 * t.OUT_1  + -0.240540 * t.OUT_2  + -0.104113 * t.OUT_3  + -0.185270 * t.OUT_4  + 0.059035 * t.OUT_5  + 0.206098 * t.OUT_6  + 0.144021 * t.OUT_7  + -0.146959 * t.OUT_8  + -0.027032 * t.OUT_9 AS OUT_39,
    0.051237 + -0.145020 * t.OUT_0  + -0.123871 * t.OUT_1  + -0.051531 * t.OUT_2  + 0.026354 * t.OUT_3  + 0.020021 * t.OUT_4  + 0.100424 * t.OUT_5  + -0.155390 * t.OUT_6  + -0.118631 * t.OUT_7  + 0.102746 * t.OUT_8  + 0.121645 * t.OUT_9 AS OUT_40,
    0.087693 + 0.140428 * t.OUT_0  + -0.139780 * t.OUT_1  + -0.041397 * t.OUT_2  + -0.057287 * t.OUT_3  + 0.023662 * t.OUT_4  + 0.014826 * t.OUT_5  + -0.177277 * t.OUT_6  + 0.074943 * t.OUT_7  + -0.168099 * t.OUT_8  + -0.171582 * t.OUT_9 AS OUT_41,
    -0.073885 + 0.028205 * t.OUT_0  + -0.185509 * t.OUT_1  + 0.064485 * t.OUT_2  + -0.053869 * t.OUT_3  + 0.116829 * t.OUT_4  + 0.171018 * t.OUT_5  + 0.179128 * t.OUT_6  + 0.028581 * t.OUT_7  + 0.096529 * t.OUT_8  + -0.073705 * t.OUT_9 AS OUT_42,
    0.230698 + 0.196213 * t.OUT_0  + 0.016109 * t.OUT_1  + 0.221641 * t.OUT_2  + -0.105303 * t.OUT_3  + -0.262913 * t.OUT_4  + -0.034743 * t.OUT_5  + 0.229683 * t.OUT_6  + -0.115368 * t.OUT_7  + 0.198321 * t.OUT_8  + -0.167361 * t.OUT_9 AS OUT_43,
    -0.162740 + -0.148671 * t.OUT_0  + -0.166025 * t.OUT_1  + 0.015867 * t.OUT_2  + -0.023838 * t.OUT_3  + -0.051124 * t.OUT_4  + -0.191712 * t.OUT_5  + 0.080561 * t.OUT_6  + -0.083150 * t.OUT_7  + 0.186353 * t.OUT_8  + 0.044951 * t.OUT_9 AS OUT_44,
    -0.011039 + -0.214886 * t.OUT_0  + -0.163623 * t.OUT_1  + -0.059269 * t.OUT_2  + 0.149498 * t.OUT_3  + 0.225198 * t.OUT_4  + -0.028413 * t.OUT_5  + -0.156551 * t.OUT_6  + -0.064043 * t.OUT_7  + -0.008002 * t.OUT_8  + 0.074220 * t.OUT_9 AS OUT_45,
    0.173188 + 0.068737 * t.OUT_0  + 0.074383 * t.OUT_1  + -0.179657 * t.OUT_2  + 0.058843 * t.OUT_3  + 0.169355 * t.OUT_4  + 0.110164 * t.OUT_5  + 0.129459 * t.OUT_6  + -0.116269 * t.OUT_7  + -0.118717 * t.OUT_8  + -0.226236 * t.OUT_9 AS OUT_46,
    -0.039233 + 0.115036 * t.OUT_0  + 0.111267 * t.OUT_1  + -0.167598 * t.OUT_2  + -0.079884 * t.OUT_3  + -0.083061 * t.OUT_4  + -0.199134 * t.OUT_5  + 0.153822 * t.OUT_6  + 0.065004 * t.OUT_7  + 0.209626 * t.OUT_8  + 0.180408 * t.OUT_9 AS OUT_47,
    0.184493 + 0.164153 * t.OUT_0  + -0.065884 * t.OUT_1  + 0.088981 * t.OUT_2  + -0.097602 * t.OUT_3  + 0.141474 * t.OUT_4  + -0.048041 * t.OUT_5  + 0.160813 * t.OUT_6  + -0.187607 * t.OUT_7  + -0.067571 * t.OUT_8  + -0.148820 * t.OUT_9 AS OUT_48,
    0.021614 + 0.198125 * t.OUT_0  + 0.034469 * t.OUT_1  + 0.113234 * t.OUT_2  + -0.004419 * t.OUT_3  + 0.018547 * t.OUT_4  + 0.185295 * t.OUT_5  + -0.034007 * t.OUT_6  + 0.209920 * t.OUT_7  + -0.003303 * t.OUT_8  + 0.134779 * t.OUT_9 AS OUT_49,
    0.258645 + 0.185373 * t.OUT_0  + 0.058812 * t.OUT_1  + -0.236921 * t.OUT_2  + 0.233243 * t.OUT_3  + 0.236090 * t.OUT_4  + -0.187247 * t.OUT_5  + -0.099643 * t.OUT_6  + 0.008925 * t.OUT_7  + 0.005435 * t.OUT_8  + -0.019192 * t.OUT_9 AS OUT_50,
    -0.136801 + -0.150464 * t.OUT_0  + -0.123256 * t.OUT_1  + -0.046440 * t.OUT_2  + 0.050127 * t.OUT_3  + 0.237146 * t.OUT_4  + -0.053053 * t.OUT_5  + 0.102144 * t.OUT_6  + -0.041659 * t.OUT_7  + -0.178698 * t.OUT_8  + 0.126621 * t.OUT_9 AS OUT_51,
    -0.140215 + 0.109949 * t.OUT_0  + -0.008038 * t.OUT_1  + 0.177870 * t.OUT_2  + -0.213940 * t.OUT_3  + -0.090559 * t.OUT_4  + -0.009927 * t.OUT_5  + -0.117646 * t.OUT_6  + -0.227635 * t.OUT_7  + 0.121146 * t.OUT_8  + 0.228734 * t.OUT_9 AS OUT_52,
    -0.001383 + 0.220940 * t.OUT_0  + 0.223611 * t.OUT_1  + -0.121865 * t.OUT_2  + -0.083305 * t.OUT_3  + 0.196479 * t.OUT_4  + 0.075209 * t.OUT_5  + -0.149525 * t.OUT_6  + -0.194350 * t.OUT_7  + 0.125795 * t.OUT_8  + -0.095833 * t.OUT_9 AS OUT_53,
    -0.067217 + -0.153288 * t.OUT_0  + 0.205818 * t.OUT_1  + 0.021251 * t.OUT_2  + -0.220342 * t.OUT_3  + 0.158672 * t.OUT_4  + -0.109579 * t.OUT_5  + 0.187037 * t.OUT_6  + -0.101670 * t.OUT_7  + -0.137525 * t.OUT_8  + 0.019240 * t.OUT_9 AS OUT_54,
    -0.037541 + 0.081681 * t.OUT_0  + -0.016599 * t.OUT_1  + -0.059057 * t.OUT_2  + 0.131024 * t.OUT_3  + 0.217090 * t.OUT_4  + 0.201199 * t.OUT_5  + 0.102203 * t.OUT_6  + 0.190583 * t.OUT_7  + 0.160584 * t.OUT_8  + 0.192182 * t.OUT_9 AS OUT_55,
    0.238647 + 0.079725 * t.OUT_0  + -0.188920 * t.OUT_1  + 0.072543 * t.OUT_2  + -0.100859 * t.OUT_3  + 0.162093 * t.OUT_4  + 0.001118 * t.OUT_5  + -0.156938 * t.OUT_6  + 0.197728 * t.OUT_7  + 0.004764 * t.OUT_8  + -0.074888 * t.OUT_9 AS OUT_56,
    -0.024893 + 0.048407 * t.OUT_0  + -0.083149 * t.OUT_1  + -0.146903 * t.OUT_2  + -0.016055 * t.OUT_3  + 0.065313 * t.OUT_4  + -0.239493 * t.OUT_5  + 0.135273 * t.OUT_6  + 0.090612 * t.OUT_7  + 0.113255 * t.OUT_8  + 0.157632 * t.OUT_9 AS OUT_57,
    0.050082 + 0.018072 * t.OUT_0  + 0.070625 * t.OUT_1  + 0.028263 * t.OUT_2  + -0.197506 * t.OUT_3  + 0.004081 * t.OUT_4  + -0.140293 * t.OUT_5  + -0.088129 * t.OUT_6  + -0.235681 * t.OUT_7  + 0.144906 * t.OUT_8  + -0.143951 * t.OUT_9 AS OUT_58,
    0.127773 + 0.108548 * t.OUT_0  + -0.174542 * t.OUT_1  + 0.130948 * t.OUT_2  + 0.060014 * t.OUT_3  + -0.006374 * t.OUT_4  + 0.123674 * t.OUT_5  + -0.184267 * t.OUT_6  + -0.103697 * t.OUT_7  + -0.228930 * t.OUT_8  + -0.005951 * t.OUT_9 AS OUT_59,
    0.087195 + -0.207931 * t.OUT_0  + 0.103402 * t.OUT_1  + 0.045656 * t.OUT_2  + -0.145286 * t.OUT_3  + 0.001711 * t.OUT_4  + 0.035375 * t.OUT_5  + 0.077304 * t.OUT_6  + -0.097678 * t.OUT_7  + -0.221592 * t.OUT_8  + -0.202533 * t.OUT_9 AS OUT_60,
    0.118733 + 0.012079 * t.OUT_0  + -0.152004 * t.OUT_1  + 0.182097 * t.OUT_2  + -0.107318 * t.OUT_3  + -0.018675 * t.OUT_4  + -0.061588 * t.OUT_5  + -0.085351 * t.OUT_6  + -0.056195 * t.OUT_7  + 0.234254 * t.OUT_8  + 0.096625 * t.OUT_9 AS OUT_61,
    -0.020270 + 0.064076 * t.OUT_0  + 0.243159 * t.OUT_1  + 0.138757 * t.OUT_2  + 0.212332 * t.OUT_3  + 0.054922 * t.OUT_4  + -0.033246 * t.OUT_5  + 0.190898 * t.OUT_6  + 0.054274 * t.OUT_7  + -0.095503 * t.OUT_8  + 0.063628 * t.OUT_9 AS OUT_62,
    0.171712 + 0.107558 * t.OUT_0  + 0.192880 * t.OUT_1  + 0.191873 * t.OUT_2  + -0.164202 * t.OUT_3  + -0.101950 * t.OUT_4  + -0.025739 * t.OUT_5  + 0.138505 * t.OUT_6  + -0.078586 * t.OUT_7  + -0.080726 * t.OUT_8  + -0.037431 * t.OUT_9 AS OUT_63,
    -0.184704 + -0.224425 * t.OUT_0  + -0.078101 * t.OUT_1  + 0.048704 * t.OUT_2  + 0.205315 * t.OUT_3  + -0.119952 * t.OUT_4  + 0.192302 * t.OUT_5  + -0.057056 * t.OUT_6  + 0.053089 * t.OUT_7  + -0.139272 * t.OUT_8  + -0.207344 * t.OUT_9 AS OUT_64,
    0.106841 + 0.163804 * t.OUT_0  + 0.149887 * t.OUT_1  + -0.186580 * t.OUT_2  + -0.143482 * t.OUT_3  + 0.063344 * t.OUT_4  + 0.176180 * t.OUT_5  + 0.147760 * t.OUT_6  + 0.155453 * t.OUT_7  + -0.241665 * t.OUT_8  + -0.142464 * t.OUT_9 AS OUT_65,
    0.256359 + -0.116816 * t.OUT_0  + -0.140550 * t.OUT_1  + 0.012119 * t.OUT_2  + 0.059438 * t.OUT_3  + 0.190888 * t.OUT_4  + 0.005895 * t.OUT_5  + 0.181290 * t.OUT_6  + -0.048093 * t.OUT_7  + 0.245609 * t.OUT_8  + 0.189218 * t.OUT_9 AS OUT_66,
    0.133228 + -0.238036 * t.OUT_0  + 0.142711 * t.OUT_1  + -0.131907 * t.OUT_2  + -0.169264 * t.OUT_3  + -0.096202 * t.OUT_4  + -0.039397 * t.OUT_5  + 0.123227 * t.OUT_6  + 0.175553 * t.OUT_7  + 0.249845 * t.OUT_8  + -0.106761 * t.OUT_9 AS OUT_67,
    -0.012306 + 0.199777 * t.OUT_0  + -0.182261 * t.OUT_1  + 0.059258 * t.OUT_2  + 0.147134 * t.OUT_3  + -0.076615 * t.OUT_4  + 0.118074 * t.OUT_5  + 0.177539 * t.OUT_6  + 0.013349 * t.OUT_7  + -0.021709 * t.OUT_8  + 0.174791 * t.OUT_9 AS OUT_68,
    -0.027027 + 0.251779 * t.OUT_0  + 0.168390 * t.OUT_1  + 0.024381 * t.OUT_2  + -0.088065 * t.OUT_3  + -0.128868 * t.OUT_4  + -0.059164 * t.OUT_5  + -0.041991 * t.OUT_6  + 0.177440 * t.OUT_7  + 0.190455 * t.OUT_8  + -0.130939 * t.OUT_9 AS OUT_69,
    0.100984 + -0.003124 * t.OUT_0  + 0.077910 * t.OUT_1  + 0.203610 * t.OUT_2  + -0.153114 * t.OUT_3  + -0.066260 * t.OUT_4  + 0.061687 * t.OUT_5  + -0.159362 * t.OUT_6  + 0.149231 * t.OUT_7  + -0.160566 * t.OUT_8  + 0.113065 * t.OUT_9 AS OUT_70,
    -0.109669 + -0.201343 * t.OUT_0  + -0.151186 * t.OUT_1  + 0.148720 * t.OUT_2  + -0.140287 * t.OUT_3  + -0.146267 * t.OUT_4  + 0.064921 * t.OUT_5  + 0.017801 * t.OUT_6  + -0.185519 * t.OUT_7  + 0.117542 * t.OUT_8  + -0.079347 * t.OUT_9 AS OUT_71,
    -0.236412 + -0.026685 * t.OUT_0  + 0.078985 * t.OUT_1  + 0.240847 * t.OUT_2  + -0.229829 * t.OUT_3  + -0.068468 * t.OUT_4  + -0.116479 * t.OUT_5  + -0.000219 * t.OUT_6  + 0.083822 * t.OUT_7  + 0.156638 * t.OUT_8  + 0.018746 * t.OUT_9 AS OUT_72,
    -0.108632 + 0.244779 * t.OUT_0  + 0.135855 * t.OUT_1  + -0.153348 * t.OUT_2  + 0.035716 * t.OUT_3  + -0.037498 * t.OUT_4  + 0.036767 * t.OUT_5  + 0.102210 * t.OUT_6  + 0.013114 * t.OUT_7  + -0.032477 * t.OUT_8  + -0.071692 * t.OUT_9 AS OUT_73,
    0.054063 + -0.148486 * t.OUT_0  + -0.018315 * t.OUT_1  + 0.081128 * t.OUT_2  + -0.247454 * t.OUT_3  + 0.154815 * t.OUT_4  + 0.131338 * t.OUT_5  + -0.046414 * t.OUT_6  + -0.114819 * t.OUT_7  + -0.125616 * t.OUT_8  + -0.103294 * t.OUT_9 AS OUT_74,
    0.178944 + 0.058634 * t.OUT_0  + -0.071137 * t.OUT_1  + 0.110332 * t.OUT_2  + 0.222754 * t.OUT_3  + 0.028673 * t.OUT_4  + -0.029309 * t.OUT_5  + 0.068318 * t.OUT_6  + 0.023467 * t.OUT_7  + 0.210864 * t.OUT_8  + -0.021424 * t.OUT_9 AS OUT_75,
    0.066228 + 0.084171 * t.OUT_0  + 0.165864 * t.OUT_1  + 0.113045 * t.OUT_2  + -0.244734 * t.OUT_3  + 0.018463 * t.OUT_4  + 0.123124 * t.OUT_5  + -0.101342 * t.OUT_6  + 0.111515 * t.OUT_7  + 0.074163 * t.OUT_8  + 0.251916 * t.OUT_9 AS OUT_76,
    0.089807 + 0.114747 * t.OUT_0  + 0.226171 * t.OUT_1  + 0.187997 * t.OUT_2  + 0.018699 * t.OUT_3  + 0.048835 * t.OUT_4  + -0.032779 * t.OUT_5  + 0.145882 * t.OUT_6  + -0.100385 * t.OUT_7  + -0.239234 * t.OUT_8  + -0.187519 * t.OUT_9 AS OUT_77,
    0.204033 + 0.217894 * t.OUT_0  + -0.064136 * t.OUT_1  + -0.149671 * t.OUT_2  + 0.206710 * t.OUT_3  + 0.051285 * t.OUT_4  + -0.164652 * t.OUT_5  + -0.168947 * t.OUT_6  + 0.199758 * t.OUT_7  + 0.268864 * t.OUT_8  + 0.184366 * t.OUT_9 AS OUT_78,
    -0.028063 + -0.134356 * t.OUT_0  + -0.002600 * t.OUT_1  + 0.186957 * t.OUT_2  + -0.030361 * t.OUT_3  + -0.025813 * t.OUT_4  + 0.193769 * t.OUT_5  + 0.167901 * t.OUT_6  + -0.166363 * t.OUT_7  + -0.149499 * t.OUT_8  + -0.233153 * t.OUT_9 AS OUT_79,
    0.181403 + 0.132477 * t.OUT_0  + 0.095717 * t.OUT_1  + 0.139587 * t.OUT_2  + -0.067616 * t.OUT_3  + -0.117962 * t.OUT_4  + -0.093695 * t.OUT_5  + 0.252505 * t.OUT_6  + -0.084670 * t.OUT_7  + -0.169488 * t.OUT_8  + -0.013259 * t.OUT_9 AS OUT_80,
    -0.036104 + 0.188970 * t.OUT_0  + 0.054123 * t.OUT_1  + 0.206995 * t.OUT_2  + -0.055780 * t.OUT_3  + 0.223323 * t.OUT_4  + 0.017389 * t.OUT_5  + -0.027049 * t.OUT_6  + -0.137285 * t.OUT_7  + 0.110123 * t.OUT_8  + 0.242022 * t.OUT_9 AS OUT_81,
    -0.026849 + 0.174888 * t.OUT_0  + -0.034161 * t.OUT_1  + 0.020425 * t.OUT_2  + 0.150381 * t.OUT_3  + 0.204498 * t.OUT_4  + -0.092466 * t.OUT_5  + -0.203672 * t.OUT_6  + -0.205346 * t.OUT_7  + 0.010369 * t.OUT_8  + 0.030144 * t.OUT_9 AS OUT_82,
    0.176215 + -0.045940 * t.OUT_0  + 0.183237 * t.OUT_1  + 0.117170 * t.OUT_2  + -0.146243 * t.OUT_3  + 0.054164 * t.OUT_4  + -0.073270 * t.OUT_5  + 0.168424 * t.OUT_6  + -0.242388 * t.OUT_7  + -0.059772 * t.OUT_8  + 0.072796 * t.OUT_9 AS OUT_83,
    -0.188000 + -0.234675 * t.OUT_0  + 0.051575 * t.OUT_1  + 0.162883 * t.OUT_2  + -0.175662 * t.OUT_3  + 0.050261 * t.OUT_4  + 0.104832 * t.OUT_5  + -0.034025 * t.OUT_6  + -0.019815 * t.OUT_7  + 0.161967 * t.OUT_8  + 0.252846 * t.OUT_9 AS OUT_84,
    -0.234704 + 0.094779 * t.OUT_0  + 0.125350 * t.OUT_1  + 0.091541 * t.OUT_2  + -0.113489 * t.OUT_3  + 0.084902 * t.OUT_4  + 0.172427 * t.OUT_5  + -0.206738 * t.OUT_6  + 0.065467 * t.OUT_7  + 0.136211 * t.OUT_8  + -0.199754 * t.OUT_9 AS OUT_85,
    -0.054592 + 0.034678 * t.OUT_0  + -0.129319 * t.OUT_1  + 0.108817 * t.OUT_2  + 0.043195 * t.OUT_3  + 0.007398 * t.OUT_4  + -0.242382 * t.OUT_5  + -0.065217 * t.OUT_6  + -0.084498 * t.OUT_7  + 0.164647 * t.OUT_8  + -0.138725 * t.OUT_9 AS OUT_86,
    -0.137576 + -0.051468 * t.OUT_0  + -0.000155 * t.OUT_1  + -0.258223 * t.OUT_2  + 0.197161 * t.OUT_3  + 0.180313 * t.OUT_4  + -0.145816 * t.OUT_5  + -0.193821 * t.OUT_6  + -0.073916 * t.OUT_7  + -0.032898 * t.OUT_8  + -0.137683 * t.OUT_9 AS OUT_87,
    -0.253452 + -0.171595 * t.OUT_0  + 0.216298 * t.OUT_1  + 0.057602 * t.OUT_2  + -0.001537 * t.OUT_3  + 0.070193 * t.OUT_4  + 0.003114 * t.OUT_5  + 0.181127 * t.OUT_6  + -0.139079 * t.OUT_7  + -0.034632 * t.OUT_8  + -0.185525 * t.OUT_9 AS OUT_88,
    0.087306 + -0.203330 * t.OUT_0  + 0.163587 * t.OUT_1  + 0.173141 * t.OUT_2  + 0.102364 * t.OUT_3  + -0.000442 * t.OUT_4  + -0.133646 * t.OUT_5  + -0.067488 * t.OUT_6  + -0.015308 * t.OUT_7  + -0.238195 * t.OUT_8  + 0.201019 * t.OUT_9 AS OUT_89,
    -0.207834 + -0.093868 * t.OUT_0  + -0.089284 * t.OUT_1  + 0.042424 * t.OUT_2  + 0.143042 * t.OUT_3  + -0.043517 * t.OUT_4  + -0.144460 * t.OUT_5  + -0.087458 * t.OUT_6  + 0.102575 * t.OUT_7  + -0.114156 * t.OUT_8  + -0.080562 * t.OUT_9 AS OUT_90,
    0.199491 + 0.188557 * t.OUT_0  + -0.090155 * t.OUT_1  + 0.215664 * t.OUT_2  + 0.096206 * t.OUT_3  + -0.242706 * t.OUT_4  + 0.162665 * t.OUT_5  + -0.003616 * t.OUT_6  + -0.059956 * t.OUT_7  + -0.149864 * t.OUT_8  + 0.180361 * t.OUT_9 AS OUT_91,
    0.144207 + -0.015583 * t.OUT_0  + 0.141457 * t.OUT_1  + -0.051228 * t.OUT_2  + -0.177004 * t.OUT_3  + 0.199710 * t.OUT_4  + -0.139075 * t.OUT_5  + 0.191794 * t.OUT_6  + -0.257956 * t.OUT_7  + -0.114667 * t.OUT_8  + 0.194685 * t.OUT_9 AS OUT_92,
    -0.183029 + -0.075417 * t.OUT_0  + -0.138903 * t.OUT_1  + 0.046618 * t.OUT_2  + 0.126079 * t.OUT_3  + -0.162177 * t.OUT_4  + -0.086462 * t.OUT_5  + -0.116034 * t.OUT_6  + -0.201400 * t.OUT_7  + -0.180316 * t.OUT_8  + 0.001673 * t.OUT_9 AS OUT_93,
    -0.208803 + -0.075243 * t.OUT_0  + 0.046350 * t.OUT_1  + -0.193322 * t.OUT_2  + -0.124693 * t.OUT_3  + -0.092929 * t.OUT_4  + 0.152994 * t.OUT_5  + 0.014551 * t.OUT_6  + -0.194348 * t.OUT_7  + -0.107901 * t.OUT_8  + -0.211801 * t.OUT_9 AS OUT_94,
    -0.123135 + -0.195792 * t.OUT_0  + 0.169872 * t.OUT_1  + 0.080908 * t.OUT_2  + 0.111569 * t.OUT_3  + 0.191768 * t.OUT_4  + 0.253263 * t.OUT_5  + 0.012998 * t.OUT_6  + 0.249015 * t.OUT_7  + -0.064636 * t.OUT_8  + -0.127300 * t.OUT_9 AS OUT_95,
    0.141630 + 0.055859 * t.OUT_0  + -0.240040 * t.OUT_1  + -0.195216 * t.OUT_2  + -0.146040 * t.OUT_3  + -0.183000 * t.OUT_4  + -0.003648 * t.OUT_5  + -0.133636 * t.OUT_6  + 0.228884 * t.OUT_7  + 0.151417 * t.OUT_8  + 0.213540 * t.OUT_9 AS OUT_96,
    0.031370 + -0.049681 * t.OUT_0  + -0.104719 * t.OUT_1  + 0.108627 * t.OUT_2  + -0.034951 * t.OUT_3  + 0.238288 * t.OUT_4  + 0.110527 * t.OUT_5  + 0.115712 * t.OUT_6  + 0.197316 * t.OUT_7  + 0.048104 * t.OUT_8  + 0.218105 * t.OUT_9 AS OUT_97,
    0.247939 + -0.110532 * t.OUT_0  + -0.101163 * t.OUT_1  + -0.025059 * t.OUT_2  + 0.210887 * t.OUT_3  + -0.098966 * t.OUT_4  + -0.116528 * t.OUT_5  + -0.160636 * t.OUT_6  + 0.182950 * t.OUT_7  + 0.168117 * t.OUT_8  + -0.057616 * t.OUT_9 AS OUT_98,
    0.133693 + -0.058115 * t.OUT_0  + -0.151359 * t.OUT_1  + 0.033905 * t.OUT_2  + -0.166769 * t.OUT_3  + 0.179397 * t.OUT_4  + -0.026685 * t.OUT_5  + 0.208416 * t.OUT_6  + 0.068485 * t.OUT_7  + 0.083494 * t.OUT_8  + -0.041928 * t.OUT_9 AS OUT_99
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
    0.008715 + 0.233467 * t.OUT_0  + -0.014196 * t.OUT_1  + -0.256975 * t.OUT_2  + 0.102748 * t.OUT_3  + -0.091066 * t.OUT_4  + -0.154853 * t.OUT_5  + -0.135348 * t.OUT_6  + 0.175990 * t.OUT_7  + -0.143719 * t.OUT_8  + 0.171406 * t.OUT_9  + -0.191622 * t.OUT_10  + 0.268599 * t.OUT_11  + -0.196032 * t.OUT_12  + 0.007633 * t.OUT_13  + 0.157917 * t.OUT_14  + 0.007489 * t.OUT_15  + 0.133456 * t.OUT_16  + -0.198954 * t.OUT_17  + -0.002431 * t.OUT_18  + -0.112874 * t.OUT_19  + -0.048574 * t.OUT_20  + -0.232650 * t.OUT_21  + 0.238658 * t.OUT_22  + 0.073996 * t.OUT_23  + -0.100302 * t.OUT_24  + -0.028777 * t.OUT_25  + -0.030281 * t.OUT_26  + -0.163689 * t.OUT_27  + 0.162531 * t.OUT_28  + -0.249230 * t.OUT_29  + -0.252400 * t.OUT_30  + 0.110839 * t.OUT_31  + -0.063838 * t.OUT_32  + -0.204777 * t.OUT_33  + -0.125562 * t.OUT_34  + -0.097009 * t.OUT_35  + 0.034440 * t.OUT_36  + 0.037118 * t.OUT_37  + -0.218757 * t.OUT_38  + -0.118379 * t.OUT_39  + -0.130333 * t.OUT_40  + -0.233653 * t.OUT_41  + -0.036874 * t.OUT_42  + 0.169221 * t.OUT_43  + -0.064073 * t.OUT_44  + -0.076645 * t.OUT_45  + -0.085842 * t.OUT_46  + -0.136224 * t.OUT_47  + 0.264113 * t.OUT_48  + 0.248192 * t.OUT_49  + -0.081158 * t.OUT_50  + -0.035699 * t.OUT_51  + 0.260697 * t.OUT_52  + -0.198183 * t.OUT_53  + 0.060202 * t.OUT_54  + 0.005189 * t.OUT_55  + -0.004992 * t.OUT_56  + -0.120993 * t.OUT_57  + 0.140893 * t.OUT_58  + -0.089639 * t.OUT_59  + -0.041285 * t.OUT_60  + 0.056236 * t.OUT_61  + -0.057132 * t.OUT_62  + 0.128708 * t.OUT_63  + -0.031139 * t.OUT_64  + -0.054694 * t.OUT_65  + 0.039980 * t.OUT_66  + 0.160640 * t.OUT_67  + -0.071473 * t.OUT_68  + -0.148058 * t.OUT_69  + -0.134922 * t.OUT_70  + 0.179197 * t.OUT_71  + 0.177989 * t.OUT_72  + -0.093221 * t.OUT_73  + 0.070552 * t.OUT_74  + -0.184215 * t.OUT_75  + 0.198552 * t.OUT_76  + -0.055679 * t.OUT_77  + -0.126978 * t.OUT_78  + 0.036848 * t.OUT_79  + 0.252410 * t.OUT_80  + -0.035675 * t.OUT_81  + 0.091426 * t.OUT_82  + 0.222803 * t.OUT_83  + 0.171545 * t.OUT_84  + -0.168057 * t.OUT_85  + -0.036853 * t.OUT_86  + -0.104623 * t.OUT_87  + -0.171241 * t.OUT_88  + -0.044873 * t.OUT_89  + -0.019862 * t.OUT_90  + 0.100963 * t.OUT_91  + 0.184394 * t.OUT_92  + -0.073703 * t.OUT_93  + -0.103276 * t.OUT_94  + 0.025164 * t.OUT_95  + 0.093179 * t.OUT_96  + -0.002981 * t.OUT_97  + -0.103194 * t.OUT_98  + 0.230816 * t.OUT_99 AS OUT_0
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