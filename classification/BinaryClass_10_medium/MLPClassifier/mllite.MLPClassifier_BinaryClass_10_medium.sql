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
    0.239294 + -0.036317 * t.OUT_0  + 0.033477 * t.OUT_1  + -0.028430 * t.OUT_2  + 0.164405 * t.OUT_3  + -0.158297 * t.OUT_4  + 0.153137 * t.OUT_5  + 0.208571 * t.OUT_6  + -0.092411 * t.OUT_7  + 0.066814 * t.OUT_8  + 0.084417 * t.OUT_9 AS OUT_0,
    0.109458 + 0.137885 * t.OUT_0  + -0.126584 * t.OUT_1  + -0.039412 * t.OUT_2  + -0.237294 * t.OUT_3  + 0.070409 * t.OUT_4  + 0.155711 * t.OUT_5  + -0.114340 * t.OUT_6  + -0.094445 * t.OUT_7  + -0.144914 * t.OUT_8  + 0.115357 * t.OUT_9 AS OUT_1,
    0.265515 + -0.104093 * t.OUT_0  + -0.069964 * t.OUT_1  + -0.251950 * t.OUT_2  + -0.202496 * t.OUT_3  + 0.178580 * t.OUT_4  + -0.216869 * t.OUT_5  + -0.247785 * t.OUT_6  + -0.115691 * t.OUT_7  + -0.103810 * t.OUT_8  + -0.168373 * t.OUT_9 AS OUT_2,
    0.112019 + -0.008167 * t.OUT_0  + 0.124598 * t.OUT_1  + 0.197374 * t.OUT_2  + 0.000689 * t.OUT_3  + 0.121210 * t.OUT_4  + 0.208079 * t.OUT_5  + 0.097311 * t.OUT_6  + -0.053536 * t.OUT_7  + -0.054374 * t.OUT_8  + -0.088859 * t.OUT_9 AS OUT_3,
    0.225779 + -0.020022 * t.OUT_0  + 0.171725 * t.OUT_1  + 0.161965 * t.OUT_2  + -0.171736 * t.OUT_3  + -0.040139 * t.OUT_4  + -0.246789 * t.OUT_5  + 0.045456 * t.OUT_6  + -0.069995 * t.OUT_7  + 0.146531 * t.OUT_8  + -0.124618 * t.OUT_9 AS OUT_4,
    0.052495 + -0.118260 * t.OUT_0  + 0.233481 * t.OUT_1  + -0.012002 * t.OUT_2  + 0.038300 * t.OUT_3  + 0.055905 * t.OUT_4  + 0.167831 * t.OUT_5  + -0.222988 * t.OUT_6  + -0.225415 * t.OUT_7  + -0.185010 * t.OUT_8  + -0.115970 * t.OUT_9 AS OUT_5,
    -0.055532 + 0.071743 * t.OUT_0  + 0.209936 * t.OUT_1  + -0.049618 * t.OUT_2  + -0.031141 * t.OUT_3  + 0.297013 * t.OUT_4  + -0.208868 * t.OUT_5  + -0.264457 * t.OUT_6  + -0.050361 * t.OUT_7  + -0.198998 * t.OUT_8  + 0.251909 * t.OUT_9 AS OUT_6,
    0.128206 + 0.048778 * t.OUT_0  + 0.081626 * t.OUT_1  + 0.138240 * t.OUT_2  + -0.025597 * t.OUT_3  + 0.191555 * t.OUT_4  + -0.116557 * t.OUT_5  + 0.078174 * t.OUT_6  + -0.110219 * t.OUT_7  + -0.013587 * t.OUT_8  + 0.136627 * t.OUT_9 AS OUT_7,
    0.010884 + 0.125376 * t.OUT_0  + -0.096208 * t.OUT_1  + -0.033006 * t.OUT_2  + -0.114050 * t.OUT_3  + 0.264261 * t.OUT_4  + -0.206104 * t.OUT_5  + -0.029789 * t.OUT_6  + 0.080529 * t.OUT_7  + -0.074670 * t.OUT_8  + -0.114858 * t.OUT_9 AS OUT_8,
    0.176750 + 0.094112 * t.OUT_0  + -0.027874 * t.OUT_1  + 0.176166 * t.OUT_2  + 0.196812 * t.OUT_3  + -0.124564 * t.OUT_4  + 0.025175 * t.OUT_5  + -0.007509 * t.OUT_6  + 0.173226 * t.OUT_7  + 0.068048 * t.OUT_8  + 0.103423 * t.OUT_9 AS OUT_9,
    -0.167561 + 0.184354 * t.OUT_0  + 0.118203 * t.OUT_1  + -0.030751 * t.OUT_2  + 0.061390 * t.OUT_3  + -0.056516 * t.OUT_4  + 0.032380 * t.OUT_5  + 0.019300 * t.OUT_6  + 0.062477 * t.OUT_7  + -0.162016 * t.OUT_8  + 0.086423 * t.OUT_9 AS OUT_10,
    0.289814 + -0.037189 * t.OUT_0  + 0.117324 * t.OUT_1  + 0.192216 * t.OUT_2  + -0.027319 * t.OUT_3  + -0.172007 * t.OUT_4  + 0.215062 * t.OUT_5  + 0.209479 * t.OUT_6  + 0.096236 * t.OUT_7  + -0.053310 * t.OUT_8  + 0.001962 * t.OUT_9 AS OUT_11,
    0.020774 + 0.247554 * t.OUT_0  + 0.164230 * t.OUT_1  + 0.048260 * t.OUT_2  + 0.043151 * t.OUT_3  + 0.091030 * t.OUT_4  + -0.114449 * t.OUT_5  + -0.060556 * t.OUT_6  + -0.089545 * t.OUT_7  + -0.146998 * t.OUT_8  + 0.149395 * t.OUT_9 AS OUT_12,
    -0.148671 + -0.228489 * t.OUT_0  + 0.024990 * t.OUT_1  + -0.077043 * t.OUT_2  + -0.191145 * t.OUT_3  + -0.216801 * t.OUT_4  + 0.219462 * t.OUT_5  + 0.125700 * t.OUT_6  + -0.213599 * t.OUT_7  + -0.066699 * t.OUT_8  + -0.192554 * t.OUT_9 AS OUT_13,
    -0.154966 + -0.116455 * t.OUT_0  + 0.128848 * t.OUT_1  + -0.006568 * t.OUT_2  + 0.195412 * t.OUT_3  + -0.121188 * t.OUT_4  + -0.023094 * t.OUT_5  + 0.122881 * t.OUT_6  + -0.248802 * t.OUT_7  + 0.234768 * t.OUT_8  + -0.040262 * t.OUT_9 AS OUT_14,
    0.166838 + 0.072238 * t.OUT_0  + 0.145477 * t.OUT_1  + -0.178990 * t.OUT_2  + -0.050400 * t.OUT_3  + -0.241790 * t.OUT_4  + -0.182559 * t.OUT_5  + 0.032142 * t.OUT_6  + 0.209004 * t.OUT_7  + -0.047360 * t.OUT_8  + 0.197763 * t.OUT_9 AS OUT_15,
    -0.067306 + 0.103709 * t.OUT_0  + 0.014392 * t.OUT_1  + -0.068160 * t.OUT_2  + 0.089358 * t.OUT_3  + -0.022428 * t.OUT_4  + -0.052220 * t.OUT_5  + 0.009409 * t.OUT_6  + -0.101892 * t.OUT_7  + 0.154078 * t.OUT_8  + -0.142027 * t.OUT_9 AS OUT_16,
    -0.252625 + -0.078805 * t.OUT_0  + -0.040453 * t.OUT_1  + -0.188842 * t.OUT_2  + -0.145959 * t.OUT_3  + -0.031070 * t.OUT_4  + -0.064762 * t.OUT_5  + 0.158822 * t.OUT_6  + -0.002596 * t.OUT_7  + -0.080118 * t.OUT_8  + 0.130035 * t.OUT_9 AS OUT_17,
    -0.102688 + -0.066321 * t.OUT_0  + -0.018490 * t.OUT_1  + -0.031777 * t.OUT_2  + -0.201011 * t.OUT_3  + 0.025156 * t.OUT_4  + -0.040090 * t.OUT_5  + -0.242386 * t.OUT_6  + -0.225227 * t.OUT_7  + -0.140837 * t.OUT_8  + 0.066823 * t.OUT_9 AS OUT_18,
    -0.024175 + -0.219014 * t.OUT_0  + -0.122229 * t.OUT_1  + -0.096664 * t.OUT_2  + 0.043898 * t.OUT_3  + 0.037711 * t.OUT_4  + -0.250436 * t.OUT_5  + -0.219684 * t.OUT_6  + 0.279837 * t.OUT_7  + -0.024322 * t.OUT_8  + 0.039710 * t.OUT_9 AS OUT_19,
    0.248314 + 0.010338 * t.OUT_0  + 0.098923 * t.OUT_1  + -0.186370 * t.OUT_2  + -0.103992 * t.OUT_3  + 0.309635 * t.OUT_4  + 0.031969 * t.OUT_5  + -0.212741 * t.OUT_6  + -0.042669 * t.OUT_7  + 0.050442 * t.OUT_8  + -0.118221 * t.OUT_9 AS OUT_20,
    0.146775 + -0.205219 * t.OUT_0  + 0.148848 * t.OUT_1  + -0.258972 * t.OUT_2  + 0.159763 * t.OUT_3  + 0.215470 * t.OUT_4  + 0.057255 * t.OUT_5  + -0.272671 * t.OUT_6  + 0.067109 * t.OUT_7  + 0.177408 * t.OUT_8  + -0.027427 * t.OUT_9 AS OUT_21,
    0.131745 + -0.088524 * t.OUT_0  + -0.210547 * t.OUT_1  + 0.262978 * t.OUT_2  + -0.150671 * t.OUT_3  + -0.194964 * t.OUT_4  + 0.008717 * t.OUT_5  + -0.117151 * t.OUT_6  + -0.108728 * t.OUT_7  + -0.239243 * t.OUT_8  + 0.143168 * t.OUT_9 AS OUT_22,
    0.008475 + 0.060148 * t.OUT_0  + 0.131504 * t.OUT_1  + -0.041377 * t.OUT_2  + -0.078031 * t.OUT_3  + -0.063095 * t.OUT_4  + -0.051890 * t.OUT_5  + 0.151721 * t.OUT_6  + 0.002601 * t.OUT_7  + -0.053311 * t.OUT_8  + -0.253190 * t.OUT_9 AS OUT_23,
    0.188529 + -0.025714 * t.OUT_0  + -0.096371 * t.OUT_1  + -0.105814 * t.OUT_2  + 0.076299 * t.OUT_3  + 0.175663 * t.OUT_4  + 0.096103 * t.OUT_5  + -0.046326 * t.OUT_6  + -0.038697 * t.OUT_7  + -0.171804 * t.OUT_8  + 0.196774 * t.OUT_9 AS OUT_24,
    0.122519 + -0.232292 * t.OUT_0  + 0.010213 * t.OUT_1  + -0.006690 * t.OUT_2  + 0.003274 * t.OUT_3  + -0.147077 * t.OUT_4  + -0.260684 * t.OUT_5  + -0.161521 * t.OUT_6  + -0.137553 * t.OUT_7  + 0.160283 * t.OUT_8  + -0.128481 * t.OUT_9 AS OUT_25,
    -0.106208 + -0.080171 * t.OUT_0  + 0.090190 * t.OUT_1  + 0.070640 * t.OUT_2  + 0.120768 * t.OUT_3  + -0.084181 * t.OUT_4  + 0.151240 * t.OUT_5  + 0.022791 * t.OUT_6  + -0.149122 * t.OUT_7  + 0.027443 * t.OUT_8  + 0.103477 * t.OUT_9 AS OUT_26,
    -0.081192 + 0.148800 * t.OUT_0  + -0.052935 * t.OUT_1  + 0.052851 * t.OUT_2  + 0.084858 * t.OUT_3  + 0.047520 * t.OUT_4  + 0.093510 * t.OUT_5  + 0.047152 * t.OUT_6  + -0.096377 * t.OUT_7  + -0.054055 * t.OUT_8  + -0.173611 * t.OUT_9 AS OUT_27,
    -0.046130 + -0.057809 * t.OUT_0  + 0.078687 * t.OUT_1  + -0.137251 * t.OUT_2  + -0.160189 * t.OUT_3  + -0.185759 * t.OUT_4  + 0.098361 * t.OUT_5  + 0.128087 * t.OUT_6  + 0.223819 * t.OUT_7  + 0.049882 * t.OUT_8  + 0.160891 * t.OUT_9 AS OUT_28,
    -0.151838 + 0.061265 * t.OUT_0  + -0.221682 * t.OUT_1  + 0.117897 * t.OUT_2  + -0.193436 * t.OUT_3  + 0.082207 * t.OUT_4  + -0.256277 * t.OUT_5  + -0.130161 * t.OUT_6  + -0.254581 * t.OUT_7  + 0.137693 * t.OUT_8  + 0.165613 * t.OUT_9 AS OUT_29,
    0.258816 + -0.157932 * t.OUT_0  + -0.173821 * t.OUT_1  + 0.146403 * t.OUT_2  + -0.203830 * t.OUT_3  + -0.147741 * t.OUT_4  + -0.272965 * t.OUT_5  + -0.239748 * t.OUT_6  + -0.019157 * t.OUT_7  + 0.057044 * t.OUT_8  + 0.022852 * t.OUT_9 AS OUT_30,
    0.229735 + 0.059570 * t.OUT_0  + 0.172711 * t.OUT_1  + 0.233194 * t.OUT_2  + 0.082908 * t.OUT_3  + -0.113579 * t.OUT_4  + -0.068006 * t.OUT_5  + 0.078407 * t.OUT_6  + 0.097343 * t.OUT_7  + 0.173948 * t.OUT_8  + -0.075262 * t.OUT_9 AS OUT_31,
    0.138886 + -0.022903 * t.OUT_0  + 0.248571 * t.OUT_1  + -0.037813 * t.OUT_2  + 0.039508 * t.OUT_3  + -0.020247 * t.OUT_4  + -0.012406 * t.OUT_5  + -0.016267 * t.OUT_6  + -0.228639 * t.OUT_7  + 0.170662 * t.OUT_8  + 0.092190 * t.OUT_9 AS OUT_32,
    -0.040485 + 0.001662 * t.OUT_0  + -0.103461 * t.OUT_1  + 0.188394 * t.OUT_2  + 0.054143 * t.OUT_3  + 0.172774 * t.OUT_4  + -0.281716 * t.OUT_5  + 0.060482 * t.OUT_6  + 0.252839 * t.OUT_7  + -0.171814 * t.OUT_8  + 0.007070 * t.OUT_9 AS OUT_33,
    0.204472 + -0.035324 * t.OUT_0  + -0.045515 * t.OUT_1  + 0.079641 * t.OUT_2  + -0.123702 * t.OUT_3  + 0.010570 * t.OUT_4  + -0.133740 * t.OUT_5  + -0.258463 * t.OUT_6  + -0.131851 * t.OUT_7  + -0.060123 * t.OUT_8  + -0.047377 * t.OUT_9 AS OUT_34,
    0.066938 + 0.105350 * t.OUT_0  + -0.121139 * t.OUT_1  + -0.007163 * t.OUT_2  + -0.034877 * t.OUT_3  + 0.136384 * t.OUT_4  + -0.151695 * t.OUT_5  + -0.232784 * t.OUT_6  + -0.266371 * t.OUT_7  + 0.062263 * t.OUT_8  + 0.113645 * t.OUT_9 AS OUT_35,
    0.230955 + -0.109203 * t.OUT_0  + -0.247892 * t.OUT_1  + 0.011915 * t.OUT_2  + 0.268590 * t.OUT_3  + -0.088840 * t.OUT_4  + 0.244392 * t.OUT_5  + 0.108255 * t.OUT_6  + -0.037057 * t.OUT_7  + -0.059650 * t.OUT_8  + 0.039782 * t.OUT_9 AS OUT_36,
    0.059661 + 0.262230 * t.OUT_0  + -0.215965 * t.OUT_1  + 0.297469 * t.OUT_2  + -0.126537 * t.OUT_3  + -0.282119 * t.OUT_4  + 0.209862 * t.OUT_5  + 0.033503 * t.OUT_6  + -0.003292 * t.OUT_7  + 0.223610 * t.OUT_8  + -0.248699 * t.OUT_9 AS OUT_37,
    0.204410 + -0.129395 * t.OUT_0  + -0.046694 * t.OUT_1  + -0.296413 * t.OUT_2  + -0.068488 * t.OUT_3  + 0.236067 * t.OUT_4  + -0.242249 * t.OUT_5  + -0.200406 * t.OUT_6  + -0.110794 * t.OUT_7  + -0.091000 * t.OUT_8  + 0.020119 * t.OUT_9 AS OUT_38,
    -0.104637 + 0.140360 * t.OUT_0  + -0.016141 * t.OUT_1  + -0.271760 * t.OUT_2  + -0.095425 * t.OUT_3  + -0.168225 * t.OUT_4  + 0.032273 * t.OUT_5  + 0.177367 * t.OUT_6  + 0.142729 * t.OUT_7  + -0.093546 * t.OUT_8  + -0.049354 * t.OUT_9 AS OUT_39,
    0.066583 + -0.113066 * t.OUT_0  + -0.103400 * t.OUT_1  + -0.080565 * t.OUT_2  + -0.029965 * t.OUT_3  + 0.035483 * t.OUT_4  + 0.069073 * t.OUT_5  + -0.185791 * t.OUT_6  + -0.104590 * t.OUT_7  + 0.146830 * t.OUT_8  + 0.103222 * t.OUT_9 AS OUT_40,
    0.089932 + 0.055111 * t.OUT_0  + -0.157660 * t.OUT_1  + -0.071477 * t.OUT_2  + -0.141779 * t.OUT_3  + 0.049312 * t.OUT_4  + -0.019116 * t.OUT_5  + -0.209240 * t.OUT_6  + 0.082419 * t.OUT_7  + -0.123089 * t.OUT_8  + -0.162306 * t.OUT_9 AS OUT_41,
    -0.087303 + 0.011431 * t.OUT_0  + -0.175204 * t.OUT_1  + 0.050133 * t.OUT_2  + -0.108167 * t.OUT_3  + 0.116670 * t.OUT_4  + 0.153161 * t.OUT_5  + 0.163233 * t.OUT_6  + 0.002875 * t.OUT_7  + 0.072549 * t.OUT_8  + -0.071027 * t.OUT_9 AS OUT_42,
    0.268627 + 0.179330 * t.OUT_0  + -0.000013 * t.OUT_1  + 0.252778 * t.OUT_2  + -0.024060 * t.OUT_3  + -0.286415 * t.OUT_4  + 0.000687 * t.OUT_5  + 0.262914 * t.OUT_6  + -0.114036 * t.OUT_7  + 0.178255 * t.OUT_8  + -0.244037 * t.OUT_9 AS OUT_43,
    -0.069319 + -0.144293 * t.OUT_0  + -0.105542 * t.OUT_1  + -0.035706 * t.OUT_2  + -0.026259 * t.OUT_3  + -0.045401 * t.OUT_4  + -0.241736 * t.OUT_5  + 0.029232 * t.OUT_6  + -0.052208 * t.OUT_7  + 0.275262 * t.OUT_8  + 0.016689 * t.OUT_9 AS OUT_44,
    0.054265 + -0.234818 * t.OUT_0  + -0.128169 * t.OUT_1  + -0.108122 * t.OUT_2  + 0.062712 * t.OUT_3  + 0.272979 * t.OUT_4  + -0.079187 * t.OUT_5  + -0.205657 * t.OUT_6  + -0.021433 * t.OUT_7  + 0.046681 * t.OUT_8  + 0.012928 * t.OUT_9 AS OUT_45,
    0.160339 + 0.027584 * t.OUT_0  + 0.082087 * t.OUT_1  + -0.200014 * t.OUT_2  + -0.031755 * t.OUT_3  + 0.189177 * t.OUT_4  + 0.085347 * t.OUT_5  + 0.106894 * t.OUT_6  + -0.146893 * t.OUT_7  + -0.145332 * t.OUT_8  + -0.219436 * t.OUT_9 AS OUT_46,
    0.001057 + 0.109371 * t.OUT_0  + 0.146096 * t.OUT_1  + -0.209412 * t.OUT_2  + -0.083516 * t.OUT_3  + -0.142934 * t.OUT_4  + -0.234576 * t.OUT_5  + 0.114288 * t.OUT_6  + -0.009515 * t.OUT_7  + 0.239039 * t.OUT_8  + 0.172777 * t.OUT_9 AS OUT_47,
    0.204962 + 0.204761 * t.OUT_0  + -0.091497 * t.OUT_1  + 0.114059 * t.OUT_2  + -0.009790 * t.OUT_3  + 0.130879 * t.OUT_4  + -0.016412 * t.OUT_5  + 0.188620 * t.OUT_6  + -0.199144 * t.OUT_7  + -0.043962 * t.OUT_8  + -0.126681 * t.OUT_9 AS OUT_48,
    0.060092 + 0.172893 * t.OUT_0  + -0.000204 * t.OUT_1  + 0.142707 * t.OUT_2  + 0.063989 * t.OUT_3  + -0.015480 * t.OUT_4  + 0.219909 * t.OUT_5  + -0.002558 * t.OUT_6  + 0.226562 * t.OUT_7  + -0.075187 * t.OUT_8  + 0.201135 * t.OUT_9 AS OUT_49,
    0.311893 + 0.099648 * t.OUT_0  + 0.069158 * t.OUT_1  + -0.273436 * t.OUT_2  + 0.133211 * t.OUT_3  + 0.263276 * t.OUT_4  + -0.228703 * t.OUT_5  + -0.138178 * t.OUT_6  + -0.015919 * t.OUT_7  + -0.006768 * t.OUT_8  + -0.049883 * t.OUT_9 AS OUT_50,
    -0.145918 + -0.123111 * t.OUT_0  + -0.176257 * t.OUT_1  + -0.030243 * t.OUT_2  + 0.025443 * t.OUT_3  + 0.134976 * t.OUT_4  + -0.010698 * t.OUT_5  + 0.130972 * t.OUT_6  + -0.048809 * t.OUT_7  + -0.119430 * t.OUT_8  + 0.135773 * t.OUT_9 AS OUT_51,
    -0.204934 + 0.115592 * t.OUT_0  + -0.063876 * t.OUT_1  + 0.199079 * t.OUT_2  + -0.183160 * t.OUT_3  + -0.152558 * t.OUT_4  + 0.014976 * t.OUT_5  + -0.094871 * t.OUT_6  + -0.123947 * t.OUT_7  + 0.133859 * t.OUT_8  + 0.228591 * t.OUT_9 AS OUT_52,
    0.029291 + 0.211076 * t.OUT_0  + 0.188747 * t.OUT_1  + -0.154005 * t.OUT_2  + -0.160880 * t.OUT_3  + 0.161666 * t.OUT_4  + 0.042289 * t.OUT_5  + -0.182053 * t.OUT_6  + -0.277889 * t.OUT_7  + 0.092222 * t.OUT_8  + -0.029020 * t.OUT_9 AS OUT_53,
    -0.045717 + -0.175026 * t.OUT_0  + 0.213548 * t.OUT_1  + 0.035184 * t.OUT_2  + -0.187471 * t.OUT_3  + 0.111492 * t.OUT_4  + -0.088622 * t.OUT_5  + 0.203980 * t.OUT_6  + -0.063419 * t.OUT_7  + -0.163600 * t.OUT_8  + 0.039913 * t.OUT_9 AS OUT_54,
    -0.015256 + 0.082717 * t.OUT_0  + -0.053099 * t.OUT_1  + -0.039700 * t.OUT_2  + 0.109675 * t.OUT_3  + 0.157545 * t.OUT_4  + 0.231287 * t.OUT_5  + 0.126361 * t.OUT_6  + 0.179995 * t.OUT_7  + 0.185896 * t.OUT_8  + 0.183105 * t.OUT_9 AS OUT_55,
    0.281961 + -0.025308 * t.OUT_0  + -0.150598 * t.OUT_1  + -0.016883 * t.OUT_2  + -0.170680 * t.OUT_3  + 0.248700 * t.OUT_4  + -0.091927 * t.OUT_5  + -0.248123 * t.OUT_6  + 0.173716 * t.OUT_7  + 0.013769 * t.OUT_8  + -0.127625 * t.OUT_9 AS OUT_56,
    0.025613 + -0.084140 * t.OUT_0  + -0.091781 * t.OUT_1  + -0.182322 * t.OUT_2  + -0.059840 * t.OUT_3  + 0.110871 * t.OUT_4  + -0.281363 * t.OUT_5  + 0.096954 * t.OUT_6  + 0.059772 * t.OUT_7  + 0.126610 * t.OUT_8  + 0.101345 * t.OUT_9 AS OUT_57,
    0.030145 + 0.030766 * t.OUT_0  + 0.110864 * t.OUT_1  + 0.054174 * t.OUT_2  + -0.149780 * t.OUT_3  + -0.019649 * t.OUT_4  + -0.112722 * t.OUT_5  + -0.061433 * t.OUT_6  + -0.208982 * t.OUT_7  + 0.175325 * t.OUT_8  + -0.204982 * t.OUT_9 AS OUT_58,
    0.117059 + 0.149666 * t.OUT_0  + -0.137751 * t.OUT_1  + 0.108579 * t.OUT_2  + -0.022337 * t.OUT_3  + 0.008265 * t.OUT_4  + 0.097731 * t.OUT_5  + -0.208392 * t.OUT_6  + -0.126288 * t.OUT_7  + -0.217630 * t.OUT_8  + -0.047721 * t.OUT_9 AS OUT_59,
    0.078396 + -0.163122 * t.OUT_0  + 0.100243 * t.OUT_1  + 0.026815 * t.OUT_2  + -0.222299 * t.OUT_3  + 0.018728 * t.OUT_4  + 0.013627 * t.OUT_5  + 0.056983 * t.OUT_6  + -0.141180 * t.OUT_7  + -0.217008 * t.OUT_8  + -0.219877 * t.OUT_9 AS OUT_60,
    0.071385 + 0.041900 * t.OUT_0  + -0.140729 * t.OUT_1  + 0.170185 * t.OUT_2  + -0.080808 * t.OUT_3  + 0.017822 * t.OUT_4  + -0.074361 * t.OUT_5  + -0.097576 * t.OUT_6  + -0.008978 * t.OUT_7  + 0.221169 * t.OUT_8  + 0.085406 * t.OUT_9 AS OUT_61,
    -0.040521 + 0.080250 * t.OUT_0  + 0.252617 * t.OUT_1  + 0.121906 * t.OUT_2  + 0.133636 * t.OUT_3  + 0.068271 * t.OUT_4  + -0.053046 * t.OUT_5  + 0.173000 * t.OUT_6  + -0.005458 * t.OUT_7  + -0.069662 * t.OUT_8  + 0.115423 * t.OUT_9 AS OUT_62,
    0.205946 + 0.147981 * t.OUT_0  + 0.180648 * t.OUT_1  + 0.218308 * t.OUT_2  + -0.068380 * t.OUT_3  + -0.153303 * t.OUT_4  + 0.012037 * t.OUT_5  + 0.170264 * t.OUT_6  + 0.011736 * t.OUT_7  + -0.052950 * t.OUT_8  + -0.091570 * t.OUT_9 AS OUT_63,
    -0.199527 + -0.210290 * t.OUT_0  + -0.072919 * t.OUT_1  + 0.035431 * t.OUT_2  + 0.189863 * t.OUT_3  + -0.109544 * t.OUT_4  + 0.174635 * t.OUT_5  + -0.072967 * t.OUT_6  + 0.085691 * t.OUT_7  + -0.074935 * t.OUT_8  + -0.204133 * t.OUT_9 AS OUT_64,
    0.094301 + 0.135366 * t.OUT_0  + 0.167804 * t.OUT_1  + -0.204343 * t.OUT_2  + -0.170738 * t.OUT_3  + 0.089160 * t.OUT_4  + 0.153554 * t.OUT_5  + 0.127905 * t.OUT_6  + 0.134350 * t.OUT_7  + -0.267696 * t.OUT_8  + -0.157202 * t.OUT_9 AS OUT_65,
    0.303764 + -0.048927 * t.OUT_0  + -0.202365 * t.OUT_1  + 0.050680 * t.OUT_2  + 0.150295 * t.OUT_3  + 0.135797 * t.OUT_4  + 0.062032 * t.OUT_5  + 0.228853 * t.OUT_6  + -0.104742 * t.OUT_7  + 0.200888 * t.OUT_8  + 0.157507 * t.OUT_9 AS OUT_66,
    0.132691 + -0.206218 * t.OUT_0  + 0.203950 * t.OUT_1  + -0.105057 * t.OUT_2  + -0.137161 * t.OUT_3  + -0.125789 * t.OUT_4  + -0.010134 * t.OUT_5  + 0.151341 * t.OUT_6  + 0.195839 * t.OUT_7  + 0.214333 * t.OUT_8  + -0.109359 * t.OUT_9 AS OUT_67,
    -0.031703 + 0.236665 * t.OUT_0  + -0.139520 * t.OUT_1  + 0.040866 * t.OUT_2  + 0.062578 * t.OUT_3  + -0.067348 * t.OUT_4  + 0.097219 * t.OUT_5  + 0.158062 * t.OUT_6  + 0.029685 * t.OUT_7  + -0.016268 * t.OUT_8  + 0.151674 * t.OUT_9 AS OUT_68,
    0.024258 + 0.194299 * t.OUT_0  + 0.128539 * t.OUT_1  + -0.008908 * t.OUT_2  + -0.129264 * t.OUT_3  + -0.141560 * t.OUT_4  + -0.089617 * t.OUT_5  + -0.074206 * t.OUT_6  + 0.145527 * t.OUT_7  + 0.171283 * t.OUT_8  + -0.121806 * t.OUT_9 AS OUT_69,
    0.096478 + 0.008665 * t.OUT_0  + 0.073540 * t.OUT_1  + 0.175962 * t.OUT_2  + -0.181869 * t.OUT_3  + -0.030719 * t.OUT_4  + 0.032202 * t.OUT_5  + -0.187674 * t.OUT_6  + 0.120062 * t.OUT_7  + -0.123631 * t.OUT_8  + 0.073511 * t.OUT_9 AS OUT_70,
    -0.070679 + -0.225584 * t.OUT_0  + -0.186518 * t.OUT_1  + 0.186688 * t.OUT_2  + -0.091425 * t.OUT_3  + -0.172170 * t.OUT_4  + 0.106750 * t.OUT_5  + 0.058844 * t.OUT_6  + -0.190183 * t.OUT_7  + 0.111716 * t.OUT_8  + -0.031134 * t.OUT_9 AS OUT_71,
    -0.226341 + -0.000377 * t.OUT_0  + 0.063877 * t.OUT_1  + 0.268480 * t.OUT_2  + -0.228783 * t.OUT_3  + -0.106728 * t.OUT_4  + -0.083600 * t.OUT_5  + 0.030107 * t.OUT_6  + 0.051662 * t.OUT_7  + 0.223111 * t.OUT_8  + 0.062454 * t.OUT_9 AS OUT_72,
    -0.135145 + 0.181169 * t.OUT_0  + 0.119559 * t.OUT_1  + -0.175146 * t.OUT_2  + 0.017142 * t.OUT_3  + -0.035785 * t.OUT_4  + 0.013385 * t.OUT_5  + 0.079285 * t.OUT_6  + -0.006749 * t.OUT_7  + -0.023339 * t.OUT_8  + -0.052917 * t.OUT_9 AS OUT_73,
    0.093712 + -0.215113 * t.OUT_0  + -0.047931 * t.OUT_1  + 0.115486 * t.OUT_2  + -0.167205 * t.OUT_3  + 0.094465 * t.OUT_4  + 0.178740 * t.OUT_5  + -0.005926 * t.OUT_6  + -0.146140 * t.OUT_7  + -0.143000 * t.OUT_8  + -0.077187 * t.OUT_9 AS OUT_74,
    0.162067 + 0.045031 * t.OUT_0  + -0.053774 * t.OUT_1  + 0.086042 * t.OUT_2  + 0.143049 * t.OUT_3  + 0.043966 * t.OUT_4  + -0.056894 * t.OUT_5  + 0.042587 * t.OUT_6  + 0.081200 * t.OUT_7  + 0.267802 * t.OUT_8  + -0.009349 * t.OUT_9 AS OUT_75,
    0.096282 + 0.033582 * t.OUT_0  + 0.196571 * t.OUT_1  + 0.146578 * t.OUT_2  + -0.222755 * t.OUT_3  + -0.029173 * t.OUT_4  + 0.159790 * t.OUT_5  + -0.066498 * t.OUT_6  + 0.187926 * t.OUT_7  + 0.044540 * t.OUT_8  + 0.290076 * t.OUT_9 AS OUT_76,
    0.078210 + 0.080740 * t.OUT_0  + 0.231614 * t.OUT_1  + 0.169637 * t.OUT_2  + -0.080451 * t.OUT_3  + 0.071593 * t.OUT_4  + -0.054915 * t.OUT_5  + 0.125830 * t.OUT_6  + -0.139433 * t.OUT_7  + -0.248260 * t.OUT_8  + -0.156080 * t.OUT_9 AS OUT_77,
    0.254133 + 0.134929 * t.OUT_0  + -0.055764 * t.OUT_1  + -0.184308 * t.OUT_2  + 0.154510 * t.OUT_3  + 0.091357 * t.OUT_4  + -0.201687 * t.OUT_5  + -0.204547 * t.OUT_6  + 0.187882 * t.OUT_7  + 0.209501 * t.OUT_8  + 0.135137 * t.OUT_9 AS OUT_78,
    0.027757 + -0.150774 * t.OUT_0  + -0.009732 * t.OUT_1  + 0.236485 * t.OUT_2  + 0.097318 * t.OUT_3  + -0.076909 * t.OUT_4  + 0.254497 * t.OUT_5  + 0.224209 * t.OUT_6  + -0.162656 * t.OUT_7  + -0.155642 * t.OUT_8  + -0.218221 * t.OUT_9 AS OUT_79,
    0.219166 + 0.063527 * t.OUT_0  + 0.080544 * t.OUT_1  + 0.161813 * t.OUT_2  + 0.035587 * t.OUT_3  + -0.170506 * t.OUT_4  + -0.057428 * t.OUT_5  + 0.281229 * t.OUT_6  + -0.003920 * t.OUT_7  + -0.132843 * t.OUT_8  + -0.047175 * t.OUT_9 AS OUT_80,
    -0.052880 + 0.213561 * t.OUT_0  + 0.068496 * t.OUT_1  + 0.190873 * t.OUT_2  + -0.105886 * t.OUT_3  + 0.191538 * t.OUT_4  + -0.003183 * t.OUT_5  + -0.044833 * t.OUT_6  + -0.180437 * t.OUT_7  + 0.073924 * t.OUT_8  + 0.229690 * t.OUT_9 AS OUT_81,
    -0.048446 + 0.158867 * t.OUT_0  + -0.033607 * t.OUT_1  + 0.039620 * t.OUT_2  + 0.228775 * t.OUT_3  + 0.194823 * t.OUT_4  + -0.068964 * t.OUT_5  + -0.182674 * t.OUT_6  + -0.188361 * t.OUT_7  + 0.055658 * t.OUT_8  + -0.029826 * t.OUT_9 AS OUT_82,
    0.247586 + -0.108360 * t.OUT_0  + 0.154983 * t.OUT_1  + 0.141918 * t.OUT_2  + -0.063237 * t.OUT_3  + -0.003324 * t.OUT_4  + -0.036118 * t.OUT_5  + 0.198646 * t.OUT_6  + -0.230357 * t.OUT_7  + -0.074723 * t.OUT_8  + 0.043157 * t.OUT_9 AS OUT_83,
    -0.143534 + -0.253376 * t.OUT_0  + 0.037677 * t.OUT_1  + 0.195564 * t.OUT_2  + -0.173159 * t.OUT_3  + -0.046343 * t.OUT_4  + 0.147762 * t.OUT_5  + 0.004190 * t.OUT_6  + 0.017068 * t.OUT_7  + 0.147135 * t.OUT_8  + 0.304229 * t.OUT_9 AS OUT_84,
    -0.254909 + 0.081693 * t.OUT_0  + 0.034404 * t.OUT_1  + 0.074709 * t.OUT_2  + -0.131264 * t.OUT_3  + 0.116235 * t.OUT_4  + 0.150819 * t.OUT_5  + -0.225698 * t.OUT_6  + 0.029459 * t.OUT_7  + 0.109478 * t.OUT_8  + -0.176823 * t.OUT_9 AS OUT_85,
    0.006190 + -0.084510 * t.OUT_0  + -0.154807 * t.OUT_1  + 0.049812 * t.OUT_2  + -0.017203 * t.OUT_3  + 0.046192 * t.OUT_4  + -0.303750 * t.OUT_5  + -0.125494 * t.OUT_6  + -0.047824 * t.OUT_7  + 0.245195 * t.OUT_8  + -0.091708 * t.OUT_9 AS OUT_86,
    -0.101050 + -0.111038 * t.OUT_0  + -0.013157 * t.OUT_1  + -0.302463 * t.OUT_2  + 0.113094 * t.OUT_3  + 0.110590 * t.OUT_4  + -0.186586 * t.OUT_5  + -0.237048 * t.OUT_6  + 0.005668 * t.OUT_7  + -0.135744 * t.OUT_8  + -0.184286 * t.OUT_9 AS OUT_87,
    -0.273572 + -0.201132 * t.OUT_0  + 0.149480 * t.OUT_1  + 0.038026 * t.OUT_2  + 0.028275 * t.OUT_3  + 0.062104 * t.OUT_4  + -0.019872 * t.OUT_5  + 0.160197 * t.OUT_6  + -0.120333 * t.OUT_7  + -0.036567 * t.OUT_8  + -0.133670 * t.OUT_9 AS OUT_88,
    0.120147 + -0.198608 * t.OUT_0  + 0.173974 * t.OUT_1  + 0.133906 * t.OUT_2  + 0.052470 * t.OUT_3  + 0.050269 * t.OUT_4  + -0.182601 * t.OUT_5  + -0.111571 * t.OUT_6  + -0.047332 * t.OUT_7  + -0.152382 * t.OUT_8  + 0.142034 * t.OUT_9 AS OUT_89,
    -0.152873 + -0.168845 * t.OUT_0  + -0.069214 * t.OUT_1  + -0.031939 * t.OUT_2  + 0.073938 * t.OUT_3  + -0.038612 * t.OUT_4  + -0.215933 * t.OUT_5  + -0.160513 * t.OUT_6  + 0.207456 * t.OUT_7  + -0.149992 * t.OUT_8  + -0.155488 * t.OUT_9 AS OUT_90,
    0.242475 + 0.148804 * t.OUT_0  + -0.107812 * t.OUT_1  + 0.256723 * t.OUT_2  + 0.206448 * t.OUT_3  + -0.262646 * t.OUT_4  + 0.204891 * t.OUT_5  + 0.038037 * t.OUT_6  + -0.016362 * t.OUT_7  + -0.136593 * t.OUT_8  + 0.167295 * t.OUT_9 AS OUT_91,
    0.144558 + -0.051067 * t.OUT_0  + 0.128472 * t.OUT_1  + -0.030082 * t.OUT_2  + -0.118661 * t.OUT_3  + 0.176908 * t.OUT_4  + -0.111212 * t.OUT_5  + 0.215574 * t.OUT_6  + -0.243658 * t.OUT_7  + -0.141007 * t.OUT_8  + 0.210421 * t.OUT_9 AS OUT_92,
    -0.140120 + -0.002163 * t.OUT_0  + -0.055567 * t.OUT_1  + -0.011443 * t.OUT_2  + 0.032022 * t.OUT_3  + -0.218935 * t.OUT_4  + -0.133263 * t.OUT_5  + -0.170509 * t.OUT_6  + -0.192878 * t.OUT_7  + -0.167994 * t.OUT_8  + -0.094623 * t.OUT_9 AS OUT_93,
    -0.229383 + 0.015335 * t.OUT_0  + 0.041388 * t.OUT_1  + -0.221748 * t.OUT_2  + -0.154616 * t.OUT_3  + -0.078352 * t.OUT_4  + 0.127160 * t.OUT_5  + -0.013019 * t.OUT_6  + -0.242061 * t.OUT_7  + -0.093407 * t.OUT_8  + -0.170063 * t.OUT_9 AS OUT_94,
    -0.042972 + -0.249245 * t.OUT_0  + 0.209264 * t.OUT_1  + 0.134846 * t.OUT_2  + 0.217709 * t.OUT_3  + 0.113739 * t.OUT_4  + 0.325349 * t.OUT_5  + 0.077528 * t.OUT_6  + 0.207707 * t.OUT_7  + -0.150780 * t.OUT_8  + -0.078217 * t.OUT_9 AS OUT_95,
    0.074312 + 0.047899 * t.OUT_0  + -0.249838 * t.OUT_1  + -0.172271 * t.OUT_2  + -0.154493 * t.OUT_3  + -0.203515 * t.OUT_4  + 0.020097 * t.OUT_5  + -0.110129 * t.OUT_6  + 0.230735 * t.OUT_7  + 0.109130 * t.OUT_8  + 0.218500 * t.OUT_9 AS OUT_96,
    0.036428 + -0.091764 * t.OUT_0  + -0.107569 * t.OUT_1  + 0.109592 * t.OUT_2  + -0.064674 * t.OUT_3  + 0.196511 * t.OUT_4  + 0.117377 * t.OUT_5  + 0.119187 * t.OUT_6  + 0.207311 * t.OUT_7  + 0.081848 * t.OUT_8  + 0.233824 * t.OUT_9 AS OUT_97,
    0.286343 + -0.138880 * t.OUT_0  + -0.083502 * t.OUT_1  + -0.060362 * t.OUT_2  + 0.136104 * t.OUT_3  + -0.054322 * t.OUT_4  + -0.157697 * t.OUT_5  + -0.198873 * t.OUT_6  + 0.208278 * t.OUT_7  + 0.191169 * t.OUT_8  + -0.120674 * t.OUT_9 AS OUT_98,
    0.136563 + 0.035223 * t.OUT_0  + -0.178997 * t.OUT_1  + 0.059123 * t.OUT_2  + -0.094269 * t.OUT_3  + 0.142568 * t.OUT_4  + 0.009126 * t.OUT_5  + 0.238136 * t.OUT_6  + 0.051358 * t.OUT_7  + 0.072870 * t.OUT_8  + -0.094503 * t.OUT_9 AS OUT_99
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
    0.021270 + 0.277624 * t.OUT_0  + -0.003899 * t.OUT_1  + -0.294860 * t.OUT_2  + 0.134303 * t.OUT_3  + -0.137655 * t.OUT_4  + -0.134291 * t.OUT_5  + -0.174439 * t.OUT_6  + 0.143985 * t.OUT_7  + -0.198483 * t.OUT_8  + 0.218074 * t.OUT_9  + -0.175132 * t.OUT_10  + 0.304731 * t.OUT_11  + -0.223337 * t.OUT_12  + 0.040238 * t.OUT_13  + 0.206655 * t.OUT_14  + -0.019376 * t.OUT_15  + 0.118815 * t.OUT_16  + -0.181919 * t.OUT_17  + -0.089271 * t.OUT_18  + -0.155722 * t.OUT_19  + -0.100022 * t.OUT_20  + -0.273686 * t.OUT_21  + 0.242160 * t.OUT_22  + 0.078635 * t.OUT_23  + -0.077511 * t.OUT_24  + -0.071950 * t.OUT_25  + -0.004696 * t.OUT_26  + -0.141899 * t.OUT_27  + 0.221787 * t.OUT_28  + -0.315548 * t.OUT_29  + -0.289360 * t.OUT_30  + 0.206512 * t.OUT_31  + -0.065245 * t.OUT_32  + -0.225815 * t.OUT_33  + -0.168567 * t.OUT_34  + -0.142792 * t.OUT_35  + 0.078214 * t.OUT_36  + 0.074665 * t.OUT_37  + -0.257786 * t.OUT_38  + -0.102049 * t.OUT_39  + -0.130746 * t.OUT_40  + -0.302000 * t.OUT_41  + -0.014558 * t.OUT_42  + 0.205948 * t.OUT_43  + -0.166595 * t.OUT_44  + -0.137949 * t.OUT_45  + -0.070490 * t.OUT_46  + -0.180050 * t.OUT_47  + 0.286820 * t.OUT_48  + 0.286022 * t.OUT_49  + -0.120554 * t.OUT_50  + 0.013865 * t.OUT_51  + 0.237057 * t.OUT_52  + -0.245036 * t.OUT_53  + 0.030473 * t.OUT_54  + 0.031000 * t.OUT_55  + -0.089533 * t.OUT_56  + -0.169226 * t.OUT_57  + 0.121303 * t.OUT_58  + -0.076012 * t.OUT_59  + -0.030645 * t.OUT_60  + -0.015743 * t.OUT_61  + -0.032032 * t.OUT_62  + 0.166560 * t.OUT_63  + -0.008492 * t.OUT_64  + -0.034859 * t.OUT_65  + 0.081064 * t.OUT_66  + 0.185464 * t.OUT_67  + -0.046158 * t.OUT_68  + -0.124321 * t.OUT_69  + -0.120622 * t.OUT_70  + 0.225960 * t.OUT_71  + 0.230272 * t.OUT_72  + -0.081972 * t.OUT_73  + 0.105957 * t.OUT_74  + -0.167487 * t.OUT_75  + 0.248269 * t.OUT_76  + -0.040968 * t.OUT_77  + -0.165576 * t.OUT_78  + 0.075394 * t.OUT_79  + 0.289368 * t.OUT_80  + -0.035343 * t.OUT_81  + 0.067295 * t.OUT_82  + 0.253268 * t.OUT_83  + 0.225156 * t.OUT_84  + -0.156352 * t.OUT_85  + -0.082534 * t.OUT_86  + -0.146681 * t.OUT_87  + -0.150767 * t.OUT_88  + -0.060059 * t.OUT_89  + -0.086577 * t.OUT_90  + 0.139527 * t.OUT_91  + 0.152876 * t.OUT_92  + -0.118567 * t.OUT_93  + -0.090738 * t.OUT_94  + 0.068997 * t.OUT_95  + 0.044540 * t.OUT_96  + 0.018593 * t.OUT_97  + -0.148457 * t.OUT_98  + 0.248137 * t.OUT_99 AS OUT_0
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