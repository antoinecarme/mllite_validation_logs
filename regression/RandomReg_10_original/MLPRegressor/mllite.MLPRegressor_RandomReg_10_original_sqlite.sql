WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_original" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    0.409679 + 0.197251 * t."OUT_0"  + 0.294535 * t."OUT_1"  + 0.121676 * t."OUT_2"  + 0.196452 * t."OUT_3"  + 0.027883 * t."OUT_4"  + 0.223055 * t."OUT_5"  + 0.348785 * t."OUT_6"  + 0.026565 * t."OUT_7"  + 0.333352 * t."OUT_8"  + 0.123710 * t."OUT_9" AS "OUT_0",
    0.420225 + -0.133758 * t."OUT_0"  + -0.411156 * t."OUT_1"  + -0.244171 * t."OUT_2"  + -0.161961 * t."OUT_3"  + 0.059011 * t."OUT_4"  + -0.020369 * t."OUT_5"  + -0.329525 * t."OUT_6"  + -0.289928 * t."OUT_7"  + -0.278420 * t."OUT_8"  + -0.071313 * t."OUT_9" AS "OUT_1",
    0.409051 + -0.304723 * t."OUT_0"  + -0.280960 * t."OUT_1"  + -0.387644 * t."OUT_2"  + -0.147245 * t."OUT_3"  + 0.105768 * t."OUT_4"  + -0.281756 * t."OUT_5"  + -0.396686 * t."OUT_6"  + -0.345082 * t."OUT_7"  + -0.261603 * t."OUT_8"  + -0.151917 * t."OUT_9" AS "OUT_2",
    0.305118 + 0.220477 * t."OUT_0"  + 0.361884 * t."OUT_1"  + 0.383156 * t."OUT_2"  + 0.104277 * t."OUT_3"  + 0.298997 * t."OUT_4"  + 0.288452 * t."OUT_5"  + 0.273740 * t."OUT_6"  + 0.201479 * t."OUT_7"  + 0.119853 * t."OUT_8"  + 0.043181 * t."OUT_9" AS "OUT_3",
    0.113664 + -0.057413 * t."OUT_0"  + 0.051356 * t."OUT_1"  + 0.126614 * t."OUT_2"  + -0.229509 * t."OUT_3"  + -0.158265 * t."OUT_4"  + -0.263067 * t."OUT_5"  + 0.004553 * t."OUT_6"  + -0.151748 * t."OUT_7"  + 0.117091 * t."OUT_8"  + -0.209306 * t."OUT_9" AS "OUT_4",
    0.338429 + -0.383862 * t."OUT_0"  + -0.025341 * t."OUT_1"  + -0.166034 * t."OUT_2"  + -0.037491 * t."OUT_3"  + 0.047058 * t."OUT_4"  + 0.027816 * t."OUT_5"  + -0.389166 * t."OUT_6"  + -0.398360 * t."OUT_7"  + -0.300403 * t."OUT_8"  + -0.192820 * t."OUT_9" AS "OUT_5",
    0.145396 + -0.173941 * t."OUT_0"  + -0.065953 * t."OUT_1"  + -0.214991 * t."OUT_2"  + -0.135067 * t."OUT_3"  + 0.265501 * t."OUT_4"  + -0.326799 * t."OUT_5"  + -0.434957 * t."OUT_6"  + -0.233994 * t."OUT_7"  + -0.344874 * t."OUT_8"  + -0.006633 * t."OUT_9" AS "OUT_6",
    0.417075 + 0.221604 * t."OUT_0"  + 0.322059 * t."OUT_1"  + 0.296044 * t."OUT_2"  + 0.074438 * t."OUT_3"  + 0.202962 * t."OUT_4"  + 0.002587 * t."OUT_5"  + 0.239590 * t."OUT_6"  + 0.059923 * t."OUT_7"  + 0.163608 * t."OUT_8"  + 0.151180 * t."OUT_9" AS "OUT_7",
    0.048107 + -0.023779 * t."OUT_0"  + -0.326035 * t."OUT_1"  + -0.195518 * t."OUT_2"  + -0.167252 * t."OUT_3"  + 0.208842 * t."OUT_4"  + -0.313937 * t."OUT_5"  + -0.191032 * t."OUT_6"  + -0.095597 * t."OUT_7"  + -0.231826 * t."OUT_8"  + -0.143318 * t."OUT_9" AS "OUT_8",
    0.339263 + 0.263703 * t."OUT_0"  + 0.231701 * t."OUT_1"  + 0.330509 * t."OUT_2"  + 0.279020 * t."OUT_3"  + 0.107569 * t."OUT_4"  + 0.128815 * t."OUT_5"  + 0.149991 * t."OUT_6"  + 0.353631 * t."OUT_7"  + 0.316237 * t."OUT_8"  + 0.172525 * t."OUT_9" AS "OUT_9",
    -0.190002 + 0.068007 * t."OUT_0"  + -0.069556 * t."OUT_1"  + -0.105254 * t."OUT_2"  + 0.026259 * t."OUT_3"  + -0.078423 * t."OUT_4"  + -0.022002 * t."OUT_5"  + -0.073190 * t."OUT_6"  + 0.015310 * t."OUT_7"  + -0.253362 * t."OUT_8"  + 0.020732 * t."OUT_9" AS "OUT_10",
    0.460318 + 0.170568 * t."OUT_0"  + 0.348436 * t."OUT_1"  + 0.344870 * t."OUT_2"  + 0.065872 * t."OUT_3"  + 0.017291 * t."OUT_4"  + 0.251811 * t."OUT_5"  + 0.359211 * t."OUT_6"  + 0.265445 * t."OUT_7"  + 0.075858 * t."OUT_8"  + 0.019598 * t."OUT_9" AS "OUT_11",
    -0.067616 + 0.089252 * t."OUT_0"  + -0.026407 * t."OUT_1"  + -0.027043 * t."OUT_2"  + 0.007002 * t."OUT_3"  + 0.023141 * t."OUT_4"  + -0.148498 * t."OUT_5"  + -0.144928 * t."OUT_6"  + -0.140699 * t."OUT_7"  + -0.252679 * t."OUT_8"  + 0.019657 * t."OUT_9" AS "OUT_12",
    0.113704 + -0.477938 * t."OUT_0"  + -0.274983 * t."OUT_1"  + -0.354694 * t."OUT_2"  + -0.341703 * t."OUT_3"  + -0.114280 * t."OUT_4"  + -0.018968 * t."OUT_5"  + -0.171950 * t."OUT_6"  + -0.453635 * t."OUT_7"  + -0.315062 * t."OUT_8"  + -0.244549 * t."OUT_9" AS "OUT_13",
    0.039912 + 0.145787 * t."OUT_0"  + 0.361548 * t."OUT_1"  + 0.158146 * t."OUT_2"  + 0.343869 * t."OUT_3"  + 0.091824 * t."OUT_4"  + 0.019739 * t."OUT_5"  + 0.292298 * t."OUT_6"  + -0.042012 * t."OUT_7"  + 0.399602 * t."OUT_8"  + 0.039081 * t."OUT_9" AS "OUT_14",
    0.470742 + 0.341744 * t."OUT_0"  + 0.403162 * t."OUT_1"  + 0.062070 * t."OUT_2"  + 0.144614 * t."OUT_3"  + -0.049108 * t."OUT_4"  + 0.006286 * t."OUT_5"  + 0.269940 * t."OUT_6"  + 0.401159 * t."OUT_7"  + 0.206174 * t."OUT_8"  + 0.167213 * t."OUT_9" AS "OUT_15",
    0.248870 + 0.344546 * t."OUT_0"  + 0.252560 * t."OUT_1"  + 0.104980 * t."OUT_2"  + 0.208401 * t."OUT_3"  + 0.103432 * t."OUT_4"  + 0.069778 * t."OUT_5"  + 0.181352 * t."OUT_6"  + 0.113450 * t."OUT_7"  + 0.335507 * t."OUT_8"  + -0.065468 * t."OUT_9" AS "OUT_16",
    0.049195 + -0.344964 * t."OUT_0"  + -0.294655 * t."OUT_1"  + -0.361959 * t."OUT_2"  + -0.307767 * t."OUT_3"  + -0.002081 * t."OUT_4"  + -0.212912 * t."OUT_5"  + -0.021867 * t."OUT_6"  + -0.178922 * t."OUT_7"  + -0.285935 * t."OUT_8"  + 0.156568 * t."OUT_9" AS "OUT_17",
    0.095499 + -0.390650 * t."OUT_0"  + -0.329255 * t."OUT_1"  + -0.194861 * t."OUT_2"  + -0.290346 * t."OUT_3"  + 0.082179 * t."OUT_4"  + -0.175322 * t."OUT_5"  + -0.416691 * t."OUT_6"  + -0.379390 * t."OUT_7"  + -0.298098 * t."OUT_8"  + 0.062773 * t."OUT_9" AS "OUT_18",
    0.149838 + -0.423164 * t."OUT_0"  + -0.353716 * t."OUT_1"  + -0.257260 * t."OUT_2"  + -0.069900 * t."OUT_3"  + 0.009274 * t."OUT_4"  + -0.380349 * t."OUT_5"  + -0.387908 * t."OUT_6"  + -0.005810 * t."OUT_7"  + -0.284797 * t."OUT_8"  + -0.005875 * t."OUT_9" AS "OUT_19",
    0.405930 + 0.344263 * t."OUT_0"  + 0.364055 * t."OUT_1"  + 0.142711 * t."OUT_2"  + 0.027551 * t."OUT_3"  + 0.277768 * t."OUT_4"  + 0.264419 * t."OUT_5"  + 0.126225 * t."OUT_6"  + 0.188382 * t."OUT_7"  + 0.382799 * t."OUT_8"  + -0.066186 * t."OUT_9" AS "OUT_20",
    0.320931 + -0.441200 * t."OUT_0"  + -0.082609 * t."OUT_1"  + -0.387958 * t."OUT_2"  + 0.049045 * t."OUT_3"  + 0.058877 * t."OUT_4"  + -0.068581 * t."OUT_5"  + -0.419227 * t."OUT_6"  + -0.165855 * t."OUT_7"  + -0.058199 * t."OUT_8"  + -0.067498 * t."OUT_9" AS "OUT_21",
    0.208255 + 0.159737 * t."OUT_0"  + 0.021144 * t."OUT_1"  + 0.392971 * t."OUT_2"  + -0.038555 * t."OUT_3"  + -0.062475 * t."OUT_4"  + 0.086120 * t."OUT_5"  + 0.022230 * t."OUT_6"  + 0.049478 * t."OUT_7"  + -0.039638 * t."OUT_8"  + 0.219239 * t."OUT_9" AS "OUT_22",
    0.277103 + 0.249959 * t."OUT_0"  + 0.295408 * t."OUT_1"  + 0.149500 * t."OUT_2"  + 0.074872 * t."OUT_3"  + 0.090827 * t."OUT_4"  + 0.085120 * t."OUT_5"  + 0.336017 * t."OUT_6"  + 0.197842 * t."OUT_7"  + 0.172809 * t."OUT_8"  + -0.137583 * t."OUT_9" AS "OUT_23",
    0.477477 + -0.268320 * t."OUT_0"  + -0.355572 * t."OUT_1"  + -0.265637 * t."OUT_2"  + -0.042051 * t."OUT_3"  + 0.050044 * t."OUT_4"  + -0.047210 * t."OUT_5"  + -0.214691 * t."OUT_6"  + -0.211687 * t."OUT_7"  + -0.326659 * t."OUT_8"  + 0.008911 * t."OUT_9" AS "OUT_24",
    0.310273 + -0.483446 * t."OUT_0"  + -0.260699 * t."OUT_1"  + -0.170116 * t."OUT_2"  + -0.103300 * t."OUT_3"  + -0.066217 * t."OUT_4"  + -0.318512 * t."OUT_5"  + -0.345522 * t."OUT_6"  + -0.394373 * t."OUT_7"  + -0.055598 * t."OUT_8"  + -0.167853 * t."OUT_9" AS "OUT_25",
    0.205652 + -0.387763 * t."OUT_0"  + -0.214816 * t."OUT_1"  + -0.138122 * t."OUT_2"  + -0.013596 * t."OUT_3"  + -0.060642 * t."OUT_4"  + -0.037358 * t."OUT_5"  + -0.202461 * t."OUT_6"  + -0.403308 * t."OUT_7"  + -0.194862 * t."OUT_8"  + -0.009356 * t."OUT_9" AS "OUT_26",
    -0.035701 + 0.020710 * t."OUT_0"  + -0.268815 * t."OUT_1"  + -0.058916 * t."OUT_2"  + 0.056413 * t."OUT_3"  + 0.041032 * t."OUT_4"  + 0.026551 * t."OUT_5"  + -0.071244 * t."OUT_6"  + -0.205495 * t."OUT_7"  + -0.160319 * t."OUT_8"  + -0.277307 * t."OUT_9" AS "OUT_27",
    0.156591 + 0.219368 * t."OUT_0"  + 0.339245 * t."OUT_1"  + 0.043347 * t."OUT_2"  + -0.000183 * t."OUT_3"  + 0.050774 * t."OUT_4"  + 0.220819 * t."OUT_5"  + 0.300576 * t."OUT_6"  + 0.370485 * t."OUT_7"  + 0.353846 * t."OUT_8"  + 0.084138 * t."OUT_9" AS "OUT_28",
    0.028387 + -0.226413 * t."OUT_0"  + -0.432053 * t."OUT_1"  + -0.038728 * t."OUT_2"  + -0.270414 * t."OUT_3"  + -0.017748 * t."OUT_4"  + -0.398191 * t."OUT_5"  + -0.292494 * t."OUT_6"  + -0.373488 * t."OUT_7"  + -0.062983 * t."OUT_8"  + 0.039510 * t."OUT_9" AS "OUT_29",
    0.416690 + -0.421078 * t."OUT_0"  + -0.411350 * t."OUT_1"  + 0.003540 * t."OUT_2"  + -0.201012 * t."OUT_3"  + -0.090382 * t."OUT_4"  + -0.342673 * t."OUT_5"  + -0.388216 * t."OUT_6"  + -0.216028 * t."OUT_7"  + -0.153841 * t."OUT_8"  + -0.046631 * t."OUT_9" AS "OUT_30",
    0.400886 + 0.231122 * t."OUT_0"  + 0.382100 * t."OUT_1"  + 0.389521 * t."OUT_2"  + 0.162125 * t."OUT_3"  + 0.108333 * t."OUT_4"  + 0.030241 * t."OUT_5"  + 0.233606 * t."OUT_6"  + 0.292124 * t."OUT_7"  + 0.362868 * t."OUT_8"  + 0.034401 * t."OUT_9" AS "OUT_31",
    0.345954 + -0.311972 * t."OUT_0"  + -0.030983 * t."OUT_1"  + -0.204482 * t."OUT_2"  + -0.034950 * t."OUT_3"  + -0.053726 * t."OUT_4"  + -0.129560 * t."OUT_5"  + -0.201858 * t."OUT_6"  + -0.391909 * t."OUT_7"  + -0.044222 * t."OUT_8"  + 0.019069 * t."OUT_9" AS "OUT_32",
    -0.036210 + -0.090034 * t."OUT_0"  + -0.341296 * t."OUT_1"  + 0.062813 * t."OUT_2"  + -0.036391 * t."OUT_3"  + 0.102835 * t."OUT_4"  + -0.381518 * t."OUT_5"  + -0.067781 * t."OUT_6"  + 0.056529 * t."OUT_7"  + -0.341484 * t."OUT_8"  + -0.066806 * t."OUT_9" AS "OUT_33",
    0.378921 + -0.280998 * t."OUT_0"  + -0.311290 * t."OUT_1"  + -0.068919 * t."OUT_2"  + -0.112428 * t."OUT_3"  + 0.021072 * t."OUT_4"  + -0.208196 * t."OUT_5"  + -0.424084 * t."OUT_6"  + -0.394281 * t."OUT_7"  + -0.238318 * t."OUT_8"  + -0.141555 * t."OUT_9" AS "OUT_34",
    0.259706 + -0.144233 * t."OUT_0"  + -0.413828 * t."OUT_1"  + -0.166027 * t."OUT_2"  + -0.094251 * t."OUT_3"  + 0.075793 * t."OUT_4"  + -0.268007 * t."OUT_5"  + -0.402243 * t."OUT_6"  + -0.385740 * t."OUT_7"  + -0.171849 * t."OUT_8"  + -0.041882 * t."OUT_9" AS "OUT_35",
    0.416255 + -0.424124 * t."OUT_0"  + -0.433612 * t."OUT_1"  + -0.331938 * t."OUT_2"  + 0.015478 * t."OUT_3"  + 0.035167 * t."OUT_4"  + -0.090709 * t."OUT_5"  + -0.253012 * t."OUT_6"  + -0.239923 * t."OUT_7"  + -0.247612 * t."OUT_8"  + -0.099449 * t."OUT_9" AS "OUT_36",
    0.262130 + 0.478699 * t."OUT_0"  + 0.096182 * t."OUT_1"  + 0.480796 * t."OUT_2"  + 0.007679 * t."OUT_3"  + -0.056457 * t."OUT_4"  + 0.320331 * t."OUT_5"  + 0.222635 * t."OUT_6"  + 0.237693 * t."OUT_7"  + 0.430722 * t."OUT_8"  + -0.095640 * t."OUT_9" AS "OUT_37",
    0.354153 + -0.384965 * t."OUT_0"  + -0.283499 * t."OUT_1"  + -0.432704 * t."OUT_2"  + -0.137735 * t."OUT_3"  + 0.089246 * t."OUT_4"  + -0.341408 * t."OUT_5"  + -0.346886 * t."OUT_6"  + -0.238392 * t."OUT_7"  + -0.305818 * t."OUT_8"  + -0.049566 * t."OUT_9" AS "OUT_38",
    0.010875 + -0.072680 * t."OUT_0"  + -0.246625 * t."OUT_1"  + -0.413986 * t."OUT_2"  + -0.219860 * t."OUT_3"  + -0.162925 * t."OUT_4"  + -0.042282 * t."OUT_5"  + 0.031748 * t."OUT_6"  + 0.033201 * t."OUT_7"  + -0.262430 * t."OUT_8"  + -0.009496 * t."OUT_9" AS "OUT_39",
    0.315407 + -0.390234 * t."OUT_0"  + -0.360945 * t."OUT_1"  + -0.232247 * t."OUT_2"  + -0.077632 * t."OUT_3"  + 0.033959 * t."OUT_4"  + -0.067873 * t."OUT_5"  + -0.346403 * t."OUT_6"  + -0.308439 * t."OUT_7"  + -0.068405 * t."OUT_8"  + -0.005345 * t."OUT_9" AS "OUT_40",
    0.301277 + -0.087682 * t."OUT_0"  + -0.380238 * t."OUT_1"  + -0.224012 * t."OUT_2"  + -0.093616 * t."OUT_3"  + 0.084146 * t."OUT_4"  + -0.123234 * t."OUT_5"  + -0.363852 * t."OUT_6"  + -0.083356 * t."OUT_7"  + -0.334534 * t."OUT_8"  + -0.216410 * t."OUT_9" AS "OUT_41",
    -0.087242 + 0.017845 * t."OUT_0"  + -0.243429 * t."OUT_1"  + 0.051889 * t."OUT_2"  + -0.102526 * t."OUT_3"  + 0.073370 * t."OUT_4"  + 0.171081 * t."OUT_5"  + 0.165807 * t."OUT_6"  + -0.037218 * t."OUT_7"  + 0.083797 * t."OUT_8"  + -0.111747 * t."OUT_9" AS "OUT_42",
    0.440280 + 0.429702 * t."OUT_0"  + 0.250190 * t."OUT_1"  + 0.404390 * t."OUT_2"  + 0.099516 * t."OUT_3"  + -0.074196 * t."OUT_4"  + 0.107763 * t."OUT_5"  + 0.416875 * t."OUT_6"  + 0.056462 * t."OUT_7"  + 0.359734 * t."OUT_8"  + -0.067103 * t."OUT_9" AS "OUT_43",
    0.112858 + -0.395784 * t."OUT_0"  + -0.384492 * t."OUT_1"  + -0.190003 * t."OUT_2"  + -0.195921 * t."OUT_3"  + -0.046925 * t."OUT_4"  + -0.346919 * t."OUT_5"  + -0.139270 * t."OUT_6"  + -0.319916 * t."OUT_7"  + -0.005412 * t."OUT_8"  + -0.033354 * t."OUT_9" AS "OUT_44",
    0.217137 + -0.432078 * t."OUT_0"  + -0.429005 * t."OUT_1"  + -0.263408 * t."OUT_2"  + -0.029710 * t."OUT_3"  + 0.206269 * t."OUT_4"  + -0.206588 * t."OUT_5"  + -0.379755 * t."OUT_6"  + -0.323478 * t."OUT_7"  + -0.210446 * t."OUT_8"  + -0.027978 * t."OUT_9" AS "OUT_45",
    0.383345 + -0.147202 * t."OUT_0"  + -0.178259 * t."OUT_1"  + -0.351581 * t."OUT_2"  + -0.052377 * t."OUT_3"  + 0.071331 * t."OUT_4"  + -0.032881 * t."OUT_5"  + -0.071052 * t."OUT_6"  + -0.284008 * t."OUT_7"  + -0.267317 * t."OUT_8"  + -0.185547 * t."OUT_9" AS "OUT_46",
    -0.059476 + -0.090798 * t."OUT_0"  + -0.070558 * t."OUT_1"  + -0.310814 * t."OUT_2"  + -0.248591 * t."OUT_3"  + -0.170453 * t."OUT_4"  + -0.255840 * t."OUT_5"  + 0.020275 * t."OUT_6"  + -0.058976 * t."OUT_7"  + 0.077636 * t."OUT_8"  + 0.203898 * t."OUT_9" AS "OUT_47",
    0.402060 + 0.361907 * t."OUT_0"  + 0.158358 * t."OUT_1"  + 0.269730 * t."OUT_2"  + 0.091177 * t."OUT_3"  + 0.137803 * t."OUT_4"  + 0.094333 * t."OUT_5"  + 0.334736 * t."OUT_6"  + 0.034226 * t."OUT_7"  + 0.099841 * t."OUT_8"  + -0.009691 * t."OUT_9" AS "OUT_48",
    0.219330 + 0.399571 * t."OUT_0"  + 0.270305 * t."OUT_1"  + 0.300341 * t."OUT_2"  + 0.178390 * t."OUT_3"  + 0.214734 * t."OUT_4"  + 0.322479 * t."OUT_5"  + 0.152961 * t."OUT_6"  + 0.376192 * t."OUT_7"  + 0.177594 * t."OUT_8"  + 0.259699 * t."OUT_9" AS "OUT_49",
    0.460761 + -0.081459 * t."OUT_0"  + -0.222510 * t."OUT_1"  + -0.432116 * t."OUT_2"  + 0.008005 * t."OUT_3"  + 0.115636 * t."OUT_4"  + -0.306379 * t."OUT_5"  + -0.317772 * t."OUT_6"  + -0.179090 * t."OUT_7"  + -0.240696 * t."OUT_8"  + -0.058560 * t."OUT_9" AS "OUT_50",
    0.150239 + -0.423994 * t."OUT_0"  + -0.418463 * t."OUT_1"  + -0.288421 * t."OUT_2"  + -0.127888 * t."OUT_3"  + 0.241537 * t."OUT_4"  + -0.264339 * t."OUT_5"  + -0.139210 * t."OUT_6"  + -0.316755 * t."OUT_7"  + -0.384163 * t."OUT_8"  + -0.033276 * t."OUT_9" AS "OUT_51",
    0.094212 + 0.368825 * t."OUT_0"  + 0.182430 * t."OUT_1"  + 0.366290 * t."OUT_2"  + -0.084634 * t."OUT_3"  + 0.096149 * t."OUT_4"  + 0.089005 * t."OUT_5"  + 0.082093 * t."OUT_6"  + -0.014860 * t."OUT_7"  + 0.296696 * t."OUT_8"  + 0.321702 * t."OUT_9" AS "OUT_52",
    0.125070 + -0.030860 * t."OUT_0"  + -0.016777 * t."OUT_1"  + -0.277956 * t."OUT_2"  + -0.083923 * t."OUT_3"  + 0.119256 * t."OUT_4"  + -0.038399 * t."OUT_5"  + -0.332998 * t."OUT_6"  + -0.398597 * t."OUT_7"  + -0.030467 * t."OUT_8"  + -0.129870 * t."OUT_9" AS "OUT_53",
    0.231953 + 0.105032 * t."OUT_0"  + 0.457551 * t."OUT_1"  + 0.234153 * t."OUT_2"  + -0.020951 * t."OUT_3"  + 0.327157 * t."OUT_4"  + 0.033640 * t."OUT_5"  + 0.396450 * t."OUT_6"  + 0.148398 * t."OUT_7"  + 0.069149 * t."OUT_8"  + 0.034062 * t."OUT_9" AS "OUT_54",
    0.221560 + 0.318109 * t."OUT_0"  + 0.185090 * t."OUT_1"  + 0.190237 * t."OUT_2"  + 0.312218 * t."OUT_3"  + 0.386163 * t."OUT_4"  + 0.396394 * t."OUT_5"  + 0.349502 * t."OUT_6"  + 0.427128 * t."OUT_7"  + 0.394906 * t."OUT_8"  + 0.258326 * t."OUT_9" AS "OUT_55",
    0.511032 + -0.205837 * t."OUT_0"  + -0.464823 * t."OUT_1"  + -0.181392 * t."OUT_2"  + -0.137587 * t."OUT_3"  + 0.067980 * t."OUT_4"  + -0.199384 * t."OUT_5"  + -0.421892 * t."OUT_6"  + -0.058761 * t."OUT_7"  + -0.233543 * t."OUT_8"  + -0.159382 * t."OUT_9" AS "OUT_56",
    0.192232 + -0.232462 * t."OUT_0"  + -0.346706 * t."OUT_1"  + -0.351325 * t."OUT_2"  + -0.203223 * t."OUT_3"  + 0.044498 * t."OUT_4"  + -0.384976 * t."OUT_5"  + -0.084285 * t."OUT_6"  + -0.153835 * t."OUT_7"  + -0.108305 * t."OUT_8"  + 0.045847 * t."OUT_9" AS "OUT_57",
    0.299941 + 0.250791 * t."OUT_0"  + 0.302841 * t."OUT_1"  + 0.209918 * t."OUT_2"  + -0.048842 * t."OUT_3"  + 0.183693 * t."OUT_4"  + -0.014540 * t."OUT_5"  + 0.104058 * t."OUT_6"  + 0.003614 * t."OUT_7"  + 0.314510 * t."OUT_8"  + -0.068974 * t."OUT_9" AS "OUT_58",
    0.415975 + -0.098790 * t."OUT_0"  + -0.418517 * t."OUT_1"  + -0.066341 * t."OUT_2"  + -0.092725 * t."OUT_3"  + 0.008986 * t."OUT_4"  + -0.047802 * t."OUT_5"  + -0.384535 * t."OUT_6"  + -0.278395 * t."OUT_7"  + -0.365892 * t."OUT_8"  + -0.158126 * t."OUT_9" AS "OUT_59",
    0.350416 + -0.443391 * t."OUT_0"  + -0.153091 * t."OUT_1"  + -0.163108 * t."OUT_2"  + -0.218783 * t."OUT_3"  + 0.028773 * t."OUT_4"  + -0.120603 * t."OUT_5"  + -0.141170 * t."OUT_6"  + -0.345176 * t."OUT_7"  + -0.363200 * t."OUT_8"  + -0.196258 * t."OUT_9" AS "OUT_60",
    0.386391 + 0.286934 * t."OUT_0"  + 0.132228 * t."OUT_1"  + 0.410900 * t."OUT_2"  + 0.148732 * t."OUT_3"  + 0.163155 * t."OUT_4"  + 0.117183 * t."OUT_5"  + 0.150836 * t."OUT_6"  + 0.216159 * t."OUT_7"  + 0.422982 * t."OUT_8"  + 0.154908 * t."OUT_9" AS "OUT_61",
    0.017036 + 0.111816 * t."OUT_0"  + 0.229085 * t."OUT_1"  + 0.180410 * t."OUT_2"  + 0.197319 * t."OUT_3"  + 0.026467 * t."OUT_4"  + 0.005436 * t."OUT_5"  + 0.233480 * t."OUT_6"  + 0.074431 * t."OUT_7"  + -0.067109 * t."OUT_8"  + 0.082105 * t."OUT_9" AS "OUT_62",
    0.383925 + 0.361928 * t."OUT_0"  + 0.427760 * t."OUT_1"  + 0.388860 * t."OUT_2"  + 0.047244 * t."OUT_3"  + 0.029162 * t."OUT_4"  + 0.115702 * t."OUT_5"  + 0.336159 * t."OUT_6"  + 0.174007 * t."OUT_7"  + 0.106305 * t."OUT_8"  + 0.031561 * t."OUT_9" AS "OUT_63",
    0.105150 + -0.454490 * t."OUT_0"  + -0.364320 * t."OUT_1"  + -0.184903 * t."OUT_2"  + 0.098202 * t."OUT_3"  + -0.042165 * t."OUT_4"  + -0.038725 * t."OUT_5"  + -0.291048 * t."OUT_6"  + -0.166055 * t."OUT_7"  + -0.312574 * t."OUT_8"  + -0.328603 * t."OUT_9" AS "OUT_64",
    0.078843 + 0.058386 * t."OUT_0"  + 0.015487 * t."OUT_1"  + -0.258659 * t."OUT_2"  + -0.189547 * t."OUT_3"  + 0.010593 * t."OUT_4"  + 0.104921 * t."OUT_5"  + 0.072019 * t."OUT_6"  + 0.098804 * t."OUT_7"  + -0.312244 * t."OUT_8"  + -0.192268 * t."OUT_9" AS "OUT_65",
    0.512426 + 0.130583 * t."OUT_0"  + 0.142388 * t."OUT_1"  + 0.245833 * t."OUT_2"  + 0.272493 * t."OUT_3"  + 0.352533 * t."OUT_4"  + 0.180504 * t."OUT_5"  + 0.410762 * t."OUT_6"  + 0.210392 * t."OUT_7"  + 0.445441 * t."OUT_8"  + 0.243019 * t."OUT_9" AS "OUT_66",
    0.317712 + 0.006450 * t."OUT_0"  + 0.375589 * t."OUT_1"  + 0.067262 * t."OUT_2"  + 0.041246 * t."OUT_3"  + 0.041740 * t."OUT_4"  + 0.126907 * t."OUT_5"  + 0.312392 * t."OUT_6"  + 0.395631 * t."OUT_7"  + 0.411390 * t."OUT_8"  + -0.122863 * t."OUT_9" AS "OUT_67",
    -0.054848 + 0.156222 * t."OUT_0"  + -0.266479 * t."OUT_1"  + 0.012417 * t."OUT_2"  + 0.047550 * t."OUT_3"  + -0.120727 * t."OUT_4"  + 0.091153 * t."OUT_5"  + 0.130884 * t."OUT_6"  + -0.031213 * t."OUT_7"  + -0.047273 * t."OUT_8"  + 0.115038 * t."OUT_9" AS "OUT_68",
    -0.075635 + 0.117880 * t."OUT_0"  + 0.043445 * t."OUT_1"  + -0.040206 * t."OUT_2"  + -0.148096 * t."OUT_3"  + -0.192627 * t."OUT_4"  + -0.133530 * t."OUT_5"  + -0.116381 * t."OUT_6"  + 0.119687 * t."OUT_7"  + 0.111366 * t."OUT_8"  + -0.149234 * t."OUT_9" AS "OUT_69",
    0.350268 + -0.252521 * t."OUT_0"  + -0.164819 * t."OUT_1"  + 0.004304 * t."OUT_2"  + -0.245066 * t."OUT_3"  + -0.003662 * t."OUT_4"  + -0.112869 * t."OUT_5"  + -0.354326 * t."OUT_6"  + -0.050582 * t."OUT_7"  + -0.295130 * t."OUT_8"  + -0.044356 * t."OUT_9" AS "OUT_70",
    -0.022846 + 0.012015 * t."OUT_0"  + 0.050187 * t."OUT_1"  + 0.338653 * t."OUT_2"  + -0.027875 * t."OUT_3"  + 0.027559 * t."OUT_4"  + 0.150664 * t."OUT_5"  + 0.205271 * t."OUT_6"  + 0.017470 * t."OUT_7"  + 0.316972 * t."OUT_8"  + -0.002207 * t."OUT_9" AS "OUT_71",
    0.039502 + 0.218992 * t."OUT_0"  + 0.325794 * t."OUT_1"  + 0.435918 * t."OUT_2"  + -0.112059 * t."OUT_3"  + 0.130728 * t."OUT_4"  + 0.055504 * t."OUT_5"  + 0.207231 * t."OUT_6"  + 0.326037 * t."OUT_7"  + 0.371418 * t."OUT_8"  + 0.028730 * t."OUT_9" AS "OUT_72",
    -0.154555 + 0.113675 * t."OUT_0"  + 0.008122 * t."OUT_1"  + -0.230160 * t."OUT_2"  + -0.003362 * t."OUT_3"  + -0.071308 * t."OUT_4"  + -0.004281 * t."OUT_5"  + 0.020980 * t."OUT_6"  + -0.046766 * t."OUT_7"  + -0.097486 * t."OUT_8"  + -0.074637 * t."OUT_9" AS "OUT_73",
    0.197193 + -0.322442 * t."OUT_0"  + -0.142840 * t."OUT_1"  + -0.095927 * t."OUT_2"  + -0.224396 * t."OUT_3"  + 0.148675 * t."OUT_4"  + -0.033947 * t."OUT_5"  + -0.232135 * t."OUT_6"  + -0.233164 * t."OUT_7"  + -0.271612 * t."OUT_8"  + -0.186741 * t."OUT_9" AS "OUT_74",
    0.200764 + -0.081057 * t."OUT_0"  + -0.250831 * t."OUT_1"  + -0.031400 * t."OUT_2"  + 0.061192 * t."OUT_3"  + -0.055595 * t."OUT_4"  + -0.148505 * t."OUT_5"  + -0.075771 * t."OUT_6"  + -0.114281 * t."OUT_7"  + 0.059142 * t."OUT_8"  + -0.089220 * t."OUT_9" AS "OUT_75",
    0.278715 + 0.314633 * t."OUT_0"  + 0.397804 * t."OUT_1"  + 0.306790 * t."OUT_2"  + -0.047437 * t."OUT_3"  + 0.234699 * t."OUT_4"  + 0.260296 * t."OUT_5"  + 0.084527 * t."OUT_6"  + 0.316843 * t."OUT_7"  + 0.252296 * t."OUT_8"  + 0.278302 * t."OUT_9" AS "OUT_76",
    0.080827 + 0.108156 * t."OUT_0"  + 0.169021 * t."OUT_1"  + 0.184475 * t."OUT_2"  + -0.025624 * t."OUT_3"  + -0.008083 * t."OUT_4"  + -0.031420 * t."OUT_5"  + 0.143066 * t."OUT_6"  + -0.156835 * t."OUT_7"  + -0.246833 * t."OUT_8"  + -0.238545 * t."OUT_9" AS "OUT_77",
    0.353379 + -0.028443 * t."OUT_0"  + -0.311964 * t."OUT_1"  + -0.321420 * t."OUT_2"  + 0.004638 * t."OUT_3"  + -0.009196 * t."OUT_4"  + -0.314269 * t."OUT_5"  + -0.360068 * t."OUT_6"  + 0.026789 * t."OUT_7"  + 0.009817 * t."OUT_8"  + 0.024214 * t."OUT_9" AS "OUT_78",
    0.230689 + 0.171592 * t."OUT_0"  + 0.296212 * t."OUT_1"  + 0.436618 * t."OUT_2"  + 0.196436 * t."OUT_3"  + 0.130592 * t."OUT_4"  + 0.350613 * t."OUT_5"  + 0.417731 * t."OUT_6"  + 0.134435 * t."OUT_7"  + 0.093396 * t."OUT_8"  + -0.128943 * t."OUT_9" AS "OUT_79",
    0.382232 + 0.305897 * t."OUT_0"  + 0.317840 * t."OUT_1"  + 0.315947 * t."OUT_2"  + 0.121398 * t."OUT_3"  + 0.001096 * t."OUT_4"  + 0.046487 * t."OUT_5"  + 0.429416 * t."OUT_6"  + 0.136815 * t."OUT_7"  + 0.002245 * t."OUT_8"  + 0.062178 * t."OUT_9" AS "OUT_80",
    0.062953 + 0.239873 * t."OUT_0"  + 0.099082 * t."OUT_1"  + 0.304662 * t."OUT_2"  + -0.039944 * t."OUT_3"  + 0.275034 * t."OUT_4"  + 0.085810 * t."OUT_5"  + 0.072062 * t."OUT_6"  + -0.098304 * t."OUT_7"  + 0.205826 * t."OUT_8"  + 0.266539 * t."OUT_9" AS "OUT_81",
    0.226218 + 0.398081 * t."OUT_0"  + 0.220735 * t."OUT_1"  + 0.210393 * t."OUT_2"  + 0.284043 * t."OUT_3"  + 0.380054 * t."OUT_4"  + 0.077834 * t."OUT_5"  + 0.002751 * t."OUT_6"  + 0.033389 * t."OUT_7"  + 0.218079 * t."OUT_8"  + 0.165479 * t."OUT_9" AS "OUT_82",
    0.445236 + 0.192406 * t."OUT_0"  + 0.402661 * t."OUT_1"  + 0.293755 * t."OUT_2"  + 0.047753 * t."OUT_3"  + 0.150359 * t."OUT_4"  + 0.063281 * t."OUT_5"  + 0.347358 * t."OUT_6"  + -0.011956 * t."OUT_7"  + 0.117264 * t."OUT_8"  + 0.075398 * t."OUT_9" AS "OUT_83",
    0.039255 + 0.030970 * t."OUT_0"  + 0.312791 * t."OUT_1"  + 0.372781 * t."OUT_2"  + 0.027927 * t."OUT_3"  + 0.278171 * t."OUT_4"  + 0.268931 * t."OUT_5"  + 0.174923 * t."OUT_6"  + 0.227865 * t."OUT_7"  + 0.353630 * t."OUT_8"  + 0.305952 * t."OUT_9" AS "OUT_84",
    -0.093515 + -0.080688 * t."OUT_0"  + -0.095773 * t."OUT_1"  + -0.051272 * t."OUT_2"  + -0.116128 * t."OUT_3"  + 0.071530 * t."OUT_4"  + 0.052188 * t."OUT_5"  + -0.388545 * t."OUT_6"  + -0.138333 * t."OUT_7"  + 0.039057 * t."OUT_8"  + -0.353562 * t."OUT_9" AS "OUT_85",
    0.208066 + -0.286420 * t."OUT_0"  + -0.438994 * t."OUT_1"  + -0.111742 * t."OUT_2"  + -0.093909 * t."OUT_3"  + 0.014209 * t."OUT_4"  + -0.364570 * t."OUT_5"  + -0.319883 * t."OUT_6"  + -0.361525 * t."OUT_7"  + -0.067546 * t."OUT_8"  + -0.214934 * t."OUT_9" AS "OUT_86",
    0.084077 + -0.289034 * t."OUT_0"  + -0.275329 * t."OUT_1"  + -0.447106 * t."OUT_2"  + 0.062776 * t."OUT_3"  + 0.286788 * t."OUT_4"  + -0.305514 * t."OUT_5"  + -0.404477 * t."OUT_6"  + -0.257270 * t."OUT_7"  + -0.286762 * t."OUT_8"  + -0.242888 * t."OUT_9" AS "OUT_87",
    -0.064322 + -0.406309 * t."OUT_0"  + -0.008046 * t."OUT_1"  + -0.101798 * t."OUT_2"  + -0.089554 * t."OUT_3"  + 0.083036 * t."OUT_4"  + -0.133717 * t."OUT_5"  + 0.004367 * t."OUT_6"  + -0.331887 * t."OUT_7"  + -0.201293 * t."OUT_8"  + -0.214001 * t."OUT_9" AS "OUT_88",
    0.337586 + -0.498870 * t."OUT_0"  + -0.142100 * t."OUT_1"  + -0.058654 * t."OUT_2"  + -0.096382 * t."OUT_3"  + 0.026289 * t."OUT_4"  + -0.325130 * t."OUT_5"  + -0.313265 * t."OUT_6"  + -0.298998 * t."OUT_7"  + -0.396513 * t."OUT_8"  + 0.004385 * t."OUT_9" AS "OUT_89",
    0.064122 + -0.361347 * t."OUT_0"  + -0.340112 * t."OUT_1"  + -0.206756 * t."OUT_2"  + 0.079025 * t."OUT_3"  + -0.002839 * t."OUT_4"  + -0.371826 * t."OUT_5"  + -0.351858 * t."OUT_6"  + -0.134338 * t."OUT_7"  + -0.359621 * t."OUT_8"  + -0.265848 * t."OUT_9" AS "OUT_90",
    0.434735 + 0.444290 * t."OUT_0"  + 0.160107 * t."OUT_1"  + 0.418019 * t."OUT_2"  + 0.217408 * t."OUT_3"  + -0.048371 * t."OUT_4"  + 0.241682 * t."OUT_5"  + 0.207194 * t."OUT_6"  + 0.130497 * t."OUT_7"  + 0.045765 * t."OUT_8"  + 0.257720 * t."OUT_9" AS "OUT_91",
    0.423242 + 0.227295 * t."OUT_0"  + 0.359424 * t."OUT_1"  + 0.129419 * t."OUT_2"  + -0.016341 * t."OUT_3"  + 0.335421 * t."OUT_4"  + -0.017578 * t."OUT_5"  + 0.371523 * t."OUT_6"  + -0.035760 * t."OUT_7"  + 0.075849 * t."OUT_8"  + 0.185759 * t."OUT_9" AS "OUT_92",
    0.051468 + -0.314595 * t."OUT_0"  + -0.382999 * t."OUT_1"  + -0.160668 * t."OUT_2"  + 0.130347 * t."OUT_3"  + -0.172250 * t."OUT_4"  + -0.270657 * t."OUT_5"  + -0.351545 * t."OUT_6"  + -0.413807 * t."OUT_7"  + -0.352564 * t."OUT_8"  + -0.176333 * t."OUT_9" AS "OUT_93",
    0.067678 + -0.296014 * t."OUT_0"  + -0.211284 * t."OUT_1"  + -0.390861 * t."OUT_2"  + -0.239460 * t."OUT_3"  + -0.052003 * t."OUT_4"  + 0.025862 * t."OUT_5"  + -0.197605 * t."OUT_6"  + -0.411734 * t."OUT_7"  + -0.262662 * t."OUT_8"  + -0.276348 * t."OUT_9" AS "OUT_94",
    0.139308 + 0.058104 * t."OUT_0"  + 0.464049 * t."OUT_1"  + 0.335935 * t."OUT_2"  + 0.341131 * t."OUT_3"  + 0.415601 * t."OUT_4"  + 0.452711 * t."OUT_5"  + 0.270564 * t."OUT_6"  + 0.496558 * t."OUT_7"  + 0.186719 * t."OUT_8"  + 0.094949 * t."OUT_9" AS "OUT_95",
    0.258938 + 0.274098 * t."OUT_0"  + -0.018579 * t."OUT_1"  + -0.008407 * t."OUT_2"  + 0.021421 * t."OUT_3"  + -0.042022 * t."OUT_4"  + 0.143680 * t."OUT_5"  + 0.047658 * t."OUT_6"  + 0.378593 * t."OUT_7"  + 0.315175 * t."OUT_8"  + 0.287743 * t."OUT_9" AS "OUT_96",
    0.280603 + 0.129984 * t."OUT_0"  + 0.071885 * t."OUT_1"  + 0.339668 * t."OUT_2"  + 0.124505 * t."OUT_3"  + 0.341948 * t."OUT_4"  + 0.276477 * t."OUT_5"  + 0.345543 * t."OUT_6"  + 0.417501 * t."OUT_7"  + 0.263333 * t."OUT_8"  + 0.276508 * t."OUT_9" AS "OUT_97",
    0.466974 + -0.323860 * t."OUT_0"  + -0.357176 * t."OUT_1"  + -0.220429 * t."OUT_2"  + -0.008328 * t."OUT_3"  + -0.029388 * t."OUT_4"  + -0.264882 * t."OUT_5"  + -0.364563 * t."OUT_6"  + -0.017030 * t."OUT_7"  + -0.028335 * t."OUT_8"  + -0.110734 * t."OUT_9" AS "OUT_98",
    0.355834 + 0.164105 * t."OUT_0"  + 0.078396 * t."OUT_1"  + 0.223372 * t."OUT_2"  + 0.043253 * t."OUT_3"  + 0.244234 * t."OUT_4"  + 0.118041 * t."OUT_5"  + 0.387269 * t."OUT_6"  + 0.297384 * t."OUT_7"  + 0.245264 * t."OUT_8"  + 0.066786 * t."OUT_9" AS "OUT_99"
   FROM "Input_Layer_BA" AS t
 ),
"Hidden_Layer_1_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7",
    CASE WHEN (t."OUT_8" > 0) THEN t."OUT_8" ELSE 0 END AS "OUT_8",
    CASE WHEN (t."OUT_9" > 0) THEN t."OUT_9" ELSE 0 END AS "OUT_9",
    CASE WHEN (t."OUT_10" > 0) THEN t."OUT_10" ELSE 0 END AS "OUT_10",
    CASE WHEN (t."OUT_11" > 0) THEN t."OUT_11" ELSE 0 END AS "OUT_11",
    CASE WHEN (t."OUT_12" > 0) THEN t."OUT_12" ELSE 0 END AS "OUT_12",
    CASE WHEN (t."OUT_13" > 0) THEN t."OUT_13" ELSE 0 END AS "OUT_13",
    CASE WHEN (t."OUT_14" > 0) THEN t."OUT_14" ELSE 0 END AS "OUT_14",
    CASE WHEN (t."OUT_15" > 0) THEN t."OUT_15" ELSE 0 END AS "OUT_15",
    CASE WHEN (t."OUT_16" > 0) THEN t."OUT_16" ELSE 0 END AS "OUT_16",
    CASE WHEN (t."OUT_17" > 0) THEN t."OUT_17" ELSE 0 END AS "OUT_17",
    CASE WHEN (t."OUT_18" > 0) THEN t."OUT_18" ELSE 0 END AS "OUT_18",
    CASE WHEN (t."OUT_19" > 0) THEN t."OUT_19" ELSE 0 END AS "OUT_19",
    CASE WHEN (t."OUT_20" > 0) THEN t."OUT_20" ELSE 0 END AS "OUT_20",
    CASE WHEN (t."OUT_21" > 0) THEN t."OUT_21" ELSE 0 END AS "OUT_21",
    CASE WHEN (t."OUT_22" > 0) THEN t."OUT_22" ELSE 0 END AS "OUT_22",
    CASE WHEN (t."OUT_23" > 0) THEN t."OUT_23" ELSE 0 END AS "OUT_23",
    CASE WHEN (t."OUT_24" > 0) THEN t."OUT_24" ELSE 0 END AS "OUT_24",
    CASE WHEN (t."OUT_25" > 0) THEN t."OUT_25" ELSE 0 END AS "OUT_25",
    CASE WHEN (t."OUT_26" > 0) THEN t."OUT_26" ELSE 0 END AS "OUT_26",
    CASE WHEN (t."OUT_27" > 0) THEN t."OUT_27" ELSE 0 END AS "OUT_27",
    CASE WHEN (t."OUT_28" > 0) THEN t."OUT_28" ELSE 0 END AS "OUT_28",
    CASE WHEN (t."OUT_29" > 0) THEN t."OUT_29" ELSE 0 END AS "OUT_29",
    CASE WHEN (t."OUT_30" > 0) THEN t."OUT_30" ELSE 0 END AS "OUT_30",
    CASE WHEN (t."OUT_31" > 0) THEN t."OUT_31" ELSE 0 END AS "OUT_31",
    CASE WHEN (t."OUT_32" > 0) THEN t."OUT_32" ELSE 0 END AS "OUT_32",
    CASE WHEN (t."OUT_33" > 0) THEN t."OUT_33" ELSE 0 END AS "OUT_33",
    CASE WHEN (t."OUT_34" > 0) THEN t."OUT_34" ELSE 0 END AS "OUT_34",
    CASE WHEN (t."OUT_35" > 0) THEN t."OUT_35" ELSE 0 END AS "OUT_35",
    CASE WHEN (t."OUT_36" > 0) THEN t."OUT_36" ELSE 0 END AS "OUT_36",
    CASE WHEN (t."OUT_37" > 0) THEN t."OUT_37" ELSE 0 END AS "OUT_37",
    CASE WHEN (t."OUT_38" > 0) THEN t."OUT_38" ELSE 0 END AS "OUT_38",
    CASE WHEN (t."OUT_39" > 0) THEN t."OUT_39" ELSE 0 END AS "OUT_39",
    CASE WHEN (t."OUT_40" > 0) THEN t."OUT_40" ELSE 0 END AS "OUT_40",
    CASE WHEN (t."OUT_41" > 0) THEN t."OUT_41" ELSE 0 END AS "OUT_41",
    CASE WHEN (t."OUT_42" > 0) THEN t."OUT_42" ELSE 0 END AS "OUT_42",
    CASE WHEN (t."OUT_43" > 0) THEN t."OUT_43" ELSE 0 END AS "OUT_43",
    CASE WHEN (t."OUT_44" > 0) THEN t."OUT_44" ELSE 0 END AS "OUT_44",
    CASE WHEN (t."OUT_45" > 0) THEN t."OUT_45" ELSE 0 END AS "OUT_45",
    CASE WHEN (t."OUT_46" > 0) THEN t."OUT_46" ELSE 0 END AS "OUT_46",
    CASE WHEN (t."OUT_47" > 0) THEN t."OUT_47" ELSE 0 END AS "OUT_47",
    CASE WHEN (t."OUT_48" > 0) THEN t."OUT_48" ELSE 0 END AS "OUT_48",
    CASE WHEN (t."OUT_49" > 0) THEN t."OUT_49" ELSE 0 END AS "OUT_49",
    CASE WHEN (t."OUT_50" > 0) THEN t."OUT_50" ELSE 0 END AS "OUT_50",
    CASE WHEN (t."OUT_51" > 0) THEN t."OUT_51" ELSE 0 END AS "OUT_51",
    CASE WHEN (t."OUT_52" > 0) THEN t."OUT_52" ELSE 0 END AS "OUT_52",
    CASE WHEN (t."OUT_53" > 0) THEN t."OUT_53" ELSE 0 END AS "OUT_53",
    CASE WHEN (t."OUT_54" > 0) THEN t."OUT_54" ELSE 0 END AS "OUT_54",
    CASE WHEN (t."OUT_55" > 0) THEN t."OUT_55" ELSE 0 END AS "OUT_55",
    CASE WHEN (t."OUT_56" > 0) THEN t."OUT_56" ELSE 0 END AS "OUT_56",
    CASE WHEN (t."OUT_57" > 0) THEN t."OUT_57" ELSE 0 END AS "OUT_57",
    CASE WHEN (t."OUT_58" > 0) THEN t."OUT_58" ELSE 0 END AS "OUT_58",
    CASE WHEN (t."OUT_59" > 0) THEN t."OUT_59" ELSE 0 END AS "OUT_59",
    CASE WHEN (t."OUT_60" > 0) THEN t."OUT_60" ELSE 0 END AS "OUT_60",
    CASE WHEN (t."OUT_61" > 0) THEN t."OUT_61" ELSE 0 END AS "OUT_61",
    CASE WHEN (t."OUT_62" > 0) THEN t."OUT_62" ELSE 0 END AS "OUT_62",
    CASE WHEN (t."OUT_63" > 0) THEN t."OUT_63" ELSE 0 END AS "OUT_63",
    CASE WHEN (t."OUT_64" > 0) THEN t."OUT_64" ELSE 0 END AS "OUT_64",
    CASE WHEN (t."OUT_65" > 0) THEN t."OUT_65" ELSE 0 END AS "OUT_65",
    CASE WHEN (t."OUT_66" > 0) THEN t."OUT_66" ELSE 0 END AS "OUT_66",
    CASE WHEN (t."OUT_67" > 0) THEN t."OUT_67" ELSE 0 END AS "OUT_67",
    CASE WHEN (t."OUT_68" > 0) THEN t."OUT_68" ELSE 0 END AS "OUT_68",
    CASE WHEN (t."OUT_69" > 0) THEN t."OUT_69" ELSE 0 END AS "OUT_69",
    CASE WHEN (t."OUT_70" > 0) THEN t."OUT_70" ELSE 0 END AS "OUT_70",
    CASE WHEN (t."OUT_71" > 0) THEN t."OUT_71" ELSE 0 END AS "OUT_71",
    CASE WHEN (t."OUT_72" > 0) THEN t."OUT_72" ELSE 0 END AS "OUT_72",
    CASE WHEN (t."OUT_73" > 0) THEN t."OUT_73" ELSE 0 END AS "OUT_73",
    CASE WHEN (t."OUT_74" > 0) THEN t."OUT_74" ELSE 0 END AS "OUT_74",
    CASE WHEN (t."OUT_75" > 0) THEN t."OUT_75" ELSE 0 END AS "OUT_75",
    CASE WHEN (t."OUT_76" > 0) THEN t."OUT_76" ELSE 0 END AS "OUT_76",
    CASE WHEN (t."OUT_77" > 0) THEN t."OUT_77" ELSE 0 END AS "OUT_77",
    CASE WHEN (t."OUT_78" > 0) THEN t."OUT_78" ELSE 0 END AS "OUT_78",
    CASE WHEN (t."OUT_79" > 0) THEN t."OUT_79" ELSE 0 END AS "OUT_79",
    CASE WHEN (t."OUT_80" > 0) THEN t."OUT_80" ELSE 0 END AS "OUT_80",
    CASE WHEN (t."OUT_81" > 0) THEN t."OUT_81" ELSE 0 END AS "OUT_81",
    CASE WHEN (t."OUT_82" > 0) THEN t."OUT_82" ELSE 0 END AS "OUT_82",
    CASE WHEN (t."OUT_83" > 0) THEN t."OUT_83" ELSE 0 END AS "OUT_83",
    CASE WHEN (t."OUT_84" > 0) THEN t."OUT_84" ELSE 0 END AS "OUT_84",
    CASE WHEN (t."OUT_85" > 0) THEN t."OUT_85" ELSE 0 END AS "OUT_85",
    CASE WHEN (t."OUT_86" > 0) THEN t."OUT_86" ELSE 0 END AS "OUT_86",
    CASE WHEN (t."OUT_87" > 0) THEN t."OUT_87" ELSE 0 END AS "OUT_87",
    CASE WHEN (t."OUT_88" > 0) THEN t."OUT_88" ELSE 0 END AS "OUT_88",
    CASE WHEN (t."OUT_89" > 0) THEN t."OUT_89" ELSE 0 END AS "OUT_89",
    CASE WHEN (t."OUT_90" > 0) THEN t."OUT_90" ELSE 0 END AS "OUT_90",
    CASE WHEN (t."OUT_91" > 0) THEN t."OUT_91" ELSE 0 END AS "OUT_91",
    CASE WHEN (t."OUT_92" > 0) THEN t."OUT_92" ELSE 0 END AS "OUT_92",
    CASE WHEN (t."OUT_93" > 0) THEN t."OUT_93" ELSE 0 END AS "OUT_93",
    CASE WHEN (t."OUT_94" > 0) THEN t."OUT_94" ELSE 0 END AS "OUT_94",
    CASE WHEN (t."OUT_95" > 0) THEN t."OUT_95" ELSE 0 END AS "OUT_95",
    CASE WHEN (t."OUT_96" > 0) THEN t."OUT_96" ELSE 0 END AS "OUT_96",
    CASE WHEN (t."OUT_97" > 0) THEN t."OUT_97" ELSE 0 END AS "OUT_97",
    CASE WHEN (t."OUT_98" > 0) THEN t."OUT_98" ELSE 0 END AS "OUT_98",
    CASE WHEN (t."OUT_99" > 0) THEN t."OUT_99" ELSE 0 END AS "OUT_99"
   FROM "Hidden_Layer_1_BA" AS t
 ),
"Output_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    0.090260 + 0.458021 * t."OUT_0"  + -0.309909 * t."OUT_1"  + -0.442831 * t."OUT_2"  + 0.321783 * t."OUT_3"  + -0.012616 * t."OUT_4"  + -0.417720 * t."OUT_5"  + -0.370014 * t."OUT_6"  + 0.458667 * t."OUT_7"  + -0.279297 * t."OUT_8"  + 0.382609 * t."OUT_9"  + -0.162713 * t."OUT_10"  + 0.472733 * t."OUT_11"  + -0.123372 * t."OUT_12"  + -0.272418 * t."OUT_13"  + 0.415524 * t."OUT_14"  + 0.292160 * t."OUT_15"  + 0.424926 * t."OUT_16"  + -0.485888 * t."OUT_17"  + -0.280672 * t."OUT_18"  + -0.324583 * t."OUT_19"  + 0.248128 * t."OUT_20"  + -0.435045 * t."OUT_21"  + 0.310673 * t."OUT_22"  + 0.351129 * t."OUT_23"  + -0.374951 * t."OUT_24"  + -0.245255 * t."OUT_25"  + -0.311951 * t."OUT_26"  + -0.200933 * t."OUT_27"  + 0.399620 * t."OUT_28"  + -0.500569 * t."OUT_29"  + -0.448673 * t."OUT_30"  + 0.373109 * t."OUT_31"  + -0.302304 * t."OUT_32"  + -0.225409 * t."OUT_33"  + -0.331229 * t."OUT_34"  + -0.323797 * t."OUT_35"  + -0.251623 * t."OUT_36"  + 0.264827 * t."OUT_37"  + -0.407230 * t."OUT_38"  + -0.235055 * t."OUT_39"  + -0.390705 * t."OUT_40"  + -0.478352 * t."OUT_41"  + 0.027533 * t."OUT_42"  + 0.366988 * t."OUT_43"  + -0.353980 * t."OUT_44"  + -0.284063 * t."OUT_45"  + -0.283262 * t."OUT_46"  + -0.138789 * t."OUT_47"  + 0.477182 * t."OUT_48"  + 0.449672 * t."OUT_49"  + -0.296971 * t."OUT_50"  + -0.282381 * t."OUT_51"  + 0.493949 * t."OUT_52"  + -0.325761 * t."OUT_53"  + 0.348287 * t."OUT_54"  + 0.223078 * t."OUT_55"  + -0.277294 * t."OUT_56"  + -0.326505 * t."OUT_57"  + 0.370572 * t."OUT_58"  + -0.384320 * t."OUT_59"  + -0.315178 * t."OUT_60"  + 0.290426 * t."OUT_61"  + 0.089498 * t."OUT_62"  + 0.329745 * t."OUT_63"  + -0.323041 * t."OUT_64"  + -0.022024 * t."OUT_65"  + 0.281584 * t."OUT_66"  + 0.411117 * t."OUT_67"  + 0.025237 * t."OUT_68"  + -0.007867 * t."OUT_69"  + -0.371165 * t."OUT_70"  + 0.266293 * t."OUT_71"  + 0.470107 * t."OUT_72"  + -0.039705 * t."OUT_73"  + -0.188321 * t."OUT_74"  + -0.213998 * t."OUT_75"  + 0.409467 * t."OUT_76"  + 0.055501 * t."OUT_77"  + -0.268085 * t."OUT_78"  + 0.273958 * t."OUT_79"  + 0.453889 * t."OUT_80"  + 0.128838 * t."OUT_81"  + 0.330860 * t."OUT_82"  + 0.442583 * t."OUT_83"  + 0.398614 * t."OUT_84"  + -0.332841 * t."OUT_85"  + -0.275664 * t."OUT_86"  + -0.315151 * t."OUT_87"  + -0.352975 * t."OUT_88"  + -0.272982 * t."OUT_89"  + -0.274603 * t."OUT_90"  + 0.311696 * t."OUT_91"  + 0.473340 * t."OUT_92"  + -0.298695 * t."OUT_93"  + -0.376426 * t."OUT_94"  + 0.264101 * t."OUT_95"  + 0.187416 * t."OUT_96"  + 0.223291 * t."OUT_97"  + -0.322338 * t."OUT_98"  + 0.462123 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
