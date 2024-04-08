WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_small" AS "ADS" 
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
     SELECT 0 AS "sv_idx", 2.000000 AS "coeff", 0.544738 AS "sv_0", 0.515912 AS "sv_1", 0.990435 AS "sv_2", 0.255145 AS "sv_3", 0.143953 AS "sv_4", 0.332351 AS "sv_5", 0.868622 AS "sv_6", 0.041089 AS "sv_7", 0.898018 AS "sv_8", 0.377159 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 0.364076 AS "coeff", 0.783459 AS "sv_0", 0.095321 AS "sv_1", 0.135945 AS "sv_2", 0.858711 AS "sv_3", 0.240785 AS "sv_4", 0.083671 AS "sv_5", 0.052374 AS "sv_6", 0.422766 AS "sv_7", 0.019766 AS "sv_8", 0.833486 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 2.000000 AS "coeff", 0.652811 AS "sv_0", 0.757719 AS "sv_1", 0.306902 AS "sv_2", 0.828286 AS "sv_3", 0.763064 AS "sv_4", 0.859003 AS "sv_5", 0.873377 AS "sv_6", 0.146070 AS "sv_7", 0.894295 AS "sv_8", 0.086598 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 2.000000 AS "coeff", 0.226051 AS "sv_0", 0.939732 AS "sv_1", 0.731124 AS "sv_2", 0.837456 AS "sv_3", 0.782448 AS "sv_4", 0.352927 AS "sv_5", 0.183212 AS "sv_6", 0.843453 AS "sv_7", 0.185038 AS "sv_8", 0.248943 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 2.000000 AS "coeff", 0.764610 AS "sv_0", 0.378970 AS "sv_1", 0.823855 AS "sv_2", 0.913603 AS "sv_3", 0.553400 AS "sv_4", 0.055048 AS "sv_5", 0.588332 AS "sv_6", 0.361050 AS "sv_7", 0.814980 AS "sv_8", 0.123688 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -2.000000 AS "coeff", 0.368356 AS "sv_0", 0.189593 AS "sv_1", 0.403483 AS "sv_2", 0.670145 AS "sv_3", 0.411066 AS "sv_4", 0.464093 AS "sv_5", 0.307388 AS "sv_6", 0.840440 AS "sv_7", 0.462841 AS "sv_8", 0.813023 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -2.000000 AS "coeff", 0.888102 AS "sv_0", 0.149216 AS "sv_1", 0.426902 AS "sv_2", 0.180039 AS "sv_3", 0.792176 AS "sv_4", 0.085835 AS "sv_5", 0.603319 AS "sv_6", 0.653572 AS "sv_7", 0.865909 AS "sv_8", 0.986362 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 2.000000 AS "coeff", 0.825366 AS "sv_0", 0.284076 AS "sv_1", 0.971058 AS "sv_2", 0.191878 AS "sv_3", 0.387555 AS "sv_4", 0.062500 AS "sv_5", 0.206877 AS "sv_6", 0.900471 AS "sv_7", 0.780397 AS "sv_8", 0.355315 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -2.000000 AS "coeff", 0.235384 AS "sv_0", 0.117604 AS "sv_1", 0.514017 AS "sv_2", 0.633968 AS "sv_3", 0.618557 AS "sv_4", 0.121827 AS "sv_5", 0.576931 AS "sv_6", 0.091568 AS "sv_7", 0.527227 AS "sv_8", 0.211281 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -2.000000 AS "coeff", 0.834709 AS "sv_0", 0.502155 AS "sv_1", 0.670056 AS "sv_2", 0.169213 AS "sv_3", 0.154568 AS "sv_4", 0.685113 AS "sv_5", 0.954394 AS "sv_6", 0.848192 AS "sv_7", 0.038824 AS "sv_8", 0.113899 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.938049 AS "coeff", 0.287599 AS "sv_0", 0.939261 AS "sv_1", 0.380885 AS "sv_2", 0.731889 AS "sv_3", 0.052941 AS "sv_4", 0.942998 AS "sv_5", 0.527849 AS "sv_6", 0.812585 AS "sv_7", 0.329620 AS "sv_8", 0.003549 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -2.000000 AS "coeff", 0.992031 AS "sv_0", 0.233387 AS "sv_1", 0.782862 AS "sv_2", 0.234139 AS "sv_3", 0.252201 AS "sv_4", 0.042487 AS "sv_5", 0.353661 AS "sv_6", 0.403574 AS "sv_7", 0.461541 AS "sv_8", 0.895167 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -2.000000 AS "coeff", 0.020119 AS "sv_0", 0.541789 AS "sv_1", 0.751033 AS "sv_2", 0.996253 AS "sv_3", 0.717629 AS "sv_4", 0.991604 AS "sv_5", 0.412097 AS "sv_6", 0.708677 AS "sv_7", 0.950842 AS "sv_8", 0.143679 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.075163 AS "coeff", 0.830477 AS "sv_0", 0.389094 AS "sv_1", 0.475292 AS "sv_2", 0.147457 AS "sv_3", 0.363702 AS "sv_4", 0.741192 AS "sv_5", 0.291713 AS "sv_6", 0.634453 AS "sv_7", 0.479506 AS "sv_8", 0.035941 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 2.000000 AS "coeff", 0.399336 AS "sv_0", 0.628863 AS "sv_1", 0.606025 AS "sv_2", 0.837489 AS "sv_3", 0.772643 AS "sv_4", 0.257624 AS "sv_5", 0.166252 AS "sv_6", 0.040244 AS "sv_7", 0.521303 AS "sv_8", 0.455322 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 2.000000 AS "coeff", 0.634220 AS "sv_0", 0.486969 AS "sv_1", 0.969793 AS "sv_2", 0.441636 AS "sv_3", 0.814121 AS "sv_4", 0.690923 AS "sv_5", 0.194226 AS "sv_6", 0.716476 AS "sv_7", 0.697923 AS "sv_8", 0.212891 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 2.000000 AS "coeff", 0.772433 AS "sv_0", 0.764512 AS "sv_1", 0.960643 AS "sv_2", 0.302594 AS "sv_3", 0.292439 AS "sv_4", 0.441128 AS "sv_5", 0.688884 AS "sv_6", 0.145406 AS "sv_7", 0.532042 AS "sv_8", 0.749330 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -2.000000 AS "coeff", 0.907576 AS "sv_0", 0.735434 AS "sv_1", 0.379983 AS "sv_2", 0.157810 AS "sv_3", 0.874279 AS "sv_4", 0.971871 AS "sv_5", 0.088356 AS "sv_6", 0.265155 AS "sv_7", 0.264531 AS "sv_8", 0.516615 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.443155 AS "coeff", 0.073860 AS "sv_0", 0.684412 AS "sv_1", 0.937700 AS "sv_2", 0.715815 AS "sv_3", 0.671463 AS "sv_4", 0.675644 AS "sv_5", 0.715147 AS "sv_6", 0.319506 AS "sv_7", 0.552600 AS "sv_8", 0.675153 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -0.068913 AS "coeff", 0.191682 AS "sv_0", 0.548477 AS "sv_1", 0.981609 AS "sv_2", 0.531261 AS "sv_3", 0.813478 AS "sv_4", 0.102625 AS "sv_5", 0.317443 AS "sv_6", 0.201464 AS "sv_7", 0.243298 AS "sv_8", 0.064135 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 2.000000 AS "coeff", 0.604811 AS "sv_0", 0.984899 AS "sv_1", 0.598416 AS "sv_2", 0.783427 AS "sv_3", 0.739098 AS "sv_4", 0.893643 AS "sv_5", 0.193266 AS "sv_6", 0.096950 AS "sv_7", 0.547724 AS "sv_8", 0.389115 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 2.000000 AS "coeff", 0.480054 AS "sv_0", 0.664308 AS "sv_1", 0.985340 AS "sv_2", 0.567078 AS "sv_3", 0.994149 AS "sv_4", 0.780890 AS "sv_5", 0.232756 AS "sv_6", 0.567089 AS "sv_7", 0.093123 AS "sv_8", 0.031981 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -2.000000 AS "coeff", 0.257439 AS "sv_0", 0.499463 AS "sv_1", 0.260146 AS "sv_2", 0.239901 AS "sv_3", 0.156860 AS "sv_4", 0.590953 AS "sv_5", 0.077376 AS "sv_6", 0.340943 AS "sv_7", 0.943330 AS "sv_8", 0.056908 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -2.000000 AS "coeff", 0.010500 AS "sv_0", 0.200190 AS "sv_1", 0.192366 AS "sv_2", 0.175831 AS "sv_3", 0.507530 AS "sv_4", 0.721218 AS "sv_5", 0.719388 AS "sv_6", 0.114770 AS "sv_7", 0.417354 AS "sv_8", 0.783886 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -2.000000 AS "coeff", 0.341289 AS "sv_0", 0.059388 AS "sv_1", 0.275743 AS "sv_2", 0.885258 AS "sv_3", 0.018723 AS "sv_4", 0.985191 AS "sv_5", 0.272452 AS "sv_6", 0.138076 AS "sv_7", 0.832781 AS "sv_8", 0.073518 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 2.000000 AS "coeff", 0.759884 AS "sv_0", 0.645603 AS "sv_1", 0.858346 AS "sv_2", 0.414192 AS "sv_3", 0.746659 AS "sv_4", 0.476919 AS "sv_5", 0.729435 AS "sv_6", 0.314409 AS "sv_7", 0.340241 AS "sv_8", 0.086284 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -2.000000 AS "coeff", 0.361047 AS "sv_0", 0.160106 AS "sv_1", 0.219158 AS "sv_2", 0.010201 AS "sv_3", 0.471566 AS "sv_4", 0.488280 AS "sv_5", 0.020705 AS "sv_6", 0.852158 AS "sv_7", 0.667965 AS "sv_8", 0.378921 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.102564 AS "coeff", 0.707837 AS "sv_0", 0.144074 AS "sv_1", 0.012616 AS "sv_2", 0.030879 AS "sv_3", 0.479881 AS "sv_4", 0.891077 AS "sv_5", 0.451813 AS "sv_6", 0.845402 AS "sv_7", 0.259907 AS "sv_8", 0.331544 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -2.000000 AS "coeff", 0.387013 AS "sv_0", 0.186144 AS "sv_1", 0.843217 AS "sv_2", 0.273500 AS "sv_3", 0.175361 AS "sv_4", 0.010880 AS "sv_5", 0.338375 AS "sv_6", 0.530580 AS "sv_7", 0.739766 AS "sv_8", 0.316235 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -2.000000 AS "coeff", 0.468597 AS "sv_0", 0.178458 AS "sv_1", 0.334268 AS "sv_2", 0.726481 AS "sv_3", 0.251948 AS "sv_4", 0.416145 AS "sv_5", 0.033750 AS "sv_6", 0.950958 AS "sv_7", 0.192608 AS "sv_8", 0.099539 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", 2.000000 AS "coeff", 0.705919 AS "sv_0", 0.335669 AS "sv_1", 0.829238 AS "sv_2", 0.863314 AS "sv_3", 0.287537 AS "sv_4", 0.639683 AS "sv_5", 0.745771 AS "sv_6", 0.787558 AS "sv_7", 0.582418 AS "sv_8", 0.363306 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -2.000000 AS "coeff", 0.975417 AS "sv_0", 0.002660 AS "sv_1", 0.366127 AS "sv_2", 0.434512 AS "sv_3", 0.945664 AS "sv_4", 0.329085 AS "sv_5", 0.852323 AS "sv_6", 0.591908 AS "sv_7", 0.151237 AS "sv_8", 0.221160 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 2.000000 AS "coeff", 0.479223 AS "sv_0", 0.684603 AS "sv_1", 0.324254 AS "sv_2", 0.801230 AS "sv_3", 0.871487 AS "sv_4", 0.937278 AS "sv_5", 0.292127 AS "sv_6", 0.900755 AS "sv_7", 0.827968 AS "sv_8", 0.568796 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 2.000000 AS "coeff", 0.457487 AS "sv_0", 0.414129 AS "sv_1", 0.014223 AS "sv_2", 0.378696 AS "sv_3", 0.893256 AS "sv_4", 0.937627 AS "sv_5", 0.113897 AS "sv_6", 0.460844 AS "sv_7", 0.008495 AS "sv_8", 0.149271 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", 2.000000 AS "coeff", 0.734481 AS "sv_0", 0.482054 AS "sv_1", 0.789831 AS "sv_2", 0.806913 AS "sv_3", 0.681106 AS "sv_4", 0.602843 AS "sv_5", 0.333277 AS "sv_6", 0.147743 AS "sv_7", 0.020703 AS "sv_8", 0.509223 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -2.000000 AS "coeff", 0.993297 AS "sv_0", 0.015448 AS "sv_1", 0.073074 AS "sv_2", 0.123516 AS "sv_3", 0.766918 AS "sv_4", 0.032547 AS "sv_5", 0.970468 AS "sv_6", 0.585911 AS "sv_7", 0.580508 AS "sv_8", 0.025791 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 0.340215 AS "coeff", 0.140833 AS "sv_0", 0.617769 AS "sv_1", 0.186105 AS "sv_2", 0.667265 AS "sv_3", 0.836290 AS "sv_4", 0.880516 AS "sv_5", 0.798945 AS "sv_6", 0.198079 AS "sv_7", 0.648067 AS "sv_8", 0.563459 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.244025 AS "coeff", 0.305323 AS "sv_0", 0.920127 AS "sv_1", 0.554815 AS "sv_2", 0.290412 AS "sv_3", 0.398567 AS "sv_4", 0.153044 AS "sv_5", 0.764948 AS "sv_6", 0.336047 AS "sv_7", 0.946082 AS "sv_8", 0.127173 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.423425 AS "coeff", 0.962192 AS "sv_0", 0.293916 AS "sv_1", 0.643533 AS "sv_2", 0.533264 AS "sv_3", 0.651122 AS "sv_4", 0.658760 AS "sv_5", 0.177023 AS "sv_6", 0.587402 AS "sv_7", 0.910031 AS "sv_8", 0.612165 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 2.000000 AS "coeff", 0.780402 AS "sv_0", 0.085852 AS "sv_1", 0.090657 AS "sv_2", 0.645854 AS "sv_3", 0.414723 AS "sv_4", 0.242054 AS "sv_5", 0.316598 AS "sv_6", 0.649726 AS "sv_7", 0.127717 AS "sv_8", 0.122979 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 2.000000 AS "coeff", 0.774018 AS "sv_0", 0.202348 AS "sv_1", 0.142057 AS "sv_2", 0.873570 AS "sv_3", 0.310546 AS "sv_4", 0.683928 AS "sv_5", 0.650031 AS "sv_6", 0.492748 AS "sv_7", 0.253903 AS "sv_8", 0.786608 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", -2.000000 AS "coeff", 0.343479 AS "sv_0", 0.049133 AS "sv_1", 0.720020 AS "sv_2", 0.841468 AS "sv_3", 0.199002 AS "sv_4", 0.085445 AS "sv_5", 0.635873 AS "sv_6", 0.354635 AS "sv_7", 0.971117 AS "sv_8", 0.361298 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -2.000000 AS "coeff", 0.175900 AS "sv_0", 0.912656 AS "sv_1", 0.761809 AS "sv_2", 0.442834 AS "sv_3", 0.780373 AS "sv_4", 0.425137 AS "sv_5", 0.228768 AS "sv_6", 0.916071 AS "sv_7", 0.814451 AS "sv_8", 0.264194 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", -2.000000 AS "coeff", 0.366207 AS "sv_0", 0.096199 AS "sv_1", 0.520676 AS "sv_2", 0.250113 AS "sv_3", 0.155164 AS "sv_4", 0.752654 AS "sv_5", 0.007439 AS "sv_6", 0.025310 AS "sv_7", 0.924844 AS "sv_8", 0.961402 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 2.000000 AS "coeff", 0.827680 AS "sv_0", 0.741216 AS "sv_1", 0.967589 AS "sv_2", 0.359411 AS "sv_3", 0.243325 AS "sv_4", 0.911669 AS "sv_5", 0.829354 AS "sv_6", 0.787352 AS "sv_7", 0.791034 AS "sv_8", 0.782214 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 2.000000 AS "coeff", 0.663564 AS "sv_0", 0.399281 AS "sv_1", 0.158547 AS "sv_2", 0.930965 AS "sv_3", 0.846977 AS "sv_4", 0.986627 AS "sv_5", 0.132816 AS "sv_6", 0.426558 AS "sv_7", 0.999950 AS "sv_8", 0.674509 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 2.000000 AS "coeff", 0.225035 AS "sv_0", 0.267629 AS "sv_1", 0.997439 AS "sv_2", 0.660872 AS "sv_3", 0.911509 AS "sv_4", 0.036102 AS "sv_5", 0.310786 AS "sv_6", 0.232937 AS "sv_7", 0.166239 AS "sv_8", 0.314810 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 0.364753 AS "coeff", 0.447627 AS "sv_0", 0.691429 AS "sv_1", 0.591546 AS "sv_2", 0.175425 AS "sv_3", 0.630102 AS "sv_4", 0.058576 AS "sv_5", 0.814630 AS "sv_6", 0.489707 AS "sv_7", 0.676671 AS "sv_8", 0.497671 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -0.977422 AS "coeff", 0.071195 AS "sv_0", 0.704806 AS "sv_1", 0.073220 AS "sv_2", 0.221647 AS "sv_3", 0.993317 AS "sv_4", 0.434096 AS "sv_5", 0.481980 AS "sv_6", 0.139224 AS "sv_7", 0.725143 AS "sv_8", 0.940551 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", -2.000000 AS "coeff", 0.849990 AS "sv_0", 0.916139 AS "sv_1", 0.864912 AS "sv_2", 0.228437 AS "sv_3", 0.340806 AS "sv_4", 0.227606 AS "sv_5", 0.447862 AS "sv_6", 0.068150 AS "sv_7", 0.472487 AS "sv_8", 0.104133 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 2.000000 AS "coeff", 0.823836 AS "sv_0", 0.504187 AS "sv_1", 0.034569 AS "sv_2", 0.308381 AS "sv_3", 0.003390 AS "sv_4", 0.039580 AS "sv_5", 0.879070 AS "sv_6", 0.101112 AS "sv_7", 0.747507 AS "sv_8", 0.958859 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -2.000000 AS "coeff", 0.221163 AS "sv_0", 0.634851 AS "sv_1", 0.675740 AS "sv_2", 0.393459 AS "sv_3", 0.593254 AS "sv_4", 0.877299 AS "sv_5", 0.742170 AS "sv_6", 0.322286 AS "sv_7", 0.749472 AS "sv_8", 0.996954 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -2.000000 AS "coeff", 0.509773 AS "sv_0", 0.341051 AS "sv_1", 0.395373 AS "sv_2", 0.566571 AS "sv_3", 0.346628 AS "sv_4", 0.931609 AS "sv_5", 0.107350 AS "sv_6", 0.085550 AS "sv_7", 0.260950 AS "sv_8", 0.128551 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 2.000000 AS "coeff", 0.246418 AS "sv_0", 0.754389 AS "sv_1", 0.264436 AS "sv_2", 0.996826 AS "sv_3", 0.880107 AS "sv_4", 0.261948 AS "sv_5", 0.595422 AS "sv_6", 0.306809 AS "sv_7", 0.390167 AS "sv_8", 0.471118 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -2.000000 AS "coeff", 0.412680 AS "sv_0", 0.457356 AS "sv_1", 0.683210 AS "sv_2", 0.556247 AS "sv_3", 0.427686 AS "sv_4", 0.733437 AS "sv_5", 0.557058 AS "sv_6", 0.987081 AS "sv_7", 0.262669 AS "sv_8", 0.112616 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -2.000000 AS "coeff", 0.804101 AS "sv_0", 0.103050 AS "sv_1", 0.728795 AS "sv_2", 0.068628 AS "sv_3", 0.567613 AS "sv_4", 0.648562 AS "sv_5", 0.495718 AS "sv_6", 0.628355 AS "sv_7", 0.398738 AS "sv_8", 0.185100 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", 2.000000 AS "coeff", 0.101391 AS "sv_0", 0.213374 AS "sv_1", 0.964562 AS "sv_2", 0.911902 AS "sv_3", 0.755811 AS "sv_4", 0.963955 AS "sv_5", 0.532774 AS "sv_6", 0.985822 AS "sv_7", 0.912822 AS "sv_8", 0.720971 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.162703 AS "coeff", 0.315183 AS "sv_0", 0.997390 AS "sv_1", 0.586190 AS "sv_2", 0.445598 AS "sv_3", 0.654557 AS "sv_4", 0.385768 AS "sv_5", 0.990681 AS "sv_6", 0.245576 AS "sv_7", 0.173731 AS "sv_8", 0.219154 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.388846 AS "coeff", 0.652046 AS "sv_0", 0.852315 AS "sv_1", 0.661294 AS "sv_2", 0.458178 AS "sv_3", 0.683117 AS "sv_4", 0.988920 AS "sv_5", 0.959995 AS "sv_6", 0.609463 AS "sv_7", 0.682591 AS "sv_8", 0.243739 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 2.000000 AS "coeff", 0.133169 AS "sv_0", 0.898182 AS "sv_1", 0.993566 AS "sv_2", 0.694676 AS "sv_3", 0.756484 AS "sv_4", 0.193983 AS "sv_5", 0.035123 AS "sv_6", 0.033415 AS "sv_7", 0.014059 AS "sv_8", 0.907372 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 2.000000 AS "coeff", 0.771820 AS "sv_0", 0.489723 AS "sv_1", 0.677121 AS "sv_2", 0.147928 AS "sv_3", 0.907274 AS "sv_4", 0.355043 AS "sv_5", 0.851254 AS "sv_6", 0.565222 AS "sv_7", 0.039136 AS "sv_8", 0.218690 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", -2.000000 AS "coeff", 0.059807 AS "sv_0", 0.098960 AS "sv_1", 0.941488 AS "sv_2", 0.567316 AS "sv_3", 0.732979 AS "sv_4", 0.264147 AS "sv_5", 0.224463 AS "sv_6", 0.265461 AS "sv_7", 0.196262 AS "sv_8", 0.732540 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.895747 AS "coeff", 0.672520 AS "sv_0", 0.960422 AS "sv_1", 0.271050 AS "sv_2", 0.259409 AS "sv_3", 0.076063 AS "sv_4", 0.603909 AS "sv_5", 0.732761 AS "sv_6", 0.514037 AS "sv_7", 0.918325 AS "sv_8", 0.297702 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -14.313331 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -1.117212 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
