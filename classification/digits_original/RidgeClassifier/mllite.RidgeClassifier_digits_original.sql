WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -37.029213 + 0.000000 * X_0 + 3.855193 * X_1 + 0.389085 * X_2 + -6.737541 * X_3 + 0.891765 * X_4 + -0.156314 * X_5 + 1.347769 * X_6 + 0.447243 * X_7 + -6.340547 * X_8 + -1.758754 * X_9 + -2.436315 * X_10 + -1.920652 * X_11 + 1.369087 * X_12 + -0.549271 * X_13 + 0.192612 * X_14 + -1.387507 * X_15 + 34.932072 * X_16 + 0.377913 * X_17 + -0.242908 * X_18 + 0.491660 * X_19 + 1.321742 * X_20 + -0.294767 * X_21 + 0.120628 * X_22 + 1.150101 * X_23 + -71.099304 * X_24 + 6.710705 * X_25 + -2.342466 * X_26 + 0.958050 * X_27 + -0.285058 * X_28 + 1.651210 * X_29 + -0.806746 * X_30 + -31.521791 * X_31 + 0.000000 * X_32 + 12.773556 * X_33 + -3.086408 * X_34 + 2.737694 * X_35 + -0.748458 * X_36 + 0.047796 * X_37 + -2.357439 * X_38 + 0.000000 * X_39 + 7.034015 * X_40 + -6.605086 * X_41 + 1.782067 * X_42 + -3.360400 * X_43 + 1.735021 * X_44 + -0.062717 * X_45 + 1.338758 * X_46 + 7.577039 * X_47 + 10.380018 * X_48 + -0.173254 * X_49 + 2.120187 * X_50 + 1.777346 * X_51 + -1.757699 * X_52 + 0.084137 * X_53 + 0.488757 * X_54 + 1.382151 * X_55 + 17.468706 * X_56 + 0.651627 * X_57 + -0.362480 * X_58 + 9.769893 * X_59 + -2.622816 * X_60 + 0.796686 * X_61 + 0.426871 * X_62 + -0.954077 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   54.714119 + 0.000000 * X_0 + 5.087453 * X_1 + -0.166161 * X_2 + 12.767867 * X_3 + -1.921218 * X_4 + 0.275550 * X_5 + -0.843400 * X_6 + 1.779711 * X_7 + 35.200542 * X_8 + -2.096521 * X_9 + 6.011520 * X_10 + 1.942791 * X_11 + -1.986353 * X_12 + 1.603430 * X_13 + 0.102252 * X_14 + 3.050366 * X_15 + -10.383327 * X_16 + -3.127411 * X_17 + -1.049927 * X_18 + -0.728552 * X_19 + -1.638936 * X_20 + 0.128783 * X_21 + 0.510800 * X_22 + -5.757027 * X_23 + -3.789414 * X_24 + 2.631814 * X_25 + -0.018522 * X_26 + 0.728273 * X_27 + -0.027317 * X_28 + -1.371599 * X_29 + -1.042233 * X_30 + 48.790092 * X_31 + 0.000000 * X_32 + -5.208172 * X_33 + -0.812604 * X_34 + -0.478109 * X_35 + -0.654417 * X_36 + 0.285149 * X_37 + 1.248094 * X_38 + 0.000000 * X_39 + -3.276548 * X_40 + 2.444288 * X_41 + 0.065922 * X_42 + 0.465039 * X_43 + 0.295131 * X_44 + -0.495344 * X_45 + 0.023911 * X_46 + -2.972913 * X_47 + -2.917074 * X_48 + 2.224174 * X_49 + -2.762261 * X_50 + 1.276193 * X_51 + 0.800817 * X_52 + -0.263782 * X_53 + 1.208705 * X_54 + -2.000359 * X_55 + -11.095216 * X_56 + -8.089517 * X_57 + 1.765610 * X_58 + -22.400902 * X_59 + 6.686076 * X_60 + -4.055299 * X_61 + -0.053349 * X_62 + 2.124980 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -48.257385 + 0.000000 * X_0 + -7.767087 * X_1 + 0.583197 * X_2 + -8.282369 * X_3 + 0.982602 * X_4 + -0.174791 * X_5 + 0.046237 * X_6 + -2.727279 * X_7 + -33.992607 * X_8 + 2.902071 * X_9 + -4.684457 * X_10 + -1.282408 * X_11 + 0.584013 * X_12 + -1.183728 * X_13 + -0.379735 * X_14 + -0.348139 * X_15 + -19.551231 * X_16 + 4.431242 * X_17 + 1.204357 * X_18 + 0.536027 * X_19 + 0.418757 * X_20 + 0.544596 * X_21 + -0.543678 * X_22 + 6.205534 * X_23 + 30.960121 * X_24 + -5.924976 * X_25 + 1.199348 * X_26 + -1.092562 * X_27 + 0.058124 * X_28 + -0.092125 * X_29 + 2.106927 * X_30 + -37.039032 * X_31 + 0.000000 * X_32 + -8.399483 * X_33 + 4.291869 * X_34 + -2.518800 * X_35 + 1.841388 * X_36 + 0.216805 * X_37 + 1.102802 * X_38 + 0.000000 * X_39 + -2.527369 * X_40 + 4.186344 * X_41 + -2.480198 * X_42 + 3.800333 * X_43 + -2.233888 * X_44 + 1.105592 * X_45 + -1.068660 * X_46 + -3.998144 * X_47 + -7.564871 * X_48 + -3.494073 * X_49 + 2.458203 * X_50 + -1.334744 * X_51 + 0.725586 * X_52 + -0.081081 * X_53 + -2.045937 * X_54 + 1.683684 * X_55 + -4.989176 * X_56 + 7.750100 * X_57 + -1.747265 * X_58 + 15.018788 * X_59 + -3.682474 * X_60 + 3.205283 * X_61 + -0.662356 * X_62 + -0.893032 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -15.707154 + 0.000000 * X_0 + -10.661383 * X_1 + -0.436197 * X_2 + -10.605329 * X_3 + 1.850311 * X_4 + -0.123692 * X_5 + -0.341778 * X_6 + -2.973646 * X_7 + -31.620638 * X_8 + 4.681952 * X_9 + -5.269987 * X_10 + -1.482317 * X_11 + 1.487019 * X_12 + -2.333992 * X_13 + -0.342100 * X_14 + -2.892594 * X_15 + -2.791461 * X_16 + 1.129801 * X_17 + 1.456732 * X_18 + 0.965464 * X_19 + 1.801968 * X_20 + -0.419806 * X_21 + -1.449412 * X_22 + 4.297011 * X_23 + 73.890068 * X_24 + -8.817986 * X_25 + 3.495186 * X_26 + -3.494991 * X_27 + 0.158133 * X_28 + 0.839877 * X_29 + 2.627065 * X_30 + -33.246536 * X_31 + 0.000000 * X_32 + -7.690770 * X_33 + 1.860214 * X_34 + 0.850893 * X_35 + 1.029327 * X_36 + -0.412460 * X_37 + 0.607716 * X_38 + 0.000000 * X_39 + 8.553887 * X_40 + 5.340783 * X_41 + 0.225779 * X_42 + -3.641597 * X_43 + -0.288641 * X_44 + -0.108794 * X_45 + -1.982914 * X_46 + -1.429152 * X_47 + -6.772604 * X_48 + -5.273389 * X_49 + 1.083102 * X_50 + -0.466565 * X_51 + -0.424547 * X_52 + -0.147682 * X_53 + -1.516861 * X_54 + 1.326078 * X_55 + 41.621109 * X_56 + 12.674978 * X_57 + -1.247195 * X_58 + 19.275331 * X_59 + -4.944055 * X_60 + 3.596618 * X_61 + -0.417993 * X_62 + -3.507793 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   55.550476 + 0.000000 * X_0 + 6.708669 * X_1 + 0.166401 * X_2 + 18.201706 * X_3 + -3.226783 * X_4 + 1.118103 * X_5 + 1.051111 * X_6 + 6.305708 * X_7 + 33.518700 * X_8 + -1.324498 * X_9 + 9.283648 * X_10 + 3.734553 * X_11 + -1.829159 * X_12 + 4.030211 * X_13 + -0.272740 * X_14 + 0.709861 * X_15 + 13.401506 * X_16 + -5.595273 * X_17 + -2.324612 * X_18 + -1.894078 * X_19 + -2.801327 * X_20 + -0.147269 * X_21 + 2.687487 * X_22 + -9.320262 * X_23 + -14.240240 * X_24 + 4.763594 * X_25 + -3.367169 * X_26 + 4.388600 * X_27 + 0.297039 * X_28 + -0.725590 * X_29 + -5.581154 * X_30 + 97.879219 * X_31 + 0.000000 * X_32 + 28.387712 * X_33 + -7.491357 * X_34 + 1.477989 * X_35 + -3.477553 * X_36 + -0.366883 * X_37 + -2.560186 * X_38 + 0.000000 * X_39 + -16.889481 * X_40 + -15.443323 * X_41 + 1.440729 * X_42 + 1.606573 * X_43 + 2.224797 * X_44 + -0.523158 * X_45 + 3.864316 * X_46 + 7.130384 * X_47 + 14.250219 * X_48 + 11.642429 * X_49 + -3.723020 * X_50 + 1.112834 * X_51 + -0.279071 * X_52 + 0.304556 * X_53 + 2.480535 * X_54 + -2.043952 * X_55 + -101.517174 * X_56 + -18.247728 * X_57 + 2.036923 * X_58 + -33.086929 * X_59 + 8.242927 * X_60 + -6.123492 * X_61 + 1.273279 * X_62 + 4.458230 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -57.115433 + 0.000000 * X_0 + -4.443141 * X_1 + 0.705897 * X_2 + -10.849391 * X_3 + 1.698209 * X_4 + -1.452386 * X_5 + -0.234906 * X_6 + -2.092799 * X_7 + -33.081745 * X_8 + 2.737702 * X_9 + -6.404898 * X_10 + -2.012753 * X_11 + 1.414164 * X_12 + -1.238855 * X_13 + 1.484837 * X_14 + 0.222875 * X_15 + 14.302153 * X_16 + 0.117677 * X_17 + 1.229583 * X_18 + 0.730916 * X_19 + 1.546336 * X_20 + 0.149817 * X_21 + -1.085266 * X_22 + 2.730619 * X_23 + -102.768562 * X_24 + 12.976414 * X_25 + -2.752333 * X_26 + 0.672296 * X_27 + -0.704950 * X_28 + 1.121202 * X_29 + 1.999428 * X_30 + -83.864746 * X_31 + 0.000000 * X_32 + -8.601000 * X_33 + 2.522892 * X_34 + -0.130736 * X_35 + 1.259414 * X_36 + 0.226516 * X_37 + -0.484559 * X_38 + 0.000000 * X_39 + 7.070731 * X_40 + 3.843707 * X_41 + 0.380480 * X_42 + 0.216126 * X_43 + -0.815379 * X_44 + 0.556725 * X_45 + -0.091701 * X_46 + 0.722640 * X_47 + 4.087575 * X_48 + -3.182796 * X_49 + 1.887796 * X_50 + -1.231264 * X_51 + -0.303409 * X_52 + 0.176458 * X_53 + -0.820323 * X_54 + 1.753610 * X_55 + 34.813389 * X_56 + 8.102170 * X_57 + -1.336951 * X_58 + 19.865751 * X_59 + -6.187223 * X_60 + 3.735781 * X_61 + -0.057577 * X_62 + -1.494609 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   9.341249 + 0.000000 * X_0 + 5.481366 * X_1 + -0.180016 * X_2 + 5.255589 * X_3 + -1.088182 * X_4 + 0.763774 * X_5 + 0.386122 * X_6 + 1.479884 * X_7 + 21.553032 * X_8 + -1.790328 * X_9 + 3.696261 * X_10 + 0.441649 * X_11 + -0.616444 * X_12 + 0.947116 * X_13 + -0.549237 * X_14 + 0.909098 * X_15 + 9.434229 * X_16 + -2.550878 * X_17 + -0.592792 * X_18 + -0.644138 * X_19 + -0.896625 * X_20 + 0.169672 * X_21 + 0.942475 * X_22 + -1.370412 * X_23 + 11.410593 * X_24 + -0.310635 * X_25 + -0.397091 * X_26 + 0.959345 * X_27 + 0.268099 * X_28 + -0.557972 * X_29 + -1.538905 * X_30 + 27.005363 * X_31 + 0.000000 * X_32 + 6.280136 * X_33 + -1.272257 * X_34 + -0.171820 * X_35 + -0.827257 * X_36 + 0.116062 * X_37 + -0.199925 * X_38 + 0.000000 * X_39 + -3.504454 * X_40 + -3.757106 * X_41 + -0.362863 * X_42 + 1.191287 * X_43 + 0.407980 * X_44 + -0.068021 * X_45 + 0.631100 * X_46 + 0.536342 * X_47 + 2.480667 * X_48 + 2.127298 * X_49 + -0.409771 * X_50 + 1.211483 * X_51 + -0.149469 * X_52 + 0.008189 * X_53 + 0.787283 * X_54 + -0.900493 * X_55 + -29.278318 * X_56 + -5.648119 * X_57 + 0.703786 * X_58 + -10.562465 * X_59 + 3.713841 * X_60 + -2.364728 * X_61 + 0.323650 * X_62 + 1.624829 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   12.153167 + 0.000000 * X_0 + 1.744070 * X_1 + -0.200852 * X_2 + 1.270087 * X_3 + -0.172512 * X_4 + 0.175517 * X_5 + -0.212502 * X_6 + -0.439940 * X_7 + 17.091112 * X_8 + -1.213514 * X_9 + 1.667651 * X_10 + 0.340332 * X_11 + -0.439382 * X_12 + 0.359991 * X_13 + -0.688271 * X_14 + 0.212135 * X_15 + -16.195393 * X_16 + -0.386632 * X_17 + 0.200122 * X_18 + -0.460055 * X_19 + -0.501070 * X_20 + 0.116659 * X_21 + 0.441125 * X_22 + 2.048342 * X_23 + 63.057858 * X_24 + -6.281945 * X_25 + 1.477754 * X_26 + -0.390392 * X_27 + 0.390440 * X_28 + -0.784971 * X_29 + 0.027972 * X_30 + 12.431654 * X_31 + 0.000000 * X_32 + -1.098793 * X_33 + 1.129196 * X_34 + -1.493407 * X_35 + -0.023392 * X_36 + -0.364856 * X_37 + 0.581468 * X_38 + 0.000000 * X_39 + -6.015175 * X_40 + 0.560120 * X_41 + -0.900608 * X_42 + 2.436254 * X_43 + -1.230499 * X_44 + 0.291411 * X_45 + -0.410756 * X_46 + -2.636318 * X_47 + -4.627907 * X_48 + 1.635022 * X_49 + -1.870891 * X_50 + -0.127057 * X_51 + 0.869644 * X_52 + 0.252710 * X_53 + -0.198388 * X_54 + -0.534612 * X_55 + -22.727390 * X_56 + -2.297076 * X_57 + 0.472661 * X_58 + -2.409798 * X_59 + 0.396413 * X_60 + 0.284867 * X_61 + -0.165154 * X_62 + 0.212898 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   -12.056183 + 0.000000 * X_0 + 1.737931 * X_1 + -0.385536 * X_2 + -2.136207 * X_3 + 0.607345 * X_4 + 0.002626 * X_5 + -0.397343 * X_6 + -1.079501 * X_7 + -2.074765 * X_8 + -1.647833 * X_9 + -1.221877 * X_10 + -0.141881 * X_11 + 0.227174 * X_12 + -0.782394 * X_13 + -0.051532 * X_14 + -0.436760 * X_15 + -10.515516 * X_16 + 3.056715 * X_17 + 0.247710 * X_18 + 0.208325 * X_19 + 0.173548 * X_20 + 0.151917 * X_21 + -0.555532 * X_22 + 2.637351 * X_23 + 18.576994 * X_24 + -4.104402 * X_25 + 1.190077 * X_26 + -0.859400 * X_27 + 0.085795 * X_28 + -0.322887 * X_29 + 1.136108 * X_30 + -7.011384 * X_31 + 0.000000 * X_32 + -7.204718 * X_33 + 2.543550 * X_34 + -1.505694 * X_35 + 1.131178 * X_36 + 0.179097 * X_37 + 1.091541 * X_38 + 0.000000 * X_39 + 1.023420 * X_40 + 3.578084 * X_41 + -1.247425 * X_42 + 1.798994 * X_43 + -0.941325 * X_44 + 0.088505 * X_45 + -0.962104 * X_46 + -3.412770 * X_47 + -3.848777 * X_48 + -2.830026 * X_49 + 1.720505 * X_50 + -2.417191 * X_51 + 0.868467 * X_52 + -0.013233 * X_53 + -0.523177 * X_54 + -0.337670 * X_55 + 19.151878 * X_56 + 2.302114 * X_57 + -0.848653 * X_58 + 5.312026 * X_59 + -1.818239 * X_60 + 1.225257 * X_61 + -0.254526 * X_62 + -0.172042 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   30.406174 + 0.000000 * X_0 + -1.742761 * X_1 + -0.475806 * X_2 + 1.115657 * X_3 + 0.378467 * X_4 + -0.428427 * X_5 + -0.801356 * X_6 + -0.699386 * X_7 + -0.252255 * X_8 + -0.490387 * X_9 + -0.641526 * X_10 + 0.380676 * X_11 + -0.210136 * X_12 + -0.852504 * X_13 + 0.503978 * X_14 + -0.039213 * X_15 + -12.632439 * X_16 + 2.546699 * X_17 + -0.128269 * X_18 + 0.794421 * X_19 + 0.575608 * X_20 + -0.399590 * X_21 + -1.068659 * X_22 + -2.621316 * X_23 + -6.002158 * X_24 + -1.641956 * X_25 + 1.515117 * X_26 + -1.869162 * X_27 + -0.240335 * X_28 + 0.242843 * X_29 + 1.071576 * X_30 + 6.575755 * X_31 + 0.000000 * X_32 + -9.238993 * X_33 + 0.314950 * X_34 + 1.231963 * X_35 + 0.469795 * X_36 + 0.072803 * X_37 + 0.970519 * X_38 + 0.000000 * X_39 + 8.531170 * X_40 + 5.852423 * X_41 + 1.096133 * X_42 + -4.512556 * X_43 + 0.846782 * X_44 + -0.784204 * X_45 + -1.341963 * X_46 + -1.517185 * X_47 + -5.467094 * X_48 + -2.675471 * X_49 + -0.503846 * X_50 + 0.198941 * X_51 + -0.350293 * X_52 + -0.320272 * X_53 + 0.139447 * X_54 + -0.328476 * X_55 + 56.553463 * X_56 + 2.801365 * X_57 + 0.563580 * X_58 + -0.781796 * X_59 + 0.215567 * X_60 + -0.300996 * X_61 + -0.412844 * X_62 + -1.399346 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
  FROM model_input
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    CAST(NULL AS FLOAT) AS "LogProba_4",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    CAST(NULL AS FLOAT) AS "LogProba_5",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    CAST(NULL AS FLOAT) AS "LogProba_6",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    CAST(NULL AS FLOAT) AS "LogProba_7",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    CAST(NULL AS FLOAT) AS "LogProba_8",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    CAST(NULL AS FLOAT) AS "LogProba_9",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
   CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
   CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
   CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
   CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
   CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
   CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte