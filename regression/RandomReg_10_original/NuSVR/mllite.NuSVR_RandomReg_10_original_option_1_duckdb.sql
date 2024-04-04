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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -0.442130 AS "sv_0", 1.306160 AS "sv_1", -1.825507 AS "sv_2", 1.100284 AS "sv_3", -1.437801 AS "sv_4", -0.649406 AS "sv_5", -1.264657 AS "sv_6", -1.279199 AS "sv_7", -0.018147 AS "sv_8", 0.535711 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 1.733387 AS "sv_0", 1.179237 AS "sv_1", -0.514713 AS "sv_2", -0.636198 AS "sv_3", 0.807121 AS "sv_4", 0.692319 AS "sv_5", 0.984058 AS "sv_6", 0.511947 AS "sv_7", 1.594198 AS "sv_8", 1.066414 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -2.943059 AS "sv_0", -0.309609 AS "sv_1", -0.072162 AS "sv_2", -2.262798 AS "sv_3", 0.736537 AS "sv_4", -2.108314 AS "sv_5", -1.447145 AS "sv_6", 0.637392 AS "sv_7", -0.173819 AS "sv_8", 0.036993 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", 0.825458 AS "sv_0", -0.253899 AS "sv_1", 1.441337 AS "sv_2", -0.471922 AS "sv_3", 0.031705 AS "sv_4", -0.948673 AS "sv_5", 1.379371 AS "sv_6", -0.031670 AS "sv_7", 1.729351 AS "sv_8", -1.127272 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -0.073077 AS "sv_0", 2.365016 AS "sv_1", 2.240391 AS "sv_2", -0.043197 AS "sv_3", 0.319032 AS "sv_4", 1.172624 AS "sv_5", 0.516884 AS "sv_6", 0.936275 AS "sv_7", 1.530299 AS "sv_8", 0.760551 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", 1.155000 AS "sv_0", 0.368091 AS "sv_1", 1.783268 AS "sv_2", 0.256439 AS "sv_3", 0.705056 AS "sv_4", 1.181344 AS "sv_5", -0.862248 AS "sv_6", -0.122000 AS "sv_7", 2.028982 AS "sv_8", 1.282302 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -0.954328 AS "sv_0", -1.585818 AS "sv_1", -1.063495 AS "sv_2", -1.275574 AS "sv_3", 0.925778 AS "sv_4", -0.721438 AS "sv_5", -0.067949 AS "sv_6", -0.734094 AS "sv_7", 0.737898 AS "sv_8", 0.452645 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", 1.464533 AS "sv_0", 0.651427 AS "sv_1", 0.950147 AS "sv_2", -0.236708 AS "sv_3", 0.470402 AS "sv_4", -0.753523 AS "sv_5", 0.561353 AS "sv_6", 0.848216 AS "sv_7", -1.274374 AS "sv_8", 1.578779 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -1.137054 AS "sv_0", -3.538038 AS "sv_1", 0.812275 AS "sv_2", -0.776307 AS "sv_3", -0.902616 AS "sv_4", 0.682718 AS "sv_5", -0.477214 AS "sv_6", 0.605484 AS "sv_7", -1.034789 AS "sv_8", -2.564028 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", 0.518680 AS "sv_0", 0.380992 AS "sv_1", 2.365259 AS "sv_2", 1.120010 AS "sv_3", 0.887410 AS "sv_4", 0.716484 AS "sv_5", 0.840450 AS "sv_6", -0.543144 AS "sv_7", 0.628204 AS "sv_8", -1.724641 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", -2.025332 AS "sv_0", 0.323725 AS "sv_1", 0.185556 AS "sv_2", -0.602472 AS "sv_3", 0.002524 AS "sv_4", 0.724881 AS "sv_5", -1.211576 AS "sv_6", -0.600575 AS "sv_7", -1.267722 AS "sv_8", -1.387488 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -1.000000 AS "coeff", -0.224744 AS "sv_0", -2.284432 AS "sv_1", -0.910936 AS "sv_2", -0.765917 AS "sv_3", -0.441337 AS "sv_4", -1.130983 AS "sv_5", -3.091728 AS "sv_6", -0.870308 AS "sv_7", 1.408795 AS "sv_8", 1.573483 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", -1.663189 AS "sv_0", -2.813570 AS "sv_1", -0.911721 AS "sv_2", 0.330630 AS "sv_3", -1.203015 AS "sv_4", 1.128912 AS "sv_5", -0.989711 AS "sv_6", 0.544166 AS "sv_7", 1.050769 AS "sv_8", 0.523799 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", 1.450914 AS "sv_0", 0.947874 AS "sv_1", -0.761664 AS "sv_2", -0.117374 AS "sv_3", -0.351617 AS "sv_4", 1.425146 AS "sv_5", 2.352939 AS "sv_6", 1.412653 AS "sv_7", -1.109344 AS "sv_8", -0.478533 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", -0.925916 AS "sv_0", -0.828297 AS "sv_1", -2.221536 AS "sv_2", 1.946958 AS "sv_3", 1.157058 AS "sv_4", 0.337418 AS "sv_5", -1.568780 AS "sv_6", -1.992355 AS "sv_7", 1.054428 AS "sv_8", 0.416875 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", 1.863660 AS "sv_0", 0.428986 AS "sv_1", -0.302269 AS "sv_2", 0.839360 AS "sv_3", -0.425435 AS "sv_4", 0.702640 AS "sv_5", 1.119942 AS "sv_6", 1.040506 AS "sv_7", 0.143258 AS "sv_8", 0.566889 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.000000 AS "coeff", 0.375851 AS "sv_0", 2.459666 AS "sv_1", 2.331842 AS "sv_2", 1.801873 AS "sv_3", 0.883058 AS "sv_4", -1.030525 AS "sv_5", 2.246760 AS "sv_6", -1.930692 AS "sv_7", 0.035418 AS "sv_8", -1.673652 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", -1.500866 AS "sv_0", -0.869898 AS "sv_1", -0.550293 AS "sv_2", -0.165722 AS "sv_3", -0.963508 AS "sv_4", -1.148148 AS "sv_5", -0.873892 AS "sv_6", -1.059741 AS "sv_7", -0.563514 AS "sv_8", 0.014577 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", 0.979486 AS "sv_0", 0.742885 AS "sv_1", 0.831373 AS "sv_2", -0.050735 AS "sv_3", 1.847543 AS "sv_4", -0.813007 AS "sv_5", 2.967019 AS "sv_6", -0.577383 AS "sv_7", 1.682021 AS "sv_8", 1.122447 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", -1.175223 AS "sv_0", -0.881866 AS "sv_1", -2.038557 AS "sv_2", 0.355348 AS "sv_3", 0.204878 AS "sv_4", -0.418047 AS "sv_5", 0.090892 AS "sv_6", 1.532446 AS "sv_7", -0.926707 AS "sv_8", 0.242572 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 0.199505 AS "coeff", 0.562861 AS "sv_0", -0.282435 AS "sv_1", 1.411885 AS "sv_2", -0.463856 AS "sv_3", 0.404580 AS "sv_4", 1.464486 AS "sv_5", 0.805772 AS "sv_6", 1.688969 AS "sv_7", 0.293860 AS "sv_8", -2.861903 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", 2.369399 AS "sv_0", 0.638177 AS "sv_1", -0.480462 AS "sv_2", 0.470591 AS "sv_3", 2.399159 AS "sv_4", -0.359512 AS "sv_5", 0.115684 AS "sv_6", 1.227851 AS "sv_7", 0.992660 AS "sv_8", 0.585489 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", 0.989313 AS "sv_0", 1.299769 AS "sv_1", 0.638123 AS "sv_2", -0.057128 AS "sv_3", 0.263195 AS "sv_4", -0.552314 AS "sv_5", 2.397088 AS "sv_6", 0.764131 AS "sv_7", 1.959339 AS "sv_8", 0.016881 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", -0.881164 AS "sv_0", -0.243344 AS "sv_1", -0.932318 AS "sv_2", -1.238473 AS "sv_3", 0.334930 AS "sv_4", 0.324729 AS "sv_5", -0.905650 AS "sv_6", -1.003999 AS "sv_7", -0.104416 AS "sv_8", -0.079766 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", 1.778479 AS "sv_0", -0.107321 AS "sv_1", 0.499717 AS "sv_2", 1.012944 AS "sv_3", 3.581633 AS "sv_4", 0.529848 AS "sv_5", 2.348272 AS "sv_6", 0.759198 AS "sv_7", 0.891340 AS "sv_8", 0.160584 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", -1.000000 AS "coeff", -0.053547 AS "sv_0", -1.030065 AS "sv_1", -1.674985 AS "sv_2", -0.652352 AS "sv_3", -0.152519 AS "sv_4", -0.138631 AS "sv_5", -1.005193 AS "sv_6", -1.103286 AS "sv_7", 0.548890 AS "sv_8", 0.329599 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -0.199505 AS "coeff", -1.907118 AS "sv_0", -1.301630 AS "sv_1", -1.286405 AS "sv_2", 0.278706 AS "sv_3", -2.650542 AS "sv_4", -1.882334 AS "sv_5", 0.644878 AS "sv_6", 0.536429 AS "sv_7", 1.666265 AS "sv_8", 1.740341 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", -0.200071 AS "sv_0", 0.129612 AS "sv_1", -0.790449 AS "sv_2", -0.606438 AS "sv_3", -0.807512 AS "sv_4", 0.021321 AS "sv_5", -1.727536 AS "sv_6", -0.607904 AS "sv_7", -0.210802 AS "sv_8", -1.598145 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", 1.000000 AS "coeff", 1.825200 AS "sv_0", 0.077000 AS "sv_1", -0.317323 AS "sv_2", 0.982492 AS "sv_3", -1.195058 AS "sv_4", -0.290629 AS "sv_5", 0.997010 AS "sv_6", 1.428728 AS "sv_7", 0.921160 AS "sv_8", 0.195723 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.000000 AS "coeff", 2.433735 AS "sv_0", -0.224022 AS "sv_1", 0.946601 AS "sv_2", -0.239396 AS "sv_3", -1.001844 AS "sv_4", 1.881842 AS "sv_5", 0.828645 AS "sv_6", 0.659906 AS "sv_7", 0.532215 AS "sv_8", 0.823993 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -0.652742 AS "sv_0", -2.617394 AS "sv_1", 0.521494 AS "sv_2", -0.042029 AS "sv_3", 0.987763 AS "sv_4", -2.192085 AS "sv_5", -1.255113 AS "sv_6", 0.402326 AS "sv_7", -0.466969 AS "sv_8", -1.275339 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.000000 AS "coeff", 0.780117 AS "sv_0", -2.529522 AS "sv_1", -1.406706 AS "sv_2", -1.689343 AS "sv_3", -0.058462 AS "sv_4", 0.106278 AS "sv_5", -1.358300 AS "sv_6", -0.051814 AS "sv_7", 0.549110 AS "sv_8", 0.026033 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", -0.566777 AS "sv_0", -0.107356 AS "sv_1", 1.701696 AS "sv_2", 0.609468 AS "sv_3", 0.495924 AS "sv_4", -0.037368 AS "sv_5", 1.983282 AS "sv_6", 1.803535 AS "sv_7", 0.044597 AS "sv_8", 1.139575 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.000000 AS "coeff", 2.259198 AS "sv_0", 0.660802 AS "sv_1", -0.359369 AS "sv_2", 0.254461 AS "sv_3", 0.338733 AS "sv_4", 0.999390 AS "sv_5", 0.896915 AS "sv_6", 0.337849 AS "sv_7", 1.643787 AS "sv_8", 0.393010 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", -3.011217 AS "sv_0", -0.237807 AS "sv_1", -2.809668 AS "sv_2", 0.002221 AS "sv_3", 0.782830 AS "sv_4", 1.331153 AS "sv_5", 1.409284 AS "sv_6", 0.359371 AS "sv_7", -1.268436 AS "sv_8", 0.620385 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 1.000000 AS "coeff", 1.592630 AS "sv_0", -0.066335 AS "sv_1", 1.591133 AS "sv_2", 0.520360 AS "sv_3", 0.648423 AS "sv_4", 0.415493 AS "sv_5", 0.318371 AS "sv_6", -0.244695 AS "sv_7", 0.296384 AS "sv_8", 0.741941 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", 0.982460 AS "sv_0", -2.571504 AS "sv_1", -1.367336 AS "sv_2", -0.268029 AS "sv_3", 2.087631 AS "sv_4", -1.005192 AS "sv_5", -2.533357 AS "sv_6", -0.726558 AS "sv_7", 1.326329 AS "sv_8", 1.263514 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.000000 AS "coeff", -1.036888 AS "sv_0", -0.024599 AS "sv_1", -1.392098 AS "sv_2", -2.101363 AS "sv_3", -0.440851 AS "sv_4", -0.508293 AS "sv_5", 0.315350 AS "sv_6", -1.595709 AS "sv_7", 0.141595 AS "sv_8", -1.339787 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.000000 AS "coeff", -0.870149 AS "sv_0", -0.752639 AS "sv_1", -0.214174 AS "sv_2", 1.249193 AS "sv_3", -0.937758 AS "sv_4", 0.148611 AS "sv_5", -0.875522 AS "sv_6", -0.961511 AS "sv_7", -1.062297 AS "sv_8", -0.739897 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.000000 AS "coeff", -0.956213 AS "sv_0", -1.712332 AS "sv_1", 0.158220 AS "sv_2", 0.473843 AS "sv_3", -1.513727 AS "sv_4", 0.699988 AS "sv_5", -1.415951 AS "sv_6", -2.027736 AS "sv_7", 0.160639 AS "sv_8", 0.843978 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", 2.484432 AS "sv_0", -0.599458 AS "sv_1", 0.119987 AS "sv_2", 0.825037 AS "sv_3", -2.195806 AS "sv_4", -1.082385 AS "sv_5", 1.976712 AS "sv_6", -0.208409 AS "sv_7", 1.452886 AS "sv_8", -0.901476 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "coeff", 0.688381 AS "sv_0", 0.502706 AS "sv_1", 1.565170 AS "sv_2", -0.803346 AS "sv_3", 2.194218 AS "sv_4", -1.093374 AS "sv_5", 1.993191 AS "sv_6", 1.369458 AS "sv_7", 0.664299 AS "sv_8", 1.399513 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -1.000000 AS "coeff", -0.556619 AS "sv_0", -0.453353 AS "sv_1", -0.954313 AS "sv_2", -0.027242 AS "sv_3", 0.410704 AS "sv_4", -2.106026 AS "sv_5", -0.979750 AS "sv_6", 1.118346 AS "sv_7", -1.917618 AS "sv_8", -0.429714 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", 0.764710 AS "sv_0", -0.131963 AS "sv_1", 2.929883 AS "sv_2", 0.541185 AS "sv_3", 0.398369 AS "sv_4", 0.432224 AS "sv_5", -0.203324 AS "sv_6", -0.310808 AS "sv_7", -0.580665 AS "sv_8", 1.869243 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", 1.000000 AS "coeff", 1.615264 AS "sv_0", 1.280778 AS "sv_1", 2.168024 AS "sv_2", 0.167350 AS "sv_3", 1.848855 AS "sv_4", -0.371764 AS "sv_5", 0.448637 AS "sv_6", -0.141452 AS "sv_7", -1.229369 AS "sv_8", -1.308475 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", 0.951369 AS "sv_0", 0.000628 AS "sv_1", 2.025298 AS "sv_2", 2.396950 AS "sv_3", 1.078692 AS "sv_4", -1.270538 AS "sv_5", 1.671911 AS "sv_6", 0.644695 AS "sv_7", -0.525940 AS "sv_8", -0.173784 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", -0.089211 AS "sv_0", 0.312728 AS "sv_1", 1.315380 AS "sv_2", 1.087081 AS "sv_3", -1.489479 AS "sv_4", 0.281810 AS "sv_5", 3.358608 AS "sv_6", 0.065406 AS "sv_7", -1.755447 AS "sv_8", -1.047703 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", 1.000000 AS "coeff", -0.295064 AS "sv_0", 1.194803 AS "sv_1", 1.861863 AS "sv_2", 1.707372 AS "sv_3", 0.633005 AS "sv_4", -0.225227 AS "sv_5", 2.782754 AS "sv_6", 0.944220 AS "sv_7", 1.771623 AS "sv_8", 0.845925 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.000000 AS "coeff", -0.962087 AS "sv_0", -0.811300 AS "sv_1", -0.860895 AS "sv_2", -0.618786 AS "sv_3", 1.154862 AS "sv_4", -0.109392 AS "sv_5", -1.451841 AS "sv_6", -1.351123 AS "sv_7", -0.609824 AS "sv_8", 1.677988 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", 0.718688 AS "sv_0", 2.345176 AS "sv_1", 1.140082 AS "sv_2", -0.255796 AS "sv_3", -0.541699 AS "sv_4", -0.267152 AS "sv_5", 0.477413 AS "sv_6", 0.211695 AS "sv_7", 1.671833 AS "sv_8", 0.021005 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", -1.000000 AS "coeff", -2.540307 AS "sv_0", 0.615175 AS "sv_1", -0.852460 AS "sv_2", 0.312049 AS "sv_3", 0.384321 AS "sv_4", -0.691277 AS "sv_5", -1.518534 AS "sv_6", -0.496941 AS "sv_7", -0.073622 AS "sv_8", 0.594182 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.000000 AS "coeff", -0.936137 AS "sv_0", -0.536943 AS "sv_1", 0.395361 AS "sv_2", 0.985637 AS "sv_3", 0.651706 AS "sv_4", -1.064311 AS "sv_5", -1.857782 AS "sv_6", -3.020075 AS "sv_7", -0.219744 AS "sv_8", -0.860749 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", -0.300907 AS "sv_0", 0.092844 AS "sv_1", -1.798404 AS "sv_2", 0.844823 AS "sv_3", 1.148211 AS "sv_4", -0.411208 AS "sv_5", -2.001013 AS "sv_6", -0.332793 AS "sv_7", -1.111466 AS "sv_8", 2.101292 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 1.000000 AS "coeff", 0.407709 AS "sv_0", 1.731959 AS "sv_1", 2.029409 AS "sv_2", 0.944727 AS "sv_3", 0.109421 AS "sv_4", 0.459821 AS "sv_5", 0.789806 AS "sv_6", -0.526205 AS "sv_7", -0.132555 AS "sv_8", -1.108467 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", -0.260382 AS "sv_0", 0.402392 AS "sv_1", -0.670571 AS "sv_2", 1.286237 AS "sv_3", -0.656967 AS "sv_4", -0.619251 AS "sv_5", -1.976581 AS "sv_6", -1.946761 AS "sv_7", -0.154320 AS "sv_8", -0.966909 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", 1.000000 AS "coeff", 2.403274 AS "sv_0", 0.375416 AS "sv_1", 1.439453 AS "sv_2", -0.577537 AS "sv_3", 0.724526 AS "sv_4", 1.642020 AS "sv_5", 0.606415 AS "sv_6", 1.273062 AS "sv_7", 0.348294 AS "sv_8", -1.197603 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", -1.000000 AS "coeff", -1.111266 AS "sv_0", -0.153776 AS "sv_1", -1.654098 AS "sv_2", -0.529378 AS "sv_3", -2.084757 AS "sv_4", -1.174514 AS "sv_5", 0.751192 AS "sv_6", 0.452218 AS "sv_7", -1.975403 AS "sv_8", -2.083950 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", 1.000000 AS "coeff", 1.175316 AS "sv_0", 1.143993 AS "sv_1", 0.509351 AS "sv_2", -1.513114 AS "sv_3", -1.268318 AS "sv_4", -0.097908 AS "sv_5", 1.123548 AS "sv_6", -0.089929 AS "sv_7", 1.088150 AS "sv_8", 0.983894 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.000000 AS "coeff", 2.343416 AS "sv_0", -0.735123 AS "sv_1", 0.447677 AS "sv_2", 0.502120 AS "sv_3", -0.541651 AS "sv_4", 1.373434 AS "sv_5", 0.517967 AS "sv_6", 2.320517 AS "sv_7", 1.141550 AS "sv_8", 0.093994 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", -1.000000 AS "coeff", -1.947352 AS "sv_0", -2.018981 AS "sv_1", 1.184137 AS "sv_2", 0.485836 AS "sv_3", 0.465139 AS "sv_4", 0.970476 AS "sv_5", -1.163903 AS "sv_6", -0.987720 AS "sv_7", -0.514929 AS "sv_8", -0.335135 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", 1.000000 AS "coeff", 2.545558 AS "sv_0", -1.035147 AS "sv_1", 0.676989 AS "sv_2", -1.971733 AS "sv_3", 1.259160 AS "sv_4", 0.399074 AS "sv_5", -0.244604 AS "sv_6", 1.212793 AS "sv_7", 1.292298 AS "sv_8", 0.082319 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", 1.000000 AS "coeff", 2.085742 AS "sv_0", -0.077859 AS "sv_1", 1.034243 AS "sv_2", 1.022815 AS "sv_3", 0.661668 AS "sv_4", -0.059037 AS "sv_5", 0.317099 AS "sv_6", -0.363866 AS "sv_7", 0.742476 AS "sv_8", 0.106406 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.000000 AS "coeff", -0.703814 AS "sv_0", 0.251875 AS "sv_1", -2.362978 AS "sv_2", 0.039605 AS "sv_3", 1.193555 AS "sv_4", 0.743149 AS "sv_5", -1.219738 AS "sv_6", 0.124024 AS "sv_7", 0.122275 AS "sv_8", -0.108237 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", 1.000000 AS "coeff", 0.360035 AS "sv_0", 0.961168 AS "sv_1", 1.625137 AS "sv_2", 0.578241 AS "sv_3", 0.977092 AS "sv_4", 1.422527 AS "sv_5", 0.586072 AS "sv_6", -1.315631 AS "sv_7", 1.201188 AS "sv_8", 0.299197 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -1.000000 AS "coeff", -1.250472 AS "sv_0", 0.721469 AS "sv_1", -0.894728 AS "sv_2", -0.447602 AS "sv_3", -1.164912 AS "sv_4", -0.198227 AS "sv_5", -0.980836 AS "sv_6", -2.751642 AS "sv_7", 0.614198 AS "sv_8", -0.365722 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", -1.000000 AS "coeff", -1.184211 AS "sv_0", -0.634799 AS "sv_1", -1.380966 AS "sv_2", -0.328946 AS "sv_3", 0.377072 AS "sv_4", 0.604137 AS "sv_5", -0.828253 AS "sv_6", -0.153512 AS "sv_7", 0.466901 AS "sv_8", -0.335111 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", -1.000000 AS "coeff", -0.944721 AS "sv_0", -0.705839 AS "sv_1", -1.267305 AS "sv_2", -0.798004 AS "sv_3", 0.542707 AS "sv_4", -0.521378 AS "sv_5", -0.652587 AS "sv_6", 0.119504 AS "sv_7", -2.243778 AS "sv_8", 0.564853 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 1.000000 AS "coeff", 2.499587 AS "sv_0", -0.341454 AS "sv_1", 0.891432 AS "sv_2", 1.111856 AS "sv_3", 1.535207 AS "sv_4", -0.643536 AS "sv_5", 0.520371 AS "sv_6", -1.605136 AS "sv_7", -0.505035 AS "sv_8", 1.338524 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", 1.000000 AS "coeff", 0.911344 AS "sv_0", -0.527426 AS "sv_1", 1.737557 AS "sv_2", 1.509615 AS "sv_3", 0.201077 AS "sv_4", 0.054897 AS "sv_5", 1.065277 AS "sv_6", -0.456734 AS "sv_7", -0.899949 AS "sv_8", 1.417506 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", 1.000000 AS "coeff", 1.310308 AS "sv_0", 0.643712 AS "sv_1", -0.298097 AS "sv_2", -1.490154 AS "sv_3", -0.054971 AS "sv_4", -0.032850 AS "sv_5", 1.903817 AS "sv_6", 1.941130 AS "sv_7", -0.032541 AS "sv_8", 1.639231 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -1.000000 AS "coeff", -2.260808 AS "sv_0", -0.119895 AS "sv_1", -1.663172 AS "sv_2", -2.338571 AS "sv_3", 0.234978 AS "sv_4", -2.378800 AS "sv_5", 0.157106 AS "sv_6", 1.506380 AS "sv_7", 0.517179 AS "sv_8", 1.077324 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", 1.000000 AS "coeff", 1.186660 AS "sv_0", 1.599328 AS "sv_1", -1.243709 AS "sv_2", 1.788183 AS "sv_3", 0.095531 AS "sv_4", 0.416695 AS "sv_5", 1.718346 AS "sv_6", 1.382237 AS "sv_7", -1.246410 AS "sv_8", 0.708004 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", -1.000000 AS "coeff", -2.405949 AS "sv_0", -0.596539 AS "sv_1", -1.128497 AS "sv_2", -0.106956 AS "sv_3", 1.527979 AS "sv_4", 1.407338 AS "sv_5", -0.548176 AS "sv_6", -1.147983 AS "sv_7", 0.530755 AS "sv_8", -1.229026 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", -1.000000 AS "coeff", -1.069586 AS "sv_0", 0.362805 AS "sv_1", -2.700701 AS "sv_2", 0.102727 AS "sv_3", 1.564275 AS "sv_4", 0.936418 AS "sv_5", 0.043956 AS "sv_6", -0.780822 AS "sv_7", -3.225186 AS "sv_8", 0.972507 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", 1.000000 AS "coeff", 2.476408 AS "sv_0", -0.318056 AS "sv_1", 0.964773 AS "sv_2", 1.458097 AS "sv_3", 0.313242 AS "sv_4", -0.669003 AS "sv_5", 0.094099 AS "sv_6", -1.013339 AS "sv_7", 1.709303 AS "sv_8", -0.311664 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", -1.000000 AS "coeff", -1.108115 AS "sv_0", -1.340703 AS "sv_1", -1.302302 AS "sv_2", -0.030627 AS "sv_3", 0.006635 AS "sv_4", -1.653387 AS "sv_5", -1.544680 AS "sv_6", 2.069592 AS "sv_7", -1.092541 AS "sv_8", -0.866182 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", -1.000000 AS "coeff", -1.311457 AS "sv_0", -1.061103 AS "sv_1", -0.365120 AS "sv_2", 0.276259 AS "sv_3", 0.280019 AS "sv_4", 0.855360 AS "sv_5", -0.769762 AS "sv_6", 0.012511 AS "sv_7", -0.557793 AS "sv_8", -1.045207 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", -1.000000 AS "coeff", -2.042984 AS "sv_0", -0.153581 AS "sv_1", -0.322155 AS "sv_2", 0.859883 AS "sv_3", 0.601341 AS "sv_4", -1.548514 AS "sv_5", -1.304466 AS "sv_6", -1.429301 AS "sv_7", -1.779904 AS "sv_8", 0.493898 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", -1.000000 AS "coeff", -1.700999 AS "sv_0", -1.245986 AS "sv_1", -0.797353 AS "sv_2", -0.003768 AS "sv_3", 0.299899 AS "sv_4", -1.131430 AS "sv_5", -0.597494 AS "sv_6", -0.864654 AS "sv_7", 0.602584 AS "sv_8", -0.224870 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", 1.000000 AS "coeff", 1.480217 AS "sv_0", -1.023331 AS "sv_1", 0.643280 AS "sv_2", -0.515943 AS "sv_3", 0.106809 AS "sv_4", -0.578145 AS "sv_5", 1.378079 AS "sv_6", -0.326721 AS "sv_7", 1.884428 AS "sv_8", 0.645366 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", -1.000000 AS "coeff", -1.814966 AS "sv_0", -1.017369 AS "sv_1", -1.509211 AS "sv_2", 1.797545 AS "sv_3", 0.162336 AS "sv_4", -0.159894 AS "sv_5", -0.034774 AS "sv_6", 1.044167 AS "sv_7", 1.372308 AS "sv_8", -0.697183 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 1.000000 AS "coeff", 2.642873 AS "sv_0", 1.230702 AS "sv_1", -0.509412 AS "sv_2", 0.194338 AS "sv_3", 2.022251 AS "sv_4", -0.165529 AS "sv_5", 0.011059 AS "sv_6", 0.436631 AS "sv_7", -0.187573 AS "sv_8", 1.671782 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", 1.000000 AS "coeff", -0.504908 AS "sv_0", 0.108194 AS "sv_1", 0.195970 AS "sv_2", 1.386891 AS "sv_3", -2.186729 AS "sv_4", 0.763806 AS "sv_5", 1.985751 AS "sv_6", 1.384068 AS "sv_7", 3.234051 AS "sv_8", -1.231766 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", -1.000000 AS "coeff", -0.004950 AS "sv_0", -0.234435 AS "sv_1", -0.975787 AS "sv_2", 1.179418 AS "sv_3", 1.154551 AS "sv_4", -2.583064 AS "sv_5", -1.397669 AS "sv_6", -1.825296 AS "sv_7", -0.750347 AS "sv_8", -0.159443 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", -1.000000 AS "coeff", -1.315455 AS "sv_0", -1.120010 AS "sv_1", 0.034691 AS "sv_2", -1.365093 AS "sv_3", -1.475222 AS "sv_4", -0.127037 AS "sv_5", -0.701324 AS "sv_6", -0.408543 AS "sv_7", -1.058238 AS "sv_8", 0.009710 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", 1.000000 AS "coeff", 1.743158 AS "sv_0", 1.317899 AS "sv_1", 0.181486 AS "sv_2", 0.026531 AS "sv_3", 0.076838 AS "sv_4", -0.564894 AS "sv_5", 0.230460 AS "sv_6", 1.545986 AS "sv_7", 0.017039 AS "sv_8", 1.023693 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -1.000000 AS "coeff", -2.144883 AS "sv_0", -1.507830 AS "sv_1", -1.341351 AS "sv_2", 1.197483 AS "sv_3", 0.308254 AS "sv_4", -0.157084 AS "sv_5", 0.051776 AS "sv_6", 0.047125 AS "sv_7", 1.119896 AS "sv_8", 1.004277 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", -1.000000 AS "coeff", -1.176722 AS "sv_0", -0.837514 AS "sv_1", -0.243805 AS "sv_2", 1.178377 AS "sv_3", 2.284151 AS "sv_4", 0.566042 AS "sv_5", -2.447528 AS "sv_6", -0.893038 AS "sv_7", -0.304116 AS "sv_8", -0.860267 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", -1.000000 AS "coeff", -1.641764 AS "sv_0", 0.589323 AS "sv_1", 0.780461 AS "sv_2", -0.187130 AS "sv_3", -1.298077 AS "sv_4", -0.941295 AS "sv_5", -2.062099 AS "sv_6", 0.313759 AS "sv_7", -1.425675 AS "sv_8", -0.168322 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", -1.000000 AS "coeff", -0.219555 AS "sv_0", -0.642240 AS "sv_1", -1.664284 AS "sv_2", -0.318518 AS "sv_3", -0.399825 AS "sv_4", -1.013035 AS "sv_5", -2.511321 AS "sv_6", 1.036544 AS "sv_7", 1.729494 AS "sv_8", 2.465637 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", -1.000000 AS "coeff", -1.416498 AS "sv_0", 0.180083 AS "sv_1", 0.295014 AS "sv_2", -0.214401 AS "sv_3", 1.158622 AS "sv_4", -1.504101 AS "sv_5", -1.443197 AS "sv_6", -0.099821 AS "sv_7", -1.138699 AS "sv_8", 0.258607 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", 1.000000 AS "coeff", 2.109906 AS "sv_0", -0.576495 AS "sv_1", 2.042926 AS "sv_2", -1.153852 AS "sv_3", 0.140970 AS "sv_4", -1.563481 AS "sv_5", 0.760980 AS "sv_6", -1.061729 AS "sv_7", 1.494342 AS "sv_8", -1.239860 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", -1.000000 AS "coeff", -0.985507 AS "sv_0", 0.105090 AS "sv_1", -0.445873 AS "sv_2", -0.058483 AS "sv_3", 0.040686 AS "sv_4", -0.502496 AS "sv_5", -1.377617 AS "sv_6", -0.086484 AS "sv_7", -1.571705 AS "sv_8", -0.686913 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", 1.000000 AS "coeff", 0.044631 AS "sv_0", 2.155526 AS "sv_1", 0.642316 AS "sv_2", 0.705620 AS "sv_3", 0.160355 AS "sv_4", -0.176116 AS "sv_5", 0.774960 AS "sv_6", -0.079417 AS "sv_7", 1.061922 AS "sv_8", 1.607866 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", -1.000000 AS "coeff", -1.392295 AS "sv_0", -0.260961 AS "sv_1", 0.609822 AS "sv_2", 0.474760 AS "sv_3", -2.024612 AS "sv_4", 0.478127 AS "sv_5", -1.923547 AS "sv_6", 0.775559 AS "sv_7", -1.292584 AS "sv_8", -1.161074 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", 1.000000 AS "coeff", -0.212505 AS "sv_0", -0.586422 AS "sv_1", 2.226058 AS "sv_2", 0.868139 AS "sv_3", -1.346237 AS "sv_4", 2.132885 AS "sv_5", 1.572700 AS "sv_6", 0.868312 AS "sv_7", -0.504781 AS "sv_8", -1.162376 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", 1.000000 AS "coeff", 1.266029 AS "sv_0", 0.259310 AS "sv_1", 0.886195 AS "sv_2", 0.536500 AS "sv_3", -0.932592 AS "sv_4", 0.147534 AS "sv_5", 2.691874 AS "sv_6", 1.536557 AS "sv_7", -1.922800 AS "sv_8", 0.299898 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 1.000000 AS "coeff", 2.363506 AS "sv_0", 0.236337 AS "sv_1", -0.370845 AS "sv_2", -0.453299 AS "sv_3", 1.953913 AS "sv_4", 0.413981 AS "sv_5", 0.443428 AS "sv_6", -0.066572 AS "sv_7", 0.519357 AS "sv_8", 0.418451 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", -1.000000 AS "coeff", -1.728381 AS "sv_0", -0.487988 AS "sv_1", -0.490168 AS "sv_2", 0.121958 AS "sv_3", 1.685224 AS "sv_4", -0.955968 AS "sv_5", -2.383078 AS "sv_6", -1.155783 AS "sv_7", 0.862512 AS "sv_8", -0.962170 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", 1.000000 AS "coeff", -0.102816 AS "sv_0", 0.493476 AS "sv_1", 2.891259 AS "sv_2", -1.522470 AS "sv_3", -0.416888 AS "sv_4", -0.885373 AS "sv_5", 0.816663 AS "sv_6", 1.028344 AS "sv_7", -0.367238 AS "sv_8", -0.252048 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 1.000000 AS "coeff", 0.633331 AS "sv_0", -0.491662 AS "sv_1", 1.202712 AS "sv_2", 1.286438 AS "sv_3", 0.522782 AS "sv_4", -1.325794 AS "sv_5", 1.753920 AS "sv_6", 1.384409 AS "sv_7", 1.091936 AS "sv_8", 2.598730 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 1.000000 AS "coeff", 1.012909 AS "sv_0", 0.320479 AS "sv_1", 1.299863 AS "sv_2", -0.587878 AS "sv_3", 1.041895 AS "sv_4", 2.205083 AS "sv_5", 0.186275 AS "sv_6", 0.557433 AS "sv_7", -0.069638 AS "sv_8", -0.416815 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", -1.000000 AS "coeff", -1.769224 AS "sv_0", -1.166158 AS "sv_1", -0.095046 AS "sv_2", 0.337465 AS "sv_3", -0.252757 AS "sv_4", -0.331412 AS "sv_5", -0.408593 AS "sv_6", 0.186620 AS "sv_7", -0.383287 AS "sv_8", -0.100959 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 1.000000 AS "coeff", 0.663299 AS "sv_0", 1.255730 AS "sv_1", 0.379886 AS "sv_2", -0.807848 AS "sv_3", 1.146639 AS "sv_4", 0.376247 AS "sv_5", 1.417193 AS "sv_6", -0.886222 AS "sv_7", 1.647446 AS "sv_8", -0.746354 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -4.945747 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.098567 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
