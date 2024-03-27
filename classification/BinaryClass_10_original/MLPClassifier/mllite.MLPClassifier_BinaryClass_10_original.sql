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
    0.266989 + -0.035850 * t.OUT_0  + 0.001376 * t.OUT_1  + -0.010066 * t.OUT_2  + 0.147225 * t.OUT_3  + -0.173501 * t.OUT_4  + 0.178807 * t.OUT_5  + 0.231386 * t.OUT_6  + -0.110701 * t.OUT_7  + 0.176357 * t.OUT_8  + 0.043294 * t.OUT_9 AS OUT_0,
    0.110799 + 0.115575 * t.OUT_0  + -0.146185 * t.OUT_1  + -0.035282 * t.OUT_2  + -0.222467 * t.OUT_3  + 0.055543 * t.OUT_4  + 0.160155 * t.OUT_5  + -0.110169 * t.OUT_6  + -0.094839 * t.OUT_7  + -0.119351 * t.OUT_8  + 0.135194 * t.OUT_9 AS OUT_1,
    0.279571 + -0.093008 * t.OUT_0  + -0.065960 * t.OUT_1  + -0.260653 * t.OUT_2  + -0.191882 * t.OUT_3  + 0.159004 * t.OUT_4  + -0.233036 * t.OUT_5  + -0.260485 * t.OUT_6  + -0.122700 * t.OUT_7  + -0.086320 * t.OUT_8  + -0.125332 * t.OUT_9 AS OUT_2,
    0.136382 + 0.072072 * t.OUT_0  + 0.083533 * t.OUT_1  + 0.187218 * t.OUT_2  + 0.005748 * t.OUT_3  + 0.090699 * t.OUT_4  + 0.243990 * t.OUT_5  + 0.108112 * t.OUT_6  + -0.000137 * t.OUT_7  + -0.051710 * t.OUT_8  + -0.105850 * t.OUT_9 AS OUT_3,
    0.199598 + 0.012730 * t.OUT_0  + 0.197320 * t.OUT_1  + 0.160507 * t.OUT_2  + -0.170196 * t.OUT_3  + -0.059253 * t.OUT_4  + -0.259868 * t.OUT_5  + 0.038787 * t.OUT_6  + -0.077615 * t.OUT_7  + 0.171477 * t.OUT_8  + -0.127930 * t.OUT_9 AS OUT_4,
    0.059359 + -0.095180 * t.OUT_0  + 0.261789 * t.OUT_1  + -0.016630 * t.OUT_2  + 0.133642 * t.OUT_3  + 0.074336 * t.OUT_4  + 0.147815 * t.OUT_5  + -0.235416 * t.OUT_6  + -0.227791 * t.OUT_7  + -0.162585 * t.OUT_8  + -0.106325 * t.OUT_9 AS OUT_5,
    -0.032596 + 0.122082 * t.OUT_0  + 0.250459 * t.OUT_1  + -0.044941 * t.OUT_2  + 0.040909 * t.OUT_3  + 0.307128 * t.OUT_4  + -0.223054 * t.OUT_5  + -0.268476 * t.OUT_6  + -0.098692 * t.OUT_7  + -0.227755 * t.OUT_8  + 0.259954 * t.OUT_9 AS OUT_6,
    0.152367 + 0.000916 * t.OUT_0  + 0.065383 * t.OUT_1  + 0.129880 * t.OUT_2  + -0.034470 * t.OUT_3  + 0.158811 * t.OUT_4  + -0.107757 * t.OUT_5  + 0.076437 * t.OUT_6  + -0.138980 * t.OUT_7  + -0.012205 * t.OUT_8  + 0.134220 * t.OUT_9 AS OUT_7,
    0.039809 + 0.085845 * t.OUT_0  + -0.129337 * t.OUT_1  + -0.029211 * t.OUT_2  + -0.117391 * t.OUT_3  + 0.235245 * t.OUT_4  + -0.221013 * t.OUT_5  + -0.033863 * t.OUT_6  + 0.102817 * t.OUT_7  + -0.053883 * t.OUT_8  + -0.171987 * t.OUT_9 AS OUT_8,
    0.163142 + 0.063643 * t.OUT_0  + -0.047617 * t.OUT_1  + 0.173735 * t.OUT_2  + 0.225106 * t.OUT_3  + -0.101392 * t.OUT_4  + 0.045778 * t.OUT_5  + 0.000993 * t.OUT_6  + 0.193294 * t.OUT_7  + 0.124600 * t.OUT_8  + 0.078898 * t.OUT_9 AS OUT_9,
    -0.173933 + 0.174773 * t.OUT_0  + 0.104926 * t.OUT_1  + -0.035041 * t.OUT_2  + 0.109583 * t.OUT_3  + -0.036795 * t.OUT_4  + 0.017366 * t.OUT_5  + 0.009566 * t.OUT_6  + 0.057266 * t.OUT_7  + -0.195352 * t.OUT_8  + 0.145854 * t.OUT_9 AS OUT_10,
    0.298872 + 0.011588 * t.OUT_0  + 0.112031 * t.OUT_1  + 0.201792 * t.OUT_2  + -0.004949 * t.OUT_3  + -0.172832 * t.OUT_4  + 0.242282 * t.OUT_5  + 0.228414 * t.OUT_6  + 0.096094 * t.OUT_7  + -0.047945 * t.OUT_8  + -0.086896 * t.OUT_9 AS OUT_11,
    0.030318 + 0.215153 * t.OUT_0  + 0.167728 * t.OUT_1  + 0.043469 * t.OUT_2  + 0.090136 * t.OUT_3  + 0.073687 * t.OUT_4  + -0.128258 * t.OUT_5  + -0.070009 * t.OUT_6  + -0.106867 * t.OUT_7  + -0.184258 * t.OUT_8  + 0.174947 * t.OUT_9 AS OUT_12,
    -0.092359 + -0.224183 * t.OUT_0  + 0.079058 * t.OUT_1  + -0.016806 * t.OUT_2  + -0.178634 * t.OUT_3  + -0.259180 * t.OUT_4  + 0.304044 * t.OUT_5  + 0.203412 * t.OUT_6  + -0.349182 * t.OUT_7  + -0.041076 * t.OUT_8  + -0.181199 * t.OUT_9 AS OUT_13,
    -0.146703 + -0.157033 * t.OUT_0  + 0.120431 * t.OUT_1  + 0.002257 * t.OUT_2  + 0.195945 * t.OUT_3  + -0.135981 * t.OUT_4  + 0.001484 * t.OUT_5  + 0.139310 * t.OUT_6  + -0.271056 * t.OUT_7  + 0.241499 * t.OUT_8  + -0.044940 * t.OUT_9 AS OUT_14,
    0.153323 + 0.090584 * t.OUT_0  + 0.164103 * t.OUT_1  + -0.186847 * t.OUT_2  + -0.038677 * t.OUT_3  + -0.231286 * t.OUT_4  + -0.191049 * t.OUT_5  + 0.023951 * t.OUT_6  + 0.193063 * t.OUT_7  + 0.004153 * t.OUT_8  + 0.185850 * t.OUT_9 AS OUT_15,
    -0.050556 + 0.138211 * t.OUT_0  + 0.015718 * t.OUT_1  + -0.053695 * t.OUT_2  + 0.122982 * t.OUT_3  + -0.032072 * t.OUT_4  + -0.038333 * t.OUT_5  + 0.024362 * t.OUT_6  + -0.120531 * t.OUT_7  + 0.153206 * t.OUT_8  + -0.155636 * t.OUT_9 AS OUT_16,
    -0.270367 + -0.077112 * t.OUT_0  + -0.040625 * t.OUT_1  + -0.208021 * t.OUT_2  + -0.122326 * t.OUT_3  + -0.067153 * t.OUT_4  + -0.074663 * t.OUT_5  + 0.142143 * t.OUT_6  + -0.011908 * t.OUT_7  + -0.081700 * t.OUT_8  + 0.157458 * t.OUT_9 AS OUT_17,
    -0.064448 + -0.029504 * t.OUT_0  + 0.074493 * t.OUT_1  + -0.063372 * t.OUT_2  + -0.122042 * t.OUT_3  + 0.041190 * t.OUT_4  + -0.081212 * t.OUT_5  + -0.280377 * t.OUT_6  + -0.288920 * t.OUT_7  + -0.109240 * t.OUT_8  + 0.182496 * t.OUT_9 AS OUT_18,
    -0.010281 + -0.125268 * t.OUT_0  + -0.127727 * t.OUT_1  + -0.121009 * t.OUT_2  + 0.047629 * t.OUT_3  + -0.050699 * t.OUT_4  + -0.268064 * t.OUT_5  + -0.242456 * t.OUT_6  + 0.223953 * t.OUT_7  + -0.027786 * t.OUT_8  + 0.022806 * t.OUT_9 AS OUT_19,
    0.227362 + 0.039206 * t.OUT_0  + 0.146730 * t.OUT_1  + -0.185064 * t.OUT_2  + -0.132006 * t.OUT_3  + 0.294304 * t.OUT_4  + 0.002611 * t.OUT_5  + -0.224702 * t.OUT_6  + -0.041299 * t.OUT_7  + 0.053217 * t.OUT_8  + -0.128438 * t.OUT_9 AS OUT_20,
    0.138719 + -0.168111 * t.OUT_0  + 0.191727 * t.OUT_1  + -0.268489 * t.OUT_2  + 0.147214 * t.OUT_3  + 0.162634 * t.OUT_4  + 0.042829 * t.OUT_5  + -0.286838 * t.OUT_6  + 0.025158 * t.OUT_7  + 0.110579 * t.OUT_8  + 0.060994 * t.OUT_9 AS OUT_21,
    0.137808 + -0.084053 * t.OUT_0  + -0.195154 * t.OUT_1  + 0.268398 * t.OUT_2  + -0.172161 * t.OUT_3  + -0.217307 * t.OUT_4  + 0.024650 * t.OUT_5  + -0.106624 * t.OUT_6  + -0.153669 * t.OUT_7  + -0.209861 * t.OUT_8  + 0.088176 * t.OUT_9 AS OUT_22,
    0.017330 + 0.070200 * t.OUT_0  + 0.127429 * t.OUT_1  + -0.043524 * t.OUT_2  + -0.081169 * t.OUT_3  + -0.058246 * t.OUT_4  + -0.041117 * t.OUT_5  + 0.155126 * t.OUT_6  + -0.053493 * t.OUT_7  + -0.059744 * t.OUT_8  + -0.215056 * t.OUT_9 AS OUT_23,
    0.179275 + 0.044461 * t.OUT_0  + -0.075864 * t.OUT_1  + -0.114148 * t.OUT_2  + 0.076809 * t.OUT_3  + 0.170790 * t.OUT_4  + 0.082836 * t.OUT_5  + -0.057393 * t.OUT_6  + -0.076822 * t.OUT_7  + -0.229941 * t.OUT_8  + 0.241085 * t.OUT_9 AS OUT_24,
    0.128073 + -0.174760 * t.OUT_0  + -0.019029 * t.OUT_1  + -0.026032 * t.OUT_2  + -0.071480 * t.OUT_3  + -0.183775 * t.OUT_4  + -0.302753 * t.OUT_5  + -0.198602 * t.OUT_6  + -0.059032 * t.OUT_7  + 0.142403 * t.OUT_8  + -0.213126 * t.OUT_9 AS OUT_25,
    -0.107706 + -0.083236 * t.OUT_0  + 0.092744 * t.OUT_1  + 0.070335 * t.OUT_2  + 0.115531 * t.OUT_3  + -0.104233 * t.OUT_4  + 0.149426 * t.OUT_5  + 0.020928 * t.OUT_6  + -0.176303 * t.OUT_7  + 0.005087 * t.OUT_8  + 0.126006 * t.OUT_9 AS OUT_26,
    -0.084773 + 0.135513 * t.OUT_0  + -0.093148 * t.OUT_1  + 0.053109 * t.OUT_2  + 0.054237 * t.OUT_3  + 0.058571 * t.OUT_4  + 0.084186 * t.OUT_5  + 0.042889 * t.OUT_6  + -0.073857 * t.OUT_7  + -0.065809 * t.OUT_8  + -0.190129 * t.OUT_9 AS OUT_27,
    -0.076885 + -0.034552 * t.OUT_0  + 0.093783 * t.OUT_1  + -0.117159 * t.OUT_2  + -0.153970 * t.OUT_3  + -0.187848 * t.OUT_4  + 0.125762 * t.OUT_5  + 0.152818 * t.OUT_6  + 0.234369 * t.OUT_7  + 0.085892 * t.OUT_8  + 0.119938 * t.OUT_9 AS OUT_28,
    -0.138966 + 0.117380 * t.OUT_0  + -0.262208 * t.OUT_1  + 0.104455 * t.OUT_2  + -0.191980 * t.OUT_3  + 0.056550 * t.OUT_4  + -0.270870 * t.OUT_5  + -0.144379 * t.OUT_6  + -0.252898 * t.OUT_7  + 0.112772 * t.OUT_8  + 0.159841 * t.OUT_9 AS OUT_29,
    0.275232 + -0.132203 * t.OUT_0  + -0.175912 * t.OUT_1  + 0.138899 * t.OUT_2  + -0.191841 * t.OUT_3  + -0.164519 * t.OUT_4  + -0.290806 * t.OUT_5  + -0.252769 * t.OUT_6  + -0.010930 * t.OUT_7  + 0.042781 * t.OUT_8  + 0.037339 * t.OUT_9 AS OUT_30,
    0.205893 + 0.028065 * t.OUT_0  + 0.148790 * t.OUT_1  + 0.236939 * t.OUT_2  + 0.101845 * t.OUT_3  + -0.115870 * t.OUT_4  + -0.046055 * t.OUT_5  + 0.090131 * t.OUT_6  + 0.108623 * t.OUT_7  + 0.176966 * t.OUT_8  + -0.084668 * t.OUT_9 AS OUT_31,
    0.124029 + 0.025831 * t.OUT_0  + 0.278979 * t.OUT_1  + -0.051456 * t.OUT_2  + 0.055833 * t.OUT_3  + -0.037746 * t.OUT_4  + -0.028015 * t.OUT_5  + -0.031869 * t.OUT_6  + -0.240303 * t.OUT_7  + 0.125323 * t.OUT_8  + 0.148156 * t.OUT_9 AS OUT_32,
    -0.073595 + 0.003782 * t.OUT_0  + -0.101475 * t.OUT_1  + 0.192487 * t.OUT_2  + 0.043004 * t.OUT_3  + 0.163010 * t.OUT_4  + -0.294483 * t.OUT_5  + 0.057811 * t.OUT_6  + 0.178253 * t.OUT_7  + -0.180255 * t.OUT_8  + 0.048983 * t.OUT_9 AS OUT_33,
    0.222887 + -0.025628 * t.OUT_0  + -0.063759 * t.OUT_1  + 0.070561 * t.OUT_2  + -0.107913 * t.OUT_3  + 0.009886 * t.OUT_4  + -0.154553 * t.OUT_5  + -0.273361 * t.OUT_6  + -0.106871 * t.OUT_7  + -0.044515 * t.OUT_8  + -0.060707 * t.OUT_9 AS OUT_34,
    0.096394 + 0.155386 * t.OUT_0  + -0.123590 * t.OUT_1  + -0.022018 * t.OUT_2  + -0.032573 * t.OUT_3  + 0.126729 * t.OUT_4  + -0.162171 * t.OUT_5  + -0.247537 * t.OUT_6  + -0.281804 * t.OUT_7  + -0.005579 * t.OUT_8  + 0.167714 * t.OUT_9 AS OUT_35,
    0.282194 + -0.139473 * t.OUT_0  + -0.168088 * t.OUT_1  + 0.022452 * t.OUT_2  + 0.265935 * t.OUT_3  + -0.091137 * t.OUT_4  + 0.303077 * t.OUT_5  + 0.144838 * t.OUT_6  + -0.016414 * t.OUT_7  + 0.025766 * t.OUT_8  + -0.008877 * t.OUT_9 AS OUT_36,
    0.120338 + 0.239943 * t.OUT_0  + -0.189957 * t.OUT_1  + 0.329706 * t.OUT_2  + -0.037733 * t.OUT_3  + -0.284129 * t.OUT_4  + 0.257070 * t.OUT_5  + 0.076076 * t.OUT_6  + -0.066081 * t.OUT_7  + 0.215959 * t.OUT_8  + -0.246251 * t.OUT_9 AS OUT_37,
    0.228894 + -0.103618 * t.OUT_0  + -0.033737 * t.OUT_1  + -0.302176 * t.OUT_2  + -0.048038 * t.OUT_3  + 0.209369 * t.OUT_4  + -0.259226 * t.OUT_5  + -0.211716 * t.OUT_6  + -0.115963 * t.OUT_7  + -0.093445 * t.OUT_8  + 0.044722 * t.OUT_9 AS OUT_38,
    -0.107881 + 0.143060 * t.OUT_0  + -0.051933 * t.OUT_1  + -0.280225 * t.OUT_2  + -0.082272 * t.OUT_3  + -0.180641 * t.OUT_4  + 0.019266 * t.OUT_5  + 0.165981 * t.OUT_6  + 0.131684 * t.OUT_7  + -0.092820 * t.OUT_8  + -0.022520 * t.OUT_9 AS OUT_39,
    0.060449 + -0.079013 * t.OUT_0  + -0.064299 * t.OUT_1  + -0.097448 * t.OUT_2  + -0.051683 * t.OUT_3  + 0.007921 * t.OUT_4  + 0.056622 * t.OUT_5  + -0.201963 * t.OUT_6  + -0.089934 * t.OUT_7  + 0.110769 * t.OUT_8  + 0.169090 * t.OUT_9 AS OUT_40,
    0.091673 + 0.049275 * t.OUT_0  + -0.175582 * t.OUT_1  + -0.087878 * t.OUT_2  + -0.155202 * t.OUT_3  + 0.022110 * t.OUT_4  + -0.036239 * t.OUT_5  + -0.226498 * t.OUT_6  + 0.080774 * t.OUT_7  + -0.150183 * t.OUT_8  + -0.166664 * t.OUT_9 AS OUT_41,
    -0.095205 + 0.007902 * t.OUT_0  + -0.196260 * t.OUT_1  + 0.047500 * t.OUT_2  + -0.117264 * t.OUT_3  + 0.112039 * t.OUT_4  + 0.148697 * t.OUT_5  + 0.159553 * t.OUT_6  + -0.006009 * t.OUT_7  + 0.095822 * t.OUT_8  + -0.073056 * t.OUT_9 AS OUT_42,
    0.285064 + 0.242933 * t.OUT_0  + -0.010582 * t.OUT_1  + 0.259073 * t.OUT_2  + 0.033150 * t.OUT_3  + -0.302001 * t.OUT_4  + 0.026314 * t.OUT_5  + 0.278468 * t.OUT_6  + -0.130092 * t.OUT_7  + 0.182979 * t.OUT_8  + -0.213091 * t.OUT_9 AS OUT_43,
    -0.043602 + -0.081528 * t.OUT_0  + -0.184612 * t.OUT_1  + -0.067495 * t.OUT_2  + -0.082745 * t.OUT_3  + -0.089694 * t.OUT_4  + -0.262363 * t.OUT_5  + -0.000405 * t.OUT_6  + -0.015518 * t.OUT_7  + 0.228040 * t.OUT_8  + -0.033058 * t.OUT_9 AS OUT_44,
    0.077755 + -0.106838 * t.OUT_0  + -0.090500 * t.OUT_1  + -0.130414 * t.OUT_2  + 0.080609 * t.OUT_3  + 0.213463 * t.OUT_4  + -0.110062 * t.OUT_5  + -0.234016 * t.OUT_6  + -0.126206 * t.OUT_7  + -0.018450 * t.OUT_8  + 0.121129 * t.OUT_9 AS OUT_45,
    0.158831 + 0.028158 * t.OUT_0  + 0.089308 * t.OUT_1  + -0.198907 * t.OUT_2  + -0.053615 * t.OUT_3  + 0.198107 * t.OUT_4  + 0.073403 * t.OUT_5  + 0.101611 * t.OUT_6  + -0.121301 * t.OUT_7  + -0.124084 * t.OUT_8  + -0.174583 * t.OUT_9 AS OUT_46,
    0.025897 + 0.161827 * t.OUT_0  + 0.189565 * t.OUT_1  + -0.221374 * t.OUT_2  + -0.057826 * t.OUT_3  + -0.128128 * t.OUT_4  + -0.248783 * t.OUT_5  + 0.100868 * t.OUT_6  + -0.003179 * t.OUT_7  + 0.179897 * t.OUT_8  + 0.258150 * t.OUT_9 AS OUT_47,
    0.203106 + 0.266534 * t.OUT_0  + -0.083935 * t.OUT_1  + 0.109635 * t.OUT_2  + -0.026235 * t.OUT_3  + 0.086545 * t.OUT_4  + 0.002379 * t.OUT_5  + 0.194182 * t.OUT_6  + -0.186954 * t.OUT_7  + -0.048265 * t.OUT_8  + -0.142871 * t.OUT_9 AS OUT_48,
    0.085134 + 0.231894 * t.OUT_0  + -0.005856 * t.OUT_1  + 0.150325 * t.OUT_2  + 0.032790 * t.OUT_3  + -0.026463 * t.OUT_4  + 0.243213 * t.OUT_5  + 0.012819 * t.OUT_6  + 0.233686 * t.OUT_7  + -0.030156 * t.OUT_8  + 0.124333 * t.OUT_9 AS OUT_49,
    0.343010 + 0.081439 * t.OUT_0  + 0.073955 * t.OUT_1  + -0.279601 * t.OUT_2  + 0.135563 * t.OUT_3  + 0.206571 * t.OUT_4  + -0.245191 * t.OUT_5  + -0.149590 * t.OUT_6  + -0.041562 * t.OUT_7  + -0.023056 * t.OUT_8  + 0.022075 * t.OUT_9 AS OUT_50,
    -0.144437 + -0.119619 * t.OUT_0  + -0.062455 * t.OUT_1  + -0.036082 * t.OUT_2  + 0.032185 * t.OUT_3  + 0.260955 * t.OUT_4  + -0.066171 * t.OUT_5  + 0.106758 * t.OUT_6  + -0.088245 * t.OUT_7  + -0.187093 * t.OUT_8  + 0.141108 * t.OUT_9 AS OUT_51,
    -0.188464 + 0.131728 * t.OUT_0  + -0.106339 * t.OUT_1  + 0.211682 * t.OUT_2  + -0.184366 * t.OUT_3  + -0.139655 * t.OUT_4  + 0.035444 * t.OUT_5  + -0.078645 * t.OUT_6  + -0.189576 * t.OUT_7  + 0.131787 * t.OUT_8  + 0.184627 * t.OUT_9 AS OUT_52,
    0.008351 + 0.179577 * t.OUT_0  + 0.226326 * t.OUT_1  + -0.156722 * t.OUT_2  + -0.158450 * t.OUT_3  + 0.202385 * t.OUT_4  + 0.027349 * t.OUT_5  + -0.190094 * t.OUT_6  + -0.263692 * t.OUT_7  + 0.139977 * t.OUT_8  + 0.004006 * t.OUT_9 AS OUT_53,
    -0.068901 + -0.193851 * t.OUT_0  + 0.176012 * t.OUT_1  + 0.032308 * t.OUT_2  + -0.218889 * t.OUT_3  + 0.087686 * t.OUT_4  + -0.071793 * t.OUT_5  + 0.209717 * t.OUT_6  + -0.029872 * t.OUT_7  + -0.184639 * t.OUT_8  + 0.017212 * t.OUT_9 AS OUT_54,
    0.005846 + 0.033161 * t.OUT_0  + -0.130270 * t.OUT_1  + -0.037491 * t.OUT_2  + 0.125884 * t.OUT_3  + 0.120016 * t.OUT_4  + 0.276467 * t.OUT_5  + 0.146493 * t.OUT_6  + 0.234487 * t.OUT_7  + 0.169761 * t.OUT_8  + 0.179665 * t.OUT_9 AS OUT_55,
    0.288952 + -0.042765 * t.OUT_0  + -0.128153 * t.OUT_1  + -0.023122 * t.OUT_2  + -0.167781 * t.OUT_3  + 0.209118 * t.OUT_4  + -0.134992 * t.OUT_5  + -0.270763 * t.OUT_6  + 0.126806 * t.OUT_7  + 0.039000 * t.OUT_8  + -0.101068 * t.OUT_9 AS OUT_56,
    0.049324 + 0.045238 * t.OUT_0  + -0.093493 * t.OUT_1  + -0.183679 * t.OUT_2  + -0.092114 * t.OUT_3  + 0.060501 * t.OUT_4  + -0.290880 * t.OUT_5  + 0.092329 * t.OUT_6  + 0.025718 * t.OUT_7  + 0.143556 * t.OUT_8  + 0.139422 * t.OUT_9 AS OUT_57,
    0.020541 + 0.048416 * t.OUT_0  + 0.103303 * t.OUT_1  + 0.057861 * t.OUT_2  + -0.130962 * t.OUT_3  + -0.011136 * t.OUT_4  + -0.099255 * t.OUT_5  + -0.053306 * t.OUT_6  + -0.240622 * t.OUT_7  + 0.177409 * t.OUT_8  + -0.213193 * t.OUT_9 AS OUT_58,
    0.119976 + 0.108522 * t.OUT_0  + -0.165013 * t.OUT_1  + 0.100969 * t.OUT_2  + -0.011050 * t.OUT_3  + 0.007053 * t.OUT_4  + 0.085090 * t.OUT_5  + -0.218668 * t.OUT_6  + -0.117175 * t.OUT_7  + -0.220544 * t.OUT_8  + 0.010091 * t.OUT_9 AS OUT_59,
    0.078220 + -0.142704 * t.OUT_0  + 0.071198 * t.OUT_1  + 0.031928 * t.OUT_2  + -0.205677 * t.OUT_3  + 0.040571 * t.OUT_4  + 0.007306 * t.OUT_5  + 0.056739 * t.OUT_6  + -0.105176 * t.OUT_7  + -0.198402 * t.OUT_8  + -0.214643 * t.OUT_9 AS OUT_60,
    0.072104 + 0.001672 * t.OUT_0  + -0.149203 * t.OUT_1  + 0.167905 * t.OUT_2  + -0.097874 * t.OUT_3  + 0.035936 * t.OUT_4  + -0.081309 * t.OUT_5  + -0.101564 * t.OUT_6  + 0.010437 * t.OUT_7  + 0.218146 * t.OUT_8  + 0.054027 * t.OUT_9 AS OUT_61,
    -0.044242 + 0.110599 * t.OUT_0  + 0.260539 * t.OUT_1  + 0.118828 * t.OUT_2  + 0.133946 * t.OUT_3  + 0.048580 * t.OUT_4  + -0.061080 * t.OUT_5  + 0.167357 * t.OUT_6  + 0.014560 * t.OUT_7  + -0.115818 * t.OUT_8  + 0.137289 * t.OUT_9 AS OUT_62,
    0.204667 + 0.192835 * t.OUT_0  + 0.163665 * t.OUT_1  + 0.222465 * t.OUT_2  + -0.057228 * t.OUT_3  + -0.187648 * t.OUT_4  + 0.038376 * t.OUT_5  + 0.185492 * t.OUT_6  + -0.008577 * t.OUT_7  + -0.053879 * t.OUT_8  + -0.081222 * t.OUT_9 AS OUT_63,
    -0.198860 + -0.193099 * t.OUT_0  + -0.081232 * t.OUT_1  + 0.037192 * t.OUT_2  + 0.221013 * t.OUT_3  + -0.111779 * t.OUT_4  + 0.174055 * t.OUT_5  + -0.072725 * t.OUT_6  + 0.061499 * t.OUT_7  + -0.095329 * t.OUT_8  + -0.200497 * t.OUT_9 AS OUT_64,
    0.092222 + 0.106149 * t.OUT_0  + 0.145107 * t.OUT_1  + -0.204278 * t.OUT_2  + -0.191844 * t.OUT_3  + 0.074075 * t.OUT_4  + 0.146232 * t.OUT_5  + 0.124397 * t.OUT_6  + 0.130652 * t.OUT_7  + -0.264144 * t.OUT_8  + -0.156653 * t.OUT_9 AS OUT_65,
    0.308490 + -0.177072 * t.OUT_0  + -0.243183 * t.OUT_1  + 0.044935 * t.OUT_2  + 0.160033 * t.OUT_3  + 0.126621 * t.OUT_4  + 0.100815 * t.OUT_5  + 0.244093 * t.OUT_6  + -0.060457 * t.OUT_7  + 0.266455 * t.OUT_8  + 0.145307 * t.OUT_9 AS OUT_66,
    0.152376 + -0.294360 * t.OUT_0  + 0.190335 * t.OUT_1  + -0.094896 * t.OUT_2  + -0.104382 * t.OUT_3  + -0.123859 * t.OUT_4  + 0.014666 * t.OUT_5  + 0.168654 * t.OUT_6  + 0.172356 * t.OUT_7  + 0.219130 * t.OUT_8  + -0.093426 * t.OUT_9 AS OUT_67,
    -0.042015 + 0.210810 * t.OUT_0  + -0.134673 * t.OUT_1  + 0.037215 * t.OUT_2  + 0.056545 * t.OUT_3  + -0.058187 * t.OUT_4  + 0.088001 * t.OUT_5  + 0.151505 * t.OUT_6  + -0.002964 * t.OUT_7  + -0.019630 * t.OUT_8  + 0.194737 * t.OUT_9 AS OUT_68,
    -0.030353 + 0.133194 * t.OUT_0  + 0.132455 * t.OUT_1  + -0.024623 * t.OUT_2  + -0.172194 * t.OUT_3  + -0.162332 * t.OUT_4  + -0.103269 * t.OUT_5  + -0.089829 * t.OUT_6  + 0.159641 * t.OUT_7  + 0.203764 * t.OUT_8  + -0.093441 * t.OUT_9 AS OUT_69,
    0.110318 + 0.011560 * t.OUT_0  + 0.111659 * t.OUT_1  + 0.176149 * t.OUT_2  + -0.163572 * t.OUT_3  + -0.020816 * t.OUT_4  + 0.018541 * t.OUT_5  + -0.194110 * t.OUT_6  + 0.105741 * t.OUT_7  + -0.154323 * t.OUT_8  + 0.127606 * t.OUT_9 AS OUT_70,
    -0.045740 + -0.263193 * t.OUT_0  + -0.120977 * t.OUT_1  + 0.192826 * t.OUT_2  + -0.075870 * t.OUT_3  + -0.186917 * t.OUT_4  + 0.140029 * t.OUT_5  + 0.081558 * t.OUT_6  + -0.272446 * t.OUT_7  + 0.130704 * t.OUT_8  + -0.000176 * t.OUT_9 AS OUT_71,
    -0.225136 + -0.029096 * t.OUT_0  + 0.042156 * t.OUT_1  + 0.266905 * t.OUT_2  + -0.251741 * t.OUT_3  + -0.125473 * t.OUT_4  + -0.070771 * t.OUT_5  + 0.034146 * t.OUT_6  + 0.102380 * t.OUT_7  + 0.157530 * t.OUT_8  + 0.110582 * t.OUT_9 AS OUT_72,
    -0.133491 + 0.167819 * t.OUT_0  + 0.123703 * t.OUT_1  + -0.183289 * t.OUT_2  + 0.030467 * t.OUT_3  + -0.038505 * t.OUT_4  + 0.003191 * t.OUT_5  + 0.069834 * t.OUT_6  + 0.005998 * t.OUT_7  + 0.006146 * t.OUT_8  + -0.063456 * t.OUT_9 AS OUT_73,
    0.084891 + -0.283855 * t.OUT_0  + 0.005182 * t.OUT_1  + 0.107842 * t.OUT_2  + -0.155108 * t.OUT_3  + 0.037390 * t.OUT_4  + 0.222415 * t.OUT_5  + 0.011619 * t.OUT_6  + -0.184609 * t.OUT_7  + -0.109612 * t.OUT_8  + -0.078595 * t.OUT_9 AS OUT_74,
    0.158252 + 0.074316 * t.OUT_0  + -0.020155 * t.OUT_1  + 0.084606 * t.OUT_2  + 0.120917 * t.OUT_3  + 0.057395 * t.OUT_4  + -0.068706 * t.OUT_5  + 0.036157 * t.OUT_6  + 0.042176 * t.OUT_7  + 0.223502 * t.OUT_8  + 0.024204 * t.OUT_9 AS OUT_75,
    0.061641 + 0.044456 * t.OUT_0  + 0.154249 * t.OUT_1  + 0.142690 * t.OUT_2  + -0.263383 * t.OUT_3  + -0.046293 * t.OUT_4  + 0.180267 * t.OUT_5  + -0.059099 * t.OUT_6  + 0.196074 * t.OUT_7  + 0.018173 * t.OUT_8  + 0.200798 * t.OUT_9 AS OUT_76,
    0.073143 + 0.075136 * t.OUT_0  + 0.224686 * t.OUT_1  + 0.174952 * t.OUT_2  + -0.052769 * t.OUT_3  + 0.100801 * t.OUT_4  + -0.065290 * t.OUT_5  + 0.123784 * t.OUT_6  + -0.147025 * t.OUT_7  + -0.227337 * t.OUT_8  + -0.177111 * t.OUT_9 AS OUT_77,
    0.254770 + 0.135234 * t.OUT_0  + -0.036902 * t.OUT_1  + -0.196785 * t.OUT_2  + 0.133263 * t.OUT_3  + 0.016432 * t.OUT_4  + -0.214929 * t.OUT_5  + -0.218708 * t.OUT_6  + 0.156484 * t.OUT_7  + 0.193884 * t.OUT_8  + 0.232941 * t.OUT_9 AS OUT_78,
    0.071766 + -0.186615 * t.OUT_0  + 0.025726 * t.OUT_1  + 0.237923 * t.OUT_2  + 0.090635 * t.OUT_3  + -0.110632 * t.OUT_4  + 0.316444 * t.OUT_5  + 0.259928 * t.OUT_6  + -0.207847 * t.OUT_7  + -0.104285 * t.OUT_8  + -0.192663 * t.OUT_9 AS OUT_79,
    0.235547 + 0.086293 * t.OUT_0  + 0.073465 * t.OUT_1  + 0.167285 * t.OUT_2  + 0.017985 * t.OUT_3  + -0.185324 * t.OUT_4  + -0.032346 * t.OUT_5  + 0.296722 * t.OUT_6  + -0.003044 * t.OUT_7  + -0.126994 * t.OUT_8  + -0.025850 * t.OUT_9 AS OUT_80,
    -0.054936 + 0.241133 * t.OUT_0  + 0.091983 * t.OUT_1  + 0.192459 * t.OUT_2  + -0.078995 * t.OUT_3  + 0.232676 * t.OUT_4  + -0.015497 * t.OUT_5  + -0.048617 * t.OUT_6  + -0.183930 * t.OUT_7  + 0.091539 * t.OUT_8  + 0.276999 * t.OUT_9 AS OUT_81,
    -0.052572 + 0.135632 * t.OUT_0  + -0.047514 * t.OUT_1  + 0.037071 * t.OUT_2  + 0.218097 * t.OUT_3  + 0.207751 * t.OUT_4  + -0.063479 * t.OUT_5  + -0.181886 * t.OUT_6  + -0.172073 * t.OUT_7  + 0.071147 * t.OUT_8  + -0.059536 * t.OUT_9 AS OUT_82,
    0.283126 + -0.059227 * t.OUT_0  + 0.136290 * t.OUT_1  + 0.136245 * t.OUT_2  + -0.088412 * t.OUT_3  + -0.009530 * t.OUT_4  + -0.017583 * t.OUT_5  + 0.203913 * t.OUT_6  + -0.205059 * t.OUT_7  + -0.043038 * t.OUT_8  + -0.001017 * t.OUT_9 AS OUT_83,
    -0.117526 + -0.308420 * t.OUT_0  + -0.015553 * t.OUT_1  + 0.199411 * t.OUT_2  + -0.222872 * t.OUT_3  + -0.041444 * t.OUT_4  + 0.179170 * t.OUT_5  + 0.020100 * t.OUT_6  + 0.016867 * t.OUT_7  + 0.175255 * t.OUT_8  + 0.246466 * t.OUT_9 AS OUT_84,
    -0.259457 + 0.053799 * t.OUT_0  + 0.078847 * t.OUT_1  + 0.073851 * t.OUT_2  + -0.144998 * t.OUT_3  + 0.114561 * t.OUT_4  + 0.138021 * t.OUT_5  + -0.231705 * t.OUT_6  + 0.057566 * t.OUT_7  + 0.113429 * t.OUT_8  + -0.193928 * t.OUT_9 AS OUT_85,
    0.061362 + -0.023302 * t.OUT_0  + -0.222259 * t.OUT_1  + 0.031760 * t.OUT_2  + -0.071351 * t.OUT_3  + -0.032548 * t.OUT_4  + -0.334785 * t.OUT_5  + -0.152880 * t.OUT_6  + 0.039769 * t.OUT_7  + 0.182002 * t.OUT_8  + -0.202208 * t.OUT_9 AS OUT_86,
    -0.091664 + -0.129132 * t.OUT_0  + -0.002065 * t.OUT_1  + -0.324352 * t.OUT_2  + 0.108321 * t.OUT_3  + 0.089127 * t.OUT_4  + -0.198879 * t.OUT_5  + -0.256931 * t.OUT_6  + -0.034932 * t.OUT_7  + -0.149129 * t.OUT_8  + -0.175054 * t.OUT_9 AS OUT_87,
    -0.266511 + -0.163270 * t.OUT_0  + 0.171823 * t.OUT_1  + 0.044223 * t.OUT_2  + 0.000049 * t.OUT_3  + 0.098374 * t.OUT_4  + -0.030718 * t.OUT_5  + 0.159737 * t.OUT_6  + -0.088601 * t.OUT_7  + -0.073442 * t.OUT_8  + -0.144660 * t.OUT_9 AS OUT_88,
    0.155329 + -0.081529 * t.OUT_0  + 0.253479 * t.OUT_1  + 0.098602 * t.OUT_2  + 0.089237 * t.OUT_3  + 0.026571 * t.OUT_4  + -0.240608 * t.OUT_5  + -0.162411 * t.OUT_6  + -0.159231 * t.OUT_7  + -0.221516 * t.OUT_8  + 0.262464 * t.OUT_9 AS OUT_89,
    -0.148960 + -0.114275 * t.OUT_0  + -0.103770 * t.OUT_1  + -0.081443 * t.OUT_2  + 0.111238 * t.OUT_3  + -0.124837 * t.OUT_4  + -0.250371 * t.OUT_5  + -0.214105 * t.OUT_6  + 0.107382 * t.OUT_7  + -0.175131 * t.OUT_8  + -0.182365 * t.OUT_9 AS OUT_90,
    0.266748 + 0.192505 * t.OUT_0  + -0.115752 * t.OUT_1  + 0.265692 * t.OUT_2  + 0.202073 * t.OUT_3  + -0.285215 * t.OUT_4  + 0.233104 * t.OUT_5  + 0.056882 * t.OUT_6  + -0.018910 * t.OUT_7  + -0.129444 * t.OUT_8  + 0.139974 * t.OUT_9 AS OUT_91,
    0.113790 + -0.011130 * t.OUT_0  + 0.097061 * t.OUT_1  + -0.037196 * t.OUT_2  + -0.180979 * t.OUT_3  + 0.159107 * t.OUT_4  + -0.102179 * t.OUT_5  + 0.215114 * t.OUT_6  + -0.261763 * t.OUT_7  + -0.128483 * t.OUT_8  + 0.156149 * t.OUT_9 AS OUT_92,
    -0.181861 + -0.043036 * t.OUT_0  + 0.001230 * t.OUT_1  + -0.053274 * t.OUT_2  + 0.081777 * t.OUT_3  + -0.250962 * t.OUT_4  + -0.169773 * t.OUT_5  + -0.213774 * t.OUT_6  + -0.110032 * t.OUT_7  + -0.158776 * t.OUT_8  + -0.069451 * t.OUT_9 AS OUT_93,
    -0.233803 + -0.001560 * t.OUT_0  + 0.007741 * t.OUT_1  + -0.231147 * t.OUT_2  + -0.171821 * t.OUT_3  + -0.073579 * t.OUT_4  + 0.112504 * t.OUT_5  + -0.025863 * t.OUT_6  + -0.147064 * t.OUT_7  + -0.113087 * t.OUT_8  + -0.224529 * t.OUT_9 AS OUT_94,
    0.006300 + -0.297918 * t.OUT_0  + 0.197019 * t.OUT_1  + 0.125355 * t.OUT_2  + 0.207399 * t.OUT_3  + 0.125761 * t.OUT_4  + 0.376926 * t.OUT_5  + 0.096261 * t.OUT_6  + 0.245169 * t.OUT_7  + -0.044277 * t.OUT_8  + -0.126360 * t.OUT_9 AS OUT_95,
    0.090861 + 0.038935 * t.OUT_0  + -0.242331 * t.OUT_1  + -0.164002 * t.OUT_2  + -0.170125 * t.OUT_3  + -0.197919 * t.OUT_4  + 0.029940 * t.OUT_5  + -0.100640 * t.OUT_6  + 0.242781 * t.OUT_7  + 0.093113 * t.OUT_8  + 0.201851 * t.OUT_9 AS OUT_96,
    0.038183 + -0.126201 * t.OUT_0  + -0.144943 * t.OUT_1  + 0.107724 * t.OUT_2  + -0.031107 * t.OUT_3  + 0.149595 * t.OUT_4  + 0.139854 * t.OUT_5  + 0.126963 * t.OUT_6  + 0.219057 * t.OUT_7  + 0.077703 * t.OUT_8  + 0.276364 * t.OUT_9 AS OUT_97,
    0.273019 + -0.071195 * t.OUT_0  + -0.082541 * t.OUT_1  + -0.072503 * t.OUT_2  + 0.101873 * t.OUT_3  + -0.097069 * t.OUT_4  + -0.177421 * t.OUT_5  + -0.217201 * t.OUT_6  + 0.178674 * t.OUT_7  + 0.168314 * t.OUT_8  + -0.050906 * t.OUT_9 AS OUT_98,
    0.169772 + 0.003896 * t.OUT_0  + -0.164214 * t.OUT_1  + 0.053121 * t.OUT_2  + -0.095863 * t.OUT_3  + 0.126264 * t.OUT_4  + 0.031658 * t.OUT_5  + 0.244119 * t.OUT_6  + 0.105030 * t.OUT_7  + 0.102926 * t.OUT_8  + -0.063761 * t.OUT_9 AS OUT_99
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
    0.027606 + 0.309924 * t.OUT_0  + 0.009567 * t.OUT_1  + -0.312113 * t.OUT_2  + 0.145843 * t.OUT_3  + -0.137331 * t.OUT_4  + -0.135829 * t.OUT_5  + -0.198390 * t.OUT_6  + 0.129308 * t.OUT_7  + -0.232958 * t.OUT_8  + 0.217755 * t.OUT_9  + -0.180274 * t.OUT_10  + 0.327931 * t.OUT_11  + -0.257161 * t.OUT_12  + 0.086736 * t.OUT_13  + 0.265549 * t.OUT_14  + -0.022257 * t.OUT_15  + 0.126631 * t.OUT_16  + -0.207089 * t.OUT_17  + -0.124556 * t.OUT_18  + -0.172247 * t.OUT_19  + -0.098931 * t.OUT_20  + -0.292007 * t.OUT_21  + 0.242271 * t.OUT_22  + 0.078616 * t.OUT_23  + -0.092229 * t.OUT_24  + -0.104788 * t.OUT_25  + 0.003683 * t.OUT_26  + -0.135820 * t.OUT_27  + 0.246301 * t.OUT_28  + -0.338733 * t.OUT_29  + -0.305537 * t.OUT_30  + 0.175413 * t.OUT_31  + -0.091501 * t.OUT_32  + -0.206361 * t.OUT_33  + -0.190402 * t.OUT_34  + -0.165747 * t.OUT_35  + 0.114167 * t.OUT_36  + 0.101714 * t.OUT_37  + -0.275153 * t.OUT_38  + -0.094729 * t.OUT_39  + -0.150006 * t.OUT_40  + -0.328621 * t.OUT_41  + -0.011925 * t.OUT_42  + 0.230260 * t.OUT_43  + -0.200757 * t.OUT_44  + -0.158404 * t.OUT_45  + -0.068080 * t.OUT_46  + -0.210540 * t.OUT_47  + 0.291444 * t.OUT_48  + 0.308424 * t.OUT_49  + -0.135958 * t.OUT_50  + -0.039044 * t.OUT_51  + 0.261792 * t.OUT_52  + -0.245780 * t.OUT_53  + 0.046353 * t.OUT_54  + 0.046064 * t.OUT_55  + -0.107225 * t.OUT_56  + -0.180774 * t.OUT_57  + 0.118840 * t.OUT_58  + -0.072896 * t.OUT_59  + -0.026237 * t.OUT_60  + -0.023945 * t.OUT_61  + -0.044640 * t.OUT_62  + 0.191208 * t.OUT_63  + 0.003395 * t.OUT_64  + -0.025291 * t.OUT_65  + 0.088055 * t.OUT_66  + 0.207036 * t.OUT_67  + -0.037671 * t.OUT_68  + -0.134641 * t.OUT_69  + -0.117124 * t.OUT_70  + 0.273259 * t.OUT_71  + 0.227388 * t.OUT_72  + -0.068903 * t.OUT_73  + 0.128584 * t.OUT_74  + -0.165695 * t.OUT_75  + 0.277943 * t.OUT_76  + -0.045069 * t.OUT_77  + -0.175027 * t.OUT_78  + 0.105766 * t.OUT_79  + 0.316233 * t.OUT_80  + -0.078436 * t.OUT_81  + 0.064087 * t.OUT_82  + 0.244738 * t.OUT_83  + 0.264424 * t.OUT_84  + -0.168188 * t.OUT_85  + -0.121295 * t.OUT_86  + -0.169301 * t.OUT_87  + -0.156037 * t.OUT_88  + -0.100395 * t.OUT_89  + -0.143746 * t.OUT_90  + 0.164931 * t.OUT_91  + 0.142998 * t.OUT_92  + -0.162247 * t.OUT_93  + -0.088134 * t.OUT_94  + 0.075076 * t.OUT_95  + 0.036928 * t.OUT_96  + 0.028774 * t.OUT_97  + -0.162769 * t.OUT_98  + 0.242309 * t.OUT_99 AS OUT_0
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