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
    0.120822 + -0.009228 * t.OUT_0  + 0.071534 * t.OUT_1  + -0.068621 * t.OUT_2  + 0.144036 * t.OUT_3  + -0.140753 * t.OUT_4  + 0.129713 * t.OUT_5  + 0.181965 * t.OUT_6  + -0.171868 * t.OUT_7  + 0.154857 * t.OUT_8  + 0.109843 * t.OUT_9 AS OUT_0,
    0.191353 + 0.149092 * t.OUT_0  + -0.202620 * t.OUT_1  + -0.014117 * t.OUT_2  + -0.235462 * t.OUT_3  + 0.041190 * t.OUT_4  + 0.182719 * t.OUT_5  + -0.096540 * t.OUT_6  + -0.046736 * t.OUT_7  + -0.054761 * t.OUT_8  + 0.109989 * t.OUT_9 AS OUT_1,
    0.194378 + -0.095324 * t.OUT_0  + -0.076759 * t.OUT_1  + -0.191204 * t.OUT_2  + -0.161817 * t.OUT_3  + 0.118825 * t.OUT_4  + -0.152833 * t.OUT_5  + -0.185415 * t.OUT_6  + -0.169759 * t.OUT_7  + -0.100858 * t.OUT_8  + -0.139033 * t.OUT_9 AS OUT_2,
    0.017181 + 0.002887 * t.OUT_0  + 0.111347 * t.OUT_1  + 0.167195 * t.OUT_2  + -0.025946 * t.OUT_3  + 0.186654 * t.OUT_4  + 0.179352 * t.OUT_5  + 0.072956 * t.OUT_6  + -0.012253 * t.OUT_7  + -0.088097 * t.OUT_8  + -0.050502 * t.OUT_9 AS OUT_3,
    0.226481 + 0.050371 * t.OUT_0  + 0.187485 * t.OUT_1  + 0.216681 * t.OUT_2  + -0.186509 * t.OUT_3  + -0.067807 * t.OUT_4  + -0.209558 * t.OUT_5  + 0.086747 * t.OUT_6  + -0.058574 * t.OUT_7  + 0.231851 * t.OUT_8  + -0.128324 * t.OUT_9 AS OUT_4,
    0.150591 + -0.126970 * t.OUT_0  + 0.237024 * t.OUT_1  + 0.031659 * t.OUT_2  + 0.111830 * t.OUT_3  + 0.047285 * t.OUT_4  + 0.197582 * t.OUT_5  + -0.198557 * t.OUT_6  + -0.215552 * t.OUT_7  + -0.218536 * t.OUT_8  + -0.083940 * t.OUT_9 AS OUT_5,
    -0.067885 + 0.089918 * t.OUT_0  + 0.224006 * t.OUT_1  + 0.013785 * t.OUT_2  + -0.014126 * t.OUT_3  + 0.265927 * t.OUT_4  + -0.177505 * t.OUT_5  + -0.219847 * t.OUT_6  + 0.012258 * t.OUT_7  + -0.119453 * t.OUT_8  + 0.209269 * t.OUT_9 AS OUT_6,
    0.133395 + 0.010398 * t.OUT_0  + 0.106151 * t.OUT_1  + 0.098723 * t.OUT_2  + -0.051255 * t.OUT_3  + 0.169020 * t.OUT_4  + -0.129283 * t.OUT_5  + 0.053525 * t.OUT_6  + -0.137755 * t.OUT_7  + -0.031233 * t.OUT_8  + 0.121300 * t.OUT_9 AS OUT_7,
    -0.014975 + 0.189963 * t.OUT_0  + -0.067140 * t.OUT_1  + 0.025159 * t.OUT_2  + -0.084392 * t.OUT_3  + 0.220331 * t.OUT_4  + -0.169869 * t.OUT_5  + 0.018054 * t.OUT_6  + 0.087194 * t.OUT_7  + -0.045078 * t.OUT_8  + -0.065993 * t.OUT_9 AS OUT_8,
    0.052799 + 0.057974 * t.OUT_0  + -0.006073 * t.OUT_1  + 0.134434 * t.OUT_2  + 0.177296 * t.OUT_3  + -0.077824 * t.OUT_4  + -0.003518 * t.OUT_5  + -0.037487 * t.OUT_6  + 0.153604 * t.OUT_7  + 0.106272 * t.OUT_8  + 0.113816 * t.OUT_9 AS OUT_9,
    -0.105338 + 0.178366 * t.OUT_0  + 0.087938 * t.OUT_1  + -0.015058 * t.OUT_2  + 0.084355 * t.OUT_3  + -0.103177 * t.OUT_4  + 0.041401 * t.OUT_5  + 0.027685 * t.OUT_6  + 0.098225 * t.OUT_7  + -0.233940 * t.OUT_8  + 0.098854 * t.OUT_9 AS OUT_10,
    0.201330 + -0.014622 * t.OUT_0  + 0.138193 * t.OUT_1  + 0.163609 * t.OUT_2  + -0.052348 * t.OUT_3  + -0.119117 * t.OUT_4  + 0.193174 * t.OUT_5  + 0.187996 * t.OUT_6  + 0.080998 * t.OUT_7  + -0.098453 * t.OUT_8  + -0.065966 * t.OUT_9 AS OUT_11,
    0.009467 + 0.220452 * t.OUT_0  + 0.141209 * t.OUT_1  + 0.077464 * t.OUT_2  + 0.085655 * t.OUT_3  + 0.063651 * t.OUT_4  + -0.100918 * t.OUT_5  + -0.043981 * t.OUT_6  + -0.035606 * t.OUT_7  + -0.156785 * t.OUT_8  + 0.083005 * t.OUT_9 AS OUT_12,
    -0.183795 + -0.217911 * t.OUT_0  + -0.013645 * t.OUT_1  + -0.111490 * t.OUT_2  + -0.209226 * t.OUT_3  + -0.198782 * t.OUT_4  + 0.183870 * t.OUT_5  + 0.090184 * t.OUT_6  + -0.225788 * t.OUT_7  + -0.107774 * t.OUT_8  + -0.175664 * t.OUT_9 AS OUT_13,
    -0.234189 + -0.098030 * t.OUT_0  + 0.095132 * t.OUT_1  + -0.030612 * t.OUT_2  + 0.211266 * t.OUT_3  + -0.108558 * t.OUT_4  + -0.039710 * t.OUT_5  + 0.110713 * t.OUT_6  + -0.219550 * t.OUT_7  + 0.205907 * t.OUT_8  + -0.033438 * t.OUT_9 AS OUT_14,
    0.177485 + 0.071417 * t.OUT_0  + 0.141309 * t.OUT_1  + -0.249323 * t.OUT_2  + -0.061844 * t.OUT_3  + -0.263982 * t.OUT_4  + -0.193349 * t.OUT_5  + -0.008841 * t.OUT_6  + 0.168814 * t.OUT_7  + -0.045934 * t.OUT_8  + 0.156036 * t.OUT_9 AS OUT_15,
    -0.052764 + 0.091365 * t.OUT_0  + 0.004648 * t.OUT_1  + -0.065971 * t.OUT_2  + 0.034728 * t.OUT_3  + -0.058541 * t.OUT_4  + -0.084979 * t.OUT_5  + 0.003545 * t.OUT_6  + -0.116480 * t.OUT_7  + 0.102617 * t.OUT_8  + -0.147458 * t.OUT_9 AS OUT_16,
    -0.194255 + -0.117235 * t.OUT_0  + -0.037280 * t.OUT_1  + -0.175542 * t.OUT_2  + -0.183401 * t.OUT_3  + -0.067301 * t.OUT_4  + -0.059607 * t.OUT_5  + 0.155510 * t.OUT_6  + 0.038875 * t.OUT_7  + -0.112388 * t.OUT_8  + 0.205101 * t.OUT_9 AS OUT_17,
    -0.085278 + -0.045029 * t.OUT_0  + 0.047370 * t.OUT_1  + 0.084345 * t.OUT_2  + -0.098835 * t.OUT_3  + 0.039558 * t.OUT_4  + 0.044556 * t.OUT_5  + -0.151934 * t.OUT_6  + -0.129097 * t.OUT_7  + -0.094057 * t.OUT_8  + 0.212080 * t.OUT_9 AS OUT_18,
    -0.027524 + -0.151901 * t.OUT_0  + -0.072795 * t.OUT_1  + -0.034910 * t.OUT_2  + 0.083752 * t.OUT_3  + -0.010559 * t.OUT_4  + -0.191144 * t.OUT_5  + -0.176275 * t.OUT_6  + 0.275995 * t.OUT_7  + -0.042992 * t.OUT_8  + 0.135455 * t.OUT_9 AS OUT_19,
    0.236423 + 0.097991 * t.OUT_0  + 0.158977 * t.OUT_1  + -0.112594 * t.OUT_2  + -0.108422 * t.OUT_3  + 0.282408 * t.OUT_4  + 0.074451 * t.OUT_5  + -0.159068 * t.OUT_6  + -0.018299 * t.OUT_7  + 0.162644 * t.OUT_8  + -0.167891 * t.OUT_9 AS OUT_20,
    0.127579 + -0.230886 * t.OUT_0  + 0.170120 * t.OUT_1  + -0.212376 * t.OUT_2  + 0.186082 * t.OUT_3  + 0.188371 * t.OUT_4  + 0.081687 * t.OUT_5  + -0.245454 * t.OUT_6  + 0.060314 * t.OUT_7  + 0.148132 * t.OUT_8  + 0.040518 * t.OUT_9 AS OUT_21,
    0.112672 + -0.037238 * t.OUT_0  + -0.161557 * t.OUT_1  + 0.205178 * t.OUT_2  + -0.210600 * t.OUT_3  + -0.124535 * t.OUT_4  + -0.056533 * t.OUT_5  + -0.178617 * t.OUT_6  + -0.134306 * t.OUT_7  + -0.211930 * t.OUT_8  + 0.086139 * t.OUT_9 AS OUT_22,
    0.004209 + 0.001170 * t.OUT_0  + 0.066011 * t.OUT_1  + -0.089895 * t.OUT_2  + -0.125856 * t.OUT_3  + -0.004869 * t.OUT_4  + -0.111265 * t.OUT_5  + 0.100453 * t.OUT_6  + -0.020717 * t.OUT_7  + -0.059364 * t.OUT_8  + -0.229372 * t.OUT_9 AS OUT_23,
    0.244840 + -0.039149 * t.OUT_0  + -0.104294 * t.OUT_1  + -0.067466 * t.OUT_2  + 0.092436 * t.OUT_3  + 0.160186 * t.OUT_4  + 0.115241 * t.OUT_5  + -0.021538 * t.OUT_6  + -0.060157 * t.OUT_7  + -0.244322 * t.OUT_8  + 0.210900 * t.OUT_9 AS OUT_24,
    0.171119 + -0.111679 * t.OUT_0  + 0.041058 * t.OUT_1  + 0.020745 * t.OUT_2  + 0.098304 * t.OUT_3  + -0.229905 * t.OUT_4  + -0.173918 * t.OUT_5  + -0.136354 * t.OUT_6  + 0.006520 * t.OUT_7  + 0.290469 * t.OUT_8  + -0.069165 * t.OUT_9 AS OUT_25,
    -0.084701 + -0.146559 * t.OUT_0  + 0.045695 * t.OUT_1  + 0.076279 * t.OUT_2  + 0.127651 * t.OUT_3  + -0.138563 * t.OUT_4  + 0.153208 * t.OUT_5  + 0.024751 * t.OUT_6  + -0.220274 * t.OUT_7  + -0.011360 * t.OUT_8  + 0.093666 * t.OUT_9 AS OUT_26,
    -0.052110 + 0.155751 * t.OUT_0  + -0.132403 * t.OUT_1  + 0.069185 * t.OUT_2  + 0.097177 * t.OUT_3  + 0.003941 * t.OUT_4  + 0.106306 * t.OUT_5  + 0.060724 * t.OUT_6  + -0.105476 * t.OUT_7  + -0.058623 * t.OUT_8  + -0.262909 * t.OUT_9 AS OUT_27,
    -0.170380 + -0.036601 * t.OUT_0  + 0.080265 * t.OUT_1  + -0.177965 * t.OUT_2  + -0.138335 * t.OUT_3  + -0.138562 * t.OUT_4  + 0.057817 * t.OUT_5  + 0.096254 * t.OUT_6  + 0.137776 * t.OUT_7  + 0.099046 * t.OUT_8  + 0.067727 * t.OUT_9 AS OUT_28,
    -0.159175 + 0.052170 * t.OUT_0  + -0.141003 * t.OUT_1  + 0.214892 * t.OUT_2  + -0.160661 * t.OUT_3  + 0.071282 * t.OUT_4  + -0.231118 * t.OUT_5  + -0.056983 * t.OUT_6  + -0.166633 * t.OUT_7  + 0.140227 * t.OUT_8  + 0.204150 * t.OUT_9 AS OUT_29,
    0.192290 + -0.209124 * t.OUT_0  + -0.209969 * t.OUT_1  + 0.206924 * t.OUT_2  + -0.193638 * t.OUT_3  + -0.213704 * t.OUT_4  + -0.207837 * t.OUT_5  + -0.176644 * t.OUT_6  + -0.021939 * t.OUT_7  + 0.039534 * t.OUT_8  + 0.082043 * t.OUT_9 AS OUT_30,
    0.123037 + 0.021771 * t.OUT_0  + 0.146357 * t.OUT_1  + 0.196268 * t.OUT_2  + 0.086082 * t.OUT_3  + -0.070492 * t.OUT_4  + -0.094471 * t.OUT_5  + 0.052091 * t.OUT_6  + 0.093229 * t.OUT_7  + 0.156718 * t.OUT_8  + -0.061816 * t.OUT_9 AS OUT_31,
    0.182764 + -0.077985 * t.OUT_0  + 0.246927 * t.OUT_1  + -0.013077 * t.OUT_2  + 0.038153 * t.OUT_3  + -0.052805 * t.OUT_4  + -0.002443 * t.OUT_5  + -0.003825 * t.OUT_6  + -0.255656 * t.OUT_7  + 0.166999 * t.OUT_8  + 0.114894 * t.OUT_9 AS OUT_32,
    -0.033444 + 0.071079 * t.OUT_0  + -0.129625 * t.OUT_1  + 0.222989 * t.OUT_2  + 0.073204 * t.OUT_3  + 0.132547 * t.OUT_4  + -0.258184 * t.OUT_5  + 0.086722 * t.OUT_6  + 0.211622 * t.OUT_7  + -0.184263 * t.OUT_8  + 0.095516 * t.OUT_9 AS OUT_33,
    0.134222 + -0.046993 * t.OUT_0  + -0.087730 * t.OUT_1  + 0.146008 * t.OUT_2  + -0.067900 * t.OUT_3  + -0.045041 * t.OUT_4  + -0.064904 * t.OUT_5  + -0.190779 * t.OUT_6  + -0.202856 * t.OUT_7  + -0.048241 * t.OUT_8  + -0.084309 * t.OUT_9 AS OUT_34,
    0.046354 + 0.139794 * t.OUT_0  + -0.111984 * t.OUT_1  + 0.077509 * t.OUT_2  + 0.013927 * t.OUT_3  + 0.205151 * t.OUT_4  + -0.137185 * t.OUT_5  + -0.178968 * t.OUT_6  + -0.197099 * t.OUT_7  + 0.041665 * t.OUT_8  + 0.154306 * t.OUT_9 AS OUT_35,
    0.101197 + -0.096503 * t.OUT_0  + -0.162750 * t.OUT_1  + -0.025892 * t.OUT_2  + 0.288949 * t.OUT_3  + -0.020052 * t.OUT_4  + 0.230683 * t.OUT_5  + 0.088077 * t.OUT_6  + 0.030558 * t.OUT_7  + 0.033405 * t.OUT_8  + 0.044289 * t.OUT_9 AS OUT_36,
    -0.048115 + 0.250846 * t.OUT_0  + -0.135915 * t.OUT_1  + 0.263953 * t.OUT_2  + -0.091717 * t.OUT_3  + -0.201664 * t.OUT_4  + 0.204974 * t.OUT_5  + 0.017102 * t.OUT_6  + -0.000435 * t.OUT_7  + 0.212705 * t.OUT_8  + -0.161363 * t.OUT_9 AS OUT_37,
    0.204366 + -0.165131 * t.OUT_0  + -0.006192 * t.OUT_1  + -0.139333 * t.OUT_2  + -0.033426 * t.OUT_3  + 0.287072 * t.OUT_4  + -0.116911 * t.OUT_5  + -0.029489 * t.OUT_6  + -0.014941 * t.OUT_7  + -0.084556 * t.OUT_8  + 0.078110 * t.OUT_9 AS OUT_38,
    -0.062676 + 0.112220 * t.OUT_0  + -0.084656 * t.OUT_1  + -0.244593 * t.OUT_2  + -0.113479 * t.OUT_3  + -0.210614 * t.OUT_4  + 0.057922 * t.OUT_5  + 0.201866 * t.OUT_6  + 0.166584 * t.OUT_7  + -0.128630 * t.OUT_8  + -0.084167 * t.OUT_9 AS OUT_39,
    0.132469 + -0.095141 * t.OUT_0  + -0.112686 * t.OUT_1  + -0.104408 * t.OUT_2  + 0.036597 * t.OUT_3  + -0.043481 * t.OUT_4  + 0.094799 * t.OUT_5  + -0.200602 * t.OUT_6  + -0.083580 * t.OUT_7  + 0.139663 * t.OUT_8  + 0.166608 * t.OUT_9 AS OUT_40,
    0.139433 + 0.183331 * t.OUT_0  + -0.187007 * t.OUT_1  + 0.009836 * t.OUT_2  + -0.110481 * t.OUT_3  + 0.040870 * t.OUT_4  + 0.076357 * t.OUT_5  + -0.123415 * t.OUT_6  + 0.155863 * t.OUT_7  + -0.085351 * t.OUT_8  + -0.218862 * t.OUT_9 AS OUT_41,
    -0.062464 + 0.016923 * t.OUT_0  + -0.236787 * t.OUT_1  + 0.066282 * t.OUT_2  + -0.116805 * t.OUT_3  + 0.088394 * t.OUT_4  + 0.159022 * t.OUT_5  + 0.173381 * t.OUT_6  + -0.024404 * t.OUT_7  + 0.088210 * t.OUT_8  + -0.137664 * t.OUT_9 AS OUT_42,
    0.167026 + 0.220878 * t.OUT_0  + 0.019874 * t.OUT_1  + 0.216214 * t.OUT_2  + -0.036318 * t.OUT_3  + -0.258815 * t.OUT_4  + -0.016304 * t.OUT_5  + 0.239679 * t.OUT_6  + -0.131671 * t.OUT_7  + 0.179190 * t.OUT_8  + -0.205127 * t.OUT_9 AS OUT_43,
    -0.111757 + -0.151119 * t.OUT_0  + -0.146085 * t.OUT_1  + 0.037418 * t.OUT_2  + -0.016063 * t.OUT_3  + -0.057585 * t.OUT_4  + -0.197831 * t.OUT_5  + 0.085632 * t.OUT_6  + -0.058901 * t.OUT_7  + 0.249404 * t.OUT_8  + 0.050446 * t.OUT_9 AS OUT_44,
    0.048748 + -0.159160 * t.OUT_0  + -0.093188 * t.OUT_1  + -0.010250 * t.OUT_2  + 0.138992 * t.OUT_3  + 0.267079 * t.OUT_4  + -0.060361 * t.OUT_5  + -0.142058 * t.OUT_6  + -0.057143 * t.OUT_7  + 0.026822 * t.OUT_8  + 0.125518 * t.OUT_9 AS OUT_45,
    0.186797 + 0.052971 * t.OUT_0  + 0.023465 * t.OUT_1  + -0.174765 * t.OUT_2  + 0.005635 * t.OUT_3  + 0.143902 * t.OUT_4  + 0.100542 * t.OUT_5  + 0.126217 * t.OUT_6  + -0.152249 * t.OUT_7  + -0.127861 * t.OUT_8  + -0.207120 * t.OUT_9 AS OUT_46,
    -0.032199 + 0.072661 * t.OUT_0  + 0.108559 * t.OUT_1  + -0.170333 * t.OUT_2  + -0.163675 * t.OUT_3  + -0.098510 * t.OUT_4  + -0.215336 * t.OUT_5  + 0.136890 * t.OUT_6  + 0.045373 * t.OUT_7  + 0.217628 * t.OUT_8  + 0.229112 * t.OUT_9 AS OUT_47,
    0.140428 + 0.187864 * t.OUT_0  + -0.046538 * t.OUT_1  + 0.067441 * t.OUT_2  + -0.035475 * t.OUT_3  + 0.146323 * t.OUT_4  + -0.041564 * t.OUT_5  + 0.152970 * t.OUT_6  + -0.146827 * t.OUT_7  + -0.072025 * t.OUT_8  + -0.130166 * t.OUT_9 AS OUT_48,
    -0.049147 + 0.208887 * t.OUT_0  + 0.034311 * t.OUT_1  + 0.108682 * t.OUT_2  + 0.044566 * t.OUT_3  + 0.025535 * t.OUT_4  + 0.196669 * t.OUT_5  + -0.025764 * t.OUT_6  + 0.183745 * t.OUT_7  + -0.030782 * t.OUT_8  + 0.152431 * t.OUT_9 AS OUT_49,
    0.307093 + 0.190735 * t.OUT_0  + 0.076335 * t.OUT_1  + -0.207131 * t.OUT_2  + 0.176095 * t.OUT_3  + 0.255633 * t.OUT_4  + -0.185613 * t.OUT_5  + -0.091137 * t.OUT_6  + 0.059811 * t.OUT_7  + 0.001813 * t.OUT_8  + 0.048713 * t.OUT_9 AS OUT_50,
    -0.079789 + -0.152971 * t.OUT_0  + -0.067911 * t.OUT_1  + 0.008276 * t.OUT_2  + 0.015651 * t.OUT_3  + 0.281564 * t.OUT_4  + -0.091094 * t.OUT_5  + 0.132037 * t.OUT_6  + -0.057313 * t.OUT_7  + -0.201524 * t.OUT_8  + 0.098931 * t.OUT_9 AS OUT_51,
    -0.210928 + 0.099837 * t.OUT_0  + -0.071913 * t.OUT_1  + 0.119670 * t.OUT_2  + -0.208053 * t.OUT_3  + -0.130571 * t.OUT_4  + -0.060916 * t.OUT_5  + -0.171313 * t.OUT_6  + -0.239522 * t.OUT_7  + 0.056391 * t.OUT_8  + 0.162642 * t.OUT_9 AS OUT_52,
    0.028199 + 0.207263 * t.OUT_0  + 0.232021 * t.OUT_1  + -0.091188 * t.OUT_2  + -0.125952 * t.OUT_3  + 0.214042 * t.OUT_4  + 0.070998 * t.OUT_5  + -0.139853 * t.OUT_6  + -0.192831 * t.OUT_7  + 0.166997 * t.OUT_8  + -0.067506 * t.OUT_9 AS OUT_53,
    -0.077694 + -0.179802 * t.OUT_0  + 0.187180 * t.OUT_1  + -0.040131 * t.OUT_2  + -0.229972 * t.OUT_3  + 0.143982 * t.OUT_4  + -0.155766 * t.OUT_5  + 0.130695 * t.OUT_6  + -0.110080 * t.OUT_7  + -0.202038 * t.OUT_8  + -0.044285 * t.OUT_9 AS OUT_54,
    0.005817 + 0.094800 * t.OUT_0  + -0.014311 * t.OUT_1  + -0.057609 * t.OUT_2  + 0.097867 * t.OUT_3  + 0.210614 * t.OUT_4  + 0.190836 * t.OUT_5  + 0.094801 * t.OUT_6  + 0.206536 * t.OUT_7  + 0.179006 * t.OUT_8  + 0.179230 * t.OUT_9 AS OUT_55,
    0.321191 + 0.017668 * t.OUT_0  + -0.215056 * t.OUT_1  + 0.081885 * t.OUT_2  + -0.180019 * t.OUT_3  + 0.190552 * t.OUT_4  + -0.009686 * t.OUT_5  + -0.159551 * t.OUT_6  + 0.240147 * t.OUT_7  + 0.040135 * t.OUT_8  + -0.111107 * t.OUT_9 AS OUT_56,
    0.026330 + 0.056229 * t.OUT_0  + -0.052352 * t.OUT_1  + -0.107110 * t.OUT_2  + -0.048684 * t.OUT_3  + 0.085350 * t.OUT_4  + -0.227989 * t.OUT_5  + 0.153271 * t.OUT_6  + 0.104372 * t.OUT_7  + 0.143252 * t.OUT_8  + 0.197942 * t.OUT_9 AS OUT_57,
    0.049283 + 0.000991 * t.OUT_0  + 0.069968 * t.OUT_1  + -0.022938 * t.OUT_2  + -0.205601 * t.OUT_3  + 0.002099 * t.OUT_4  + -0.216880 * t.OUT_5  + -0.142065 * t.OUT_6  + -0.227211 * t.OUT_7  + 0.086161 * t.OUT_8  + -0.200485 * t.OUT_9 AS OUT_58,
    0.133512 + 0.112891 * t.OUT_0  + -0.208385 * t.OUT_1  + 0.132684 * t.OUT_2  + 0.004234 * t.OUT_3  + -0.056462 * t.OUT_4  + 0.123787 * t.OUT_5  + -0.183544 * t.OUT_6  + -0.093903 * t.OUT_7  + -0.224772 * t.OUT_8  + -0.060411 * t.OUT_9 AS OUT_59,
    0.118248 + -0.148852 * t.OUT_0  + 0.106562 * t.OUT_1  + 0.067126 * t.OUT_2  + -0.120574 * t.OUT_3  + -0.009077 * t.OUT_4  + 0.016712 * t.OUT_5  + 0.085424 * t.OUT_6  + -0.188854 * t.OUT_7  + -0.282516 * t.OUT_8  + -0.189555 * t.OUT_9 AS OUT_60,
    0.083148 + 0.027948 * t.OUT_0  + -0.151941 * t.OUT_1  + 0.157729 * t.OUT_2  + -0.073681 * t.OUT_3  + -0.004710 * t.OUT_4  + -0.071324 * t.OUT_5  + -0.100714 * t.OUT_6  + -0.025506 * t.OUT_7  + 0.205707 * t.OUT_8  + 0.053619 * t.OUT_9 AS OUT_61,
    0.040926 + 0.086795 * t.OUT_0  + 0.242492 * t.OUT_1  + 0.143419 * t.OUT_2  + 0.155907 * t.OUT_3  + 0.050869 * t.OUT_4  + -0.045419 * t.OUT_5  + 0.182626 * t.OUT_6  + 0.062660 * t.OUT_7  + -0.080458 * t.OUT_8  + 0.100148 * t.OUT_9 AS OUT_62,
    0.106468 + 0.146818 * t.OUT_0  + 0.200911 * t.OUT_1  + 0.183409 * t.OUT_2  + -0.099511 * t.OUT_3  + -0.092575 * t.OUT_4  + -0.014562 * t.OUT_5  + 0.144085 * t.OUT_6  + -0.036947 * t.OUT_7  + -0.092707 * t.OUT_8  + -0.046278 * t.OUT_9 AS OUT_63,
    -0.175261 + -0.218545 * t.OUT_0  + -0.130667 * t.OUT_1  + 0.056512 * t.OUT_2  + 0.210424 * t.OUT_3  + -0.159994 * t.OUT_4  + 0.196827 * t.OUT_5  + -0.051520 * t.OUT_6  + 0.061159 * t.OUT_7  + -0.134468 * t.OUT_8  + -0.251186 * t.OUT_9 AS OUT_64,
    0.166133 + 0.148399 * t.OUT_0  + 0.142584 * t.OUT_1  + -0.173359 * t.OUT_2  + -0.156956 * t.OUT_3  + 0.055411 * t.OUT_4  + 0.176592 * t.OUT_5  + 0.151596 * t.OUT_6  + 0.178860 * t.OUT_7  + -0.233392 * t.OUT_8  + -0.155710 * t.OUT_9 AS OUT_65,
    0.186752 + -0.106273 * t.OUT_0  + -0.131475 * t.OUT_1  + 0.003574 * t.OUT_2  + 0.128529 * t.OUT_3  + 0.198511 * t.OUT_4  + 0.019911 * t.OUT_5  + 0.189071 * t.OUT_6  + -0.038723 * t.OUT_7  + 0.221494 * t.OUT_8  + 0.142360 * t.OUT_9 AS OUT_66,
    0.036554 + -0.264468 * t.OUT_0  + 0.119264 * t.OUT_1  + -0.177066 * t.OUT_2  + -0.163906 * t.OUT_3  + -0.121181 * t.OUT_4  + -0.060652 * t.OUT_5  + 0.096579 * t.OUT_6  + 0.122579 * t.OUT_7  + 0.170635 * t.OUT_8  + -0.165925 * t.OUT_9 AS OUT_67,
    0.042842 + 0.220954 * t.OUT_0  + -0.177423 * t.OUT_1  + 0.064155 * t.OUT_2  + 0.090274 * t.OUT_3  + -0.088875 * t.OUT_4  + 0.109644 * t.OUT_5  + 0.172225 * t.OUT_6  + 0.037014 * t.OUT_7  + -0.000471 * t.OUT_8  + 0.156971 * t.OUT_9 AS OUT_68,
    0.020664 + 0.201815 * t.OUT_0  + 0.146271 * t.OUT_1  + 0.012385 * t.OUT_2  + -0.155917 * t.OUT_3  + -0.157070 * t.OUT_4  + -0.075178 * t.OUT_5  + -0.060530 * t.OUT_6  + 0.192446 * t.OUT_7  + 0.209926 * t.OUT_8  + -0.164394 * t.OUT_9 AS OUT_69,
    0.184409 + -0.023224 * t.OUT_0  + 0.091641 * t.OUT_1  + 0.224852 * t.OUT_2  + -0.167170 * t.OUT_3  + -0.059491 * t.OUT_4  + 0.059270 * t.OUT_5  + -0.155575 * t.OUT_6  + 0.187715 * t.OUT_7  + -0.126094 * t.OUT_8  + 0.132833 * t.OUT_9 AS OUT_70,
    -0.138994 + -0.189931 * t.OUT_0  + -0.130371 * t.OUT_1  + 0.119854 * t.OUT_2  + -0.119938 * t.OUT_3  + -0.113373 * t.OUT_4  + 0.034388 * t.OUT_5  + -0.011847 * t.OUT_6  + -0.153758 * t.OUT_7  + 0.087434 * t.OUT_8  + -0.048069 * t.OUT_9 AS OUT_71,
    -0.255507 + -0.003191 * t.OUT_0  + 0.085230 * t.OUT_1  + 0.222638 * t.OUT_2  + -0.185037 * t.OUT_3  + -0.078419 * t.OUT_4  + -0.110029 * t.OUT_5  + -0.003600 * t.OUT_6  + 0.104616 * t.OUT_7  + 0.161885 * t.OUT_8  + -0.041556 * t.OUT_9 AS OUT_72,
    -0.062157 + 0.210974 * t.OUT_0  + 0.133041 * t.OUT_1  + -0.156806 * t.OUT_2  + 0.022851 * t.OUT_3  + -0.058736 * t.OUT_4  + 0.025038 * t.OUT_5  + 0.090848 * t.OUT_6  + 0.018514 * t.OUT_7  + -0.027346 * t.OUT_8  + -0.082519 * t.OUT_9 AS OUT_73,
    -0.005399 + -0.190229 * t.OUT_0  + -0.024444 * t.OUT_1  + 0.056355 * t.OUT_2  + -0.272128 * t.OUT_3  + 0.168014 * t.OUT_4  + 0.164482 * t.OUT_5  + -0.046874 * t.OUT_6  + -0.059964 * t.OUT_7  + -0.137435 * t.OUT_8  + -0.123350 * t.OUT_9 AS OUT_74,
    0.245076 + 0.083327 * t.OUT_0  + -0.074124 * t.OUT_1  + 0.115979 * t.OUT_2  + 0.169990 * t.OUT_3  + 0.021839 * t.OUT_4  + -0.039786 * t.OUT_5  + 0.061375 * t.OUT_6  + 0.034535 * t.OUT_7  + 0.227038 * t.OUT_8  + 0.008370 * t.OUT_9 AS OUT_75,
    0.003014 + 0.115015 * t.OUT_0  + 0.168601 * t.OUT_1  + 0.106847 * t.OUT_2  + -0.194446 * t.OUT_3  + 0.029080 * t.OUT_4  + 0.132400 * t.OUT_5  + -0.095366 * t.OUT_6  + 0.116697 * t.OUT_7  + 0.046580 * t.OUT_8  + 0.210538 * t.OUT_9 AS OUT_76,
    0.110204 + 0.099719 * t.OUT_0  + 0.204293 * t.OUT_1  + 0.202437 * t.OUT_2  + -0.044735 * t.OUT_3  + 0.042913 * t.OUT_4  + -0.050400 * t.OUT_5  + 0.143955 * t.OUT_6  + -0.161797 * t.OUT_7  + -0.251512 * t.OUT_8  + -0.209629 * t.OUT_9 AS OUT_77,
    0.228025 + 0.204295 * t.OUT_0  + -0.057925 * t.OUT_1  + -0.134683 * t.OUT_2  + 0.158058 * t.OUT_3  + 0.055537 * t.OUT_4  + -0.170226 * t.OUT_5  + -0.170323 * t.OUT_6  + 0.237930 * t.OUT_7  + 0.235947 * t.OUT_8  + 0.234910 * t.OUT_9 AS OUT_78,
    -0.059957 + -0.048616 * t.OUT_0  + 0.067505 * t.OUT_1  + 0.188156 * t.OUT_2  + 0.082002 * t.OUT_3  + -0.008454 * t.OUT_4  + 0.248092 * t.OUT_5  + 0.197859 * t.OUT_6  + -0.072256 * t.OUT_7  + -0.089754 * t.OUT_8  + -0.135732 * t.OUT_9 AS OUT_79,
    0.134936 + 0.123698 * t.OUT_0  + 0.114742 * t.OUT_1  + 0.136000 * t.OUT_2  + 0.008489 * t.OUT_3  + -0.102607 * t.OUT_4  + -0.074959 * t.OUT_5  + 0.263707 * t.OUT_6  + -0.026754 * t.OUT_7  + -0.149805 * t.OUT_8  + 0.021855 * t.OUT_9 AS OUT_80,
    0.025176 + 0.155393 * t.OUT_0  + 0.056000 * t.OUT_1  + 0.210622 * t.OUT_2  + -0.114297 * t.OUT_3  + 0.223983 * t.OUT_4  + 0.001669 * t.OUT_5  + -0.038196 * t.OUT_6  + -0.163940 * t.OUT_7  + 0.131327 * t.OUT_8  + 0.225351 * t.OUT_9 AS OUT_81,
    -0.038310 + 0.140773 * t.OUT_0  + -0.043324 * t.OUT_1  + -0.033585 * t.OUT_2  + 0.166100 * t.OUT_3  + 0.191106 * t.OUT_4  + -0.113877 * t.OUT_5  + -0.240308 * t.OUT_6  + -0.210880 * t.OUT_7  + -0.042023 * t.OUT_8  + -0.026437 * t.OUT_9 AS OUT_82,
    0.149662 + -0.053017 * t.OUT_0  + 0.165204 * t.OUT_1  + 0.067170 * t.OUT_2  + -0.135004 * t.OUT_3  + 0.032776 * t.OUT_4  + -0.077909 * t.OUT_5  + 0.140736 * t.OUT_6  + -0.238559 * t.OUT_7  + -0.106109 * t.OUT_8  + 0.002388 * t.OUT_9 AS OUT_83,
    -0.261760 + -0.218424 * t.OUT_0  + 0.047641 * t.OUT_1  + 0.141177 * t.OUT_2  + -0.139953 * t.OUT_3  + 0.005247 * t.OUT_4  + 0.108000 * t.OUT_5  + -0.038406 * t.OUT_6  + 0.001308 * t.OUT_7  + 0.116456 * t.OUT_8  + 0.212450 * t.OUT_9 AS OUT_84,
    -0.180598 + 0.096470 * t.OUT_0  + 0.113298 * t.OUT_1  + 0.094957 * t.OUT_2  + -0.130372 * t.OUT_3  + 0.072729 * t.OUT_4  + 0.165071 * t.OUT_5  + -0.212449 * t.OUT_6  + 0.038612 * t.OUT_7  + 0.161919 * t.OUT_8  + -0.221498 * t.OUT_9 AS OUT_85,
    -0.024034 + -0.026038 * t.OUT_0  + -0.159679 * t.OUT_1  + 0.161471 * t.OUT_2  + -0.010800 * t.OUT_3  + 0.028121 * t.OUT_4  + -0.221480 * t.OUT_5  + -0.025818 * t.OUT_6  + -0.053986 * t.OUT_7  + 0.256391 * t.OUT_8  + -0.117305 * t.OUT_9 AS OUT_86,
    -0.081587 + -0.047644 * t.OUT_0  + 0.037113 * t.OUT_1  + -0.204541 * t.OUT_2  + 0.210304 * t.OUT_3  + 0.201600 * t.OUT_4  + -0.090522 * t.OUT_5  + -0.149166 * t.OUT_6  + 0.010528 * t.OUT_7  + -0.064241 * t.OUT_8  + -0.056432 * t.OUT_9 AS OUT_87,
    -0.207896 + -0.186586 * t.OUT_0  + 0.205590 * t.OUT_1  + 0.097839 * t.OUT_2  + -0.044878 * t.OUT_3  + 0.123161 * t.OUT_4  + -0.009546 * t.OUT_5  + 0.197971 * t.OUT_6  + -0.152772 * t.OUT_7  + -0.028708 * t.OUT_8  + -0.137571 * t.OUT_9 AS OUT_88,
    0.151294 + -0.189377 * t.OUT_0  + 0.209171 * t.OUT_1  + 0.225534 * t.OUT_2  + 0.108824 * t.OUT_3  + 0.028397 * t.OUT_4  + -0.167504 * t.OUT_5  + -0.057985 * t.OUT_6  + -0.039748 * t.OUT_7  + -0.206278 * t.OUT_8  + 0.261643 * t.OUT_9 AS OUT_89,
    -0.150935 + -0.105520 * t.OUT_0  + -0.020762 * t.OUT_1  + 0.071442 * t.OUT_2  + 0.192093 * t.OUT_3  + -0.004338 * t.OUT_4  + -0.137608 * t.OUT_5  + -0.073418 * t.OUT_6  + 0.139779 * t.OUT_7  + -0.112416 * t.OUT_8  + -0.093535 * t.OUT_9 AS OUT_90,
    0.143121 + 0.233123 * t.OUT_0  + -0.067496 * t.OUT_1  + 0.225882 * t.OUT_2  + 0.171817 * t.OUT_3  + -0.213489 * t.OUT_4  + 0.184538 * t.OUT_5  + 0.017685 * t.OUT_6  + -0.055643 * t.OUT_7  + -0.134616 * t.OUT_8  + 0.208613 * t.OUT_9 AS OUT_91,
    0.119033 + -0.046717 * t.OUT_0  + 0.105502 * t.OUT_1  + -0.130948 * t.OUT_2  + -0.195962 * t.OUT_3  + 0.169774 * t.OUT_4  + -0.193119 * t.OUT_5  + 0.121211 * t.OUT_6  + -0.272613 * t.OUT_7  + -0.188653 * t.OUT_8  + 0.117869 * t.OUT_9 AS OUT_92,
    -0.217911 + -0.047620 * t.OUT_0  + -0.121128 * t.OUT_1  + 0.077510 * t.OUT_2  + 0.095838 * t.OUT_3  + -0.194857 * t.OUT_4  + -0.054815 * t.OUT_5  + -0.084746 * t.OUT_6  + -0.200696 * t.OUT_7  + -0.146511 * t.OUT_8  + -0.033468 * t.OUT_9 AS OUT_93,
    -0.191536 + -0.059236 * t.OUT_0  + 0.025208 * t.OUT_1  + -0.169669 * t.OUT_2  + -0.153562 * t.OUT_3  + -0.118841 * t.OUT_4  + 0.175507 * t.OUT_5  + 0.037669 * t.OUT_6  + -0.221727 * t.OUT_7  + -0.087824 * t.OUT_8  + -0.219501 * t.OUT_9 AS OUT_94,
    -0.216937 + -0.195931 * t.OUT_0  + 0.146951 * t.OUT_1  + 0.072138 * t.OUT_2  + 0.161231 * t.OUT_3  + 0.161395 * t.OUT_4  + 0.285456 * t.OUT_5  + 0.032626 * t.OUT_6  + 0.218035 * t.OUT_7  + -0.071943 * t.OUT_8  + -0.133715 * t.OUT_9 AS OUT_95,
    0.064439 + 0.029729 * t.OUT_0  + -0.262952 * t.OUT_1  + -0.207880 * t.OUT_2  + -0.214841 * t.OUT_3  + -0.184694 * t.OUT_4  + -0.044733 * t.OUT_5  + -0.146168 * t.OUT_6  + 0.150926 * t.OUT_7  + 0.088297 * t.OUT_8  + 0.138604 * t.OUT_9 AS OUT_96,
    0.086078 + -0.084475 * t.OUT_0  + -0.106212 * t.OUT_1  + 0.110874 * t.OUT_2  + -0.086951 * t.OUT_3  + 0.230268 * t.OUT_4  + 0.098592 * t.OUT_5  + 0.107300 * t.OUT_6  + 0.219168 * t.OUT_7  + 0.066506 * t.OUT_8  + 0.236090 * t.OUT_9 AS OUT_97,
    0.275571 + -0.097140 * t.OUT_0  + -0.125852 * t.OUT_1  + -0.051937 * t.OUT_2  + 0.141914 * t.OUT_3  + -0.150733 * t.OUT_4  + -0.120394 * t.OUT_5  + -0.184842 * t.OUT_6  + 0.223727 * t.OUT_7  + 0.211613 * t.OUT_8  + -0.062751 * t.OUT_9 AS OUT_98,
    0.089892 + -0.005191 * t.OUT_0  + -0.120453 * t.OUT_1  + 0.027958 * t.OUT_2  + -0.080114 * t.OUT_3  + 0.189052 * t.OUT_4  + -0.004415 * t.OUT_5  + 0.217572 * t.OUT_6  + 0.127854 * t.OUT_7  + 0.079639 * t.OUT_8  + -0.037166 * t.OUT_9 AS OUT_99
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
    -0.058281 + 0.238963 * t.OUT_0  + -0.083626 * t.OUT_1  + -0.226077 * t.OUT_2  + 0.081913 * t.OUT_3  + -0.128611 * t.OUT_4  + -0.237399 * t.OUT_5  + -0.166372 * t.OUT_6  + 0.156029 * t.OUT_7  + -0.169732 * t.OUT_8  + 0.141465 * t.OUT_9  + -0.194751 * t.OUT_10  + 0.273068 * t.OUT_11  + -0.175564 * t.OUT_12  + -0.008966 * t.OUT_13  + 0.186625 * t.OUT_14  + -0.028025 * t.OUT_15  + 0.121847 * t.OUT_16  + -0.248286 * t.OUT_17  + -0.173386 * t.OUT_18  + -0.135601 * t.OUT_19  + -0.064118 * t.OUT_20  + -0.253122 * t.OUT_21  + 0.219776 * t.OUT_22  + 0.090390 * t.OUT_23  + -0.118284 * t.OUT_24  + -0.192587 * t.OUT_25  + -0.025584 * t.OUT_26  + -0.157888 * t.OUT_27  + 0.086757 * t.OUT_28  + -0.326231 * t.OUT_29  + -0.217963 * t.OUT_30  + 0.131797 * t.OUT_31  + -0.113859 * t.OUT_32  + -0.175317 * t.OUT_33  + -0.092135 * t.OUT_34  + -0.147085 * t.OUT_35  + 0.071298 * t.OUT_36  + 0.066408 * t.OUT_37  + -0.286276 * t.OUT_38  + -0.125591 * t.OUT_39  + -0.203533 * t.OUT_40  + -0.344128 * t.OUT_41  + -0.037887 * t.OUT_42  + 0.181898 * t.OUT_43  + -0.157136 * t.OUT_44  + -0.121188 * t.OUT_45  + -0.090498 * t.OUT_46  + -0.142317 * t.OUT_47  + 0.213926 * t.OUT_48  + 0.226740 * t.OUT_49  + -0.101531 * t.OUT_50  + -0.099026 * t.OUT_51  + 0.191003 * t.OUT_52  + -0.209003 * t.OUT_53  + 0.046045 * t.OUT_54  + -0.008304 * t.OUT_55  + -0.104876 * t.OUT_56  + -0.136130 * t.OUT_57  + 0.144536 * t.OUT_58  + -0.094787 * t.OUT_59  + -0.084661 * t.OUT_60  + -0.017482 * t.OUT_61  + -0.065304 * t.OUT_62  + 0.088739 * t.OUT_63  + -0.027599 * t.OUT_64  + -0.064130 * t.OUT_65  + 0.018994 * t.OUT_66  + 0.120341 * t.OUT_67  + -0.062244 * t.OUT_68  + -0.125160 * t.OUT_69  + -0.193578 * t.OUT_70  + 0.149806 * t.OUT_71  + 0.169259 * t.OUT_72  + -0.093354 * t.OUT_73  + 0.111398 * t.OUT_74  + -0.190225 * t.OUT_75  + 0.145569 * t.OUT_76  + -0.081604 * t.OUT_77  + -0.121985 * t.OUT_78  + 0.054721 * t.OUT_79  + 0.228902 * t.OUT_80  + -0.067121 * t.OUT_81  + 0.075157 * t.OUT_82  + 0.143215 * t.OUT_83  + 0.130004 * t.OUT_84  + -0.185932 * t.OUT_85  + -0.114322 * t.OUT_86  + -0.186981 * t.OUT_87  + -0.209364 * t.OUT_88  + -0.077308 * t.OUT_89  + -0.146937 * t.OUT_90  + 0.113428 * t.OUT_91  + 0.163103 * t.OUT_92  + -0.039389 * t.OUT_93  + -0.122860 * t.OUT_94  + 0.014572 * t.OUT_95  + 0.026671 * t.OUT_96  + -0.019169 * t.OUT_97  + -0.138960 * t.OUT_98  + 0.197042 * t.OUT_99 AS OUT_0
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