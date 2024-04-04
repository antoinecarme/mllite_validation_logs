WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3",
   "Values"."sv_4" AS "sv_4",
   "Values"."sv_5" AS "sv_5",
   "Values"."sv_6" AS "sv_6",
   "Values"."sv_7" AS "sv_7",
   "Values"."sv_8" AS "sv_8",
   "Values"."sv_9" AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", 0.710411 AS "sv_0", 0.866302 AS "sv_1", 0.056103 AS "sv_2", 0.505545 AS "sv_3", 0.132807 AS "sv_4", 0.317118 AS "sv_5", 0.520814 AS "sv_6", 0.384208 AS "sv_7", 0.666595 AS "sv_8", 0.305953 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 0.705919 AS "sv_0", 0.335669 AS "sv_1", 0.829238 AS "sv_2", 0.863314 AS "sv_3", 0.287537 AS "sv_4", 0.639683 AS "sv_5", 0.745771 AS "sv_6", 0.787558 AS "sv_7", 0.582418 AS "sv_8", 0.363306 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -0.576283 AS "coeff", 0.172757 AS "sv_0", 0.057373 AS "sv_1", 0.171673 AS "sv_2", 0.599275 AS "sv_3", 0.421381 AS "sv_4", 0.559100 AS "sv_5", 0.417610 AS "sv_6", 0.998262 AS "sv_7", 0.074700 AS "sv_8", 0.708432 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -0.182701 AS "coeff", 0.672520 AS "sv_0", 0.960422 AS "sv_1", 0.271050 AS "sv_2", 0.259409 AS "sv_3", 0.076063 AS "sv_4", 0.603909 AS "sv_5", 0.732761 AS "sv_6", 0.514037 AS "sv_7", 0.918325 AS "sv_8", 0.297702 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", 0.734481 AS "sv_0", 0.482054 AS "sv_1", 0.789831 AS "sv_2", 0.806913 AS "sv_3", 0.681106 AS "sv_4", 0.602843 AS "sv_5", 0.333277 AS "sv_6", 0.147743 AS "sv_7", 0.020703 AS "sv_8", 0.509223 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", 0.343479 AS "sv_0", 0.049133 AS "sv_1", 0.720020 AS "sv_2", 0.841468 AS "sv_3", 0.199002 AS "sv_4", 0.085445 AS "sv_5", 0.635873 AS "sv_6", 0.354635 AS "sv_7", 0.971117 AS "sv_8", 0.361298 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", 0.133169 AS "sv_0", 0.898182 AS "sv_1", 0.993566 AS "sv_2", 0.694676 AS "sv_3", 0.756484 AS "sv_4", 0.193983 AS "sv_5", 0.035123 AS "sv_6", 0.033415 AS "sv_7", 0.014059 AS "sv_8", 0.907372 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.003125 AS "coeff", 0.402955 AS "sv_0", 0.885042 AS "sv_1", 0.175049 AS "sv_2", 0.517694 AS "sv_3", 0.443807 AS "sv_4", 0.815622 AS "sv_5", 0.177617 AS "sv_6", 0.182315 AS "sv_7", 0.135270 AS "sv_8", 0.914813 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", 0.246418 AS "sv_0", 0.754389 AS "sv_1", 0.264436 AS "sv_2", 0.996826 AS "sv_3", 0.880107 AS "sv_4", 0.261948 AS "sv_5", 0.595422 AS "sv_6", 0.306809 AS "sv_7", 0.390167 AS "sv_8", 0.471118 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 0.479223 AS "sv_0", 0.684603 AS "sv_1", 0.324254 AS "sv_2", 0.801230 AS "sv_3", 0.871487 AS "sv_4", 0.937278 AS "sv_5", 0.292127 AS "sv_6", 0.900755 AS "sv_7", 0.827968 AS "sv_8", 0.568796 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", 0.437299 AS "sv_0", 0.556356 AS "sv_1", 0.184165 AS "sv_2", 0.982851 AS "sv_3", 0.269218 AS "sv_4", 0.292875 AS "sv_5", 0.402640 AS "sv_6", 0.897743 AS "sv_7", 0.611773 AS "sv_8", 0.543599 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -0.014829 AS "coeff", 0.685229 AS "sv_0", 0.172804 AS "sv_1", 0.111791 AS "sv_2", 0.194990 AS "sv_3", 0.202220 AS "sv_4", 0.680954 AS "sv_5", 0.382914 AS "sv_6", 0.311856 AS "sv_7", 0.271890 AS "sv_8", 0.606771 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", 0.764610 AS "sv_0", 0.378970 AS "sv_1", 0.823855 AS "sv_2", 0.913603 AS "sv_3", 0.553400 AS "sv_4", 0.055048 AS "sv_5", 0.588332 AS "sv_6", 0.361050 AS "sv_7", 0.814980 AS "sv_8", 0.123688 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.107568 AS "coeff", 0.774569 AS "sv_0", 0.924882 AS "sv_1", 0.149506 AS "sv_2", 0.796391 AS "sv_3", 0.333866 AS "sv_4", 0.165815 AS "sv_5", 0.415960 AS "sv_6", 0.207386 AS "sv_7", 0.523104 AS "sv_8", 0.137733 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", 0.634220 AS "sv_0", 0.486969 AS "sv_1", 0.969793 AS "sv_2", 0.441636 AS "sv_3", 0.814121 AS "sv_4", 0.690923 AS "sv_5", 0.194226 AS "sv_6", 0.716476 AS "sv_7", 0.697923 AS "sv_8", 0.212891 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", 0.233546 AS "sv_0", 0.241107 AS "sv_1", 0.660121 AS "sv_2", 0.055376 AS "sv_3", 0.564663 AS "sv_4", 0.209055 AS "sv_5", 0.142822 AS "sv_6", 0.887287 AS "sv_7", 0.428596 AS "sv_8", 0.316988 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", 0.804101 AS "sv_0", 0.103050 AS "sv_1", 0.728795 AS "sv_2", 0.068628 AS "sv_3", 0.567613 AS "sv_4", 0.648562 AS "sv_5", 0.495718 AS "sv_6", 0.628355 AS "sv_7", 0.398738 AS "sv_8", 0.185100 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", 0.235384 AS "sv_0", 0.117604 AS "sv_1", 0.514017 AS "sv_2", 0.633968 AS "sv_3", 0.618557 AS "sv_4", 0.121827 AS "sv_5", 0.576931 AS "sv_6", 0.091568 AS "sv_7", 0.527227 AS "sv_8", 0.211281 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 0.764208 AS "coeff", 0.721851 AS "sv_0", 0.965554 AS "sv_1", 0.435501 AS "sv_2", 0.818612 AS "sv_3", 0.939145 AS "sv_4", 0.215034 AS "sv_5", 0.443577 AS "sv_6", 0.336197 AS "sv_7", 0.220269 AS "sv_8", 0.203231 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", 0.975417 AS "sv_0", 0.002660 AS "sv_1", 0.366127 AS "sv_2", 0.434512 AS "sv_3", 0.945664 AS "sv_4", 0.329085 AS "sv_5", 0.852323 AS "sv_6", 0.591908 AS "sv_7", 0.151237 AS "sv_8", 0.221160 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", 0.123542 AS "sv_0", 0.136568 AS "sv_1", 0.354175 AS "sv_2", 0.494539 AS "sv_3", 0.674758 AS "sv_4", 0.762896 AS "sv_5", 0.454376 AS "sv_6", 0.026430 AS "sv_7", 0.343817 AS "sv_8", 0.227996 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", 0.426792 AS "sv_0", 0.212467 AS "sv_1", 0.481987 AS "sv_2", 0.115089 AS "sv_3", 0.854095 AS "sv_4", 0.453031 AS "sv_5", 0.002107 AS "sv_6", 0.065711 AS "sv_7", 0.509929 AS "sv_8", 0.421698 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", 0.257439 AS "sv_0", 0.499463 AS "sv_1", 0.260146 AS "sv_2", 0.239901 AS "sv_3", 0.156860 AS "sv_4", 0.590953 AS "sv_5", 0.077376 AS "sv_6", 0.340943 AS "sv_7", 0.943330 AS "sv_8", 0.056908 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", 0.221163 AS "sv_0", 0.634851 AS "sv_1", 0.675740 AS "sv_2", 0.393459 AS "sv_3", 0.593254 AS "sv_4", 0.877299 AS "sv_5", 0.742170 AS "sv_6", 0.322286 AS "sv_7", 0.749472 AS "sv_8", 0.996954 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", 0.366207 AS "sv_0", 0.096199 AS "sv_1", 0.520676 AS "sv_2", 0.250113 AS "sv_3", 0.155164 AS "sv_4", 0.752654 AS "sv_5", 0.007439 AS "sv_6", 0.025310 AS "sv_7", 0.924844 AS "sv_8", 0.961402 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 0.772433 AS "sv_0", 0.764512 AS "sv_1", 0.960643 AS "sv_2", 0.302594 AS "sv_3", 0.292439 AS "sv_4", 0.441128 AS "sv_5", 0.688884 AS "sv_6", 0.145406 AS "sv_7", 0.532042 AS "sv_8", 0.749330 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", 0.814992 AS "sv_0", 0.273163 AS "sv_1", 0.627205 AS "sv_2", 0.072804 AS "sv_3", 0.252944 AS "sv_4", 0.523729 AS "sv_5", 0.937792 AS "sv_6", 0.491503 AS "sv_7", 0.365159 AS "sv_8", 0.128096 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", 0.087465 AS "sv_0", 0.681611 AS "sv_1", 0.002105 AS "sv_2", 0.838984 AS "sv_3", 0.806677 AS "sv_4", 0.751159 AS "sv_5", 0.481177 AS "sv_6", 0.221279 AS "sv_7", 0.984524 AS "sv_8", 0.957584 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -0.958086 AS "coeff", 0.849990 AS "sv_0", 0.916139 AS "sv_1", 0.864912 AS "sv_2", 0.228437 AS "sv_3", 0.340806 AS "sv_4", 0.227606 AS "sv_5", 0.447862 AS "sv_6", 0.068150 AS "sv_7", 0.472487 AS "sv_8", 0.104133 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.000000 AS "coeff", 0.827680 AS "sv_0", 0.741216 AS "sv_1", 0.967589 AS "sv_2", 0.359411 AS "sv_3", 0.243325 AS "sv_4", 0.911669 AS "sv_5", 0.829354 AS "sv_6", 0.787352 AS "sv_7", 0.791034 AS "sv_8", 0.782214 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 1.000000 AS "coeff", 0.663564 AS "sv_0", 0.399281 AS "sv_1", 0.158547 AS "sv_2", 0.930965 AS "sv_3", 0.846977 AS "sv_4", 0.986627 AS "sv_5", 0.132816 AS "sv_6", 0.426558 AS "sv_7", 0.999950 AS "sv_8", 0.674509 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 0.733847 AS "sv_0", 0.503559 AS "sv_1", 0.161205 AS "sv_2", 0.982267 AS "sv_3", 0.531810 AS "sv_4", 0.770971 AS "sv_5", 0.043226 AS "sv_6", 0.562131 AS "sv_7", 0.583390 AS "sv_8", 0.870415 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 0.545852 AS "coeff", 0.823836 AS "sv_0", 0.504187 AS "sv_1", 0.034569 AS "sv_2", 0.308381 AS "sv_3", 0.003390 AS "sv_4", 0.039580 AS "sv_5", 0.879070 AS "sv_6", 0.101112 AS "sv_7", 0.747507 AS "sv_8", 0.958859 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -1.000000 AS "coeff", 0.917115 AS "sv_0", 0.036220 AS "sv_1", 0.312429 AS "sv_2", 0.285258 AS "sv_3", 0.269077 AS "sv_4", 0.050048 AS "sv_5", 0.163158 AS "sv_6", 0.861914 AS "sv_7", 0.830921 AS "sv_8", 0.459571 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 0.679324 AS "coeff", 0.470848 AS "sv_0", 0.950853 AS "sv_1", 0.250944 AS "sv_2", 0.381755 AS "sv_3", 0.767739 AS "sv_4", 0.052865 AS "sv_5", 0.321258 AS "sv_6", 0.310992 AS "sv_7", 0.507478 AS "sv_8", 0.114717 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -1.000000 AS "coeff", 0.183906 AS "sv_0", 0.368316 AS "sv_1", 0.322211 AS "sv_2", 0.269664 AS "sv_3", 0.974516 AS "sv_4", 0.395748 AS "sv_5", 0.967284 AS "sv_6", 0.685479 AS "sv_7", 0.485286 AS "sv_8", 0.847430 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 1.000000 AS "coeff", 0.466161 AS "sv_0", 0.730480 AS "sv_1", 0.747965 AS "sv_2", 0.642714 AS "sv_3", 0.630985 AS "sv_4", 0.230235 AS "sv_5", 0.892410 AS "sv_6", 0.026009 AS "sv_7", 0.980536 AS "sv_8", 0.282220 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.000000 AS "coeff", 0.457487 AS "sv_0", 0.414129 AS "sv_1", 0.014223 AS "sv_2", 0.378696 AS "sv_3", 0.893256 AS "sv_4", 0.937627 AS "sv_5", 0.113897 AS "sv_6", 0.460844 AS "sv_7", 0.008495 AS "sv_8", 0.149271 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.000000 AS "coeff", 0.480054 AS "sv_0", 0.664308 AS "sv_1", 0.985340 AS "sv_2", 0.567078 AS "sv_3", 0.994149 AS "sv_4", 0.780890 AS "sv_5", 0.232756 AS "sv_6", 0.567089 AS "sv_7", 0.093123 AS "sv_8", 0.031981 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 0.167041 AS "coeff", 0.101391 AS "sv_0", 0.213374 AS "sv_1", 0.964562 AS "sv_2", 0.911902 AS "sv_3", 0.755811 AS "sv_4", 0.963955 AS "sv_5", 0.532774 AS "sv_6", 0.985822 AS "sv_7", 0.912822 AS "sv_8", 0.720971 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -1.000000 AS "coeff", 0.937776 AS "sv_0", 0.125575 AS "sv_1", 0.655885 AS "sv_2", 0.096146 AS "sv_3", 0.187430 AS "sv_4", 0.485816 AS "sv_5", 0.973901 AS "sv_6", 0.496639 AS "sv_7", 0.139176 AS "sv_8", 0.557847 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -1.000000 AS "coeff", 0.414708 AS "sv_0", 0.117089 AS "sv_1", 0.562469 AS "sv_2", 0.105808 AS "sv_3", 0.080834 AS "sv_4", 0.195908 AS "sv_5", 0.881411 AS "sv_6", 0.049262 AS "sv_7", 0.050168 AS "sv_8", 0.271948 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 0.789905 AS "coeff", 0.225035 AS "sv_0", 0.267629 AS "sv_1", 0.997439 AS "sv_2", 0.660872 AS "sv_3", 0.911509 AS "sv_4", 0.036102 AS "sv_5", 0.310786 AS "sv_6", 0.232937 AS "sv_7", 0.166239 AS "sv_8", 0.314810 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", 0.652811 AS "sv_0", 0.757719 AS "sv_1", 0.306902 AS "sv_2", 0.828286 AS "sv_3", 0.763064 AS "sv_4", 0.859003 AS "sv_5", 0.873377 AS "sv_6", 0.146070 AS "sv_7", 0.894295 AS "sv_8", 0.086598 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 0.515322 AS "coeff", 0.853835 AS "sv_0", 0.368909 AS "sv_1", 0.474869 AS "sv_2", 0.879341 AS "sv_3", 0.260376 AS "sv_4", 0.013107 AS "sv_5", 0.183573 AS "sv_6", 0.214752 AS "sv_7", 0.246734 AS "sv_8", 0.931995 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", 0.936277 AS "sv_0", 0.372295 AS "sv_1", 0.533309 AS "sv_2", 0.719398 AS "sv_3", 0.698320 AS "sv_4", 0.394020 AS "sv_5", 0.202381 AS "sv_6", 0.107294 AS "sv_7", 0.877483 AS "sv_8", 0.827543 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", -1.000000 AS "coeff", 0.993297 AS "sv_0", 0.015448 AS "sv_1", 0.073074 AS "sv_2", 0.123516 AS "sv_3", 0.766918 AS "sv_4", 0.032547 AS "sv_5", 0.970468 AS "sv_6", 0.585911 AS "sv_7", 0.580508 AS "sv_8", 0.025791 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -0.268102 AS "coeff", 0.305323 AS "sv_0", 0.920127 AS "sv_1", 0.554815 AS "sv_2", 0.290412 AS "sv_3", 0.398567 AS "sv_4", 0.153044 AS "sv_5", 0.764948 AS "sv_6", 0.336047 AS "sv_7", 0.946082 AS "sv_8", 0.127173 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", 0.258179 AS "coeff", 0.888763 AS "sv_0", 0.378332 AS "sv_1", 0.317378 AS "sv_2", 0.494882 AS "sv_3", 0.790191 AS "sv_4", 0.695702 AS "sv_5", 0.329863 AS "sv_6", 0.789227 AS "sv_7", 0.826873 AS "sv_8", 0.877740 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 0.169476 AS "coeff", 0.604811 AS "sv_0", 0.984899 AS "sv_1", 0.598416 AS "sv_2", 0.783427 AS "sv_3", 0.739098 AS "sv_4", 0.893643 AS "sv_5", 0.193266 AS "sv_6", 0.096950 AS "sv_7", 0.547724 AS "sv_8", 0.389115 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -1.000000 AS "coeff", 0.361047 AS "sv_0", 0.160106 AS "sv_1", 0.219158 AS "sv_2", 0.010201 AS "sv_3", 0.471566 AS "sv_4", 0.488280 AS "sv_5", 0.020705 AS "sv_6", 0.852158 AS "sv_7", 0.667965 AS "sv_8", 0.378921 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.000000 AS "coeff", 0.387013 AS "sv_0", 0.186144 AS "sv_1", 0.843217 AS "sv_2", 0.273500 AS "sv_3", 0.175361 AS "sv_4", 0.010880 AS "sv_5", 0.338375 AS "sv_6", 0.530580 AS "sv_7", 0.739766 AS "sv_8", 0.316235 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", 0.010500 AS "sv_0", 0.200190 AS "sv_1", 0.192366 AS "sv_2", 0.175831 AS "sv_3", 0.507530 AS "sv_4", 0.721218 AS "sv_5", 0.719388 AS "sv_6", 0.114770 AS "sv_7", 0.417354 AS "sv_8", 0.783886 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", -1.000000 AS "coeff", 0.888102 AS "sv_0", 0.149216 AS "sv_1", 0.426902 AS "sv_2", 0.180039 AS "sv_3", 0.792176 AS "sv_4", 0.085835 AS "sv_5", 0.603319 AS "sv_6", 0.653572 AS "sv_7", 0.865909 AS "sv_8", 0.986362 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", 1.000000 AS "coeff", 0.760617 AS "sv_0", 0.894566 AS "sv_1", 0.346795 AS "sv_2", 0.929768 AS "sv_3", 0.625158 AS "sv_4", 0.995443 AS "sv_5", 0.581267 AS "sv_6", 0.012827 AS "sv_7", 0.748000 AS "sv_8", 0.341933 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", 0.341289 AS "sv_0", 0.059388 AS "sv_1", 0.275743 AS "sv_2", 0.885258 AS "sv_3", 0.018723 AS "sv_4", 0.985191 AS "sv_5", 0.272452 AS "sv_6", 0.138076 AS "sv_7", 0.832781 AS "sv_8", 0.073518 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 1.000000 AS "coeff", 0.759884 AS "sv_0", 0.645603 AS "sv_1", 0.858346 AS "sv_2", 0.414192 AS "sv_3", 0.746659 AS "sv_4", 0.476919 AS "sv_5", 0.729435 AS "sv_6", 0.314409 AS "sv_7", 0.340241 AS "sv_8", 0.086284 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", 0.368356 AS "sv_0", 0.189593 AS "sv_1", 0.403483 AS "sv_2", 0.670145 AS "sv_3", 0.411066 AS "sv_4", 0.464093 AS "sv_5", 0.307388 AS "sv_6", 0.840440 AS "sv_7", 0.462841 AS "sv_8", 0.813023 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", -1.000000 AS "coeff", 0.268993 AS "sv_0", 0.202785 AS "sv_1", 0.253928 AS "sv_2", 0.049719 AS "sv_3", 0.217885 AS "sv_4", 0.770274 AS "sv_5", 0.487503 AS "sv_6", 0.076708 AS "sv_7", 0.743187 AS "sv_8", 0.015995 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.703519 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -1.142622 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
