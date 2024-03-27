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
    0.193095 + -0.045285 * t.OUT_0  + 0.064643 * t.OUT_1  + -0.065037 * t.OUT_2  + 0.099322 * t.OUT_3  + -0.149995 * t.OUT_4  + 0.116255 * t.OUT_5  + 0.171519 * t.OUT_6  + -0.204469 * t.OUT_7  + 0.182452 * t.OUT_8  + 0.110090 * t.OUT_9 AS OUT_0,
    0.114138 + 0.132153 * t.OUT_0  + -0.144972 * t.OUT_1  + -0.027946 * t.OUT_2  + -0.197571 * t.OUT_3  + 0.062668 * t.OUT_4  + 0.168580 * t.OUT_5  + -0.102178 * t.OUT_6  + -0.052888 * t.OUT_7  + -0.126787 * t.OUT_8  + 0.133640 * t.OUT_9 AS OUT_1,
    0.225334 + -0.071757 * t.OUT_0  + -0.050809 * t.OUT_1  + -0.219354 * t.OUT_2  + -0.131334 * t.OUT_3  + 0.150732 * t.OUT_4  + -0.182708 * t.OUT_5  + -0.214502 * t.OUT_6  + -0.203553 * t.OUT_7  + -0.089001 * t.OUT_8  + -0.108833 * t.OUT_9 AS OUT_2,
    0.076075 + -0.040337 * t.OUT_0  + 0.104136 * t.OUT_1  + 0.173027 * t.OUT_2  + -0.098771 * t.OUT_3  + 0.177128 * t.OUT_4  + 0.166140 * t.OUT_5  + 0.064505 * t.OUT_6  + 0.000677 * t.OUT_7  + -0.090475 * t.OUT_8  + -0.040837 * t.OUT_9 AS OUT_3,
    0.147290 + 0.069688 * t.OUT_0  + 0.181660 * t.OUT_1  + 0.192364 * t.OUT_2  + -0.131576 * t.OUT_3  + -0.077927 * t.OUT_4  + -0.210478 * t.OUT_5  + 0.078323 * t.OUT_6  + -0.040446 * t.OUT_7  + 0.194726 * t.OUT_8  + -0.136057 * t.OUT_9 AS OUT_4,
    0.064444 + -0.136539 * t.OUT_0  + 0.228348 * t.OUT_1  + 0.012445 * t.OUT_2  + 0.115821 * t.OUT_3  + 0.035729 * t.OUT_4  + 0.196751 * t.OUT_5  + -0.196487 * t.OUT_6  + -0.255530 * t.OUT_7  + -0.170944 * t.OUT_8  + -0.133898 * t.OUT_9 AS OUT_5,
    -0.095941 + 0.095411 * t.OUT_0  + 0.199897 * t.OUT_1  + -0.018652 * t.OUT_2  + 0.011442 * t.OUT_3  + 0.263561 * t.OUT_4  + -0.172595 * t.OUT_5  + -0.230900 * t.OUT_6  + -0.032636 * t.OUT_7  + -0.130994 * t.OUT_8  + 0.151697 * t.OUT_9 AS OUT_6,
    0.127331 + -0.016530 * t.OUT_0  + 0.107153 * t.OUT_1  + 0.119131 * t.OUT_2  + -0.098888 * t.OUT_3  + 0.158860 * t.OUT_4  + -0.139535 * t.OUT_5  + 0.057724 * t.OUT_6  + -0.155827 * t.OUT_7  + -0.009754 * t.OUT_8  + 0.169838 * t.OUT_9 AS OUT_7,
    -0.042369 + 0.199601 * t.OUT_0  + -0.069726 * t.OUT_1  + -0.004790 * t.OUT_2  + -0.064705 * t.OUT_3  + 0.209668 * t.OUT_4  + -0.169547 * t.OUT_5  + 0.001887 * t.OUT_6  + 0.050408 * t.OUT_7  + -0.032211 * t.OUT_8  + -0.114086 * t.OUT_9 AS OUT_8,
    0.129092 + 0.028130 * t.OUT_0  + -0.006748 * t.OUT_1  + 0.142229 * t.OUT_2  + 0.179926 * t.OUT_3  + -0.083808 * t.OUT_4  + -0.014560 * t.OUT_5  + -0.044139 * t.OUT_6  + 0.184957 * t.OUT_7  + 0.121668 * t.OUT_8  + 0.137097 * t.OUT_9 AS OUT_9,
    -0.154817 + 0.202345 * t.OUT_0  + 0.094104 * t.OUT_1  + -0.011433 * t.OUT_2  + 0.096531 * t.OUT_3  + -0.082256 * t.OUT_4  + 0.055750 * t.OUT_5  + 0.040736 * t.OUT_6  + 0.093516 * t.OUT_7  + -0.219732 * t.OUT_8  + 0.118130 * t.OUT_9 AS OUT_10,
    0.259575 + -0.052288 * t.OUT_0  + 0.129276 * t.OUT_1  + 0.167684 * t.OUT_2  + -0.065808 * t.OUT_3  + -0.133215 * t.OUT_4  + 0.179465 * t.OUT_5  + 0.179302 * t.OUT_6  + 0.075492 * t.OUT_7  + -0.092815 * t.OUT_8  + -0.099159 * t.OUT_9 AS OUT_11,
    0.006632 + 0.243431 * t.OUT_0  + 0.145671 * t.OUT_1  + 0.076585 * t.OUT_2  + 0.093382 * t.OUT_3  + 0.076081 * t.OUT_4  + -0.084938 * t.OUT_5  + -0.031798 * t.OUT_6  + -0.054833 * t.OUT_7  + -0.105185 * t.OUT_8  + 0.043350 * t.OUT_9 AS OUT_12,
    -0.190988 + -0.187717 * t.OUT_0  + 0.021203 * t.OUT_1  + -0.117424 * t.OUT_2  + -0.181840 * t.OUT_3  + -0.178241 * t.OUT_4  + 0.177604 * t.OUT_5  + 0.083942 * t.OUT_6  + -0.206297 * t.OUT_7  + -0.115544 * t.OUT_8  + -0.141117 * t.OUT_9 AS OUT_13,
    -0.167530 + -0.113733 * t.OUT_0  + 0.132600 * t.OUT_1  + -0.037802 * t.OUT_2  + 0.168026 * t.OUT_3  + -0.121999 * t.OUT_4  + -0.058341 * t.OUT_5  + 0.089173 * t.OUT_6  + -0.250878 * t.OUT_7  + 0.216650 * t.OUT_8  + 0.025930 * t.OUT_9 AS OUT_14,
    0.166199 + 0.061958 * t.OUT_0  + 0.136849 * t.OUT_1  + -0.175891 * t.OUT_2  + -0.077208 * t.OUT_3  + -0.243502 * t.OUT_4  + -0.179917 * t.OUT_5  + 0.035078 * t.OUT_6  + 0.225161 * t.OUT_7  + -0.062910 * t.OUT_8  + 0.201233 * t.OUT_9 AS OUT_15,
    -0.040596 + 0.095399 * t.OUT_0  + 0.009128 * t.OUT_1  + -0.098007 * t.OUT_2  + 0.043843 * t.OUT_3  + -0.080748 * t.OUT_4  + -0.077790 * t.OUT_5  + -0.018771 * t.OUT_6  + -0.100398 * t.OUT_7  + 0.141281 * t.OUT_8  + -0.094837 * t.OUT_9 AS OUT_16,
    -0.235904 + -0.113902 * t.OUT_0  + -0.088708 * t.OUT_1  + -0.146504 * t.OUT_2  + -0.126555 * t.OUT_3  + -0.041324 * t.OUT_4  + -0.044013 * t.OUT_5  + 0.187275 * t.OUT_6  + 0.032074 * t.OUT_7  + -0.077091 * t.OUT_8  + 0.170370 * t.OUT_9 AS OUT_17,
    -0.161513 + -0.101541 * t.OUT_0  + -0.091625 * t.OUT_1  + 0.045275 * t.OUT_2  + -0.121281 * t.OUT_3  + 0.015084 * t.OUT_4  + 0.025846 * t.OUT_5  + -0.169019 * t.OUT_6  + -0.105340 * t.OUT_7  + -0.096033 * t.OUT_8  + 0.158281 * t.OUT_9 AS OUT_18,
    -0.070120 + -0.165723 * t.OUT_0  + -0.145809 * t.OUT_1  + -0.063029 * t.OUT_2  + 0.076987 * t.OUT_3  + -0.006514 * t.OUT_4  + -0.209431 * t.OUT_5  + -0.182702 * t.OUT_6  + 0.196733 * t.OUT_7  + -0.062025 * t.OUT_8  + 0.104094 * t.OUT_9 AS OUT_19,
    0.156133 + 0.129230 * t.OUT_0  + 0.154824 * t.OUT_1  + -0.130914 * t.OUT_2  + -0.046778 * t.OUT_3  + 0.264804 * t.OUT_4  + 0.090866 * t.OUT_5  + -0.155797 * t.OUT_6  + -0.011473 * t.OUT_7  + 0.121180 * t.OUT_8  + -0.164882 * t.OUT_9 AS OUT_20,
    0.110494 + -0.204159 * t.OUT_0  + 0.162230 * t.OUT_1  + -0.224189 * t.OUT_2  + 0.205258 * t.OUT_3  + 0.183294 * t.OUT_4  + 0.093707 * t.OUT_5  + -0.237080 * t.OUT_6  + 0.043509 * t.OUT_7  + 0.133021 * t.OUT_8  + -0.012594 * t.OUT_9 AS OUT_21,
    0.137193 + -0.043982 * t.OUT_0  + -0.176948 * t.OUT_1  + 0.233786 * t.OUT_2  + -0.231485 * t.OUT_3  + -0.155238 * t.OUT_4  + -0.027011 * t.OUT_5  + -0.149521 * t.OUT_6  + -0.105382 * t.OUT_7  + -0.199963 * t.OUT_8  + 0.104423 * t.OUT_9 AS OUT_22,
    -0.000637 + -0.003650 * t.OUT_0  + 0.047322 * t.OUT_1  + -0.062668 * t.OUT_2  + -0.111748 * t.OUT_3  + -0.028912 * t.OUT_4  + -0.078010 * t.OUT_5  + 0.128205 * t.OUT_6  + -0.003963 * t.OUT_7  + -0.041639 * t.OUT_8  + -0.256678 * t.OUT_9 AS OUT_23,
    0.193510 + -0.025982 * t.OUT_0  + -0.118022 * t.OUT_1  + -0.082360 * t.OUT_2  + 0.127834 * t.OUT_3  + 0.162715 * t.OUT_4  + 0.123327 * t.OUT_5  + -0.020768 * t.OUT_6  + -0.038575 * t.OUT_7  + -0.238652 * t.OUT_8  + 0.225348 * t.OUT_9 AS OUT_24,
    0.048071 + -0.198956 * t.OUT_0  + 0.016557 * t.OUT_1  + 0.064529 * t.OUT_2  + 0.019591 * t.OUT_3  + -0.193131 * t.OUT_4  + -0.193579 * t.OUT_5  + -0.091651 * t.OUT_6  + -0.189191 * t.OUT_7  + 0.170624 * t.OUT_8  + -0.134462 * t.OUT_9 AS OUT_25,
    -0.091194 + -0.098058 * t.OUT_0  + 0.069631 * t.OUT_1  + 0.082694 * t.OUT_2  + 0.159265 * t.OUT_3  + -0.093319 * t.OUT_4  + 0.166231 * t.OUT_5  + 0.036333 * t.OUT_6  + -0.152357 * t.OUT_7  + 0.000437 * t.OUT_8  + 0.128583 * t.OUT_9 AS OUT_26,
    -0.058695 + 0.190794 * t.OUT_0  + -0.064072 * t.OUT_1  + 0.074248 * t.OUT_2  + 0.121134 * t.OUT_3  + 0.047158 * t.OUT_4  + 0.119664 * t.OUT_5  + 0.070920 * t.OUT_6  + -0.103464 * t.OUT_7  + -0.040030 * t.OUT_8  + -0.197163 * t.OUT_9 AS OUT_27,
    -0.086277 + -0.045852 * t.OUT_0  + 0.075678 * t.OUT_1  + -0.179798 * t.OUT_2  + -0.157142 * t.OUT_3  + -0.146230 * t.OUT_4  + 0.054573 * t.OUT_5  + 0.084720 * t.OUT_6  + 0.199013 * t.OUT_7  + 0.114739 * t.OUT_8  + 0.109749 * t.OUT_9 AS OUT_28,
    -0.209152 + 0.030159 * t.OUT_0  + -0.245618 * t.OUT_1  + 0.146572 * t.OUT_2  + -0.142253 * t.OUT_3  + 0.033221 * t.OUT_4  + -0.217713 * t.OUT_5  + -0.097089 * t.OUT_6  + -0.181967 * t.OUT_7  + 0.088964 * t.OUT_8  + 0.198442 * t.OUT_9 AS OUT_29,
    0.223006 + -0.183535 * t.OUT_0  + -0.179615 * t.OUT_1  + 0.177754 * t.OUT_2  + -0.171233 * t.OUT_3  + -0.183134 * t.OUT_4  + -0.237594 * t.OUT_5  + -0.206124 * t.OUT_6  + -0.045922 * t.OUT_7  + 0.052812 * t.OUT_8  + 0.062845 * t.OUT_9 AS OUT_30,
    0.195737 + -0.011022 * t.OUT_0  + 0.143074 * t.OUT_1  + 0.202604 * t.OUT_2  + 0.030527 * t.OUT_3  + -0.078021 * t.OUT_4  + -0.105784 * t.OUT_5  + 0.044724 * t.OUT_6  + 0.122651 * t.OUT_7  + 0.182921 * t.OUT_8  + -0.019360 * t.OUT_9 AS OUT_31,
    0.135095 + -0.044276 * t.OUT_0  + 0.239240 * t.OUT_1  + -0.013053 * t.OUT_2  + 0.091099 * t.OUT_3  + -0.035484 * t.OUT_4  + 0.013163 * t.OUT_5  + 0.008913 * t.OUT_6  + -0.204263 * t.OUT_7  + 0.151287 * t.OUT_8  + 0.074670 * t.OUT_9 AS OUT_32,
    -0.100162 + 0.051501 * t.OUT_0  + -0.126485 * t.OUT_1  + 0.205257 * t.OUT_2  + 0.068137 * t.OUT_3  + 0.134467 * t.OUT_4  + -0.253060 * t.OUT_5  + 0.082090 * t.OUT_6  + 0.195895 * t.OUT_7  + -0.163071 * t.OUT_8  + 0.112025 * t.OUT_9 AS OUT_33,
    0.167066 + -0.023132 * t.OUT_0  + -0.057103 * t.OUT_1  + 0.117017 * t.OUT_2  + -0.050842 * t.OUT_3  + -0.012878 * t.OUT_4  + -0.095519 * t.OUT_5  + -0.220694 * t.OUT_6  + -0.175489 * t.OUT_7  + -0.073162 * t.OUT_8  + -0.063166 * t.OUT_9 AS OUT_34,
    0.017056 + 0.124010 * t.OUT_0  + -0.146933 * t.OUT_1  + 0.033290 * t.OUT_2  + 0.045512 * t.OUT_3  + 0.188467 * t.OUT_4  + -0.111934 * t.OUT_5  + -0.192548 * t.OUT_6  + -0.205879 * t.OUT_7  + 0.044683 * t.OUT_8  + 0.095801 * t.OUT_9 AS OUT_35,
    0.170413 + -0.145864 * t.OUT_0  + -0.163964 * t.OUT_1  + -0.045714 * t.OUT_2  + 0.254688 * t.OUT_3  + -0.053248 * t.OUT_4  + 0.181679 * t.OUT_5  + 0.046960 * t.OUT_6  + -0.029997 * t.OUT_7  + 0.016941 * t.OUT_8  + -0.010785 * t.OUT_9 AS OUT_36,
    -0.000346 + 0.175415 * t.OUT_0  + -0.190074 * t.OUT_1  + 0.240787 * t.OUT_2  + -0.203715 * t.OUT_3  + -0.252068 * t.OUT_4  + 0.151262 * t.OUT_5  + -0.024632 * t.OUT_6  + -0.056696 * t.OUT_7  + 0.209345 * t.OUT_8  + -0.254863 * t.OUT_9 AS OUT_37,
    0.162743 + -0.143653 * t.OUT_0  + -0.048804 * t.OUT_1  + -0.260668 * t.OUT_2  + -0.037381 * t.OUT_3  + 0.215739 * t.OUT_4  + -0.205605 * t.OUT_5  + -0.164202 * t.OUT_6  + -0.068343 * t.OUT_7  + -0.110623 * t.OUT_8  + 0.061222 * t.OUT_9 AS OUT_38,
    -0.088731 + 0.154238 * t.OUT_0  + -0.024391 * t.OUT_1  + -0.245470 * t.OUT_2  + -0.099134 * t.OUT_3  + -0.186916 * t.OUT_4  + 0.058277 * t.OUT_5  + 0.203817 * t.OUT_6  + 0.142448 * t.OUT_7  + -0.097884 * t.OUT_8  + -0.029170 * t.OUT_9 AS OUT_39,
    0.048765 + -0.145564 * t.OUT_0  + -0.129375 * t.OUT_1  + -0.052330 * t.OUT_2  + -0.014517 * t.OUT_3  + 0.019406 * t.OUT_4  + 0.100087 * t.OUT_5  + -0.155965 * t.OUT_6  + -0.084349 * t.OUT_7  + 0.100916 * t.OUT_8  + 0.131991 * t.OUT_9 AS OUT_40,
    0.087425 + 0.143607 * t.OUT_0  + -0.138825 * t.OUT_1  + -0.041672 * t.OUT_2  + -0.108707 * t.OUT_3  + 0.022854 * t.OUT_4  + 0.014771 * t.OUT_5  + -0.177459 * t.OUT_6  + 0.075850 * t.OUT_7  + -0.149924 * t.OUT_8  + -0.179064 * t.OUT_9 AS OUT_41,
    -0.074207 + 0.056936 * t.OUT_0  + -0.193909 * t.OUT_1  + 0.063153 * t.OUT_2  + -0.099116 * t.OUT_3  + 0.117565 * t.OUT_4  + 0.170776 * t.OUT_5  + 0.178464 * t.OUT_6  + 0.028437 * t.OUT_7  + 0.096486 * t.OUT_8  + -0.073887 * t.OUT_9 AS OUT_42,
    0.230755 + 0.186903 * t.OUT_0  + 0.014837 * t.OUT_1  + 0.221580 * t.OUT_2  + -0.046127 * t.OUT_3  + -0.264265 * t.OUT_4  + -0.034568 * t.OUT_5  + 0.229726 * t.OUT_6  + -0.138489 * t.OUT_7  + 0.200832 * t.OUT_8  + -0.176042 * t.OUT_9 AS OUT_43,
    -0.161740 + -0.144849 * t.OUT_0  + -0.155488 * t.OUT_1  + 0.015760 * t.OUT_2  + -0.021824 * t.OUT_3  + -0.050433 * t.OUT_4  + -0.192037 * t.OUT_5  + 0.080339 * t.OUT_6  + -0.082378 * t.OUT_7  + 0.186041 * t.OUT_8  + 0.041558 * t.OUT_9 AS OUT_44,
    -0.012408 + -0.174945 * t.OUT_0  + -0.164868 * t.OUT_1  + -0.066902 * t.OUT_2  + 0.146786 * t.OUT_3  + 0.225060 * t.OUT_4  + -0.030055 * t.OUT_5  + -0.160540 * t.OUT_6  + -0.068753 * t.OUT_7  + -0.008165 * t.OUT_8  + 0.068250 * t.OUT_9 AS OUT_45,
    0.173181 + 0.103649 * t.OUT_0  + 0.073844 * t.OUT_1  + -0.179447 * t.OUT_2  + 0.055329 * t.OUT_3  + 0.169487 * t.OUT_4  + 0.110267 * t.OUT_5  + 0.129616 * t.OUT_6  + -0.152415 * t.OUT_7  + -0.118591 * t.OUT_8  + -0.208401 * t.OUT_9 AS OUT_46,
    -0.037523 + 0.105205 * t.OUT_0  + 0.112223 * t.OUT_1  + -0.166386 * t.OUT_2  + -0.086944 * t.OUT_3  + -0.081725 * t.OUT_4  + -0.198846 * t.OUT_5  + 0.154568 * t.OUT_6  + 0.061974 * t.OUT_7  + 0.253304 * t.OUT_8  + 0.184051 * t.OUT_9 AS OUT_47,
    0.185687 + 0.159839 * t.OUT_0  + -0.067081 * t.OUT_1  + 0.088950 * t.OUT_2  + -0.078233 * t.OUT_3  + 0.140102 * t.OUT_4  + -0.047679 * t.OUT_5  + 0.160961 * t.OUT_6  + -0.155877 * t.OUT_7  + -0.069424 * t.OUT_8  + -0.130409 * t.OUT_9 AS OUT_48,
    0.025101 + 0.202223 * t.OUT_0  + 0.033112 * t.OUT_1  + 0.115334 * t.OUT_2  + 0.045853 * t.OUT_3  + 0.018918 * t.OUT_4  + 0.185408 * t.OUT_5  + -0.033102 * t.OUT_6  + 0.212738 * t.OUT_7  + -0.009578 * t.OUT_8  + 0.134547 * t.OUT_9 AS OUT_49,
    0.258695 + 0.186088 * t.OUT_0  + 0.059195 * t.OUT_1  + -0.236184 * t.OUT_2  + 0.233223 * t.OUT_3  + 0.237457 * t.OUT_4  + -0.187191 * t.OUT_5  + -0.099236 * t.OUT_6  + 0.009877 * t.OUT_7  + 0.004864 * t.OUT_8  + -0.019844 * t.OUT_9 AS OUT_50,
    -0.151936 + -0.130778 * t.OUT_0  + -0.126580 * t.OUT_1  + -0.051437 * t.OUT_2  + 0.005124 * t.OUT_3  + 0.236139 * t.OUT_4  + -0.049467 * t.OUT_5  + 0.102575 * t.OUT_6  + -0.040619 * t.OUT_7  + -0.180566 * t.OUT_8  + 0.156870 * t.OUT_9 AS OUT_51,
    -0.150384 + 0.112889 * t.OUT_0  + -0.008301 * t.OUT_1  + 0.175624 * t.OUT_2  + -0.167136 * t.OUT_3  + -0.075581 * t.OUT_4  + -0.010677 * t.OUT_5  + -0.119336 * t.OUT_6  + -0.200898 * t.OUT_7  + 0.120186 * t.OUT_8  + 0.229543 * t.OUT_9 AS OUT_52,
    0.000184 + 0.216587 * t.OUT_0  + 0.223704 * t.OUT_1  + -0.119636 * t.OUT_2  + -0.141179 * t.OUT_3  + 0.199358 * t.OUT_4  + 0.075952 * t.OUT_5  + -0.148001 * t.OUT_6  + -0.197476 * t.OUT_7  + 0.126739 * t.OUT_8  + -0.118674 * t.OUT_9 AS OUT_53,
    -0.050822 + -0.163208 * t.OUT_0  + 0.206650 * t.OUT_1  + 0.021043 * t.OUT_2  + -0.220405 * t.OUT_3  + 0.156413 * t.OUT_4  + -0.108660 * t.OUT_5  + 0.187435 * t.OUT_6  + -0.040785 * t.OUT_7  + -0.142647 * t.OUT_8  + 0.020579 * t.OUT_9 AS OUT_54,
    -0.037980 + 0.118452 * t.OUT_0  + -0.015728 * t.OUT_1  + -0.059648 * t.OUT_2  + 0.101177 * t.OUT_3  + 0.218784 * t.OUT_4  + 0.201335 * t.OUT_5  + 0.102061 * t.OUT_6  + 0.187879 * t.OUT_7  + 0.162397 * t.OUT_8  + 0.187899 * t.OUT_9 AS OUT_55,
    0.245952 + 0.068683 * t.OUT_0  + -0.167943 * t.OUT_1  + 0.052227 * t.OUT_2  + -0.089599 * t.OUT_3  + 0.186636 * t.OUT_4  + -0.020547 * t.OUT_5  + -0.177927 * t.OUT_6  + 0.175559 * t.OUT_7  + 0.028262 * t.OUT_8  + -0.085627 * t.OUT_9 AS OUT_56,
    -0.025855 + 0.039874 * t.OUT_0  + -0.088590 * t.OUT_1  + -0.147558 * t.OUT_2  + -0.023663 * t.OUT_3  + 0.047544 * t.OUT_4  + -0.239954 * t.OUT_5  + 0.134834 * t.OUT_6  + 0.034561 * t.OUT_7  + 0.143635 * t.OUT_8  + 0.135582 * t.OUT_9 AS OUT_57,
    0.051212 + 0.003035 * t.OUT_0  + 0.071141 * t.OUT_1  + 0.027289 * t.OUT_2  + -0.199281 * t.OUT_3  + 0.002314 * t.OUT_4  + -0.140191 * t.OUT_5  + -0.088541 * t.OUT_6  + -0.233474 * t.OUT_7  + 0.146089 * t.OUT_8  + -0.173086 * t.OUT_9 AS OUT_58,
    0.126806 + 0.121063 * t.OUT_0  + -0.166867 * t.OUT_1  + 0.131807 * t.OUT_2  + 0.002859 * t.OUT_3  + -0.004860 * t.OUT_4  + 0.123854 * t.OUT_5  + -0.183728 * t.OUT_6  + -0.102470 * t.OUT_7  + -0.228067 * t.OUT_8  + -0.004913 * t.OUT_9 AS OUT_59,
    0.085072 + -0.174973 * t.OUT_0  + 0.099386 * t.OUT_1  + 0.045139 * t.OUT_2  + -0.190523 * t.OUT_3  + 0.001323 * t.OUT_4  + 0.034986 * t.OUT_5  + 0.076812 * t.OUT_6  + -0.101193 * t.OUT_7  + -0.223730 * t.OUT_8  + -0.159669 * t.OUT_9 AS OUT_60,
    0.068954 + 0.014771 * t.OUT_0  + -0.144633 * t.OUT_1  + 0.173200 * t.OUT_2  + -0.093473 * t.OUT_3  + -0.014303 * t.OUT_4  + -0.069810 * t.OUT_5  + -0.093958 * t.OUT_6  + -0.048105 * t.OUT_7  + 0.232143 * t.OUT_8  + 0.084198 * t.OUT_9 AS OUT_61,
    -0.024611 + 0.063650 * t.OUT_0  + 0.243284 * t.OUT_1  + 0.138379 * t.OUT_2  + 0.215796 * t.OUT_3  + 0.056391 * t.OUT_4  + -0.033512 * t.OUT_5  + 0.190669 * t.OUT_6  + 0.033682 * t.OUT_7  + -0.085718 * t.OUT_8  + 0.056728 * t.OUT_9 AS OUT_62,
    0.171500 + 0.106666 * t.OUT_0  + 0.192423 * t.OUT_1  + 0.191241 * t.OUT_2  + -0.126305 * t.OUT_3  + -0.102351 * t.OUT_4  + -0.025841 * t.OUT_5  + 0.138154 * t.OUT_6  + -0.078927 * t.OUT_7  + -0.080021 * t.OUT_8  + -0.025543 * t.OUT_9 AS OUT_63,
    -0.185816 + -0.175960 * t.OUT_0  + -0.078778 * t.OUT_1  + 0.048514 * t.OUT_2  + 0.202368 * t.OUT_3  + -0.118713 * t.OUT_4  + 0.191699 * t.OUT_5  + -0.057453 * t.OUT_6  + 0.052183 * t.OUT_7  + -0.117090 * t.OUT_8  + -0.206850 * t.OUT_9 AS OUT_64,
    0.108566 + 0.185479 * t.OUT_0  + 0.149098 * t.OUT_1  + -0.186735 * t.OUT_2  + -0.164657 * t.OUT_3  + 0.065283 * t.OUT_4  + 0.175893 * t.OUT_5  + 0.147656 * t.OUT_6  + 0.155073 * t.OUT_7  + -0.243695 * t.OUT_8  + -0.143130 * t.OUT_9 AS OUT_65,
    0.257949 + -0.137309 * t.OUT_0  + -0.144184 * t.OUT_1  + 0.012133 * t.OUT_2  + 0.082176 * t.OUT_3  + 0.190694 * t.OUT_4  + 0.005798 * t.OUT_5  + 0.181220 * t.OUT_6  + -0.027005 * t.OUT_7  + 0.246607 * t.OUT_8  + 0.161456 * t.OUT_9 AS OUT_66,
    0.133582 + -0.242877 * t.OUT_0  + 0.142335 * t.OUT_1  + -0.130866 * t.OUT_2  + -0.166294 * t.OUT_3  + -0.097560 * t.OUT_4  + -0.038255 * t.OUT_5  + 0.124317 * t.OUT_6  + 0.198850 * t.OUT_7  + 0.256110 * t.OUT_8  + -0.135369 * t.OUT_9 AS OUT_67,
    -0.012511 + 0.196458 * t.OUT_0  + -0.170962 * t.OUT_1  + 0.058788 * t.OUT_2  + 0.089600 * t.OUT_3  + -0.077058 * t.OUT_4  + 0.118468 * t.OUT_5  + 0.177610 * t.OUT_6  + 0.010422 * t.OUT_7  + -0.018540 * t.OUT_8  + 0.173015 * t.OUT_9 AS OUT_68,
    -0.031707 + 0.247780 * t.OUT_0  + 0.169411 * t.OUT_1  + 0.024256 * t.OUT_2  + -0.138065 * t.OUT_3  + -0.128315 * t.OUT_4  + -0.059419 * t.OUT_5  + -0.042181 * t.OUT_6  + 0.176636 * t.OUT_7  + 0.207466 * t.OUT_8  + -0.129460 * t.OUT_9 AS OUT_69,
    0.101920 + -0.004214 * t.OUT_0  + 0.076461 * t.OUT_1  + 0.203110 * t.OUT_2  + -0.151810 * t.OUT_3  + -0.064996 * t.OUT_4  + 0.061140 * t.OUT_5  + -0.159822 * t.OUT_6  + 0.146270 * t.OUT_7  + -0.156370 * t.OUT_8  + 0.145161 * t.OUT_9 AS OUT_70,
    -0.108948 + -0.212504 * t.OUT_0  + -0.128208 * t.OUT_1  + 0.150428 * t.OUT_2  + -0.141937 * t.OUT_3  + -0.144247 * t.OUT_4  + 0.065126 * t.OUT_5  + 0.018809 * t.OUT_6  + -0.187147 * t.OUT_7  + 0.118042 * t.OUT_8  + -0.080796 * t.OUT_9 AS OUT_71,
    -0.232565 + -0.030566 * t.OUT_0  + 0.082011 * t.OUT_1  + 0.243510 * t.OUT_2  + -0.233562 * t.OUT_3  + -0.060671 * t.OUT_4  + -0.114666 * t.OUT_5  + 0.002103 * t.OUT_6  + 0.081985 * t.OUT_7  + 0.152163 * t.OUT_8  + 0.019856 * t.OUT_9 AS OUT_72,
    -0.114489 + 0.238424 * t.OUT_0  + 0.136092 * t.OUT_1  + -0.152421 * t.OUT_2  + 0.038009 * t.OUT_3  + -0.035541 * t.OUT_4  + 0.036653 * t.OUT_5  + 0.102614 * t.OUT_6  + 0.011395 * t.OUT_7  + 0.016971 * t.OUT_8  + -0.066569 * t.OUT_9 AS OUT_73,
    0.059205 + -0.197451 * t.OUT_0  + -0.001033 * t.OUT_1  + 0.081397 * t.OUT_2  + -0.218816 * t.OUT_3  + 0.152256 * t.OUT_4  + 0.132653 * t.OUT_5  + -0.045596 * t.OUT_6  + -0.114082 * t.OUT_7  + -0.123420 * t.OUT_8  + -0.153332 * t.OUT_9 AS OUT_74,
    0.179723 + 0.114608 * t.OUT_0  + -0.070050 * t.OUT_1  + 0.109056 * t.OUT_2  + 0.165836 * t.OUT_3  + 0.027941 * t.OUT_4  + -0.029156 * t.OUT_5  + 0.067904 * t.OUT_6  + 0.039852 * t.OUT_7  + 0.205438 * t.OUT_8  + 0.024021 * t.OUT_9 AS OUT_75,
    0.068091 + 0.076998 * t.OUT_0  + 0.169716 * t.OUT_1  + 0.113754 * t.OUT_2  + -0.242054 * t.OUT_3  + 0.018669 * t.OUT_4  + 0.122949 * t.OUT_5  + -0.101158 * t.OUT_6  + 0.146989 * t.OUT_7  + 0.046800 * t.OUT_8  + 0.247979 * t.OUT_9 AS OUT_76,
    0.087062 + 0.154590 * t.OUT_0  + 0.225862 * t.OUT_1  + 0.188441 * t.OUT_2  + 0.007527 * t.OUT_3  + 0.049918 * t.OUT_4  + -0.032899 * t.OUT_5  + 0.146044 * t.OUT_6  + -0.107422 * t.OUT_7  + -0.237697 * t.OUT_8  + -0.187534 * t.OUT_9 AS OUT_77,
    0.204882 + 0.208423 * t.OUT_0  + -0.064419 * t.OUT_1  + -0.149613 * t.OUT_2  + 0.158154 * t.OUT_3  + 0.052886 * t.OUT_4  + -0.164837 * t.OUT_5  + -0.168930 * t.OUT_6  + 0.200569 * t.OUT_7  + 0.262416 * t.OUT_8  + 0.186392 * t.OUT_9 AS OUT_78,
    -0.028050 + -0.150910 * t.OUT_0  + 0.006910 * t.OUT_1  + 0.186821 * t.OUT_2  + -0.033268 * t.OUT_3  + -0.025984 * t.OUT_4  + 0.193883 * t.OUT_5  + 0.167914 * t.OUT_6  + -0.166991 * t.OUT_7  + -0.149992 * t.OUT_8  + -0.233423 * t.OUT_9 AS OUT_79,
    0.183976 + 0.076107 * t.OUT_0  + 0.095072 * t.OUT_1  + 0.139358 * t.OUT_2  + -0.011007 * t.OUT_3  + -0.117813 * t.OUT_4  + -0.093984 * t.OUT_5  + 0.252230 * t.OUT_6  + -0.049672 * t.OUT_7  + -0.168194 * t.OUT_8  + -0.013628 * t.OUT_9 AS OUT_80,
    -0.034410 + 0.190809 * t.OUT_0  + 0.055143 * t.OUT_1  + 0.206172 * t.OUT_2  + -0.054831 * t.OUT_3  + 0.227978 * t.OUT_4  + 0.016353 * t.OUT_5  + -0.027935 * t.OUT_6  + -0.141611 * t.OUT_7  + 0.109458 * t.OUT_8  + 0.220015 * t.OUT_9 AS OUT_81,
    -0.027635 + 0.144490 * t.OUT_0  + -0.033502 * t.OUT_1  + 0.019045 * t.OUT_2  + 0.147923 * t.OUT_3  + 0.202416 * t.OUT_4  + -0.092634 * t.OUT_5  + -0.204446 * t.OUT_6  + -0.180346 * t.OUT_7  + -0.045001 * t.OUT_8  + 0.035186 * t.OUT_9 AS OUT_82,
    0.224964 + -0.046556 * t.OUT_0  + 0.182307 * t.OUT_1  + 0.117513 * t.OUT_2  + -0.138025 * t.OUT_3  + 0.052097 * t.OUT_4  + -0.072434 * t.OUT_5  + 0.169002 * t.OUT_6  + -0.232375 * t.OUT_7  + -0.059492 * t.OUT_8  + 0.069745 * t.OUT_9 AS OUT_83,
    -0.188288 + -0.233863 * t.OUT_0  + 0.050302 * t.OUT_1  + 0.165268 * t.OUT_2  + -0.172955 * t.OUT_3  + 0.063787 * t.OUT_4  + 0.105140 * t.OUT_5  + -0.032467 * t.OUT_6  + -0.023570 * t.OUT_7  + 0.163769 * t.OUT_8  + 0.228970 * t.OUT_9 AS OUT_84,
    -0.235022 + 0.100107 * t.OUT_0  + 0.125231 * t.OUT_1  + 0.092846 * t.OUT_2  + -0.129929 * t.OUT_3  + 0.085448 * t.OUT_4  + 0.172950 * t.OUT_5  + -0.205838 * t.OUT_6  + 0.068912 * t.OUT_7  + 0.135188 * t.OUT_8  + -0.200568 * t.OUT_9 AS OUT_85,
    -0.054145 + 0.036674 * t.OUT_0  + -0.129664 * t.OUT_1  + 0.109354 * t.OUT_2  + 0.043195 * t.OUT_3  + 0.009514 * t.OUT_4  + -0.242231 * t.OUT_5  + -0.064852 * t.OUT_6  + -0.087091 * t.OUT_7  + 0.178420 * t.OUT_8  + -0.149334 * t.OUT_9 AS OUT_86,
    -0.137442 + -0.059450 * t.OUT_0  + -0.000795 * t.OUT_1  + -0.257571 * t.OUT_2  + 0.191749 * t.OUT_3  + 0.182603 * t.OUT_4  + -0.146271 * t.OUT_5  + -0.193729 * t.OUT_6  + -0.072526 * t.OUT_7  + -0.100152 * t.OUT_8  + -0.135810 * t.OUT_9 AS OUT_87,
    -0.256592 + -0.149676 * t.OUT_0  + 0.188995 * t.OUT_1  + 0.057747 * t.OUT_2  + -0.001497 * t.OUT_3  + 0.103530 * t.OUT_4  + 0.002583 * t.OUT_5  + 0.180993 * t.OUT_6  + -0.137195 * t.OUT_7  + -0.036268 * t.OUT_8  + -0.180344 * t.OUT_9 AS OUT_88,
    0.061132 + -0.202200 * t.OUT_0  + 0.163374 * t.OUT_1  + 0.179629 * t.OUT_2  + 0.078582 * t.OUT_3  + -0.002747 * t.OUT_4  + -0.127812 * t.OUT_5  + -0.061087 * t.OUT_6  + -0.075290 * t.OUT_7  + -0.214664 * t.OUT_8  + 0.222920 * t.OUT_9 AS OUT_89,
    -0.211709 + -0.097551 * t.OUT_0  + -0.073752 * t.OUT_1  + 0.042674 * t.OUT_2  + 0.135472 * t.OUT_3  + -0.043034 * t.OUT_4  + -0.144724 * t.OUT_5  + -0.087559 * t.OUT_6  + 0.107354 * t.OUT_7  + -0.115430 * t.OUT_8  + -0.056727 * t.OUT_9 AS OUT_90,
    0.199807 + 0.194529 * t.OUT_0  + -0.091048 * t.OUT_1  + 0.216806 * t.OUT_2  + 0.157094 * t.OUT_3  + -0.242619 * t.OUT_4  + 0.162755 * t.OUT_5  + -0.003131 * t.OUT_6  + -0.060882 * t.OUT_7  + -0.150065 * t.OUT_8  + 0.181787 * t.OUT_9 AS OUT_91,
    0.144266 + -0.012681 * t.OUT_0  + 0.185810 * t.OUT_1  + -0.050970 * t.OUT_2  + -0.175457 * t.OUT_3  + 0.198532 * t.OUT_4  + -0.138446 * t.OUT_5  + 0.192243 * t.OUT_6  + -0.253959 * t.OUT_7  + -0.114993 * t.OUT_8  + 0.198878 * t.OUT_9 AS OUT_92,
    -0.236628 + -0.082805 * t.OUT_0  + -0.120433 * t.OUT_1  + 0.045416 * t.OUT_2  + 0.095049 * t.OUT_3  + -0.164176 * t.OUT_4  + -0.086399 * t.OUT_5  + -0.116585 * t.OUT_6  + -0.171945 * t.OUT_7  + -0.156393 * t.OUT_8  + -0.010609 * t.OUT_9 AS OUT_93,
    -0.213653 + -0.026553 * t.OUT_0  + 0.013924 * t.OUT_1  + -0.193374 * t.OUT_2  + -0.147528 * t.OUT_3  + -0.090802 * t.OUT_4  + 0.152312 * t.OUT_5  + 0.014214 * t.OUT_6  + -0.191795 * t.OUT_7  + -0.094851 * t.OUT_8  + -0.219602 * t.OUT_9 AS OUT_94,
    -0.117697 + -0.229377 * t.OUT_0  + 0.169912 * t.OUT_1  + 0.081233 * t.OUT_2  + 0.138851 * t.OUT_3  + 0.191286 * t.OUT_4  + 0.253461 * t.OUT_5  + 0.013221 * t.OUT_6  + 0.212212 * t.OUT_7  + -0.057470 * t.OUT_8  + -0.143235 * t.OUT_9 AS OUT_95,
    0.139005 + 0.056205 * t.OUT_0  + -0.217410 * t.OUT_1  + -0.196648 * t.OUT_2  + -0.156463 * t.OUT_3  + -0.181752 * t.OUT_4  + -0.005000 * t.OUT_5  + -0.135027 * t.OUT_6  + 0.228345 * t.OUT_7  + 0.108960 * t.OUT_8  + 0.212212 * t.OUT_9 AS OUT_96,
    0.032529 + -0.052379 * t.OUT_0  + -0.104520 * t.OUT_1  + 0.108137 * t.OUT_2  + -0.034589 * t.OUT_3  + 0.238681 * t.OUT_4  + 0.110525 * t.OUT_5  + 0.115483 * t.OUT_6  + 0.196616 * t.OUT_7  + 0.049551 * t.OUT_8  + 0.232316 * t.OUT_9 AS OUT_97,
    0.249607 + -0.078964 * t.OUT_0  + -0.099809 * t.OUT_1  + -0.025621 * t.OUT_2  + 0.159625 * t.OUT_3  + -0.098335 * t.OUT_4  + -0.116852 * t.OUT_5  + -0.160979 * t.OUT_6  + 0.183005 * t.OUT_7  + 0.166751 * t.OUT_8  + -0.021937 * t.OUT_9 AS OUT_98,
    0.131188 + -0.076892 * t.OUT_0  + -0.148946 * t.OUT_1  + 0.034818 * t.OUT_2  + -0.155794 * t.OUT_3  + 0.179814 * t.OUT_4  + -0.026784 * t.OUT_5  + 0.208747 * t.OUT_6  + 0.132547 * t.OUT_7  + 0.080891 * t.OUT_8  + -0.030363 * t.OUT_9 AS OUT_99
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
    0.011470 + 0.233694 * t.OUT_0  + -0.013335 * t.OUT_1  + -0.256661 * t.OUT_2  + 0.102942 * t.OUT_3  + -0.097273 * t.OUT_4  + -0.151439 * t.OUT_5  + -0.135401 * t.OUT_6  + 0.175474 * t.OUT_7  + -0.143427 * t.OUT_8  + 0.171789 * t.OUT_9  + -0.190254 * t.OUT_10  + 0.268806 * t.OUT_11  + -0.196275 * t.OUT_12  + 0.008582 * t.OUT_13  + 0.173907 * t.OUT_14  + 0.008387 * t.OUT_15  + 0.134376 * t.OUT_16  + -0.200428 * t.OUT_17  + -0.013595 * t.OUT_18  + -0.113894 * t.OUT_19  + -0.047039 * t.OUT_20  + -0.233660 * t.OUT_21  + 0.195452 * t.OUT_22  + 0.073473 * t.OUT_23  + -0.096376 * t.OUT_24  + -0.027993 * t.OUT_25  + -0.029747 * t.OUT_26  + -0.163323 * t.OUT_27  + 0.164539 * t.OUT_28  + -0.274136 * t.OUT_29  + -0.251866 * t.OUT_30  + 0.118644 * t.OUT_31  + -0.061831 * t.OUT_32  + -0.206118 * t.OUT_33  + -0.124722 * t.OUT_34  + -0.095965 * t.OUT_35  + 0.034332 * t.OUT_36  + 0.037659 * t.OUT_37  + -0.218892 * t.OUT_38  + -0.118348 * t.OUT_39  + -0.130534 * t.OUT_40  + -0.239968 * t.OUT_41  + -0.036410 * t.OUT_42  + 0.169978 * t.OUT_43  + -0.079362 * t.OUT_44  + -0.076906 * t.OUT_45  + -0.085257 * t.OUT_46  + -0.134618 * t.OUT_47  + 0.265993 * t.OUT_48  + 0.248593 * t.OUT_49  + -0.080907 * t.OUT_50  + -0.023961 * t.OUT_51  + 0.206587 * t.OUT_52  + -0.195487 * t.OUT_53  + 0.058719 * t.OUT_54  + 0.006130 * t.OUT_55  + -0.025986 * t.OUT_56  + -0.120571 * t.OUT_57  + 0.141321 * t.OUT_58  + -0.087572 * t.OUT_59  + -0.039919 * t.OUT_60  + -0.001065 * t.OUT_61  + -0.050331 * t.OUT_62  + 0.128714 * t.OUT_63  + -0.031188 * t.OUT_64  + -0.054675 * t.OUT_65  + 0.041428 * t.OUT_66  + 0.218759 * t.OUT_67  + -0.070607 * t.OUT_68  + -0.144499 * t.OUT_69  + -0.133405 * t.OUT_70  + 0.180202 * t.OUT_71  + 0.182447 * t.OUT_72  + -0.090547 * t.OUT_73  + 0.070994 * t.OUT_74  + -0.183134 * t.OUT_75  + 0.200361 * t.OUT_76  + -0.054612 * t.OUT_77  + -0.126195 * t.OUT_78  + 0.037009 * t.OUT_79  + 0.251738 * t.OUT_80  + -0.035662 * t.OUT_81  + 0.091749 * t.OUT_82  + 0.222622 * t.OUT_83  + 0.173506 * t.OUT_84  + -0.168054 * t.OUT_85  + -0.035134 * t.OUT_86  + -0.104497 * t.OUT_87  + -0.168060 * t.OUT_88  + -0.021562 * t.OUT_89  + -0.020785 * t.OUT_90  + 0.101560 * t.OUT_91  + 0.184490 * t.OUT_92  + -0.074337 * t.OUT_93  + -0.102220 * t.OUT_94  + 0.025883 * t.OUT_95  + 0.060561 * t.OUT_96  + -0.001900 * t.OUT_97  + -0.103551 * t.OUT_98  + 0.231914 * t.OUT_99 AS OUT_0
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