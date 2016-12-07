//Maya ASCII 2016 scene
//Name: PreDefecationTrack1.ma
//Last modified: Wed, Dec 07, 2016 05:24:29 AM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "16AB6A0F-4804-0530-36AD-A0A2A42E3F11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 36.865607225090258 12.763548695768414 45.646874710255105 ;
	setAttr ".r" -type "double3" -372.3383527311471 -669.3999999999096 -1.2527185220005679e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D1849694-4136-0344-1B41-7599E0C99F8E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 63.223948402939037;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -10.861238366270811 -0.74641991833054888 6.4436017651897544 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7A83B44B-401A-09B6-D308-4086357C4D34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FDAEF6F5-47D1-4D52-C13F-368A2B779232";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B9366954-43C3-2514-0E19-44826A634B11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "ACC6A87B-4204-86AD-FB7E-8184FC1639C4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7914825A-413C-38CC-F10F-E89FB112A846";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "26E203E1-4376-CE2F-5079-858B07C13079";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "StraightShort:pCube1";
	rename -uid "827ED7C7-44FC-7D64-1407-64ADD7222B0C";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -0.67861086919603508 -0.19409162977540362 0.40056631107100316 ;
	setAttr ".sp" -type "double3" -0.67861086919603508 -0.19409162977540362 0.40056631107100316 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "StraightShort:pCube1Shape" -p "StraightShort:pCube1";
	rename -uid "1807B979-4052-8F8A-5DF5-D3BB8E53235B";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 9 "f[7]" "f[11]" "f[13]" "f[15]" "f[18]" "f[20]" "f[22]" "f[54:60]" "f[69:75]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 16 "f[2]" "f[4]" "f[6]" "f[8]" "f[10]" "f[12]" "f[14]" "f[16:17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[34:35]" "f[37:48]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 5 "f[0:1]" "f[30:31]" "f[33]" "f[49:50]" "f[64]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 10 "f[3]" "f[5]" "f[9]" "f[24]" "f[26]" "f[28]" "f[51:53]" "f[61:63]" "f[66:68]" "f[76:78]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 2 "f[32]" "f[65]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[36]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49958225339651108 0.3447968065738678 ;
	setAttr ".uvst[0].uvsn" -type "string" "UniformUVs";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.87221813 0.44548076
		 0.87507218 0.42816445 0.87220812 0.44569498 0.85009408 0.44491869 0.85065663 0.42755598
		 0.87514091 0.42792064 0.87218934 0.44588691 0.85060823 0.42730305 0.87518752 0.42771634
		 0.87212276 0.44629073 0.84998953 0.44530317 0.85002607 0.44511828 0.85058665 0.42709163
		 0.87525511 0.42731163 0.87209582 0.44649401 0.8499763 0.44570756 0.85059971 0.42668691
		 0.87529659 0.42710152 0.87145722 0.45038348 0.84995472 0.44590786 0.85059255 0.42647338
		 0.87593424 0.42322719 0.87142015 0.4505744 0.84983015 0.44980323 0.85071576 0.42257801
		 0.87595677 0.42304426 0.87096477 0.45337334 0.84983933 0.4499996 0.85073549 0.42239502
		 0.8764149 0.42025152 0.84975159 0.45281199 0.85081953 0.41958264 0.12425834 0.36566949
		 0.12712574 0.38305861 0.12422416 0.36547288 0.14850461 0.36507481 0.14906304 0.38250309
		 0.12715641 0.38324991 0.12419146 0.36527562 0.14849803 0.36488107 0.14906922 0.38269651
		 0.12719017 0.3834497 0.12412256 0.36486855 0.14849158 0.36468336 0.14907582 0.38289455
		 0.12725726 0.3838554 0.12408727 0.36466059 0.14847809 0.36427847 0.1490888 0.38329917
		 0.1272901 0.38406023 0.12344006 0.36077252 0.14847113 0.36407137 0.14909534 0.38350633
		 0.1279256 0.38794526 0.1234093 0.36058494 0.14835119 0.36017632 0.1492186 0.38740152
		 0.12795576 0.38813269 0.12296253 0.35780796 0.14834498 0.35998648 0.14922571 0.38762867
		 0.12840375 0.39091817 0.14826202 0.3571741 0.14930962 0.39040369 0.47598678 0.62950408
		 0.4746592 0.62940782 0.47921109 0.65040994 0.4779073 0.650621 0.70566565 0.016848564
		 0.70605254 0.016858608 0.70247138 0.039040655 0.70207155 0.038972616 0.57895315 0.067389578
		 0.5776276 0.06749481 0.57434988 0.092984974 0.57303852 0.092794269 0.85165846 0.45286244
		 0.47761533 0.64871413 0.47892123 0.64853066 0.14743038 0.39044994 0.14731269 0.38763976
		 0.14730456 0.3874504 0.14713526 0.38355613 0.14712635 0.38334918 0.1471085 0.38294443
		 0.14709947 0.38274628 0.14709108 0.38255304 0.14632508 0.36512828 0.14631602 0.36493427
		 0.14630722 0.36473662 0.14628874 0.36433151 0.14627925 0.36412436 0.14611191 0.36022991
		 0.14610349 0.36004031 0.14598784 0.35723105 0.57345104 0.090520076 0.57476366 0.090684175
		 0.85312033 0.41964275 0.85300267 0.4224534 0.8529827 0.42263639 0.85281324 0.42652985
		 0.85281605 0.42674309 0.8527981 0.42714778 0.85281354 0.42735857 0.85285139 0.4276107
		 0.85208285 0.44496924 0.7023946 0.036983863 0.7027933 0.037046686 0.85202003 0.44517013
		 0.8519851 0.44535565 0.8519671 0.44575998 0.85194504 0.44596055 0.85177422 0.44985542
		 0.85177928 0.45005128 0.82440615 0.44753677 0.53928649 0.42209941;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".pt";
	setAttr ".pt[12]" -type "float3" -1.1920929e-006 0 0 ;
	setAttr -av ".pt[12].px";
	setAttr -av ".pt[12].py";
	setAttr -av ".pt[12].pz";
	setAttr ".pt[14]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr -av ".pt[14].px";
	setAttr -av ".pt[14].py";
	setAttr -av ".pt[14].pz";
	setAttr ".pt[67]" -type "float3" 2.1457672e-006 -1.4305115e-006 0 ;
	setAttr ".pt[68]" -type "float3" 0 1.9073486e-006 0 ;
	setAttr -s 98 ".vt[0:97]"  -14.98410511 -0.010349989 -6.44047832 -15.041809082 0.58818507 7.84035254
		 -17.8855381 -0.13337493 -6.38385153 -17.94222832 0.50818181 7.83517933 -17.81402969 -1.49023032 -6.1755991
		 -17.89409828 -0.88632488 7.84972191 -14.92488766 -1.38819671 -6.22640562 -15.033413887 -0.79652286 7.85532427
		 -10.76314735 0.27350187 -6.54207945 -10.83035374 0.78480434 7.84694004 -14.79460716 0.093309164 -6.45876312
		 -14.84966183 0.69358993 7.8396244 -14.73045921 -1.38185024 -6.22978354 -14.79914665 -0.79016268 7.85572767
		 -10.70378399 -1.20200968 -6.31152391 -10.77980614 -0.70142162 7.86418724 -10.12525272 0.2045114 -6.54034758
		 -10.19586945 0.69748783 7.84927368 -10.54391861 0.1866405 -6.53165007 -10.6132822 0.68928218 7.84855318
		 -10.49122715 -1.19535732 -6.31506062 -10.56597042 -0.69755751 7.86471748 -10.070921898 -1.17426872 -6.32433844
		 -10.14827919 -0.69032621 7.86573935 8.31475735 0.24525297 -6.81558895 8.19578743 0.33668923 7.90335083
		 -9.65302563 -0.35733104 -6.46031952 -9.7360487 0.096161485 7.85741758 -9.66553116 -1.15636277 -6.33285618
		 -9.74408054 -0.68373537 7.86656761 8.37574959 -0.52773023 -6.69311571 8.25565147 -0.44586039 7.91693115
		 -9.90922546 0.019763231 -6.51481009 -9.98407555 0.49878764 7.85213089 -9.86400509 -1.16228366 -6.32950735
		 -9.94372368 -0.68762821 7.8661375 8.57982826 -0.52077746 -6.69830084 8.4561224 -0.44670594 7.91767693
		 8.53364086 0.64206815 -6.88191032 8.41599464 0.73764014 7.89701462 8.78471851 -0.51548505 -6.70224953
		 8.66065407 -0.4477706 7.91854858 8.72869968 0.84143901 -6.9157505 8.61389542 0.93896937 7.89418793
		 9.20737362 -0.503088 -6.71154642 9.079699516 -0.45077777 7.92031384 9.1489687 0.85245538 -6.92430305
		 9.031941414 0.94352221 7.8953886 9.42334557 -0.49706388 -6.7162962 9.29393673 -0.45194376 7.92114353
		 9.35873699 0.95373106 -6.94338846 9.24224281 1.045381069 7.89422321 13.46197796 -0.40333366 -6.79535913
		 13.31589794 -0.3920207 7.93472338 13.38285255 1.044272184 -7.017384529 13.26494408 1.10204697 7.90612841
		 13.65720654 -0.40353477 -6.79838276 13.51235771 -0.39349556 7.93558073 13.58144474 0.95093775 -7.0051960945
		 13.46423531 1.0043609142 7.90867662 16.54141045 -0.34506786 -6.84423876 16.41348648 -0.32194948 7.94465113
		 16.48270416 1.0093634129 -7.056773186 16.36536789 1.076635122 7.91696119 -17.9371109 0.45051169 6.55701828
		 -17.88690186 -0.94061053 6.58898115 -14.98838139 -0.8486014 6.58957338 -14.79297066 -0.84335154 6.58956146
		 -10.77297115 -0.74641806 6.58991528 -10.55924702 -0.74230528 6.59008121 -10.14131069 -0.73382831 6.59017658
		 -9.9365778 -0.73029554 6.59006786 -9.73701668 -0.72622031 6.59017181 8.26643944 -0.45321977 6.60361195
		 8.46723938 -0.45336425 6.60384989 8.67179585 -0.45385754 6.60427809 9.091176987 -0.45547998 6.60503912
		 9.30557537 -0.45599973 6.605371 13.32901955 -0.39303756 6.61061954 13.52536583 -0.39439797 6.61112833
		 16.42498779 -0.32402754 6.61526012 16.37591171 1.070588112 6.57095766 13.47476673 0.99955869 6.56804562
		 13.2755537 1.096853495 6.56463385 9.25270653 1.037142754 6.56045961 9.042442322 0.93533635 6.56324244
		 8.62419605 0.93020225 6.5629077 8.42656422 0.72904897 6.56852198 8.20648098 0.32846999 6.58024359
		 -9.72858906 0.055396557 6.57038689 -9.97735119 0.45572758 6.56067753 -10.18954182 0.65317369 6.55577374
		 -10.60706329 0.644099 6.55590153 -10.82433033 0.73884273 6.55349016 -14.84472561 0.63963008 6.55433178
		 -15.036637306 0.5343821 6.55664396 -14.83851624 0.5680542 7.84104347 -14.77556515 -0.019259691 7.84749794;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  2 0 0 2 64 0 3 1 0 1 95 0 4 2 0 4 65 0 5 3 0 6 4 0
		 6 66 0 10 8 0 10 94 0 11 9 0 9 93 0 14 12 0 14 68 0 15 13 0 13 67 0 0 10 0 1 11 0
		 12 6 0 13 7 0 18 16 0 18 92 0 19 17 0 17 91 0 22 20 0 22 70 0 23 21 0 21 69 0 8 18 0
		 9 19 0 20 14 0 21 15 0 26 24 0 26 89 0 27 25 0 25 88 0 30 28 0 30 73 0 31 29 0 29 72 0
		 32 26 0 32 90 0 33 27 0 28 34 0 29 35 0 35 71 0 16 32 0 17 33 0 34 22 0 35 23 0 36 30 0
		 36 74 0 37 31 0 24 38 0 25 39 0 39 87 0 40 36 0 40 75 0 41 37 0 38 42 0 39 43 0 43 86 0
		 44 40 0 44 76 0 45 41 0 42 46 0 43 47 0 47 85 0 48 44 0 48 77 0 49 45 0 46 50 0 47 51 0
		 51 84 0 52 48 0 52 78 0 53 49 0 50 54 0 51 55 0 55 83 0 56 52 0 56 79 0 57 53 0 54 58 0
		 55 59 0 59 82 0 60 56 0 60 80 0 61 57 0 62 60 0 62 81 0 63 61 0 58 62 0 59 63 0 64 3 0
		 65 5 0 66 7 0 67 12 0 68 15 0 69 20 0 70 23 0 71 34 0 72 28 0 73 31 0 74 37 0 75 41 0
		 76 45 0 77 49 0 78 53 0 79 57 0 80 61 0 81 63 0 82 58 0 83 54 0 84 50 0 85 46 0 86 42 0
		 87 38 0 88 24 0 89 27 0 90 33 0 91 16 0 92 19 0 93 8 0 94 11 0 95 0 0 64 65 1 65 66 1
		 66 67 1 67 68 0 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1
		 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 64 1 7 5 0 1 7 0 11 96 1
		 96 97 1 97 13 1 9 15 1 19 21 1;
	setAttr ".ed[166:175]" 17 23 1 33 35 1 27 29 1 25 31 1 39 37 1 43 41 1 47 45 1
		 51 49 1 55 53 1 59 57 1;
	setAttr -s 230 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 0.055068687 0.99006444 0.12938289 0.028445376 0.99165833 0.12571672 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 -0.99883896 0.047133707 -0.0099646701 -0.99888092 0.046950702
		 -0.0057223812 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.055022862
		 -0.99003756 -0.12960745 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.030411514 0.99084795
		 0.13151313 0.078750044 0.98853356 0.12884073 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 -0.059572101 -0.98991197 -0.12855233 -0.058236238 -0.98958272 -0.13166091 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 0.028445376 0.99165833 0.12571672 0.030411514
		 0.99084795 0.13151313 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.058236238 -0.98958272
		 -0.13166091 -0.055968113 -0.99039745 -0.12641451 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 0.22212243 0.96596879 0.13253701 0.060244184 0.989667 0.13011542 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 -0.060376521 -0.98950624 -0.13127132 -0.061202604 -0.98928982
		 -0.13251393 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.078750044 0.98853356 0.12884073
		 0.22212243 0.96596879 0.13253701 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.061202604
		 -0.98928982 -0.13251393 -0.059572101 -0.98991197 -0.12855233 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 0.07817594 0.98543394 0.15102455 0.0810472 0.98571491 0.14764002
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.081223167 -0.98564541 -0.14800648 -0.077948831
		 -0.98547858 -0.15085129 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.83180654 0.5473882
		 0.092001446 0.88513392 0.45831066 0.080558032 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 -0.077948831 -0.98547858 -0.15085129 -0.062246062 -0.98924494 -0.13236289
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.73103279 0.67360413 0.10885105 0.83180654
		 0.5473882 0.092001446 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.062246062 -0.98924494
		 -0.13236289 -0.060376521 -0.98950624 -0.13127132 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 -0.10346498 -0.9801231 -0.16927442 -0.081223167 -0.98564541 -0.14800648 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 -0.82401747 0.56449014 0.048437353 -0.76137161
		 0.64482844 0.067153722 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.10426241 -0.9797619
		 -0.1708685 -0.10346498 -0.9801231 -0.16927442 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 -0.76137161 0.64482844 0.067153722 -0.63309669 0.76807672 0.096160181 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 -0.10584626 -0.97957659 -0.1709571 -0.10426241
		 -0.9797619 -0.1708685 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.090467721 0.98102385
		 0.17148711 -0.049064033 0.9854238 0.16288848 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 -0.091811918 -0.97943056 -0.17968424 -0.10584626 -0.97957659 -0.1709571 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 -0.049064033 0.9854238 0.16288848 0.066324845 0.98178935
		 0.17801897 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.096152529 -0.97902566 -0.17962074
		 -0.091811918 -0.97943056 -0.17968424 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.066324845
		 0.98178935 0.17801897 0.11628348 0.97680259 0.17981942 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 -0.081634887 -0.97808939 -0.19151239 -0.096152529 -0.97902566 -0.17962074
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.11628348 0.97680259 0.17981942 0.11403188
		 0.9748013 0.19172697 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.082391374 -0.97783107
		 -0.19250511 -0.081634887 -0.97808939 -0.19151239 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 0.99714446 -0.046877891 0.059208032 0.99743396 -0.046133392 0.054748125 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 0.11403188 0.9748013 0.19172697 0.082248472 0.9780134
		 0.1916378 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 -0.99901062 0.025669057 -0.036317773 -0.99856156 0.02859241 -0.045359615 -0.039074983
		 -0.99864149 -0.034473769 -0.037514709 -0.99895376 -0.026155727 -0.037514709 -0.99895376
		 -0.026155727 -0.035391394 -0.99871165 -0.036366321 -0.035391394 -0.99871165 -0.036366321
		 -0.034850784 -0.99898976 -0.028370973 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.034850784
		 -0.99898976 -0.028370973 -0.026981359 -0.99901545 -0.035216656 -0.026981359 -0.99901545
		 -0.035216656 -0.025860975 -0.99913633 -0.032523643 -0.025860975 -0.99913633 -0.032523643
		 -0.036118787 -0.99875265 -0.034476306 -0.036118787 -0.99875265 -0.034476306 -0.045458496
		 -0.99798089 -0.044359844 -0.045458496 -0.99798089 -0.044359844 -0.044877321 -0.99833363
		 -0.036276486 -0.044877321 -0.99833363 -0.036276486 -0.054052133 -0.9975369 -0.044705361
		 -0.054052133 -0.9975369 -0.044705361 -0.05552385 -0.99735975 -0.046806585 -0.05552385
		 -0.99735975 -0.046806585 -0.054990243 -0.99752182 -0.043889511 -0.054990243 -0.99752182
		 -0.043889511 -0.053670451 -0.99736398 -0.048832413 -0.053670451 -0.99736398 -0.048832413
		 -0.054363366 -0.99764466 -0.041831475 -0.054363366 -0.99764466 -0.041831475 -0.055625062
		 -0.99729592 -0.048028979 -0.055625062 -0.99729592 -0.048028979 -0.05428258 -0.99764544
		 -0.041917372;
	setAttr ".n[166:229]" -type "float3"  0.99884963 -0.039428398 0.027295038 0.99923342
		 -0.036764514 0.013457629 0.053965062 0.99775183 0.039737515 0.083727807 0.99538547
		 0.046878729 0.083727807 0.99538547 0.046878729 0.078919508 0.99607217 0.040149041
		 0.078919508 0.99607217 0.040149041 0.034480453 0.99835348 0.045843862 0.034480453
		 0.99835348 0.045843862 -0.11080181 0.99312276 0.03781705 -0.11080181 0.99312276 0.03781705
		 0.052688703 0.9975239 0.046582893 -0.65511 0.75544119 0.011810591 -0.76499432 0.64397782
		 0.0087352013 -0.76499432 0.64397782 0.0087352013 -0.83440185 0.55115479 0.0014454946
		 0.04530742 0.99834895 0.035307709 0.045982823 0.99799567 0.043476954 0.87104142 0.48841363
		 0.052337661 0.81358057 0.57964122 0.045856103 0.81358057 0.57964122 0.045856103 0.70995402
		 0.70284241 0.044472076 0.027830452 0.99923396 0.027514478 0.17029269 0.98462796 0.03883601
		 0.17029269 0.98462796 0.03883601 0.058529492 0.9979139 0.027244378 0.058529492 0.9979139
		 0.027244378 0.014898208 0.99932712 0.033518784 0.014898208 0.99932712 0.033518784
		 -0.0010984786 0.99973339 0.023067176 -0.0010984786 0.99973339 0.023067176 0.03621674
		 0.99881566 0.032489751 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020;
	setAttr -s 79 -ch 320 ".fc[0:78]" -type "polyFaces" 
		f 4 158 95 2 3
		mu 0 4 113 76 30 27
		f 4 127 96 6 -96
		mu 0 4 77 78 66 67
		f 4 128 97 159 -97
		mu 0 4 79 80 60 63
		f 4 156 125 11 12
		mu 0 4 111 112 23 19
		f 4 130 99 15 16
		mu 0 4 81 82 52 56
		f 4 157 -4 18 -126
		mu 0 4 112 113 27 23
		f 4 129 -17 20 -98
		mu 0 4 80 81 56 60
		f 4 154 123 23 24
		mu 0 4 109 110 15 10
		f 4 132 101 27 28
		mu 0 4 83 84 44 48
		f 4 155 -13 30 -124
		mu 0 4 110 111 19 15
		f 4 131 -29 32 -100
		mu 0 4 82 83 48 52
		f 4 151 120 35 36
		mu 0 4 104 105 3 4
		f 4 135 104 39 40
		mu 0 4 86 87 35 36
		f 4 152 121 43 -121
		mu 0 4 106 107 70 71
		f 4 134 -41 45 46
		mu 0 4 85 86 36 40
		f 4 153 -25 48 -122
		mu 0 4 108 109 10 11
		f 4 133 -47 50 -102
		mu 0 4 84 85 40 44
		f 4 136 105 53 -105
		mu 0 4 87 88 39 35
		f 4 150 -37 55 56
		mu 0 4 103 104 4 7
		f 4 137 106 59 -106
		mu 0 4 88 89 43 39
		f 4 149 -57 61 62
		mu 0 4 102 103 7 12
		f 4 138 107 65 -107
		mu 0 4 89 90 47 43
		f 4 148 -63 67 68
		mu 0 4 101 102 12 16
		f 4 139 108 71 -108
		mu 0 4 90 91 51 47
		f 4 147 -69 73 74
		mu 0 4 100 101 16 20
		f 4 140 109 77 -109
		mu 0 4 91 92 55 51
		f 4 146 -75 79 80
		mu 0 4 99 100 20 24
		f 4 141 110 83 -110
		mu 0 4 92 93 59 55
		f 4 145 -81 85 86
		mu 0 4 98 99 24 28
		f 4 142 111 89 -111
		mu 0 4 93 94 62 59
		f 4 143 112 92 -112
		mu 0 4 95 96 74 75
		f 4 144 -87 94 -113
		mu 0 4 97 98 28 31
		f 4 175 -90 -93 -95
		mu 0 4 28 59 75 31
		f 4 -5 5 -128 -2
		mu 0 4 65 64 78 77
		f 4 -8 8 -129 -6
		mu 0 4 61 57 80 79
		f 4 -20 -99 -130 -9
		mu 0 4 57 53 81 80
		f 4 -14 14 -131 98
		mu 0 4 53 49 82 81
		f 4 -32 -101 -132 -15
		mu 0 4 49 45 83 82
		f 4 -26 26 -133 100
		mu 0 4 45 41 84 83
		f 4 -50 -103 -134 -27
		mu 0 4 41 37 85 84
		f 4 -45 -104 -135 102
		mu 0 4 37 33 86 85
		f 4 -38 38 -136 103
		mu 0 4 33 32 87 86
		f 4 -52 52 -137 -39
		mu 0 4 32 34 88 87
		f 4 -58 58 -138 -53
		mu 0 4 34 38 89 88
		f 4 -64 64 -139 -59
		mu 0 4 38 42 90 89
		f 4 -70 70 -140 -65
		mu 0 4 42 46 91 90
		f 4 -76 76 -141 -71
		mu 0 4 46 50 92 91
		f 4 -82 82 -142 -77
		mu 0 4 50 54 93 92
		f 4 -88 88 -143 -83
		mu 0 4 54 58 94 93
		f 4 -91 91 -144 -89
		mu 0 4 73 72 96 95
		f 4 -94 -114 -145 -92
		mu 0 4 29 25 98 97
		f 4 -85 -115 -146 113
		mu 0 4 25 21 99 98
		f 4 -79 -116 -147 114
		mu 0 4 21 17 100 99
		f 4 -73 -117 -148 115
		mu 0 4 17 13 101 100
		f 4 -67 -118 -149 116
		mu 0 4 13 8 102 101
		f 4 -61 -119 -150 117
		mu 0 4 8 5 103 102
		f 4 -55 -120 -151 118
		mu 0 4 5 1 104 103
		f 4 -34 34 -152 119
		mu 0 4 1 0 105 104
		f 4 -42 42 -153 -35
		mu 0 4 68 69 107 106
		f 4 -48 -123 -154 -43
		mu 0 4 2 6 109 108
		f 4 -22 22 -155 122
		mu 0 4 6 9 110 109
		f 4 -30 -125 -156 -23
		mu 0 4 9 14 111 110
		f 4 -10 10 -157 124
		mu 0 4 14 18 112 111
		f 4 -18 -127 -158 -11
		mu 0 4 18 22 113 112
		f 4 -1 1 -159 126
		mu 0 4 22 26 76 113
		f 4 -3 -7 -160 -161
		mu 0 4 27 67 63 60
		f 6 160 -21 -164 -163 -162 -19
		mu 0 6 27 60 56 115 114 23
		f 6 161 162 163 -16 -165 -12
		mu 0 6 23 114 115 56 52 19
		f 4 164 -33 -166 -31
		mu 0 4 19 52 48 15
		f 4 165 -28 -167 -24
		mu 0 4 15 48 44 10
		f 4 166 -51 -168 -49
		mu 0 4 10 44 40 11
		f 4 167 -46 -169 -44
		mu 0 4 11 40 36 71
		f 4 168 -40 -170 -36
		mu 0 4 71 36 35 4
		f 4 169 -54 -171 -56
		mu 0 4 4 35 39 7
		f 4 170 -60 -172 -62
		mu 0 4 7 39 43 12
		f 4 171 -66 -173 -68
		mu 0 4 12 43 47 16
		f 4 172 -72 -174 -74
		mu 0 4 16 47 51 20
		f 4 173 -78 -175 -80
		mu 0 4 20 51 55 24
		f 4 174 -84 -176 -86
		mu 0 4 24 55 59 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "curve1";
	rename -uid "325563EF-46EC-B194-6366-A18F897F9EF9";
createNode nurbsCurve -n "curve1Shape" -p "curve1";
	rename -uid "DF73CE43-44AE-EF58-DE3C-B5815AE1D925";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 50 0 no 3
		55 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 50 50
		
		53
		0 0 1.9999999999986204
		-0.15696162215313439 0 5.9055792751893952
		-0.47081351965902657 -0.82754415846865303 13.716752648372909
		1.8835983121613082 2.8964243989040046 57.13306490852051
		-25.063240060555632 1.2418787768266475 63.751088969771381
		-45.630336413745908 4.1360945086200536 53.862724351902195
		-86.415117771823276 0.21377356061087571 44.798188141078185
		-106.70893653714101 13.008840627548558 96.944700714844771
		-116.74892881436571 13.750893307660686 149.42318609264444
		-38.295152015690746 27.987615520269312 145.36275476999842
		29.929738023901034 36.298671158154406 175.12604109828095
		-39.423564267164473 54.817722596408828 204.13336677542986
		-142.23520040413788 50.430457021796528 256.34077392831591
		-279.63530998997891 49.460465248155295 240.50378920527996
		-383.22315211475109 57.727694800529854 191.64429338365832
		-413.47161494330851 25.628766031192146 108.9192873706117
		-290.88989628702018 7.7572538184034272 110.67887505851702
		-252.96832444486796 3.3422321614197461 78.365583696550345
		-311.23641476924445 -9.126163573375603 19.85918267462241
		-386.08568938302705 -8.8375646098732155 -19.801943732197262
		-358.42056952631822 -33.523572987769924 -90.65107719989895
		-274.23188856090354 -43.068138916884081 -79.593463570816226
		-260.6518432804499 -46.203855833610376 -148.9748107909914
		-279.1607492154933 -42.116420992659251 -164.5070857103585
		-218.70512718695127 -43.330440981642042 -158.99669579654909
		-166.01861367646811 -42.561814490524768 -153.50603973796007
		-179.22021158642832 -44.422311707560375 -180.97911461677759
		-173.10030478729578 -37.748954633690019 -232.57752830470201
		-220.37839228223046 -32.581887021792646 -274.7108571996306
		-265.38600642907795 -23.923522466604503 -252.57918362761819
		-284.07744259771658 -21.724054197059861 -220.97258655804902
		-398.30400925113503 -15.180290898081113 -183.53067116986816
		-432.70619216091472 -7.5548116854660172 -226.90492317020647
		-450.87080682751474 -20.600487703100939 -306.84977988821294
		-445.81016958351643 -12.043250963897556 -351.69606395945436
		-309.88818527479231 -33.226506047045675 -350.36606919457074
		-318.63678085039044 -29.0507217758149 -388.83972929059053
		-149.56453032751693 5.4293953041697662 -344.27501764939944
		-61.105071620103573 7.3331417669755083 -322.06019752501675
		-2.0151661764488544 -34.761960682880186 -293.48418817611662
		69.16604761544302 -42.285260766915883 -238.0029360760488
		25.351269090818306 -36.096994712199667 -176.50390822015171
		-44.570841528739741 12.673273529165284 -129.98125407201931
		-93.067670683420118 -2.5960826820558096 -137.57090037714522
		-141.15828110459722 -2.288913422502254 -123.73496332375331
		-134.29900981309962 -12.248248187788885 -63.489032038716587
		-101.64547061523253 3.2819186576234802 -48.308646754753582
		-47.118856409390872 -0.87940541041160747 -55.276093796409548
		-3.8788080892183627 0.23572018412472567 -72.58670962640673
		2.6344382262739399 -0.063460555459611032 -38.376831316408378
		-0.65850468777006377 0.018133862851265652 -49.905736676463142
		-0.21953194579611626 0 -17.968591809418701
		0 0 -2
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CB618068-423C-31A3-2A9A-2F8E73A1AF8E";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1846EE12-46C9-10DD-AC21-D188E74AF137";
createNode displayLayer -n "defaultLayer";
	rename -uid "691EED12-41BD-4C16-A809-A7BA0F0E0C8D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A5E52B5B-43C4-E5C1-7E17-5C8D77C5CF0B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5F0BBC50-4F53-AB91-7746-58B2F7A65DAE";
	setAttr ".g" yes;
createNode lambert -n "StreetTexture";
	rename -uid "DDD153A8-437B-74D3-AF5E-22B7025DF164";
	setAttr ".c" -type "float3" 0.028999999 0.028999999 0.028999999 ;
createNode shadingEngine -n "StraightShort:pCube1SG";
	rename -uid "4A189570-4FAC-4CC4-142D-6CB4AB287C18";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "A49C575E-4C75-7662-A420-259D081DEBE5";
createNode lambert -n "StraightShort:initialShadingGroup1";
	rename -uid "A3A6A82B-4FDA-78A2-516F-82B14B1757FB";
createNode shadingEngine -n "StraightShort:pCube1SG1";
	rename -uid "0D3F19ED-4F12-590D-E064-2C8F2439E056";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "0D29D591-48E1-38F0-72D4-7CA8F9A6307D";
createNode lambert -n "SideWalkTexture";
	rename -uid "4986BCFC-48EE-2281-E40B-628535F46542";
	setAttr ".c" -type "float3" 0.40796599 0.41058379 0.442 ;
createNode shadingEngine -n "StraightShort:pCube1SG2";
	rename -uid "EFE761A0-46E3-8085-0E91-78B5DD386F64";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "6324DFB9-4495-0CF5-2BAF-ACBA3394A408";
createNode lambert -n "Grass";
	rename -uid "B91219C2-4122-9C3E-3D2E-388D359E193F";
	setAttr ".c" -type "float3" 0.04945736 0.64300001 0 ;
createNode shadingEngine -n "StraightShort:pCube1SG3";
	rename -uid "E7A51F94-4DDE-6098-E2C7-91949A3D4A32";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "A7C73283-4516-868F-E3FD-9C8742DEB76B";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1AA18C64-4E0A-3838-8BED-E1A94CF3F999";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 3092\n                -height 1644\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 3092\n            -height 1644\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 3092\\n    -height 1644\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 3092\\n    -height 1644\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E957F8A5-41C4-2E54-29CC-0191BE006C0B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "46BFA282-4A72-35D1-7CFB-52B572E97278";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "90276ED0-40EC-37ED-45EB-BD8E3F653F3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "4C66D2ED-4636-AF5B-CB2D-47B443D936AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "621D1A75-4623-9FE7-D703-D1A480043F04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "8E024876-4DB7-216C-D5DE-BBB4ECE56E3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "39E6AF2A-4F54-D772-73B5-E2ABDE5EB95E";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "StraightShort:pCube1Shape.iog.og[0].gid";
connectAttr "StraightShort:pCube1SG.mwc" "StraightShort:pCube1Shape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "StraightShort:pCube1Shape.iog.og[1].gid";
connectAttr "StraightShort:pCube1SG1.mwc" "StraightShort:pCube1Shape.iog.og[1].gco"
		;
connectAttr "groupId3.id" "StraightShort:pCube1Shape.iog.og[2].gid";
connectAttr "StraightShort:pCube1SG2.mwc" "StraightShort:pCube1Shape.iog.og[2].gco"
		;
connectAttr "groupId4.id" "StraightShort:pCube1Shape.iog.og[3].gid";
connectAttr "StraightShort:pCube1SG3.mwc" "StraightShort:pCube1Shape.iog.og[3].gco"
		;
connectAttr "groupId5.id" "StraightShort:pCube1Shape.iog.og[4].gid";
connectAttr "StraightShort:pCube1SG2.mwc" "StraightShort:pCube1Shape.iog.og[4].gco"
		;
connectAttr "groupId6.id" "StraightShort:pCube1Shape.iog.og[5].gid";
connectAttr ":initialShadingGroup.mwc" "StraightShort:pCube1Shape.iog.og[5].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "StraightShort:pCube1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "StraightShort:pCube1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "StraightShort:pCube1SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "StraightShort:pCube1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "StraightShort:pCube1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "StraightShort:pCube1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "StraightShort:pCube1SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "StraightShort:pCube1SG3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "StreetTexture.oc" "StraightShort:pCube1SG.ss";
connectAttr "groupId1.msg" "StraightShort:pCube1SG.gn" -na;
connectAttr "StraightShort:pCube1Shape.iog.og[0]" "StraightShort:pCube1SG.dsm" -na
		;
connectAttr "StraightShort:pCube1SG.msg" "materialInfo1.sg";
connectAttr "StreetTexture.msg" "materialInfo1.m";
connectAttr "StraightShort:initialShadingGroup1.oc" "StraightShort:pCube1SG1.ss"
		;
connectAttr "groupId2.msg" "StraightShort:pCube1SG1.gn" -na;
connectAttr "StraightShort:pCube1Shape.iog.og[1]" "StraightShort:pCube1SG1.dsm" 
		-na;
connectAttr "StraightShort:pCube1SG1.msg" "materialInfo2.sg";
connectAttr "StraightShort:initialShadingGroup1.msg" "materialInfo2.m";
connectAttr "SideWalkTexture.oc" "StraightShort:pCube1SG2.ss";
connectAttr "groupId3.msg" "StraightShort:pCube1SG2.gn" -na;
connectAttr "groupId5.msg" "StraightShort:pCube1SG2.gn" -na;
connectAttr "StraightShort:pCube1Shape.iog.og[2]" "StraightShort:pCube1SG2.dsm" 
		-na;
connectAttr "StraightShort:pCube1Shape.iog.og[4]" "StraightShort:pCube1SG2.dsm" 
		-na;
connectAttr "StraightShort:pCube1SG2.msg" "materialInfo3.sg";
connectAttr "SideWalkTexture.msg" "materialInfo3.m";
connectAttr "Grass.oc" "StraightShort:pCube1SG3.ss";
connectAttr "groupId4.msg" "StraightShort:pCube1SG3.gn" -na;
connectAttr "StraightShort:pCube1Shape.iog.og[3]" "StraightShort:pCube1SG3.dsm" 
		-na;
connectAttr "StraightShort:pCube1SG3.msg" "materialInfo4.sg";
connectAttr "Grass.msg" "materialInfo4.m";
connectAttr "StraightShort:pCube1SG.pa" ":renderPartition.st" -na;
connectAttr "StraightShort:pCube1SG1.pa" ":renderPartition.st" -na;
connectAttr "StraightShort:pCube1SG2.pa" ":renderPartition.st" -na;
connectAttr "StraightShort:pCube1SG3.pa" ":renderPartition.st" -na;
connectAttr "StreetTexture.msg" ":defaultShaderList1.s" -na;
connectAttr "StraightShort:initialShadingGroup1.msg" ":defaultShaderList1.s" -na
		;
connectAttr "SideWalkTexture.msg" ":defaultShaderList1.s" -na;
connectAttr "Grass.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "StraightShort:pCube1Shape.iog.og[5]" ":initialShadingGroup.dsm" -na
		;
// End of PreDefecationTrack1.ma
