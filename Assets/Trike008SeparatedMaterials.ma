//Maya ASCII 2016 scene
//Name: Trike008SeparatedMaterials.ma
//Last modified: Fri, Sep 23, 2016 02:09:46 PM
//Codeset: 1252
file -rdi 1 -ns "IMG_1211" -dr 1 -rfn "IMG_1211RN" -typ "image" "/Users/Trent/Desktop/Trike'd Out/Reference/IMG_1211.JPG";
file -r -ns "IMG_1211" -dr 1 -rfn "IMG_1211RN" -typ "image" "/Users/Trent/Desktop/Trike'd Out/Reference/IMG_1211.JPG";
requires maya "2016";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9458720F-C040-ED2D-D491-F4806750E46A";
	setAttr ".t" -type "double3" -40.083440378478258 30.849058581593518 18.373260071470852 ;
	setAttr ".r" -type "double3" 328.46164726887537 -1498.1999999999928 6.035714397001847e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3F7604B7-B34F-92F0-D3E4-888C932AF581";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 50.944183704407799;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.1817543506622314 4.2017257213592529 -4.5067546367645264 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "imagePlane1" -p "perspShape";
	rename -uid "44F57148-4645-EAE9-BBC8-418E649380C7";
createNode transform -n "imagePlane4" -p "perspShape";
	rename -uid "CFE2AEA9-1248-E74B-5DC3-579275AE32F2";
createNode transform -s -n "top";
	rename -uid "AD963310-874C-64EE-60B2-779703B1093C";
	setAttr ".t" -type "double3" 2.1969825960642124 100.1 -0.82390989689605387 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2CC581D0-5D41-3913-4628-2DAC690F5AE2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.92506418237228;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "57E81062-1D4A-9DE3-BEDD-589595279E21";
	setAttr ".t" -type "double3" 1.0046001697243416 4.2800273243138323 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E34B8332-564A-CB82-8F1B-D282B9302FDA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 22.667464184272365;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4C3ADAAA-744D-DED1-5181-A6ABB2F7F3FE";
	setAttr ".t" -type "double3" 100.16343892325007 1.7492978461767938 1.3200654875618527 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3EB4E82A-2545-17DF-C46D-30B966EB56D7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 22.980403499956381;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "3B0B6C38-CC44-034C-CF87-BE85CF9E9FB0";
	setAttr ".t" -type "double3" 0 5.5856150722622733 -2.3980127535366829 ;
	setAttr ".r" -type "double3" -11.844541403817011 0 0 ;
	setAttr ".s" -type "double3" 1 0.43699994444961915 8.5129317653690766 ;
createNode transform -n "transform1" -p "pCube1";
	rename -uid "48DB4687-0141-885D-53AA-678F125299C2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	rename -uid "5A4573CD-3B42-2A52-8B48-18BD0EAD4431";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 114 ".pt[0:113]" -type "float3"  -0.28550002 0.22079667 0.010816931 
		-0.39692217 0.25144878 0.011146924 -0.34052885 -0.085020632 0.018918391 -0.34052885 
		-0.085020632 0.018918391 -0.29809931 -0.44721997 0.021770919 -0.38178918 -0.41644269 
		0.022102261 -0.29809931 -0.29753807 -0.0032032391 -0.38178918 -0.26676083 -0.0028718975 
		-0.29809931 -0.35104448 -0.0037792784 -0.38178918 -0.3202672 -0.0034479355 -0.29809931 
		-0.37543058 -0.0040418166 -0.38178918 -0.34465337 -0.0037104753 -0.29809931 -0.3660025 
		-0.0039403164 -0.38178918 -0.33522528 -0.0036089744 -0.29809931 -0.38401094 -0.0041341903 
		-0.38178918 -0.3532337 -0.0038028485 -0.29809931 -0.30787182 -0.003314489 -0.38178918 
		-0.27709454 -0.0029831473 -0.29809931 -0.32056165 -0.0034511068 -0.38178918 -0.2897844 
		-0.0031197651 -0.29809931 -0.1926448 -0.0020739778 -0.38178918 -0.17733274 -0.0019091332 
		-0.34052885 0.18618555 -0.0048500905 -0.34052885 0.18618555 -0.0048500905 -0.28550002 
		0.31531808 0.0014185733 -0.39692217 0.34597012 0.0017485679 -0.28550002 0.35981154 
		-0.0075876196 -0.39692217 0.39046359 -0.007257625 -0.28550002 0.43165264 -0.004442892 
		-0.39692217 0.46230468 -0.0041128974 -0.28550002 0.4596425 -0.0051192488 -0.39692217 
		0.49029455 -0.0047892542 -0.28550002 0.35520265 -0.0065582437 -0.39692217 0.38585469 
		-0.0062282495 -0.28550002 0.2365593 -0.007520922 -0.39692217 0.26721135 -0.0071909274 
		-0.28550002 0.28661591 -0.007377848 -0.39692217 0.31726798 -0.0070478539 -0.28550002 
		0.30775979 -0.0068512587 -0.39692217 0.33841193 -0.0065212641 -0.34052885 0.011038736 
		-0.0058094105 -0.34052885 0.059567805 -0.0044965204 -0.34052885 -0.048597112 -0.005242411 
		-0.34052885 -0.025956767 -0.0056278999 -0.34052885 -0.10284504 -0.0061410507 -0.34052885 
		0.0018393631 -0.0059593404 -0.34052885 0.0029920796 -0.0047511039 -0.34052885 0.011038736 
		-0.0058094105 -0.34052885 0.05956779 -0.0044965213 -0.34052885 -0.048597112 -0.005242411 
		-0.34052885 -0.025956856 -0.0056278999 -0.34052885 -0.10284504 -0.0061410507 -0.34052885 
		-0.0095782019 -0.0060822591 -0.34052885 0.0029920796 -0.0047511039 -0.34052885 0.030674301 
		0.00033023796 -0.34052885 0.053495981 0.00057592953 -0.34052885 0.042085022 0.00045308392 
		-0.34052885 0.030674446 0.00033023563 -0.34052885 0.12196065 0.0013130076 -0.34052885 
		0.051812708 0.00055780716 -0.34052885 0.15333161 0.0016507421 -0.34052885 0.115262 
		0.0012408909 -0.34052885 0.14811374 0.0015945644 -0.34052885 0.18618555 -0.0048500905 
		-0.34052885 -0.18302324 -0.0039464775 -0.34052885 -0.14007631 -0.012574101 -0.34052885 
		-0.09845072 -0.0058025047 -0.34052885 -0.21071959 -0.012873323 -0.34052885 -0.14654671 
		-0.012589221 -0.34052885 -0.073922351 -0.010863513 -0.34052885 -0.063176014 -0.012040516 
		-0.34052885 -0.035554916 -0.010248366 -0.34052885 -0.0095570507 -0.0017908637 -0.34052885 
		-0.085020632 0.018918391 -0.34052885 -0.20385861 0.012575078 -0.34052885 -0.12323754 
		-0.0013267525 -0.34052885 -0.1346484 -0.0014495986 -0.34052885 -0.14605907 -0.0015724453 
		-0.34052885 -0.054772973 -0.00058967515 -0.34052885 -0.12492091 -0.0013448754 -0.34052885 
		-0.023401983 -0.00025194127 -0.34052885 -0.061471619 -0.00066179194 -0.34052885 -0.028619992 
		-0.00030811748 -0.34052885 0.18618555 -0.0048500905 -0.34052885 -0.052161045 -0.0025376398 
		-0.34052885 -0.0092140846 -0.011165261 -0.34052885 0.032411519 -0.0043936651 -0.34052885 
		-0.07985732 -0.011464485 -0.34052885 -0.015684528 -0.011180381 -0.34052885 0.056939788 
		-0.0094546732 -0.34052885 0.06768629 -0.010631676 -0.34052885 0.095307231 -0.0088395262 
		-0.34052885 0.12130518 -0.00038202445 -0.34052885 -0.085020632 0.018918391 -0.34052885 
		-0.20200157 0.012595071 -0.34052885 -0.12138053 -0.0013067602 -0.34052885 -0.13279139 
		-0.0014296059 -0.34052885 -0.14420205 -0.0015524526 -0.34052885 -0.052915961 -0.00056968268 
		-0.34052885 -0.1230639 -0.001324883 -0.34052885 -0.021544971 -0.00023194858 -0.34052885 
		-0.059614606 -0.00064179936 -0.34052885 -0.026762979 -0.00028812507 -0.34052885 0.18618555 
		-0.0048500905 -0.34052885 -0.052161045 -0.0025376398 -0.34052885 -0.0092140846 -0.011165261 
		-0.34052885 0.032411519 -0.0043936651 -0.34052885 -0.07985732 -0.011464485 -0.34052885 
		-0.015684528 -0.011180381 -0.34052885 0.056939788 -0.0094546732 -0.34052885 0.06768629 
		-0.010631676 -0.34052885 0.095307231 -0.0088395262 -0.34052885 0.12130518 -0.00038202445 
		-0.34052885 -0.085020632 0.018918391;
	setAttr ".dr" 1;
createNode transform -n "pCylinder1";
	rename -uid "1DFF3F4B-E24C-7857-B4C7-3EBE7B9F0269";
	setAttr ".t" -type "double3" -0.31620534723023752 5.9762255519730916 -1.1006987743699717 ;
	setAttr ".r" -type "double3" -29.192185885111954 0 0 ;
	setAttr ".s" -type "double3" 0.078634773725408474 1.0161369925797228 0.078634773725408474 ;
createNode transform -n "transform2" -p "pCylinder1";
	rename -uid "DEC2FEDC-D34C-E35D-96F8-87BB341153FB";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform2";
	rename -uid "2D209164-7E4D-9F05-0E40-44BEFD97A9C8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "5821B54C-1348-0A88-9ABE-64A4B2E7A9F3";
createNode transform -n "transform3" -p "pCylinder2";
	rename -uid "55CCAF23-0942-2087-BF87-5D8B35A6DFDF";
	setAttr ".v" no;
createNode mesh -n "pCylinder2Shape" -p "transform3";
	rename -uid "8C0D44F5-AF44-7886-4BED-5AB8A6B46CA1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[42]" -type "float3" 0.16144437 -0.072639391 0.17287746 ;
	setAttr ".pt[43]" -type "float3" -0.094148174 -0.089427523 0.1531761 ;
	setAttr ".pt[44]" -type "float3" 0.20835598 0.011278539 0.086061746 ;
	setAttr ".pt[45]" -type "float3" -0.16654304 0 0.11040732 ;
	setAttr ".pt[46]" -type "float3" 0 0 0.043178041 ;
	setAttr ".pt[47]" -type "float3" -0.11391411 0 0.051422458 ;
	setAttr ".pt[114]" -type "float3" 0 0 0.028492823 ;
	setAttr ".pt[115]" -type "float3" 0.071768962 0.17879038 0.11861522 ;
	setAttr ".pt[133]" -type "float3" 0 -0.039072063 0.098686963 ;
	setAttr ".pt[152]" -type "float3" 0.10246963 -0.05477925 0.05523134 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder3";
	rename -uid "8ECE3A5C-E24A-F6AA-4402-D1B73106BE89";
	setAttr ".t" -type "double3" -0.31620534723023797 6.5881278914106893 2.1145475937507561 ;
	setAttr ".r" -type "double3" -9.472713332078996 0 0 ;
	setAttr ".s" -type "double3" 0.33927446600666195 0.48840910778469299 0.33927446600666195 ;
createNode transform -n "transform4" -p "pCylinder3";
	rename -uid "FA9C07EB-A84D-C36C-0C88-B08DBA92468C";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform4";
	rename -uid "C226D340-1649-36B6-8287-618285B5A728";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52499985694885254 0.46287596225738525 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder4";
	rename -uid "8A96EAE9-6C4D-F29D-9EA7-138772D11141";
createNode transform -n "transform7" -p "pCylinder4";
	rename -uid "66BCEFA5-C04C-FFC6-B647-CBBC3A968A75";
	setAttr ".v" no;
createNode mesh -n "pCylinder4Shape" -p "transform7";
	rename -uid "8384A9EC-984B-C488-AD87-EAB2521CA59C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[520:540]" -type "float3"  0 -0.09401612 0.015260004 
		0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 
		0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 
		0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 
		0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 
		0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 
		0.015260004 0 -0.09401612 0.015260004 0 -0.09401612 0.015260004;
	setAttr ".dr" 1;
createNode transform -n "pCube2";
	rename -uid "E030F479-FE4F-21EC-643B-F2AC743A0D9F";
	setAttr ".t" -type "double3" -0.25051547251328055 6.8395626606371085 -1.3953964893070157 ;
	setAttr ".r" -type "double3" -7.4125423321293917 -0.064874942363662036 -0.16656532309395966 ;
	setAttr ".s" -type "double3" 2.2936118906785481 0.52331343968174582 3.0423366379810326 ;
createNode transform -n "transform33" -p "pCube2";
	rename -uid "D8D85924-9A49-FEDE-687F-40980EEF4817";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform33";
	rename -uid "5315AA27-4A40-A9DC-BEEB-0D88316BAFEE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67500001192092896 0.45000001788139343 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[73]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[74]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[75]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[76]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[80]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[81]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[82]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[84]" -type "float3" 0 0.10500227 0 ;
	setAttr ".pt[85]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[86]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[87]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[88]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.18459009 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[92]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[94]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[98]" -type "float3" 0 0.099569671 0 ;
	setAttr ".pt[106]" -type "float3" 0 0.078786775 0 ;
	setAttr ".pt[112]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[113]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[114]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[115]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[116]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[117]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[118]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[119]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[120]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[121]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[122]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[123]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[124]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[125]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[126]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[127]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[128]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[129]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[130]" -type "float3" 0 0.27012995 0 ;
	setAttr ".pt[131]" -type "float3" 0 0.27012995 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCylinder5";
	rename -uid "98D014B3-8D40-A80A-74A8-5B8882FBE766";
	setAttr ".t" -type "double3" -0.29531008554966742 8.8499588002342033 3.3484885723523998 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.16423862731993141 3.2447764335907165 0.16423862731993141 ;
createNode transform -n "transform6" -p "pCylinder5";
	rename -uid "79B282D3-C648-0A95-ED48-8BB981A6FD1F";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform6";
	rename -uid "FCE1F53F-FD48-C6BD-C3D4-3DAA2046ACE9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43749994039535522 0.48167282342910767 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt";
	setAttr ".pt[180]" -type "float3" 0 -0.0015723791 -5.5511151e-016 ;
	setAttr ".pt[181]" -type "float3" -0.0019054909 -0.0036414126 -1.110223e-015 ;
	setAttr ".pt[182]" -type "float3" -0.023889152 -0.0064134873 -1.5543122e-015 ;
	setAttr ".pt[183]" -type "float3" -0.065052241 -0.0089727184 -1.7763568e-015 ;
	setAttr ".pt[184]" -type "float3" -0.10752824 -0.0099280495 -1.7763568e-015 ;
	setAttr ".pt[185]" -type "float3" -0.13030353 -0.0088364724 -1.3322676e-015 ;
	setAttr ".pt[186]" -type "float3" -0.12161335 -0.0065326872 -1.110223e-015 ;
	setAttr ".pt[187]" -type "float3" -0.086453319 -0.0039860867 -7.7715612e-016 ;
	setAttr ".pt[188]" -type "float3" -0.042559411 -0.0017645473 -4.4408921e-016 ;
	setAttr ".pt[189]" -type "float3" -0.0099840667 -0.00017215377 -3.8857806e-016 ;
	setAttr ".pt[190]" -type "float3" 0 0.00060692825 -1.5265567e-016 ;
	setAttr ".pt[191]" -type "float3" 0 0.00062709086 0 ;
	setAttr ".pt[192]" -type "float3" 0 0.00026356825 0 ;
	setAttr ".pt[198]" -type "float3" 0 -5.4995158e-005 -2.7755576e-017 ;
	setAttr ".pt[199]" -type "float3" 0 -0.00038264252 -1.6653345e-016 ;
	setAttr ".pt[200]" -type "float3" -0.010094019 -0.00030245402 0 ;
	setAttr ".pt[201]" -type "float3" -0.03824161 -0.0012787279 2.220446e-016 ;
	setAttr ".pt[202]" -type "float3" -0.31711966 -0.0035088107 2.220446e-015 ;
	setAttr ".pt[203]" -type "float3" -0.29471198 -0.0022423028 2.4424907e-015 ;
	setAttr ".pt[204]" -type "float3" -0.23566559 -0.0013267007 1.7763568e-015 ;
	setAttr ".pt[205]" -type "float3" -0.16001116 -0.00075447513 1.3322676e-015 ;
	setAttr ".pt[206]" -type "float3" -0.089438915 -0.00042191919 6.6613381e-016 ;
	setAttr ".pt[207]" -type "float3" -0.03824161 -0.00023837286 3.0531133e-016 ;
	setAttr ".pt[208]" -type "float3" -0.010094019 -0.00013921507 9.0205621e-017 ;
	setAttr ".pt[209]" -type "float3" -0.0004661752 -6.1353574e-005 0 ;
	setAttr ".pt[215]" -type "float3" -0.0004661752 -2.4529838e-005 0 ;
	setAttr ".pt[217]" -type "float3" -0.0070916167 0 0 ;
	setAttr ".pt[218]" -type "float3" -0.039980706 0 2.220446e-016 ;
	setAttr ".pt[219]" -type "float3" -0.092710868 -7.929351e-005 6.6613381e-016 ;
	setAttr ".pt[220]" -type "float3" -0.14399824 -0.00036163614 1.110223e-015 ;
	setAttr ".pt[221]" -type "float3" -0.17084418 -0.00046926877 1.3322676e-015 ;
	setAttr ".pt[222]" -type "float3" -0.16040218 -0.00032200129 1.3322676e-015 ;
	setAttr ".pt[223]" -type "float3" -0.1181574 -0.0001172327 9.9920072e-016 ;
	setAttr ".pt[224]" -type "float3" -0.063811511 0 5.5511151e-016 ;
	setAttr ".pt[225]" -type "float3" -0.020147696 0 1.6653345e-016 ;
	setAttr ".pt[226]" -type "float3" -0.00077092904 0 1.3877788e-017 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder6";
	rename -uid "35C8F7C9-C049-0B78-58D0-55BC0F1F9DE6";
	setAttr ".t" -type "double3" -0.30882955633599263 7.939267643541486 1.8780678797934185 ;
	setAttr ".r" -type "double3" -8.2464892144642317 0 0 ;
	setAttr ".s" -type "double3" 0.14042032001693161 0.8790525757949148 0.14042032001693161 ;
createNode transform -n "transform5" -p "pCylinder6";
	rename -uid "FF44E94E-6A41-FCF2-6537-089B2FFFD60C";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform5";
	rename -uid "75EEB85A-8F44-2C5D-08F1-9B9306498A5E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41249996423721313 0.68843960762023926 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[380:419]" -type "float3"  0.0043794969 0.0068909028 
		0.016340503 0.0083073946 0.010372452 0.03255235 0.012304574 0.014062244 0.051175646 
		0.014791132 0.017044893 0.065935403 0.014695047 0.018267287 0.07114961 0.012190142 
		0.017341057 0.065318577 0.0082153715 0.014576846 0.050415579 0.0042436221 0.010892173 
		0.031953935 0.0014879813 0.0072606308 0.016088666 0.00027662702 0.0043044183 0.0062006665 
		0 0.0022061269 0.002001591 0 0.00088365993 0.00080173346 0 0.00026868732 0.00024377655 
		0 7.5353382e-005 6.8367153e-005 0 0 0 0 7.5353382e-005 6.8367153e-005 0 0.00026868732 
		0.00024377655 0 0.00088365993 0.00080173346 0.00035568586 0.0021853065 0.0019827003 
		0.0016667648 0.0041383575 0.0062290449 0.017861731 0.017681416 0.059053864 0.026486691 
		0.024685133 0.09465161 0.033552036 0.031973671 0.12922785 0.037165374 0.037854291 
		0.15378219 0.036775623 0.04043977 0.16281345 0.032778472 0.038796235 0.1546368 0.025994165 
		0.033617057 0.13071893 0.01778066 0.026554393 0.096347563 0.010039081 0.019312756 
		0.06036412 0.0044219107 0.013025565 0.03166727 0.0014089284 0.0083266255 0.01425969 
		0.00022965201 0.0050948658 0.0058042221 0 0.0031837013 0.0028885314 0 0.0022616747 
		0.0020519886 0 0.002033585 0.0018450458 7.8118319e-005 0.0022682678 0.0020579705 
		0.00046557398 0.0030837378 0.0027978357 0.0017223416 0.0048493361 0.0056525799 0.0047215903 
		0.0077094478 0.013880501 0.010075351 0.011900526 0.030897092;
	setAttr ".dr" 1;
createNode transform -n "pCylinder7";
	rename -uid "2B57CD84-BB47-E03F-89BE-4A8CE47D4429";
createNode transform -n "transform35" -p "pCylinder7";
	rename -uid "47D21842-3D43-1B5B-ED1C-E39D5D6AA230";
	setAttr ".v" no;
createNode mesh -n "pCylinder7Shape" -p "transform35";
	rename -uid "94852D6A-E94F-EAB4-B6F7-088B96478849";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51874986290931702 0.50046980381011963 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[202:213]" -type "float3"  0 0 0.026653124 0 0 0.026653124 
		0 0 0.026653124 0 0 0.026653124 0 0 0.026653124 0 0 0.026653124 0 0 0.026653124 0 
		0 0.026653124 0 0 0.026653124 0 0 0.026653124 0 0 0.026653124 0 0 0.026653124;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCube3";
	rename -uid "B9062C9F-1F47-54E8-D341-A9AC57A4683B";
	setAttr ".t" -type "double3" 0.01505831171730021 4.4198773448065181 2.5517350476010225 ;
	setAttr ".r" -type "double3" -11.973431363200888 0 0 ;
	setAttr ".s" -type "double3" 0.20135381297559582 3.116570228387161 0.66080027355780768 ;
createNode transform -n "transform8" -p "pCube3";
	rename -uid "41C9FEA7-6F44-DC90-246A-A59E49112B5E";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform8";
	rename -uid "73BA20AA-574C-08D2-F9BD-0D82335B1507";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.23049734532833099 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".pt";
	setAttr ".pt[0]" -type "float3" -1.110223e-015 0.0018516863 0.51172578 ;
	setAttr ".pt[1]" -type "float3" -1.1701184e-015 0.0018516863 0.51172578 ;
	setAttr ".pt[2]" -type "float3" -1.2212453e-015 0.0018516863 0.51172578 ;
	setAttr ".pt[9]" -type "float3" -4.4408921e-016 -0.0044596838 0.72204244 ;
	setAttr ".pt[10]" -type "float3" -5.5137917e-016 -0.0044596838 0.72204244 ;
	setAttr ".pt[11]" -type "float3" -5.5511151e-016 -0.0044596838 0.72204244 ;
	setAttr ".pt[12]" -type "float3" -2.220446e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[16]" -type "float3" -2.7755576e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[17]" -type "float3" -2.7568958e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[18]" -type "float3" -4.4408921e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[22]" -type "float3" -4.4408921e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[27]" -type "float3" -4.4408921e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[30]" -type "float3" -8.8817842e-016 0.0018516863 0.51172578 ;
	setAttr ".pt[31]" -type "float3" -8.8817842e-016 -0.0044596838 0.72204244 ;
	setAttr ".pt[32]" -type "float3" -8.8817842e-016 0.0018516863 0.51172578 ;
	setAttr ".pt[33]" -type "float3" -8.8817842e-016 -0.0044596838 0.72204244 ;
	setAttr ".pt[34]" -type "float3" -8.8817842e-016 0.0018516863 0.51172578 ;
	setAttr ".pt[35]" -type "float3" -8.8817842e-016 -0.0044596838 0.72204244 ;
	setAttr ".pt[36]" -type "float3" -9.9920072e-016 -0.053379547 0.0092809033 ;
	setAttr ".pt[37]" -type "float3" -9.6387204e-016 -0.053379547 0.0092809033 ;
	setAttr ".pt[38]" -type "float3" -8.8817842e-016 -0.053379547 0.0092809033 ;
	setAttr ".pt[39]" -type "float3" -2.220446e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[40]" -type "float3" -2.7568958e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[41]" -type "float3" -2.7755576e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[42]" -type "float3" -8.8817842e-016 -0.053379547 0.0092809033 ;
	setAttr ".pt[43]" -type "float3" -4.4408921e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[44]" -type "float3" -4.4408921e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[45]" -type "float3" -4.4408921e-016 -0.0078153461 0.17380878 ;
	setAttr ".pt[46]" -type "float3" -8.8817842e-016 -0.053379547 0.0092809033 ;
	setAttr ".pt[47]" -type "float3" -8.8817842e-016 -0.053379547 0.0092809033 ;
	setAttr ".pt[48]" -type "float3" -6.6613381e-016 -0.036486175 -0.16832548 ;
	setAttr ".pt[49]" -type "float3" -6.1873925e-016 -0.036486175 -0.16832548 ;
	setAttr ".pt[50]" -type "float3" -6.6613381e-016 -0.036486175 -0.16832548 ;
	setAttr ".pt[51]" -type "float3" 0 -0.011367778 0.2528128 ;
	setAttr ".pt[52]" -type "float3" 0 -0.011367778 0.2528128 ;
	setAttr ".pt[53]" -type "float3" 0 -0.011367778 0.2528128 ;
	setAttr ".pt[54]" -type "float3" -1.831868e-015 -0.002281772 0.074998356 ;
	setAttr ".pt[55]" -type "float3" -1.7909406e-015 -0.002281772 0.074998356 ;
	setAttr ".pt[56]" -type "float3" -1.5543122e-015 -0.002281772 0.074998356 ;
	setAttr ".pt[57]" -type "float3" -6.6613381e-016 -0.0031425487 0.45917696 ;
	setAttr ".pt[58]" -type "float3" -8.2706875e-016 -0.0031425487 0.45917696 ;
	setAttr ".pt[59]" -type "float3" -8.3266727e-016 -0.0031425487 0.45917696 ;
	setAttr ".pt[60]" -type "float3" -7.7715612e-016 0.039165284 0.29685214 ;
	setAttr ".pt[61]" -type "float3" -7.576256e-016 0.039165284 0.29685214 ;
	setAttr ".pt[62]" -type "float3" -6.6613381e-016 0.039165284 0.29685214 ;
	setAttr ".pt[63]" -type "float3" -4.4408921e-016 0.016554292 0.64399213 ;
	setAttr ".pt[64]" -type "float3" -5.5137917e-016 0.016554292 0.64399213 ;
	setAttr ".pt[65]" -type "float3" -5.5511151e-016 0.016554292 0.64399213 ;
	setAttr ".pt[66]" -type "float3" 0 -0.036486175 -0.16832548 ;
	setAttr ".pt[67]" -type "float3" 0 -0.011367778 0.2528128 ;
	setAttr ".pt[68]" -type "float3" 0 -0.011367778 0.2528128 ;
	setAttr ".pt[69]" -type "float3" 0 -0.011367778 0.2528128 ;
	setAttr ".pt[70]" -type "float3" 0 -0.036486175 -0.16832548 ;
	setAttr ".pt[71]" -type "float3" 0 -0.036486175 -0.16832548 ;
	setAttr ".pt[72]" -type "float3" -2.220446e-015 -0.002281772 0.074998356 ;
	setAttr ".pt[73]" -type "float3" -1.3322676e-015 -0.0031425487 0.45917696 ;
	setAttr ".pt[74]" -type "float3" -1.3322676e-015 -0.0031425487 0.45917696 ;
	setAttr ".pt[75]" -type "float3" -1.3322676e-015 -0.0031425487 0.45917696 ;
	setAttr ".pt[76]" -type "float3" -2.220446e-015 -0.002281772 0.074998356 ;
	setAttr ".pt[77]" -type "float3" -2.220446e-015 -0.002281772 0.074998356 ;
	setAttr ".pt[78]" -type "float3" -8.8817842e-016 0.039165284 0.29685214 ;
	setAttr ".pt[79]" -type "float3" -8.8817842e-016 0.016554292 0.64399213 ;
	setAttr ".pt[80]" -type "float3" -8.8817842e-016 0.016554292 0.64399213 ;
	setAttr ".pt[81]" -type "float3" -8.8817842e-016 0.016554292 0.64399213 ;
	setAttr ".pt[82]" -type "float3" -8.8817842e-016 0.039165284 0.29685214 ;
	setAttr ".pt[83]" -type "float3" -8.8817842e-016 0.039165284 0.29685214 ;
	setAttr ".dr" 1;
createNode transform -n "pCube4";
	rename -uid "178EEFF0-6348-350A-6A8F-FBB682B37DA4";
createNode transform -n "transform34" -p "pCube4";
	rename -uid "77602EF5-4D4D-DA01-B0A3-28A357D12B79";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform34";
	rename -uid "2E60833C-654B-C40C-353C-ACA69B1459B9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.2304973378777504 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 155 ".pt";
	setAttr ".pt[0]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[1]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.18893087 0 0 ;
	setAttr ".pt[4]" -type "float3" 0.27693999 0 0 ;
	setAttr ".pt[5]" -type "float3" 0.33984691 0 0 ;
	setAttr ".pt[6]" -type "float3" 0.18893087 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.27693999 0 0 ;
	setAttr ".pt[8]" -type "float3" 0.33984691 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[11]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[16]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[18]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.18327597 0 0 ;
	setAttr ".pt[21]" -type "float3" -0.18327597 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.3376013 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.3376013 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.27933234 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.27933234 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[33]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[35]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[36]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[37]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[38]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[39]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[40]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[41]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[42]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[43]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[44]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[45]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[46]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[47]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[48]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[49]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[50]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[51]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[52]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[53]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[54]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[55]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[56]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[57]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[58]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[59]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[60]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[61]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[62]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[63]" -type "float3" 0.4308736 0 0 ;
	setAttr ".pt[64]" -type "float3" 0.4052099 0 0 ;
	setAttr ".pt[65]" -type "float3" 0.36494917 0 0 ;
	setAttr ".pt[66]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[67]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[68]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[69]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[70]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[71]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[72]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[73]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[74]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[75]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[76]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[77]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[78]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[79]" -type "float3" -0.44091788 0 0 ;
	setAttr ".pt[80]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[81]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[82]" -type "float3" -0.36494917 0 0 ;
	setAttr ".pt[83]" -type "float3" -0.39647424 0 0 ;
	setAttr ".pt[191]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[192]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[193]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[194]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[195]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[196]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[197]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[198]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[199]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[211]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[212]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[213]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[214]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[215]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[216]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[217]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[218]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[219]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[224]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[230]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[232]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[252]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[254]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[270]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[271]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[321]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[322]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[355]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[356]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[372]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[373]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".pt[625]" -type "float3" -0.13488123 0.016538726 -0.01408071 ;
	setAttr ".pt[626]" -type "float3" -0.083533838 0.050884627 -0.014080769 ;
	setAttr ".pt[627]" -type "float3" -0.083533838 -0.1452982 -0.22848974 ;
	setAttr ".pt[628]" -type "float3" -0.13488123 -0.16713147 -0.22848956 ;
	setAttr ".pt[629]" -type "float3" -0.13116725 -0.22902431 -0.16710585 ;
	setAttr ".pt[630]" -type "float3" -0.083533838 -0.27739203 -0.16710585 ;
	setAttr ".pt[631]" -type "float3" -0.083533838 -0.11405329 -0.014818004 ;
	setAttr ".pt[632]" -type "float3" -0.13116725 -0.065685704 -0.015788659 ;
	setAttr ".pt[633]" -type "float3" 0.13076502 -0.22499005 -0.16710556 ;
	setAttr ".pt[634]" -type "float3" 0.13076502 -0.061651289 -0.015788659 ;
	setAttr ".pt[635]" -type "float3" 0.14738847 -0.18549629 -0.20888917 ;
	setAttr ".pt[636]" -type "float3" 0.14738847 -0.024147239 -0.015420048 ;
	setAttr ".pt[637]" -type "float3" 0.13522588 -0.16511627 -0.22848944 ;
	setAttr ".pt[638]" -type "float3" 0.13522588 0.020589681 -0.014080769 ;
	setAttr ".pt[639]" -type "float3" -0.14738847 -0.024147239 -0.015420048 ;
	setAttr ".pt[640]" -type "float3" -0.14738847 -0.18549614 -0.20888944 ;
	setAttr ".pt[641]" -type "float3" -0.0086647514 0.073901922 -0.01408071 ;
	setAttr ".pt[642]" -type "float3" -0.0086647514 -0.12228101 -0.22848956 ;
	setAttr ".pt[643]" -type "float3" 0.015187762 0.066983402 -0.01408071 ;
	setAttr ".pt[644]" -type "float3" 0.015187762 -0.12919946 -0.22848944 ;
	setAttr ".pt[645]" -type "float3" -0.0086647514 -0.29461619 -0.1671057 ;
	setAttr ".pt[646]" -type "float3" -0.0086647514 -0.13127731 -0.014818004 ;
	setAttr ".pt[647]" -type "float3" 0.015187762 -0.28949341 -0.1671057 ;
	setAttr ".pt[648]" -type "float3" 0.015187762 -0.12615456 -0.01481796 ;
	setAttr ".pt[649]" -type "float3" 0.071533911 0.050640263 -0.014080769 ;
	setAttr ".pt[650]" -type "float3" 0.071533911 -0.14554267 -0.22848944 ;
	setAttr ".pt[651]" -type "float3" 0.071533911 -0.277392 -0.1671057 ;
	setAttr ".pt[652]" -type "float3" 0.071533911 -0.11405323 -0.014818004 ;
	setAttr ".pt[653]" -type "float3" -0.053136237 0.060229793 -0.014080769 ;
	setAttr ".pt[654]" -type "float3" -0.053136237 -0.13595296 -0.22848974 ;
	setAttr ".pt[655]" -type "float3" -0.053136237 -0.2843852 -0.16710585 ;
	setAttr ".pt[656]" -type "float3" -0.053136237 -0.12104639 -0.014818004 ;
	setAttr ".pt[657]" -type "float3" 0.043458555 0.058783501 -0.014080769 ;
	setAttr ".pt[658]" -type "float3" 0.043458555 -0.13739942 -0.22848944 ;
	setAttr ".pt[659]" -type "float3" 0.043458555 -0.2834217 -0.1671057 ;
	setAttr ".pt[660]" -type "float3" 0.043458555 -0.12008294 -0.014818004 ;
	setAttr ".pt[661]" -type "float3" -0.033247039 0.06634447 -0.014080769 ;
	setAttr ".pt[662]" -type "float3" -0.033247039 -0.12983839 -0.22848974 ;
	setAttr ".pt[663]" -type "float3" -0.033247039 -0.28896084 -0.16710585 ;
	setAttr ".pt[664]" -type "float3" -0.033247039 -0.12562199 -0.014818004 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCube5";
	rename -uid "73905B94-804F-3B40-189D-918585E402EB";
	setAttr ".t" -type "double3" -0.36392080231367441 2.72663969329825 -4.7896021242164588 ;
	setAttr ".s" -type "double3" 5.1400338750326604 0.2244370630960322 2.1679164070095154 ;
createNode transform -n "transform32" -p "pCube5";
	rename -uid "C5D88D1E-464B-0C18-876C-5DBC47EBA555";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform32";
	rename -uid "0864A257-A14C-0439-21FC-24AA96128D90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50343409180641174 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pPipe1";
	rename -uid "23EC543D-7947-837A-0B4E-FF893B74AD7D";
	setAttr ".t" -type "double3" 2.8104312206817696 3.1955030703447163 8.3541689605724834 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1.7263552337778032 0.2647340165247265 1.7263552337778032 ;
createNode transform -n "transform24" -p "pPipe1";
	rename -uid "9D1E7B11-AF4A-E8B4-C90F-E4AE81F9CB27";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform24";
	rename -uid "AFB43E2E-4C4A-409F-8261-629D4A22AEB7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  0.43627536 -0.016152363 -7.8012135e-008 
		0.41492248 -0.016152363 -0.13481647 0.35295412 -0.016152363 -0.25643626 0.25643617 
		-0.016152363 -0.35295415 0.13481647 -0.016152363 -0.41492245 3.9006068e-008 -0.016152363 
		-0.43627542 -0.13481639 -0.016152363 -0.41492251 -0.25643611 -0.016152363 -0.35295415 
		-0.35295412 -0.016152363 -0.25643626 -0.41492248 -0.016152363 -0.13481656 -0.43627536 
		-0.016152363 -7.8012135e-008 -0.41492248 -0.016152363 0.13481636 -0.35295412 -0.016152363 
		0.25643614 -0.25643617 -0.016152363 0.35295412 -0.13481639 -0.016152363 0.41492245 
		5.2008076e-008 -0.016152363 0.43627539 0.13481657 -0.016152363 0.41492248 0.25643641 
		-0.016152363 0.35295415 0.35295442 -0.016152363 0.25643623 0.41492283 -0.016152363 
		0.13481639 0.43627536 0.016152363 -7.8012135e-008 0.41492248 0.016152363 -0.13481647 
		0.35295412 0.016152363 -0.25643626 0.25643617 0.016152363 -0.35295415 0.13481647 
		0.016152363 -0.41492245 3.9006068e-008 0.016152363 -0.43627542 -0.13481639 0.016152363 
		-0.41492251 -0.25643611 0.016152363 -0.35295415 -0.35295412 0.016152363 -0.25643626 
		-0.41492248 0.016152363 -0.13481656 -0.43627536 0.016152363 -7.8012135e-008 -0.41492248 
		0.016152363 0.13481636 -0.35295412 0.016152363 0.25643614 -0.25643617 0.016152363 
		0.35295412 -0.13481639 0.016152363 0.41492245 5.2008076e-008 0.016152363 0.43627539 
		0.13481657 0.016152363 0.41492248 0.25643641 0.016152363 0.35295415 0.35295442 0.016152363 
		0.25643623 0.41492283 0.016152363 0.13481639;
	setAttr ".dr" 1;
createNode transform -n "pPipe2";
	rename -uid "3F428924-5A40-1046-9B8D-439EC1419348";
	setAttr ".t" -type "double3" 2.8142506876845417 3.1890213544076986 8.3488468954249377 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.30369254837969251 0.30369254837969251 0.30369254837969251 ;
createNode transform -n "transform23" -p "pPipe2";
	rename -uid "01E55E14-7A4C-DD93-3AC9-2D931B64C46E";
	setAttr ".v" no;
createNode mesh -n "pPipeShape2" -p "transform23";
	rename -uid "20B40EB4-6046-C427-B99B-80A2A5CD9003";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder8";
	rename -uid "950902F3-7443-6B44-B057-1EA62DA335BB";
	setAttr ".t" -type "double3" 2.8456739114448215 4.1043912916658769 8.6715391310086929 ;
	setAttr ".r" -type "double3" 18.496472545545824 -0.13313824744298894 0.66746664879086426 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.71311399092217764 0.042024737434121225 ;
createNode transform -n "transform20" -p "pCylinder8";
	rename -uid "F060E71D-3D48-4877-C2EF-C79FCC7A1290";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape5" -p "transform20";
	rename -uid "64CFA4B6-294D-5066-9BE4-5B9E6FA70D07";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder9";
	rename -uid "524A0539-EB4F-7151-B4F2-ECBD5CB49B3F";
	setAttr ".t" -type "double3" 2.8456739114448215 3.4248154489622697 9.2543932901053729 ;
	setAttr ".r" -type "double3" 73.738917748987348 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.73923967352801867 0.042024737434121225 ;
createNode transform -n "transform15" -p "pCylinder9";
	rename -uid "2D832ED6-334B-3995-6D93-898E5D893021";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape9" -p "transform15";
	rename -uid "ED884F7E-5141-A3A4-B3EA-C6A7A1D1A6FA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder10";
	rename -uid "9E734C8A-8544-66B7-1223-9B9800E2490A";
	setAttr ".t" -type "double3" 2.8456739114448215 2.9511400972824449 7.425766962483106 ;
	setAttr ".r" -type "double3" 76.772998887388937 0.059667506425947085 -0.10569217377449204 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.72555421277631771 0.042024737434121225 ;
createNode transform -n "transform18" -p "pCylinder10";
	rename -uid "EA8DCDB8-A944-B902-E96E-BA93A1F2BFD1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape10" -p "transform18";
	rename -uid "050148B1-1945-933D-CEF2-41904748C38B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder11";
	rename -uid "70781DED-F24B-35F2-D4D6-D99ED0FEB843";
	setAttr ".t" -type "double3" 2.8456739114448215 3.8440147489021648 7.6260544642351631 ;
	setAttr ".r" -type "double3" 133.96644576958965 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.69825025817026265 0.042024737434121225 ;
createNode transform -n "transform19" -p "pCylinder11";
	rename -uid "66BA9799-6043-6A4F-0A62-F88A02C071C9";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape11" -p "transform19";
	rename -uid "1092C4D3-F543-761A-4C98-998B191CA07A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder12";
	rename -uid "DD79F8BC-4A4A-0236-7D09-F280E78B1536";
	setAttr ".t" -type "double3" 2.8456739114448215 2.2686461937293916 8.0213980055839542 ;
	setAttr ".r" -type "double3" 19.09236371474363 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.72555421277631771 0.042024737434121225 ;
createNode transform -n "transform17" -p "pCylinder12";
	rename -uid "3B2EAFAF-9149-F260-C83D-DDB49DF54855";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape12" -p "transform17";
	rename -uid "F8ABA517-6247-E088-EB1E-37978F4E3FF4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder13";
	rename -uid "30335C6C-C243-0AF5-E1C1-1BAAA092F614";
	setAttr ".t" -type "double3" 2.8456739114448215 2.4671898747630077 8.9768894705582269 ;
	setAttr ".r" -type "double3" -41.266787281255787 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.72555421277631771 0.042024737434121225 ;
createNode transform -n "transform16" -p "pCylinder13";
	rename -uid "D7C833D0-514D-B304-2AB9-0BA930CDD9A6";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape13" -p "transform16";
	rename -uid "98603D11-F540-5E7B-5981-5BACEA7D17D9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder14";
	rename -uid "1E0467E9-F148-FD64-A9CE-948350DCF362";
	setAttr ".t" -type "double3" 2.7062016363437564 4.1043912916658769 8.6715391310086929 ;
	setAttr ".r" -type "double3" 18.496472545545824 -0.13313824744298894 0.66746664879086426 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.71311399092217764 0.042024737434121225 ;
createNode transform -n "transform14" -p "pCylinder14";
	rename -uid "2DCBA76F-5446-DD44-FD7F-6E8613A7F1D0";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape14" -p "transform14";
	rename -uid "F6DDEA18-E74D-3009-BE51-599704F5C6E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder15";
	rename -uid "22A18CB7-1B4D-7285-13C5-25A6B14FE1C9";
	setAttr ".t" -type "double3" 2.7062016363437564 3.4248154489622697 9.2543932901053729 ;
	setAttr ".r" -type "double3" 73.738917748987348 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.73923967352801867 0.042024737434121225 ;
createNode transform -n "transform13" -p "pCylinder15";
	rename -uid "D43F3DDC-5C46-ED00-C062-4697E4E62930";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape15" -p "transform13";
	rename -uid "3702BD08-0A4A-5DF9-E87E-C9BB80FDD27A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder16";
	rename -uid "FE7BFBF0-9A41-D515-8B50-CABA0CB8C827";
	setAttr ".t" -type "double3" 2.7062016363437564 2.4671898747630077 8.9768894705582269 ;
	setAttr ".r" -type "double3" -41.266787281255787 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.72555421277631771 0.042024737434121225 ;
createNode transform -n "transform12" -p "pCylinder16";
	rename -uid "45670843-E54C-1C76-86BE-768E61BA2EF4";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape16" -p "transform12";
	rename -uid "18B0190E-0C4C-4956-3F60-E4AE3D8E902C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder17";
	rename -uid "413C4C5C-D04E-7EBE-614C-FB8530177F68";
	setAttr ".t" -type "double3" 2.7062016363437564 2.2686461937293916 8.0213980055839542 ;
	setAttr ".r" -type "double3" 19.09236371474363 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.72555421277631771 0.042024737434121225 ;
createNode transform -n "transform11" -p "pCylinder17";
	rename -uid "62D9F277-0344-14BF-5940-9CB468C4C5D6";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape17" -p "transform11";
	rename -uid "E014D4F4-FA43-E908-E9CA-5C8D5D95F107";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder18";
	rename -uid "14296215-9843-FDEF-527D-A491A10A964C";
	setAttr ".t" -type "double3" 2.7062016363437564 2.9511400972824449 7.425766962483106 ;
	setAttr ".r" -type "double3" 76.772998887388937 0.059667506425947085 -0.10569217377449204 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.72555421277631771 0.042024737434121225 ;
createNode transform -n "transform10" -p "pCylinder18";
	rename -uid "067340FD-EF48-A02B-A6BD-E6A6B9BFEAD5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape18" -p "transform10";
	rename -uid "6F42C797-E544-B44D-29DD-09949DDC9C80";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder19";
	rename -uid "BAA3399D-784A-9225-C524-AD9D01258F0B";
	setAttr ".t" -type "double3" 2.7062016363437564 3.8440147489021648 7.6260544642351631 ;
	setAttr ".r" -type "double3" 133.96644576958965 0 0 ;
	setAttr ".s" -type "double3" 0.042024737434121225 0.69825025817026265 0.042024737434121225 ;
createNode transform -n "transform9" -p "pCylinder19";
	rename -uid "1BE1B6D7-874A-6E6B-A27F-028D8029E548";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape19" -p "transform9";
	rename -uid "9344CC77-EB4D-D91C-4D1A-B9B32366F8DB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder20";
	rename -uid "5157FE21-9940-A98A-403B-9990ECD1F8CC";
	setAttr ".t" -type "double3" 0.089023190185884005 11.521296951617217 5.2056996615392963 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "transform22" -p "pCylinder20";
	rename -uid "6CB86767-2744-2BF5-0720-CEA4F7E5952E";
	setAttr ".v" no;
createNode mesh -n "pCylinder20Shape" -p "transform22";
	rename -uid "7BF59D86-6940-AC62-F548-54B30C394CB4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder21";
	rename -uid "580B234A-5841-633D-25FE-739A8348DA84";
createNode transform -n "transform21" -p "pCylinder21";
	rename -uid "2CB1D776-9547-AEB6-FDDB-78974B56E616";
	setAttr ".v" no;
createNode mesh -n "pCylinder21Shape" -p "transform21";
	rename -uid "DEAC81B3-F845-E251-3BF3-508DD7A48427";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "TWheel03:pCylinder1";
	rename -uid "13C79C9E-6646-3DC1-A8DB-AD9F2A6629EE";
	setAttr ".t" -type "double3" 0 6.2239269433136712 57.41255227056223 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 4.445913838668158 1.14061221064152 4.445913838668158 ;
createNode transform -n "TWheel03:transform1" -p "TWheel03:pCylinder1";
	rename -uid "2AF6C1A8-944A-0E44-3257-28B294EDCDC6";
	setAttr ".v" no;
createNode mesh -n "TWheel03:pCylinderShape1" -p "TWheel03:transform1";
	rename -uid "051D0CE0-5B4C-EDBB-00F1-E096D33F2CD9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 81 ".pt";
	setAttr ".pt[307]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[312]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[314]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[320]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[322]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[324]" -type "float3" 0 -0.14733963 -3.812042e-017 ;
	setAttr ".pt[326]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[328]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[330]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[332]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[334]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[336]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[338]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[340]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[342]" -type "float3" 0 -0.14733963 0 ;
	setAttr ".pt[344]" -type "float3" 0 -0.14733963 -3.812042e-017 ;
	setAttr ".pt[345]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[346]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[347]" -type "float3" 0 -0.73140895 -1.1938618e-017 ;
	setAttr ".pt[348]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[349]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[350]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[351]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[352]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[353]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[354]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[355]" -type "float3" 0 -0.73140943 -1.1938618e-017 ;
	setAttr ".pt[356]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[357]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[358]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[359]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[360]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[361]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[362]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[363]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[364]" -type "float3" 0 -0.73140943 0 ;
	setAttr ".pt[365]" -type "float3" 0 -0.73140943 -1.1938618e-017 ;
	setAttr ".pt[446]" -type "float3" -0.40951556 -0.058435988 -0.56364995 ;
	setAttr ".pt[447]" -type "float3" -0.21529511 -0.058435988 -0.66261023 ;
	setAttr ".pt[448]" -type "float3" -0.40951556 0.058435988 -0.56364995 ;
	setAttr ".pt[449]" -type "float3" -0.21529511 0.058435988 -0.66261023 ;
	setAttr ".pt[450]" -type "float3" 8.2415511e-008 -0.058435988 -0.69670981 ;
	setAttr ".pt[451]" -type "float3" 8.2415511e-008 0.058435988 -0.69670981 ;
	setAttr ".pt[452]" -type "float3" 0.2152952 -0.058435988 -0.66261023 ;
	setAttr ".pt[453]" -type "float3" 0.2152952 0.058435988 -0.66261023 ;
	setAttr ".pt[454]" -type "float3" 0.40951595 -0.058435988 -0.56365013 ;
	setAttr ".pt[455]" -type "float3" 0.40951595 0.058435988 -0.56365013 ;
	setAttr ".pt[456]" -type "float3" 0.56365025 -0.058435988 -0.40951556 ;
	setAttr ".pt[457]" -type "float3" 0.56365025 0.058435988 -0.40951556 ;
	setAttr ".pt[458]" -type "float3" 0.66261071 -0.058435988 -0.21529509 ;
	setAttr ".pt[459]" -type "float3" 0.66261071 0.058435988 -0.21529509 ;
	setAttr ".pt[460]" -type "float3" 0.69670975 -0.058435988 1.2362329e-007 ;
	setAttr ".pt[461]" -type "float3" 0.69670975 0.058435988 1.2362329e-007 ;
	setAttr ".pt[462]" -type "float3" 0.66260999 -0.058435988 0.21529514 ;
	setAttr ".pt[463]" -type "float3" 0.66260999 0.058435988 0.21529514 ;
	setAttr ".pt[464]" -type "float3" 0.56364995 -0.058435988 0.40951583 ;
	setAttr ".pt[465]" -type "float3" 0.56364995 0.058435988 0.40951583 ;
	setAttr ".pt[466]" -type "float3" 0.40951556 -0.058435988 0.56365001 ;
	setAttr ".pt[467]" -type "float3" 0.40951556 0.058435988 0.56365001 ;
	setAttr ".pt[468]" -type "float3" 0.21529512 -0.058435988 0.66261023 ;
	setAttr ".pt[469]" -type "float3" 0.21529512 0.058435988 0.66261023 ;
	setAttr ".pt[470]" -type "float3" 6.1651953e-008 -0.058435988 0.69670981 ;
	setAttr ".pt[471]" -type "float3" 6.1651953e-008 0.058435988 0.69670981 ;
	setAttr ".pt[472]" -type "float3" -0.21529508 -0.058435988 0.66261029 ;
	setAttr ".pt[473]" -type "float3" -0.21529508 0.058435988 0.66261029 ;
	setAttr ".pt[474]" -type "float3" -0.40951544 -0.058435988 0.56365013 ;
	setAttr ".pt[475]" -type "float3" -0.40951544 0.058435988 0.56365013 ;
	setAttr ".pt[476]" -type "float3" -0.56364995 -0.058435988 0.40951583 ;
	setAttr ".pt[477]" -type "float3" -0.56364995 0.058435988 0.40951583 ;
	setAttr ".pt[478]" -type "float3" -0.66260999 -0.058435988 0.2152952 ;
	setAttr ".pt[479]" -type "float3" -0.66260999 0.058435988 0.2152952 ;
	setAttr ".pt[480]" -type "float3" -0.69670975 -0.058435988 1.2362329e-007 ;
	setAttr ".pt[481]" -type "float3" -0.69670975 0.058435988 1.2362329e-007 ;
	setAttr ".pt[482]" -type "float3" -0.66260999 -0.058435988 -0.21529502 ;
	setAttr ".pt[483]" -type "float3" -0.66260999 0.058435988 -0.21529502 ;
	setAttr ".pt[484]" -type "float3" -0.56364995 -0.058435988 -0.40951553 ;
	setAttr ".pt[485]" -type "float3" -0.56364995 0.058435988 -0.40951553 ;
	setAttr ".dr" 1;
createNode transform -n "TWheel03:pTorus2";
	rename -uid "3C60681A-0141-A2DA-DB9B-B994E5820ADA";
	setAttr ".t" -type "double3" 0.017641219127241925 4.7384753987605777 52.919679113128005 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 9.0487546916729542 7.6770103477633302 9.0487546916729542 ;
createNode transform -n "TWheel03:transform2" -p "TWheel03:pTorus2";
	rename -uid "19809AB3-8C40-105E-CC6C-D0A8063DD1F4";
	setAttr ".v" no;
createNode mesh -n "TWheel03:pTorusShape2" -p "TWheel03:transform2";
	rename -uid "BB03C9B2-8D41-014F-F8CA-5096CD36FD64";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65000009536743164 0.47499987483024597 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 200 ".pt";
	setAttr ".pt[20:185]" -type "float3"  0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0;
	setAttr ".pt[186:219]" 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 
		0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 1.8528895 0 0 0.91444856 0 0 0.91444856 
		0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 
		0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 
		0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 0 0 0.91444856 
		0;
	setAttr ".dr" 1;
createNode transform -n "TWheel03:pTorus3";
	rename -uid "5241F796-EB4C-45F5-1290-B6997F029264";
	setAttr ".t" -type "double3" 2.5912855768048009 -1.9479875007892966 -65.708786946789658 ;
	setAttr ".r" -type "double3" 0 87.63963254277202 0 ;
	setAttr ".s" -type "double3" 0.026242829434069158 0.026242829434069158 0.026242829434069158 ;
	setAttr ".rp" -type "double3" 0.017637252807617188 4.7384853363037109 60.977676391601563 ;
	setAttr ".sp" -type "double3" 0.017637252807617188 4.7384853363037109 60.977676391601563 ;
createNode transform -n "TWheel03:transform4" -p "TWheel03:pTorus3";
	rename -uid "F4252B9A-924E-8411-C6AB-47AB207D554B";
	setAttr ".v" no;
createNode mesh -n "TWheel03:pTorus2Shape" -p "TWheel03:transform4";
	rename -uid "C2EBF523-4042-09EE-8493-80A367F9F954";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pTorus3";
	rename -uid "727B88BB-A44B-CC37-A965-D3B8731510B2";
	setAttr ".t" -type "double3" -3.2151560850515697 -1.9479875007892966 -65.708786946789658 ;
	setAttr ".r" -type "double3" 180 87.63963254277202 0 ;
	setAttr ".s" -type "double3" -0.026424529885621384 0.026424529885621384 0.026424529885621384 ;
	setAttr ".rp" -type "double3" 0.017637252807617188 4.7384853363037109 60.977676391601563 ;
	setAttr ".sp" -type "double3" 0.017637252807617188 4.7384853363037109 60.977676391601563 ;
createNode transform -n "TWheel03:transform3" -p "pTorus3";
	rename -uid "BA6991E4-A14F-AD59-EB6A-E49AB3959B12";
	setAttr ".v" no;
createNode mesh -n "pTorus2Shape3" -p "TWheel03:transform3";
	rename -uid "793A5898-904D-85C5-B366-56A3DE14B7B5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:903]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 975 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 0 0.94999999 0.050000001 0.94999999 0.1 0.94999999
		 0.15000001 0.94999999 0.2 0.94999999 0.25 0.94999999 0.30000001 0.94999999 0.35000002
		 0.94999999 0.40000004 0.94999999 0.45000005 0.94999999 0.50000006 0.94999999 0.55000007
		 0.94999999 0.60000008 0.94999999 0.6500001 0.94999999 0.70000011 0.94999999 0.75000012
		 0.94999999 0.80000013 0.94999999 0.85000014 0.94999999 0.90000015 0.94999999 0.95000017
		 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998
		 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002
		 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007
		 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.75000012
		 0.89999998 0.80000013 0.89999998 0.85000014 0.89999998 0.90000015 0.89999998 0.95000017
		 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996
		 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002
		 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007
		 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.75000012
		 0.84999996 0.80000013 0.84999996 0.85000014 0.84999996 0.90000015 0.84999996 0.95000017
		 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995
		 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002
		 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007
		 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.75000012
		 0.79999995 0.80000013 0.79999995 0.85000014 0.79999995 0.90000015 0.79999995 0.95000017
		 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994
		 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002
		 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007
		 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.75000012
		 0.74999994 0.80000013 0.74999994 0.85000014 0.74999994 0.90000015 0.74999994 0.95000017
		 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993
		 0.15000001 0.69999993 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002
		 0.69999993 0.40000004 0.69999993 0.45000005 0.69999993 0.50000006 0.69999993 0.55000007
		 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993 0.75000012
		 0.69999993 0.80000013 0.69999993 0.85000014 0.69999993 0.90000015 0.69999993 0.95000017
		 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992
		 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992 0.35000002
		 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007
		 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992 0.75000012
		 0.64999992 0.80000013 0.64999992 0.85000014 0.64999992 0.90000015 0.64999992 0.95000017
		 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999
		 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999 0.35000002
		 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999 0.55000007
		 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999 0.75000012
		 0.5999999 0.80000013 0.5999999 0.85000014 0.5999999 0.90000015 0.5999999 0.95000017
		 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989 0.1 0.54999989
		 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989 0.35000002
		 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989 0.55000007
		 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989 0.75000012
		 0.54999989 0.80000013 0.54999989 0.85000014 0.54999989 0.90000015 0.54999989 0.95000017
		 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988 0.1 0.49999988
		 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988 0.35000002
		 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988 0.55000007
		 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988 0.75000012
		 0.49999988 0.80000013 0.49999988 0.85000014 0.49999988 0.90000015 0.49999988 0.95000017
		 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987 0.1 0.44999987
		 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987 0.35000002
		 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987 0.55000007
		 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987 0.75000012
		 0.44999987 0.80000013 0.44999987 0.85000014 0.44999987 0.90000015 0.44999987;
	setAttr ".uvst[0].uvsp[250:499]" 0.95000017 0.44999987 1.000000119209 0.44999987
		 0 0.39999986 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986
		 0.25 0.39999986 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986
		 0.45000005 0.39999986 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986
		 0.6500001 0.39999986 0.70000011 0.39999986 0.75000012 0.39999986 0.80000013 0.39999986
		 0.85000014 0.39999986 0.90000015 0.39999986 0.95000017 0.39999986 1.000000119209
		 0.39999986 0 0.34999985 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985
		 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004
		 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008
		 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985 0.75000012 0.34999985 0.80000013
		 0.34999985 0.85000014 0.34999985 0.90000015 0.34999985 0.95000017 0.34999985 1.000000119209
		 0.34999985 0 0.29999983 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983
		 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004
		 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008
		 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983 0.75000012 0.29999983 0.80000013
		 0.29999983 0.85000014 0.29999983 0.90000015 0.29999983 0.95000017 0.29999983 1.000000119209
		 0.29999983 0 0.24999984 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984
		 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004
		 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008
		 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984 0.75000012 0.24999984 0.80000013
		 0.24999984 0.85000014 0.24999984 0.90000015 0.24999984 0.95000017 0.24999984 1.000000119209
		 0.24999984 0 0.19999984 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984
		 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004
		 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008
		 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984 0.75000012 0.19999984 0.80000013
		 0.19999984 0.85000014 0.19999984 0.90000015 0.19999984 0.95000017 0.19999984 1.000000119209
		 0.19999984 0 0.14999984 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984
		 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004
		 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008
		 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984 0.75000012 0.14999984 0.80000013
		 0.14999984 0.85000014 0.14999984 0.90000015 0.14999984 0.95000017 0.14999984 1.000000119209
		 0.14999984 0 0.099999845 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845
		 0.2 0.099999845 0.25 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004
		 0.099999845 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845
		 0.60000008 0.099999845 0.6500001 0.099999845 0.70000011 0.099999845 0.75000012 0.099999845
		 0.80000013 0.099999845 0.85000014 0.099999845 0.90000015 0.099999845 0.95000017 0.099999845
		 1.000000119209 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844
		 0.15000001 0.049999844 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002
		 0.049999844 0.40000004 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844
		 0.55000007 0.049999844 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844
		 0.75000012 0.049999844 0.80000013 0.049999844 0.85000014 0.049999844 0.90000015 0.049999844
		 0.95000017 0.049999844 1.000000119209 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007
		 0.1 -1.5646219e-007 0.15000001 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007
		 0.30000001 -1.5646219e-007 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007
		 0.45000005 -1.5646219e-007 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007
		 0.60000008 -1.5646219e-007 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.75000012
		 -1.5646219e-007 0.80000013 -1.5646219e-007 0.85000014 -1.5646219e-007 0.90000015
		 -1.5646219e-007 0.95000017 -1.5646219e-007 1.000000119209 -1.5646219e-007 0.51857531
		 0.15021451 0.51580113 0.14476982 0.53160226 0.13328962 0.53715068 0.14417902 0.51148021
		 0.14044888 0.52296036 0.12464775 0.50603551 0.13767466 0.51207095 0.11909933 0.5
		 0.13671874 0.5 0.11718749 0.49396452 0.13767467 0.48792902 0.11909933 0.48851982
		 0.14044888 0.47703964 0.12464777 0.48419887 0.14476982 0.46839777 0.13328964 0.48142466
		 0.15021451 0.46284935 0.14417902 0.48046875 0.15625 0.4609375 0.15625 0.48142466
		 0.16228549 0.46284935 0.16832098 0.48419887 0.16773018 0.46839777 0.17921036 0.48851982
		 0.17205112 0.47703964 0.18785223 0.49396452 0.17482533 0.48792902 0.19340065 0.5
		 0.17578125 0.5 0.1953125 0.50603551 0.17482533 0.51207095 0.19340065 0.51148015 0.17205112
		 0.52296036 0.18785223 0.51580113 0.16773018 0.5316022 0.17921036 0.51857531 0.16228549
		 0.53715062 0.16832098 0.51857531 0.16228549 0.51953125 0.15625 0.5390625 0.15625
		 0.53715062 0.16832098 0.51953125 0.15625 0.5390625 0.15625 0.5474034 0.12180944 0.55572599
		 0.13814352 0.53444058 0.10884663 0.51810646 0.10052401 0.5 0.09765622 0.48189354
		 0.10052401 0.46555945 0.10884664 0.45259663 0.12180945 0.44427401 0.13814354 0.44140625
		 0.15625 0.44427401 0.17435646 0.45259666 0.19069055 0.46555945 0.20365335 0.48189354
		 0.21197598 0.5 0.21484375;
	setAttr ".uvst[0].uvsp[500:749]" 0.51810646 0.21197598 0.53444052 0.20365334
		 0.54740334 0.19069055 0.55572599 0.17435646 0.55859375 0.15625 0.56320453 0.11032925
		 0.57430136 0.13210803 0.54592073 0.09304551 0.52414197 0.081948668 0.5 0.078124963
		 0.47585803 0.081948675 0.45407927 0.093045525 0.43679553 0.11032926 0.4256987 0.13210805
		 0.421875 0.15625 0.4256987 0.18039195 0.43679553 0.20217073 0.45407927 0.21945447
		 0.47585803 0.2305513 0.5 0.234375 0.52414197 0.2305513 0.54592073 0.21945447 0.56320447
		 0.20217073 0.5743013 0.18039195 0.578125 0.15625 0.5790056 0.098849058 0.59287667
		 0.12607254 0.55740094 0.077244386 0.53017747 0.063373335 0.5 0.058593705 0.46982256
		 0.063373342 0.44259906 0.077244401 0.4209944 0.098849081 0.40712336 0.12607256 0.40234372
		 0.15625 0.40712336 0.18642744 0.4209944 0.21365091 0.44259909 0.23525557 0.46982256
		 0.24912663 0.5 0.25390625 0.53017741 0.24912661 0.55740088 0.23525557 0.5790056 0.21365091
		 0.59287661 0.18642744 0.59765625 0.15625 0.59480673 0.087368876 0.61145198 0.12003705
		 0.56888115 0.061443262 0.53621292 0.044798009 0.5 0.03906244 0.46378705 0.044798017
		 0.43111891 0.061443284 0.4051933 0.087368898 0.38854802 0.12003706 0.38281247 0.15625
		 0.38854802 0.19246294 0.4051933 0.22513109 0.43111891 0.2510567 0.46378708 0.26770195
		 0.5 0.2734375 0.53621292 0.26770195 0.56888109 0.25105667 0.59480667 0.22513109 0.61145192
		 0.19246292 0.6171875 0.15625 0.61060786 0.075888686 0.63002735 0.11400156 0.58036131
		 0.045642145 0.54224843 0.026222676 0.5 0.01953119 0.45775157 0.026222676 0.41963869
		 0.045642167 0.38939217 0.075888708 0.36997271 0.11400157 0.36328122 0.15625 0.36997271
		 0.19849843 0.3893922 0.23661128 0.41963872 0.2668578 0.45775157 0.28627729 0.5 0.29296875
		 0.54224843 0.28627726 0.58036125 0.2668578 0.6106078 0.23661128 0.63002729 0.19849841
		 0.63671875 0.15625 0.62640899 0.064408496 0.64860266 0.10796607 0.59184152 0.029841021
		 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607 0.0076473504 0.40815851 0.029841051
		 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997 0.15625 0.3513974 0.20453392
		 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387
		 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625
		 0.15625 0.375 0.3125 0.38749999 0.3125 0.38749999 0.44832614 0.375 0.44832614 0.39999998
		 0.3125 0.39999998 0.44832614 0.41249996 0.3125 0.41249996 0.44832614 0.42499995 0.3125
		 0.42499995 0.44832614 0.43749994 0.3125 0.43749994 0.44832614 0.44999993 0.3125 0.44999993
		 0.44832614 0.46249992 0.3125 0.46249992 0.44832614 0.4749999 0.3125 0.4749999 0.44832614
		 0.48749989 0.3125 0.48749992 0.44832614 0.49999988 0.3125 0.49999988 0.44832614 0.51249987
		 0.3125 0.51249987 0.44832614 0.52499986 0.3125 0.52499986 0.44832614 0.53749985 0.3125
		 0.5374999 0.44832614 0.54999983 0.3125 0.54999983 0.44832614 0.56249982 0.3125 0.56249982
		 0.44832614 0.57499981 0.3125 0.57499981 0.44832614 0.5874998 0.3125 0.58749986 0.44832614
		 0.59999979 0.3125 0.59999979 0.44832614 0.61249977 0.3125 0.61249983 0.44832614 0.62499976
		 0.3125 0.62499976 0.44832614 0.6486026 0.89203393 0.62640893 0.93559146 0.6106078
		 0.92411125 0.63002729 0.88599843 0.59184146 0.97015893 0.58036125 0.9543578 0.54828387
		 0.9923526 0.54224843 0.97377729 0.5 1 0.5 0.98046875 0.4517161 0.9923526 0.45775157
		 0.97377729 0.40815854 0.97015893 0.41963872 0.9543578 0.37359107 0.93559146 0.3893922
		 0.92411125 0.3513974 0.89203393 0.36997271 0.88599843 0.34374997 0.84375 0.36328122
		 0.84375 0.3513974 0.79546607 0.36997271 0.80150157 0.37359107 0.75190854 0.38939217
		 0.76338869 0.40815851 0.71734107 0.41963869 0.73314214 0.45171607 0.69514734 0.45775157
		 0.71372271 0.5 0.68749994 0.5 0.70703119 0.54828393 0.69514734 0.54224843 0.71372271
		 0.59184152 0.71734101 0.58036131 0.73314214 0.62640899 0.75190848 0.61060786 0.76338869
		 0.64860266 0.79546607 0.63002735 0.80150157 0.65625 0.84375 0.63671875 0.84375 0.59480667
		 0.91263109 0.61145192 0.87996292 0.56888109 0.93855667 0.53621292 0.95520198 0.5
		 0.9609375 0.46378708 0.95520198 0.43111891 0.93855667 0.4051933 0.91263109 0.38854802
		 0.87996292 0.38281247 0.84375 0.38854802 0.80753708 0.4051933 0.77486891 0.43111891
		 0.74894327 0.46378705 0.73229802 0.5 0.72656244 0.53621292 0.73229802 0.56888115
		 0.74894327 0.59480673 0.77486885 0.61145198 0.80753708 0.6171875 0.84375 0.5790056
		 0.90115094 0.59287661 0.87392747 0.55740088 0.9227556 0.53017741 0.93662661 0.5 0.94140625
		 0.46982256 0.93662661 0.44259909 0.9227556 0.4209944 0.90115094 0.40712336 0.87392747
		 0.40234372 0.84375 0.40712336 0.81357253 0.4209944 0.78634906 0.44259906 0.7647444
		 0.46982256 0.75087333 0.5 0.74609369 0.53017747 0.75087333 0.55740094 0.7647444 0.5790056
		 0.78634906 0.59287667 0.81357253 0.59765625 0.84375 0.56320447 0.88967073 0.5743013
		 0.86789197 0.54592073 0.90695447 0.52414197 0.9180513 0.5 0.921875 0.47585803 0.9180513
		 0.45407927 0.90695447 0.43679553 0.88967073 0.4256987 0.86789197 0.421875 0.84375
		 0.4256987 0.81960803 0.43679553 0.79782927 0.45407927 0.78054553 0.47585803 0.7694487
		 0.5 0.76562494 0.52414197 0.76944864 0.54592073 0.78054553 0.56320453 0.79782927
		 0.57430136 0.81960803 0.578125 0.84375 0.54740334 0.87819052 0.55572599 0.86185646
		 0.53444052 0.89115334;
	setAttr ".uvst[0].uvsp[750:974]" 0.51810646 0.89947599 0.5 0.90234375 0.48189354
		 0.89947599 0.46555945 0.89115334 0.45259666 0.87819052 0.44427401 0.86185646 0.44140625
		 0.84375 0.44427401 0.82564354 0.45259663 0.80930948 0.46555945 0.79634666 0.48189354
		 0.78802401 0.5 0.78515625 0.51810646 0.78802401 0.53444058 0.79634666 0.5474034 0.80930942
		 0.55572599 0.82564354 0.55859375 0.84375 0.5316022 0.86671036 0.53715062 0.85582101
		 0.52296036 0.87535226 0.51207095 0.88090062 0.5 0.8828125 0.48792902 0.88090062 0.47703964
		 0.87535226 0.46839777 0.86671036 0.46284935 0.85582101 0.4609375 0.84375 0.46284935
		 0.83167899 0.46839777 0.82078964 0.47703964 0.81214774 0.48792902 0.80659932 0.5
		 0.8046875 0.51207095 0.80659932 0.52296036 0.81214774 0.53160226 0.82078964 0.53715068
		 0.83167899 0.5390625 0.84375 0.53715062 0.85582101 0.5316022 0.86671036 0.51580113
		 0.85523021 0.51857531 0.84978551 0.52296036 0.87535226 0.51148015 0.85955113 0.51207095
		 0.88090062 0.50603551 0.86232531 0.5 0.8828125 0.5 0.86328125 0.48792902 0.88090062
		 0.49396452 0.86232531 0.47703964 0.87535226 0.48851982 0.85955113 0.46839777 0.86671036
		 0.48419887 0.85523021 0.46284935 0.85582101 0.48142466 0.84978551 0.4609375 0.84375
		 0.48046875 0.84375 0.46284935 0.83167899 0.48142466 0.83771449 0.46839777 0.82078964
		 0.48419887 0.83226979 0.47703964 0.81214774 0.48851982 0.82794887 0.48792902 0.80659932
		 0.49396452 0.82517469 0.5 0.8046875 0.5 0.82421875 0.51207095 0.80659932 0.50603551
		 0.82517469 0.52296036 0.81214774 0.51148021 0.82794887 0.53160226 0.82078964 0.51580113
		 0.83226979 0.53715068 0.83167899 0.51857531 0.83771449 0.5390625 0.84375 0.51953125
		 0.84375 0.5 0.15000001 0.51857531 0.84978551 0.51580113 0.85523021 0.5 0.83749998
		 0.51148015 0.85955113 0.50603551 0.86232531 0.5 0.86328125 0.49396452 0.86232531
		 0.48851982 0.85955113 0.48419887 0.85523021 0.48142466 0.84978551 0.48046875 0.84375
		 0.48142466 0.83771449 0.48419887 0.83226979 0.48851982 0.82794887 0.49396452 0.82517469
		 0.5 0.82421875 0.50603551 0.82517469 0.51148021 0.82794887 0.51580113 0.83226979
		 0.51857531 0.83771449 0.51953125 0.84375 0.43749994 0.60056871 0.44999993 0.60056871
		 0.44999993 0.68843985 0.43749994 0.68843985 0.42499995 0.60056871 0.42499995 0.68843985
		 0.41249996 0.60056871 0.41249996 0.68843985 0.39999998 0.60056871 0.39999998 0.68843985
		 0.38749999 0.60056871 0.38749999 0.68843985 0.375 0.60056871 0.375 0.68843985 0.61249977
		 0.60056871 0.62499976 0.60056871 0.62499976 0.68843985 0.61249977 0.68843985 0.59999979
		 0.60056871 0.59999979 0.68843985 0.5874998 0.60056871 0.5874998 0.68843985 0.57499981
		 0.60056871 0.57499981 0.68843985 0.56249982 0.60056871 0.56249982 0.68843985 0.54999983
		 0.60056871 0.54999983 0.68843985 0.53749985 0.60056871 0.53749985 0.68843985 0.52499986
		 0.60056871 0.52499986 0.68843985 0.51249987 0.60056871 0.51249987 0.68843985 0.49999988
		 0.60056871 0.49999988 0.68843985 0.48749989 0.60056871 0.48749989 0.68843985 0.4749999
		 0.60056871 0.4749999 0.68843985 0.46249992 0.60056871 0.46249992 0.68843985 0.43749994
		 0.44832614 0.44999993 0.44832614 0.44999993 0.60056871 0.43749994 0.60056871 0.42499995
		 0.44832614 0.42499995 0.60056871 0.41249996 0.44832614 0.41249996 0.60056871 0.39999998
		 0.44832614 0.39999998 0.60056871 0.38749999 0.44832614 0.38749999 0.60056871 0.375
		 0.44832614 0.375 0.60056871 0.61249983 0.44832614 0.62499976 0.44832614 0.62499976
		 0.60056871 0.61249977 0.60056871 0.59999979 0.44832614 0.59999979 0.60056871 0.58749986
		 0.44832614 0.5874998 0.60056871 0.57499981 0.44832614 0.57499981 0.60056871 0.56249982
		 0.44832614 0.56249982 0.60056871 0.54999983 0.44832614 0.54999983 0.60056871 0.5374999
		 0.44832614 0.53749985 0.60056871 0.52499986 0.44832614 0.52499986 0.60056871 0.51249987
		 0.44832614 0.51249987 0.60056871 0.49999988 0.44832614 0.49999988 0.60056871 0.48749992
		 0.44832614 0.48749989 0.60056871 0.4749999 0.44832614 0.4749999 0.60056871 0.46249992
		 0.44832614 0.46249992 0.60056871 0.44999993 0.60056871 0.43749994 0.60056871 0.42499995
		 0.60056871 0.41249996 0.60056871 0.39999998 0.60056871 0.38749999 0.60056871 0.375
		 0.60056871 0.62499976 0.60056871 0.61249977 0.60056871 0.59999979 0.60056871 0.5874998
		 0.60056871 0.57499981 0.60056871 0.56249982 0.60056871 0.54999983 0.60056871 0.53749985
		 0.60056871 0.52499986 0.60056871 0.51249987 0.60056871 0.49999988 0.60056871 0.48749989
		 0.60056871 0.4749999 0.60056871 0.46249992 0.60056871 0.44999993 0.68843985 0.43749994
		 0.68843985 0.42499995 0.68843985 0.41249996 0.68843985 0.39999998 0.68843985 0.38749999
		 0.68843985 0.375 0.68843985 0.62499976 0.68843985 0.61249977 0.68843985 0.59999979
		 0.68843985 0.5874998 0.68843985 0.57499981 0.68843985 0.56249982 0.68843985 0.54999983
		 0.68843985 0.53749985 0.68843985 0.52499986 0.68843985 0.51249987 0.68843985 0.49999988
		 0.68843985 0.48749989 0.68843985 0.4749999 0.68843985 0.46249992 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 886 ".vt";
	setAttr ".vt[0:165]"  33.61429596 15.65468979 52.91967773 28.59666252 25.50234795 52.91967773
		 20.78151321 33.31749344 52.91967773 10.9338541 38.33512497 52.91967773 0.017641218 40.064083099 52.91967773
		 -10.89857197 38.33512497 52.91967773 -20.74622726 33.31748962 52.91967773 -28.56137085 25.50234222 52.91967773
		 -33.57899857 15.65468597 52.91967773 -35.3079567 4.73847532 52.91967773 -33.57899857 -6.17773485 52.91967773
		 -28.56136894 -16.025388718 52.91967773 -20.74622345 -23.8405304 52.91967773 -10.89856911 -28.85816193 52.91967773
		 0.017640166 -30.58712006 52.91967773 10.93384743 -28.85815811 52.91967773 20.78150177 -23.84052849 52.91967773
		 28.59664345 -16.025388718 52.91967773 33.61427689 -6.17773199 52.91967773 35.3432312 4.73847532 52.91967773
		 34.077617645 15.805233 69.75389099 28.99078751 25.78869629 69.75389099 21.067861557 33.71162033 69.75389099
		 11.084397316 38.79844666 69.75389099 0.017641218 40.55124664 69.75389099 -11.049115181 38.79844666 69.75389099
		 -21.032575607 33.7116127 69.75389099 -28.95549583 25.78869057 69.75389099 -34.042320251 15.80522728 69.75389099
		 -35.79512024 4.73847532 69.75389099 -34.042320251 -6.32827711 69.75389099 -28.95549393 -16.31173706 69.75389099
		 -21.032571793 -24.23465729 69.75389099 -11.049111366 -29.32148361 69.75389099 0.017640151 -31.0742836 69.75389099
		 11.08439064 -29.3214798 69.75389099 21.067850113 -24.23465347 69.75389099 28.99076843 -16.31173325 69.75389099
		 34.077598572 -6.3282752 69.75389099 35.83039856 4.73847532 69.75389099 35.42222977 16.24212265 72.10800934
		 30.13458252 26.61971283 72.10800934 21.8988781 34.85541534 72.10800934 11.52128696 40.14305878 72.10800934
		 0.017641218 41.96505737 72.10800934 -11.48600483 40.14305496 72.10800934 -21.86359215 34.85540771 72.10800934
		 -30.099290848 26.61970711 72.10800934 -35.38693237 16.24211884 72.10800934 -37.20892715 4.73847532 72.10800934
		 -35.38693237 -6.76516771 72.10800934 -30.09928894 -17.14275169 72.10800934 -21.86358643 -25.37845039 72.10800934
		 -11.48600197 -30.66609573 72.10800934 0.017640108 -32.48809052 72.10800934 11.52128029 -30.66609192 72.10800934
		 21.89886475 -25.37844849 72.10800934 30.13456345 -17.14274979 72.10800934 35.42220688 -6.76516485 72.10800934
		 37.24420547 4.73847532 72.10800934 37.51651382 16.92259598 73.97624207 31.9160862 27.91405106 73.97624207
		 23.19321632 36.63691711 73.97624207 12.20176029 42.23733902 73.97624207 0.017641218 44.16711426 73.97624207
		 -12.16647816 42.23733902 73.97624207 -23.15792847 36.63690948 73.97624207 -31.88079262 27.91404343 73.97624207
		 -37.48121262 16.92259216 73.97624207 -39.41098785 4.73847532 73.97624207 -37.48121262 -7.44564104 73.97624207
		 -31.88079071 -18.43708992 73.97624207 -23.15792465 -27.15995407 73.97624207 -12.1664753 -32.76037598 73.97624207
		 0.017640043 -34.6901474 73.97624207 12.20175362 -32.76037598 73.97624207 23.19320297 -27.15995216 73.97624207
		 31.91606712 -18.43708801 73.97624207 37.51649094 -7.44563913 73.97624207 39.44626236 4.73847532 73.97624207
		 40.15546799 17.78004456 75.17572784 34.16091919 29.54501534 75.17572784 24.8241806 38.8817482 75.17572784
		 13.05920887 44.876297 75.17572784 0.017641218 46.94187546 75.17572784 -13.023926735 44.876297 75.17572784
		 -24.78889275 38.88174057 75.17572784 -34.12561798 29.5450058 75.17572784 -40.12016678 17.78003883 75.17572784
		 -42.18574524 4.73847532 75.17572784 -40.12016678 -8.30308914 75.17572784 -34.12561798 -20.068052292 75.17572784
		 -24.78888702 -29.40478134 75.17572784 -13.02392292 -35.39933014 75.17572784 0.017639961 -37.4649086 75.17572784
		 13.059201241 -35.39932632 75.17572784 24.82416534 -29.40477753 75.17572784 34.16089249 -20.068050385 75.17572784
		 40.15544128 -8.30308723 75.17572784 42.22102356 4.73847532 75.17572784 43.080768585 18.73053169 75.58904266
		 36.64932632 31.35294914 75.58904266 26.63211441 41.37015533 75.58904266 14.0096960068 47.8015976 75.58904266
		 0.017641218 50.017715454 75.58904266 -13.97441387 47.80159378 75.58904266 -26.59682655 41.37014771 75.58904266
		 -36.61402893 31.35294151 75.58904266 -43.045463562 18.73052597 75.58904266 -45.26158905 4.73847532 75.58904266
		 -43.045463562 -9.25357628 75.58904266 -36.6140213 -21.8759861 75.58904266 -26.59682083 -31.89318466 75.58904266
		 -13.97441006 -38.32462692 75.58904266 0.01763987 -40.5407486 75.58904266 14.0096893311 -38.32462311 75.58904266
		 26.63209724 -31.89318466 75.58904266 36.64929962 -21.87598419 75.58904266 43.080741882 -9.25357437 75.58904266
		 45.29686356 4.73847532 75.58904266 46.0060653687 19.68101883 75.17572784 39.13773346 33.16088486 75.17572784
		 28.44005013 43.85856247 75.17572784 14.9601841 50.72689438 75.17572784 0.017641218 53.09355545 75.17572784
		 -14.92490196 50.72689056 75.17572784 -28.40476036 43.85855484 75.17572784 -39.10243607 33.16087341 75.17572784
		 -45.97076416 19.68101311 75.17572784 -48.33742905 4.73847532 75.17572784 -45.97076416 -10.20406342 75.17572784
		 -39.10243225 -23.68391991 75.17572784 -28.40475464 -34.38159561 75.17572784 -14.92489719 -41.24992371 75.17572784
		 0.017639777 -43.61658859 75.17572784 14.96017456 -41.24991989 75.17572784 28.44003296 -34.38159561 75.17572784
		 39.13771057 -23.683918 75.17572784 46.0060386658 -10.2040596 75.17572784 48.37270355 4.73847532 75.17572784
		 48.64501953 20.53846741 73.97624207 41.38256073 34.79184341 73.97624207 30.07101059 46.10339355 73.97624207
		 15.81763268 53.36584854 73.97624207 0.017641218 55.86832047 73.97624207 -15.78235054 53.36584473 73.97624207
		 -30.03572464 46.10338593 73.97624207 -41.34726334 34.79183578 73.97624207 -48.60971832 20.53846169 73.97624207
		 -51.11219025 4.73847532 73.97624207 -48.60971832 -11.061510086 73.97624207 -41.34725571 -25.31488419 73.97624207
		 -30.035718918 -36.62642288 73.97624207 -15.78234482 -43.88887787 73.97624207 0.017639695 -46.39134598 73.97624207
		 15.81762218 -43.88887787 73.97624207 30.070993423 -36.62641907 73.97624207 41.38253403 -25.31488037 73.97624207
		 48.64499283 -11.061508179 73.97624207 51.14746094 4.73847532 73.97624207 50.73930359 21.21894264 72.10800934
		 43.16406631 36.086181641 72.10800934 31.36534882 47.88489532 72.10800934 16.498106 55.4601326 72.10800934
		 0.017641218 58.07037735 72.10800934 -16.46282387 55.46012878 72.10800934;
	setAttr ".vt[166:331]" -31.33006287 47.88488388 72.10800934 -43.12876511 36.086174011 72.10800934
		 -50.70400238 21.21893501 72.10800934 -53.31424713 4.73847532 72.10800934 -50.70400238 -11.74198341 72.10800934
		 -43.12876129 -26.6092205 72.10800934 -31.33005524 -38.40792465 72.10800934 -16.46281815 -45.98315811 72.10800934
		 0.01763963 -48.59340668 72.10800934 16.49809647 -45.9831543 72.10800934 31.36533165 -38.40792084 72.10800934
		 43.16403961 -26.60921669 72.10800934 50.73927307 -11.7419796 72.10800934 53.34951782 4.73847532 72.10800934
		 52.083919525 21.6558342 69.75389099 44.30786514 36.917202 69.75389099 32.19636917 49.028694153 69.75389099
		 16.93499756 56.80474854 69.75389099 0.017641218 59.48418808 69.75389099 -16.89971542 56.80474472 69.75389099
		 -32.16107559 49.028686523 69.75389099 -44.27256393 36.91719437 69.75389099 -52.048614502 21.65582657 69.75389099
		 -54.72805786 4.73847532 69.75389099 -52.048614502 -12.17887497 69.75389099 -44.27256012 -27.44023895 69.75389099
		 -32.16107178 -39.55172348 69.75389099 -16.8997097 -47.32777405 69.75389099 0.017639587 -50.0072212219 69.75389099
		 16.93498802 -47.32777023 69.75389099 32.1963501 -39.55172348 69.75389099 44.30783844 -27.44023514 69.75389099
		 52.083885193 -12.17887306 69.75389099 54.76333237 4.73847532 69.75389099 52.54724121 21.80637741 59.93991089
		 44.70199203 37.20355225 59.93991089 32.48271942 49.42282104 59.93991089 17.085538864 57.26807022 59.93991089
		 0.017641218 59.97135544 59.93991089 -17.050256729 57.26806641 59.93991089 -32.44742584 49.42280579 59.93991089
		 -44.66668701 37.2035408 59.93991089 -52.51194 21.80636978 59.93991089 -55.21522141 4.73847532 59.93991089
		 -52.51194 -12.32941818 59.93991089 -44.6666832 -27.72658539 59.93991089 -32.44741821 -39.94584656 59.93991089
		 -17.050252914 -47.79109573 59.93991089 0.017639572 -50.49438477 59.93991089 17.085529327 -47.79109192 59.93991089
		 32.48269653 -39.94584274 59.93991089 44.70196152 -27.72658539 59.93991089 52.54720688 -12.32941628 59.93991089
		 55.25049591 4.73847532 59.93991089 52.083919525 21.6558342 50.31011963 44.30786514 36.917202 50.31011963
		 32.19636917 49.028694153 50.31011963 16.93499756 56.80474854 50.31011963 0.017641218 59.48418808 50.31011963
		 -16.89971542 56.80474472 50.31011963 -32.16107559 49.028686523 50.31011963 -44.27256393 36.91719437 50.31011963
		 -52.048614502 21.65582657 50.31011963 -54.72805786 4.73847532 50.31011963 -52.048614502 -12.17887497 50.31011963
		 -44.27256012 -27.44023895 50.31011963 -32.16107178 -39.55172348 50.31011963 -16.8997097 -47.32777405 50.31011963
		 0.017639587 -50.0072212219 50.31011963 16.93498802 -47.32777023 50.31011963 32.1963501 -39.55172348 50.31011963
		 44.30783844 -27.44023514 50.31011963 52.083885193 -12.17887306 50.31011963 54.76333237 4.73847532 50.31011963
		 50.73930359 21.21894264 47.95599747 43.16406631 36.086181641 47.95599747 31.36534882 47.88489532 47.95599747
		 16.498106 55.4601326 47.95599747 0.017641218 58.07037735 47.95599747 -16.46282387 55.46012878 47.95599747
		 -31.33006287 47.88488388 47.95599747 -43.12876511 36.086174011 47.95599747 -50.70400238 21.21893501 47.95599747
		 -53.31424713 4.73847532 47.95599747 -50.70400238 -11.74198341 47.95599747 -43.12876129 -26.6092205 47.95599747
		 -31.33005524 -38.40792465 47.95599747 -16.46281815 -45.98315811 47.95599747 0.01763963 -48.59340668 47.95599747
		 16.49809647 -45.9831543 47.95599747 31.36533165 -38.40792084 47.95599747 43.16403961 -26.60921669 47.95599747
		 50.73927307 -11.7419796 47.95599747 53.34951782 4.73847532 47.95599747 48.64501953 20.53846741 46.087760925
		 41.38256073 34.79184341 46.087760925 30.07101059 46.10339355 46.087760925 15.81763268 53.36584854 46.087760925
		 0.017641218 55.86832047 46.087760925 -15.78235054 53.36584473 46.087760925 -30.03572464 46.10338593 46.087760925
		 -41.34726334 34.79183578 46.087760925 -48.60971832 20.53846169 46.087760925 -51.11219025 4.73847532 46.087760925
		 -48.60971832 -11.061510086 46.087760925 -41.34725571 -25.31488419 46.087760925 -30.035718918 -36.62642288 46.087760925
		 -15.78234482 -43.88887787 46.087760925 0.017639695 -46.39134598 46.087760925 15.81762218 -43.88887787 46.087760925
		 30.070993423 -36.62641907 46.087760925 41.38253403 -25.31488037 46.087760925 48.64499283 -11.061508179 46.087760925
		 51.14746094 4.73847532 46.087760925 46.0060691833 19.68102074 44.88827515 39.13773727 33.16088486 44.88827515
		 28.44005203 43.85856628 44.88827515 14.96018505 50.72689819 44.88827515 0.017641218 53.09356308 44.88827515
		 -14.92490292 50.72689438 44.88827515 -28.40476227 43.85855865 44.88827515 -39.10243607 33.16087723 44.88827515
		 -45.97076797 19.68101501 44.88827515 -48.33743286 4.73847532 44.88827515 -45.97076797 -10.20406342 44.88827515
		 -39.10243607 -23.68392372 44.88827515 -28.40475845 -34.38159943 44.88827515 -14.92489815 -41.24993134 44.88827515
		 0.017639777 -43.61659241 44.88827515 14.96017647 -41.24992371 44.88827515 28.44003487 -34.38159561 44.88827515
		 39.13771439 -23.68391991 44.88827515 46.0060424805 -10.20406151 44.88827515 48.37270737 4.73847532 44.88827515
		 43.080768585 18.73053169 44.47496033 36.64932632 31.35294914 44.47496033 26.63211441 41.37015533 44.47496033
		 14.0096960068 47.8015976 44.47496033 0.017641218 50.017715454 44.47496033 -13.97441387 47.80159378 44.47496033
		 -26.59682655 41.37014771 44.47496033 -36.61402893 31.35294151 44.47496033 -43.045463562 18.73052597 44.47496033
		 -45.26158905 4.73847532 44.47496033 -43.045463562 -9.25357628 44.47496033 -36.6140213 -21.8759861 44.47496033
		 -26.59682083 -31.89318466 44.47496033 -13.97441006 -38.32462692 44.47496033 0.01763987 -40.5407486 44.47496033
		 14.0096893311 -38.32462311 44.47496033 26.63209724 -31.89318466 44.47496033 36.64929962 -21.87598419 44.47496033
		 43.080741882 -9.25357437 44.47496033 45.29686356 4.73847532 44.47496033 40.15546417 17.78004265 44.88827515
		 34.16091537 29.54501152 44.88827515 24.82417679 38.88174438 44.88827515 13.059207916 44.87628937 44.88827515
		 0.017641218 46.94187164 44.88827515 -13.023925781 44.87628937 44.88827515 -24.78888893 38.88173676 44.88827515
		 -34.12561417 29.54500389 44.88827515 -40.12016296 17.78003883 44.88827515 -42.18574142 4.73847532 44.88827515
		 -40.12016296 -8.30308723 44.88827515 -34.12561417 -20.068050385 44.88827515;
	setAttr ".vt[332:497]" -24.78888512 -29.40477753 44.88827515 -13.023921967 -35.39932632 44.88827515
		 0.017639961 -37.46490479 44.88827515 13.059200287 -35.39932251 44.88827515 24.82416344 -29.40477371 44.88827515
		 34.16088867 -20.068048477 44.88827515 40.15543747 -8.30308533 44.88827515 42.22101974 4.73847532 44.88827515
		 37.51651382 16.92259598 46.087757111 31.9160862 27.91405106 46.087757111 23.19321632 36.63691711 46.087757111
		 12.20176029 42.23733902 46.087757111 0.017641218 44.16711426 46.087757111 -12.16647816 42.23733902 46.087757111
		 -23.15792847 36.63690948 46.087757111 -31.88079262 27.91404343 46.087757111 -37.48121262 16.92259216 46.087757111
		 -39.41098785 4.73847532 46.087757111 -37.48121262 -7.44564104 46.087757111 -31.88079071 -18.43708992 46.087757111
		 -23.15792465 -27.15995407 46.087757111 -12.1664753 -32.76037598 46.087757111 0.017640043 -34.6901474 46.087757111
		 12.20175362 -32.76037598 46.087757111 23.19320297 -27.15995216 46.087757111 31.91606712 -18.43708801 46.087757111
		 37.51649094 -7.44563913 46.087757111 39.44626236 4.73847532 46.087757111 35.42222595 16.24212074 47.95599747
		 30.1345787 26.61971092 47.95599747 21.89887619 34.85541153 47.95599747 11.52128601 40.14305496 47.95599747
		 0.017641218 41.96504974 47.95599747 -11.48600388 40.14305115 47.95599747 -21.86359024 34.8554039 47.95599747
		 -30.099285126 26.61970329 47.95599747 -35.38692856 16.24211693 47.95599747 -37.20892334 4.73847532 47.95599747
		 -35.38692856 -6.76516581 47.95599747 -30.099283218 -17.14274979 47.95599747 -21.86358452 -25.37844658 47.95599747
		 -11.48600006 -30.6660881 47.95599747 0.017640108 -32.4880867 47.95599747 11.52127934 -30.6660881 47.95599747
		 21.89886284 -25.37844467 47.95599747 30.13455963 -17.14274788 47.95599747 35.42220306 -6.7651639 47.95599747
		 37.24420166 4.73847532 47.95599747 34.077613831 15.80522919 50.31011581 28.99078178 25.78869438 50.31011581
		 21.06785965 33.7116127 50.31011581 11.084394455 38.79844284 50.31011581 0.017641218 40.55124283 50.31011581
		 -11.04911232 38.79843903 50.31011581 -21.0325737 33.71160889 50.31011581 -28.9554882 25.78868866 50.31011581
		 -34.042312622 15.80522537 50.31011581 -35.79511261 4.73847532 50.31011581 -34.042312622 -6.3282752 50.31011581
		 -28.9554863 -16.31173325 50.31011581 -21.032567978 -24.23464966 50.31011581 -11.049109459 -29.32147598 50.31011581
		 0.017640151 -31.07427597 50.31011581 11.084387779 -29.32147598 50.31011581 21.067846298 -24.23464775 50.31011581
		 28.99076271 -16.31173134 50.31011581 34.077590942 -6.3282733 50.31011581 35.83039093 4.73847532 50.31011581
		 4.26108742 7.60843945 50.72061157 3.62469792 8.85742378 50.72061157 2.63349676 9.84862423 50.72061157
		 1.38451111 10.48501396 50.72061157 0 10.70429897 50.72061157 -1.38451111 10.48501396 50.72061157
		 -2.63349628 9.84862328 50.72061157 -3.62469649 8.85742378 50.72061157 -4.26108599 7.60843754 50.72061157
		 -4.480371 6.22392702 50.72061157 -4.26108599 4.8394165 50.72061157 -3.62469625 3.59043145 50.72061157
		 -2.63349581 2.59923148 50.72061157 -1.38451064 1.96284294 50.72061157 -1.3352542e-007 1.7435565 50.72061157
		 1.38451028 1.96284294 50.72061157 2.63349509 2.59923148 50.72061157 3.62469554 3.59043145 50.72061157
		 4.26108503 4.8394165 50.72061157 4.48036957 6.22392702 50.72061157 8.52217484 8.99294949 50.72061157
		 7.24939585 11.49092102 50.72061157 5.26699352 13.47332191 50.72061157 2.76902223 14.74610138 50.72061157
		 0 15.1846714 50.72061157 -2.76902223 14.74610138 50.72061157 -5.26699257 13.47332001 50.72061157
		 -7.24939299 11.49091911 50.72061157 -8.52217197 8.99294853 50.72061157 -8.960742 6.22392702 50.72061157
		 -8.52217197 3.4549067 50.72061157 -7.24939251 0.95693541 50.72061157 -5.26699162 -1.025465012 50.72061157
		 -2.76902127 -2.29824305 50.72061157 -2.6705084e-007 -2.73681402 50.72061157 2.76902056 -2.29824305 50.72061157
		 5.26699018 -1.025464535 50.72061157 7.24939108 0.95693588 50.72061157 8.52217007 3.45490718 50.72061157
		 8.96073914 6.22392702 50.72061157 12.78326225 10.37746048 50.72061157 10.87409306 14.1244173 50.72061157
		 7.90049028 17.098020554 50.72061157 4.15353298 19.007188797 50.72061157 0 19.66504288 50.72061157
		 -4.15353298 19.0071868896 50.72061157 -7.90048885 17.098016739 50.72061157 -10.87408829 14.1244154 50.72061157
		 -12.78325844 10.37745857 50.72061157 -13.44111252 6.22392702 50.72061157 -12.78325844 2.070394993 50.72061157
		 -10.87408829 -1.67655802 50.72061157 -7.90048647 -4.65015936 50.72061157 -4.15353203 -6.55932951 50.72061157
		 -4.0057628e-007 -7.21718454 50.72061157 4.1535306 -6.55932951 50.72061157 7.90048552 -4.65015936 50.72061157
		 10.87408543 -1.67655802 50.72061157 12.78325462 2.07039547 50.72061157 13.44110966 6.22392702 50.72061157
		 17.04434967 11.76197243 50.72061157 14.49879169 16.75791359 50.72061157 10.53398705 20.72271729 50.72061157
		 5.53804445 23.26827431 50.72061157 0 24.14541435 50.72061157 -5.53804445 23.26827431 50.72061157
		 -10.53398514 20.72271347 50.72061157 -14.49878597 16.75791168 50.72061157 -17.044343948 11.76197052 50.72061157
		 -17.92148399 6.22392702 50.72061157 -17.044343948 0.68588591 50.72061157 -14.49878502 -4.31005621 50.72061157
		 -10.53398323 -8.27485657 50.72061157 -5.53804255 -10.8204155 50.72061157 -5.3410167e-007 -11.69755745 50.72061157
		 5.53804111 -10.82041359 50.72061157 10.53398037 -8.27485657 50.72061157 14.49878216 -4.31005526 50.72061157
		 17.044340134 0.68588591 50.72061157 17.92147827 6.22392702 50.72061157 21.305439 13.14648247 50.72061157
		 18.12348938 19.39141273 50.72061157 13.16748428 24.34741402 50.72061157 6.92255545 27.52935982 50.72061157
		 0 28.62578583 50.72061157 -6.92255545 27.52935982 50.72061157 -13.16748142 24.3474102 50.72061157
		 -18.12348175 19.39140701 50.72061157 -21.30543137 13.14648056 50.72061157 -22.40185547 6.22392702 50.72061157
		 -21.30543137 -0.69862652 50.72061157 -18.12348175 -6.94355059 50.72061157 -13.16747856 -11.8995533 50.72061157
		 -6.92255354 -15.081497192 50.72061157 -6.6762715e-007 -16.17792511 50.72061157 6.92255116 -15.081497192 50.72061157
		 13.16747665 -11.8995533 50.72061157 18.12347603 -6.94355059 50.72061157;
	setAttr ".vt[498:663]" 21.30542374 -0.69862556 50.72061157 22.40184975 6.22392702 50.72061157
		 25.56652451 14.53099442 50.72061157 21.74818611 22.024908066 50.72061157 15.80098057 27.97211266 50.72061157
		 8.30706596 31.79044914 50.72061157 0 33.10615921 50.72061157 -8.30706596 31.79044533 50.72061157
		 -15.80097771 27.97210884 50.72061157 -21.74817657 22.024904251 50.72061157 -25.56651688 14.5309906 50.72061157
		 -26.88222504 6.22392702 50.72061157 -25.56651688 -2.083137035 50.72061157 -21.74817657 -9.57704735 50.72061157
		 -15.80097294 -15.52424812 50.72061157 -8.30706406 -19.34258842 50.72061157 -8.0115257e-007 -20.65829659 50.72061157
		 8.3070612 -19.34258842 50.72061157 15.80097103 -15.52424622 50.72061157 21.74817085 -9.57704544 50.72061157
		 25.56650925 -2.083136082 50.72061157 26.88221931 6.22392702 50.72061157 29.82761002 15.91550446 50.72061157
		 25.37288475 24.65840149 50.72061157 18.43447685 31.59681129 50.72061157 9.69157791 36.05153656 50.72061157
		 0 37.58654404 50.72061157 -9.69157791 36.05153656 50.72061157 -18.43447304 31.59680176 50.72061157
		 -25.37287521 24.65839767 50.72061157 -29.82760239 15.91550255 50.72061157 -31.36259651 6.22392702 50.72061157
		 -29.82760239 -3.46764803 50.72061157 -25.37287331 -12.21054459 50.72061157 -18.43447113 -19.14894485 50.72061157
		 -9.69157505 -23.60367393 50.72061157 -9.3467798e-007 -25.13866806 50.72061157 9.69157219 -23.60367012 50.72061157
		 18.43446732 -19.14894485 50.72061157 25.37286758 -12.21054268 50.72061157 29.82759666 -3.46764612 50.72061157
		 31.36258888 6.22392702 50.72061157 34.088699341 17.3000164 46.97341919 28.99758339 27.29190063 46.97341919
		 21.067974091 35.22151566 46.97341919 11.076088905 40.31262207 46.97341919 0 42.066902161 46.97341919
		 -11.076088905 40.31262207 46.97341919 -21.067970276 35.2215004 46.97341919 -28.99757195 27.29189682 46.97341919
		 -34.088687897 17.30001259 46.97341919 -35.84296799 6.22392702 46.97341919 -34.088687897 -4.85215712 46.97341919
		 -28.99757004 -14.84403992 46.97341919 -21.067966461 -22.77364349 46.97341919 -11.076085091 -27.86475754 46.97341919
		 -1.0682033e-006 -29.61903763 46.97341919 11.07608223 -27.86475372 46.97341919 21.067960739 -22.77363968 46.97341919
		 28.99756432 -14.84403992 46.97341919 34.088680267 -4.85215521 46.97341919 35.84295654 6.22392702 46.97341919
		 34.088699341 17.3000164 74.86196136 28.99758339 27.29190063 74.86196136 21.067974091 35.22151566 74.86196136
		 11.076088905 40.31262207 74.86196136 0 42.066902161 74.86196136 -11.076088905 40.31262207 74.86196136
		 -21.067970276 35.2215004 74.86196136 -28.99757195 27.29189682 74.86196136 -34.088687897 17.30001259 74.86196136
		 -35.84296799 6.22392702 74.86196136 -34.088687897 -4.85215712 74.86196136 -28.99757004 -14.84403992 74.86196136
		 -21.067966461 -22.77364349 74.86196136 -11.076085091 -27.86475754 74.86196136 -1.0682033e-006 -29.61903763 74.86196136
		 11.07608223 -27.86475372 74.86196136 21.067960739 -22.77363968 74.86196136 28.99756432 -14.84403992 74.86196136
		 34.088680267 -4.85215521 74.86196136 35.84295654 6.22392702 74.86196136 29.82761002 15.91550446 72.43449402
		 25.37288475 24.65840149 72.43449402 18.43447685 31.59681129 72.43449402 9.69157791 36.05153656 72.43449402
		 0 37.58654404 72.43449402 -9.69157791 36.05153656 72.43449402 -18.43447304 31.59680176 72.43449402
		 -25.37287521 24.65839767 72.43449402 -29.82760239 15.91550255 72.43449402 -31.36259651 6.22392702 72.43449402
		 -29.82760239 -3.46764803 72.43449402 -25.37287331 -12.21054459 72.43449402 -18.43447113 -19.14894485 72.43449402
		 -9.69157505 -23.60367393 72.43449402 -9.3467798e-007 -25.13866806 72.43449402 9.69157219 -23.60367012 72.43449402
		 18.43446732 -19.14894485 72.43449402 25.37286758 -12.21054268 72.43449402 29.82759666 -3.46764612 72.43449402
		 31.36258888 6.22392702 72.43449402 25.56652451 14.53099442 69.17363739 21.74818611 22.024908066 69.17363739
		 15.80098057 27.97211266 69.17363739 8.30706596 31.79044914 69.17363739 0 33.10615921 69.17363739
		 -8.30706596 31.79044533 69.17363739 -15.80097771 27.97210884 69.17363739 -21.74817657 22.024904251 69.17363739
		 -25.56651688 14.5309906 69.17363739 -26.88222504 6.22392702 69.17363739 -25.56651688 -2.083137035 69.17363739
		 -21.74817657 -9.57704735 69.17363739 -15.80097294 -15.52424812 69.17363739 -8.30706406 -19.34258842 69.17363739
		 -8.0115257e-007 -20.65829659 69.17363739 8.3070612 -19.34258842 69.17363739 15.80097103 -15.52424622 69.17363739
		 21.74817085 -9.57704544 69.17363739 25.56650925 -2.083136082 69.17363739 26.88221931 6.22392702 69.17363739
		 21.305439 13.14648247 69.17363739 18.12348938 19.39141273 69.17363739 13.16748428 24.34741402 69.17363739
		 6.92255545 27.52935982 69.17363739 0 28.62578583 69.17363739 -6.92255545 27.52935982 69.17363739
		 -13.16748142 24.3474102 69.17363739 -18.12348175 19.39140701 69.17363739 -21.30543137 13.14648056 69.17363739
		 -22.40185547 6.22392702 69.17363739 -21.30543137 -0.69862652 69.17363739 -18.12348175 -6.94355059 69.17363739
		 -13.16747856 -11.8995533 69.17363739 -6.92255354 -15.081497192 69.17363739 -6.6762715e-007 -16.17792511 69.17363739
		 6.92255116 -15.081497192 69.17363739 13.16747665 -11.8995533 69.17363739 18.12347603 -6.94355059 69.17363739
		 21.30542374 -0.69862556 69.17363739 22.40184975 6.22392702 69.17363739 17.04434967 11.76197243 73.25047302
		 14.49879169 16.75791359 73.25047302 10.53398705 20.72271729 73.25047302 5.53804445 23.26827431 73.25047302
		 0 24.14541435 73.25047302 -5.53804445 23.26827431 73.25047302 -10.53398514 20.72271347 73.25047302
		 -14.49878597 16.75791168 73.25047302 -17.044343948 11.76197052 73.25047302 -17.92148399 6.22392702 73.25047302
		 -17.044343948 0.68588591 73.25047302 -14.49878502 -4.31005621 73.25047302 -10.53398323 -8.27485657 73.25047302
		 -5.53804255 -10.8204155 73.25047302 -5.3410167e-007 -11.69755745 73.25047302 5.53804111 -10.82041359 73.25047302
		 10.53398037 -8.27485657 73.25047302 14.49878216 -4.31005526 73.25047302 17.044340134 0.68588591 73.25047302
		 17.92147827 6.22392702 73.25047302 12.78326225 10.37746048 73.25047302 10.87409306 14.1244173 73.25047302
		 7.90049028 17.098020554 73.25047302 4.15353298 19.007188797 73.25047302;
	setAttr ".vt[664:829]" 0 19.66504288 73.25047302 -4.15353298 19.0071868896 73.25047302
		 -7.90048885 17.098016739 73.25047302 -10.87408829 14.1244154 73.25047302 -12.78325844 10.37745857 73.25047302
		 -13.44111252 6.22392702 73.25047302 -12.78325844 2.070394993 73.25047302 -10.87408829 -1.67655802 73.25047302
		 -7.90048647 -4.65015936 73.25047302 -4.15353203 -6.55932951 73.25047302 -4.0057628e-007 -7.21718454 73.25047302
		 4.1535306 -6.55932951 73.25047302 7.90048552 -4.65015936 73.25047302 10.87408543 -1.67655802 73.25047302
		 12.78325462 2.07039547 73.25047302 13.44110966 6.22392702 73.25047302 8.52217484 8.99294949 69.88750458
		 7.24939585 11.49092102 69.88750458 5.26699352 13.47332191 69.88750458 2.76902223 14.74610138 69.88750458
		 0 15.1846714 69.88750458 -2.76902223 14.74610138 69.88750458 -5.26699257 13.47332001 69.88750458
		 -7.24939299 11.49091911 69.88750458 -8.52217197 8.99294853 69.88750458 -8.960742 6.22392702 69.88750458
		 -8.52217197 3.4549067 69.88750458 -7.24939251 0.95693541 69.88750458 -5.26699162 -1.025465012 69.88750458
		 -2.76902127 -2.29824305 69.88750458 -2.6705084e-007 -2.73681402 69.88750458 2.76902056 -2.29824305 69.88750458
		 5.26699018 -1.025464535 69.88750458 7.24939108 0.95693588 69.88750458 8.52217007 3.45490718 69.88750458
		 8.96073914 6.22392702 69.88750458 0 6.22392702 50.72061157 4.26108503 4.8394165 50.70215988
		 4.48036957 6.22392702 50.70215988 8.96073914 6.22392702 50.70215988 8.52217007 3.45490718 50.70215988
		 8.52217484 8.99294949 72.62288666 7.24939585 11.49092102 72.62288666 3.62469792 8.85742378 72.45482635
		 4.26108742 7.60843945 72.45482635 5.26699352 13.47332191 72.62288666 2.63349676 9.84862423 72.45482635
		 2.76902223 14.74610138 72.62288666 1.38451111 10.48501396 72.45482635 0 15.1846714 72.62288666
		 0 10.70429897 72.45482635 -2.76902223 14.74610138 72.62288666 -1.38451111 10.48501396 72.45482635
		 -5.26699257 13.47332001 72.62288666 -2.63349628 9.84862328 72.45482635 -7.24939299 11.49091911 72.62288666
		 -3.62469649 8.85742378 72.45482635 -8.52217197 8.99294853 72.62288666 -4.26108599 7.60843754 72.45482635
		 -8.960742 6.22392702 72.62288666 -4.480371 6.22392702 72.45482635 -8.52217197 3.4549067 72.62288666
		 -4.26108599 4.8394165 72.45482635 -7.24939251 0.95693541 72.62288666 -3.62469625 3.59043145 72.45482635
		 -5.26699162 -1.025465012 72.62288666 -2.63349581 2.59923148 72.45482635 -2.76902127 -2.29824305 72.62288666
		 -1.38451064 1.96284294 72.45482635 -2.6705084e-007 -2.73681402 72.62288666 -1.3352542e-007 1.7435565 72.45482635
		 2.76902056 -2.29824305 72.62288666 1.38451028 1.96284294 72.45482635 5.26699018 -1.025464535 72.62288666
		 2.63349509 2.59923148 72.45482635 7.24939108 0.95693588 72.62288666 3.62469554 3.59043145 72.45482635
		 8.52217007 3.45490718 72.62288666 4.26108503 4.8394165 72.45482635 8.96073914 6.22392702 72.62288666
		 4.48036957 6.22392702 72.45482635 4.26108694 7.60843945 77.48039246 3.62469745 8.85742378 77.48039246
		 -3.8803272e-008 6.22392702 77.48038483 2.63349676 9.84862423 77.48039246 1.38451111 10.48501396 77.48039246
		 0 10.70429897 77.48039246 -1.38451111 10.48501396 77.48039246 -2.63349628 9.84862328 77.48039246
		 -3.62469649 8.85742378 77.48039246 -4.26108599 7.60843754 77.48039246 -4.480371 6.22392702 77.48039246
		 -4.26108599 4.8394165 77.48039246 -3.62469625 3.59043145 77.48039246 -2.63349581 2.59923148 77.48039246
		 -1.38451064 1.96284294 77.48039246 -1.3352542e-007 1.7435565 77.48039246 1.38451028 1.96284294 77.48039246
		 2.63349509 2.59923148 77.48039246 3.62469554 3.59043145 77.48039246 4.26108503 4.8394165 77.48039246
		 4.48036957 6.22392702 77.48039246 -21.067970276 35.2215004 73.31941223 -11.076088905 40.31262207 73.31941223
		 0 42.066902161 73.31941223 11.076088905 40.31262207 73.31941223 21.067974091 35.22151566 73.31941223
		 28.99758339 27.29190063 73.31941223 34.088699341 17.3000164 73.31941223 35.84295654 6.22392702 73.31941223
		 34.088680267 -4.85215521 73.31941223 28.99756432 -14.84403992 73.31941223 21.067960739 -22.77363968 73.31941223
		 11.07608223 -27.86475372 73.31941223 -1.0682033e-006 -29.61903763 73.31941223 -11.076085091 -27.86475754 73.31941223
		 -21.067966461 -22.77364349 73.31941223 -28.99757004 -14.84403992 73.31941223 -34.088687897 -4.85215712 73.31941223
		 -35.84296799 6.22392702 73.31941223 -34.088687897 17.30001259 73.31941223 -28.99757195 27.29189682 73.31941223
		 -21.067970276 35.2215004 50.91166687 -11.076088905 40.31262207 50.91166687 0 42.066902161 50.91166687
		 11.076088905 40.31262207 50.91166687 21.067974091 35.22151566 50.91166687 28.99758339 27.29190063 50.91166687
		 34.088699341 17.3000164 50.91166687 35.84295654 6.22392702 50.91166687 34.088680267 -4.85215521 50.91166687
		 28.99756622 -14.84403992 50.91166687 21.067960739 -22.77363968 50.91166687 11.07608223 -27.86475372 50.91166687
		 -1.0682033e-006 -29.61903763 50.91166687 -11.076086044 -27.86475754 50.91166687 -21.067966461 -22.77364349 50.91166687
		 -28.99757004 -14.84403992 50.91166687 -34.088691711 -4.85215712 50.91166687 -35.84296799 6.22392702 50.91166687
		 -34.088691711 17.30001259 50.91166687 -28.99757385 27.29189682 50.91166687 -19.9094162 33.62688828 53.61804199
		 -10.46700001 38.43803787 53.61804199 -19.9094162 33.62688828 69.29330444 -10.46700001 38.43803787 69.29330444
		 -2.3316082e-007 40.095848083 53.61804199 -2.3316082e-007 40.095848083 69.29330444
		 10.46700001 38.43803787 53.61804199 10.46700001 38.43803787 69.29330444 19.90941811 33.6268959 53.61804199
		 19.90941811 33.6268959 69.29330444 27.40296555 26.13334656 53.61804199 27.40296555 26.13334656 69.29330444
		 32.21411514 16.69092751 53.61804199 32.21411514 16.69092751 69.29330444 33.87190628 6.2239275 53.61804199
		 33.87190628 6.2239275 69.29330444 32.21409988 -4.24306536 53.61804199 32.21409988 -4.24306536 69.29330444
		 27.40295029 -13.68548203 53.61804199 27.40294838 -13.68548203 69.29330444 19.90940666 -21.17902184 53.61804199
		 19.90940666 -21.17902184 69.29330444 10.46699333 -25.99017334 53.61804199 10.46699333 -25.99017334 69.29330444;
	setAttr ".vt[830:885]" -1.2426223e-006 -27.64798355 53.61804199 -1.2426223e-006 -27.64798355 69.29330444
		 -10.4669981 -25.99017715 53.61804199 -10.46699715 -25.99017715 69.29330444 -19.90940857 -21.17902565 53.61804199
		 -19.90940857 -21.17902565 69.29330444 -27.4029541 -13.68548203 53.61804199 -27.4029541 -13.68548203 69.29330444
		 -32.21410751 -4.24306917 53.61804199 -32.21410751 -4.24306917 69.29330444 -33.87191391 6.2239275 53.61804199
		 -33.87191391 6.2239275 69.29330444 -32.21410751 16.69092369 53.61804199 -32.21410751 16.69092369 69.29330444
		 -27.40295982 26.13334274 53.61804199 -27.40295792 26.13334274 69.29330444 -22.88863945 37.72743988 73.25275421
		 -12.03327179 43.25852966 73.25275421 -22.88863945 37.72743988 74.92861938 -12.03327179 43.25852966 74.92861938
		 3.6641225e-007 45.16441345 73.25275421 3.6641225e-007 45.16441345 74.92861938 12.033272743 43.25852966 73.25275421
		 12.033272743 43.25852966 74.92861938 22.88864708 37.72745514 73.25275421 22.88864708 37.72745514 74.92861938
		 31.50352287 29.11257172 73.25275421 31.50352287 29.11257172 74.92861938 37.034610748 18.25720024 73.25275421
		 37.034610748 18.25720024 74.92861938 38.94046783 6.22392654 73.25275421 38.94046783 6.22392654 74.92861938
		 37.034584045 -5.80933809 73.25275421 37.034584045 -5.80933809 74.92861938 31.5035038 -16.664711 73.25275421
		 31.5035038 -16.664711 74.92861938 22.88863182 -25.27957916 73.25275421 22.88863182 -25.27957916 74.92861938
		 12.033265114 -30.81066132 73.25275421 12.033265114 -30.81066132 74.92861938 -7.9410415e-007 -32.7165451 73.25275421
		 -7.9410415e-007 -32.7165451 74.92861938 -12.033268929 -30.81066513 73.25275421 -12.033268929 -30.81066513 74.92861938
		 -22.88863564 -25.27958298 73.25275421 -22.88863564 -25.27958298 74.92861938 -31.50350952 -16.664711 73.25275421
		 -31.50350952 -16.664711 74.92861938 -37.034591675 -5.80934191 73.25275421 -37.034591675 -5.80934191 74.92861938
		 -38.94047928 6.22392654 73.25275421 -38.94047928 6.22392654 74.92861938 -37.034591675 18.25719643 73.25275421
		 -37.034591675 18.25719643 74.92861938 -31.50351143 29.11256599 73.25275421 -31.50351143 29.11256599 74.92861938;
	setAttr -s 1788 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1;
	setAttr ".ed[498:663]" 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1
		 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1
		 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1
		 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1
		 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1
		 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1
		 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1
		 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1
		 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1
		 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1
		 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1
		 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1
		 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1;
	setAttr ".ed[664:829]" 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1
		 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1
		 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1
		 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1
		 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1
		 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1
		 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1
		 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1
		 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1
		 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1
		 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1
		 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1
		 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1
		 378 398 1 379 399 1 380 0 1 381 1 1 382 2 1 383 3 1 384 4 1 385 5 1 386 6 1 387 7 1
		 388 8 1 389 9 1 390 10 1 391 11 1 392 12 1 393 13 1 394 14 1 395 15 1 396 16 1 397 17 1
		 398 18 1 399 19 1 400 401 1 401 402 1 402 403 1 403 404 1 404 405 1 405 406 1 406 407 1
		 407 408 1 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1 415 416 1
		 416 417 1 417 418 1 418 419 0 419 400 1 420 421 1 421 422 1 422 423 1 423 424 1 424 425 1
		 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1;
	setAttr ".ed[830:995]" 430 431 1 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1
		 436 437 1 437 438 1 438 439 0 439 420 1 440 441 1 441 442 1 442 443 1 443 444 1 444 445 1
		 445 446 1 446 447 1 447 448 1 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1
		 454 455 1 455 456 1 456 457 1 457 458 1 458 459 1 459 440 1 460 461 1 461 462 1 462 463 1
		 463 464 1 464 465 1 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1
		 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 460 1 480 481 1
		 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1
		 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1 498 499 1
		 499 480 1 500 501 1 501 502 1 502 503 1 503 504 1 504 505 1 505 506 1 506 507 1 507 508 1
		 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1
		 517 518 1 518 519 1 519 500 1 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 526 1
		 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1 534 535 1
		 535 536 1 536 537 1 537 538 1 538 539 1 539 520 1 540 541 0 541 542 0 542 543 0 543 544 0
		 544 545 0 545 546 0 546 547 0 547 548 0 548 549 0 549 550 0 550 551 0 551 552 0 552 553 0
		 553 554 0 554 555 0 555 556 0 556 557 0 557 558 0 558 559 0 559 540 0 560 561 0 561 562 0
		 562 563 0 563 564 0 564 565 0 565 566 0 566 567 0 567 568 0 568 569 0 569 570 0 570 571 0
		 571 572 0 572 573 0 573 574 0 574 575 0 575 576 0 576 577 0 577 578 0 578 579 0 579 560 0
		 580 581 1 581 582 1 582 583 1 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1 588 589 1
		 589 590 1 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1;
	setAttr ".ed[996:1161]" 596 597 1 597 598 1 598 599 1 599 580 1 600 601 1 601 602 1
		 602 603 1 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1
		 611 612 1 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1 619 600 1
		 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 626 1 626 627 1 627 628 1 628 629 1
		 629 630 1 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1 637 638 1
		 638 639 1 639 620 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 646 1 646 647 1
		 647 648 1 648 649 1 649 650 1 650 651 1 651 652 1 652 653 1 653 654 1 654 655 1 655 656 1
		 656 657 1 657 658 1 658 659 1 659 640 1 660 661 1 661 662 1 662 663 1 663 664 1 664 665 1
		 665 666 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1 673 674 1
		 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 660 1 680 681 0 681 682 0 682 683 0
		 683 684 0 684 685 0 685 686 0 686 687 0 687 688 0 688 689 0 689 690 0 690 691 0 691 692 0
		 692 693 0 693 694 0 694 695 0 695 696 0 696 697 0 697 698 0 698 699 0 699 680 0 400 420 1
		 401 421 1 402 422 1 403 423 1 404 424 1 405 425 1 406 426 1 407 427 1 408 428 1 409 429 1
		 410 430 1 411 431 1 412 432 1 413 433 1 414 434 1 415 435 1 416 436 1 417 437 1 418 438 0
		 419 439 0 420 440 1 421 441 1 422 442 1 423 443 1 424 444 1 425 445 1 426 446 1 427 447 1
		 428 448 1 429 449 1 430 450 1 431 451 1 432 452 1 433 453 1 434 454 1 435 455 1 436 456 1
		 437 457 1 438 458 1 439 459 1 440 460 1 441 461 1 442 462 1 443 463 1 444 464 1 445 465 1
		 446 466 1 447 467 1 448 468 1 449 469 1 450 470 1 451 471 1 452 472 1 453 473 1 454 474 1
		 455 475 1 456 476 1 457 477 1 458 478 1 459 479 1 460 480 1 461 481 1;
	setAttr ".ed[1162:1327]" 462 482 1 463 483 1 464 484 1 465 485 1 466 486 1 467 487 1
		 468 488 1 469 489 1 470 490 1 471 491 1 472 492 1 473 493 1 474 494 1 475 495 1 476 496 1
		 477 497 1 478 498 1 479 499 1 480 500 1 481 501 1 482 502 1 483 503 1 484 504 1 485 505 1
		 486 506 1 487 507 1 488 508 1 489 509 1 490 510 1 491 511 1 492 512 1 493 513 1 494 514 1
		 495 515 1 496 516 1 497 517 1 498 518 1 499 519 1 500 520 1 501 521 1 502 522 1 503 523 1
		 504 524 1 505 525 1 506 526 1 507 527 1 508 528 1 509 529 1 510 530 1 511 531 1 512 532 1
		 513 533 1 514 534 1 515 535 1 516 536 1 517 537 1 518 538 1 519 539 1 520 540 1 521 541 1
		 522 542 1 523 543 1 524 544 1 525 545 1 526 546 1 527 547 1 528 548 1 529 549 1 530 550 1
		 531 551 1 532 552 1 533 553 1 534 554 1 535 555 1 536 556 1 537 557 1 538 558 1 539 559 1
		 540 792 1 541 791 1 542 790 1 543 789 1 544 788 1 545 787 1 546 786 1 547 805 1 548 804 1
		 549 803 1 550 802 1 551 801 1 552 800 1 553 799 1 554 798 1 555 797 1 556 796 1 557 795 1
		 558 794 1 559 793 1 560 580 1 561 581 1 562 582 1 563 583 1 564 584 1 565 585 1 566 586 1
		 567 587 1 568 588 1 569 589 1 570 590 1 571 591 1 572 592 1 573 593 1 574 594 1 575 595 1
		 576 596 1 577 597 1 578 598 1 579 599 1 580 600 1 581 601 1 582 602 1 583 603 1 584 604 1
		 585 605 1 586 606 1 587 607 1 588 608 1 589 609 1 590 610 1 591 611 1 592 612 1 593 613 1
		 594 614 1 595 615 1 596 616 1 597 617 1 598 618 1 599 619 1 600 620 1 601 621 1 602 622 1
		 603 623 1 604 624 1 605 625 1 606 626 1 607 627 1 608 628 1 609 629 1 610 630 1 611 631 1
		 612 632 1 613 633 1 614 634 1 615 635 1 616 636 1 617 637 1 618 638 1 619 639 1 620 640 1
		 621 641 1 622 642 1 623 643 1 624 644 1 625 645 1 626 646 1 627 647 1;
	setAttr ".ed[1328:1493]" 628 648 1 629 649 1 630 650 1 631 651 1 632 652 1 633 653 1
		 634 654 1 635 655 1 636 656 1 637 657 1 638 658 1 639 659 1 640 660 1 641 661 1 642 662 1
		 643 663 1 644 664 1 645 665 1 646 666 1 647 667 1 648 668 1 649 669 1 650 670 1 651 671 1
		 652 672 1 653 673 1 654 674 1 655 675 1 656 676 1 657 677 1 658 678 1 659 679 1 660 680 1
		 661 681 1 662 682 1 663 683 1 664 684 1 665 685 1 666 686 1 667 687 1 668 688 1 669 689 1
		 670 690 1 671 691 1 672 692 1 673 693 1 674 694 1 675 695 1 676 696 1 677 697 1 678 698 1
		 679 699 1 700 400 1 700 401 1 700 402 1 700 403 1 700 404 1 700 405 1 700 406 1 700 407 1
		 700 408 1 700 409 1 700 410 1 700 411 1 700 412 1 700 413 1 700 414 1 700 415 1 700 416 1
		 700 417 1 700 418 1 700 419 1 418 701 0 419 702 0 701 702 0 439 703 0 702 703 0 438 704 0
		 704 703 0 701 704 0 680 705 0 681 706 0 705 706 0 706 707 1 708 707 0 705 708 1 682 709 0
		 706 709 0 709 710 1 707 710 0 683 711 0 709 711 0 711 712 1 710 712 0 684 713 0 711 713 0
		 713 714 1 712 714 0 685 715 0 713 715 0 715 716 1 714 716 0 686 717 0 715 717 0 717 718 1
		 716 718 0 687 719 0 717 719 0 719 720 1 718 720 0 688 721 0 719 721 0 721 722 1 720 722 0
		 689 723 0 721 723 0 723 724 1 722 724 0 690 725 0 723 725 0 725 726 1 724 726 0 691 727 0
		 725 727 0 727 728 1 726 728 0 692 729 0 727 729 0 729 730 1 728 730 0 693 731 0 729 731 0
		 731 732 1 730 732 0 694 733 0 731 733 0 733 734 1 732 734 0 695 735 0 733 735 0 735 736 1
		 734 736 0 696 737 0 735 737 0 737 738 1 736 738 0 697 739 0 737 739 0 739 740 1 738 740 0
		 698 741 0 739 741 0 741 742 1 740 742 0 699 743 0 741 743 0 743 744 1 742 744 0 743 705 0
		 744 708 0 708 745 1 707 746 1 745 746 0 746 747 1 745 747 1 710 748 1;
	setAttr ".ed[1494:1659]" 746 748 0 748 747 1 712 749 1 748 749 0 749 747 1 714 750 1
		 749 750 0 750 747 1 716 751 1 750 751 0 751 747 1 718 752 1 751 752 0 752 747 1 720 753 1
		 752 753 0 753 747 1 722 754 1 753 754 0 754 747 1 724 755 1 754 755 0 755 747 1 726 756 1
		 755 756 0 756 747 1 728 757 1 756 757 0 757 747 1 730 758 1 757 758 0 758 747 1 732 759 1
		 758 759 0 759 747 1 734 760 1 759 760 0 760 747 1 736 761 1 760 761 0 761 747 1 738 762 1
		 761 762 0 762 747 1 740 763 1 762 763 0 763 747 1 742 764 1 763 764 0 764 747 1 744 765 1
		 764 765 0 765 747 1 765 745 0 766 767 0 767 768 0 768 769 0 769 770 0 770 771 0 771 772 0
		 772 773 0 773 774 0 774 775 0 775 776 0 776 777 0 777 778 0 778 779 0 779 780 0 780 781 0
		 781 782 0 782 783 0 783 784 0 784 785 0 785 766 0 786 787 0 787 788 0 788 789 0 789 790 0
		 790 791 0 791 792 0 792 793 0 793 794 0 794 795 0 795 796 0 796 797 0 797 798 0 798 799 0
		 799 800 0 800 801 0 801 802 0 802 803 0 803 804 0 804 805 0 805 786 0 786 806 0 787 807 0
		 806 807 0 766 808 0 806 808 1 767 809 0 808 809 0 807 809 1 788 810 0 807 810 0 768 811 0
		 809 811 0 810 811 1 789 812 0 810 812 0 769 813 0 811 813 0 812 813 1 790 814 0 812 814 0
		 770 815 0 813 815 0 814 815 1 791 816 0 814 816 0 771 817 0 815 817 0 816 817 1 792 818 0
		 816 818 0 772 819 0 817 819 0 818 819 1 793 820 0 818 820 0 773 821 0 819 821 0 820 821 1
		 794 822 0 820 822 0 774 823 0 821 823 0 822 823 1 795 824 0 822 824 0 775 825 0 823 825 0
		 824 825 1 796 826 0 824 826 0 776 827 0 825 827 0 826 827 1 797 828 0 826 828 0 777 829 0
		 827 829 0 828 829 1 798 830 0 828 830 0 778 831 0 829 831 0 830 831 1 799 832 0 830 832 0
		 779 833 0 831 833 0 832 833 1 800 834 0 832 834 0 780 835 0 833 835 0;
	setAttr ".ed[1660:1787]" 834 835 1 801 836 0 834 836 0 781 837 0 835 837 0 836 837 1
		 802 838 0 836 838 0 782 839 0 837 839 0 838 839 1 803 840 0 838 840 0 783 841 0 839 841 0
		 840 841 1 804 842 0 840 842 0 784 843 0 841 843 0 842 843 1 805 844 0 842 844 0 785 845 0
		 843 845 0 844 845 1 844 806 0 845 808 0 766 846 0 767 847 0 846 847 0 566 848 0 846 848 1
		 565 849 0 849 848 0 847 849 1 768 850 0 847 850 0 564 851 0 851 849 0 850 851 1 769 852 0
		 850 852 0 563 853 0 853 851 0 852 853 1 770 854 0 852 854 0 562 855 0 855 853 0 854 855 1
		 771 856 0 854 856 0 561 857 0 857 855 0 856 857 1 772 858 0 856 858 0 560 859 0 859 857 0
		 858 859 1 773 860 0 858 860 0 579 861 0 861 859 0 860 861 1 774 862 0 860 862 0 578 863 0
		 863 861 0 862 863 1 775 864 0 862 864 0 577 865 0 865 863 0 864 865 1 776 866 0 864 866 0
		 576 867 0 867 865 0 866 867 1 777 868 0 866 868 0 575 869 0 869 867 0 868 869 1 778 870 0
		 868 870 0 574 871 0 871 869 0 870 871 1 779 872 0 870 872 0 573 873 0 873 871 0 872 873 1
		 780 874 0 872 874 0 572 875 0 875 873 0 874 875 1 781 876 0 874 876 0 571 877 0 877 875 0
		 876 877 1 782 878 0 876 878 0 570 879 0 879 877 0 878 879 1 783 880 0 878 880 0 569 881 0
		 881 879 0 880 881 1 784 882 0 880 882 0 568 883 0 883 881 0 882 883 1 785 884 0 882 884 0
		 567 885 0 885 883 0 884 885 1 884 846 0 848 885 0;
	setAttr -s 904 -ch 3576 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -1 400 20 -402
		mu 0 4 1 0 21 22
		f 4 -2 401 21 -403
		mu 0 4 2 1 22 23
		f 4 -3 402 22 -404
		mu 0 4 3 2 23 24
		f 4 -4 403 23 -405
		mu 0 4 4 3 24 25
		f 4 -5 404 24 -406
		mu 0 4 5 4 25 26
		f 4 -6 405 25 -407
		mu 0 4 6 5 26 27
		f 4 -7 406 26 -408
		mu 0 4 7 6 27 28
		f 4 -8 407 27 -409
		mu 0 4 8 7 28 29
		f 4 -9 408 28 -410
		mu 0 4 9 8 29 30
		f 4 -10 409 29 -411
		mu 0 4 10 9 30 31
		f 4 -11 410 30 -412
		mu 0 4 11 10 31 32
		f 4 -12 411 31 -413
		mu 0 4 12 11 32 33
		f 4 -13 412 32 -414
		mu 0 4 13 12 33 34
		f 4 -14 413 33 -415
		mu 0 4 14 13 34 35
		f 4 -15 414 34 -416
		mu 0 4 15 14 35 36
		f 4 -16 415 35 -417
		mu 0 4 16 15 36 37
		f 4 -17 416 36 -418
		mu 0 4 17 16 37 38
		f 4 -18 417 37 -419
		mu 0 4 18 17 38 39
		f 4 -19 418 38 -420
		mu 0 4 19 18 39 40
		f 4 -20 419 39 -401
		mu 0 4 20 19 40 41
		f 4 -21 420 40 -422
		mu 0 4 22 21 42 43
		f 4 -22 421 41 -423
		mu 0 4 23 22 43 44
		f 4 -23 422 42 -424
		mu 0 4 24 23 44 45
		f 4 -24 423 43 -425
		mu 0 4 25 24 45 46
		f 4 -25 424 44 -426
		mu 0 4 26 25 46 47
		f 4 -26 425 45 -427
		mu 0 4 27 26 47 48
		f 4 -27 426 46 -428
		mu 0 4 28 27 48 49
		f 4 -28 427 47 -429
		mu 0 4 29 28 49 50
		f 4 -29 428 48 -430
		mu 0 4 30 29 50 51
		f 4 -30 429 49 -431
		mu 0 4 31 30 51 52
		f 4 -31 430 50 -432
		mu 0 4 32 31 52 53
		f 4 -32 431 51 -433
		mu 0 4 33 32 53 54
		f 4 -33 432 52 -434
		mu 0 4 34 33 54 55
		f 4 -34 433 53 -435
		mu 0 4 35 34 55 56
		f 4 -35 434 54 -436
		mu 0 4 36 35 56 57
		f 4 -36 435 55 -437
		mu 0 4 37 36 57 58
		f 4 -37 436 56 -438
		mu 0 4 38 37 58 59
		f 4 -38 437 57 -439
		mu 0 4 39 38 59 60
		f 4 -39 438 58 -440
		mu 0 4 40 39 60 61
		f 4 -40 439 59 -421
		mu 0 4 41 40 61 62
		f 4 -41 440 60 -442
		mu 0 4 43 42 63 64
		f 4 -42 441 61 -443
		mu 0 4 44 43 64 65
		f 4 -43 442 62 -444
		mu 0 4 45 44 65 66
		f 4 -44 443 63 -445
		mu 0 4 46 45 66 67
		f 4 -45 444 64 -446
		mu 0 4 47 46 67 68
		f 4 -46 445 65 -447
		mu 0 4 48 47 68 69
		f 4 -47 446 66 -448
		mu 0 4 49 48 69 70
		f 4 -48 447 67 -449
		mu 0 4 50 49 70 71
		f 4 -49 448 68 -450
		mu 0 4 51 50 71 72
		f 4 -50 449 69 -451
		mu 0 4 52 51 72 73
		f 4 -51 450 70 -452
		mu 0 4 53 52 73 74
		f 4 -52 451 71 -453
		mu 0 4 54 53 74 75
		f 4 -53 452 72 -454
		mu 0 4 55 54 75 76
		f 4 -54 453 73 -455
		mu 0 4 56 55 76 77
		f 4 -55 454 74 -456
		mu 0 4 57 56 77 78
		f 4 -56 455 75 -457
		mu 0 4 58 57 78 79
		f 4 -57 456 76 -458
		mu 0 4 59 58 79 80
		f 4 -58 457 77 -459
		mu 0 4 60 59 80 81
		f 4 -59 458 78 -460
		mu 0 4 61 60 81 82
		f 4 -60 459 79 -441
		mu 0 4 62 61 82 83
		f 4 -61 460 80 -462
		mu 0 4 64 63 84 85
		f 4 -62 461 81 -463
		mu 0 4 65 64 85 86
		f 4 -63 462 82 -464
		mu 0 4 66 65 86 87
		f 4 -64 463 83 -465
		mu 0 4 67 66 87 88
		f 4 -65 464 84 -466
		mu 0 4 68 67 88 89
		f 4 -66 465 85 -467
		mu 0 4 69 68 89 90
		f 4 -67 466 86 -468
		mu 0 4 70 69 90 91
		f 4 -68 467 87 -469
		mu 0 4 71 70 91 92
		f 4 -69 468 88 -470
		mu 0 4 72 71 92 93
		f 4 -70 469 89 -471
		mu 0 4 73 72 93 94
		f 4 -71 470 90 -472
		mu 0 4 74 73 94 95
		f 4 -72 471 91 -473
		mu 0 4 75 74 95 96
		f 4 -73 472 92 -474
		mu 0 4 76 75 96 97
		f 4 -74 473 93 -475
		mu 0 4 77 76 97 98
		f 4 -75 474 94 -476
		mu 0 4 78 77 98 99
		f 4 -76 475 95 -477
		mu 0 4 79 78 99 100
		f 4 -77 476 96 -478
		mu 0 4 80 79 100 101
		f 4 -78 477 97 -479
		mu 0 4 81 80 101 102
		f 4 -79 478 98 -480
		mu 0 4 82 81 102 103
		f 4 -80 479 99 -461
		mu 0 4 83 82 103 104
		f 4 -81 480 100 -482
		mu 0 4 85 84 105 106
		f 4 -82 481 101 -483
		mu 0 4 86 85 106 107
		f 4 -83 482 102 -484
		mu 0 4 87 86 107 108
		f 4 -84 483 103 -485
		mu 0 4 88 87 108 109
		f 4 -85 484 104 -486
		mu 0 4 89 88 109 110
		f 4 -86 485 105 -487
		mu 0 4 90 89 110 111
		f 4 -87 486 106 -488
		mu 0 4 91 90 111 112
		f 4 -88 487 107 -489
		mu 0 4 92 91 112 113
		f 4 -89 488 108 -490
		mu 0 4 93 92 113 114
		f 4 -90 489 109 -491
		mu 0 4 94 93 114 115
		f 4 -91 490 110 -492
		mu 0 4 95 94 115 116
		f 4 -92 491 111 -493
		mu 0 4 96 95 116 117
		f 4 -93 492 112 -494
		mu 0 4 97 96 117 118
		f 4 -94 493 113 -495
		mu 0 4 98 97 118 119
		f 4 -95 494 114 -496
		mu 0 4 99 98 119 120
		f 4 -96 495 115 -497
		mu 0 4 100 99 120 121
		f 4 -97 496 116 -498
		mu 0 4 101 100 121 122
		f 4 -98 497 117 -499
		mu 0 4 102 101 122 123
		f 4 -99 498 118 -500
		mu 0 4 103 102 123 124
		f 4 -100 499 119 -481
		mu 0 4 104 103 124 125
		f 4 -101 500 120 -502
		mu 0 4 106 105 126 127
		f 4 -102 501 121 -503
		mu 0 4 107 106 127 128
		f 4 -103 502 122 -504
		mu 0 4 108 107 128 129
		f 4 -104 503 123 -505
		mu 0 4 109 108 129 130
		f 4 -105 504 124 -506
		mu 0 4 110 109 130 131
		f 4 -106 505 125 -507
		mu 0 4 111 110 131 132
		f 4 -107 506 126 -508
		mu 0 4 112 111 132 133
		f 4 -108 507 127 -509
		mu 0 4 113 112 133 134
		f 4 -109 508 128 -510
		mu 0 4 114 113 134 135
		f 4 -110 509 129 -511
		mu 0 4 115 114 135 136
		f 4 -111 510 130 -512
		mu 0 4 116 115 136 137
		f 4 -112 511 131 -513
		mu 0 4 117 116 137 138
		f 4 -113 512 132 -514
		mu 0 4 118 117 138 139
		f 4 -114 513 133 -515
		mu 0 4 119 118 139 140
		f 4 -115 514 134 -516
		mu 0 4 120 119 140 141
		f 4 -116 515 135 -517
		mu 0 4 121 120 141 142
		f 4 -117 516 136 -518
		mu 0 4 122 121 142 143
		f 4 -118 517 137 -519
		mu 0 4 123 122 143 144
		f 4 -119 518 138 -520
		mu 0 4 124 123 144 145
		f 4 -120 519 139 -501
		mu 0 4 125 124 145 146
		f 4 -121 520 140 -522
		mu 0 4 127 126 147 148
		f 4 -122 521 141 -523
		mu 0 4 128 127 148 149
		f 4 -123 522 142 -524
		mu 0 4 129 128 149 150
		f 4 -124 523 143 -525
		mu 0 4 130 129 150 151
		f 4 -125 524 144 -526
		mu 0 4 131 130 151 152
		f 4 -126 525 145 -527
		mu 0 4 132 131 152 153
		f 4 -127 526 146 -528
		mu 0 4 133 132 153 154
		f 4 -128 527 147 -529
		mu 0 4 134 133 154 155
		f 4 -129 528 148 -530
		mu 0 4 135 134 155 156
		f 4 -130 529 149 -531
		mu 0 4 136 135 156 157
		f 4 -131 530 150 -532
		mu 0 4 137 136 157 158
		f 4 -132 531 151 -533
		mu 0 4 138 137 158 159
		f 4 -133 532 152 -534
		mu 0 4 139 138 159 160
		f 4 -134 533 153 -535
		mu 0 4 140 139 160 161
		f 4 -135 534 154 -536
		mu 0 4 141 140 161 162
		f 4 -136 535 155 -537
		mu 0 4 142 141 162 163
		f 4 -137 536 156 -538
		mu 0 4 143 142 163 164
		f 4 -138 537 157 -539
		mu 0 4 144 143 164 165
		f 4 -139 538 158 -540
		mu 0 4 145 144 165 166
		f 4 -140 539 159 -521
		mu 0 4 146 145 166 167
		f 4 -141 540 160 -542
		mu 0 4 148 147 168 169
		f 4 -142 541 161 -543
		mu 0 4 149 148 169 170
		f 4 -143 542 162 -544
		mu 0 4 150 149 170 171
		f 4 -144 543 163 -545
		mu 0 4 151 150 171 172
		f 4 -145 544 164 -546
		mu 0 4 152 151 172 173
		f 4 -146 545 165 -547
		mu 0 4 153 152 173 174
		f 4 -147 546 166 -548
		mu 0 4 154 153 174 175
		f 4 -148 547 167 -549
		mu 0 4 155 154 175 176
		f 4 -149 548 168 -550
		mu 0 4 156 155 176 177
		f 4 -150 549 169 -551
		mu 0 4 157 156 177 178
		f 4 -151 550 170 -552
		mu 0 4 158 157 178 179
		f 4 -152 551 171 -553
		mu 0 4 159 158 179 180
		f 4 -153 552 172 -554
		mu 0 4 160 159 180 181
		f 4 -154 553 173 -555
		mu 0 4 161 160 181 182
		f 4 -155 554 174 -556
		mu 0 4 162 161 182 183
		f 4 -156 555 175 -557
		mu 0 4 163 162 183 184
		f 4 -157 556 176 -558
		mu 0 4 164 163 184 185
		f 4 -158 557 177 -559
		mu 0 4 165 164 185 186
		f 4 -159 558 178 -560
		mu 0 4 166 165 186 187
		f 4 -160 559 179 -541
		mu 0 4 167 166 187 188
		f 4 -161 560 180 -562
		mu 0 4 169 168 189 190
		f 4 -162 561 181 -563
		mu 0 4 170 169 190 191
		f 4 -163 562 182 -564
		mu 0 4 171 170 191 192
		f 4 -164 563 183 -565
		mu 0 4 172 171 192 193
		f 4 -165 564 184 -566
		mu 0 4 173 172 193 194
		f 4 -166 565 185 -567
		mu 0 4 174 173 194 195
		f 4 -167 566 186 -568
		mu 0 4 175 174 195 196
		f 4 -168 567 187 -569
		mu 0 4 176 175 196 197
		f 4 -169 568 188 -570
		mu 0 4 177 176 197 198
		f 4 -170 569 189 -571
		mu 0 4 178 177 198 199
		f 4 -171 570 190 -572
		mu 0 4 179 178 199 200
		f 4 -172 571 191 -573
		mu 0 4 180 179 200 201
		f 4 -173 572 192 -574
		mu 0 4 181 180 201 202
		f 4 -174 573 193 -575
		mu 0 4 182 181 202 203
		f 4 -175 574 194 -576
		mu 0 4 183 182 203 204
		f 4 -176 575 195 -577
		mu 0 4 184 183 204 205
		f 4 -177 576 196 -578
		mu 0 4 185 184 205 206
		f 4 -178 577 197 -579
		mu 0 4 186 185 206 207
		f 4 -179 578 198 -580
		mu 0 4 187 186 207 208
		f 4 -180 579 199 -561
		mu 0 4 188 187 208 209
		f 4 -181 580 200 -582
		mu 0 4 190 189 210 211
		f 4 -182 581 201 -583
		mu 0 4 191 190 211 212
		f 4 -183 582 202 -584
		mu 0 4 192 191 212 213
		f 4 -184 583 203 -585
		mu 0 4 193 192 213 214
		f 4 -185 584 204 -586
		mu 0 4 194 193 214 215
		f 4 -186 585 205 -587
		mu 0 4 195 194 215 216
		f 4 -187 586 206 -588
		mu 0 4 196 195 216 217
		f 4 -188 587 207 -589
		mu 0 4 197 196 217 218
		f 4 -189 588 208 -590
		mu 0 4 198 197 218 219
		f 4 -190 589 209 -591
		mu 0 4 199 198 219 220
		f 4 -191 590 210 -592
		mu 0 4 200 199 220 221
		f 4 -192 591 211 -593
		mu 0 4 201 200 221 222
		f 4 -193 592 212 -594
		mu 0 4 202 201 222 223
		f 4 -194 593 213 -595
		mu 0 4 203 202 223 224
		f 4 -195 594 214 -596
		mu 0 4 204 203 224 225
		f 4 -196 595 215 -597
		mu 0 4 205 204 225 226
		f 4 -197 596 216 -598
		mu 0 4 206 205 226 227
		f 4 -198 597 217 -599
		mu 0 4 207 206 227 228
		f 4 -199 598 218 -600
		mu 0 4 208 207 228 229
		f 4 -200 599 219 -581
		mu 0 4 209 208 229 230
		f 4 -201 600 220 -602
		mu 0 4 211 210 231 232
		f 4 -202 601 221 -603
		mu 0 4 212 211 232 233
		f 4 -203 602 222 -604
		mu 0 4 213 212 233 234
		f 4 -204 603 223 -605
		mu 0 4 214 213 234 235
		f 4 -205 604 224 -606
		mu 0 4 215 214 235 236
		f 4 -206 605 225 -607
		mu 0 4 216 215 236 237
		f 4 -207 606 226 -608
		mu 0 4 217 216 237 238
		f 4 -208 607 227 -609
		mu 0 4 218 217 238 239
		f 4 -209 608 228 -610
		mu 0 4 219 218 239 240
		f 4 -210 609 229 -611
		mu 0 4 220 219 240 241
		f 4 -211 610 230 -612
		mu 0 4 221 220 241 242
		f 4 -212 611 231 -613
		mu 0 4 222 221 242 243
		f 4 -213 612 232 -614
		mu 0 4 223 222 243 244
		f 4 -214 613 233 -615
		mu 0 4 224 223 244 245
		f 4 -215 614 234 -616
		mu 0 4 225 224 245 246
		f 4 -216 615 235 -617
		mu 0 4 226 225 246 247
		f 4 -217 616 236 -618
		mu 0 4 227 226 247 248
		f 4 -218 617 237 -619
		mu 0 4 228 227 248 249
		f 4 -219 618 238 -620
		mu 0 4 229 228 249 250
		f 4 -220 619 239 -601
		mu 0 4 230 229 250 251
		f 4 -221 620 240 -622
		mu 0 4 232 231 252 253
		f 4 -222 621 241 -623
		mu 0 4 233 232 253 254
		f 4 -223 622 242 -624
		mu 0 4 234 233 254 255
		f 4 -224 623 243 -625
		mu 0 4 235 234 255 256
		f 4 -225 624 244 -626
		mu 0 4 236 235 256 257
		f 4 -226 625 245 -627
		mu 0 4 237 236 257 258
		f 4 -227 626 246 -628
		mu 0 4 238 237 258 259
		f 4 -228 627 247 -629
		mu 0 4 239 238 259 260
		f 4 -229 628 248 -630
		mu 0 4 240 239 260 261
		f 4 -230 629 249 -631
		mu 0 4 241 240 261 262
		f 4 -231 630 250 -632
		mu 0 4 242 241 262 263
		f 4 -232 631 251 -633
		mu 0 4 243 242 263 264
		f 4 -233 632 252 -634
		mu 0 4 244 243 264 265
		f 4 -234 633 253 -635
		mu 0 4 245 244 265 266
		f 4 -235 634 254 -636
		mu 0 4 246 245 266 267
		f 4 -236 635 255 -637
		mu 0 4 247 246 267 268
		f 4 -237 636 256 -638
		mu 0 4 248 247 268 269
		f 4 -238 637 257 -639
		mu 0 4 249 248 269 270
		f 4 -239 638 258 -640
		mu 0 4 250 249 270 271
		f 4 -240 639 259 -621
		mu 0 4 251 250 271 272
		f 4 -241 640 260 -642
		mu 0 4 253 252 273 274
		f 4 -242 641 261 -643
		mu 0 4 254 253 274 275
		f 4 -243 642 262 -644
		mu 0 4 255 254 275 276
		f 4 -244 643 263 -645
		mu 0 4 256 255 276 277
		f 4 -245 644 264 -646
		mu 0 4 257 256 277 278
		f 4 -246 645 265 -647
		mu 0 4 258 257 278 279
		f 4 -247 646 266 -648
		mu 0 4 259 258 279 280
		f 4 -248 647 267 -649
		mu 0 4 260 259 280 281
		f 4 -249 648 268 -650
		mu 0 4 261 260 281 282
		f 4 -250 649 269 -651
		mu 0 4 262 261 282 283
		f 4 -251 650 270 -652
		mu 0 4 263 262 283 284
		f 4 -252 651 271 -653
		mu 0 4 264 263 284 285
		f 4 -253 652 272 -654
		mu 0 4 265 264 285 286
		f 4 -254 653 273 -655
		mu 0 4 266 265 286 287
		f 4 -255 654 274 -656
		mu 0 4 267 266 287 288
		f 4 -256 655 275 -657
		mu 0 4 268 267 288 289
		f 4 -257 656 276 -658
		mu 0 4 269 268 289 290
		f 4 -258 657 277 -659
		mu 0 4 270 269 290 291
		f 4 -259 658 278 -660
		mu 0 4 271 270 291 292
		f 4 -260 659 279 -641
		mu 0 4 272 271 292 293
		f 4 -261 660 280 -662
		mu 0 4 274 273 294 295
		f 4 -262 661 281 -663
		mu 0 4 275 274 295 296
		f 4 -263 662 282 -664
		mu 0 4 276 275 296 297
		f 4 -264 663 283 -665
		mu 0 4 277 276 297 298
		f 4 -265 664 284 -666
		mu 0 4 278 277 298 299
		f 4 -266 665 285 -667
		mu 0 4 279 278 299 300
		f 4 -267 666 286 -668
		mu 0 4 280 279 300 301
		f 4 -268 667 287 -669
		mu 0 4 281 280 301 302
		f 4 -269 668 288 -670
		mu 0 4 282 281 302 303
		f 4 -270 669 289 -671
		mu 0 4 283 282 303 304
		f 4 -271 670 290 -672
		mu 0 4 284 283 304 305
		f 4 -272 671 291 -673
		mu 0 4 285 284 305 306
		f 4 -273 672 292 -674
		mu 0 4 286 285 306 307
		f 4 -274 673 293 -675
		mu 0 4 287 286 307 308
		f 4 -275 674 294 -676
		mu 0 4 288 287 308 309
		f 4 -276 675 295 -677
		mu 0 4 289 288 309 310
		f 4 -277 676 296 -678
		mu 0 4 290 289 310 311
		f 4 -278 677 297 -679
		mu 0 4 291 290 311 312
		f 4 -279 678 298 -680
		mu 0 4 292 291 312 313
		f 4 -280 679 299 -661
		mu 0 4 293 292 313 314
		f 4 -281 680 300 -682
		mu 0 4 295 294 315 316
		f 4 -282 681 301 -683
		mu 0 4 296 295 316 317
		f 4 -283 682 302 -684
		mu 0 4 297 296 317 318
		f 4 -284 683 303 -685
		mu 0 4 298 297 318 319
		f 4 -285 684 304 -686
		mu 0 4 299 298 319 320
		f 4 -286 685 305 -687
		mu 0 4 300 299 320 321
		f 4 -287 686 306 -688
		mu 0 4 301 300 321 322
		f 4 -288 687 307 -689
		mu 0 4 302 301 322 323
		f 4 -289 688 308 -690
		mu 0 4 303 302 323 324
		f 4 -290 689 309 -691
		mu 0 4 304 303 324 325
		f 4 -291 690 310 -692
		mu 0 4 305 304 325 326
		f 4 -292 691 311 -693
		mu 0 4 306 305 326 327
		f 4 -293 692 312 -694
		mu 0 4 307 306 327 328
		f 4 -294 693 313 -695
		mu 0 4 308 307 328 329
		f 4 -295 694 314 -696
		mu 0 4 309 308 329 330
		f 4 -296 695 315 -697
		mu 0 4 310 309 330 331
		f 4 -297 696 316 -698
		mu 0 4 311 310 331 332
		f 4 -298 697 317 -699
		mu 0 4 312 311 332 333
		f 4 -299 698 318 -700
		mu 0 4 313 312 333 334
		f 4 -300 699 319 -681
		mu 0 4 314 313 334 335
		f 4 -301 700 320 -702
		mu 0 4 316 315 336 337
		f 4 -302 701 321 -703
		mu 0 4 317 316 337 338
		f 4 -303 702 322 -704
		mu 0 4 318 317 338 339
		f 4 -304 703 323 -705
		mu 0 4 319 318 339 340
		f 4 -305 704 324 -706
		mu 0 4 320 319 340 341
		f 4 -306 705 325 -707
		mu 0 4 321 320 341 342
		f 4 -307 706 326 -708
		mu 0 4 322 321 342 343
		f 4 -308 707 327 -709
		mu 0 4 323 322 343 344
		f 4 -309 708 328 -710
		mu 0 4 324 323 344 345
		f 4 -310 709 329 -711
		mu 0 4 325 324 345 346
		f 4 -311 710 330 -712
		mu 0 4 326 325 346 347
		f 4 -312 711 331 -713
		mu 0 4 327 326 347 348
		f 4 -313 712 332 -714
		mu 0 4 328 327 348 349
		f 4 -314 713 333 -715
		mu 0 4 329 328 349 350
		f 4 -315 714 334 -716
		mu 0 4 330 329 350 351
		f 4 -316 715 335 -717
		mu 0 4 331 330 351 352
		f 4 -317 716 336 -718
		mu 0 4 332 331 352 353
		f 4 -318 717 337 -719
		mu 0 4 333 332 353 354
		f 4 -319 718 338 -720
		mu 0 4 334 333 354 355
		f 4 -320 719 339 -701
		mu 0 4 335 334 355 356
		f 4 -321 720 340 -722
		mu 0 4 337 336 357 358
		f 4 -322 721 341 -723
		mu 0 4 338 337 358 359
		f 4 -323 722 342 -724
		mu 0 4 339 338 359 360
		f 4 -324 723 343 -725
		mu 0 4 340 339 360 361
		f 4 -325 724 344 -726
		mu 0 4 341 340 361 362
		f 4 -326 725 345 -727
		mu 0 4 342 341 362 363
		f 4 -327 726 346 -728
		mu 0 4 343 342 363 364
		f 4 -328 727 347 -729
		mu 0 4 344 343 364 365
		f 4 -329 728 348 -730
		mu 0 4 345 344 365 366
		f 4 -330 729 349 -731
		mu 0 4 346 345 366 367
		f 4 -331 730 350 -732
		mu 0 4 347 346 367 368
		f 4 -332 731 351 -733
		mu 0 4 348 347 368 369
		f 4 -333 732 352 -734
		mu 0 4 349 348 369 370
		f 4 -334 733 353 -735
		mu 0 4 350 349 370 371
		f 4 -335 734 354 -736
		mu 0 4 351 350 371 372
		f 4 -336 735 355 -737
		mu 0 4 352 351 372 373
		f 4 -337 736 356 -738
		mu 0 4 353 352 373 374
		f 4 -338 737 357 -739
		mu 0 4 354 353 374 375
		f 4 -339 738 358 -740
		mu 0 4 355 354 375 376
		f 4 -340 739 359 -721
		mu 0 4 356 355 376 377
		f 4 -341 740 360 -742
		mu 0 4 358 357 378 379
		f 4 -342 741 361 -743
		mu 0 4 359 358 379 380
		f 4 -343 742 362 -744
		mu 0 4 360 359 380 381
		f 4 -344 743 363 -745
		mu 0 4 361 360 381 382
		f 4 -345 744 364 -746
		mu 0 4 362 361 382 383
		f 4 -346 745 365 -747
		mu 0 4 363 362 383 384
		f 4 -347 746 366 -748
		mu 0 4 364 363 384 385
		f 4 -348 747 367 -749
		mu 0 4 365 364 385 386
		f 4 -349 748 368 -750
		mu 0 4 366 365 386 387
		f 4 -350 749 369 -751
		mu 0 4 367 366 387 388
		f 4 -351 750 370 -752
		mu 0 4 368 367 388 389
		f 4 -352 751 371 -753
		mu 0 4 369 368 389 390
		f 4 -353 752 372 -754
		mu 0 4 370 369 390 391
		f 4 -354 753 373 -755
		mu 0 4 371 370 391 392
		f 4 -355 754 374 -756
		mu 0 4 372 371 392 393
		f 4 -356 755 375 -757
		mu 0 4 373 372 393 394
		f 4 -357 756 376 -758
		mu 0 4 374 373 394 395
		f 4 -358 757 377 -759
		mu 0 4 375 374 395 396
		f 4 -359 758 378 -760
		mu 0 4 376 375 396 397
		f 4 -360 759 379 -741
		mu 0 4 377 376 397 398
		f 4 -361 760 380 -762
		mu 0 4 379 378 399 400
		f 4 -362 761 381 -763
		mu 0 4 380 379 400 401
		f 4 -363 762 382 -764
		mu 0 4 381 380 401 402
		f 4 -364 763 383 -765
		mu 0 4 382 381 402 403
		f 4 -365 764 384 -766
		mu 0 4 383 382 403 404
		f 4 -366 765 385 -767
		mu 0 4 384 383 404 405
		f 4 -367 766 386 -768
		mu 0 4 385 384 405 406
		f 4 -368 767 387 -769
		mu 0 4 386 385 406 407
		f 4 -369 768 388 -770
		mu 0 4 387 386 407 408
		f 4 -370 769 389 -771
		mu 0 4 388 387 408 409
		f 4 -371 770 390 -772
		mu 0 4 389 388 409 410
		f 4 -372 771 391 -773
		mu 0 4 390 389 410 411
		f 4 -373 772 392 -774
		mu 0 4 391 390 411 412
		f 4 -374 773 393 -775
		mu 0 4 392 391 412 413
		f 4 -375 774 394 -776
		mu 0 4 393 392 413 414
		f 4 -376 775 395 -777
		mu 0 4 394 393 414 415
		f 4 -377 776 396 -778
		mu 0 4 395 394 415 416
		f 4 -378 777 397 -779
		mu 0 4 396 395 416 417
		f 4 -379 778 398 -780
		mu 0 4 397 396 417 418
		f 4 -380 779 399 -761
		mu 0 4 398 397 418 419
		f 4 -381 780 0 -782
		mu 0 4 400 399 420 421
		f 4 -382 781 1 -783
		mu 0 4 401 400 421 422
		f 4 -383 782 2 -784
		mu 0 4 402 401 422 423
		f 4 -384 783 3 -785
		mu 0 4 403 402 423 424
		f 4 -385 784 4 -786
		mu 0 4 404 403 424 425
		f 4 -386 785 5 -787
		mu 0 4 405 404 425 426
		f 4 -387 786 6 -788
		mu 0 4 406 405 426 427
		f 4 -388 787 7 -789
		mu 0 4 407 406 427 428
		f 4 -389 788 8 -790
		mu 0 4 408 407 428 429
		f 4 -390 789 9 -791
		mu 0 4 409 408 429 430
		f 4 -391 790 10 -792
		mu 0 4 410 409 430 431
		f 4 -392 791 11 -793
		mu 0 4 411 410 431 432
		f 4 -393 792 12 -794
		mu 0 4 412 411 432 433
		f 4 -394 793 13 -795
		mu 0 4 413 412 433 434
		f 4 -395 794 14 -796
		mu 0 4 414 413 434 435
		f 4 -396 795 15 -797
		mu 0 4 415 414 435 436
		f 4 -397 796 16 -798
		mu 0 4 416 415 436 437
		f 4 -398 797 17 -799
		mu 0 4 417 416 437 438
		f 4 -399 798 18 -800
		mu 0 4 418 417 438 439
		f 4 -400 799 19 -781
		mu 0 4 419 418 439 440
		f 4 800 1101 -821 -1101
		mu 0 4 441 442 443 444
		f 4 801 1102 -822 -1102
		mu 0 4 442 445 446 443
		f 4 802 1103 -823 -1103
		mu 0 4 445 447 448 446
		f 4 803 1104 -824 -1104
		mu 0 4 447 449 450 448
		f 4 804 1105 -825 -1105
		mu 0 4 449 451 452 450
		f 4 805 1106 -826 -1106
		mu 0 4 451 453 454 452
		f 4 806 1107 -827 -1107
		mu 0 4 453 455 456 454
		f 4 807 1108 -828 -1108
		mu 0 4 455 457 458 456
		f 4 808 1109 -829 -1109
		mu 0 4 457 459 460 458
		f 4 809 1110 -830 -1110
		mu 0 4 459 461 462 460
		f 4 810 1111 -831 -1111
		mu 0 4 461 463 464 462
		f 4 811 1112 -832 -1112
		mu 0 4 463 465 466 464
		f 4 812 1113 -833 -1113
		mu 0 4 465 467 468 466
		f 4 813 1114 -834 -1114
		mu 0 4 467 469 470 468
		f 4 814 1115 -835 -1115
		mu 0 4 469 471 472 470
		f 4 815 1116 -836 -1116
		mu 0 4 471 473 474 472
		f 4 816 1117 -837 -1117
		mu 0 4 473 475 476 474
		f 4 817 1118 -838 -1118
		mu 0 4 475 477 478 476
		f 4 1402 1404 -1407 -1408
		mu 0 4 479 480 481 482
		f 4 819 1100 -840 -1120
		mu 0 4 483 441 444 484
		f 4 820 1121 -841 -1121
		mu 0 4 444 443 485 486
		f 4 821 1122 -842 -1122
		mu 0 4 443 446 487 485
		f 4 822 1123 -843 -1123
		mu 0 4 446 448 488 487
		f 4 823 1124 -844 -1124
		mu 0 4 448 450 489 488
		f 4 824 1125 -845 -1125
		mu 0 4 450 452 490 489
		f 4 825 1126 -846 -1126
		mu 0 4 452 454 491 490
		f 4 826 1127 -847 -1127
		mu 0 4 454 456 492 491
		f 4 827 1128 -848 -1128
		mu 0 4 456 458 493 492
		f 4 828 1129 -849 -1129
		mu 0 4 458 460 494 493
		f 4 829 1130 -850 -1130
		mu 0 4 460 462 495 494
		f 4 830 1131 -851 -1131
		mu 0 4 462 464 496 495
		f 4 831 1132 -852 -1132
		mu 0 4 464 466 497 496
		f 4 832 1133 -853 -1133
		mu 0 4 466 468 498 497
		f 4 833 1134 -854 -1134
		mu 0 4 468 470 499 498
		f 4 834 1135 -855 -1135
		mu 0 4 470 472 500 499
		f 4 835 1136 -856 -1136
		mu 0 4 472 474 501 500
		f 4 836 1137 -857 -1137
		mu 0 4 474 476 502 501
		f 4 837 1138 -858 -1138
		mu 0 4 476 478 503 502
		f 4 838 1139 -859 -1139
		mu 0 4 478 484 504 503
		f 4 839 1120 -860 -1140
		mu 0 4 484 444 486 504
		f 4 840 1141 -861 -1141
		mu 0 4 486 485 505 506
		f 4 841 1142 -862 -1142
		mu 0 4 485 487 507 505
		f 4 842 1143 -863 -1143
		mu 0 4 487 488 508 507
		f 4 843 1144 -864 -1144
		mu 0 4 488 489 509 508
		f 4 844 1145 -865 -1145
		mu 0 4 489 490 510 509
		f 4 845 1146 -866 -1146
		mu 0 4 490 491 511 510
		f 4 846 1147 -867 -1147
		mu 0 4 491 492 512 511
		f 4 847 1148 -868 -1148
		mu 0 4 492 493 513 512
		f 4 848 1149 -869 -1149
		mu 0 4 493 494 514 513
		f 4 849 1150 -870 -1150
		mu 0 4 494 495 515 514
		f 4 850 1151 -871 -1151
		mu 0 4 495 496 516 515
		f 4 851 1152 -872 -1152
		mu 0 4 496 497 517 516
		f 4 852 1153 -873 -1153
		mu 0 4 497 498 518 517
		f 4 853 1154 -874 -1154
		mu 0 4 498 499 519 518
		f 4 854 1155 -875 -1155
		mu 0 4 499 500 520 519
		f 4 855 1156 -876 -1156
		mu 0 4 500 501 521 520
		f 4 856 1157 -877 -1157
		mu 0 4 501 502 522 521
		f 4 857 1158 -878 -1158
		mu 0 4 502 503 523 522
		f 4 858 1159 -879 -1159
		mu 0 4 503 504 524 523
		f 4 859 1140 -880 -1160
		mu 0 4 504 486 506 524
		f 4 860 1161 -881 -1161
		mu 0 4 506 505 525 526
		f 4 861 1162 -882 -1162
		mu 0 4 505 507 527 525
		f 4 862 1163 -883 -1163
		mu 0 4 507 508 528 527
		f 4 863 1164 -884 -1164
		mu 0 4 508 509 529 528
		f 4 864 1165 -885 -1165
		mu 0 4 509 510 530 529
		f 4 865 1166 -886 -1166
		mu 0 4 510 511 531 530
		f 4 866 1167 -887 -1167
		mu 0 4 511 512 532 531
		f 4 867 1168 -888 -1168
		mu 0 4 512 513 533 532
		f 4 868 1169 -889 -1169
		mu 0 4 513 514 534 533
		f 4 869 1170 -890 -1170
		mu 0 4 514 515 535 534
		f 4 870 1171 -891 -1171
		mu 0 4 515 516 536 535
		f 4 871 1172 -892 -1172
		mu 0 4 516 517 537 536
		f 4 872 1173 -893 -1173
		mu 0 4 517 518 538 537
		f 4 873 1174 -894 -1174
		mu 0 4 518 519 539 538
		f 4 874 1175 -895 -1175
		mu 0 4 519 520 540 539
		f 4 875 1176 -896 -1176
		mu 0 4 520 521 541 540
		f 4 876 1177 -897 -1177
		mu 0 4 521 522 542 541
		f 4 877 1178 -898 -1178
		mu 0 4 522 523 543 542
		f 4 878 1179 -899 -1179
		mu 0 4 523 524 544 543
		f 4 879 1160 -900 -1180
		mu 0 4 524 506 526 544
		f 4 880 1181 -901 -1181
		mu 0 4 526 525 545 546
		f 4 881 1182 -902 -1182
		mu 0 4 525 527 547 545
		f 4 882 1183 -903 -1183
		mu 0 4 527 528 548 547
		f 4 883 1184 -904 -1184
		mu 0 4 528 529 549 548
		f 4 884 1185 -905 -1185
		mu 0 4 529 530 550 549
		f 4 885 1186 -906 -1186
		mu 0 4 530 531 551 550
		f 4 886 1187 -907 -1187
		mu 0 4 531 532 552 551
		f 4 887 1188 -908 -1188
		mu 0 4 532 533 553 552
		f 4 888 1189 -909 -1189
		mu 0 4 533 534 554 553
		f 4 889 1190 -910 -1190
		mu 0 4 534 535 555 554
		f 4 890 1191 -911 -1191
		mu 0 4 535 536 556 555
		f 4 891 1192 -912 -1192
		mu 0 4 536 537 557 556
		f 4 892 1193 -913 -1193
		mu 0 4 537 538 558 557
		f 4 893 1194 -914 -1194
		mu 0 4 538 539 559 558
		f 4 894 1195 -915 -1195
		mu 0 4 539 540 560 559
		f 4 895 1196 -916 -1196
		mu 0 4 540 541 561 560
		f 4 896 1197 -917 -1197
		mu 0 4 541 542 562 561
		f 4 897 1198 -918 -1198
		mu 0 4 542 543 563 562
		f 4 898 1199 -919 -1199
		mu 0 4 543 544 564 563
		f 4 899 1180 -920 -1200
		mu 0 4 544 526 546 564;
	setAttr ".fc[500:903]"
		f 4 900 1201 -921 -1201
		mu 0 4 546 545 565 566
		f 4 901 1202 -922 -1202
		mu 0 4 545 547 567 565
		f 4 902 1203 -923 -1203
		mu 0 4 547 548 568 567
		f 4 903 1204 -924 -1204
		mu 0 4 548 549 569 568
		f 4 904 1205 -925 -1205
		mu 0 4 549 550 570 569
		f 4 905 1206 -926 -1206
		mu 0 4 550 551 571 570
		f 4 906 1207 -927 -1207
		mu 0 4 551 552 572 571
		f 4 907 1208 -928 -1208
		mu 0 4 552 553 573 572
		f 4 908 1209 -929 -1209
		mu 0 4 553 554 574 573
		f 4 909 1210 -930 -1210
		mu 0 4 554 555 575 574
		f 4 910 1211 -931 -1211
		mu 0 4 555 556 576 575
		f 4 911 1212 -932 -1212
		mu 0 4 556 557 577 576
		f 4 912 1213 -933 -1213
		mu 0 4 557 558 578 577
		f 4 913 1214 -934 -1214
		mu 0 4 558 559 579 578
		f 4 914 1215 -935 -1215
		mu 0 4 559 560 580 579
		f 4 915 1216 -936 -1216
		mu 0 4 560 561 581 580
		f 4 916 1217 -937 -1217
		mu 0 4 561 562 582 581
		f 4 917 1218 -938 -1218
		mu 0 4 562 563 583 582
		f 4 918 1219 -939 -1219
		mu 0 4 563 564 584 583
		f 4 919 1200 -940 -1220
		mu 0 4 564 546 566 584
		f 4 920 1221 -941 -1221
		mu 0 4 566 565 585 586
		f 4 921 1222 -942 -1222
		mu 0 4 565 567 587 585
		f 4 922 1223 -943 -1223
		mu 0 4 567 568 588 587
		f 4 923 1224 -944 -1224
		mu 0 4 568 569 589 588
		f 4 924 1225 -945 -1225
		mu 0 4 569 570 590 589
		f 4 925 1226 -946 -1226
		mu 0 4 570 571 591 590
		f 4 926 1227 -947 -1227
		mu 0 4 571 572 592 591
		f 4 927 1228 -948 -1228
		mu 0 4 572 573 593 592
		f 4 928 1229 -949 -1229
		mu 0 4 573 574 594 593
		f 4 929 1230 -950 -1230
		mu 0 4 574 575 595 594
		f 4 930 1231 -951 -1231
		mu 0 4 575 576 596 595
		f 4 931 1232 -952 -1232
		mu 0 4 576 577 597 596
		f 4 932 1233 -953 -1233
		mu 0 4 577 578 598 597
		f 4 933 1234 -954 -1234
		mu 0 4 578 579 599 598
		f 4 934 1235 -955 -1235
		mu 0 4 579 580 600 599
		f 4 935 1236 -956 -1236
		mu 0 4 580 581 601 600
		f 4 936 1237 -957 -1237
		mu 0 4 581 582 602 601
		f 4 937 1238 -958 -1238
		mu 0 4 582 583 603 602
		f 4 938 1239 -959 -1239
		mu 0 4 583 584 604 603
		f 4 939 1220 -960 -1240
		mu 0 4 584 566 586 604
		f 4 940 1241 1573 -1241
		mu 0 4 605 606 607 608
		f 4 941 1242 1572 -1242
		mu 0 4 606 609 610 607
		f 4 942 1243 1571 -1243
		mu 0 4 609 611 612 610
		f 4 943 1244 1570 -1244
		mu 0 4 611 613 614 612
		f 4 944 1245 1569 -1245
		mu 0 4 613 615 616 614
		f 4 945 1246 1568 -1246
		mu 0 4 615 617 618 616
		f 4 946 1247 1587 -1247
		mu 0 4 617 619 620 618
		f 4 947 1248 1586 -1248
		mu 0 4 619 621 622 620
		f 4 948 1249 1585 -1249
		mu 0 4 621 623 624 622
		f 4 949 1250 1584 -1250
		mu 0 4 623 625 626 624
		f 4 950 1251 1583 -1251
		mu 0 4 625 627 628 626
		f 4 951 1252 1582 -1252
		mu 0 4 627 629 630 628
		f 4 952 1253 1581 -1253
		mu 0 4 629 631 632 630
		f 4 953 1254 1580 -1254
		mu 0 4 631 633 634 632
		f 4 954 1255 1579 -1255
		mu 0 4 633 635 636 634
		f 4 955 1256 1578 -1256
		mu 0 4 635 637 638 636
		f 4 956 1257 1577 -1257
		mu 0 4 637 639 640 638
		f 4 957 1258 1576 -1258
		mu 0 4 639 641 642 640
		f 4 958 1259 1575 -1259
		mu 0 4 641 643 644 642
		f 4 959 1240 1574 -1260
		mu 0 4 643 645 646 644
		f 4 960 1261 -981 -1261
		mu 0 4 647 648 649 650
		f 4 961 1262 -982 -1262
		mu 0 4 648 651 652 649
		f 4 962 1263 -983 -1263
		mu 0 4 651 653 654 652
		f 4 963 1264 -984 -1264
		mu 0 4 653 655 656 654
		f 4 964 1265 -985 -1265
		mu 0 4 655 657 658 656
		f 4 965 1266 -986 -1266
		mu 0 4 657 659 660 658
		f 4 966 1267 -987 -1267
		mu 0 4 659 661 662 660
		f 4 967 1268 -988 -1268
		mu 0 4 661 663 664 662
		f 4 968 1269 -989 -1269
		mu 0 4 663 665 666 664
		f 4 969 1270 -990 -1270
		mu 0 4 665 667 668 666
		f 4 970 1271 -991 -1271
		mu 0 4 667 669 670 668
		f 4 971 1272 -992 -1272
		mu 0 4 669 671 672 670
		f 4 972 1273 -993 -1273
		mu 0 4 671 673 674 672
		f 4 973 1274 -994 -1274
		mu 0 4 673 675 676 674
		f 4 974 1275 -995 -1275
		mu 0 4 675 677 678 676
		f 4 975 1276 -996 -1276
		mu 0 4 677 679 680 678
		f 4 976 1277 -997 -1277
		mu 0 4 679 681 682 680
		f 4 977 1278 -998 -1278
		mu 0 4 681 683 684 682
		f 4 978 1279 -999 -1279
		mu 0 4 683 685 686 684
		f 4 979 1260 -1000 -1280
		mu 0 4 685 647 650 686
		f 4 980 1281 -1001 -1281
		mu 0 4 650 649 687 688
		f 4 981 1282 -1002 -1282
		mu 0 4 649 652 689 687
		f 4 982 1283 -1003 -1283
		mu 0 4 652 654 690 689
		f 4 983 1284 -1004 -1284
		mu 0 4 654 656 691 690
		f 4 984 1285 -1005 -1285
		mu 0 4 656 658 692 691
		f 4 985 1286 -1006 -1286
		mu 0 4 658 660 693 692
		f 4 986 1287 -1007 -1287
		mu 0 4 660 662 694 693
		f 4 987 1288 -1008 -1288
		mu 0 4 662 664 695 694
		f 4 988 1289 -1009 -1289
		mu 0 4 664 666 696 695
		f 4 989 1290 -1010 -1290
		mu 0 4 666 668 697 696
		f 4 990 1291 -1011 -1291
		mu 0 4 668 670 698 697
		f 4 991 1292 -1012 -1292
		mu 0 4 670 672 699 698
		f 4 992 1293 -1013 -1293
		mu 0 4 672 674 700 699
		f 4 993 1294 -1014 -1294
		mu 0 4 674 676 701 700
		f 4 994 1295 -1015 -1295
		mu 0 4 676 678 702 701
		f 4 995 1296 -1016 -1296
		mu 0 4 678 680 703 702
		f 4 996 1297 -1017 -1297
		mu 0 4 680 682 704 703
		f 4 997 1298 -1018 -1298
		mu 0 4 682 684 705 704
		f 4 998 1299 -1019 -1299
		mu 0 4 684 686 706 705
		f 4 999 1280 -1020 -1300
		mu 0 4 686 650 688 706
		f 4 1000 1301 -1021 -1301
		mu 0 4 688 687 707 708
		f 4 1001 1302 -1022 -1302
		mu 0 4 687 689 709 707
		f 4 1002 1303 -1023 -1303
		mu 0 4 689 690 710 709
		f 4 1003 1304 -1024 -1304
		mu 0 4 690 691 711 710
		f 4 1004 1305 -1025 -1305
		mu 0 4 691 692 712 711
		f 4 1005 1306 -1026 -1306
		mu 0 4 692 693 713 712
		f 4 1006 1307 -1027 -1307
		mu 0 4 693 694 714 713
		f 4 1007 1308 -1028 -1308
		mu 0 4 694 695 715 714
		f 4 1008 1309 -1029 -1309
		mu 0 4 695 696 716 715
		f 4 1009 1310 -1030 -1310
		mu 0 4 696 697 717 716
		f 4 1010 1311 -1031 -1311
		mu 0 4 697 698 718 717
		f 4 1011 1312 -1032 -1312
		mu 0 4 698 699 719 718
		f 4 1012 1313 -1033 -1313
		mu 0 4 699 700 720 719
		f 4 1013 1314 -1034 -1314
		mu 0 4 700 701 721 720
		f 4 1014 1315 -1035 -1315
		mu 0 4 701 702 722 721
		f 4 1015 1316 -1036 -1316
		mu 0 4 702 703 723 722
		f 4 1016 1317 -1037 -1317
		mu 0 4 703 704 724 723
		f 4 1017 1318 -1038 -1318
		mu 0 4 704 705 725 724
		f 4 1018 1319 -1039 -1319
		mu 0 4 705 706 726 725
		f 4 1019 1300 -1040 -1320
		mu 0 4 706 688 708 726
		f 4 1020 1321 -1041 -1321
		mu 0 4 708 707 727 728
		f 4 1021 1322 -1042 -1322
		mu 0 4 707 709 729 727
		f 4 1022 1323 -1043 -1323
		mu 0 4 709 710 730 729
		f 4 1023 1324 -1044 -1324
		mu 0 4 710 711 731 730
		f 4 1024 1325 -1045 -1325
		mu 0 4 711 712 732 731
		f 4 1025 1326 -1046 -1326
		mu 0 4 712 713 733 732
		f 4 1026 1327 -1047 -1327
		mu 0 4 713 714 734 733
		f 4 1027 1328 -1048 -1328
		mu 0 4 714 715 735 734
		f 4 1028 1329 -1049 -1329
		mu 0 4 715 716 736 735
		f 4 1029 1330 -1050 -1330
		mu 0 4 716 717 737 736
		f 4 1030 1331 -1051 -1331
		mu 0 4 717 718 738 737
		f 4 1031 1332 -1052 -1332
		mu 0 4 718 719 739 738
		f 4 1032 1333 -1053 -1333
		mu 0 4 719 720 740 739
		f 4 1033 1334 -1054 -1334
		mu 0 4 720 721 741 740
		f 4 1034 1335 -1055 -1335
		mu 0 4 721 722 742 741
		f 4 1035 1336 -1056 -1336
		mu 0 4 722 723 743 742
		f 4 1036 1337 -1057 -1337
		mu 0 4 723 724 744 743
		f 4 1037 1338 -1058 -1338
		mu 0 4 724 725 745 744
		f 4 1038 1339 -1059 -1339
		mu 0 4 725 726 746 745
		f 4 1039 1320 -1060 -1340
		mu 0 4 726 708 728 746
		f 4 1040 1341 -1061 -1341
		mu 0 4 728 727 747 748
		f 4 1041 1342 -1062 -1342
		mu 0 4 727 729 749 747
		f 4 1042 1343 -1063 -1343
		mu 0 4 729 730 750 749
		f 4 1043 1344 -1064 -1344
		mu 0 4 730 731 751 750
		f 4 1044 1345 -1065 -1345
		mu 0 4 731 732 752 751
		f 4 1045 1346 -1066 -1346
		mu 0 4 732 733 753 752
		f 4 1046 1347 -1067 -1347
		mu 0 4 733 734 754 753
		f 4 1047 1348 -1068 -1348
		mu 0 4 734 735 755 754
		f 4 1048 1349 -1069 -1349
		mu 0 4 735 736 756 755
		f 4 1049 1350 -1070 -1350
		mu 0 4 736 737 757 756
		f 4 1050 1351 -1071 -1351
		mu 0 4 737 738 758 757
		f 4 1051 1352 -1072 -1352
		mu 0 4 738 739 759 758
		f 4 1052 1353 -1073 -1353
		mu 0 4 739 740 760 759
		f 4 1053 1354 -1074 -1354
		mu 0 4 740 741 761 760
		f 4 1054 1355 -1075 -1355
		mu 0 4 741 742 762 761
		f 4 1055 1356 -1076 -1356
		mu 0 4 742 743 763 762
		f 4 1056 1357 -1077 -1357
		mu 0 4 743 744 764 763
		f 4 1057 1358 -1078 -1358
		mu 0 4 744 745 765 764
		f 4 1058 1359 -1079 -1359
		mu 0 4 745 746 766 765
		f 4 1059 1340 -1080 -1360
		mu 0 4 746 728 748 766
		f 4 1060 1361 -1081 -1361
		mu 0 4 748 747 767 768
		f 4 1061 1362 -1082 -1362
		mu 0 4 747 749 769 767
		f 4 1062 1363 -1083 -1363
		mu 0 4 749 750 770 769
		f 4 1063 1364 -1084 -1364
		mu 0 4 750 751 771 770
		f 4 1064 1365 -1085 -1365
		mu 0 4 751 752 772 771
		f 4 1065 1366 -1086 -1366
		mu 0 4 752 753 773 772
		f 4 1066 1367 -1087 -1367
		mu 0 4 753 754 774 773
		f 4 1067 1368 -1088 -1368
		mu 0 4 754 755 775 774
		f 4 1068 1369 -1089 -1369
		mu 0 4 755 756 776 775
		f 4 1069 1370 -1090 -1370
		mu 0 4 756 757 777 776
		f 4 1070 1371 -1091 -1371
		mu 0 4 757 758 778 777
		f 4 1071 1372 -1092 -1372
		mu 0 4 758 759 779 778
		f 4 1072 1373 -1093 -1373
		mu 0 4 759 760 780 779
		f 4 1073 1374 -1094 -1374
		mu 0 4 760 761 781 780
		f 4 1074 1375 -1095 -1375
		mu 0 4 761 762 782 781
		f 4 1075 1376 -1096 -1376
		mu 0 4 762 763 783 782
		f 4 1076 1377 -1097 -1377
		mu 0 4 763 764 784 783
		f 4 1077 1378 -1098 -1378
		mu 0 4 764 765 785 784
		f 4 1078 1379 -1099 -1379
		mu 0 4 765 766 786 785
		f 4 1079 1360 -1100 -1380
		mu 0 4 766 748 768 786
		f 4 1410 1411 -1413 -1414
		mu 0 4 787 788 789 790
		f 4 1415 1416 -1418 -1412
		mu 0 4 788 791 792 789
		f 4 1419 1420 -1422 -1417
		mu 0 4 791 793 794 792
		f 4 1423 1424 -1426 -1421
		mu 0 4 793 795 796 794
		f 4 1427 1428 -1430 -1425
		mu 0 4 795 797 798 796
		f 4 1431 1432 -1434 -1429
		mu 0 4 797 799 800 798
		f 4 1435 1436 -1438 -1433
		mu 0 4 799 801 802 800
		f 4 1439 1440 -1442 -1437
		mu 0 4 801 803 804 802
		f 4 1443 1444 -1446 -1441
		mu 0 4 803 805 806 804
		f 4 1447 1448 -1450 -1445
		mu 0 4 805 807 808 806
		f 4 1451 1452 -1454 -1449
		mu 0 4 807 809 810 808
		f 4 1455 1456 -1458 -1453
		mu 0 4 809 811 812 810
		f 4 1459 1460 -1462 -1457
		mu 0 4 811 813 814 812
		f 4 1463 1464 -1466 -1461
		mu 0 4 813 815 816 814
		f 4 1467 1468 -1470 -1465
		mu 0 4 815 817 818 816
		f 4 1471 1472 -1474 -1469
		mu 0 4 817 819 820 818
		f 4 1475 1476 -1478 -1473
		mu 0 4 819 821 822 820
		f 4 1479 1480 -1482 -1477
		mu 0 4 821 823 824 822
		f 4 1483 1484 -1486 -1481
		mu 0 4 823 825 826 824
		f 4 1486 1413 -1488 -1485
		mu 0 4 825 787 790 826
		f 3 -801 -1381 1381
		mu 0 3 442 441 827
		f 3 -802 -1382 1382
		mu 0 3 445 442 827
		f 3 -803 -1383 1383
		mu 0 3 447 445 827
		f 3 -804 -1384 1384
		mu 0 3 449 447 827
		f 3 -805 -1385 1385
		mu 0 3 451 449 827
		f 3 -806 -1386 1386
		mu 0 3 453 451 827
		f 3 -807 -1387 1387
		mu 0 3 455 453 827
		f 3 -808 -1388 1388
		mu 0 3 457 455 827
		f 3 -809 -1389 1389
		mu 0 3 459 457 827
		f 3 -810 -1390 1390
		mu 0 3 461 459 827
		f 3 -811 -1391 1391
		mu 0 3 463 461 827
		f 3 -812 -1392 1392
		mu 0 3 465 463 827
		f 3 -813 -1393 1393
		mu 0 3 467 465 827
		f 3 -814 -1394 1394
		mu 0 3 469 467 827
		f 3 -815 -1395 1395
		mu 0 3 471 469 827
		f 3 -816 -1396 1396
		mu 0 3 473 471 827
		f 3 -817 -1397 1397
		mu 0 3 475 473 827
		f 3 -818 -1398 1398
		mu 0 3 477 475 827
		f 3 -819 -1399 1399
		mu 0 3 483 477 827
		f 3 -820 -1400 1380
		mu 0 3 441 483 827
		f 3 1490 1491 -1493
		mu 0 3 828 829 830
		f 3 1494 1495 -1492
		mu 0 3 829 831 830
		f 3 1497 1498 -1496
		mu 0 3 831 832 830
		f 3 1500 1501 -1499
		mu 0 3 832 833 830
		f 3 1503 1504 -1502
		mu 0 3 833 834 830
		f 3 1506 1507 -1505
		mu 0 3 834 835 830
		f 3 1509 1510 -1508
		mu 0 3 835 836 830
		f 3 1512 1513 -1511
		mu 0 3 836 837 830
		f 3 1515 1516 -1514
		mu 0 3 837 838 830
		f 3 1518 1519 -1517
		mu 0 3 838 839 830
		f 3 1521 1522 -1520
		mu 0 3 839 840 830
		f 3 1524 1525 -1523
		mu 0 3 840 841 830
		f 3 1527 1528 -1526
		mu 0 3 841 842 830
		f 3 1530 1531 -1529
		mu 0 3 842 843 830
		f 3 1533 1534 -1532
		mu 0 3 843 844 830
		f 3 1536 1537 -1535
		mu 0 3 844 845 830
		f 3 1539 1540 -1538
		mu 0 3 845 846 830
		f 3 1542 1543 -1541
		mu 0 3 846 847 830
		f 3 1545 1546 -1544
		mu 0 3 847 848 830
		f 3 1547 1492 -1547
		mu 0 3 848 828 830
		f 4 818 1401 -1403 -1401
		mu 0 4 477 483 480 479
		f 4 1119 1403 -1405 -1402
		mu 0 4 483 484 481 480
		f 4 -839 1405 1406 -1404
		mu 0 4 484 478 482 481
		f 4 -1119 1400 1407 -1406
		mu 0 4 478 477 479 482
		f 4 1080 1409 -1411 -1409
		mu 0 4 768 767 788 787
		f 4 1081 1414 -1416 -1410
		mu 0 4 767 769 791 788
		f 4 1082 1418 -1420 -1415
		mu 0 4 769 770 793 791
		f 4 1083 1422 -1424 -1419
		mu 0 4 770 771 795 793
		f 4 1084 1426 -1428 -1423
		mu 0 4 771 772 797 795
		f 4 1085 1430 -1432 -1427
		mu 0 4 772 773 799 797
		f 4 1086 1434 -1436 -1431
		mu 0 4 773 774 801 799
		f 4 1087 1438 -1440 -1435
		mu 0 4 774 775 803 801
		f 4 1088 1442 -1444 -1439
		mu 0 4 775 776 805 803
		f 4 1089 1446 -1448 -1443
		mu 0 4 776 777 807 805
		f 4 1090 1450 -1452 -1447
		mu 0 4 777 778 809 807
		f 4 1091 1454 -1456 -1451
		mu 0 4 778 779 811 809
		f 4 1092 1458 -1460 -1455
		mu 0 4 779 780 813 811
		f 4 1093 1462 -1464 -1459
		mu 0 4 780 781 815 813
		f 4 1094 1466 -1468 -1463
		mu 0 4 781 782 817 815
		f 4 1095 1470 -1472 -1467
		mu 0 4 782 783 819 817
		f 4 1096 1474 -1476 -1471
		mu 0 4 783 784 821 819
		f 4 1097 1478 -1480 -1475
		mu 0 4 784 785 823 821
		f 4 1098 1482 -1484 -1479
		mu 0 4 785 786 825 823
		f 4 1099 1408 -1487 -1483
		mu 0 4 786 768 787 825
		f 4 1412 1489 -1491 -1489
		mu 0 4 790 789 829 828
		f 4 1417 1493 -1495 -1490
		mu 0 4 789 792 831 829
		f 4 1421 1496 -1498 -1494
		mu 0 4 792 794 832 831
		f 4 1425 1499 -1501 -1497
		mu 0 4 794 796 833 832
		f 4 1429 1502 -1504 -1500
		mu 0 4 796 798 834 833
		f 4 1433 1505 -1507 -1503
		mu 0 4 798 800 835 834
		f 4 1437 1508 -1510 -1506
		mu 0 4 800 802 836 835
		f 4 1441 1511 -1513 -1509
		mu 0 4 802 804 837 836
		f 4 1445 1514 -1516 -1512
		mu 0 4 804 806 838 837
		f 4 1449 1517 -1519 -1515
		mu 0 4 806 808 839 838
		f 4 1453 1520 -1522 -1518
		mu 0 4 808 810 840 839
		f 4 1457 1523 -1525 -1521
		mu 0 4 810 812 841 840
		f 4 1461 1526 -1528 -1524
		mu 0 4 812 814 842 841
		f 4 1465 1529 -1531 -1527
		mu 0 4 814 816 843 842
		f 4 1469 1532 -1534 -1530
		mu 0 4 816 818 844 843
		f 4 1473 1535 -1537 -1533
		mu 0 4 818 820 845 844
		f 4 1477 1538 -1540 -1536
		mu 0 4 820 822 846 845
		f 4 1481 1541 -1543 -1539
		mu 0 4 822 824 847 846
		f 4 1485 1544 -1546 -1542
		mu 0 4 824 826 848 847
		f 4 1487 1488 -1548 -1545
		mu 0 4 826 790 828 848
		f 4 -1691 1692 -1695 -1696
		mu 0 4 849 850 851 852
		f 4 -1698 1695 -1700 -1701
		mu 0 4 853 849 852 854
		f 4 -1703 1700 -1705 -1706
		mu 0 4 855 853 854 856
		f 4 -1708 1705 -1710 -1711
		mu 0 4 857 855 856 858
		f 4 -1713 1710 -1715 -1716
		mu 0 4 859 857 858 860
		f 4 -1718 1715 -1720 -1721
		mu 0 4 861 859 860 862
		f 4 -1723 1720 -1725 -1726
		mu 0 4 863 864 865 866
		f 4 -1728 1725 -1730 -1731
		mu 0 4 867 863 866 868
		f 4 -1733 1730 -1735 -1736
		mu 0 4 869 867 868 870
		f 4 -1738 1735 -1740 -1741
		mu 0 4 871 869 870 872
		f 4 -1743 1740 -1745 -1746
		mu 0 4 873 871 872 874
		f 4 -1748 1745 -1750 -1751
		mu 0 4 875 873 874 876
		f 4 -1753 1750 -1755 -1756
		mu 0 4 877 875 876 878
		f 4 -1758 1755 -1760 -1761
		mu 0 4 879 877 878 880
		f 4 -1763 1760 -1765 -1766
		mu 0 4 881 879 880 882
		f 4 -1768 1765 -1770 -1771
		mu 0 4 883 881 882 884
		f 4 -1773 1770 -1775 -1776
		mu 0 4 885 883 884 886
		f 4 -1778 1775 -1780 -1781
		mu 0 4 887 885 886 888
		f 4 -1783 1780 -1785 -1786
		mu 0 4 889 887 888 890
		f 4 -1787 1785 -1788 -1693
		mu 0 4 850 889 890 851
		f 4 -1591 1592 1594 -1596
		mu 0 4 891 892 893 894
		f 4 -1598 1595 1599 -1601
		mu 0 4 895 891 894 896
		f 4 -1603 1600 1604 -1606
		mu 0 4 897 895 896 898
		f 4 -1608 1605 1609 -1611
		mu 0 4 899 897 898 900
		f 4 -1613 1610 1614 -1616
		mu 0 4 901 899 900 902
		f 4 -1618 1615 1619 -1621
		mu 0 4 903 901 902 904
		f 4 -1623 1620 1624 -1626
		mu 0 4 905 906 907 908
		f 4 -1628 1625 1629 -1631
		mu 0 4 909 905 908 910
		f 4 -1633 1630 1634 -1636
		mu 0 4 911 909 910 912
		f 4 -1638 1635 1639 -1641
		mu 0 4 913 911 912 914
		f 4 -1643 1640 1644 -1646
		mu 0 4 915 913 914 916
		f 4 -1648 1645 1649 -1651
		mu 0 4 917 915 916 918
		f 4 -1653 1650 1654 -1656
		mu 0 4 919 917 918 920
		f 4 -1658 1655 1659 -1661
		mu 0 4 921 919 920 922
		f 4 -1663 1660 1664 -1666
		mu 0 4 923 921 922 924
		f 4 -1668 1665 1669 -1671
		mu 0 4 925 923 924 926
		f 4 -1673 1670 1674 -1676
		mu 0 4 927 925 926 928
		f 4 -1678 1675 1679 -1681
		mu 0 4 929 927 928 930
		f 4 -1683 1680 1684 -1686
		mu 0 4 931 929 930 932
		f 4 -1687 1685 1687 -1593
		mu 0 4 892 931 932 893
		f 4 -1569 1588 1590 -1590
		mu 0 4 616 618 892 891
		f 4 1548 1593 -1595 -1592
		mu 0 4 933 934 894 893
		f 4 -1570 1589 1597 -1597
		mu 0 4 614 616 891 895
		f 4 1549 1598 -1600 -1594
		mu 0 4 934 935 896 894
		f 4 -1571 1596 1602 -1602
		mu 0 4 612 614 895 897
		f 4 1550 1603 -1605 -1599
		mu 0 4 935 936 898 896
		f 4 -1572 1601 1607 -1607
		mu 0 4 610 612 897 899
		f 4 1551 1608 -1610 -1604
		mu 0 4 936 937 900 898
		f 4 -1573 1606 1612 -1612
		mu 0 4 607 610 899 901
		f 4 1552 1613 -1615 -1609
		mu 0 4 937 938 902 900
		f 4 -1574 1611 1617 -1617
		mu 0 4 608 607 901 903
		f 4 1553 1618 -1620 -1614
		mu 0 4 938 939 904 902
		f 4 -1575 1616 1622 -1622
		mu 0 4 644 646 906 905
		f 4 1554 1623 -1625 -1619
		mu 0 4 940 941 908 907
		f 4 -1576 1621 1627 -1627
		mu 0 4 642 644 905 909
		f 4 1555 1628 -1630 -1624
		mu 0 4 941 942 910 908
		f 4 -1577 1626 1632 -1632
		mu 0 4 640 642 909 911
		f 4 1556 1633 -1635 -1629
		mu 0 4 942 943 912 910
		f 4 -1578 1631 1637 -1637
		mu 0 4 638 640 911 913
		f 4 1557 1638 -1640 -1634
		mu 0 4 943 944 914 912
		f 4 -1579 1636 1642 -1642
		mu 0 4 636 638 913 915
		f 4 1558 1643 -1645 -1639
		mu 0 4 944 945 916 914
		f 4 -1580 1641 1647 -1647
		mu 0 4 634 636 915 917
		f 4 1559 1648 -1650 -1644
		mu 0 4 945 946 918 916
		f 4 -1581 1646 1652 -1652
		mu 0 4 632 634 917 919
		f 4 1560 1653 -1655 -1649
		mu 0 4 946 947 920 918
		f 4 -1582 1651 1657 -1657
		mu 0 4 630 632 919 921
		f 4 1561 1658 -1660 -1654
		mu 0 4 947 948 922 920
		f 4 -1583 1656 1662 -1662
		mu 0 4 628 630 921 923
		f 4 1562 1663 -1665 -1659
		mu 0 4 948 949 924 922
		f 4 -1584 1661 1667 -1667
		mu 0 4 626 628 923 925
		f 4 1563 1668 -1670 -1664
		mu 0 4 949 950 926 924
		f 4 -1585 1666 1672 -1672
		mu 0 4 624 626 925 927
		f 4 1564 1673 -1675 -1669
		mu 0 4 950 951 928 926
		f 4 -1586 1671 1677 -1677
		mu 0 4 622 624 927 929
		f 4 1565 1678 -1680 -1674
		mu 0 4 951 952 930 928
		f 4 -1587 1676 1682 -1682
		mu 0 4 620 622 929 931
		f 4 1566 1683 -1685 -1679
		mu 0 4 952 953 932 930
		f 4 -1588 1681 1686 -1589
		mu 0 4 618 620 931 892
		f 4 1567 1591 -1688 -1684
		mu 0 4 953 933 893 932
		f 4 -1549 1688 1690 -1690
		mu 0 4 934 933 850 849
		f 4 -966 1693 1694 -1692
		mu 0 4 954 955 852 851
		f 4 -1550 1689 1697 -1697
		mu 0 4 935 934 849 853
		f 4 -965 1698 1699 -1694
		mu 0 4 955 956 854 852
		f 4 -1551 1696 1702 -1702
		mu 0 4 936 935 853 855
		f 4 -964 1703 1704 -1699
		mu 0 4 956 957 856 854
		f 4 -1552 1701 1707 -1707
		mu 0 4 937 936 855 857
		f 4 -963 1708 1709 -1704
		mu 0 4 957 958 858 856
		f 4 -1553 1706 1712 -1712
		mu 0 4 938 937 857 859
		f 4 -962 1713 1714 -1709
		mu 0 4 958 959 860 858
		f 4 -1554 1711 1717 -1717
		mu 0 4 939 938 859 861
		f 4 -961 1718 1719 -1714
		mu 0 4 959 960 862 860
		f 4 -1555 1716 1722 -1722
		mu 0 4 941 940 864 863
		f 4 -980 1723 1724 -1719
		mu 0 4 961 962 866 865
		f 4 -1556 1721 1727 -1727
		mu 0 4 942 941 863 867
		f 4 -979 1728 1729 -1724
		mu 0 4 962 963 868 866
		f 4 -1557 1726 1732 -1732
		mu 0 4 943 942 867 869
		f 4 -978 1733 1734 -1729
		mu 0 4 963 964 870 868
		f 4 -1558 1731 1737 -1737
		mu 0 4 944 943 869 871
		f 4 -977 1738 1739 -1734
		mu 0 4 964 965 872 870
		f 4 -1559 1736 1742 -1742
		mu 0 4 945 944 871 873
		f 4 -976 1743 1744 -1739
		mu 0 4 965 966 874 872
		f 4 -1560 1741 1747 -1747
		mu 0 4 946 945 873 875
		f 4 -975 1748 1749 -1744
		mu 0 4 966 967 876 874
		f 4 -1561 1746 1752 -1752
		mu 0 4 947 946 875 877
		f 4 -974 1753 1754 -1749
		mu 0 4 967 968 878 876
		f 4 -1562 1751 1757 -1757
		mu 0 4 948 947 877 879
		f 4 -973 1758 1759 -1754
		mu 0 4 968 969 880 878
		f 4 -1563 1756 1762 -1762
		mu 0 4 949 948 879 881
		f 4 -972 1763 1764 -1759
		mu 0 4 969 970 882 880
		f 4 -1564 1761 1767 -1767
		mu 0 4 950 949 881 883
		f 4 -971 1768 1769 -1764
		mu 0 4 970 971 884 882
		f 4 -1565 1766 1772 -1772
		mu 0 4 951 950 883 885
		f 4 -970 1773 1774 -1769
		mu 0 4 971 972 886 884
		f 4 -1566 1771 1777 -1777
		mu 0 4 952 951 885 887
		f 4 -969 1778 1779 -1774
		mu 0 4 972 973 888 886
		f 4 -1567 1776 1782 -1782
		mu 0 4 953 952 887 889
		f 4 -968 1783 1784 -1779
		mu 0 4 973 974 890 888
		f 4 -1568 1781 1786 -1689
		mu 0 4 933 953 889 850
		f 4 -967 1691 1787 -1784
		mu 0 4 974 954 851 890;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pTorus4";
	rename -uid "F6ABCD04-D447-96C8-2E00-7CA70F737D45";
	setAttr ".t" -type "double3" -0.32300865196562967 -1.4878611524883372 -51.444982756769022 ;
	setAttr ".r" -type "double3" 0 87.63963254277202 0 ;
	setAttr ".s" -type "double3" 0.035131659689324919 0.035131659689324919 0.035131659689324919 ;
	setAttr ".rp" -type "double3" 0.017637252807617188 4.7384853363037109 60.977676391601563 ;
	setAttr ".sp" -type "double3" 0.017637252807617188 4.7384853363037109 60.977676391601563 ;
createNode transform -n "polySurface1" -p "pTorus4";
	rename -uid "C3158F82-7F48-24E7-CBBA-34A46B79DB0C";
	setAttr ".rp" -type "double3" 0.017637252807617188 4.7384853363037109 60.032001495361328 ;
	setAttr ".sp" -type "double3" 0.017637252807617188 4.7384853363037109 60.032001495361328 ;
createNode transform -n "transform28" -p "polySurface1";
	rename -uid "2DDCA30C-DF48-73CC-A4C6-6BA907BE40A1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform28";
	rename -uid "8C04DE47-8F4B-0104-C37A-4398572C3358";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "polySurface2" -p "pTorus4";
	rename -uid "5DC4CC62-2040-86A7-B67D-3DBFB1B05577";
	setAttr ".t" -type "double3" 3.2274914546571889 3.7922137505931995e-014 94.459370006711907 ;
	setAttr ".rp" -type "double3" -5.7220458984375e-006 6.2239341735839844 69.55462646484375 ;
	setAttr ".sp" -type "double3" -5.7220458984375e-006 6.2239341735839844 69.55462646484375 ;
createNode transform -n "transform27" -p "|pTorus4|polySurface2";
	rename -uid "20C3E6CE-7A45-4374-ECB2-A8BAB0A6601C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform27";
	rename -uid "F884B37F-5B4B-01BF-206E-EFAE91D82502";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform25" -p "pTorus4";
	rename -uid "50C8A29C-7442-B1A5-1E07-6F9BFC2B1A79";
	setAttr ".v" no;
createNode mesh -n "pTorus2Shape4" -p "transform25";
	rename -uid "F40C459A-4843-62AF-2E1F-65B44D6360AF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:903]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 975 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 0 0.94999999 0.050000001 0.94999999 0.1 0.94999999
		 0.15000001 0.94999999 0.2 0.94999999 0.25 0.94999999 0.30000001 0.94999999 0.35000002
		 0.94999999 0.40000004 0.94999999 0.45000005 0.94999999 0.50000006 0.94999999 0.55000007
		 0.94999999 0.60000008 0.94999999 0.6500001 0.94999999 0.70000011 0.94999999 0.75000012
		 0.94999999 0.80000013 0.94999999 0.85000014 0.94999999 0.90000015 0.94999999 0.95000017
		 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998
		 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002
		 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007
		 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.75000012
		 0.89999998 0.80000013 0.89999998 0.85000014 0.89999998 0.90000015 0.89999998 0.95000017
		 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996
		 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002
		 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007
		 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.75000012
		 0.84999996 0.80000013 0.84999996 0.85000014 0.84999996 0.90000015 0.84999996 0.95000017
		 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995
		 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002
		 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007
		 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.75000012
		 0.79999995 0.80000013 0.79999995 0.85000014 0.79999995 0.90000015 0.79999995 0.95000017
		 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994
		 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002
		 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007
		 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.75000012
		 0.74999994 0.80000013 0.74999994 0.85000014 0.74999994 0.90000015 0.74999994 0.95000017
		 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993
		 0.15000001 0.69999993 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002
		 0.69999993 0.40000004 0.69999993 0.45000005 0.69999993 0.50000006 0.69999993 0.55000007
		 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993 0.75000012
		 0.69999993 0.80000013 0.69999993 0.85000014 0.69999993 0.90000015 0.69999993 0.95000017
		 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992
		 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992 0.35000002
		 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007
		 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992 0.75000012
		 0.64999992 0.80000013 0.64999992 0.85000014 0.64999992 0.90000015 0.64999992 0.95000017
		 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999
		 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999 0.35000002
		 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999 0.55000007
		 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999 0.75000012
		 0.5999999 0.80000013 0.5999999 0.85000014 0.5999999 0.90000015 0.5999999 0.95000017
		 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989 0.1 0.54999989
		 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989 0.35000002
		 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989 0.55000007
		 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989 0.75000012
		 0.54999989 0.80000013 0.54999989 0.85000014 0.54999989 0.90000015 0.54999989 0.95000017
		 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988 0.1 0.49999988
		 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988 0.35000002
		 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988 0.55000007
		 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988 0.75000012
		 0.49999988 0.80000013 0.49999988 0.85000014 0.49999988 0.90000015 0.49999988 0.95000017
		 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987 0.1 0.44999987
		 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987 0.35000002
		 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987 0.55000007
		 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987 0.75000012
		 0.44999987 0.80000013 0.44999987 0.85000014 0.44999987 0.90000015 0.44999987;
	setAttr ".uvst[0].uvsp[250:499]" 0.95000017 0.44999987 1.000000119209 0.44999987
		 0 0.39999986 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986
		 0.25 0.39999986 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986
		 0.45000005 0.39999986 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986
		 0.6500001 0.39999986 0.70000011 0.39999986 0.75000012 0.39999986 0.80000013 0.39999986
		 0.85000014 0.39999986 0.90000015 0.39999986 0.95000017 0.39999986 1.000000119209
		 0.39999986 0 0.34999985 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985
		 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004
		 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008
		 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985 0.75000012 0.34999985 0.80000013
		 0.34999985 0.85000014 0.34999985 0.90000015 0.34999985 0.95000017 0.34999985 1.000000119209
		 0.34999985 0 0.29999983 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983
		 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004
		 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008
		 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983 0.75000012 0.29999983 0.80000013
		 0.29999983 0.85000014 0.29999983 0.90000015 0.29999983 0.95000017 0.29999983 1.000000119209
		 0.29999983 0 0.24999984 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984
		 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004
		 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008
		 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984 0.75000012 0.24999984 0.80000013
		 0.24999984 0.85000014 0.24999984 0.90000015 0.24999984 0.95000017 0.24999984 1.000000119209
		 0.24999984 0 0.19999984 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984
		 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004
		 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008
		 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984 0.75000012 0.19999984 0.80000013
		 0.19999984 0.85000014 0.19999984 0.90000015 0.19999984 0.95000017 0.19999984 1.000000119209
		 0.19999984 0 0.14999984 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984
		 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004
		 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008
		 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984 0.75000012 0.14999984 0.80000013
		 0.14999984 0.85000014 0.14999984 0.90000015 0.14999984 0.95000017 0.14999984 1.000000119209
		 0.14999984 0 0.099999845 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845
		 0.2 0.099999845 0.25 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004
		 0.099999845 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845
		 0.60000008 0.099999845 0.6500001 0.099999845 0.70000011 0.099999845 0.75000012 0.099999845
		 0.80000013 0.099999845 0.85000014 0.099999845 0.90000015 0.099999845 0.95000017 0.099999845
		 1.000000119209 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844
		 0.15000001 0.049999844 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002
		 0.049999844 0.40000004 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844
		 0.55000007 0.049999844 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844
		 0.75000012 0.049999844 0.80000013 0.049999844 0.85000014 0.049999844 0.90000015 0.049999844
		 0.95000017 0.049999844 1.000000119209 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007
		 0.1 -1.5646219e-007 0.15000001 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007
		 0.30000001 -1.5646219e-007 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007
		 0.45000005 -1.5646219e-007 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007
		 0.60000008 -1.5646219e-007 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.75000012
		 -1.5646219e-007 0.80000013 -1.5646219e-007 0.85000014 -1.5646219e-007 0.90000015
		 -1.5646219e-007 0.95000017 -1.5646219e-007 1.000000119209 -1.5646219e-007 0.51857531
		 0.15021451 0.51580113 0.14476982 0.53160226 0.13328962 0.53715068 0.14417902 0.51148021
		 0.14044888 0.52296036 0.12464775 0.50603551 0.13767466 0.51207095 0.11909933 0.5
		 0.13671874 0.5 0.11718749 0.49396452 0.13767467 0.48792902 0.11909933 0.48851982
		 0.14044888 0.47703964 0.12464777 0.48419887 0.14476982 0.46839777 0.13328964 0.48142466
		 0.15021451 0.46284935 0.14417902 0.48046875 0.15625 0.4609375 0.15625 0.48142466
		 0.16228549 0.46284935 0.16832098 0.48419887 0.16773018 0.46839777 0.17921036 0.48851982
		 0.17205112 0.47703964 0.18785223 0.49396452 0.17482533 0.48792902 0.19340065 0.5
		 0.17578125 0.5 0.1953125 0.50603551 0.17482533 0.51207095 0.19340065 0.51148015 0.17205112
		 0.52296036 0.18785223 0.51580113 0.16773018 0.5316022 0.17921036 0.51857531 0.16228549
		 0.53715062 0.16832098 0.51857531 0.16228549 0.51953125 0.15625 0.5390625 0.15625
		 0.53715062 0.16832098 0.51953125 0.15625 0.5390625 0.15625 0.5474034 0.12180944 0.55572599
		 0.13814352 0.53444058 0.10884663 0.51810646 0.10052401 0.5 0.09765622 0.48189354
		 0.10052401 0.46555945 0.10884664 0.45259663 0.12180945 0.44427401 0.13814354 0.44140625
		 0.15625 0.44427401 0.17435646 0.45259666 0.19069055 0.46555945 0.20365335 0.48189354
		 0.21197598 0.5 0.21484375;
	setAttr ".uvst[0].uvsp[500:749]" 0.51810646 0.21197598 0.53444052 0.20365334
		 0.54740334 0.19069055 0.55572599 0.17435646 0.55859375 0.15625 0.56320453 0.11032925
		 0.57430136 0.13210803 0.54592073 0.09304551 0.52414197 0.081948668 0.5 0.078124963
		 0.47585803 0.081948675 0.45407927 0.093045525 0.43679553 0.11032926 0.4256987 0.13210805
		 0.421875 0.15625 0.4256987 0.18039195 0.43679553 0.20217073 0.45407927 0.21945447
		 0.47585803 0.2305513 0.5 0.234375 0.52414197 0.2305513 0.54592073 0.21945447 0.56320447
		 0.20217073 0.5743013 0.18039195 0.578125 0.15625 0.5790056 0.098849058 0.59287667
		 0.12607254 0.55740094 0.077244386 0.53017747 0.063373335 0.5 0.058593705 0.46982256
		 0.063373342 0.44259906 0.077244401 0.4209944 0.098849081 0.40712336 0.12607256 0.40234372
		 0.15625 0.40712336 0.18642744 0.4209944 0.21365091 0.44259909 0.23525557 0.46982256
		 0.24912663 0.5 0.25390625 0.53017741 0.24912661 0.55740088 0.23525557 0.5790056 0.21365091
		 0.59287661 0.18642744 0.59765625 0.15625 0.59480673 0.087368876 0.61145198 0.12003705
		 0.56888115 0.061443262 0.53621292 0.044798009 0.5 0.03906244 0.46378705 0.044798017
		 0.43111891 0.061443284 0.4051933 0.087368898 0.38854802 0.12003706 0.38281247 0.15625
		 0.38854802 0.19246294 0.4051933 0.22513109 0.43111891 0.2510567 0.46378708 0.26770195
		 0.5 0.2734375 0.53621292 0.26770195 0.56888109 0.25105667 0.59480667 0.22513109 0.61145192
		 0.19246292 0.6171875 0.15625 0.61060786 0.075888686 0.63002735 0.11400156 0.58036131
		 0.045642145 0.54224843 0.026222676 0.5 0.01953119 0.45775157 0.026222676 0.41963869
		 0.045642167 0.38939217 0.075888708 0.36997271 0.11400157 0.36328122 0.15625 0.36997271
		 0.19849843 0.3893922 0.23661128 0.41963872 0.2668578 0.45775157 0.28627729 0.5 0.29296875
		 0.54224843 0.28627726 0.58036125 0.2668578 0.6106078 0.23661128 0.63002729 0.19849841
		 0.63671875 0.15625 0.62640899 0.064408496 0.64860266 0.10796607 0.59184152 0.029841021
		 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607 0.0076473504 0.40815851 0.029841051
		 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997 0.15625 0.3513974 0.20453392
		 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387
		 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625
		 0.15625 0.375 0.3125 0.38749999 0.3125 0.38749999 0.44832614 0.375 0.44832614 0.39999998
		 0.3125 0.39999998 0.44832614 0.41249996 0.3125 0.41249996 0.44832614 0.42499995 0.3125
		 0.42499995 0.44832614 0.43749994 0.3125 0.43749994 0.44832614 0.44999993 0.3125 0.44999993
		 0.44832614 0.46249992 0.3125 0.46249992 0.44832614 0.4749999 0.3125 0.4749999 0.44832614
		 0.48749989 0.3125 0.48749992 0.44832614 0.49999988 0.3125 0.49999988 0.44832614 0.51249987
		 0.3125 0.51249987 0.44832614 0.52499986 0.3125 0.52499986 0.44832614 0.53749985 0.3125
		 0.5374999 0.44832614 0.54999983 0.3125 0.54999983 0.44832614 0.56249982 0.3125 0.56249982
		 0.44832614 0.57499981 0.3125 0.57499981 0.44832614 0.5874998 0.3125 0.58749986 0.44832614
		 0.59999979 0.3125 0.59999979 0.44832614 0.61249977 0.3125 0.61249983 0.44832614 0.62499976
		 0.3125 0.62499976 0.44832614 0.6486026 0.89203393 0.62640893 0.93559146 0.6106078
		 0.92411125 0.63002729 0.88599843 0.59184146 0.97015893 0.58036125 0.9543578 0.54828387
		 0.9923526 0.54224843 0.97377729 0.5 1 0.5 0.98046875 0.4517161 0.9923526 0.45775157
		 0.97377729 0.40815854 0.97015893 0.41963872 0.9543578 0.37359107 0.93559146 0.3893922
		 0.92411125 0.3513974 0.89203393 0.36997271 0.88599843 0.34374997 0.84375 0.36328122
		 0.84375 0.3513974 0.79546607 0.36997271 0.80150157 0.37359107 0.75190854 0.38939217
		 0.76338869 0.40815851 0.71734107 0.41963869 0.73314214 0.45171607 0.69514734 0.45775157
		 0.71372271 0.5 0.68749994 0.5 0.70703119 0.54828393 0.69514734 0.54224843 0.71372271
		 0.59184152 0.71734101 0.58036131 0.73314214 0.62640899 0.75190848 0.61060786 0.76338869
		 0.64860266 0.79546607 0.63002735 0.80150157 0.65625 0.84375 0.63671875 0.84375 0.59480667
		 0.91263109 0.61145192 0.87996292 0.56888109 0.93855667 0.53621292 0.95520198 0.5
		 0.9609375 0.46378708 0.95520198 0.43111891 0.93855667 0.4051933 0.91263109 0.38854802
		 0.87996292 0.38281247 0.84375 0.38854802 0.80753708 0.4051933 0.77486891 0.43111891
		 0.74894327 0.46378705 0.73229802 0.5 0.72656244 0.53621292 0.73229802 0.56888115
		 0.74894327 0.59480673 0.77486885 0.61145198 0.80753708 0.6171875 0.84375 0.5790056
		 0.90115094 0.59287661 0.87392747 0.55740088 0.9227556 0.53017741 0.93662661 0.5 0.94140625
		 0.46982256 0.93662661 0.44259909 0.9227556 0.4209944 0.90115094 0.40712336 0.87392747
		 0.40234372 0.84375 0.40712336 0.81357253 0.4209944 0.78634906 0.44259906 0.7647444
		 0.46982256 0.75087333 0.5 0.74609369 0.53017747 0.75087333 0.55740094 0.7647444 0.5790056
		 0.78634906 0.59287667 0.81357253 0.59765625 0.84375 0.56320447 0.88967073 0.5743013
		 0.86789197 0.54592073 0.90695447 0.52414197 0.9180513 0.5 0.921875 0.47585803 0.9180513
		 0.45407927 0.90695447 0.43679553 0.88967073 0.4256987 0.86789197 0.421875 0.84375
		 0.4256987 0.81960803 0.43679553 0.79782927 0.45407927 0.78054553 0.47585803 0.7694487
		 0.5 0.76562494 0.52414197 0.76944864 0.54592073 0.78054553 0.56320453 0.79782927
		 0.57430136 0.81960803 0.578125 0.84375 0.54740334 0.87819052 0.55572599 0.86185646
		 0.53444052 0.89115334;
	setAttr ".uvst[0].uvsp[750:974]" 0.51810646 0.89947599 0.5 0.90234375 0.48189354
		 0.89947599 0.46555945 0.89115334 0.45259666 0.87819052 0.44427401 0.86185646 0.44140625
		 0.84375 0.44427401 0.82564354 0.45259663 0.80930948 0.46555945 0.79634666 0.48189354
		 0.78802401 0.5 0.78515625 0.51810646 0.78802401 0.53444058 0.79634666 0.5474034 0.80930942
		 0.55572599 0.82564354 0.55859375 0.84375 0.5316022 0.86671036 0.53715062 0.85582101
		 0.52296036 0.87535226 0.51207095 0.88090062 0.5 0.8828125 0.48792902 0.88090062 0.47703964
		 0.87535226 0.46839777 0.86671036 0.46284935 0.85582101 0.4609375 0.84375 0.46284935
		 0.83167899 0.46839777 0.82078964 0.47703964 0.81214774 0.48792902 0.80659932 0.5
		 0.8046875 0.51207095 0.80659932 0.52296036 0.81214774 0.53160226 0.82078964 0.53715068
		 0.83167899 0.5390625 0.84375 0.53715062 0.85582101 0.5316022 0.86671036 0.51580113
		 0.85523021 0.51857531 0.84978551 0.52296036 0.87535226 0.51148015 0.85955113 0.51207095
		 0.88090062 0.50603551 0.86232531 0.5 0.8828125 0.5 0.86328125 0.48792902 0.88090062
		 0.49396452 0.86232531 0.47703964 0.87535226 0.48851982 0.85955113 0.46839777 0.86671036
		 0.48419887 0.85523021 0.46284935 0.85582101 0.48142466 0.84978551 0.4609375 0.84375
		 0.48046875 0.84375 0.46284935 0.83167899 0.48142466 0.83771449 0.46839777 0.82078964
		 0.48419887 0.83226979 0.47703964 0.81214774 0.48851982 0.82794887 0.48792902 0.80659932
		 0.49396452 0.82517469 0.5 0.8046875 0.5 0.82421875 0.51207095 0.80659932 0.50603551
		 0.82517469 0.52296036 0.81214774 0.51148021 0.82794887 0.53160226 0.82078964 0.51580113
		 0.83226979 0.53715068 0.83167899 0.51857531 0.83771449 0.5390625 0.84375 0.51953125
		 0.84375 0.5 0.15000001 0.51857531 0.84978551 0.51580113 0.85523021 0.5 0.83749998
		 0.51148015 0.85955113 0.50603551 0.86232531 0.5 0.86328125 0.49396452 0.86232531
		 0.48851982 0.85955113 0.48419887 0.85523021 0.48142466 0.84978551 0.48046875 0.84375
		 0.48142466 0.83771449 0.48419887 0.83226979 0.48851982 0.82794887 0.49396452 0.82517469
		 0.5 0.82421875 0.50603551 0.82517469 0.51148021 0.82794887 0.51580113 0.83226979
		 0.51857531 0.83771449 0.51953125 0.84375 0.43749994 0.60056871 0.44999993 0.60056871
		 0.44999993 0.68843985 0.43749994 0.68843985 0.42499995 0.60056871 0.42499995 0.68843985
		 0.41249996 0.60056871 0.41249996 0.68843985 0.39999998 0.60056871 0.39999998 0.68843985
		 0.38749999 0.60056871 0.38749999 0.68843985 0.375 0.60056871 0.375 0.68843985 0.61249977
		 0.60056871 0.62499976 0.60056871 0.62499976 0.68843985 0.61249977 0.68843985 0.59999979
		 0.60056871 0.59999979 0.68843985 0.5874998 0.60056871 0.5874998 0.68843985 0.57499981
		 0.60056871 0.57499981 0.68843985 0.56249982 0.60056871 0.56249982 0.68843985 0.54999983
		 0.60056871 0.54999983 0.68843985 0.53749985 0.60056871 0.53749985 0.68843985 0.52499986
		 0.60056871 0.52499986 0.68843985 0.51249987 0.60056871 0.51249987 0.68843985 0.49999988
		 0.60056871 0.49999988 0.68843985 0.48749989 0.60056871 0.48749989 0.68843985 0.4749999
		 0.60056871 0.4749999 0.68843985 0.46249992 0.60056871 0.46249992 0.68843985 0.43749994
		 0.44832614 0.44999993 0.44832614 0.44999993 0.60056871 0.43749994 0.60056871 0.42499995
		 0.44832614 0.42499995 0.60056871 0.41249996 0.44832614 0.41249996 0.60056871 0.39999998
		 0.44832614 0.39999998 0.60056871 0.38749999 0.44832614 0.38749999 0.60056871 0.375
		 0.44832614 0.375 0.60056871 0.61249983 0.44832614 0.62499976 0.44832614 0.62499976
		 0.60056871 0.61249977 0.60056871 0.59999979 0.44832614 0.59999979 0.60056871 0.58749986
		 0.44832614 0.5874998 0.60056871 0.57499981 0.44832614 0.57499981 0.60056871 0.56249982
		 0.44832614 0.56249982 0.60056871 0.54999983 0.44832614 0.54999983 0.60056871 0.5374999
		 0.44832614 0.53749985 0.60056871 0.52499986 0.44832614 0.52499986 0.60056871 0.51249987
		 0.44832614 0.51249987 0.60056871 0.49999988 0.44832614 0.49999988 0.60056871 0.48749992
		 0.44832614 0.48749989 0.60056871 0.4749999 0.44832614 0.4749999 0.60056871 0.46249992
		 0.44832614 0.46249992 0.60056871 0.44999993 0.60056871 0.43749994 0.60056871 0.42499995
		 0.60056871 0.41249996 0.60056871 0.39999998 0.60056871 0.38749999 0.60056871 0.375
		 0.60056871 0.62499976 0.60056871 0.61249977 0.60056871 0.59999979 0.60056871 0.5874998
		 0.60056871 0.57499981 0.60056871 0.56249982 0.60056871 0.54999983 0.60056871 0.53749985
		 0.60056871 0.52499986 0.60056871 0.51249987 0.60056871 0.49999988 0.60056871 0.48749989
		 0.60056871 0.4749999 0.60056871 0.46249992 0.60056871 0.44999993 0.68843985 0.43749994
		 0.68843985 0.42499995 0.68843985 0.41249996 0.68843985 0.39999998 0.68843985 0.38749999
		 0.68843985 0.375 0.68843985 0.62499976 0.68843985 0.61249977 0.68843985 0.59999979
		 0.68843985 0.5874998 0.68843985 0.57499981 0.68843985 0.56249982 0.68843985 0.54999983
		 0.68843985 0.53749985 0.68843985 0.52499986 0.68843985 0.51249987 0.68843985 0.49999988
		 0.68843985 0.48749989 0.68843985 0.4749999 0.68843985 0.46249992 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 886 ".vt";
	setAttr ".vt[0:165]"  33.61429596 15.65468979 52.91967773 28.59666252 25.50234795 52.91967773
		 20.78151321 33.31749344 52.91967773 10.9338541 38.33512497 52.91967773 0.017641218 40.064083099 52.91967773
		 -10.89857197 38.33512497 52.91967773 -20.74622726 33.31748962 52.91967773 -28.56137085 25.50234222 52.91967773
		 -33.57899857 15.65468597 52.91967773 -35.3079567 4.73847532 52.91967773 -33.57899857 -6.17773485 52.91967773
		 -28.56136894 -16.025388718 52.91967773 -20.74622345 -23.8405304 52.91967773 -10.89856911 -28.85816193 52.91967773
		 0.017640166 -30.58712006 52.91967773 10.93384743 -28.85815811 52.91967773 20.78150177 -23.84052849 52.91967773
		 28.59664345 -16.025388718 52.91967773 33.61427689 -6.17773199 52.91967773 35.3432312 4.73847532 52.91967773
		 34.077617645 15.805233 69.75389099 28.99078751 25.78869629 69.75389099 21.067861557 33.71162033 69.75389099
		 11.084397316 38.79844666 69.75389099 0.017641218 40.55124664 69.75389099 -11.049115181 38.79844666 69.75389099
		 -21.032575607 33.7116127 69.75389099 -28.95549583 25.78869057 69.75389099 -34.042320251 15.80522728 69.75389099
		 -35.79512024 4.73847532 69.75389099 -34.042320251 -6.32827711 69.75389099 -28.95549393 -16.31173706 69.75389099
		 -21.032571793 -24.23465729 69.75389099 -11.049111366 -29.32148361 69.75389099 0.017640151 -31.0742836 69.75389099
		 11.08439064 -29.3214798 69.75389099 21.067850113 -24.23465347 69.75389099 28.99076843 -16.31173325 69.75389099
		 34.077598572 -6.3282752 69.75389099 35.83039856 4.73847532 69.75389099 35.42222977 16.24212265 72.10800934
		 30.13458252 26.61971283 72.10800934 21.8988781 34.85541534 72.10800934 11.52128696 40.14305878 72.10800934
		 0.017641218 41.96505737 72.10800934 -11.48600483 40.14305496 72.10800934 -21.86359215 34.85540771 72.10800934
		 -30.099290848 26.61970711 72.10800934 -35.38693237 16.24211884 72.10800934 -37.20892715 4.73847532 72.10800934
		 -35.38693237 -6.76516771 72.10800934 -30.09928894 -17.14275169 72.10800934 -21.86358643 -25.37845039 72.10800934
		 -11.48600197 -30.66609573 72.10800934 0.017640108 -32.48809052 72.10800934 11.52128029 -30.66609192 72.10800934
		 21.89886475 -25.37844849 72.10800934 30.13456345 -17.14274979 72.10800934 35.42220688 -6.76516485 72.10800934
		 37.24420547 4.73847532 72.10800934 37.51651382 16.92259598 73.97624207 31.9160862 27.91405106 73.97624207
		 23.19321632 36.63691711 73.97624207 12.20176029 42.23733902 73.97624207 0.017641218 44.16711426 73.97624207
		 -12.16647816 42.23733902 73.97624207 -23.15792847 36.63690948 73.97624207 -31.88079262 27.91404343 73.97624207
		 -37.48121262 16.92259216 73.97624207 -39.41098785 4.73847532 73.97624207 -37.48121262 -7.44564104 73.97624207
		 -31.88079071 -18.43708992 73.97624207 -23.15792465 -27.15995407 73.97624207 -12.1664753 -32.76037598 73.97624207
		 0.017640043 -34.6901474 73.97624207 12.20175362 -32.76037598 73.97624207 23.19320297 -27.15995216 73.97624207
		 31.91606712 -18.43708801 73.97624207 37.51649094 -7.44563913 73.97624207 39.44626236 4.73847532 73.97624207
		 40.15546799 17.78004456 75.17572784 34.16091919 29.54501534 75.17572784 24.8241806 38.8817482 75.17572784
		 13.05920887 44.876297 75.17572784 0.017641218 46.94187546 75.17572784 -13.023926735 44.876297 75.17572784
		 -24.78889275 38.88174057 75.17572784 -34.12561798 29.5450058 75.17572784 -40.12016678 17.78003883 75.17572784
		 -42.18574524 4.73847532 75.17572784 -40.12016678 -8.30308914 75.17572784 -34.12561798 -20.068052292 75.17572784
		 -24.78888702 -29.40478134 75.17572784 -13.02392292 -35.39933014 75.17572784 0.017639961 -37.4649086 75.17572784
		 13.059201241 -35.39932632 75.17572784 24.82416534 -29.40477753 75.17572784 34.16089249 -20.068050385 75.17572784
		 40.15544128 -8.30308723 75.17572784 42.22102356 4.73847532 75.17572784 43.080768585 18.73053169 75.58904266
		 36.64932632 31.35294914 75.58904266 26.63211441 41.37015533 75.58904266 14.0096960068 47.8015976 75.58904266
		 0.017641218 50.017715454 75.58904266 -13.97441387 47.80159378 75.58904266 -26.59682655 41.37014771 75.58904266
		 -36.61402893 31.35294151 75.58904266 -43.045463562 18.73052597 75.58904266 -45.26158905 4.73847532 75.58904266
		 -43.045463562 -9.25357628 75.58904266 -36.6140213 -21.8759861 75.58904266 -26.59682083 -31.89318466 75.58904266
		 -13.97441006 -38.32462692 75.58904266 0.01763987 -40.5407486 75.58904266 14.0096893311 -38.32462311 75.58904266
		 26.63209724 -31.89318466 75.58904266 36.64929962 -21.87598419 75.58904266 43.080741882 -9.25357437 75.58904266
		 45.29686356 4.73847532 75.58904266 46.0060653687 19.68101883 75.17572784 39.13773346 33.16088486 75.17572784
		 28.44005013 43.85856247 75.17572784 14.9601841 50.72689438 75.17572784 0.017641218 53.09355545 75.17572784
		 -14.92490196 50.72689056 75.17572784 -28.40476036 43.85855484 75.17572784 -39.10243607 33.16087341 75.17572784
		 -45.97076416 19.68101311 75.17572784 -48.33742905 4.73847532 75.17572784 -45.97076416 -10.20406342 75.17572784
		 -39.10243225 -23.68391991 75.17572784 -28.40475464 -34.38159561 75.17572784 -14.92489719 -41.24992371 75.17572784
		 0.017639777 -43.61658859 75.17572784 14.96017456 -41.24991989 75.17572784 28.44003296 -34.38159561 75.17572784
		 39.13771057 -23.683918 75.17572784 46.0060386658 -10.2040596 75.17572784 48.37270355 4.73847532 75.17572784
		 48.64501953 20.53846741 73.97624207 41.38256073 34.79184341 73.97624207 30.07101059 46.10339355 73.97624207
		 15.81763268 53.36584854 73.97624207 0.017641218 55.86832047 73.97624207 -15.78235054 53.36584473 73.97624207
		 -30.03572464 46.10338593 73.97624207 -41.34726334 34.79183578 73.97624207 -48.60971832 20.53846169 73.97624207
		 -51.11219025 4.73847532 73.97624207 -48.60971832 -11.061510086 73.97624207 -41.34725571 -25.31488419 73.97624207
		 -30.035718918 -36.62642288 73.97624207 -15.78234482 -43.88887787 73.97624207 0.017639695 -46.39134598 73.97624207
		 15.81762218 -43.88887787 73.97624207 30.070993423 -36.62641907 73.97624207 41.38253403 -25.31488037 73.97624207
		 48.64499283 -11.061508179 73.97624207 51.14746094 4.73847532 73.97624207 50.73930359 21.21894264 72.10800934
		 43.16406631 36.086181641 72.10800934 31.36534882 47.88489532 72.10800934 16.498106 55.4601326 72.10800934
		 0.017641218 58.07037735 72.10800934 -16.46282387 55.46012878 72.10800934;
	setAttr ".vt[166:331]" -31.33006287 47.88488388 72.10800934 -43.12876511 36.086174011 72.10800934
		 -50.70400238 21.21893501 72.10800934 -53.31424713 4.73847532 72.10800934 -50.70400238 -11.74198341 72.10800934
		 -43.12876129 -26.6092205 72.10800934 -31.33005524 -38.40792465 72.10800934 -16.46281815 -45.98315811 72.10800934
		 0.01763963 -48.59340668 72.10800934 16.49809647 -45.9831543 72.10800934 31.36533165 -38.40792084 72.10800934
		 43.16403961 -26.60921669 72.10800934 50.73927307 -11.7419796 72.10800934 53.34951782 4.73847532 72.10800934
		 52.083919525 21.6558342 69.75389099 44.30786514 36.917202 69.75389099 32.19636917 49.028694153 69.75389099
		 16.93499756 56.80474854 69.75389099 0.017641218 59.48418808 69.75389099 -16.89971542 56.80474472 69.75389099
		 -32.16107559 49.028686523 69.75389099 -44.27256393 36.91719437 69.75389099 -52.048614502 21.65582657 69.75389099
		 -54.72805786 4.73847532 69.75389099 -52.048614502 -12.17887497 69.75389099 -44.27256012 -27.44023895 69.75389099
		 -32.16107178 -39.55172348 69.75389099 -16.8997097 -47.32777405 69.75389099 0.017639587 -50.0072212219 69.75389099
		 16.93498802 -47.32777023 69.75389099 32.1963501 -39.55172348 69.75389099 44.30783844 -27.44023514 69.75389099
		 52.083885193 -12.17887306 69.75389099 54.76333237 4.73847532 69.75389099 52.54724121 21.80637741 59.93991089
		 44.70199203 37.20355225 59.93991089 32.48271942 49.42282104 59.93991089 17.085538864 57.26807022 59.93991089
		 0.017641218 59.97135544 59.93991089 -17.050256729 57.26806641 59.93991089 -32.44742584 49.42280579 59.93991089
		 -44.66668701 37.2035408 59.93991089 -52.51194 21.80636978 59.93991089 -55.21522141 4.73847532 59.93991089
		 -52.51194 -12.32941818 59.93991089 -44.6666832 -27.72658539 59.93991089 -32.44741821 -39.94584656 59.93991089
		 -17.050252914 -47.79109573 59.93991089 0.017639572 -50.49438477 59.93991089 17.085529327 -47.79109192 59.93991089
		 32.48269653 -39.94584274 59.93991089 44.70196152 -27.72658539 59.93991089 52.54720688 -12.32941628 59.93991089
		 55.25049591 4.73847532 59.93991089 52.083919525 21.6558342 50.31011963 44.30786514 36.917202 50.31011963
		 32.19636917 49.028694153 50.31011963 16.93499756 56.80474854 50.31011963 0.017641218 59.48418808 50.31011963
		 -16.89971542 56.80474472 50.31011963 -32.16107559 49.028686523 50.31011963 -44.27256393 36.91719437 50.31011963
		 -52.048614502 21.65582657 50.31011963 -54.72805786 4.73847532 50.31011963 -52.048614502 -12.17887497 50.31011963
		 -44.27256012 -27.44023895 50.31011963 -32.16107178 -39.55172348 50.31011963 -16.8997097 -47.32777405 50.31011963
		 0.017639587 -50.0072212219 50.31011963 16.93498802 -47.32777023 50.31011963 32.1963501 -39.55172348 50.31011963
		 44.30783844 -27.44023514 50.31011963 52.083885193 -12.17887306 50.31011963 54.76333237 4.73847532 50.31011963
		 50.73930359 21.21894264 47.95599747 43.16406631 36.086181641 47.95599747 31.36534882 47.88489532 47.95599747
		 16.498106 55.4601326 47.95599747 0.017641218 58.07037735 47.95599747 -16.46282387 55.46012878 47.95599747
		 -31.33006287 47.88488388 47.95599747 -43.12876511 36.086174011 47.95599747 -50.70400238 21.21893501 47.95599747
		 -53.31424713 4.73847532 47.95599747 -50.70400238 -11.74198341 47.95599747 -43.12876129 -26.6092205 47.95599747
		 -31.33005524 -38.40792465 47.95599747 -16.46281815 -45.98315811 47.95599747 0.01763963 -48.59340668 47.95599747
		 16.49809647 -45.9831543 47.95599747 31.36533165 -38.40792084 47.95599747 43.16403961 -26.60921669 47.95599747
		 50.73927307 -11.7419796 47.95599747 53.34951782 4.73847532 47.95599747 48.64501953 20.53846741 46.087760925
		 41.38256073 34.79184341 46.087760925 30.07101059 46.10339355 46.087760925 15.81763268 53.36584854 46.087760925
		 0.017641218 55.86832047 46.087760925 -15.78235054 53.36584473 46.087760925 -30.03572464 46.10338593 46.087760925
		 -41.34726334 34.79183578 46.087760925 -48.60971832 20.53846169 46.087760925 -51.11219025 4.73847532 46.087760925
		 -48.60971832 -11.061510086 46.087760925 -41.34725571 -25.31488419 46.087760925 -30.035718918 -36.62642288 46.087760925
		 -15.78234482 -43.88887787 46.087760925 0.017639695 -46.39134598 46.087760925 15.81762218 -43.88887787 46.087760925
		 30.070993423 -36.62641907 46.087760925 41.38253403 -25.31488037 46.087760925 48.64499283 -11.061508179 46.087760925
		 51.14746094 4.73847532 46.087760925 46.0060691833 19.68102074 44.88827515 39.13773727 33.16088486 44.88827515
		 28.44005203 43.85856628 44.88827515 14.96018505 50.72689819 44.88827515 0.017641218 53.09356308 44.88827515
		 -14.92490292 50.72689438 44.88827515 -28.40476227 43.85855865 44.88827515 -39.10243607 33.16087723 44.88827515
		 -45.97076797 19.68101501 44.88827515 -48.33743286 4.73847532 44.88827515 -45.97076797 -10.20406342 44.88827515
		 -39.10243607 -23.68392372 44.88827515 -28.40475845 -34.38159943 44.88827515 -14.92489815 -41.24993134 44.88827515
		 0.017639777 -43.61659241 44.88827515 14.96017647 -41.24992371 44.88827515 28.44003487 -34.38159561 44.88827515
		 39.13771439 -23.68391991 44.88827515 46.0060424805 -10.20406151 44.88827515 48.37270737 4.73847532 44.88827515
		 43.080768585 18.73053169 44.47496033 36.64932632 31.35294914 44.47496033 26.63211441 41.37015533 44.47496033
		 14.0096960068 47.8015976 44.47496033 0.017641218 50.017715454 44.47496033 -13.97441387 47.80159378 44.47496033
		 -26.59682655 41.37014771 44.47496033 -36.61402893 31.35294151 44.47496033 -43.045463562 18.73052597 44.47496033
		 -45.26158905 4.73847532 44.47496033 -43.045463562 -9.25357628 44.47496033 -36.6140213 -21.8759861 44.47496033
		 -26.59682083 -31.89318466 44.47496033 -13.97441006 -38.32462692 44.47496033 0.01763987 -40.5407486 44.47496033
		 14.0096893311 -38.32462311 44.47496033 26.63209724 -31.89318466 44.47496033 36.64929962 -21.87598419 44.47496033
		 43.080741882 -9.25357437 44.47496033 45.29686356 4.73847532 44.47496033 40.15546417 17.78004265 44.88827515
		 34.16091537 29.54501152 44.88827515 24.82417679 38.88174438 44.88827515 13.059207916 44.87628937 44.88827515
		 0.017641218 46.94187164 44.88827515 -13.023925781 44.87628937 44.88827515 -24.78888893 38.88173676 44.88827515
		 -34.12561417 29.54500389 44.88827515 -40.12016296 17.78003883 44.88827515 -42.18574142 4.73847532 44.88827515
		 -40.12016296 -8.30308723 44.88827515 -34.12561417 -20.068050385 44.88827515;
	setAttr ".vt[332:497]" -24.78888512 -29.40477753 44.88827515 -13.023921967 -35.39932632 44.88827515
		 0.017639961 -37.46490479 44.88827515 13.059200287 -35.39932251 44.88827515 24.82416344 -29.40477371 44.88827515
		 34.16088867 -20.068048477 44.88827515 40.15543747 -8.30308533 44.88827515 42.22101974 4.73847532 44.88827515
		 37.51651382 16.92259598 46.087757111 31.9160862 27.91405106 46.087757111 23.19321632 36.63691711 46.087757111
		 12.20176029 42.23733902 46.087757111 0.017641218 44.16711426 46.087757111 -12.16647816 42.23733902 46.087757111
		 -23.15792847 36.63690948 46.087757111 -31.88079262 27.91404343 46.087757111 -37.48121262 16.92259216 46.087757111
		 -39.41098785 4.73847532 46.087757111 -37.48121262 -7.44564104 46.087757111 -31.88079071 -18.43708992 46.087757111
		 -23.15792465 -27.15995407 46.087757111 -12.1664753 -32.76037598 46.087757111 0.017640043 -34.6901474 46.087757111
		 12.20175362 -32.76037598 46.087757111 23.19320297 -27.15995216 46.087757111 31.91606712 -18.43708801 46.087757111
		 37.51649094 -7.44563913 46.087757111 39.44626236 4.73847532 46.087757111 35.42222595 16.24212074 47.95599747
		 30.1345787 26.61971092 47.95599747 21.89887619 34.85541153 47.95599747 11.52128601 40.14305496 47.95599747
		 0.017641218 41.96504974 47.95599747 -11.48600388 40.14305115 47.95599747 -21.86359024 34.8554039 47.95599747
		 -30.099285126 26.61970329 47.95599747 -35.38692856 16.24211693 47.95599747 -37.20892334 4.73847532 47.95599747
		 -35.38692856 -6.76516581 47.95599747 -30.099283218 -17.14274979 47.95599747 -21.86358452 -25.37844658 47.95599747
		 -11.48600006 -30.6660881 47.95599747 0.017640108 -32.4880867 47.95599747 11.52127934 -30.6660881 47.95599747
		 21.89886284 -25.37844467 47.95599747 30.13455963 -17.14274788 47.95599747 35.42220306 -6.7651639 47.95599747
		 37.24420166 4.73847532 47.95599747 34.077613831 15.80522919 50.31011581 28.99078178 25.78869438 50.31011581
		 21.06785965 33.7116127 50.31011581 11.084394455 38.79844284 50.31011581 0.017641218 40.55124283 50.31011581
		 -11.04911232 38.79843903 50.31011581 -21.0325737 33.71160889 50.31011581 -28.9554882 25.78868866 50.31011581
		 -34.042312622 15.80522537 50.31011581 -35.79511261 4.73847532 50.31011581 -34.042312622 -6.3282752 50.31011581
		 -28.9554863 -16.31173325 50.31011581 -21.032567978 -24.23464966 50.31011581 -11.049109459 -29.32147598 50.31011581
		 0.017640151 -31.07427597 50.31011581 11.084387779 -29.32147598 50.31011581 21.067846298 -24.23464775 50.31011581
		 28.99076271 -16.31173134 50.31011581 34.077590942 -6.3282733 50.31011581 35.83039093 4.73847532 50.31011581
		 4.26108742 7.60843945 50.72061157 3.62469792 8.85742378 50.72061157 2.63349676 9.84862423 50.72061157
		 1.38451111 10.48501396 50.72061157 0 10.70429897 50.72061157 -1.38451111 10.48501396 50.72061157
		 -2.63349628 9.84862328 50.72061157 -3.62469649 8.85742378 50.72061157 -4.26108599 7.60843754 50.72061157
		 -4.480371 6.22392702 50.72061157 -4.26108599 4.8394165 50.72061157 -3.62469625 3.59043145 50.72061157
		 -2.63349581 2.59923148 50.72061157 -1.38451064 1.96284294 50.72061157 -1.3352542e-007 1.7435565 50.72061157
		 1.38451028 1.96284294 50.72061157 2.63349509 2.59923148 50.72061157 3.62469554 3.59043145 50.72061157
		 4.26108503 4.8394165 50.72061157 4.48036957 6.22392702 50.72061157 8.52217484 8.99294949 50.72061157
		 7.24939585 11.49092102 50.72061157 5.26699352 13.47332191 50.72061157 2.76902223 14.74610138 50.72061157
		 0 15.1846714 50.72061157 -2.76902223 14.74610138 50.72061157 -5.26699257 13.47332001 50.72061157
		 -7.24939299 11.49091911 50.72061157 -8.52217197 8.99294853 50.72061157 -8.960742 6.22392702 50.72061157
		 -8.52217197 3.4549067 50.72061157 -7.24939251 0.95693541 50.72061157 -5.26699162 -1.025465012 50.72061157
		 -2.76902127 -2.29824305 50.72061157 -2.6705084e-007 -2.73681402 50.72061157 2.76902056 -2.29824305 50.72061157
		 5.26699018 -1.025464535 50.72061157 7.24939108 0.95693588 50.72061157 8.52217007 3.45490718 50.72061157
		 8.96073914 6.22392702 50.72061157 12.78326225 10.37746048 50.72061157 10.87409306 14.1244173 50.72061157
		 7.90049028 17.098020554 50.72061157 4.15353298 19.007188797 50.72061157 0 19.66504288 50.72061157
		 -4.15353298 19.0071868896 50.72061157 -7.90048885 17.098016739 50.72061157 -10.87408829 14.1244154 50.72061157
		 -12.78325844 10.37745857 50.72061157 -13.44111252 6.22392702 50.72061157 -12.78325844 2.070394993 50.72061157
		 -10.87408829 -1.67655802 50.72061157 -7.90048647 -4.65015936 50.72061157 -4.15353203 -6.55932951 50.72061157
		 -4.0057628e-007 -7.21718454 50.72061157 4.1535306 -6.55932951 50.72061157 7.90048552 -4.65015936 50.72061157
		 10.87408543 -1.67655802 50.72061157 12.78325462 2.07039547 50.72061157 13.44110966 6.22392702 50.72061157
		 17.04434967 11.76197243 50.72061157 14.49879169 16.75791359 50.72061157 10.53398705 20.72271729 50.72061157
		 5.53804445 23.26827431 50.72061157 0 24.14541435 50.72061157 -5.53804445 23.26827431 50.72061157
		 -10.53398514 20.72271347 50.72061157 -14.49878597 16.75791168 50.72061157 -17.044343948 11.76197052 50.72061157
		 -17.92148399 6.22392702 50.72061157 -17.044343948 0.68588591 50.72061157 -14.49878502 -4.31005621 50.72061157
		 -10.53398323 -8.27485657 50.72061157 -5.53804255 -10.8204155 50.72061157 -5.3410167e-007 -11.69755745 50.72061157
		 5.53804111 -10.82041359 50.72061157 10.53398037 -8.27485657 50.72061157 14.49878216 -4.31005526 50.72061157
		 17.044340134 0.68588591 50.72061157 17.92147827 6.22392702 50.72061157 21.305439 13.14648247 50.72061157
		 18.12348938 19.39141273 50.72061157 13.16748428 24.34741402 50.72061157 6.92255545 27.52935982 50.72061157
		 0 28.62578583 50.72061157 -6.92255545 27.52935982 50.72061157 -13.16748142 24.3474102 50.72061157
		 -18.12348175 19.39140701 50.72061157 -21.30543137 13.14648056 50.72061157 -22.40185547 6.22392702 50.72061157
		 -21.30543137 -0.69862652 50.72061157 -18.12348175 -6.94355059 50.72061157 -13.16747856 -11.8995533 50.72061157
		 -6.92255354 -15.081497192 50.72061157 -6.6762715e-007 -16.17792511 50.72061157 6.92255116 -15.081497192 50.72061157
		 13.16747665 -11.8995533 50.72061157 18.12347603 -6.94355059 50.72061157;
	setAttr ".vt[498:663]" 21.30542374 -0.69862556 50.72061157 22.40184975 6.22392702 50.72061157
		 25.56652451 14.53099442 50.72061157 21.74818611 22.024908066 50.72061157 15.80098057 27.97211266 50.72061157
		 8.30706596 31.79044914 50.72061157 0 33.10615921 50.72061157 -8.30706596 31.79044533 50.72061157
		 -15.80097771 27.97210884 50.72061157 -21.74817657 22.024904251 50.72061157 -25.56651688 14.5309906 50.72061157
		 -26.88222504 6.22392702 50.72061157 -25.56651688 -2.083137035 50.72061157 -21.74817657 -9.57704735 50.72061157
		 -15.80097294 -15.52424812 50.72061157 -8.30706406 -19.34258842 50.72061157 -8.0115257e-007 -20.65829659 50.72061157
		 8.3070612 -19.34258842 50.72061157 15.80097103 -15.52424622 50.72061157 21.74817085 -9.57704544 50.72061157
		 25.56650925 -2.083136082 50.72061157 26.88221931 6.22392702 50.72061157 29.82761002 15.91550446 50.72061157
		 25.37288475 24.65840149 50.72061157 18.43447685 31.59681129 50.72061157 9.69157791 36.05153656 50.72061157
		 0 37.58654404 50.72061157 -9.69157791 36.05153656 50.72061157 -18.43447304 31.59680176 50.72061157
		 -25.37287521 24.65839767 50.72061157 -29.82760239 15.91550255 50.72061157 -31.36259651 6.22392702 50.72061157
		 -29.82760239 -3.46764803 50.72061157 -25.37287331 -12.21054459 50.72061157 -18.43447113 -19.14894485 50.72061157
		 -9.69157505 -23.60367393 50.72061157 -9.3467798e-007 -25.13866806 50.72061157 9.69157219 -23.60367012 50.72061157
		 18.43446732 -19.14894485 50.72061157 25.37286758 -12.21054268 50.72061157 29.82759666 -3.46764612 50.72061157
		 31.36258888 6.22392702 50.72061157 34.088699341 17.3000164 46.97341919 28.99758339 27.29190063 46.97341919
		 21.067974091 35.22151566 46.97341919 11.076088905 40.31262207 46.97341919 0 42.066902161 46.97341919
		 -11.076088905 40.31262207 46.97341919 -21.067970276 35.2215004 46.97341919 -28.99757195 27.29189682 46.97341919
		 -34.088687897 17.30001259 46.97341919 -35.84296799 6.22392702 46.97341919 -34.088687897 -4.85215712 46.97341919
		 -28.99757004 -14.84403992 46.97341919 -21.067966461 -22.77364349 46.97341919 -11.076085091 -27.86475754 46.97341919
		 -1.0682033e-006 -29.61903763 46.97341919 11.07608223 -27.86475372 46.97341919 21.067960739 -22.77363968 46.97341919
		 28.99756432 -14.84403992 46.97341919 34.088680267 -4.85215521 46.97341919 35.84295654 6.22392702 46.97341919
		 34.088699341 17.3000164 74.86196136 28.99758339 27.29190063 74.86196136 21.067974091 35.22151566 74.86196136
		 11.076088905 40.31262207 74.86196136 0 42.066902161 74.86196136 -11.076088905 40.31262207 74.86196136
		 -21.067970276 35.2215004 74.86196136 -28.99757195 27.29189682 74.86196136 -34.088687897 17.30001259 74.86196136
		 -35.84296799 6.22392702 74.86196136 -34.088687897 -4.85215712 74.86196136 -28.99757004 -14.84403992 74.86196136
		 -21.067966461 -22.77364349 74.86196136 -11.076085091 -27.86475754 74.86196136 -1.0682033e-006 -29.61903763 74.86196136
		 11.07608223 -27.86475372 74.86196136 21.067960739 -22.77363968 74.86196136 28.99756432 -14.84403992 74.86196136
		 34.088680267 -4.85215521 74.86196136 35.84295654 6.22392702 74.86196136 29.82761002 15.91550446 72.43449402
		 25.37288475 24.65840149 72.43449402 18.43447685 31.59681129 72.43449402 9.69157791 36.05153656 72.43449402
		 0 37.58654404 72.43449402 -9.69157791 36.05153656 72.43449402 -18.43447304 31.59680176 72.43449402
		 -25.37287521 24.65839767 72.43449402 -29.82760239 15.91550255 72.43449402 -31.36259651 6.22392702 72.43449402
		 -29.82760239 -3.46764803 72.43449402 -25.37287331 -12.21054459 72.43449402 -18.43447113 -19.14894485 72.43449402
		 -9.69157505 -23.60367393 72.43449402 -9.3467798e-007 -25.13866806 72.43449402 9.69157219 -23.60367012 72.43449402
		 18.43446732 -19.14894485 72.43449402 25.37286758 -12.21054268 72.43449402 29.82759666 -3.46764612 72.43449402
		 31.36258888 6.22392702 72.43449402 25.56652451 14.53099442 69.17363739 21.74818611 22.024908066 69.17363739
		 15.80098057 27.97211266 69.17363739 8.30706596 31.79044914 69.17363739 0 33.10615921 69.17363739
		 -8.30706596 31.79044533 69.17363739 -15.80097771 27.97210884 69.17363739 -21.74817657 22.024904251 69.17363739
		 -25.56651688 14.5309906 69.17363739 -26.88222504 6.22392702 69.17363739 -25.56651688 -2.083137035 69.17363739
		 -21.74817657 -9.57704735 69.17363739 -15.80097294 -15.52424812 69.17363739 -8.30706406 -19.34258842 69.17363739
		 -8.0115257e-007 -20.65829659 69.17363739 8.3070612 -19.34258842 69.17363739 15.80097103 -15.52424622 69.17363739
		 21.74817085 -9.57704544 69.17363739 25.56650925 -2.083136082 69.17363739 26.88221931 6.22392702 69.17363739
		 21.305439 13.14648247 69.17363739 18.12348938 19.39141273 69.17363739 13.16748428 24.34741402 69.17363739
		 6.92255545 27.52935982 69.17363739 0 28.62578583 69.17363739 -6.92255545 27.52935982 69.17363739
		 -13.16748142 24.3474102 69.17363739 -18.12348175 19.39140701 69.17363739 -21.30543137 13.14648056 69.17363739
		 -22.40185547 6.22392702 69.17363739 -21.30543137 -0.69862652 69.17363739 -18.12348175 -6.94355059 69.17363739
		 -13.16747856 -11.8995533 69.17363739 -6.92255354 -15.081497192 69.17363739 -6.6762715e-007 -16.17792511 69.17363739
		 6.92255116 -15.081497192 69.17363739 13.16747665 -11.8995533 69.17363739 18.12347603 -6.94355059 69.17363739
		 21.30542374 -0.69862556 69.17363739 22.40184975 6.22392702 69.17363739 17.04434967 11.76197243 73.25047302
		 14.49879169 16.75791359 73.25047302 10.53398705 20.72271729 73.25047302 5.53804445 23.26827431 73.25047302
		 0 24.14541435 73.25047302 -5.53804445 23.26827431 73.25047302 -10.53398514 20.72271347 73.25047302
		 -14.49878597 16.75791168 73.25047302 -17.044343948 11.76197052 73.25047302 -17.92148399 6.22392702 73.25047302
		 -17.044343948 0.68588591 73.25047302 -14.49878502 -4.31005621 73.25047302 -10.53398323 -8.27485657 73.25047302
		 -5.53804255 -10.8204155 73.25047302 -5.3410167e-007 -11.69755745 73.25047302 5.53804111 -10.82041359 73.25047302
		 10.53398037 -8.27485657 73.25047302 14.49878216 -4.31005526 73.25047302 17.044340134 0.68588591 73.25047302
		 17.92147827 6.22392702 73.25047302 12.78326225 10.37746048 73.25047302 10.87409306 14.1244173 73.25047302
		 7.90049028 17.098020554 73.25047302 4.15353298 19.007188797 73.25047302;
	setAttr ".vt[664:829]" 0 19.66504288 73.25047302 -4.15353298 19.0071868896 73.25047302
		 -7.90048885 17.098016739 73.25047302 -10.87408829 14.1244154 73.25047302 -12.78325844 10.37745857 73.25047302
		 -13.44111252 6.22392702 73.25047302 -12.78325844 2.070394993 73.25047302 -10.87408829 -1.67655802 73.25047302
		 -7.90048647 -4.65015936 73.25047302 -4.15353203 -6.55932951 73.25047302 -4.0057628e-007 -7.21718454 73.25047302
		 4.1535306 -6.55932951 73.25047302 7.90048552 -4.65015936 73.25047302 10.87408543 -1.67655802 73.25047302
		 12.78325462 2.07039547 73.25047302 13.44110966 6.22392702 73.25047302 8.52217484 8.99294949 69.88750458
		 7.24939585 11.49092102 69.88750458 5.26699352 13.47332191 69.88750458 2.76902223 14.74610138 69.88750458
		 0 15.1846714 69.88750458 -2.76902223 14.74610138 69.88750458 -5.26699257 13.47332001 69.88750458
		 -7.24939299 11.49091911 69.88750458 -8.52217197 8.99294853 69.88750458 -8.960742 6.22392702 69.88750458
		 -8.52217197 3.4549067 69.88750458 -7.24939251 0.95693541 69.88750458 -5.26699162 -1.025465012 69.88750458
		 -2.76902127 -2.29824305 69.88750458 -2.6705084e-007 -2.73681402 69.88750458 2.76902056 -2.29824305 69.88750458
		 5.26699018 -1.025464535 69.88750458 7.24939108 0.95693588 69.88750458 8.52217007 3.45490718 69.88750458
		 8.96073914 6.22392702 69.88750458 0 6.22392702 50.72061157 4.26108503 4.8394165 50.70215988
		 4.48036957 6.22392702 50.70215988 8.96073914 6.22392702 50.70215988 8.52217007 3.45490718 50.70215988
		 8.52217484 8.99294949 72.62288666 7.24939585 11.49092102 72.62288666 3.62469792 8.85742378 72.45482635
		 4.26108742 7.60843945 72.45482635 5.26699352 13.47332191 72.62288666 2.63349676 9.84862423 72.45482635
		 2.76902223 14.74610138 72.62288666 1.38451111 10.48501396 72.45482635 0 15.1846714 72.62288666
		 0 10.70429897 72.45482635 -2.76902223 14.74610138 72.62288666 -1.38451111 10.48501396 72.45482635
		 -5.26699257 13.47332001 72.62288666 -2.63349628 9.84862328 72.45482635 -7.24939299 11.49091911 72.62288666
		 -3.62469649 8.85742378 72.45482635 -8.52217197 8.99294853 72.62288666 -4.26108599 7.60843754 72.45482635
		 -8.960742 6.22392702 72.62288666 -4.480371 6.22392702 72.45482635 -8.52217197 3.4549067 72.62288666
		 -4.26108599 4.8394165 72.45482635 -7.24939251 0.95693541 72.62288666 -3.62469625 3.59043145 72.45482635
		 -5.26699162 -1.025465012 72.62288666 -2.63349581 2.59923148 72.45482635 -2.76902127 -2.29824305 72.62288666
		 -1.38451064 1.96284294 72.45482635 -2.6705084e-007 -2.73681402 72.62288666 -1.3352542e-007 1.7435565 72.45482635
		 2.76902056 -2.29824305 72.62288666 1.38451028 1.96284294 72.45482635 5.26699018 -1.025464535 72.62288666
		 2.63349509 2.59923148 72.45482635 7.24939108 0.95693588 72.62288666 3.62469554 3.59043145 72.45482635
		 8.52217007 3.45490718 72.62288666 4.26108503 4.8394165 72.45482635 8.96073914 6.22392702 72.62288666
		 4.48036957 6.22392702 72.45482635 4.26108694 7.60843945 77.48039246 3.62469745 8.85742378 77.48039246
		 -3.8803272e-008 6.22392702 77.48038483 2.63349676 9.84862423 77.48039246 1.38451111 10.48501396 77.48039246
		 0 10.70429897 77.48039246 -1.38451111 10.48501396 77.48039246 -2.63349628 9.84862328 77.48039246
		 -3.62469649 8.85742378 77.48039246 -4.26108599 7.60843754 77.48039246 -4.480371 6.22392702 77.48039246
		 -4.26108599 4.8394165 77.48039246 -3.62469625 3.59043145 77.48039246 -2.63349581 2.59923148 77.48039246
		 -1.38451064 1.96284294 77.48039246 -1.3352542e-007 1.7435565 77.48039246 1.38451028 1.96284294 77.48039246
		 2.63349509 2.59923148 77.48039246 3.62469554 3.59043145 77.48039246 4.26108503 4.8394165 77.48039246
		 4.48036957 6.22392702 77.48039246 -21.067970276 35.2215004 73.31941223 -11.076088905 40.31262207 73.31941223
		 0 42.066902161 73.31941223 11.076088905 40.31262207 73.31941223 21.067974091 35.22151566 73.31941223
		 28.99758339 27.29190063 73.31941223 34.088699341 17.3000164 73.31941223 35.84295654 6.22392702 73.31941223
		 34.088680267 -4.85215521 73.31941223 28.99756432 -14.84403992 73.31941223 21.067960739 -22.77363968 73.31941223
		 11.07608223 -27.86475372 73.31941223 -1.0682033e-006 -29.61903763 73.31941223 -11.076085091 -27.86475754 73.31941223
		 -21.067966461 -22.77364349 73.31941223 -28.99757004 -14.84403992 73.31941223 -34.088687897 -4.85215712 73.31941223
		 -35.84296799 6.22392702 73.31941223 -34.088687897 17.30001259 73.31941223 -28.99757195 27.29189682 73.31941223
		 -21.067970276 35.2215004 50.91166687 -11.076088905 40.31262207 50.91166687 0 42.066902161 50.91166687
		 11.076088905 40.31262207 50.91166687 21.067974091 35.22151566 50.91166687 28.99758339 27.29190063 50.91166687
		 34.088699341 17.3000164 50.91166687 35.84295654 6.22392702 50.91166687 34.088680267 -4.85215521 50.91166687
		 28.99756622 -14.84403992 50.91166687 21.067960739 -22.77363968 50.91166687 11.07608223 -27.86475372 50.91166687
		 -1.0682033e-006 -29.61903763 50.91166687 -11.076086044 -27.86475754 50.91166687 -21.067966461 -22.77364349 50.91166687
		 -28.99757004 -14.84403992 50.91166687 -34.088691711 -4.85215712 50.91166687 -35.84296799 6.22392702 50.91166687
		 -34.088691711 17.30001259 50.91166687 -28.99757385 27.29189682 50.91166687 -19.9094162 33.62688828 53.61804199
		 -10.46700001 38.43803787 53.61804199 -19.9094162 33.62688828 69.29330444 -10.46700001 38.43803787 69.29330444
		 -2.3316082e-007 40.095848083 53.61804199 -2.3316082e-007 40.095848083 69.29330444
		 10.46700001 38.43803787 53.61804199 10.46700001 38.43803787 69.29330444 19.90941811 33.6268959 53.61804199
		 19.90941811 33.6268959 69.29330444 27.40296555 26.13334656 53.61804199 27.40296555 26.13334656 69.29330444
		 32.21411514 16.69092751 53.61804199 32.21411514 16.69092751 69.29330444 33.87190628 6.2239275 53.61804199
		 33.87190628 6.2239275 69.29330444 32.21409988 -4.24306536 53.61804199 32.21409988 -4.24306536 69.29330444
		 27.40295029 -13.68548203 53.61804199 27.40294838 -13.68548203 69.29330444 19.90940666 -21.17902184 53.61804199
		 19.90940666 -21.17902184 69.29330444 10.46699333 -25.99017334 53.61804199 10.46699333 -25.99017334 69.29330444;
	setAttr ".vt[830:885]" -1.2426223e-006 -27.64798355 53.61804199 -1.2426223e-006 -27.64798355 69.29330444
		 -10.4669981 -25.99017715 53.61804199 -10.46699715 -25.99017715 69.29330444 -19.90940857 -21.17902565 53.61804199
		 -19.90940857 -21.17902565 69.29330444 -27.4029541 -13.68548203 53.61804199 -27.4029541 -13.68548203 69.29330444
		 -32.21410751 -4.24306917 53.61804199 -32.21410751 -4.24306917 69.29330444 -33.87191391 6.2239275 53.61804199
		 -33.87191391 6.2239275 69.29330444 -32.21410751 16.69092369 53.61804199 -32.21410751 16.69092369 69.29330444
		 -27.40295982 26.13334274 53.61804199 -27.40295792 26.13334274 69.29330444 -22.88863945 37.72743988 73.25275421
		 -12.03327179 43.25852966 73.25275421 -22.88863945 37.72743988 74.92861938 -12.03327179 43.25852966 74.92861938
		 3.6641225e-007 45.16441345 73.25275421 3.6641225e-007 45.16441345 74.92861938 12.033272743 43.25852966 73.25275421
		 12.033272743 43.25852966 74.92861938 22.88864708 37.72745514 73.25275421 22.88864708 37.72745514 74.92861938
		 31.50352287 29.11257172 73.25275421 31.50352287 29.11257172 74.92861938 37.034610748 18.25720024 73.25275421
		 37.034610748 18.25720024 74.92861938 38.94046783 6.22392654 73.25275421 38.94046783 6.22392654 74.92861938
		 37.034584045 -5.80933809 73.25275421 37.034584045 -5.80933809 74.92861938 31.5035038 -16.664711 73.25275421
		 31.5035038 -16.664711 74.92861938 22.88863182 -25.27957916 73.25275421 22.88863182 -25.27957916 74.92861938
		 12.033265114 -30.81066132 73.25275421 12.033265114 -30.81066132 74.92861938 -7.9410415e-007 -32.7165451 73.25275421
		 -7.9410415e-007 -32.7165451 74.92861938 -12.033268929 -30.81066513 73.25275421 -12.033268929 -30.81066513 74.92861938
		 -22.88863564 -25.27958298 73.25275421 -22.88863564 -25.27958298 74.92861938 -31.50350952 -16.664711 73.25275421
		 -31.50350952 -16.664711 74.92861938 -37.034591675 -5.80934191 73.25275421 -37.034591675 -5.80934191 74.92861938
		 -38.94047928 6.22392654 73.25275421 -38.94047928 6.22392654 74.92861938 -37.034591675 18.25719643 73.25275421
		 -37.034591675 18.25719643 74.92861938 -31.50351143 29.11256599 73.25275421 -31.50351143 29.11256599 74.92861938;
	setAttr -s 1788 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1;
	setAttr ".ed[498:663]" 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1
		 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1
		 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1
		 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1
		 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1
		 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1
		 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1
		 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1
		 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1
		 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1
		 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1
		 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1
		 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1;
	setAttr ".ed[664:829]" 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1
		 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1
		 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1
		 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1
		 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1
		 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1
		 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1
		 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1
		 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1
		 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1
		 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1
		 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1
		 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1
		 378 398 1 379 399 1 380 0 1 381 1 1 382 2 1 383 3 1 384 4 1 385 5 1 386 6 1 387 7 1
		 388 8 1 389 9 1 390 10 1 391 11 1 392 12 1 393 13 1 394 14 1 395 15 1 396 16 1 397 17 1
		 398 18 1 399 19 1 400 401 1 401 402 1 402 403 1 403 404 1 404 405 1 405 406 1 406 407 1
		 407 408 1 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1 415 416 1
		 416 417 1 417 418 1 418 419 0 419 400 1 420 421 1 421 422 1 422 423 1 423 424 1 424 425 1
		 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1;
	setAttr ".ed[830:995]" 430 431 1 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1
		 436 437 1 437 438 1 438 439 0 439 420 1 440 441 1 441 442 1 442 443 1 443 444 1 444 445 1
		 445 446 1 446 447 1 447 448 1 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1
		 454 455 1 455 456 1 456 457 1 457 458 1 458 459 1 459 440 1 460 461 1 461 462 1 462 463 1
		 463 464 1 464 465 1 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1
		 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 460 1 480 481 1
		 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1
		 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1 498 499 1
		 499 480 1 500 501 1 501 502 1 502 503 1 503 504 1 504 505 1 505 506 1 506 507 1 507 508 1
		 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1
		 517 518 1 518 519 1 519 500 1 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 526 1
		 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1 534 535 1
		 535 536 1 536 537 1 537 538 1 538 539 1 539 520 1 540 541 0 541 542 0 542 543 0 543 544 0
		 544 545 0 545 546 0 546 547 0 547 548 0 548 549 0 549 550 0 550 551 0 551 552 0 552 553 0
		 553 554 0 554 555 0 555 556 0 556 557 0 557 558 0 558 559 0 559 540 0 560 561 0 561 562 0
		 562 563 0 563 564 0 564 565 0 565 566 0 566 567 0 567 568 0 568 569 0 569 570 0 570 571 0
		 571 572 0 572 573 0 573 574 0 574 575 0 575 576 0 576 577 0 577 578 0 578 579 0 579 560 0
		 580 581 1 581 582 1 582 583 1 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1 588 589 1
		 589 590 1 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1;
	setAttr ".ed[996:1161]" 596 597 1 597 598 1 598 599 1 599 580 1 600 601 1 601 602 1
		 602 603 1 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1
		 611 612 1 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1 619 600 1
		 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 626 1 626 627 1 627 628 1 628 629 1
		 629 630 1 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1 637 638 1
		 638 639 1 639 620 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 646 1 646 647 1
		 647 648 1 648 649 1 649 650 1 650 651 1 651 652 1 652 653 1 653 654 1 654 655 1 655 656 1
		 656 657 1 657 658 1 658 659 1 659 640 1 660 661 1 661 662 1 662 663 1 663 664 1 664 665 1
		 665 666 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1 673 674 1
		 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 660 1 680 681 0 681 682 0 682 683 0
		 683 684 0 684 685 0 685 686 0 686 687 0 687 688 0 688 689 0 689 690 0 690 691 0 691 692 0
		 692 693 0 693 694 0 694 695 0 695 696 0 696 697 0 697 698 0 698 699 0 699 680 0 400 420 1
		 401 421 1 402 422 1 403 423 1 404 424 1 405 425 1 406 426 1 407 427 1 408 428 1 409 429 1
		 410 430 1 411 431 1 412 432 1 413 433 1 414 434 1 415 435 1 416 436 1 417 437 1 418 438 0
		 419 439 0 420 440 1 421 441 1 422 442 1 423 443 1 424 444 1 425 445 1 426 446 1 427 447 1
		 428 448 1 429 449 1 430 450 1 431 451 1 432 452 1 433 453 1 434 454 1 435 455 1 436 456 1
		 437 457 1 438 458 1 439 459 1 440 460 1 441 461 1 442 462 1 443 463 1 444 464 1 445 465 1
		 446 466 1 447 467 1 448 468 1 449 469 1 450 470 1 451 471 1 452 472 1 453 473 1 454 474 1
		 455 475 1 456 476 1 457 477 1 458 478 1 459 479 1 460 480 1 461 481 1;
	setAttr ".ed[1162:1327]" 462 482 1 463 483 1 464 484 1 465 485 1 466 486 1 467 487 1
		 468 488 1 469 489 1 470 490 1 471 491 1 472 492 1 473 493 1 474 494 1 475 495 1 476 496 1
		 477 497 1 478 498 1 479 499 1 480 500 1 481 501 1 482 502 1 483 503 1 484 504 1 485 505 1
		 486 506 1 487 507 1 488 508 1 489 509 1 490 510 1 491 511 1 492 512 1 493 513 1 494 514 1
		 495 515 1 496 516 1 497 517 1 498 518 1 499 519 1 500 520 1 501 521 1 502 522 1 503 523 1
		 504 524 1 505 525 1 506 526 1 507 527 1 508 528 1 509 529 1 510 530 1 511 531 1 512 532 1
		 513 533 1 514 534 1 515 535 1 516 536 1 517 537 1 518 538 1 519 539 1 520 540 1 521 541 1
		 522 542 1 523 543 1 524 544 1 525 545 1 526 546 1 527 547 1 528 548 1 529 549 1 530 550 1
		 531 551 1 532 552 1 533 553 1 534 554 1 535 555 1 536 556 1 537 557 1 538 558 1 539 559 1
		 540 792 1 541 791 1 542 790 1 543 789 1 544 788 1 545 787 1 546 786 1 547 805 1 548 804 1
		 549 803 1 550 802 1 551 801 1 552 800 1 553 799 1 554 798 1 555 797 1 556 796 1 557 795 1
		 558 794 1 559 793 1 560 580 1 561 581 1 562 582 1 563 583 1 564 584 1 565 585 1 566 586 1
		 567 587 1 568 588 1 569 589 1 570 590 1 571 591 1 572 592 1 573 593 1 574 594 1 575 595 1
		 576 596 1 577 597 1 578 598 1 579 599 1 580 600 1 581 601 1 582 602 1 583 603 1 584 604 1
		 585 605 1 586 606 1 587 607 1 588 608 1 589 609 1 590 610 1 591 611 1 592 612 1 593 613 1
		 594 614 1 595 615 1 596 616 1 597 617 1 598 618 1 599 619 1 600 620 1 601 621 1 602 622 1
		 603 623 1 604 624 1 605 625 1 606 626 1 607 627 1 608 628 1 609 629 1 610 630 1 611 631 1
		 612 632 1 613 633 1 614 634 1 615 635 1 616 636 1 617 637 1 618 638 1 619 639 1 620 640 1
		 621 641 1 622 642 1 623 643 1 624 644 1 625 645 1 626 646 1 627 647 1;
	setAttr ".ed[1328:1493]" 628 648 1 629 649 1 630 650 1 631 651 1 632 652 1 633 653 1
		 634 654 1 635 655 1 636 656 1 637 657 1 638 658 1 639 659 1 640 660 1 641 661 1 642 662 1
		 643 663 1 644 664 1 645 665 1 646 666 1 647 667 1 648 668 1 649 669 1 650 670 1 651 671 1
		 652 672 1 653 673 1 654 674 1 655 675 1 656 676 1 657 677 1 658 678 1 659 679 1 660 680 1
		 661 681 1 662 682 1 663 683 1 664 684 1 665 685 1 666 686 1 667 687 1 668 688 1 669 689 1
		 670 690 1 671 691 1 672 692 1 673 693 1 674 694 1 675 695 1 676 696 1 677 697 1 678 698 1
		 679 699 1 700 400 1 700 401 1 700 402 1 700 403 1 700 404 1 700 405 1 700 406 1 700 407 1
		 700 408 1 700 409 1 700 410 1 700 411 1 700 412 1 700 413 1 700 414 1 700 415 1 700 416 1
		 700 417 1 700 418 1 700 419 1 418 701 0 419 702 0 701 702 0 439 703 0 702 703 0 438 704 0
		 704 703 0 701 704 0 680 705 0 681 706 0 705 706 0 706 707 1 708 707 0 705 708 1 682 709 0
		 706 709 0 709 710 1 707 710 0 683 711 0 709 711 0 711 712 1 710 712 0 684 713 0 711 713 0
		 713 714 1 712 714 0 685 715 0 713 715 0 715 716 1 714 716 0 686 717 0 715 717 0 717 718 1
		 716 718 0 687 719 0 717 719 0 719 720 1 718 720 0 688 721 0 719 721 0 721 722 1 720 722 0
		 689 723 0 721 723 0 723 724 1 722 724 0 690 725 0 723 725 0 725 726 1 724 726 0 691 727 0
		 725 727 0 727 728 1 726 728 0 692 729 0 727 729 0 729 730 1 728 730 0 693 731 0 729 731 0
		 731 732 1 730 732 0 694 733 0 731 733 0 733 734 1 732 734 0 695 735 0 733 735 0 735 736 1
		 734 736 0 696 737 0 735 737 0 737 738 1 736 738 0 697 739 0 737 739 0 739 740 1 738 740 0
		 698 741 0 739 741 0 741 742 1 740 742 0 699 743 0 741 743 0 743 744 1 742 744 0 743 705 0
		 744 708 0 708 745 1 707 746 1 745 746 0 746 747 1 745 747 1 710 748 1;
	setAttr ".ed[1494:1659]" 746 748 0 748 747 1 712 749 1 748 749 0 749 747 1 714 750 1
		 749 750 0 750 747 1 716 751 1 750 751 0 751 747 1 718 752 1 751 752 0 752 747 1 720 753 1
		 752 753 0 753 747 1 722 754 1 753 754 0 754 747 1 724 755 1 754 755 0 755 747 1 726 756 1
		 755 756 0 756 747 1 728 757 1 756 757 0 757 747 1 730 758 1 757 758 0 758 747 1 732 759 1
		 758 759 0 759 747 1 734 760 1 759 760 0 760 747 1 736 761 1 760 761 0 761 747 1 738 762 1
		 761 762 0 762 747 1 740 763 1 762 763 0 763 747 1 742 764 1 763 764 0 764 747 1 744 765 1
		 764 765 0 765 747 1 765 745 0 766 767 0 767 768 0 768 769 0 769 770 0 770 771 0 771 772 0
		 772 773 0 773 774 0 774 775 0 775 776 0 776 777 0 777 778 0 778 779 0 779 780 0 780 781 0
		 781 782 0 782 783 0 783 784 0 784 785 0 785 766 0 786 787 0 787 788 0 788 789 0 789 790 0
		 790 791 0 791 792 0 792 793 0 793 794 0 794 795 0 795 796 0 796 797 0 797 798 0 798 799 0
		 799 800 0 800 801 0 801 802 0 802 803 0 803 804 0 804 805 0 805 786 0 786 806 0 787 807 0
		 806 807 0 766 808 0 806 808 1 767 809 0 808 809 0 807 809 1 788 810 0 807 810 0 768 811 0
		 809 811 0 810 811 1 789 812 0 810 812 0 769 813 0 811 813 0 812 813 1 790 814 0 812 814 0
		 770 815 0 813 815 0 814 815 1 791 816 0 814 816 0 771 817 0 815 817 0 816 817 1 792 818 0
		 816 818 0 772 819 0 817 819 0 818 819 1 793 820 0 818 820 0 773 821 0 819 821 0 820 821 1
		 794 822 0 820 822 0 774 823 0 821 823 0 822 823 1 795 824 0 822 824 0 775 825 0 823 825 0
		 824 825 1 796 826 0 824 826 0 776 827 0 825 827 0 826 827 1 797 828 0 826 828 0 777 829 0
		 827 829 0 828 829 1 798 830 0 828 830 0 778 831 0 829 831 0 830 831 1 799 832 0 830 832 0
		 779 833 0 831 833 0 832 833 1 800 834 0 832 834 0 780 835 0 833 835 0;
	setAttr ".ed[1660:1787]" 834 835 1 801 836 0 834 836 0 781 837 0 835 837 0 836 837 1
		 802 838 0 836 838 0 782 839 0 837 839 0 838 839 1 803 840 0 838 840 0 783 841 0 839 841 0
		 840 841 1 804 842 0 840 842 0 784 843 0 841 843 0 842 843 1 805 844 0 842 844 0 785 845 0
		 843 845 0 844 845 1 844 806 0 845 808 0 766 846 0 767 847 0 846 847 0 566 848 0 846 848 1
		 565 849 0 849 848 0 847 849 1 768 850 0 847 850 0 564 851 0 851 849 0 850 851 1 769 852 0
		 850 852 0 563 853 0 853 851 0 852 853 1 770 854 0 852 854 0 562 855 0 855 853 0 854 855 1
		 771 856 0 854 856 0 561 857 0 857 855 0 856 857 1 772 858 0 856 858 0 560 859 0 859 857 0
		 858 859 1 773 860 0 858 860 0 579 861 0 861 859 0 860 861 1 774 862 0 860 862 0 578 863 0
		 863 861 0 862 863 1 775 864 0 862 864 0 577 865 0 865 863 0 864 865 1 776 866 0 864 866 0
		 576 867 0 867 865 0 866 867 1 777 868 0 866 868 0 575 869 0 869 867 0 868 869 1 778 870 0
		 868 870 0 574 871 0 871 869 0 870 871 1 779 872 0 870 872 0 573 873 0 873 871 0 872 873 1
		 780 874 0 872 874 0 572 875 0 875 873 0 874 875 1 781 876 0 874 876 0 571 877 0 877 875 0
		 876 877 1 782 878 0 876 878 0 570 879 0 879 877 0 878 879 1 783 880 0 878 880 0 569 881 0
		 881 879 0 880 881 1 784 882 0 880 882 0 568 883 0 883 881 0 882 883 1 785 884 0 882 884 0
		 567 885 0 885 883 0 884 885 1 884 846 0 848 885 0;
	setAttr -s 904 -ch 3576 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -1 400 20 -402
		mu 0 4 1 0 21 22
		f 4 -2 401 21 -403
		mu 0 4 2 1 22 23
		f 4 -3 402 22 -404
		mu 0 4 3 2 23 24
		f 4 -4 403 23 -405
		mu 0 4 4 3 24 25
		f 4 -5 404 24 -406
		mu 0 4 5 4 25 26
		f 4 -6 405 25 -407
		mu 0 4 6 5 26 27
		f 4 -7 406 26 -408
		mu 0 4 7 6 27 28
		f 4 -8 407 27 -409
		mu 0 4 8 7 28 29
		f 4 -9 408 28 -410
		mu 0 4 9 8 29 30
		f 4 -10 409 29 -411
		mu 0 4 10 9 30 31
		f 4 -11 410 30 -412
		mu 0 4 11 10 31 32
		f 4 -12 411 31 -413
		mu 0 4 12 11 32 33
		f 4 -13 412 32 -414
		mu 0 4 13 12 33 34
		f 4 -14 413 33 -415
		mu 0 4 14 13 34 35
		f 4 -15 414 34 -416
		mu 0 4 15 14 35 36
		f 4 -16 415 35 -417
		mu 0 4 16 15 36 37
		f 4 -17 416 36 -418
		mu 0 4 17 16 37 38
		f 4 -18 417 37 -419
		mu 0 4 18 17 38 39
		f 4 -19 418 38 -420
		mu 0 4 19 18 39 40
		f 4 -20 419 39 -401
		mu 0 4 20 19 40 41
		f 4 -21 420 40 -422
		mu 0 4 22 21 42 43
		f 4 -22 421 41 -423
		mu 0 4 23 22 43 44
		f 4 -23 422 42 -424
		mu 0 4 24 23 44 45
		f 4 -24 423 43 -425
		mu 0 4 25 24 45 46
		f 4 -25 424 44 -426
		mu 0 4 26 25 46 47
		f 4 -26 425 45 -427
		mu 0 4 27 26 47 48
		f 4 -27 426 46 -428
		mu 0 4 28 27 48 49
		f 4 -28 427 47 -429
		mu 0 4 29 28 49 50
		f 4 -29 428 48 -430
		mu 0 4 30 29 50 51
		f 4 -30 429 49 -431
		mu 0 4 31 30 51 52
		f 4 -31 430 50 -432
		mu 0 4 32 31 52 53
		f 4 -32 431 51 -433
		mu 0 4 33 32 53 54
		f 4 -33 432 52 -434
		mu 0 4 34 33 54 55
		f 4 -34 433 53 -435
		mu 0 4 35 34 55 56
		f 4 -35 434 54 -436
		mu 0 4 36 35 56 57
		f 4 -36 435 55 -437
		mu 0 4 37 36 57 58
		f 4 -37 436 56 -438
		mu 0 4 38 37 58 59
		f 4 -38 437 57 -439
		mu 0 4 39 38 59 60
		f 4 -39 438 58 -440
		mu 0 4 40 39 60 61
		f 4 -40 439 59 -421
		mu 0 4 41 40 61 62
		f 4 -41 440 60 -442
		mu 0 4 43 42 63 64
		f 4 -42 441 61 -443
		mu 0 4 44 43 64 65
		f 4 -43 442 62 -444
		mu 0 4 45 44 65 66
		f 4 -44 443 63 -445
		mu 0 4 46 45 66 67
		f 4 -45 444 64 -446
		mu 0 4 47 46 67 68
		f 4 -46 445 65 -447
		mu 0 4 48 47 68 69
		f 4 -47 446 66 -448
		mu 0 4 49 48 69 70
		f 4 -48 447 67 -449
		mu 0 4 50 49 70 71
		f 4 -49 448 68 -450
		mu 0 4 51 50 71 72
		f 4 -50 449 69 -451
		mu 0 4 52 51 72 73
		f 4 -51 450 70 -452
		mu 0 4 53 52 73 74
		f 4 -52 451 71 -453
		mu 0 4 54 53 74 75
		f 4 -53 452 72 -454
		mu 0 4 55 54 75 76
		f 4 -54 453 73 -455
		mu 0 4 56 55 76 77
		f 4 -55 454 74 -456
		mu 0 4 57 56 77 78
		f 4 -56 455 75 -457
		mu 0 4 58 57 78 79
		f 4 -57 456 76 -458
		mu 0 4 59 58 79 80
		f 4 -58 457 77 -459
		mu 0 4 60 59 80 81
		f 4 -59 458 78 -460
		mu 0 4 61 60 81 82
		f 4 -60 459 79 -441
		mu 0 4 62 61 82 83
		f 4 -61 460 80 -462
		mu 0 4 64 63 84 85
		f 4 -62 461 81 -463
		mu 0 4 65 64 85 86
		f 4 -63 462 82 -464
		mu 0 4 66 65 86 87
		f 4 -64 463 83 -465
		mu 0 4 67 66 87 88
		f 4 -65 464 84 -466
		mu 0 4 68 67 88 89
		f 4 -66 465 85 -467
		mu 0 4 69 68 89 90
		f 4 -67 466 86 -468
		mu 0 4 70 69 90 91
		f 4 -68 467 87 -469
		mu 0 4 71 70 91 92
		f 4 -69 468 88 -470
		mu 0 4 72 71 92 93
		f 4 -70 469 89 -471
		mu 0 4 73 72 93 94
		f 4 -71 470 90 -472
		mu 0 4 74 73 94 95
		f 4 -72 471 91 -473
		mu 0 4 75 74 95 96
		f 4 -73 472 92 -474
		mu 0 4 76 75 96 97
		f 4 -74 473 93 -475
		mu 0 4 77 76 97 98
		f 4 -75 474 94 -476
		mu 0 4 78 77 98 99
		f 4 -76 475 95 -477
		mu 0 4 79 78 99 100
		f 4 -77 476 96 -478
		mu 0 4 80 79 100 101
		f 4 -78 477 97 -479
		mu 0 4 81 80 101 102
		f 4 -79 478 98 -480
		mu 0 4 82 81 102 103
		f 4 -80 479 99 -461
		mu 0 4 83 82 103 104
		f 4 -81 480 100 -482
		mu 0 4 85 84 105 106
		f 4 -82 481 101 -483
		mu 0 4 86 85 106 107
		f 4 -83 482 102 -484
		mu 0 4 87 86 107 108
		f 4 -84 483 103 -485
		mu 0 4 88 87 108 109
		f 4 -85 484 104 -486
		mu 0 4 89 88 109 110
		f 4 -86 485 105 -487
		mu 0 4 90 89 110 111
		f 4 -87 486 106 -488
		mu 0 4 91 90 111 112
		f 4 -88 487 107 -489
		mu 0 4 92 91 112 113
		f 4 -89 488 108 -490
		mu 0 4 93 92 113 114
		f 4 -90 489 109 -491
		mu 0 4 94 93 114 115
		f 4 -91 490 110 -492
		mu 0 4 95 94 115 116
		f 4 -92 491 111 -493
		mu 0 4 96 95 116 117
		f 4 -93 492 112 -494
		mu 0 4 97 96 117 118
		f 4 -94 493 113 -495
		mu 0 4 98 97 118 119
		f 4 -95 494 114 -496
		mu 0 4 99 98 119 120
		f 4 -96 495 115 -497
		mu 0 4 100 99 120 121
		f 4 -97 496 116 -498
		mu 0 4 101 100 121 122
		f 4 -98 497 117 -499
		mu 0 4 102 101 122 123
		f 4 -99 498 118 -500
		mu 0 4 103 102 123 124
		f 4 -100 499 119 -481
		mu 0 4 104 103 124 125
		f 4 -101 500 120 -502
		mu 0 4 106 105 126 127
		f 4 -102 501 121 -503
		mu 0 4 107 106 127 128
		f 4 -103 502 122 -504
		mu 0 4 108 107 128 129
		f 4 -104 503 123 -505
		mu 0 4 109 108 129 130
		f 4 -105 504 124 -506
		mu 0 4 110 109 130 131
		f 4 -106 505 125 -507
		mu 0 4 111 110 131 132
		f 4 -107 506 126 -508
		mu 0 4 112 111 132 133
		f 4 -108 507 127 -509
		mu 0 4 113 112 133 134
		f 4 -109 508 128 -510
		mu 0 4 114 113 134 135
		f 4 -110 509 129 -511
		mu 0 4 115 114 135 136
		f 4 -111 510 130 -512
		mu 0 4 116 115 136 137
		f 4 -112 511 131 -513
		mu 0 4 117 116 137 138
		f 4 -113 512 132 -514
		mu 0 4 118 117 138 139
		f 4 -114 513 133 -515
		mu 0 4 119 118 139 140
		f 4 -115 514 134 -516
		mu 0 4 120 119 140 141
		f 4 -116 515 135 -517
		mu 0 4 121 120 141 142
		f 4 -117 516 136 -518
		mu 0 4 122 121 142 143
		f 4 -118 517 137 -519
		mu 0 4 123 122 143 144
		f 4 -119 518 138 -520
		mu 0 4 124 123 144 145
		f 4 -120 519 139 -501
		mu 0 4 125 124 145 146
		f 4 -121 520 140 -522
		mu 0 4 127 126 147 148
		f 4 -122 521 141 -523
		mu 0 4 128 127 148 149
		f 4 -123 522 142 -524
		mu 0 4 129 128 149 150
		f 4 -124 523 143 -525
		mu 0 4 130 129 150 151
		f 4 -125 524 144 -526
		mu 0 4 131 130 151 152
		f 4 -126 525 145 -527
		mu 0 4 132 131 152 153
		f 4 -127 526 146 -528
		mu 0 4 133 132 153 154
		f 4 -128 527 147 -529
		mu 0 4 134 133 154 155
		f 4 -129 528 148 -530
		mu 0 4 135 134 155 156
		f 4 -130 529 149 -531
		mu 0 4 136 135 156 157
		f 4 -131 530 150 -532
		mu 0 4 137 136 157 158
		f 4 -132 531 151 -533
		mu 0 4 138 137 158 159
		f 4 -133 532 152 -534
		mu 0 4 139 138 159 160
		f 4 -134 533 153 -535
		mu 0 4 140 139 160 161
		f 4 -135 534 154 -536
		mu 0 4 141 140 161 162
		f 4 -136 535 155 -537
		mu 0 4 142 141 162 163
		f 4 -137 536 156 -538
		mu 0 4 143 142 163 164
		f 4 -138 537 157 -539
		mu 0 4 144 143 164 165
		f 4 -139 538 158 -540
		mu 0 4 145 144 165 166
		f 4 -140 539 159 -521
		mu 0 4 146 145 166 167
		f 4 -141 540 160 -542
		mu 0 4 148 147 168 169
		f 4 -142 541 161 -543
		mu 0 4 149 148 169 170
		f 4 -143 542 162 -544
		mu 0 4 150 149 170 171
		f 4 -144 543 163 -545
		mu 0 4 151 150 171 172
		f 4 -145 544 164 -546
		mu 0 4 152 151 172 173
		f 4 -146 545 165 -547
		mu 0 4 153 152 173 174
		f 4 -147 546 166 -548
		mu 0 4 154 153 174 175
		f 4 -148 547 167 -549
		mu 0 4 155 154 175 176
		f 4 -149 548 168 -550
		mu 0 4 156 155 176 177
		f 4 -150 549 169 -551
		mu 0 4 157 156 177 178
		f 4 -151 550 170 -552
		mu 0 4 158 157 178 179
		f 4 -152 551 171 -553
		mu 0 4 159 158 179 180
		f 4 -153 552 172 -554
		mu 0 4 160 159 180 181
		f 4 -154 553 173 -555
		mu 0 4 161 160 181 182
		f 4 -155 554 174 -556
		mu 0 4 162 161 182 183
		f 4 -156 555 175 -557
		mu 0 4 163 162 183 184
		f 4 -157 556 176 -558
		mu 0 4 164 163 184 185
		f 4 -158 557 177 -559
		mu 0 4 165 164 185 186
		f 4 -159 558 178 -560
		mu 0 4 166 165 186 187
		f 4 -160 559 179 -541
		mu 0 4 167 166 187 188
		f 4 -161 560 180 -562
		mu 0 4 169 168 189 190
		f 4 -162 561 181 -563
		mu 0 4 170 169 190 191
		f 4 -163 562 182 -564
		mu 0 4 171 170 191 192
		f 4 -164 563 183 -565
		mu 0 4 172 171 192 193
		f 4 -165 564 184 -566
		mu 0 4 173 172 193 194
		f 4 -166 565 185 -567
		mu 0 4 174 173 194 195
		f 4 -167 566 186 -568
		mu 0 4 175 174 195 196
		f 4 -168 567 187 -569
		mu 0 4 176 175 196 197
		f 4 -169 568 188 -570
		mu 0 4 177 176 197 198
		f 4 -170 569 189 -571
		mu 0 4 178 177 198 199
		f 4 -171 570 190 -572
		mu 0 4 179 178 199 200
		f 4 -172 571 191 -573
		mu 0 4 180 179 200 201
		f 4 -173 572 192 -574
		mu 0 4 181 180 201 202
		f 4 -174 573 193 -575
		mu 0 4 182 181 202 203
		f 4 -175 574 194 -576
		mu 0 4 183 182 203 204
		f 4 -176 575 195 -577
		mu 0 4 184 183 204 205
		f 4 -177 576 196 -578
		mu 0 4 185 184 205 206
		f 4 -178 577 197 -579
		mu 0 4 186 185 206 207
		f 4 -179 578 198 -580
		mu 0 4 187 186 207 208
		f 4 -180 579 199 -561
		mu 0 4 188 187 208 209
		f 4 -181 580 200 -582
		mu 0 4 190 189 210 211
		f 4 -182 581 201 -583
		mu 0 4 191 190 211 212
		f 4 -183 582 202 -584
		mu 0 4 192 191 212 213
		f 4 -184 583 203 -585
		mu 0 4 193 192 213 214
		f 4 -185 584 204 -586
		mu 0 4 194 193 214 215
		f 4 -186 585 205 -587
		mu 0 4 195 194 215 216
		f 4 -187 586 206 -588
		mu 0 4 196 195 216 217
		f 4 -188 587 207 -589
		mu 0 4 197 196 217 218
		f 4 -189 588 208 -590
		mu 0 4 198 197 218 219
		f 4 -190 589 209 -591
		mu 0 4 199 198 219 220
		f 4 -191 590 210 -592
		mu 0 4 200 199 220 221
		f 4 -192 591 211 -593
		mu 0 4 201 200 221 222
		f 4 -193 592 212 -594
		mu 0 4 202 201 222 223
		f 4 -194 593 213 -595
		mu 0 4 203 202 223 224
		f 4 -195 594 214 -596
		mu 0 4 204 203 224 225
		f 4 -196 595 215 -597
		mu 0 4 205 204 225 226
		f 4 -197 596 216 -598
		mu 0 4 206 205 226 227
		f 4 -198 597 217 -599
		mu 0 4 207 206 227 228
		f 4 -199 598 218 -600
		mu 0 4 208 207 228 229
		f 4 -200 599 219 -581
		mu 0 4 209 208 229 230
		f 4 -201 600 220 -602
		mu 0 4 211 210 231 232
		f 4 -202 601 221 -603
		mu 0 4 212 211 232 233
		f 4 -203 602 222 -604
		mu 0 4 213 212 233 234
		f 4 -204 603 223 -605
		mu 0 4 214 213 234 235
		f 4 -205 604 224 -606
		mu 0 4 215 214 235 236
		f 4 -206 605 225 -607
		mu 0 4 216 215 236 237
		f 4 -207 606 226 -608
		mu 0 4 217 216 237 238
		f 4 -208 607 227 -609
		mu 0 4 218 217 238 239
		f 4 -209 608 228 -610
		mu 0 4 219 218 239 240
		f 4 -210 609 229 -611
		mu 0 4 220 219 240 241
		f 4 -211 610 230 -612
		mu 0 4 221 220 241 242
		f 4 -212 611 231 -613
		mu 0 4 222 221 242 243
		f 4 -213 612 232 -614
		mu 0 4 223 222 243 244
		f 4 -214 613 233 -615
		mu 0 4 224 223 244 245
		f 4 -215 614 234 -616
		mu 0 4 225 224 245 246
		f 4 -216 615 235 -617
		mu 0 4 226 225 246 247
		f 4 -217 616 236 -618
		mu 0 4 227 226 247 248
		f 4 -218 617 237 -619
		mu 0 4 228 227 248 249
		f 4 -219 618 238 -620
		mu 0 4 229 228 249 250
		f 4 -220 619 239 -601
		mu 0 4 230 229 250 251
		f 4 -221 620 240 -622
		mu 0 4 232 231 252 253
		f 4 -222 621 241 -623
		mu 0 4 233 232 253 254
		f 4 -223 622 242 -624
		mu 0 4 234 233 254 255
		f 4 -224 623 243 -625
		mu 0 4 235 234 255 256
		f 4 -225 624 244 -626
		mu 0 4 236 235 256 257
		f 4 -226 625 245 -627
		mu 0 4 237 236 257 258
		f 4 -227 626 246 -628
		mu 0 4 238 237 258 259
		f 4 -228 627 247 -629
		mu 0 4 239 238 259 260
		f 4 -229 628 248 -630
		mu 0 4 240 239 260 261
		f 4 -230 629 249 -631
		mu 0 4 241 240 261 262
		f 4 -231 630 250 -632
		mu 0 4 242 241 262 263
		f 4 -232 631 251 -633
		mu 0 4 243 242 263 264
		f 4 -233 632 252 -634
		mu 0 4 244 243 264 265
		f 4 -234 633 253 -635
		mu 0 4 245 244 265 266
		f 4 -235 634 254 -636
		mu 0 4 246 245 266 267
		f 4 -236 635 255 -637
		mu 0 4 247 246 267 268
		f 4 -237 636 256 -638
		mu 0 4 248 247 268 269
		f 4 -238 637 257 -639
		mu 0 4 249 248 269 270
		f 4 -239 638 258 -640
		mu 0 4 250 249 270 271
		f 4 -240 639 259 -621
		mu 0 4 251 250 271 272
		f 4 -241 640 260 -642
		mu 0 4 253 252 273 274
		f 4 -242 641 261 -643
		mu 0 4 254 253 274 275
		f 4 -243 642 262 -644
		mu 0 4 255 254 275 276
		f 4 -244 643 263 -645
		mu 0 4 256 255 276 277
		f 4 -245 644 264 -646
		mu 0 4 257 256 277 278
		f 4 -246 645 265 -647
		mu 0 4 258 257 278 279
		f 4 -247 646 266 -648
		mu 0 4 259 258 279 280
		f 4 -248 647 267 -649
		mu 0 4 260 259 280 281
		f 4 -249 648 268 -650
		mu 0 4 261 260 281 282
		f 4 -250 649 269 -651
		mu 0 4 262 261 282 283
		f 4 -251 650 270 -652
		mu 0 4 263 262 283 284
		f 4 -252 651 271 -653
		mu 0 4 264 263 284 285
		f 4 -253 652 272 -654
		mu 0 4 265 264 285 286
		f 4 -254 653 273 -655
		mu 0 4 266 265 286 287
		f 4 -255 654 274 -656
		mu 0 4 267 266 287 288
		f 4 -256 655 275 -657
		mu 0 4 268 267 288 289
		f 4 -257 656 276 -658
		mu 0 4 269 268 289 290
		f 4 -258 657 277 -659
		mu 0 4 270 269 290 291
		f 4 -259 658 278 -660
		mu 0 4 271 270 291 292
		f 4 -260 659 279 -641
		mu 0 4 272 271 292 293
		f 4 -261 660 280 -662
		mu 0 4 274 273 294 295
		f 4 -262 661 281 -663
		mu 0 4 275 274 295 296
		f 4 -263 662 282 -664
		mu 0 4 276 275 296 297
		f 4 -264 663 283 -665
		mu 0 4 277 276 297 298
		f 4 -265 664 284 -666
		mu 0 4 278 277 298 299
		f 4 -266 665 285 -667
		mu 0 4 279 278 299 300
		f 4 -267 666 286 -668
		mu 0 4 280 279 300 301
		f 4 -268 667 287 -669
		mu 0 4 281 280 301 302
		f 4 -269 668 288 -670
		mu 0 4 282 281 302 303
		f 4 -270 669 289 -671
		mu 0 4 283 282 303 304
		f 4 -271 670 290 -672
		mu 0 4 284 283 304 305
		f 4 -272 671 291 -673
		mu 0 4 285 284 305 306
		f 4 -273 672 292 -674
		mu 0 4 286 285 306 307
		f 4 -274 673 293 -675
		mu 0 4 287 286 307 308
		f 4 -275 674 294 -676
		mu 0 4 288 287 308 309
		f 4 -276 675 295 -677
		mu 0 4 289 288 309 310
		f 4 -277 676 296 -678
		mu 0 4 290 289 310 311
		f 4 -278 677 297 -679
		mu 0 4 291 290 311 312
		f 4 -279 678 298 -680
		mu 0 4 292 291 312 313
		f 4 -280 679 299 -661
		mu 0 4 293 292 313 314
		f 4 -281 680 300 -682
		mu 0 4 295 294 315 316
		f 4 -282 681 301 -683
		mu 0 4 296 295 316 317
		f 4 -283 682 302 -684
		mu 0 4 297 296 317 318
		f 4 -284 683 303 -685
		mu 0 4 298 297 318 319
		f 4 -285 684 304 -686
		mu 0 4 299 298 319 320
		f 4 -286 685 305 -687
		mu 0 4 300 299 320 321
		f 4 -287 686 306 -688
		mu 0 4 301 300 321 322
		f 4 -288 687 307 -689
		mu 0 4 302 301 322 323
		f 4 -289 688 308 -690
		mu 0 4 303 302 323 324
		f 4 -290 689 309 -691
		mu 0 4 304 303 324 325
		f 4 -291 690 310 -692
		mu 0 4 305 304 325 326
		f 4 -292 691 311 -693
		mu 0 4 306 305 326 327
		f 4 -293 692 312 -694
		mu 0 4 307 306 327 328
		f 4 -294 693 313 -695
		mu 0 4 308 307 328 329
		f 4 -295 694 314 -696
		mu 0 4 309 308 329 330
		f 4 -296 695 315 -697
		mu 0 4 310 309 330 331
		f 4 -297 696 316 -698
		mu 0 4 311 310 331 332
		f 4 -298 697 317 -699
		mu 0 4 312 311 332 333
		f 4 -299 698 318 -700
		mu 0 4 313 312 333 334
		f 4 -300 699 319 -681
		mu 0 4 314 313 334 335
		f 4 -301 700 320 -702
		mu 0 4 316 315 336 337
		f 4 -302 701 321 -703
		mu 0 4 317 316 337 338
		f 4 -303 702 322 -704
		mu 0 4 318 317 338 339
		f 4 -304 703 323 -705
		mu 0 4 319 318 339 340
		f 4 -305 704 324 -706
		mu 0 4 320 319 340 341
		f 4 -306 705 325 -707
		mu 0 4 321 320 341 342
		f 4 -307 706 326 -708
		mu 0 4 322 321 342 343
		f 4 -308 707 327 -709
		mu 0 4 323 322 343 344
		f 4 -309 708 328 -710
		mu 0 4 324 323 344 345
		f 4 -310 709 329 -711
		mu 0 4 325 324 345 346
		f 4 -311 710 330 -712
		mu 0 4 326 325 346 347
		f 4 -312 711 331 -713
		mu 0 4 327 326 347 348
		f 4 -313 712 332 -714
		mu 0 4 328 327 348 349
		f 4 -314 713 333 -715
		mu 0 4 329 328 349 350
		f 4 -315 714 334 -716
		mu 0 4 330 329 350 351
		f 4 -316 715 335 -717
		mu 0 4 331 330 351 352
		f 4 -317 716 336 -718
		mu 0 4 332 331 352 353
		f 4 -318 717 337 -719
		mu 0 4 333 332 353 354
		f 4 -319 718 338 -720
		mu 0 4 334 333 354 355
		f 4 -320 719 339 -701
		mu 0 4 335 334 355 356
		f 4 -321 720 340 -722
		mu 0 4 337 336 357 358
		f 4 -322 721 341 -723
		mu 0 4 338 337 358 359
		f 4 -323 722 342 -724
		mu 0 4 339 338 359 360
		f 4 -324 723 343 -725
		mu 0 4 340 339 360 361
		f 4 -325 724 344 -726
		mu 0 4 341 340 361 362
		f 4 -326 725 345 -727
		mu 0 4 342 341 362 363
		f 4 -327 726 346 -728
		mu 0 4 343 342 363 364
		f 4 -328 727 347 -729
		mu 0 4 344 343 364 365
		f 4 -329 728 348 -730
		mu 0 4 345 344 365 366
		f 4 -330 729 349 -731
		mu 0 4 346 345 366 367
		f 4 -331 730 350 -732
		mu 0 4 347 346 367 368
		f 4 -332 731 351 -733
		mu 0 4 348 347 368 369
		f 4 -333 732 352 -734
		mu 0 4 349 348 369 370
		f 4 -334 733 353 -735
		mu 0 4 350 349 370 371
		f 4 -335 734 354 -736
		mu 0 4 351 350 371 372
		f 4 -336 735 355 -737
		mu 0 4 352 351 372 373
		f 4 -337 736 356 -738
		mu 0 4 353 352 373 374
		f 4 -338 737 357 -739
		mu 0 4 354 353 374 375
		f 4 -339 738 358 -740
		mu 0 4 355 354 375 376
		f 4 -340 739 359 -721
		mu 0 4 356 355 376 377
		f 4 -341 740 360 -742
		mu 0 4 358 357 378 379
		f 4 -342 741 361 -743
		mu 0 4 359 358 379 380
		f 4 -343 742 362 -744
		mu 0 4 360 359 380 381
		f 4 -344 743 363 -745
		mu 0 4 361 360 381 382
		f 4 -345 744 364 -746
		mu 0 4 362 361 382 383
		f 4 -346 745 365 -747
		mu 0 4 363 362 383 384
		f 4 -347 746 366 -748
		mu 0 4 364 363 384 385
		f 4 -348 747 367 -749
		mu 0 4 365 364 385 386
		f 4 -349 748 368 -750
		mu 0 4 366 365 386 387
		f 4 -350 749 369 -751
		mu 0 4 367 366 387 388
		f 4 -351 750 370 -752
		mu 0 4 368 367 388 389
		f 4 -352 751 371 -753
		mu 0 4 369 368 389 390
		f 4 -353 752 372 -754
		mu 0 4 370 369 390 391
		f 4 -354 753 373 -755
		mu 0 4 371 370 391 392
		f 4 -355 754 374 -756
		mu 0 4 372 371 392 393
		f 4 -356 755 375 -757
		mu 0 4 373 372 393 394
		f 4 -357 756 376 -758
		mu 0 4 374 373 394 395
		f 4 -358 757 377 -759
		mu 0 4 375 374 395 396
		f 4 -359 758 378 -760
		mu 0 4 376 375 396 397
		f 4 -360 759 379 -741
		mu 0 4 377 376 397 398
		f 4 -361 760 380 -762
		mu 0 4 379 378 399 400
		f 4 -362 761 381 -763
		mu 0 4 380 379 400 401
		f 4 -363 762 382 -764
		mu 0 4 381 380 401 402
		f 4 -364 763 383 -765
		mu 0 4 382 381 402 403
		f 4 -365 764 384 -766
		mu 0 4 383 382 403 404
		f 4 -366 765 385 -767
		mu 0 4 384 383 404 405
		f 4 -367 766 386 -768
		mu 0 4 385 384 405 406
		f 4 -368 767 387 -769
		mu 0 4 386 385 406 407
		f 4 -369 768 388 -770
		mu 0 4 387 386 407 408
		f 4 -370 769 389 -771
		mu 0 4 388 387 408 409
		f 4 -371 770 390 -772
		mu 0 4 389 388 409 410
		f 4 -372 771 391 -773
		mu 0 4 390 389 410 411
		f 4 -373 772 392 -774
		mu 0 4 391 390 411 412
		f 4 -374 773 393 -775
		mu 0 4 392 391 412 413
		f 4 -375 774 394 -776
		mu 0 4 393 392 413 414
		f 4 -376 775 395 -777
		mu 0 4 394 393 414 415
		f 4 -377 776 396 -778
		mu 0 4 395 394 415 416
		f 4 -378 777 397 -779
		mu 0 4 396 395 416 417
		f 4 -379 778 398 -780
		mu 0 4 397 396 417 418
		f 4 -380 779 399 -761
		mu 0 4 398 397 418 419
		f 4 -381 780 0 -782
		mu 0 4 400 399 420 421
		f 4 -382 781 1 -783
		mu 0 4 401 400 421 422
		f 4 -383 782 2 -784
		mu 0 4 402 401 422 423
		f 4 -384 783 3 -785
		mu 0 4 403 402 423 424
		f 4 -385 784 4 -786
		mu 0 4 404 403 424 425
		f 4 -386 785 5 -787
		mu 0 4 405 404 425 426
		f 4 -387 786 6 -788
		mu 0 4 406 405 426 427
		f 4 -388 787 7 -789
		mu 0 4 407 406 427 428
		f 4 -389 788 8 -790
		mu 0 4 408 407 428 429
		f 4 -390 789 9 -791
		mu 0 4 409 408 429 430
		f 4 -391 790 10 -792
		mu 0 4 410 409 430 431
		f 4 -392 791 11 -793
		mu 0 4 411 410 431 432
		f 4 -393 792 12 -794
		mu 0 4 412 411 432 433
		f 4 -394 793 13 -795
		mu 0 4 413 412 433 434
		f 4 -395 794 14 -796
		mu 0 4 414 413 434 435
		f 4 -396 795 15 -797
		mu 0 4 415 414 435 436
		f 4 -397 796 16 -798
		mu 0 4 416 415 436 437
		f 4 -398 797 17 -799
		mu 0 4 417 416 437 438
		f 4 -399 798 18 -800
		mu 0 4 418 417 438 439
		f 4 -400 799 19 -781
		mu 0 4 419 418 439 440
		f 4 800 1101 -821 -1101
		mu 0 4 441 442 443 444
		f 4 801 1102 -822 -1102
		mu 0 4 442 445 446 443
		f 4 802 1103 -823 -1103
		mu 0 4 445 447 448 446
		f 4 803 1104 -824 -1104
		mu 0 4 447 449 450 448
		f 4 804 1105 -825 -1105
		mu 0 4 449 451 452 450
		f 4 805 1106 -826 -1106
		mu 0 4 451 453 454 452
		f 4 806 1107 -827 -1107
		mu 0 4 453 455 456 454
		f 4 807 1108 -828 -1108
		mu 0 4 455 457 458 456
		f 4 808 1109 -829 -1109
		mu 0 4 457 459 460 458
		f 4 809 1110 -830 -1110
		mu 0 4 459 461 462 460
		f 4 810 1111 -831 -1111
		mu 0 4 461 463 464 462
		f 4 811 1112 -832 -1112
		mu 0 4 463 465 466 464
		f 4 812 1113 -833 -1113
		mu 0 4 465 467 468 466
		f 4 813 1114 -834 -1114
		mu 0 4 467 469 470 468
		f 4 814 1115 -835 -1115
		mu 0 4 469 471 472 470
		f 4 815 1116 -836 -1116
		mu 0 4 471 473 474 472
		f 4 816 1117 -837 -1117
		mu 0 4 473 475 476 474
		f 4 817 1118 -838 -1118
		mu 0 4 475 477 478 476
		f 4 1402 1404 -1407 -1408
		mu 0 4 479 480 481 482
		f 4 819 1100 -840 -1120
		mu 0 4 483 441 444 484
		f 4 820 1121 -841 -1121
		mu 0 4 444 443 485 486
		f 4 821 1122 -842 -1122
		mu 0 4 443 446 487 485
		f 4 822 1123 -843 -1123
		mu 0 4 446 448 488 487
		f 4 823 1124 -844 -1124
		mu 0 4 448 450 489 488
		f 4 824 1125 -845 -1125
		mu 0 4 450 452 490 489
		f 4 825 1126 -846 -1126
		mu 0 4 452 454 491 490
		f 4 826 1127 -847 -1127
		mu 0 4 454 456 492 491
		f 4 827 1128 -848 -1128
		mu 0 4 456 458 493 492
		f 4 828 1129 -849 -1129
		mu 0 4 458 460 494 493
		f 4 829 1130 -850 -1130
		mu 0 4 460 462 495 494
		f 4 830 1131 -851 -1131
		mu 0 4 462 464 496 495
		f 4 831 1132 -852 -1132
		mu 0 4 464 466 497 496
		f 4 832 1133 -853 -1133
		mu 0 4 466 468 498 497
		f 4 833 1134 -854 -1134
		mu 0 4 468 470 499 498
		f 4 834 1135 -855 -1135
		mu 0 4 470 472 500 499
		f 4 835 1136 -856 -1136
		mu 0 4 472 474 501 500
		f 4 836 1137 -857 -1137
		mu 0 4 474 476 502 501
		f 4 837 1138 -858 -1138
		mu 0 4 476 478 503 502
		f 4 838 1139 -859 -1139
		mu 0 4 478 484 504 503
		f 4 839 1120 -860 -1140
		mu 0 4 484 444 486 504
		f 4 840 1141 -861 -1141
		mu 0 4 486 485 505 506
		f 4 841 1142 -862 -1142
		mu 0 4 485 487 507 505
		f 4 842 1143 -863 -1143
		mu 0 4 487 488 508 507
		f 4 843 1144 -864 -1144
		mu 0 4 488 489 509 508
		f 4 844 1145 -865 -1145
		mu 0 4 489 490 510 509
		f 4 845 1146 -866 -1146
		mu 0 4 490 491 511 510
		f 4 846 1147 -867 -1147
		mu 0 4 491 492 512 511
		f 4 847 1148 -868 -1148
		mu 0 4 492 493 513 512
		f 4 848 1149 -869 -1149
		mu 0 4 493 494 514 513
		f 4 849 1150 -870 -1150
		mu 0 4 494 495 515 514
		f 4 850 1151 -871 -1151
		mu 0 4 495 496 516 515
		f 4 851 1152 -872 -1152
		mu 0 4 496 497 517 516
		f 4 852 1153 -873 -1153
		mu 0 4 497 498 518 517
		f 4 853 1154 -874 -1154
		mu 0 4 498 499 519 518
		f 4 854 1155 -875 -1155
		mu 0 4 499 500 520 519
		f 4 855 1156 -876 -1156
		mu 0 4 500 501 521 520
		f 4 856 1157 -877 -1157
		mu 0 4 501 502 522 521
		f 4 857 1158 -878 -1158
		mu 0 4 502 503 523 522
		f 4 858 1159 -879 -1159
		mu 0 4 503 504 524 523
		f 4 859 1140 -880 -1160
		mu 0 4 504 486 506 524
		f 4 860 1161 -881 -1161
		mu 0 4 506 505 525 526
		f 4 861 1162 -882 -1162
		mu 0 4 505 507 527 525
		f 4 862 1163 -883 -1163
		mu 0 4 507 508 528 527
		f 4 863 1164 -884 -1164
		mu 0 4 508 509 529 528
		f 4 864 1165 -885 -1165
		mu 0 4 509 510 530 529
		f 4 865 1166 -886 -1166
		mu 0 4 510 511 531 530
		f 4 866 1167 -887 -1167
		mu 0 4 511 512 532 531
		f 4 867 1168 -888 -1168
		mu 0 4 512 513 533 532
		f 4 868 1169 -889 -1169
		mu 0 4 513 514 534 533
		f 4 869 1170 -890 -1170
		mu 0 4 514 515 535 534
		f 4 870 1171 -891 -1171
		mu 0 4 515 516 536 535
		f 4 871 1172 -892 -1172
		mu 0 4 516 517 537 536
		f 4 872 1173 -893 -1173
		mu 0 4 517 518 538 537
		f 4 873 1174 -894 -1174
		mu 0 4 518 519 539 538
		f 4 874 1175 -895 -1175
		mu 0 4 519 520 540 539
		f 4 875 1176 -896 -1176
		mu 0 4 520 521 541 540
		f 4 876 1177 -897 -1177
		mu 0 4 521 522 542 541
		f 4 877 1178 -898 -1178
		mu 0 4 522 523 543 542
		f 4 878 1179 -899 -1179
		mu 0 4 523 524 544 543
		f 4 879 1160 -900 -1180
		mu 0 4 524 506 526 544
		f 4 880 1181 -901 -1181
		mu 0 4 526 525 545 546
		f 4 881 1182 -902 -1182
		mu 0 4 525 527 547 545
		f 4 882 1183 -903 -1183
		mu 0 4 527 528 548 547
		f 4 883 1184 -904 -1184
		mu 0 4 528 529 549 548
		f 4 884 1185 -905 -1185
		mu 0 4 529 530 550 549
		f 4 885 1186 -906 -1186
		mu 0 4 530 531 551 550
		f 4 886 1187 -907 -1187
		mu 0 4 531 532 552 551
		f 4 887 1188 -908 -1188
		mu 0 4 532 533 553 552
		f 4 888 1189 -909 -1189
		mu 0 4 533 534 554 553
		f 4 889 1190 -910 -1190
		mu 0 4 534 535 555 554
		f 4 890 1191 -911 -1191
		mu 0 4 535 536 556 555
		f 4 891 1192 -912 -1192
		mu 0 4 536 537 557 556
		f 4 892 1193 -913 -1193
		mu 0 4 537 538 558 557
		f 4 893 1194 -914 -1194
		mu 0 4 538 539 559 558
		f 4 894 1195 -915 -1195
		mu 0 4 539 540 560 559
		f 4 895 1196 -916 -1196
		mu 0 4 540 541 561 560
		f 4 896 1197 -917 -1197
		mu 0 4 541 542 562 561
		f 4 897 1198 -918 -1198
		mu 0 4 542 543 563 562
		f 4 898 1199 -919 -1199
		mu 0 4 543 544 564 563
		f 4 899 1180 -920 -1200
		mu 0 4 544 526 546 564;
	setAttr ".fc[500:903]"
		f 4 900 1201 -921 -1201
		mu 0 4 546 545 565 566
		f 4 901 1202 -922 -1202
		mu 0 4 545 547 567 565
		f 4 902 1203 -923 -1203
		mu 0 4 547 548 568 567
		f 4 903 1204 -924 -1204
		mu 0 4 548 549 569 568
		f 4 904 1205 -925 -1205
		mu 0 4 549 550 570 569
		f 4 905 1206 -926 -1206
		mu 0 4 550 551 571 570
		f 4 906 1207 -927 -1207
		mu 0 4 551 552 572 571
		f 4 907 1208 -928 -1208
		mu 0 4 552 553 573 572
		f 4 908 1209 -929 -1209
		mu 0 4 553 554 574 573
		f 4 909 1210 -930 -1210
		mu 0 4 554 555 575 574
		f 4 910 1211 -931 -1211
		mu 0 4 555 556 576 575
		f 4 911 1212 -932 -1212
		mu 0 4 556 557 577 576
		f 4 912 1213 -933 -1213
		mu 0 4 557 558 578 577
		f 4 913 1214 -934 -1214
		mu 0 4 558 559 579 578
		f 4 914 1215 -935 -1215
		mu 0 4 559 560 580 579
		f 4 915 1216 -936 -1216
		mu 0 4 560 561 581 580
		f 4 916 1217 -937 -1217
		mu 0 4 561 562 582 581
		f 4 917 1218 -938 -1218
		mu 0 4 562 563 583 582
		f 4 918 1219 -939 -1219
		mu 0 4 563 564 584 583
		f 4 919 1200 -940 -1220
		mu 0 4 564 546 566 584
		f 4 920 1221 -941 -1221
		mu 0 4 566 565 585 586
		f 4 921 1222 -942 -1222
		mu 0 4 565 567 587 585
		f 4 922 1223 -943 -1223
		mu 0 4 567 568 588 587
		f 4 923 1224 -944 -1224
		mu 0 4 568 569 589 588
		f 4 924 1225 -945 -1225
		mu 0 4 569 570 590 589
		f 4 925 1226 -946 -1226
		mu 0 4 570 571 591 590
		f 4 926 1227 -947 -1227
		mu 0 4 571 572 592 591
		f 4 927 1228 -948 -1228
		mu 0 4 572 573 593 592
		f 4 928 1229 -949 -1229
		mu 0 4 573 574 594 593
		f 4 929 1230 -950 -1230
		mu 0 4 574 575 595 594
		f 4 930 1231 -951 -1231
		mu 0 4 575 576 596 595
		f 4 931 1232 -952 -1232
		mu 0 4 576 577 597 596
		f 4 932 1233 -953 -1233
		mu 0 4 577 578 598 597
		f 4 933 1234 -954 -1234
		mu 0 4 578 579 599 598
		f 4 934 1235 -955 -1235
		mu 0 4 579 580 600 599
		f 4 935 1236 -956 -1236
		mu 0 4 580 581 601 600
		f 4 936 1237 -957 -1237
		mu 0 4 581 582 602 601
		f 4 937 1238 -958 -1238
		mu 0 4 582 583 603 602
		f 4 938 1239 -959 -1239
		mu 0 4 583 584 604 603
		f 4 939 1220 -960 -1240
		mu 0 4 584 566 586 604
		f 4 940 1241 1573 -1241
		mu 0 4 605 606 607 608
		f 4 941 1242 1572 -1242
		mu 0 4 606 609 610 607
		f 4 942 1243 1571 -1243
		mu 0 4 609 611 612 610
		f 4 943 1244 1570 -1244
		mu 0 4 611 613 614 612
		f 4 944 1245 1569 -1245
		mu 0 4 613 615 616 614
		f 4 945 1246 1568 -1246
		mu 0 4 615 617 618 616
		f 4 946 1247 1587 -1247
		mu 0 4 617 619 620 618
		f 4 947 1248 1586 -1248
		mu 0 4 619 621 622 620
		f 4 948 1249 1585 -1249
		mu 0 4 621 623 624 622
		f 4 949 1250 1584 -1250
		mu 0 4 623 625 626 624
		f 4 950 1251 1583 -1251
		mu 0 4 625 627 628 626
		f 4 951 1252 1582 -1252
		mu 0 4 627 629 630 628
		f 4 952 1253 1581 -1253
		mu 0 4 629 631 632 630
		f 4 953 1254 1580 -1254
		mu 0 4 631 633 634 632
		f 4 954 1255 1579 -1255
		mu 0 4 633 635 636 634
		f 4 955 1256 1578 -1256
		mu 0 4 635 637 638 636
		f 4 956 1257 1577 -1257
		mu 0 4 637 639 640 638
		f 4 957 1258 1576 -1258
		mu 0 4 639 641 642 640
		f 4 958 1259 1575 -1259
		mu 0 4 641 643 644 642
		f 4 959 1240 1574 -1260
		mu 0 4 643 645 646 644
		f 4 960 1261 -981 -1261
		mu 0 4 647 648 649 650
		f 4 961 1262 -982 -1262
		mu 0 4 648 651 652 649
		f 4 962 1263 -983 -1263
		mu 0 4 651 653 654 652
		f 4 963 1264 -984 -1264
		mu 0 4 653 655 656 654
		f 4 964 1265 -985 -1265
		mu 0 4 655 657 658 656
		f 4 965 1266 -986 -1266
		mu 0 4 657 659 660 658
		f 4 966 1267 -987 -1267
		mu 0 4 659 661 662 660
		f 4 967 1268 -988 -1268
		mu 0 4 661 663 664 662
		f 4 968 1269 -989 -1269
		mu 0 4 663 665 666 664
		f 4 969 1270 -990 -1270
		mu 0 4 665 667 668 666
		f 4 970 1271 -991 -1271
		mu 0 4 667 669 670 668
		f 4 971 1272 -992 -1272
		mu 0 4 669 671 672 670
		f 4 972 1273 -993 -1273
		mu 0 4 671 673 674 672
		f 4 973 1274 -994 -1274
		mu 0 4 673 675 676 674
		f 4 974 1275 -995 -1275
		mu 0 4 675 677 678 676
		f 4 975 1276 -996 -1276
		mu 0 4 677 679 680 678
		f 4 976 1277 -997 -1277
		mu 0 4 679 681 682 680
		f 4 977 1278 -998 -1278
		mu 0 4 681 683 684 682
		f 4 978 1279 -999 -1279
		mu 0 4 683 685 686 684
		f 4 979 1260 -1000 -1280
		mu 0 4 685 647 650 686
		f 4 980 1281 -1001 -1281
		mu 0 4 650 649 687 688
		f 4 981 1282 -1002 -1282
		mu 0 4 649 652 689 687
		f 4 982 1283 -1003 -1283
		mu 0 4 652 654 690 689
		f 4 983 1284 -1004 -1284
		mu 0 4 654 656 691 690
		f 4 984 1285 -1005 -1285
		mu 0 4 656 658 692 691
		f 4 985 1286 -1006 -1286
		mu 0 4 658 660 693 692
		f 4 986 1287 -1007 -1287
		mu 0 4 660 662 694 693
		f 4 987 1288 -1008 -1288
		mu 0 4 662 664 695 694
		f 4 988 1289 -1009 -1289
		mu 0 4 664 666 696 695
		f 4 989 1290 -1010 -1290
		mu 0 4 666 668 697 696
		f 4 990 1291 -1011 -1291
		mu 0 4 668 670 698 697
		f 4 991 1292 -1012 -1292
		mu 0 4 670 672 699 698
		f 4 992 1293 -1013 -1293
		mu 0 4 672 674 700 699
		f 4 993 1294 -1014 -1294
		mu 0 4 674 676 701 700
		f 4 994 1295 -1015 -1295
		mu 0 4 676 678 702 701
		f 4 995 1296 -1016 -1296
		mu 0 4 678 680 703 702
		f 4 996 1297 -1017 -1297
		mu 0 4 680 682 704 703
		f 4 997 1298 -1018 -1298
		mu 0 4 682 684 705 704
		f 4 998 1299 -1019 -1299
		mu 0 4 684 686 706 705
		f 4 999 1280 -1020 -1300
		mu 0 4 686 650 688 706
		f 4 1000 1301 -1021 -1301
		mu 0 4 688 687 707 708
		f 4 1001 1302 -1022 -1302
		mu 0 4 687 689 709 707
		f 4 1002 1303 -1023 -1303
		mu 0 4 689 690 710 709
		f 4 1003 1304 -1024 -1304
		mu 0 4 690 691 711 710
		f 4 1004 1305 -1025 -1305
		mu 0 4 691 692 712 711
		f 4 1005 1306 -1026 -1306
		mu 0 4 692 693 713 712
		f 4 1006 1307 -1027 -1307
		mu 0 4 693 694 714 713
		f 4 1007 1308 -1028 -1308
		mu 0 4 694 695 715 714
		f 4 1008 1309 -1029 -1309
		mu 0 4 695 696 716 715
		f 4 1009 1310 -1030 -1310
		mu 0 4 696 697 717 716
		f 4 1010 1311 -1031 -1311
		mu 0 4 697 698 718 717
		f 4 1011 1312 -1032 -1312
		mu 0 4 698 699 719 718
		f 4 1012 1313 -1033 -1313
		mu 0 4 699 700 720 719
		f 4 1013 1314 -1034 -1314
		mu 0 4 700 701 721 720
		f 4 1014 1315 -1035 -1315
		mu 0 4 701 702 722 721
		f 4 1015 1316 -1036 -1316
		mu 0 4 702 703 723 722
		f 4 1016 1317 -1037 -1317
		mu 0 4 703 704 724 723
		f 4 1017 1318 -1038 -1318
		mu 0 4 704 705 725 724
		f 4 1018 1319 -1039 -1319
		mu 0 4 705 706 726 725
		f 4 1019 1300 -1040 -1320
		mu 0 4 706 688 708 726
		f 4 1020 1321 -1041 -1321
		mu 0 4 708 707 727 728
		f 4 1021 1322 -1042 -1322
		mu 0 4 707 709 729 727
		f 4 1022 1323 -1043 -1323
		mu 0 4 709 710 730 729
		f 4 1023 1324 -1044 -1324
		mu 0 4 710 711 731 730
		f 4 1024 1325 -1045 -1325
		mu 0 4 711 712 732 731
		f 4 1025 1326 -1046 -1326
		mu 0 4 712 713 733 732
		f 4 1026 1327 -1047 -1327
		mu 0 4 713 714 734 733
		f 4 1027 1328 -1048 -1328
		mu 0 4 714 715 735 734
		f 4 1028 1329 -1049 -1329
		mu 0 4 715 716 736 735
		f 4 1029 1330 -1050 -1330
		mu 0 4 716 717 737 736
		f 4 1030 1331 -1051 -1331
		mu 0 4 717 718 738 737
		f 4 1031 1332 -1052 -1332
		mu 0 4 718 719 739 738
		f 4 1032 1333 -1053 -1333
		mu 0 4 719 720 740 739
		f 4 1033 1334 -1054 -1334
		mu 0 4 720 721 741 740
		f 4 1034 1335 -1055 -1335
		mu 0 4 721 722 742 741
		f 4 1035 1336 -1056 -1336
		mu 0 4 722 723 743 742
		f 4 1036 1337 -1057 -1337
		mu 0 4 723 724 744 743
		f 4 1037 1338 -1058 -1338
		mu 0 4 724 725 745 744
		f 4 1038 1339 -1059 -1339
		mu 0 4 725 726 746 745
		f 4 1039 1320 -1060 -1340
		mu 0 4 726 708 728 746
		f 4 1040 1341 -1061 -1341
		mu 0 4 728 727 747 748
		f 4 1041 1342 -1062 -1342
		mu 0 4 727 729 749 747
		f 4 1042 1343 -1063 -1343
		mu 0 4 729 730 750 749
		f 4 1043 1344 -1064 -1344
		mu 0 4 730 731 751 750
		f 4 1044 1345 -1065 -1345
		mu 0 4 731 732 752 751
		f 4 1045 1346 -1066 -1346
		mu 0 4 732 733 753 752
		f 4 1046 1347 -1067 -1347
		mu 0 4 733 734 754 753
		f 4 1047 1348 -1068 -1348
		mu 0 4 734 735 755 754
		f 4 1048 1349 -1069 -1349
		mu 0 4 735 736 756 755
		f 4 1049 1350 -1070 -1350
		mu 0 4 736 737 757 756
		f 4 1050 1351 -1071 -1351
		mu 0 4 737 738 758 757
		f 4 1051 1352 -1072 -1352
		mu 0 4 738 739 759 758
		f 4 1052 1353 -1073 -1353
		mu 0 4 739 740 760 759
		f 4 1053 1354 -1074 -1354
		mu 0 4 740 741 761 760
		f 4 1054 1355 -1075 -1355
		mu 0 4 741 742 762 761
		f 4 1055 1356 -1076 -1356
		mu 0 4 742 743 763 762
		f 4 1056 1357 -1077 -1357
		mu 0 4 743 744 764 763
		f 4 1057 1358 -1078 -1358
		mu 0 4 744 745 765 764
		f 4 1058 1359 -1079 -1359
		mu 0 4 745 746 766 765
		f 4 1059 1340 -1080 -1360
		mu 0 4 746 728 748 766
		f 4 1060 1361 -1081 -1361
		mu 0 4 748 747 767 768
		f 4 1061 1362 -1082 -1362
		mu 0 4 747 749 769 767
		f 4 1062 1363 -1083 -1363
		mu 0 4 749 750 770 769
		f 4 1063 1364 -1084 -1364
		mu 0 4 750 751 771 770
		f 4 1064 1365 -1085 -1365
		mu 0 4 751 752 772 771
		f 4 1065 1366 -1086 -1366
		mu 0 4 752 753 773 772
		f 4 1066 1367 -1087 -1367
		mu 0 4 753 754 774 773
		f 4 1067 1368 -1088 -1368
		mu 0 4 754 755 775 774
		f 4 1068 1369 -1089 -1369
		mu 0 4 755 756 776 775
		f 4 1069 1370 -1090 -1370
		mu 0 4 756 757 777 776
		f 4 1070 1371 -1091 -1371
		mu 0 4 757 758 778 777
		f 4 1071 1372 -1092 -1372
		mu 0 4 758 759 779 778
		f 4 1072 1373 -1093 -1373
		mu 0 4 759 760 780 779
		f 4 1073 1374 -1094 -1374
		mu 0 4 760 761 781 780
		f 4 1074 1375 -1095 -1375
		mu 0 4 761 762 782 781
		f 4 1075 1376 -1096 -1376
		mu 0 4 762 763 783 782
		f 4 1076 1377 -1097 -1377
		mu 0 4 763 764 784 783
		f 4 1077 1378 -1098 -1378
		mu 0 4 764 765 785 784
		f 4 1078 1379 -1099 -1379
		mu 0 4 765 766 786 785
		f 4 1079 1360 -1100 -1380
		mu 0 4 766 748 768 786
		f 4 1410 1411 -1413 -1414
		mu 0 4 787 788 789 790
		f 4 1415 1416 -1418 -1412
		mu 0 4 788 791 792 789
		f 4 1419 1420 -1422 -1417
		mu 0 4 791 793 794 792
		f 4 1423 1424 -1426 -1421
		mu 0 4 793 795 796 794
		f 4 1427 1428 -1430 -1425
		mu 0 4 795 797 798 796
		f 4 1431 1432 -1434 -1429
		mu 0 4 797 799 800 798
		f 4 1435 1436 -1438 -1433
		mu 0 4 799 801 802 800
		f 4 1439 1440 -1442 -1437
		mu 0 4 801 803 804 802
		f 4 1443 1444 -1446 -1441
		mu 0 4 803 805 806 804
		f 4 1447 1448 -1450 -1445
		mu 0 4 805 807 808 806
		f 4 1451 1452 -1454 -1449
		mu 0 4 807 809 810 808
		f 4 1455 1456 -1458 -1453
		mu 0 4 809 811 812 810
		f 4 1459 1460 -1462 -1457
		mu 0 4 811 813 814 812
		f 4 1463 1464 -1466 -1461
		mu 0 4 813 815 816 814
		f 4 1467 1468 -1470 -1465
		mu 0 4 815 817 818 816
		f 4 1471 1472 -1474 -1469
		mu 0 4 817 819 820 818
		f 4 1475 1476 -1478 -1473
		mu 0 4 819 821 822 820
		f 4 1479 1480 -1482 -1477
		mu 0 4 821 823 824 822
		f 4 1483 1484 -1486 -1481
		mu 0 4 823 825 826 824
		f 4 1486 1413 -1488 -1485
		mu 0 4 825 787 790 826
		f 3 -801 -1381 1381
		mu 0 3 442 441 827
		f 3 -802 -1382 1382
		mu 0 3 445 442 827
		f 3 -803 -1383 1383
		mu 0 3 447 445 827
		f 3 -804 -1384 1384
		mu 0 3 449 447 827
		f 3 -805 -1385 1385
		mu 0 3 451 449 827
		f 3 -806 -1386 1386
		mu 0 3 453 451 827
		f 3 -807 -1387 1387
		mu 0 3 455 453 827
		f 3 -808 -1388 1388
		mu 0 3 457 455 827
		f 3 -809 -1389 1389
		mu 0 3 459 457 827
		f 3 -810 -1390 1390
		mu 0 3 461 459 827
		f 3 -811 -1391 1391
		mu 0 3 463 461 827
		f 3 -812 -1392 1392
		mu 0 3 465 463 827
		f 3 -813 -1393 1393
		mu 0 3 467 465 827
		f 3 -814 -1394 1394
		mu 0 3 469 467 827
		f 3 -815 -1395 1395
		mu 0 3 471 469 827
		f 3 -816 -1396 1396
		mu 0 3 473 471 827
		f 3 -817 -1397 1397
		mu 0 3 475 473 827
		f 3 -818 -1398 1398
		mu 0 3 477 475 827
		f 3 -819 -1399 1399
		mu 0 3 483 477 827
		f 3 -820 -1400 1380
		mu 0 3 441 483 827
		f 3 1490 1491 -1493
		mu 0 3 828 829 830
		f 3 1494 1495 -1492
		mu 0 3 829 831 830
		f 3 1497 1498 -1496
		mu 0 3 831 832 830
		f 3 1500 1501 -1499
		mu 0 3 832 833 830
		f 3 1503 1504 -1502
		mu 0 3 833 834 830
		f 3 1506 1507 -1505
		mu 0 3 834 835 830
		f 3 1509 1510 -1508
		mu 0 3 835 836 830
		f 3 1512 1513 -1511
		mu 0 3 836 837 830
		f 3 1515 1516 -1514
		mu 0 3 837 838 830
		f 3 1518 1519 -1517
		mu 0 3 838 839 830
		f 3 1521 1522 -1520
		mu 0 3 839 840 830
		f 3 1524 1525 -1523
		mu 0 3 840 841 830
		f 3 1527 1528 -1526
		mu 0 3 841 842 830
		f 3 1530 1531 -1529
		mu 0 3 842 843 830
		f 3 1533 1534 -1532
		mu 0 3 843 844 830
		f 3 1536 1537 -1535
		mu 0 3 844 845 830
		f 3 1539 1540 -1538
		mu 0 3 845 846 830
		f 3 1542 1543 -1541
		mu 0 3 846 847 830
		f 3 1545 1546 -1544
		mu 0 3 847 848 830
		f 3 1547 1492 -1547
		mu 0 3 848 828 830
		f 4 818 1401 -1403 -1401
		mu 0 4 477 483 480 479
		f 4 1119 1403 -1405 -1402
		mu 0 4 483 484 481 480
		f 4 -839 1405 1406 -1404
		mu 0 4 484 478 482 481
		f 4 -1119 1400 1407 -1406
		mu 0 4 478 477 479 482
		f 4 1080 1409 -1411 -1409
		mu 0 4 768 767 788 787
		f 4 1081 1414 -1416 -1410
		mu 0 4 767 769 791 788
		f 4 1082 1418 -1420 -1415
		mu 0 4 769 770 793 791
		f 4 1083 1422 -1424 -1419
		mu 0 4 770 771 795 793
		f 4 1084 1426 -1428 -1423
		mu 0 4 771 772 797 795
		f 4 1085 1430 -1432 -1427
		mu 0 4 772 773 799 797
		f 4 1086 1434 -1436 -1431
		mu 0 4 773 774 801 799
		f 4 1087 1438 -1440 -1435
		mu 0 4 774 775 803 801
		f 4 1088 1442 -1444 -1439
		mu 0 4 775 776 805 803
		f 4 1089 1446 -1448 -1443
		mu 0 4 776 777 807 805
		f 4 1090 1450 -1452 -1447
		mu 0 4 777 778 809 807
		f 4 1091 1454 -1456 -1451
		mu 0 4 778 779 811 809
		f 4 1092 1458 -1460 -1455
		mu 0 4 779 780 813 811
		f 4 1093 1462 -1464 -1459
		mu 0 4 780 781 815 813
		f 4 1094 1466 -1468 -1463
		mu 0 4 781 782 817 815
		f 4 1095 1470 -1472 -1467
		mu 0 4 782 783 819 817
		f 4 1096 1474 -1476 -1471
		mu 0 4 783 784 821 819
		f 4 1097 1478 -1480 -1475
		mu 0 4 784 785 823 821
		f 4 1098 1482 -1484 -1479
		mu 0 4 785 786 825 823
		f 4 1099 1408 -1487 -1483
		mu 0 4 786 768 787 825
		f 4 1412 1489 -1491 -1489
		mu 0 4 790 789 829 828
		f 4 1417 1493 -1495 -1490
		mu 0 4 789 792 831 829
		f 4 1421 1496 -1498 -1494
		mu 0 4 792 794 832 831
		f 4 1425 1499 -1501 -1497
		mu 0 4 794 796 833 832
		f 4 1429 1502 -1504 -1500
		mu 0 4 796 798 834 833
		f 4 1433 1505 -1507 -1503
		mu 0 4 798 800 835 834
		f 4 1437 1508 -1510 -1506
		mu 0 4 800 802 836 835
		f 4 1441 1511 -1513 -1509
		mu 0 4 802 804 837 836
		f 4 1445 1514 -1516 -1512
		mu 0 4 804 806 838 837
		f 4 1449 1517 -1519 -1515
		mu 0 4 806 808 839 838
		f 4 1453 1520 -1522 -1518
		mu 0 4 808 810 840 839
		f 4 1457 1523 -1525 -1521
		mu 0 4 810 812 841 840
		f 4 1461 1526 -1528 -1524
		mu 0 4 812 814 842 841
		f 4 1465 1529 -1531 -1527
		mu 0 4 814 816 843 842
		f 4 1469 1532 -1534 -1530
		mu 0 4 816 818 844 843
		f 4 1473 1535 -1537 -1533
		mu 0 4 818 820 845 844
		f 4 1477 1538 -1540 -1536
		mu 0 4 820 822 846 845
		f 4 1481 1541 -1543 -1539
		mu 0 4 822 824 847 846
		f 4 1485 1544 -1546 -1542
		mu 0 4 824 826 848 847
		f 4 1487 1488 -1548 -1545
		mu 0 4 826 790 828 848
		f 4 -1691 1692 -1695 -1696
		mu 0 4 849 850 851 852
		f 4 -1698 1695 -1700 -1701
		mu 0 4 853 849 852 854
		f 4 -1703 1700 -1705 -1706
		mu 0 4 855 853 854 856
		f 4 -1708 1705 -1710 -1711
		mu 0 4 857 855 856 858
		f 4 -1713 1710 -1715 -1716
		mu 0 4 859 857 858 860
		f 4 -1718 1715 -1720 -1721
		mu 0 4 861 859 860 862
		f 4 -1723 1720 -1725 -1726
		mu 0 4 863 864 865 866
		f 4 -1728 1725 -1730 -1731
		mu 0 4 867 863 866 868
		f 4 -1733 1730 -1735 -1736
		mu 0 4 869 867 868 870
		f 4 -1738 1735 -1740 -1741
		mu 0 4 871 869 870 872
		f 4 -1743 1740 -1745 -1746
		mu 0 4 873 871 872 874
		f 4 -1748 1745 -1750 -1751
		mu 0 4 875 873 874 876
		f 4 -1753 1750 -1755 -1756
		mu 0 4 877 875 876 878
		f 4 -1758 1755 -1760 -1761
		mu 0 4 879 877 878 880
		f 4 -1763 1760 -1765 -1766
		mu 0 4 881 879 880 882
		f 4 -1768 1765 -1770 -1771
		mu 0 4 883 881 882 884
		f 4 -1773 1770 -1775 -1776
		mu 0 4 885 883 884 886
		f 4 -1778 1775 -1780 -1781
		mu 0 4 887 885 886 888
		f 4 -1783 1780 -1785 -1786
		mu 0 4 889 887 888 890
		f 4 -1787 1785 -1788 -1693
		mu 0 4 850 889 890 851
		f 4 -1591 1592 1594 -1596
		mu 0 4 891 892 893 894
		f 4 -1598 1595 1599 -1601
		mu 0 4 895 891 894 896
		f 4 -1603 1600 1604 -1606
		mu 0 4 897 895 896 898
		f 4 -1608 1605 1609 -1611
		mu 0 4 899 897 898 900
		f 4 -1613 1610 1614 -1616
		mu 0 4 901 899 900 902
		f 4 -1618 1615 1619 -1621
		mu 0 4 903 901 902 904
		f 4 -1623 1620 1624 -1626
		mu 0 4 905 906 907 908
		f 4 -1628 1625 1629 -1631
		mu 0 4 909 905 908 910
		f 4 -1633 1630 1634 -1636
		mu 0 4 911 909 910 912
		f 4 -1638 1635 1639 -1641
		mu 0 4 913 911 912 914
		f 4 -1643 1640 1644 -1646
		mu 0 4 915 913 914 916
		f 4 -1648 1645 1649 -1651
		mu 0 4 917 915 916 918
		f 4 -1653 1650 1654 -1656
		mu 0 4 919 917 918 920
		f 4 -1658 1655 1659 -1661
		mu 0 4 921 919 920 922
		f 4 -1663 1660 1664 -1666
		mu 0 4 923 921 922 924
		f 4 -1668 1665 1669 -1671
		mu 0 4 925 923 924 926
		f 4 -1673 1670 1674 -1676
		mu 0 4 927 925 926 928
		f 4 -1678 1675 1679 -1681
		mu 0 4 929 927 928 930
		f 4 -1683 1680 1684 -1686
		mu 0 4 931 929 930 932
		f 4 -1687 1685 1687 -1593
		mu 0 4 892 931 932 893
		f 4 -1569 1588 1590 -1590
		mu 0 4 616 618 892 891
		f 4 1548 1593 -1595 -1592
		mu 0 4 933 934 894 893
		f 4 -1570 1589 1597 -1597
		mu 0 4 614 616 891 895
		f 4 1549 1598 -1600 -1594
		mu 0 4 934 935 896 894
		f 4 -1571 1596 1602 -1602
		mu 0 4 612 614 895 897
		f 4 1550 1603 -1605 -1599
		mu 0 4 935 936 898 896
		f 4 -1572 1601 1607 -1607
		mu 0 4 610 612 897 899
		f 4 1551 1608 -1610 -1604
		mu 0 4 936 937 900 898
		f 4 -1573 1606 1612 -1612
		mu 0 4 607 610 899 901
		f 4 1552 1613 -1615 -1609
		mu 0 4 937 938 902 900
		f 4 -1574 1611 1617 -1617
		mu 0 4 608 607 901 903
		f 4 1553 1618 -1620 -1614
		mu 0 4 938 939 904 902
		f 4 -1575 1616 1622 -1622
		mu 0 4 644 646 906 905
		f 4 1554 1623 -1625 -1619
		mu 0 4 940 941 908 907
		f 4 -1576 1621 1627 -1627
		mu 0 4 642 644 905 909
		f 4 1555 1628 -1630 -1624
		mu 0 4 941 942 910 908
		f 4 -1577 1626 1632 -1632
		mu 0 4 640 642 909 911
		f 4 1556 1633 -1635 -1629
		mu 0 4 942 943 912 910
		f 4 -1578 1631 1637 -1637
		mu 0 4 638 640 911 913
		f 4 1557 1638 -1640 -1634
		mu 0 4 943 944 914 912
		f 4 -1579 1636 1642 -1642
		mu 0 4 636 638 913 915
		f 4 1558 1643 -1645 -1639
		mu 0 4 944 945 916 914
		f 4 -1580 1641 1647 -1647
		mu 0 4 634 636 915 917
		f 4 1559 1648 -1650 -1644
		mu 0 4 945 946 918 916
		f 4 -1581 1646 1652 -1652
		mu 0 4 632 634 917 919
		f 4 1560 1653 -1655 -1649
		mu 0 4 946 947 920 918
		f 4 -1582 1651 1657 -1657
		mu 0 4 630 632 919 921
		f 4 1561 1658 -1660 -1654
		mu 0 4 947 948 922 920
		f 4 -1583 1656 1662 -1662
		mu 0 4 628 630 921 923
		f 4 1562 1663 -1665 -1659
		mu 0 4 948 949 924 922
		f 4 -1584 1661 1667 -1667
		mu 0 4 626 628 923 925
		f 4 1563 1668 -1670 -1664
		mu 0 4 949 950 926 924
		f 4 -1585 1666 1672 -1672
		mu 0 4 624 626 925 927
		f 4 1564 1673 -1675 -1669
		mu 0 4 950 951 928 926
		f 4 -1586 1671 1677 -1677
		mu 0 4 622 624 927 929
		f 4 1565 1678 -1680 -1674
		mu 0 4 951 952 930 928
		f 4 -1587 1676 1682 -1682
		mu 0 4 620 622 929 931
		f 4 1566 1683 -1685 -1679
		mu 0 4 952 953 932 930
		f 4 -1588 1681 1686 -1589
		mu 0 4 618 620 931 892
		f 4 1567 1591 -1688 -1684
		mu 0 4 953 933 893 932
		f 4 -1549 1688 1690 -1690
		mu 0 4 934 933 850 849
		f 4 -966 1693 1694 -1692
		mu 0 4 954 955 852 851
		f 4 -1550 1689 1697 -1697
		mu 0 4 935 934 849 853
		f 4 -965 1698 1699 -1694
		mu 0 4 955 956 854 852
		f 4 -1551 1696 1702 -1702
		mu 0 4 936 935 853 855
		f 4 -964 1703 1704 -1699
		mu 0 4 956 957 856 854
		f 4 -1552 1701 1707 -1707
		mu 0 4 937 936 855 857
		f 4 -963 1708 1709 -1704
		mu 0 4 957 958 858 856
		f 4 -1553 1706 1712 -1712
		mu 0 4 938 937 857 859
		f 4 -962 1713 1714 -1709
		mu 0 4 958 959 860 858
		f 4 -1554 1711 1717 -1717
		mu 0 4 939 938 859 861
		f 4 -961 1718 1719 -1714
		mu 0 4 959 960 862 860
		f 4 -1555 1716 1722 -1722
		mu 0 4 941 940 864 863
		f 4 -980 1723 1724 -1719
		mu 0 4 961 962 866 865
		f 4 -1556 1721 1727 -1727
		mu 0 4 942 941 863 867
		f 4 -979 1728 1729 -1724
		mu 0 4 962 963 868 866
		f 4 -1557 1726 1732 -1732
		mu 0 4 943 942 867 869
		f 4 -978 1733 1734 -1729
		mu 0 4 963 964 870 868
		f 4 -1558 1731 1737 -1737
		mu 0 4 944 943 869 871
		f 4 -977 1738 1739 -1734
		mu 0 4 964 965 872 870
		f 4 -1559 1736 1742 -1742
		mu 0 4 945 944 871 873
		f 4 -976 1743 1744 -1739
		mu 0 4 965 966 874 872
		f 4 -1560 1741 1747 -1747
		mu 0 4 946 945 873 875
		f 4 -975 1748 1749 -1744
		mu 0 4 966 967 876 874
		f 4 -1561 1746 1752 -1752
		mu 0 4 947 946 875 877
		f 4 -974 1753 1754 -1749
		mu 0 4 967 968 878 876
		f 4 -1562 1751 1757 -1757
		mu 0 4 948 947 877 879
		f 4 -973 1758 1759 -1754
		mu 0 4 968 969 880 878
		f 4 -1563 1756 1762 -1762
		mu 0 4 949 948 879 881
		f 4 -972 1763 1764 -1759
		mu 0 4 969 970 882 880
		f 4 -1564 1761 1767 -1767
		mu 0 4 950 949 881 883
		f 4 -971 1768 1769 -1764
		mu 0 4 970 971 884 882
		f 4 -1565 1766 1772 -1772
		mu 0 4 951 950 883 885
		f 4 -970 1773 1774 -1769
		mu 0 4 971 972 886 884
		f 4 -1566 1771 1777 -1777
		mu 0 4 952 951 885 887
		f 4 -969 1778 1779 -1774
		mu 0 4 972 973 888 886
		f 4 -1567 1776 1782 -1782
		mu 0 4 953 952 887 889
		f 4 -968 1783 1784 -1779
		mu 0 4 973 974 890 888
		f 4 -1568 1781 1786 -1689
		mu 0 4 933 953 889 850
		f 4 -967 1691 1787 -1784
		mu 0 4 974 954 851 890;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface3" -p "pTorus4";
	rename -uid "C4433B4C-1B40-FBDE-AE7A-31961A889C0D";
	setAttr ".t" -type "double3" 3.2356081260059799 7.584427501186399e-014 78.497016434505099 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr ".rp" -type "double3" -5.7220458984375e-006 6.2239341735839844 69.55462646484375 ;
	setAttr ".sp" -type "double3" -5.7220458984375e-006 6.2239341735839844 69.55462646484375 ;
createNode transform -n "transform26" -p "polySurface3";
	rename -uid "1439857D-1549-3797-BF62-5B9735EC54C2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform26";
	rename -uid "CF7F9AF7-2E4A-D79F-990D-2BABE824927A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:299]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 327 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.6486026 0.89203393 0.62640893
		 0.93559146 0.6106078 0.92411125 0.63002729 0.88599843 0.59184146 0.97015893 0.58036125
		 0.9543578 0.54828387 0.9923526 0.54224843 0.97377729 0.5 1 0.5 0.98046875 0.4517161
		 0.9923526 0.45775157 0.97377729 0.40815854 0.97015893 0.41963872 0.9543578 0.37359107
		 0.93559146 0.3893922 0.92411125 0.3513974 0.89203393 0.36997271 0.88599843 0.34374997
		 0.84375 0.36328122 0.84375 0.3513974 0.79546607 0.36997271 0.80150157 0.37359107
		 0.75190854 0.38939217 0.76338869 0.40815851 0.71734107 0.41963869 0.73314214 0.45171607
		 0.69514734 0.45775157 0.71372271 0.5 0.68749994 0.5 0.70703119 0.54828393 0.69514734
		 0.54224843 0.71372271 0.59184152 0.71734101 0.58036131 0.73314214 0.62640899 0.75190848
		 0.61060786 0.76338869 0.64860266 0.79546607 0.63002735 0.80150157 0.65625 0.84375
		 0.63671875 0.84375 0.59480667 0.91263109 0.61145192 0.87996292 0.56888109 0.93855667
		 0.53621292 0.95520198 0.5 0.9609375 0.46378708 0.95520198 0.43111891 0.93855667 0.4051933
		 0.91263109 0.38854802 0.87996292 0.38281247 0.84375 0.38854802 0.80753708 0.4051933
		 0.77486891 0.43111891 0.74894327 0.46378705 0.73229802 0.5 0.72656244 0.53621292
		 0.73229802 0.56888115 0.74894327 0.59480673 0.77486885 0.61145198 0.80753708 0.6171875
		 0.84375 0.5790056 0.90115094 0.59287661 0.87392747 0.55740088 0.9227556 0.53017741
		 0.93662661 0.5 0.94140625 0.46982256 0.93662661 0.44259909 0.9227556 0.4209944 0.90115094
		 0.40712336 0.87392747 0.40234372 0.84375 0.40712336 0.81357253 0.4209944 0.78634906
		 0.44259906 0.7647444 0.46982256 0.75087333 0.5 0.74609369 0.53017747 0.75087333 0.55740094
		 0.7647444 0.5790056 0.78634906 0.59287667 0.81357253 0.59765625 0.84375 0.56320447
		 0.88967073 0.5743013 0.86789197 0.54592073 0.90695447 0.52414197 0.9180513 0.5 0.921875
		 0.47585803 0.9180513 0.45407927 0.90695447 0.43679553 0.88967073 0.4256987 0.86789197
		 0.421875 0.84375 0.4256987 0.81960803 0.43679553 0.79782927 0.45407927 0.78054553
		 0.47585803 0.7694487 0.5 0.76562494 0.52414197 0.76944864 0.54592073 0.78054553 0.56320453
		 0.79782927 0.57430136 0.81960803 0.578125 0.84375 0.54740334 0.87819052 0.55572599
		 0.86185646 0.53444052 0.89115334 0.51810646 0.89947599 0.5 0.90234375 0.48189354
		 0.89947599 0.46555945 0.89115334 0.45259666 0.87819052 0.44427401 0.86185646 0.44140625
		 0.84375 0.44427401 0.82564354 0.45259663 0.80930948 0.46555945 0.79634666 0.48189354
		 0.78802401 0.5 0.78515625 0.51810646 0.78802401 0.53444058 0.79634666 0.5474034 0.80930942
		 0.55572599 0.82564354 0.55859375 0.84375 0.5316022 0.86671036 0.53715062 0.85582101
		 0.52296036 0.87535226 0.51207095 0.88090062 0.5 0.8828125 0.48792902 0.88090062 0.47703964
		 0.87535226 0.46839777 0.86671036 0.46284935 0.85582101 0.4609375 0.84375 0.46284935
		 0.83167899 0.46839777 0.82078964 0.47703964 0.81214774 0.48792902 0.80659932 0.5
		 0.8046875 0.51207095 0.80659932 0.52296036 0.81214774 0.53160226 0.82078964 0.53715068
		 0.83167899 0.5390625 0.84375 0.53715062 0.85582101 0.5316022 0.86671036 0.51580113
		 0.85523021 0.51857531 0.84978551 0.52296036 0.87535226 0.51148015 0.85955113 0.51207095
		 0.88090062 0.50603551 0.86232531 0.5 0.8828125 0.5 0.86328125 0.48792902 0.88090062
		 0.49396452 0.86232531 0.47703964 0.87535226 0.48851982 0.85955113 0.46839777 0.86671036
		 0.48419887 0.85523021 0.46284935 0.85582101 0.48142466 0.84978551 0.4609375 0.84375
		 0.48046875 0.84375 0.46284935 0.83167899 0.48142466 0.83771449 0.46839777 0.82078964
		 0.48419887 0.83226979 0.47703964 0.81214774 0.48851982 0.82794887 0.48792902 0.80659932
		 0.49396452 0.82517469 0.5 0.8046875 0.5 0.82421875 0.51207095 0.80659932 0.50603551
		 0.82517469 0.52296036 0.81214774 0.51148021 0.82794887 0.53160226 0.82078964 0.51580113
		 0.83226979 0.53715068 0.83167899 0.51857531 0.83771449 0.5390625 0.84375 0.51953125
		 0.84375 0.51857531 0.84978551 0.51580113 0.85523021 0.5 0.83749998 0.51148015 0.85955113
		 0.50603551 0.86232531 0.5 0.86328125 0.49396452 0.86232531 0.48851982 0.85955113
		 0.48419887 0.85523021 0.48142466 0.84978551 0.48046875 0.84375 0.48142466 0.83771449
		 0.48419887 0.83226979 0.48851982 0.82794887 0.49396452 0.82517469 0.5 0.82421875
		 0.50603551 0.82517469 0.51148021 0.82794887 0.51580113 0.83226979 0.51857531 0.83771449
		 0.51953125 0.84375 0.43749994 0.60056871 0.44999993 0.60056871 0.44999993 0.68843985
		 0.43749994 0.68843985 0.42499995 0.60056871 0.42499995 0.68843985 0.41249996 0.60056871
		 0.41249996 0.68843985 0.39999998 0.60056871 0.39999998 0.68843985 0.38749999 0.60056871
		 0.38749999 0.68843985 0.375 0.60056871 0.375 0.68843985 0.61249977 0.60056871 0.62499976
		 0.60056871 0.62499976 0.68843985 0.61249977 0.68843985 0.59999979 0.60056871 0.59999979
		 0.68843985 0.5874998 0.60056871 0.5874998 0.68843985 0.57499981 0.60056871 0.57499981
		 0.68843985 0.56249982 0.60056871 0.56249982 0.68843985 0.54999983 0.60056871 0.54999983
		 0.68843985 0.53749985 0.60056871 0.53749985 0.68843985 0.52499986 0.60056871 0.52499986
		 0.68843985 0.51249987 0.60056871 0.51249987 0.68843985 0.49999988 0.60056871 0.49999988
		 0.68843985 0.48749989 0.60056871 0.48749989 0.68843985 0.4749999 0.60056871 0.4749999
		 0.68843985 0.46249992 0.60056871 0.46249992 0.68843985 0.44999993 0.60056871 0.43749994
		 0.60056871 0.42499995 0.60056871 0.41249996 0.60056871 0.39999998 0.60056871 0.38749999
		 0.60056871 0.375 0.60056871;
	setAttr ".uvst[0].uvsp[250:326]" 0.62499976 0.60056871 0.61249977 0.60056871
		 0.59999979 0.60056871 0.5874998 0.60056871 0.57499981 0.60056871 0.56249982 0.60056871
		 0.54999983 0.60056871 0.53749985 0.60056871 0.52499986 0.60056871 0.51249987 0.60056871
		 0.49999988 0.60056871 0.48749989 0.60056871 0.4749999 0.60056871 0.46249992 0.60056871
		 0.44999993 0.60056871 0.43749994 0.60056871 0.42499995 0.60056871 0.41249996 0.60056871
		 0.39999998 0.60056871 0.38749999 0.60056871 0.375 0.60056871 0.62499976 0.60056871
		 0.61249977 0.60056871 0.59999979 0.60056871 0.5874998 0.60056871 0.57499981 0.60056871
		 0.56249982 0.60056871 0.54999983 0.60056871 0.53749985 0.60056871 0.52499986 0.60056871
		 0.51249987 0.60056871 0.49999988 0.60056871 0.48749989 0.60056871 0.4749999 0.60056871
		 0.46249992 0.60056871 0.44999993 0.68843985 0.43749994 0.68843985 0.42499995 0.68843985
		 0.41249996 0.68843985 0.39999998 0.68843985 0.38749999 0.68843985 0.375 0.68843985
		 0.62499976 0.68843985 0.61249977 0.68843985 0.59999979 0.68843985 0.5874998 0.68843985
		 0.57499981 0.68843985 0.56249982 0.68843985 0.54999983 0.68843985 0.53749985 0.68843985
		 0.52499986 0.68843985 0.51249987 0.68843985 0.49999988 0.68843985 0.48749989 0.68843985
		 0.4749999 0.68843985 0.46249992 0.68843985 0.4749999 0.52612948 0.46249992 0.52612948
		 0.44999993 0.52612948 0.43749994 0.52612948 0.42499995 0.52612948 0.41249996 0.52612948
		 0.39999998 0.52612948 0.38749999 0.52612948 0.62499976 0.52612948 0.375 0.52612948
		 0.61249983 0.52612948 0.59999979 0.52612948 0.58749986 0.52612948 0.57499981 0.52612948
		 0.56249982 0.52612948 0.54999983 0.52612948 0.5374999 0.52612948 0.52499986 0.52612948
		 0.51249987 0.52612948 0.49999988 0.52612948 0.48749989 0.52612948;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 301 ".vt";
	setAttr ".vt[0:165]"  34.088699341 17.3000164 74.86196136 28.99758339 27.29190063 74.86196136
		 21.067974091 35.22151566 74.86196136 11.076088905 40.31262207 74.86196136 0 42.066902161 74.86196136
		 -11.076088905 40.31262207 74.86196136 -21.067970276 35.2215004 74.86196136 -28.99757195 27.29189682 74.86196136
		 -34.088687897 17.30001259 74.86196136 -35.84296799 6.22392702 74.86196136 -34.088687897 -4.85215712 74.86196136
		 -28.99757004 -14.84403992 74.86196136 -21.067966461 -22.77364349 74.86196136 -11.076085091 -27.86475754 74.86196136
		 -1.0682033e-006 -29.61903763 74.86196136 11.07608223 -27.86475372 74.86196136 21.067960739 -22.77363968 74.86196136
		 28.99756432 -14.84403992 74.86196136 34.088680267 -4.85215521 74.86196136 35.84295654 6.22392702 74.86196136
		 29.82761002 15.91550446 72.43449402 25.37288475 24.65840149 72.43449402 18.43447685 31.59681129 72.43449402
		 9.69157791 36.05153656 72.43449402 0 37.58654404 72.43449402 -9.69157791 36.05153656 72.43449402
		 -18.43447304 31.59680176 72.43449402 -25.37287521 24.65839767 72.43449402 -29.82760239 15.91550255 72.43449402
		 -31.36259651 6.22392702 72.43449402 -29.82760239 -3.46764803 72.43449402 -25.37287331 -12.21054459 72.43449402
		 -18.43447113 -19.14894485 72.43449402 -9.69157505 -23.60367393 72.43449402 -9.3467798e-007 -25.13866806 72.43449402
		 9.69157219 -23.60367012 72.43449402 18.43446732 -19.14894485 72.43449402 25.37286758 -12.21054268 72.43449402
		 29.82759666 -3.46764612 72.43449402 31.36258888 6.22392702 72.43449402 25.56652451 14.53099442 69.17363739
		 21.74818611 22.024908066 69.17363739 15.80098057 27.97211266 69.17363739 8.30706596 31.79044914 69.17363739
		 0 33.10615921 69.17363739 -8.30706596 31.79044533 69.17363739 -15.80097771 27.97210884 69.17363739
		 -21.74817657 22.024904251 69.17363739 -25.56651688 14.5309906 69.17363739 -26.88222504 6.22392702 69.17363739
		 -25.56651688 -2.083137035 69.17363739 -21.74817657 -9.57704735 69.17363739 -15.80097294 -15.52424812 69.17363739
		 -8.30706406 -19.34258842 69.17363739 -8.0115257e-007 -20.65829659 69.17363739 8.3070612 -19.34258842 69.17363739
		 15.80097103 -15.52424622 69.17363739 21.74817085 -9.57704544 69.17363739 25.56650925 -2.083136082 69.17363739
		 26.88221931 6.22392702 69.17363739 21.305439 13.14648247 69.17363739 18.12348938 19.39141273 69.17363739
		 13.16748428 24.34741402 69.17363739 6.92255545 27.52935982 69.17363739 0 28.62578583 69.17363739
		 -6.92255545 27.52935982 69.17363739 -13.16748142 24.3474102 69.17363739 -18.12348175 19.39140701 69.17363739
		 -21.30543137 13.14648056 69.17363739 -22.40185547 6.22392702 69.17363739 -21.30543137 -0.69862652 69.17363739
		 -18.12348175 -6.94355059 69.17363739 -13.16747856 -11.8995533 69.17363739 -6.92255354 -15.081497192 69.17363739
		 -6.6762715e-007 -16.17792511 69.17363739 6.92255116 -15.081497192 69.17363739 13.16747665 -11.8995533 69.17363739
		 18.12347603 -6.94355059 69.17363739 21.30542374 -0.69862556 69.17363739 22.40184975 6.22392702 69.17363739
		 17.04434967 11.76197243 73.25047302 14.49879169 16.75791359 73.25047302 10.53398705 20.72271729 73.25047302
		 5.53804445 23.26827431 73.25047302 0 24.14541435 73.25047302 -5.53804445 23.26827431 73.25047302
		 -10.53398514 20.72271347 73.25047302 -14.49878597 16.75791168 73.25047302 -17.044343948 11.76197052 73.25047302
		 -17.92148399 6.22392702 73.25047302 -17.044343948 0.68588591 73.25047302 -14.49878502 -4.31005621 73.25047302
		 -10.53398323 -8.27485657 73.25047302 -5.53804255 -10.8204155 73.25047302 -5.3410167e-007 -11.69755745 73.25047302
		 5.53804111 -10.82041359 73.25047302 10.53398037 -8.27485657 73.25047302 14.49878216 -4.31005526 73.25047302
		 17.044340134 0.68588591 73.25047302 17.92147827 6.22392702 73.25047302 12.78326225 10.37746048 73.25047302
		 10.87409306 14.1244173 73.25047302 7.90049028 17.098020554 73.25047302 4.15353298 19.007188797 73.25047302
		 0 19.66504288 73.25047302 -4.15353298 19.0071868896 73.25047302 -7.90048885 17.098016739 73.25047302
		 -10.87408829 14.1244154 73.25047302 -12.78325844 10.37745857 73.25047302 -13.44111252 6.22392702 73.25047302
		 -12.78325844 2.070394993 73.25047302 -10.87408829 -1.67655802 73.25047302 -7.90048647 -4.65015936 73.25047302
		 -4.15353203 -6.55932951 73.25047302 -4.0057628e-007 -7.21718454 73.25047302 4.1535306 -6.55932951 73.25047302
		 7.90048552 -4.65015936 73.25047302 10.87408543 -1.67655802 73.25047302 12.78325462 2.07039547 73.25047302
		 13.44110966 6.22392702 73.25047302 8.52217484 8.99294949 69.88750458 7.24939585 11.49092102 69.88750458
		 5.26699352 13.47332191 69.88750458 2.76902223 14.74610138 69.88750458 0 15.1846714 69.88750458
		 -2.76902223 14.74610138 69.88750458 -5.26699257 13.47332001 69.88750458 -7.24939299 11.49091911 69.88750458
		 -8.52217197 8.99294853 69.88750458 -8.960742 6.22392702 69.88750458 -8.52217197 3.4549067 69.88750458
		 -7.24939251 0.95693541 69.88750458 -5.26699162 -1.025465012 69.88750458 -2.76902127 -2.29824305 69.88750458
		 -2.6705084e-007 -2.73681402 69.88750458 2.76902056 -2.29824305 69.88750458 5.26699018 -1.025464535 69.88750458
		 7.24939108 0.95693588 69.88750458 8.52217007 3.45490718 69.88750458 8.96073914 6.22392702 69.88750458
		 8.52217484 8.99294949 72.62288666 7.24939585 11.49092102 72.62288666 3.62469792 8.85742378 72.45482635
		 4.26108742 7.60843945 72.45482635 5.26699352 13.47332191 72.62288666 2.63349676 9.84862423 72.45482635
		 2.76902223 14.74610138 72.62288666 1.38451111 10.48501396 72.45482635 0 15.1846714 72.62288666
		 0 10.70429897 72.45482635 -2.76902223 14.74610138 72.62288666 -1.38451111 10.48501396 72.45482635
		 -5.26699257 13.47332001 72.62288666 -2.63349628 9.84862328 72.45482635 -7.24939299 11.49091911 72.62288666
		 -3.62469649 8.85742378 72.45482635 -8.52217197 8.99294853 72.62288666 -4.26108599 7.60843754 72.45482635
		 -8.960742 6.22392702 72.62288666 -4.480371 6.22392702 72.45482635 -8.52217197 3.4549067 72.62288666
		 -4.26108599 4.8394165 72.45482635 -7.24939251 0.95693541 72.62288666 -3.62469625 3.59043145 72.45482635
		 -5.26699162 -1.025465012 72.62288666 -2.63349581 2.59923148 72.45482635;
	setAttr ".vt[166:300]" -2.76902127 -2.29824305 72.62288666 -1.38451064 1.96284294 72.45482635
		 -2.6705084e-007 -2.73681402 72.62288666 -1.3352542e-007 1.7435565 72.45482635 2.76902056 -2.29824305 72.62288666
		 1.38451028 1.96284294 72.45482635 5.26699018 -1.025464535 72.62288666 2.63349509 2.59923148 72.45482635
		 7.24939108 0.95693588 72.62288666 3.62469554 3.59043145 72.45482635 8.52217007 3.45490718 72.62288666
		 4.26108503 4.8394165 72.45482635 8.96073914 6.22392702 72.62288666 4.48036957 6.22392702 72.45482635
		 4.26108694 7.60843945 77.48039246 3.62469745 8.85742378 77.48039246 -3.8803272e-008 6.22392702 77.48038483
		 2.63349676 9.84862423 77.48039246 1.38451111 10.48501396 77.48039246 0 10.70429897 77.48039246
		 -1.38451111 10.48501396 77.48039246 -2.63349628 9.84862328 77.48039246 -3.62469649 8.85742378 77.48039246
		 -4.26108599 7.60843754 77.48039246 -4.480371 6.22392702 77.48039246 -4.26108599 4.8394165 77.48039246
		 -3.62469625 3.59043145 77.48039246 -2.63349581 2.59923148 77.48039246 -1.38451064 1.96284294 77.48039246
		 -1.3352542e-007 1.7435565 77.48039246 1.38451028 1.96284294 77.48039246 2.63349509 2.59923148 77.48039246
		 3.62469554 3.59043145 77.48039246 4.26108503 4.8394165 77.48039246 4.48036957 6.22392702 77.48039246
		 -21.067970276 35.2215004 73.31941223 -11.076088905 40.31262207 73.31941223 0 42.066902161 73.31941223
		 11.076088905 40.31262207 73.31941223 21.067974091 35.22151566 73.31941223 28.99758339 27.29190063 73.31941223
		 34.088699341 17.3000164 73.31941223 35.84295654 6.22392702 73.31941223 34.088680267 -4.85215521 73.31941223
		 28.99756432 -14.84403992 73.31941223 21.067960739 -22.77363968 73.31941223 11.07608223 -27.86475372 73.31941223
		 -1.0682033e-006 -29.61903763 73.31941223 -11.076085091 -27.86475754 73.31941223 -21.067966461 -22.77364349 73.31941223
		 -28.99757004 -14.84403992 73.31941223 -34.088687897 -4.85215712 73.31941223 -35.84296799 6.22392702 73.31941223
		 -34.088687897 17.30001259 73.31941223 -28.99757195 27.29189682 73.31941223 -19.9094162 33.62688828 69.29330444
		 -10.46700001 38.43803787 69.29330444 -2.3316082e-007 40.095848083 69.29330444 10.46700001 38.43803787 69.29330444
		 19.90941811 33.6268959 69.29330444 27.40296555 26.13334656 69.29330444 32.21411514 16.69092751 69.29330444
		 33.87190628 6.2239275 69.29330444 32.21409988 -4.24306536 69.29330444 27.40294838 -13.68548203 69.29330444
		 19.90940666 -21.17902184 69.29330444 10.46699333 -25.99017334 69.29330444 -1.2426223e-006 -27.64798355 69.29330444
		 -10.46699715 -25.99017715 69.29330444 -19.90940857 -21.17902565 69.29330444 -27.4029541 -13.68548203 69.29330444
		 -32.21410751 -4.24306917 69.29330444 -33.87191391 6.2239275 69.29330444 -32.21410751 16.69092369 69.29330444
		 -27.40295792 26.13334274 69.29330444 -22.88863945 37.72743988 73.25275421 -12.03327179 43.25852966 73.25275421
		 -22.88863945 37.72743988 74.92861938 -12.03327179 43.25852966 74.92861938 3.6641225e-007 45.16441345 73.25275421
		 3.6641225e-007 45.16441345 74.92861938 12.033272743 43.25852966 73.25275421 12.033272743 43.25852966 74.92861938
		 22.88864708 37.72745514 73.25275421 22.88864708 37.72745514 74.92861938 31.50352287 29.11257172 73.25275421
		 31.50352287 29.11257172 74.92861938 37.034610748 18.25720024 73.25275421 37.034610748 18.25720024 74.92861938
		 38.94046783 6.22392654 73.25275421 38.94046783 6.22392654 74.92861938 37.034584045 -5.80933809 73.25275421
		 37.034584045 -5.80933809 74.92861938 31.5035038 -16.664711 73.25275421 31.5035038 -16.664711 74.92861938
		 22.88863182 -25.27957916 73.25275421 22.88863182 -25.27957916 74.92861938 12.033265114 -30.81066132 73.25275421
		 12.033265114 -30.81066132 74.92861938 -7.9410415e-007 -32.7165451 73.25275421 -7.9410415e-007 -32.7165451 74.92861938
		 -12.033268929 -30.81066513 73.25275421 -12.033268929 -30.81066513 74.92861938 -22.88863564 -25.27958298 73.25275421
		 -22.88863564 -25.27958298 74.92861938 -31.50350952 -16.664711 73.25275421 -31.50350952 -16.664711 74.92861938
		 -37.034591675 -5.80934191 73.25275421 -37.034591675 -5.80934191 74.92861938 -38.94047928 6.22392654 73.25275421
		 -38.94047928 6.22392654 74.92861938 -37.034591675 18.25719643 73.25275421 -37.034591675 18.25719643 74.92861938
		 -31.50351143 29.11256599 73.25275421 -31.50351143 29.11256599 74.92861938 -32.21410751 16.69092369 61.62886047
		 -27.40295792 26.13334274 61.62886047 -19.9094162 33.62688828 61.62886047 -10.46700001 38.43803787 61.62886047
		 -2.3316082e-007 40.095848083 61.62886047 10.46700001 38.43803787 61.62886047 19.90941811 33.6268959 61.62886047
		 27.40296555 26.13334656 61.62886047 32.21411514 16.69092751 61.62886047 33.87190628 6.2239275 61.62886047
		 32.21409988 -4.24306536 61.62886047 27.40295029 -13.68548203 61.62886047 19.90940666 -21.17902184 61.62886047
		 10.46699333 -25.99017334 61.62886047 -1.2426223e-006 -27.64798355 61.62886047 -10.46699715 -25.99017715 61.62886047
		 -19.90940857 -21.17902565 61.62886047 -27.4029541 -13.68548203 61.62886047 -32.21410751 -4.24306917 61.62886047
		 -33.87191391 6.2239275 61.62886047;
	setAttr -s 600 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:331]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 0 121 141 0 140 141 0
		 141 142 1 143 142 0 140 143 1 122 144 0 141 144 0 144 145 1 142 145 0 123 146 0 144 146 0
		 146 147 1 145 147 0 124 148 0 146 148 0 148 149 1 147 149 0 125 150 0 148 150 0 150 151 1
		 149 151 0 126 152 0 150 152 0 152 153 1 151 153 0 127 154 0 152 154 0 154 155 1 153 155 0
		 128 156 0 154 156 0 156 157 1 155 157 0 129 158 0 156 158 0 158 159 1 157 159 0 130 160 0
		 158 160 0 160 161 1 159 161 0 131 162 0 160 162 0 162 163 1 161 163 0 132 164 0 162 164 0
		 164 165 1 163 165 0 133 166 0 164 166 0 166 167 1 165 167 0 134 168 0 166 168 0 168 169 1
		 167 169 0 135 170 0 168 170 0 170 171 1 169 171 0 136 172 0 170 172 0 172 173 1 171 173 0
		 137 174 0 172 174 0 174 175 1 173 175 0 138 176 0 174 176 0;
	setAttr ".ed[332:497]" 176 177 1 175 177 0 139 178 0 176 178 0 178 179 1 177 179 0
		 178 140 0 179 143 0 143 180 1 142 181 1 180 181 0 181 182 1 180 182 1 145 183 1 181 183 0
		 183 182 1 147 184 1 183 184 0 184 182 1 149 185 1 184 185 0 185 182 1 151 186 1 185 186 0
		 186 182 1 153 187 1 186 187 0 187 182 1 155 188 1 187 188 0 188 182 1 157 189 1 188 189 0
		 189 182 1 159 190 1 189 190 0 190 182 1 161 191 1 190 191 0 191 182 1 163 192 1 191 192 0
		 192 182 1 165 193 1 192 193 0 193 182 1 167 194 1 193 194 0 194 182 1 169 195 1 194 195 0
		 195 182 1 171 196 1 195 196 0 196 182 1 173 197 1 196 197 0 197 182 1 175 198 1 197 198 0
		 198 182 1 177 199 1 198 199 0 199 182 1 179 200 1 199 200 0 200 182 1 200 180 0 201 202 0
		 202 203 0 203 204 0 204 205 0 205 206 0 206 207 0 207 208 0 208 209 0 209 210 0 210 211 0
		 211 212 0 212 213 0 213 214 0 214 215 0 215 216 0 216 217 0 217 218 0 218 219 0 219 220 0
		 220 201 0 201 221 0 202 222 0 221 222 0 203 223 0 222 223 0 204 224 0 223 224 0 205 225 0
		 224 225 0 206 226 0 225 226 0 207 227 0 226 227 0 208 228 0 227 228 0 209 229 0 228 229 0
		 210 230 0 229 230 0 211 231 0 230 231 0 212 232 0 231 232 0 213 233 0 232 233 0 214 234 0
		 233 234 0 215 235 0 234 235 0 216 236 0 235 236 0 217 237 0 236 237 0 218 238 0 237 238 0
		 219 239 0 238 239 0 220 240 0 239 240 0 240 221 0 201 241 0 202 242 0 241 242 0 6 243 0
		 241 243 1 5 244 0 244 243 0 242 244 1 203 245 0 242 245 0 4 246 0 246 244 0 245 246 1
		 204 247 0 245 247 0 3 248 0 248 246 0 247 248 1 205 249 0 247 249 0 2 250 0 250 248 0
		 249 250 1 206 251 0 249 251 0 1 252 0 252 250 0 251 252 1 207 253 0 251 253 0 0 254 0
		 254 252 0 253 254 1 208 255 0 253 255 0 19 256 0 256 254 0 255 256 1;
	setAttr ".ed[498:599]" 209 257 0 255 257 0 18 258 0 258 256 0 257 258 1 210 259 0
		 257 259 0 17 260 0 260 258 0 259 260 1 211 261 0 259 261 0 16 262 0 262 260 0 261 262 1
		 212 263 0 261 263 0 15 264 0 264 262 0 263 264 1 213 265 0 263 265 0 14 266 0 266 264 0
		 265 266 1 214 267 0 265 267 0 13 268 0 268 266 0 267 268 1 215 269 0 267 269 0 12 270 0
		 270 268 0 269 270 1 216 271 0 269 271 0 11 272 0 272 270 0 271 272 1 217 273 0 271 273 0
		 10 274 0 274 272 0 273 274 1 218 275 0 273 275 0 9 276 0 276 274 0 275 276 1 219 277 0
		 275 277 0 8 278 0 278 276 0 277 278 1 220 279 0 277 279 0 7 280 0 280 278 0 279 280 1
		 279 241 0 243 280 0 281 239 1 282 240 1 281 282 0 283 221 1 282 283 0 284 222 1 283 284 0
		 285 223 1 284 285 0 286 224 1 285 286 0 287 225 1 286 287 0 288 226 1 287 288 0 289 227 1
		 288 289 0 290 228 1 289 290 0 291 229 1 290 291 0 292 230 1 291 292 0 293 231 1 292 293 0
		 294 232 1 293 294 0 295 233 1 294 295 0 296 234 1 295 296 0 297 235 1 296 297 0 298 236 1
		 297 298 0 299 237 1 298 299 0 300 238 1 299 300 0 300 281 0;
	setAttr -s 300 -ch 1180 ".fc[0:299]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 0 1 2 3
		f 4 1 142 -22 -142
		mu 0 4 1 4 5 2
		f 4 2 143 -23 -143
		mu 0 4 4 6 7 5
		f 4 3 144 -24 -144
		mu 0 4 6 8 9 7
		f 4 4 145 -25 -145
		mu 0 4 8 10 11 9
		f 4 5 146 -26 -146
		mu 0 4 10 12 13 11
		f 4 6 147 -27 -147
		mu 0 4 12 14 15 13
		f 4 7 148 -28 -148
		mu 0 4 14 16 17 15
		f 4 8 149 -29 -149
		mu 0 4 16 18 19 17
		f 4 9 150 -30 -150
		mu 0 4 18 20 21 19
		f 4 10 151 -31 -151
		mu 0 4 20 22 23 21
		f 4 11 152 -32 -152
		mu 0 4 22 24 25 23
		f 4 12 153 -33 -153
		mu 0 4 24 26 27 25
		f 4 13 154 -34 -154
		mu 0 4 26 28 29 27
		f 4 14 155 -35 -155
		mu 0 4 28 30 31 29
		f 4 15 156 -36 -156
		mu 0 4 30 32 33 31
		f 4 16 157 -37 -157
		mu 0 4 32 34 35 33
		f 4 17 158 -38 -158
		mu 0 4 34 36 37 35
		f 4 18 159 -39 -159
		mu 0 4 36 38 39 37
		f 4 19 140 -40 -160
		mu 0 4 38 0 3 39
		f 4 20 161 -41 -161
		mu 0 4 3 2 40 41
		f 4 21 162 -42 -162
		mu 0 4 2 5 42 40
		f 4 22 163 -43 -163
		mu 0 4 5 7 43 42
		f 4 23 164 -44 -164
		mu 0 4 7 9 44 43
		f 4 24 165 -45 -165
		mu 0 4 9 11 45 44
		f 4 25 166 -46 -166
		mu 0 4 11 13 46 45
		f 4 26 167 -47 -167
		mu 0 4 13 15 47 46
		f 4 27 168 -48 -168
		mu 0 4 15 17 48 47
		f 4 28 169 -49 -169
		mu 0 4 17 19 49 48
		f 4 29 170 -50 -170
		mu 0 4 19 21 50 49
		f 4 30 171 -51 -171
		mu 0 4 21 23 51 50
		f 4 31 172 -52 -172
		mu 0 4 23 25 52 51
		f 4 32 173 -53 -173
		mu 0 4 25 27 53 52
		f 4 33 174 -54 -174
		mu 0 4 27 29 54 53
		f 4 34 175 -55 -175
		mu 0 4 29 31 55 54
		f 4 35 176 -56 -176
		mu 0 4 31 33 56 55
		f 4 36 177 -57 -177
		mu 0 4 33 35 57 56
		f 4 37 178 -58 -178
		mu 0 4 35 37 58 57
		f 4 38 179 -59 -179
		mu 0 4 37 39 59 58
		f 4 39 160 -60 -180
		mu 0 4 39 3 41 59
		f 4 40 181 -61 -181
		mu 0 4 41 40 60 61
		f 4 41 182 -62 -182
		mu 0 4 40 42 62 60
		f 4 42 183 -63 -183
		mu 0 4 42 43 63 62
		f 4 43 184 -64 -184
		mu 0 4 43 44 64 63
		f 4 44 185 -65 -185
		mu 0 4 44 45 65 64
		f 4 45 186 -66 -186
		mu 0 4 45 46 66 65
		f 4 46 187 -67 -187
		mu 0 4 46 47 67 66
		f 4 47 188 -68 -188
		mu 0 4 47 48 68 67
		f 4 48 189 -69 -189
		mu 0 4 48 49 69 68
		f 4 49 190 -70 -190
		mu 0 4 49 50 70 69
		f 4 50 191 -71 -191
		mu 0 4 50 51 71 70
		f 4 51 192 -72 -192
		mu 0 4 51 52 72 71
		f 4 52 193 -73 -193
		mu 0 4 52 53 73 72
		f 4 53 194 -74 -194
		mu 0 4 53 54 74 73
		f 4 54 195 -75 -195
		mu 0 4 54 55 75 74
		f 4 55 196 -76 -196
		mu 0 4 55 56 76 75
		f 4 56 197 -77 -197
		mu 0 4 56 57 77 76
		f 4 57 198 -78 -198
		mu 0 4 57 58 78 77
		f 4 58 199 -79 -199
		mu 0 4 58 59 79 78
		f 4 59 180 -80 -200
		mu 0 4 59 41 61 79
		f 4 60 201 -81 -201
		mu 0 4 61 60 80 81
		f 4 61 202 -82 -202
		mu 0 4 60 62 82 80
		f 4 62 203 -83 -203
		mu 0 4 62 63 83 82
		f 4 63 204 -84 -204
		mu 0 4 63 64 84 83
		f 4 64 205 -85 -205
		mu 0 4 64 65 85 84
		f 4 65 206 -86 -206
		mu 0 4 65 66 86 85
		f 4 66 207 -87 -207
		mu 0 4 66 67 87 86
		f 4 67 208 -88 -208
		mu 0 4 67 68 88 87
		f 4 68 209 -89 -209
		mu 0 4 68 69 89 88
		f 4 69 210 -90 -210
		mu 0 4 69 70 90 89
		f 4 70 211 -91 -211
		mu 0 4 70 71 91 90
		f 4 71 212 -92 -212
		mu 0 4 71 72 92 91
		f 4 72 213 -93 -213
		mu 0 4 72 73 93 92
		f 4 73 214 -94 -214
		mu 0 4 73 74 94 93
		f 4 74 215 -95 -215
		mu 0 4 74 75 95 94
		f 4 75 216 -96 -216
		mu 0 4 75 76 96 95
		f 4 76 217 -97 -217
		mu 0 4 76 77 97 96
		f 4 77 218 -98 -218
		mu 0 4 77 78 98 97
		f 4 78 219 -99 -219
		mu 0 4 78 79 99 98
		f 4 79 200 -100 -220
		mu 0 4 79 61 81 99
		f 4 80 221 -101 -221
		mu 0 4 81 80 100 101
		f 4 81 222 -102 -222
		mu 0 4 80 82 102 100
		f 4 82 223 -103 -223
		mu 0 4 82 83 103 102
		f 4 83 224 -104 -224
		mu 0 4 83 84 104 103
		f 4 84 225 -105 -225
		mu 0 4 84 85 105 104
		f 4 85 226 -106 -226
		mu 0 4 85 86 106 105
		f 4 86 227 -107 -227
		mu 0 4 86 87 107 106
		f 4 87 228 -108 -228
		mu 0 4 87 88 108 107
		f 4 88 229 -109 -229
		mu 0 4 88 89 109 108
		f 4 89 230 -110 -230
		mu 0 4 89 90 110 109
		f 4 90 231 -111 -231
		mu 0 4 90 91 111 110
		f 4 91 232 -112 -232
		mu 0 4 91 92 112 111
		f 4 92 233 -113 -233
		mu 0 4 92 93 113 112
		f 4 93 234 -114 -234
		mu 0 4 93 94 114 113
		f 4 94 235 -115 -235
		mu 0 4 94 95 115 114
		f 4 95 236 -116 -236
		mu 0 4 95 96 116 115
		f 4 96 237 -117 -237
		mu 0 4 96 97 117 116
		f 4 97 238 -118 -238
		mu 0 4 97 98 118 117
		f 4 98 239 -119 -239
		mu 0 4 98 99 119 118
		f 4 99 220 -120 -240
		mu 0 4 99 81 101 119
		f 4 100 241 -121 -241
		mu 0 4 101 100 120 121
		f 4 101 242 -122 -242
		mu 0 4 100 102 122 120
		f 4 102 243 -123 -243
		mu 0 4 102 103 123 122
		f 4 103 244 -124 -244
		mu 0 4 103 104 124 123
		f 4 104 245 -125 -245
		mu 0 4 104 105 125 124
		f 4 105 246 -126 -246
		mu 0 4 105 106 126 125
		f 4 106 247 -127 -247
		mu 0 4 106 107 127 126
		f 4 107 248 -128 -248
		mu 0 4 107 108 128 127
		f 4 108 249 -129 -249
		mu 0 4 108 109 129 128
		f 4 109 250 -130 -250
		mu 0 4 109 110 130 129
		f 4 110 251 -131 -251
		mu 0 4 110 111 131 130
		f 4 111 252 -132 -252
		mu 0 4 111 112 132 131
		f 4 112 253 -133 -253
		mu 0 4 112 113 133 132
		f 4 113 254 -134 -254
		mu 0 4 113 114 134 133
		f 4 114 255 -135 -255
		mu 0 4 114 115 135 134
		f 4 115 256 -136 -256
		mu 0 4 115 116 136 135
		f 4 116 257 -137 -257
		mu 0 4 116 117 137 136
		f 4 117 258 -138 -258
		mu 0 4 117 118 138 137
		f 4 118 259 -139 -259
		mu 0 4 118 119 139 138
		f 4 119 240 -140 -260
		mu 0 4 119 101 121 139
		f 4 262 263 -265 -266
		mu 0 4 140 141 142 143
		f 4 267 268 -270 -264
		mu 0 4 141 144 145 142
		f 4 271 272 -274 -269
		mu 0 4 144 146 147 145
		f 4 275 276 -278 -273
		mu 0 4 146 148 149 147
		f 4 279 280 -282 -277
		mu 0 4 148 150 151 149
		f 4 283 284 -286 -281
		mu 0 4 150 152 153 151
		f 4 287 288 -290 -285
		mu 0 4 152 154 155 153
		f 4 291 292 -294 -289
		mu 0 4 154 156 157 155
		f 4 295 296 -298 -293
		mu 0 4 156 158 159 157
		f 4 299 300 -302 -297
		mu 0 4 158 160 161 159
		f 4 303 304 -306 -301
		mu 0 4 160 162 163 161
		f 4 307 308 -310 -305
		mu 0 4 162 164 165 163
		f 4 311 312 -314 -309
		mu 0 4 164 166 167 165
		f 4 315 316 -318 -313
		mu 0 4 166 168 169 167
		f 4 319 320 -322 -317
		mu 0 4 168 170 171 169
		f 4 323 324 -326 -321
		mu 0 4 170 172 173 171
		f 4 327 328 -330 -325
		mu 0 4 172 174 175 173
		f 4 331 332 -334 -329
		mu 0 4 174 176 177 175
		f 4 335 336 -338 -333
		mu 0 4 176 178 179 177
		f 4 338 265 -340 -337
		mu 0 4 178 140 143 179
		f 3 342 343 -345
		mu 0 3 180 181 182
		f 3 346 347 -344
		mu 0 3 181 183 182
		f 3 349 350 -348
		mu 0 3 183 184 182
		f 3 352 353 -351
		mu 0 3 184 185 182
		f 3 355 356 -354
		mu 0 3 185 186 182
		f 3 358 359 -357
		mu 0 3 186 187 182
		f 3 361 362 -360
		mu 0 3 187 188 182
		f 3 364 365 -363
		mu 0 3 188 189 182
		f 3 367 368 -366
		mu 0 3 189 190 182
		f 3 370 371 -369
		mu 0 3 190 191 182
		f 3 373 374 -372
		mu 0 3 191 192 182
		f 3 376 377 -375
		mu 0 3 192 193 182
		f 3 379 380 -378
		mu 0 3 193 194 182
		f 3 382 383 -381
		mu 0 3 194 195 182
		f 3 385 386 -384
		mu 0 3 195 196 182
		f 3 388 389 -387
		mu 0 3 196 197 182
		f 3 391 392 -390
		mu 0 3 197 198 182
		f 3 394 395 -393
		mu 0 3 198 199 182
		f 3 397 398 -396
		mu 0 3 199 200 182
		f 3 399 344 -399
		mu 0 3 200 180 182
		f 4 120 261 -263 -261
		mu 0 4 121 120 141 140
		f 4 121 266 -268 -262
		mu 0 4 120 122 144 141
		f 4 122 270 -272 -267
		mu 0 4 122 123 146 144
		f 4 123 274 -276 -271
		mu 0 4 123 124 148 146
		f 4 124 278 -280 -275
		mu 0 4 124 125 150 148
		f 4 125 282 -284 -279
		mu 0 4 125 126 152 150
		f 4 126 286 -288 -283
		mu 0 4 126 127 154 152
		f 4 127 290 -292 -287
		mu 0 4 127 128 156 154
		f 4 128 294 -296 -291
		mu 0 4 128 129 158 156
		f 4 129 298 -300 -295
		mu 0 4 129 130 160 158
		f 4 130 302 -304 -299
		mu 0 4 130 131 162 160
		f 4 131 306 -308 -303
		mu 0 4 131 132 164 162
		f 4 132 310 -312 -307
		mu 0 4 132 133 166 164
		f 4 133 314 -316 -311
		mu 0 4 133 134 168 166
		f 4 134 318 -320 -315
		mu 0 4 134 135 170 168
		f 4 135 322 -324 -319
		mu 0 4 135 136 172 170
		f 4 136 326 -328 -323
		mu 0 4 136 137 174 172
		f 4 137 330 -332 -327
		mu 0 4 137 138 176 174
		f 4 138 334 -336 -331
		mu 0 4 138 139 178 176
		f 4 139 260 -339 -335
		mu 0 4 139 121 140 178
		f 4 264 341 -343 -341
		mu 0 4 143 142 181 180
		f 4 269 345 -347 -342
		mu 0 4 142 145 183 181
		f 4 273 348 -350 -346
		mu 0 4 145 147 184 183
		f 4 277 351 -353 -349
		mu 0 4 147 149 185 184
		f 4 281 354 -356 -352
		mu 0 4 149 151 186 185
		f 4 285 357 -359 -355
		mu 0 4 151 153 187 186
		f 4 289 360 -362 -358
		mu 0 4 153 155 188 187
		f 4 293 363 -365 -361
		mu 0 4 155 157 189 188
		f 4 297 366 -368 -364
		mu 0 4 157 159 190 189
		f 4 301 369 -371 -367
		mu 0 4 159 161 191 190
		f 4 305 372 -374 -370
		mu 0 4 161 163 192 191
		f 4 309 375 -377 -373
		mu 0 4 163 165 193 192
		f 4 313 378 -380 -376
		mu 0 4 165 167 194 193
		f 4 317 381 -383 -379
		mu 0 4 167 169 195 194
		f 4 321 384 -386 -382
		mu 0 4 169 171 196 195
		f 4 325 387 -389 -385
		mu 0 4 171 173 197 196
		f 4 329 390 -392 -388
		mu 0 4 173 175 198 197
		f 4 333 393 -395 -391
		mu 0 4 175 177 199 198
		f 4 337 396 -398 -394
		mu 0 4 177 179 200 199
		f 4 339 340 -400 -397
		mu 0 4 179 143 180 200
		f 4 -463 464 -467 -468
		mu 0 4 201 202 203 204
		f 4 -470 467 -472 -473
		mu 0 4 205 201 204 206
		f 4 -475 472 -477 -478
		mu 0 4 207 205 206 208
		f 4 -480 477 -482 -483
		mu 0 4 209 207 208 210
		f 4 -485 482 -487 -488
		mu 0 4 211 209 210 212
		f 4 -490 487 -492 -493
		mu 0 4 213 211 212 214
		f 4 -495 492 -497 -498
		mu 0 4 215 216 217 218
		f 4 -500 497 -502 -503
		mu 0 4 219 215 218 220
		f 4 -505 502 -507 -508
		mu 0 4 221 219 220 222
		f 4 -510 507 -512 -513
		mu 0 4 223 221 222 224
		f 4 -515 512 -517 -518
		mu 0 4 225 223 224 226
		f 4 -520 517 -522 -523
		mu 0 4 227 225 226 228
		f 4 -525 522 -527 -528
		mu 0 4 229 227 228 230
		f 4 -530 527 -532 -533
		mu 0 4 231 229 230 232
		f 4 -535 532 -537 -538
		mu 0 4 233 231 232 234
		f 4 -540 537 -542 -543
		mu 0 4 235 233 234 236
		f 4 -545 542 -547 -548
		mu 0 4 237 235 236 238
		f 4 -550 547 -552 -553
		mu 0 4 239 237 238 240
		f 4 -555 552 -557 -558
		mu 0 4 241 239 240 242
		f 4 -559 557 -560 -465
		mu 0 4 202 241 242 203
		f 4 400 421 -423 -421
		mu 0 4 264 265 244 243
		f 4 401 423 -425 -422
		mu 0 4 265 266 245 244
		f 4 402 425 -427 -424
		mu 0 4 266 267 246 245
		f 4 403 427 -429 -426
		mu 0 4 267 268 247 246
		f 4 404 429 -431 -428
		mu 0 4 268 269 248 247
		f 4 405 431 -433 -430
		mu 0 4 269 270 249 248
		f 4 406 433 -435 -432
		mu 0 4 271 272 251 250
		f 4 407 435 -437 -434
		mu 0 4 272 273 252 251
		f 4 408 437 -439 -436
		mu 0 4 273 274 253 252
		f 4 409 439 -441 -438
		mu 0 4 274 275 254 253
		f 4 410 441 -443 -440
		mu 0 4 275 276 255 254
		f 4 411 443 -445 -442
		mu 0 4 276 277 256 255
		f 4 412 445 -447 -444
		mu 0 4 277 278 257 256
		f 4 413 447 -449 -446
		mu 0 4 278 279 258 257
		f 4 414 449 -451 -448
		mu 0 4 279 280 259 258
		f 4 415 451 -453 -450
		mu 0 4 280 281 260 259
		f 4 416 453 -455 -452
		mu 0 4 281 282 261 260
		f 4 417 455 -457 -454
		mu 0 4 282 283 262 261
		f 4 418 457 -459 -456
		mu 0 4 283 284 263 262
		f 4 419 420 -460 -458
		mu 0 4 284 264 243 263
		f 4 -401 460 462 -462
		mu 0 4 265 264 202 201
		f 4 -6 465 466 -464
		mu 0 4 285 286 204 203
		f 4 -402 461 469 -469
		mu 0 4 266 265 201 205
		f 4 -5 470 471 -466
		mu 0 4 286 287 206 204
		f 4 -403 468 474 -474
		mu 0 4 267 266 205 207
		f 4 -4 475 476 -471
		mu 0 4 287 288 208 206
		f 4 -404 473 479 -479
		mu 0 4 268 267 207 209
		f 4 -3 480 481 -476
		mu 0 4 288 289 210 208
		f 4 -405 478 484 -484
		mu 0 4 269 268 209 211
		f 4 -2 485 486 -481
		mu 0 4 289 290 212 210
		f 4 -406 483 489 -489
		mu 0 4 270 269 211 213
		f 4 -1 490 491 -486
		mu 0 4 290 291 214 212
		f 4 -407 488 494 -494
		mu 0 4 272 271 216 215
		f 4 -20 495 496 -491
		mu 0 4 292 293 218 217
		f 4 -408 493 499 -499
		mu 0 4 273 272 215 219
		f 4 -19 500 501 -496
		mu 0 4 293 294 220 218
		f 4 -409 498 504 -504
		mu 0 4 274 273 219 221
		f 4 -18 505 506 -501
		mu 0 4 294 295 222 220
		f 4 -410 503 509 -509
		mu 0 4 275 274 221 223
		f 4 -17 510 511 -506
		mu 0 4 295 296 224 222
		f 4 -411 508 514 -514
		mu 0 4 276 275 223 225
		f 4 -16 515 516 -511
		mu 0 4 296 297 226 224
		f 4 -412 513 519 -519
		mu 0 4 277 276 225 227
		f 4 -15 520 521 -516
		mu 0 4 297 298 228 226
		f 4 -413 518 524 -524
		mu 0 4 278 277 227 229
		f 4 -14 525 526 -521
		mu 0 4 298 299 230 228
		f 4 -414 523 529 -529
		mu 0 4 279 278 229 231
		f 4 -13 530 531 -526
		mu 0 4 299 300 232 230
		f 4 -415 528 534 -534
		mu 0 4 280 279 231 233
		f 4 -12 535 536 -531
		mu 0 4 300 301 234 232
		f 4 -416 533 539 -539
		mu 0 4 281 280 233 235
		f 4 -11 540 541 -536
		mu 0 4 301 302 236 234
		f 4 -417 538 544 -544
		mu 0 4 282 281 235 237
		f 4 -10 545 546 -541
		mu 0 4 302 303 238 236
		f 4 -418 543 549 -549
		mu 0 4 283 282 237 239
		f 4 -9 550 551 -546
		mu 0 4 303 304 240 238
		f 4 -419 548 554 -554
		mu 0 4 284 283 239 241
		f 4 -8 555 556 -551
		mu 0 4 304 305 242 240
		f 4 -420 553 558 -461
		mu 0 4 264 284 241 202
		f 4 -7 463 559 -556
		mu 0 4 305 285 203 242
		f 4 -563 560 458 -562
		mu 0 4 307 306 262 263
		f 4 -565 561 459 -564
		mu 0 4 308 307 263 243
		f 4 -567 563 422 -566
		mu 0 4 309 308 243 244
		f 4 -569 565 424 -568
		mu 0 4 310 309 244 245
		f 4 -571 567 426 -570
		mu 0 4 311 310 245 246
		f 4 -573 569 428 -572
		mu 0 4 312 311 246 247
		f 4 -575 571 430 -574
		mu 0 4 313 312 247 248
		f 4 -577 573 432 -576
		mu 0 4 315 313 248 249
		f 4 -579 575 434 -578
		mu 0 4 316 314 250 251
		f 4 -581 577 436 -580
		mu 0 4 317 316 251 252
		f 4 -583 579 438 -582
		mu 0 4 318 317 252 253
		f 4 -585 581 440 -584
		mu 0 4 319 318 253 254
		f 4 -587 583 442 -586
		mu 0 4 320 319 254 255
		f 4 -589 585 444 -588
		mu 0 4 321 320 255 256
		f 4 -591 587 446 -590
		mu 0 4 322 321 256 257
		f 4 -593 589 448 -592
		mu 0 4 323 322 257 258
		f 4 -595 591 450 -594
		mu 0 4 324 323 258 259
		f 4 -597 593 452 -596
		mu 0 4 325 324 259 260
		f 4 -599 595 454 -598
		mu 0 4 326 325 260 261
		f 4 -600 597 456 -561
		mu 0 4 306 326 261 262;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2";
	rename -uid "A48BC89D-D34E-A9F1-8B9F-E28610AA5A87";
	setAttr ".t" -type "double3" -3.3914666186756444 0 0 ;
	setAttr ".r" -type "double3" 1.8483110373424976 0 0 ;
	setAttr ".s" -type "double3" 1.1341146754924964 1 1 ;
	setAttr ".rp" -type "double3" 3.0358904600143433 3.3028104901313782 9.5574131011962891 ;
	setAttr ".sp" -type "double3" 3.0358904600143433 3.3028104901313782 9.5574131011962891 ;
createNode transform -n "transform29" -p "|polySurface2";
	rename -uid "085A7911-5B48-7FE6-26F2-809B01B7FC30";
	setAttr ".v" no;
createNode mesh -n "polySurface2Shape" -p "transform29";
	rename -uid "89EAAB31-0943-0572-4824-DDB996D787C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4874998927116394 0.52612948417663574 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[297]" -type "float3"  1.4901161e-008 0 0;
	setAttr ".dr" 1;
createNode transform -n "polySurface4";
	rename -uid "3608060E-6A48-C0DE-AFA8-E690C8F8D0BD";
	setAttr ".t" -type "double3" 0.058441035751398918 -0.050429976503560958 -6.3762870200351305 ;
	setAttr ".s" -type "double3" 1.0618849817792611 1 1 ;
	setAttr ".rp" -type "double3" -0.3555762767791748 3.2506242990493774 9.5311923027038574 ;
	setAttr ".sp" -type "double3" -0.3555762767791748 3.2506242990493774 9.5311923027038574 ;
createNode transform -n "transform30" -p "polySurface4";
	rename -uid "2CB2043C-D142-723C-2E56-A1B900133199";
	setAttr ".v" no;
createNode mesh -n "polySurface2Shape" -p "transform30";
	rename -uid "34306443-2D4C-0F3E-F185-9AB8BEF86059";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "TWheel03:pTorus4";
	rename -uid "0E40911C-D24F-6236-EC0E-9EA67C65B3FD";
createNode transform -n "transform31" -p "TWheel03:pTorus4";
	rename -uid "5B657629-0B40-82A2-6D8F-89B54A5FC683";
	setAttr ".v" no;
createNode mesh -n "TWheel03:pTorus3Shape" -p "transform31";
	rename -uid "CB4F4F76-CB49-E73B-1FAF-4A81B191A3AF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder22";
	rename -uid "0968B82D-4047-20B8-43DF-40B1A768A574";
createNode mesh -n "pCylinder22Shape" -p "pCylinder22";
	rename -uid "4639A295-124C-3F94-A27B-FD9B6D1DB99E";
	setAttr -k off ".v";
	setAttr -s 18 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44541391730308533 0.32041049003601074 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1658 ".pt";
	setAttr ".pt[0]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[1]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[2]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[3]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[4]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[5]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[6]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[7]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[8]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[9]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[10]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[11]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[16]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[17]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[18]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[20]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[21]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[22]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[23]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[24]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[25]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[26]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[27]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[28]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[29]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[30]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[31]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[32]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[33]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[34]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[35]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[36]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[37]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[38]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[39]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[40]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[41]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[42]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[43]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[44]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[45]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[46]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[47]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[48]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[49]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[50]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[51]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[52]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[53]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[54]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[55]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[56]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[57]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[58]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[59]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[60]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[61]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[62]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[63]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[64]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[65]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[66]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[67]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[68]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[69]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[70]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[71]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[72]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[73]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[74]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[75]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[76]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[77]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[78]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[79]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[80]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[81]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[82]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[83]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[84]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[85]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[86]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[87]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[88]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[89]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[90]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[91]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[92]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[93]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[94]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[95]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[96]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[97]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[98]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[99]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[100]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[101]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[102]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[103]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[104]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[105]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[106]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[107]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[108]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[109]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[110]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[111]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[112]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[113]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[114]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[115]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[116]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[117]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[118]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[119]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[120]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[121]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[122]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[123]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[124]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[125]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[126]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[127]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[128]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[129]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[130]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[131]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[132]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[133]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[134]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[135]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[136]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[137]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[138]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[139]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[140]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[141]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[142]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[143]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[144]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[145]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[146]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[147]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[148]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[149]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[150]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[151]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[152]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[153]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[154]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[155]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[156]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[157]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[158]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[159]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[160]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[161]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[162]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[163]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[164]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[165]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[166]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[167]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[168]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[169]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[170]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[171]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[172]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[173]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[174]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[175]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[176]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[177]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[178]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[179]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[180]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[181]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[182]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[183]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[184]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[185]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[186]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[187]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[188]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[189]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[190]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[191]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[192]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[193]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[194]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[195]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[196]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[197]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[198]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[199]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[200]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[201]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[202]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[203]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[204]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[205]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[206]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[207]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[208]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[209]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[210]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[211]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[212]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[213]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[214]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[215]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[216]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[217]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[218]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[219]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[220]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[221]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[222]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[223]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[224]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[225]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[226]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[227]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[228]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[229]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[230]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[231]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[232]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[233]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[234]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[235]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[236]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[237]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[238]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[239]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[240]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[241]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[242]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[243]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[244]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[245]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[246]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[247]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[248]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[249]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[250]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[251]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[252]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[253]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[254]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[255]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[256]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[257]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[258]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[259]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[260]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[261]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[262]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[263]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[264]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[265]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[266]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[267]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[268]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[269]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[270]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[271]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[272]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[273]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[274]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[275]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[276]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[277]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[278]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[279]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[280]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[281]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[282]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[283]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[284]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[285]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[286]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[287]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[288]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[289]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[290]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[291]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[292]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[293]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[294]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[295]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[296]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[297]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[298]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[299]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[300]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[301]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[302]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[303]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[304]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[305]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[306]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[307]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[308]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[309]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[310]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[311]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[312]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[313]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[314]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[315]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[316]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[317]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[318]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[319]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[320]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[321]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[322]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[323]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[324]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[325]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[326]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[327]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[328]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[329]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[330]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[331]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[332]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[333]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[334]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[335]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[336]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[337]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[338]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[339]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[340]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[341]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[342]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[343]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[344]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[345]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[346]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[347]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[348]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[349]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[350]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[351]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[352]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[353]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[354]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[355]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[356]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[357]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[358]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[359]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[360]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[361]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[362]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[363]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[364]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[365]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[366]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[367]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[368]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[369]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[370]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[371]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[372]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[373]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[374]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[375]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[376]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[377]" -type "float3" -3.5762787e-007 0 0 ;
	setAttr ".pt[378]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".pt[379]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[380]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[381]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[382]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[383]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[384]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[385]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[386]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[387]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[388]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[389]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[390]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[391]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[392]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[393]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[394]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[395]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[396]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[397]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[398]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[399]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[400]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[401]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[402]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[403]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[404]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[405]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[406]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[407]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[408]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[409]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[410]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[411]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[412]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[413]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[414]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[415]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[416]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[417]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[418]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[419]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[420]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[421]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[422]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[423]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[424]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[425]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[426]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[427]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[428]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[429]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[430]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[431]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[432]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[433]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[434]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[435]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[436]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[437]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[438]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[439]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[440]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[441]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[442]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[443]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[444]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[445]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[446]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[447]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[448]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[449]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[450]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[451]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[452]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[453]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[454]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[455]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[456]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[457]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[458]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[459]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[460]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[461]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[462]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[463]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[464]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[465]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[466]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[467]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[468]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[469]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[470]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[471]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[472]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[473]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[474]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[475]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[476]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[477]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[478]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[479]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[480]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[481]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[482]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[483]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[484]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[485]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[486]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[487]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[488]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[489]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[490]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[491]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[492]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[493]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[494]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[495]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[496]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[497]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[498]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[499]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[500]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[501]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[502]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[503]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[504]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[505]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[506]" -type "float3" 3.5762787e-007 0 0 ;
	setAttr ".pt[591]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[592]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[593]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[594]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[595]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[596]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[597]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[598]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[599]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[600]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[601]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[602]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[603]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[604]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[605]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[606]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[607]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[608]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[609]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[610]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[611]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[612]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[613]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[614]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[615]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[616]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[617]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[618]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[619]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[620]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[621]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[622]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[623]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[624]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[625]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[626]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[627]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[628]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[629]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[630]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[631]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[632]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[633]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[634]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[635]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[636]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[637]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[638]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[639]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[640]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[641]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[642]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[643]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[644]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[645]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[646]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[647]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[648]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[649]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[650]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[651]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[652]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[653]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[654]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[655]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[656]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[657]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[658]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[659]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[660]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[661]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[662]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[663]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[664]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[665]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[666]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[667]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[668]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[669]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[670]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[671]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[672]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[673]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[674]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[675]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[676]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[677]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[678]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[679]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[680]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[681]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[682]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[683]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[684]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[685]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[686]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[687]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[688]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[689]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[690]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[703]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[704]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[705]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[706]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[707]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[708]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[709]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[710]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[711]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[712]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[713]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[714]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[715]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[716]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[717]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[718]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[719]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[720]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[721]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[722]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[723]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[724]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[725]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[726]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[727]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[728]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[729]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[730]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[731]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[732]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[733]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[734]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[735]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[736]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[737]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[738]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[739]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[740]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[741]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[742]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[743]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[744]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[745]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[746]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[747]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[748]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[749]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[750]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[751]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[752]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[753]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[754]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[755]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[756]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[757]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[758]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[759]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[760]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[761]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[762]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[763]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[764]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[765]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[766]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[767]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[768]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[769]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[770]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[771]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[772]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[773]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[774]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[775]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[776]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[777]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[778]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[779]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[780]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[781]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[782]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[783]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[784]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[785]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[786]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[787]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[788]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[789]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[790]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[791]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[792]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[793]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[794]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[795]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[796]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[797]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[798]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[799]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[800]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[801]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[802]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[803]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[804]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[805]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[806]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[807]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[808]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[809]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[810]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[811]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[812]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[813]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[814]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[815]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[816]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[817]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[818]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[819]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[820]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[821]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[822]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[823]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[824]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[825]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[826]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[827]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[828]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[829]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[830]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[831]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[832]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[833]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[834]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[835]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[836]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[837]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[838]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[839]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[840]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[841]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[842]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[843]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[844]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[845]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[846]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[847]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[848]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[849]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[850]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[851]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[852]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[853]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[854]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[855]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[856]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[857]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[858]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[859]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[860]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[861]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[862]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[863]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[864]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[865]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[866]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[867]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[868]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[869]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[870]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[871]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[872]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[873]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[874]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[875]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[876]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[877]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[878]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[879]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[880]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[881]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[882]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[883]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[884]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[885]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[886]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[887]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[888]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[889]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[890]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[891]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[892]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[893]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[894]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[895]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[896]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[897]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[898]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[899]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[900]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[901]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[902]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[903]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[904]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[905]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[906]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[907]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[908]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[909]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[910]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[911]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[912]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[913]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[914]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[915]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[916]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[917]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[918]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[919]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[920]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[921]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[922]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[923]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[924]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[925]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[926]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[927]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[928]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[929]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[930]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[931]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[932]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[933]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[934]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[935]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[936]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[937]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[938]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[939]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[940]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[941]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[942]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[943]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[944]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[945]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[946]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[947]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[948]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[949]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[950]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[951]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[952]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[953]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[954]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[955]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[956]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[957]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[958]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[959]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[960]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[961]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[962]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[963]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[964]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[965]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[966]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[967]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[968]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[969]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[970]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[971]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[972]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[973]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[974]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[975]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[976]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[977]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[978]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[979]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[980]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[981]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[982]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[983]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[984]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[985]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[986]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[987]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[988]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[989]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[990]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[991]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[992]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[993]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[994]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[995]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[996]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[997]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[998]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[999]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1000]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1001]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1002]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1003]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1004]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1005]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1006]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1007]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1008]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1009]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1010]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1011]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1012]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1013]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1014]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1015]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1016]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1017]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1018]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1019]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1020]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1021]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1022]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1023]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1024]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1025]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1026]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1027]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1028]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1029]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1030]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1031]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1032]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1033]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1034]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1035]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1036]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1037]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1038]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1039]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1040]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1041]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1042]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1043]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1044]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1045]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1046]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1047]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1048]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1049]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1050]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1051]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1052]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1053]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1054]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1055]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1056]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1057]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1058]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1059]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1060]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1061]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1062]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1063]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1064]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1065]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1066]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1067]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1068]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1069]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1070]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1071]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1072]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1073]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1074]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1075]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1076]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1077]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1078]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1079]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[1080]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1081]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1082]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1083]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1084]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1085]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1086]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1087]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1088]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1089]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1090]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1091]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1092]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1093]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1094]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1095]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1096]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1097]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1098]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1099]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1100]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1101]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1102]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1103]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1104]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1105]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1106]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1107]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1108]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1109]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1110]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1111]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1112]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1113]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1114]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1115]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1116]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1117]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1118]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1119]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1120]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1121]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1122]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1123]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1124]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1125]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1126]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1127]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1128]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1129]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1130]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1131]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1132]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1133]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1134]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1135]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1136]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1137]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1138]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1139]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[1272]" -type "float3" 1.9073486e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1274]" -type "float3" 1.7881393e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1275]" -type "float3" 1.9073486e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1277]" -type "float3" 1.9669533e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1287]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1289]" -type "float3" 2.6226044e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1290]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1292]" -type "float3" 2.6226044e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1304]" -type "float3" 1.9073486e-006 0 0 ;
	setAttr ".pt[1308]" -type "float3" 1.7881393e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1309]" -type "float3" 1.8924475e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1314]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1315]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1319]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1320]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1324]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1325]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1326]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1328]" -type "float3" 1.9073486e-006 0 0 ;
	setAttr ".pt[1329]" -type "float3" 2.6226044e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1330]" -type "float3" 2.6226044e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1332]" -type "float3" 1.9669533e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1336]" -type "float3" 1.9073486e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1337]" -type "float3" 1.9073486e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1338]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1340]" -type "float3" 1.7881393e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1341]" -type "float3" 1.7881393e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1372]" -type "float3" 1.9073486e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1373]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1374]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1375]" -type "float3" 1.9073486e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1377]" -type "float3" 1.8924475e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1378]" -type "float3" 1.9073486e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1390]" -type "float3" 2.1457672e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1391]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1394]" -type "float3" 1.8775463e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1395]" -type "float3" 1.8775463e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1396]" -type "float3" 1.9669533e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1397]" -type "float3" 1.9669533e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1406]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1409]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1410]" -type "float3" 1.8775463e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1411]" -type "float3" 1.8775463e-006 0 -1.4901161e-008 ;
	setAttr ".pt[1434]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1435]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1436]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1437]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1438]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1439]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1440]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1441]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1442]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1443]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1444]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1445]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1446]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1447]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1448]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1449]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1450]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1451]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1452]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1453]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1454]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1455]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1456]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1457]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1458]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1459]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1460]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1461]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1462]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1463]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1464]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1465]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1466]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1467]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1468]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1469]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1470]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1471]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1472]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1473]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1474]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1475]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1476]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1477]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1478]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1479]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1480]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1481]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1482]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1483]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1484]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1485]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1486]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1487]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1488]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1489]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1490]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1491]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1492]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1493]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1494]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1495]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1496]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1497]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1498]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1499]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1500]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1501]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1502]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1503]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1504]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1505]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1506]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1507]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1508]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1509]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1510]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1511]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1512]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1513]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1514]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1515]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1516]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1517]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1518]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1519]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1520]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1521]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1522]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1523]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1524]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1525]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1526]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1527]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1528]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1529]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1530]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1531]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1532]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1533]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1534]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1535]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1536]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1537]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1538]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1539]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1540]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1541]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1542]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1543]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1544]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1545]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1546]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1547]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1548]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1549]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1550]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1551]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1552]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1553]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1554]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1555]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1556]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1557]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1558]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1559]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1560]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1561]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1562]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1563]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1564]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1565]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1566]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1567]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1568]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1569]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1570]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1571]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1572]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1573]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1574]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1575]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1576]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1577]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1578]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1579]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1580]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1581]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1582]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1583]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1584]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1585]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1586]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1587]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1588]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1589]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1590]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1591]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1592]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1593]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1934]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1935]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1936]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1937]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1938]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1939]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1940]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1941]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1942]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1943]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1944]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1945]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1946]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1947]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1948]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1949]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1950]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1951]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1952]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1953]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1954]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1955]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1956]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1957]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1958]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1959]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1960]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1961]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1962]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1963]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1964]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1965]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1966]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1967]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1968]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1969]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1970]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1971]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1972]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1973]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1974]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1975]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1976]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1977]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1978]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1979]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1980]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1981]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1982]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1983]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1984]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1985]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1986]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1987]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1988]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1989]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1990]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1991]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1992]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1993]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1994]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1995]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1996]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1997]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1998]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[1999]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2000]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2001]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2002]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2003]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2004]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2005]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2006]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2007]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2008]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2009]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2010]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2011]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2012]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2013]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2014]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2015]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2016]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2017]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2018]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2019]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2020]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2021]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2022]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2023]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2024]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2025]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2026]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2027]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2028]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2029]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2030]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2031]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2032]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2033]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2034]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2035]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2036]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2037]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2038]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2039]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2040]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2041]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2042]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2043]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2044]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2045]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2046]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2047]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2048]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2049]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2050]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2051]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2052]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2053]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2965]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2966]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2967]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2968]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2969]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2970]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2971]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2972]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2973]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2974]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2975]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2976]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2977]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2978]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2979]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2980]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2981]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2982]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2983]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2984]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2985]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2986]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2987]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2988]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2989]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2990]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2991]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2992]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2993]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2994]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2995]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2996]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2997]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2998]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[2999]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3000]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3001]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3002]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3003]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3004]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3005]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3006]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3007]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3008]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3009]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3010]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3011]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3012]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3013]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3014]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3015]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3016]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3017]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3018]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3019]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3020]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3021]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3022]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3023]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3024]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3025]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3026]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3027]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3028]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3029]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3030]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3031]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3032]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3033]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3034]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3035]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3036]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3037]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3038]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3039]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3040]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3041]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3042]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3043]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3044]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3045]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3046]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3047]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3048]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3049]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3050]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3051]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3052]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3053]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3054]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3055]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3056]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3057]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3058]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3059]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3060]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3061]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3062]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3063]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3064]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3065]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3066]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3067]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3068]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3069]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3070]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3071]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3072]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3073]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3074]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3075]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3076]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3077]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3078]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3079]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3080]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3081]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3082]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3083]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3084]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3085]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3086]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3087]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3088]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3089]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3090]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3091]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3092]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3093]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3094]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3095]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3096]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3097]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3098]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3099]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3100]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3101]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3102]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3103]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3104]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3105]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3106]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3107]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3108]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3109]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3110]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3111]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3112]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3113]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3114]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3115]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3116]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3117]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3118]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3119]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3120]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3121]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3122]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3123]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3124]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3125]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3126]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3127]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3128]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3129]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3130]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3131]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3132]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3133]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3134]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3135]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3136]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3137]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3138]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3139]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3140]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3141]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3142]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3143]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3144]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3145]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3146]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3147]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3148]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3149]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3150]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3151]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3152]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3153]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3154]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3155]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3156]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3157]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3158]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3159]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3160]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3161]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3162]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3163]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3164]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3165]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3166]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3167]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3168]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3169]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3170]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3171]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3172]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3173]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3174]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3175]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3176]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3177]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3178]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3179]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3180]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3181]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3182]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3183]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3184]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3185]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3186]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3187]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3188]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3189]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3190]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3191]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3192]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3193]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3194]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3195]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3196]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3197]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3198]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3199]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3200]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3201]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3202]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3203]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3204]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3205]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3206]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3207]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3208]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3209]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3210]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3211]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3212]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3213]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3214]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3215]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3216]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3217]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3218]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3219]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3220]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3221]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3222]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3223]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3224]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3225]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3226]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3227]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3228]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3229]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3230]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3231]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3232]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3233]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3234]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3235]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3236]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3237]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3238]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3239]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3240]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3241]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3242]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3243]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".pt[3244]" -type "float3" 2.1457672e-006 0 -2.9802322e-008 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "43B9E0BD-154E-F773-D8E9-B3B254F16CB0";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "C62B5C94-3F4B-6D6F-70F7-40BA6AB3FDB1";
createNode displayLayer -n "defaultLayer";
	rename -uid "A6F49DC5-0345-EE70-AD34-4B9D02A9408A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AEA1AA40-6449-ED85-011B-6190EF5E1510";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A9B1997D-2444-F6BD-4411-3888880ED18C";
	setAttr ".g" yes;
createNode reference -n "IMG_1211RN";
	rename -uid "A2313D91-A54B-F2E4-3E14-9A8E92B7140D";
	setAttr ".ed" -type "dataReferenceEdits" 
		"IMG_1211RN"
		"IMG_1211RN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "55ABBB4D-BD42-C55E-241B-68B0A793E0A9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 705\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 705\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 705\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 705\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 705\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 705\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1416\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1416\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1416\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1416\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D1594BD6-0344-8BAD-A495-CCA51BEBF054";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "678C6B69-394B-D7AD-C222-B2A59B58848F";
	setAttr ".sh" 2;
	setAttr ".sd" 8;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "810B2AF5-784C-DD83-87D3-579A71EB022A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 0.42769539361709197 -0.089697278262447902 0
		 0 1.7473384587021941 8.3316754349032411 0 0 5.5856150722622733 -2.3980127535366829 1;
	setAttr ".wt" 0.47060573101043701;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "2EF5A9A3-8948-7D78-B4A5-43ABC4679F2D";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk[4:53]" -type "float3"  0 0.10296445 0.0011084962
		 0 0.10296445 0.0011084962 0 0.31818467 0.0034255171 0 0.31818467 0.0034255171 0 0.13909663
		 0.032865118 0 0.13909663 0.032865118 0 -0.2954343 0.065332897 0 -0.2954343 0.065332897
		 0 -1.21532154 0.07250873 0 -1.21532154 0.07250873 0 -2.59468031 0.073017322 0 -2.59468031
		 0.073017322 0 -3.59989166 0.12010498 0 -3.59989166 0.12010498 0 -4.48344755 0.17367546
		 0 -4.48344755 0.17367546 0 -5.66518641 0.19865251 0 -5.66518784 0.19865258 0 -5.71477509
		 0.20757087 0 -5.71477652 0.20757094 0 -5.74119663 0.21403803 0 -5.74119806 0.2140381
		 0 -4.78581095 0.17042033 0 -4.78581095 0.17042033 0 -3.88965201 0.11698548 0 -3.88965201
		 0.11698548 0 -2.94743204 0.069219671 0 -2.94743204 0.069219671 0 -1.41308939 0.070379592
		 0 -1.41308939 0.070379592 0 -0.37918371 0.064431258 0 -0.37918371 0.064431258 0 0.079275578
		 0.03222109 0 0.079275578 0.03222109 0 0.29975402 0.0032270961 0 0.29975402 0.0032270961
		 0 -4.62203121 0.17218353 0 -3.70067787 0.11901994 0 -2.70806479 0.071796648 0 -1.28710675
		 0.071735896 0 -0.2954343 0.065332897 0 0.13909663 0.032865118 0 0.33722326 0.0036304831
		 0 -4.62203121 0.17218353 0 -3.70067787 0.11901994 0 -2.70806479 0.071796648 0 -1.28710675
		 0.071735896 0 -0.2954343 0.065332897 0 0.13909663 0.032865118 0 0.33722326 0.0036304831;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "8915A3F1-594A-7F5D-6452-F6B2393CD87F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 0.42769539361709197 -0.089697278262447902 0
		 0 1.7473384587021941 8.3316754349032411 0 0 5.5856150722622733 -2.3980127535366829 1;
	setAttr ".wt" 0.51391881704330444;
	setAttr ".dr" no;
	setAttr ".re" 104;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "C18DAA55-2E4E-B98F-A8FF-09B532BFE3A2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 0.42769539361709197 -0.089697278262447902 0
		 0 1.7473384587021941 8.3316754349032411 0 0 5.5856150722622733 -2.3980127535366829 1;
	setAttr ".wt" 0.46030083298683167;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "BAE3C074-5547-C4F5-28A9-82AD96FBC2C6";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyUnite -n "polyUnite1";
	rename -uid "6553E6A7-F942-C767-489B-D39048152015";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "E4D51EBC-0948-4CDC-97D6-0D968A16361D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "B93BEA00-6643-BC66-2A29-02BFEB9FD886";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId2";
	rename -uid "6E6F86ED-AE45-682E-7731-1EB4F45E7907";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "59FB2A05-0E48-B8BA-0344-32897946BF54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "3A6DA6F4-A741-01C9-D54D-3A8EF66BC70D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:111]";
createNode groupId -n "groupId4";
	rename -uid "EE6B0F8E-BE47-1E2C-F19F-7CB108EE381B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F2750B09-604D-469C-CA31-D4ABF603ACFB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "D78836D7-214C-1288-E166-DFBBC2330674";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:171]";
createNode polyCylinder -n "polyCylinder2";
	rename -uid "8A58CEE3-9344-3D4B-AF95-3F833B43D49B";
	setAttr ".sh" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "E23F6A14-FA4C-3A7F-23C9-42BB351C8D93";
	setAttr ".dc" -type "componentList" 3 "f[20:27]" "f[40:47]" "f[60:67]";
createNode polyTweak -n "polyTweak2";
	rename -uid "6825203E-3D49-AC40-B56E-D39F22F9FBE4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[46]" -type "float3" 0.173915 0.045770578 0.015183621 ;
	setAttr ".tk[96]" -type "float3" 0.043675408 0.088977858 0 ;
	setAttr ".tk[135]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[136]" -type "float3" 0 0.19661555 0.11193569 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "290762F8-B342-3376-A638-4096A216F296";
	setAttr ".dc" -type "componentList" 4 "f[60:61]" "f[130:131]" "f[150:151]" "f[170:171]";
createNode polyUnite -n "polyUnite2";
	rename -uid "65CF7382-9D49-7B6F-35D1-EDA7B8087159";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId6";
	rename -uid "2531CA73-C943-928F-E87F-BA99FCC42597";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "ED2C2F14-5946-4F4B-7FB2-2D81CDBBDFE4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:115]";
createNode groupId -n "groupId7";
	rename -uid "C07586CB-954B-38D2-7D31-C391D32D0619";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "7FC9422C-C942-4531-7047-629423B7CD50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:279]";
	setAttr ".gi" 11;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "5D21797B-2B43-F476-EA49-FA990D2723E9";
	setAttr ".ics" -type "componentList" 1 "vtx[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "7DE887FB-984C-017C-37C6-F8857E7F4030";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[150]" -type "float3" -0.014818966 -0.0043077469 0.0034944117 ;
	setAttr ".tk[151]" -type "float3" -0.0024656057 -0.0012059212 0.023196489 ;
	setAttr ".tk[152]" -type "float3" -0.0067017674 0.0072665215 0.0080769062 ;
	setAttr ".tk[153]" -type "float3" 0.013535917 0.018545151 -0.016268671 ;
	setAttr ".tk[154]" -type "float3" -0.014690399 0.055579185 -0.0077807903 ;
	setAttr ".tk[155]" -type "float3" 0.0021673441 0.087607861 -0.00084221363 ;
	setAttr ".tk[204]" -type "float3" 0.01004234 -0.00043964386 0.0086941607 ;
	setAttr ".tk[222]" -type "float3" 0.053717762 0.0050215125 0.0010249615 ;
	setAttr ".tk[223]" -type "float3" 0.032552548 0.027242661 -0.0017422438 ;
	setAttr ".tk[241]" -type "float3" -0.018927261 -0.0036735535 -0.0052571297 ;
	setAttr ".tk[242]" -type "float3" -0.014966011 0.0085878372 0.0049374104 ;
	setAttr ".tk[260]" -type "float3" 0.0058130622 0.012033463 0.03819859 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "19D12623-1E4A-40B3-088D-DC817A35F40B";
	setAttr ".ics" -type "componentList" 2 "e[170]" "e[210]";
	setAttr ".cv" yes;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "594F69A5-814A-2A8C-7CC6-A6A4EB968A67";
	setAttr ".ics" -type "componentList" 2 "vtx[73]" "vtx[240]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "5A493589-1948-FE3A-B4DF-F49DD914A61E";
	setAttr ".ics" -type "componentList" 2 "vtx[54]" "vtx[152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "C37DDF07-5A48-8904-64AF-58B158465C88";
	setAttr ".ics" -type "componentList" 3 "vtx[39]" "vtx[41]" "vtx[150]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "BCACF57E-524C-75AF-17DB-34A9395D23EB";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "EFD55016-144C-C7C9-2BEC-738FA95FDF57";
	setAttr ".ics" -type "componentList" 3 "vtx[26]" "vtx[61:62]" "vtx[254]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "8F170208-0040-AE7D-FF63-D582F6CB94D9";
	setAttr ".ics" -type "componentList" 3 "vtx[24]" "vtx[64]" "vtx[217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "D2C6AA3D-004D-CB54-1A90-80911CC0B8D5";
	setAttr ".ics" -type "componentList" 3 "vtx[22]" "vtx[78]" "vtx[235]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "566C3223-0344-9A3C-5BD3-BC807E43162A";
	setAttr ".ics" -type "componentList" 3 "vtx[20]" "vtx[45]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "D38121A4-9E4A-E1E8-0119-5F9F6135B821";
	setAttr ".ics" -type "componentList" 3 "vtx[40]" "vtx[77]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "84262A8D-9647-F813-36DB-A69813A5E79F";
	setAttr ".ics" -type "componentList" 3 "vtx[53]" "vtx[56]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "E5E501A5-6E44-D4B1-6C8F-F38D311AAA11";
	setAttr ".ics" -type "componentList" 2 "vtx[66]" "vtx[214]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "3015B25C-B84D-3A48-A035-708414099932";
	setAttr ".ics" -type "componentList" 3 "vtx[56]" "vtx[70]" "vtx[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polySplitVert -n "polySplitVert1";
	rename -uid "28BCB5B7-2649-DBC2-A192-43AF83A7B5BC";
	setAttr ".ics" -type "componentList" 1 "vtx[66]";
createNode polyTweak -n "polyTweak4";
	rename -uid "32EAAE04-7E45-C316-4952-6B9840CEB1ED";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -0.027799496 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.022062473 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.020316897 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.022045242 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.027799496 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.022062473 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.020316897 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.022045242 0 ;
	setAttr ".tk[54]" -type "float3" 0 0 -1.0989606e-007 ;
	setAttr ".tk[67]" -type "float3" 0 0.039455857 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.045082692 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.051089361 0 ;
	setAttr ".tk[70]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.044214543 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.043435942 0 ;
	setAttr ".tk[73]" -type "float3" 0 2.3469329e-007 1.8626451e-008 ;
	setAttr ".tk[86]" -type "float3" 0 0.039455857 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.045082692 0 ;
	setAttr ".tk[88]" -type "float3" 0 0.051089361 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.044214543 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.043435942 0 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "C2489CA9-7A42-DDBC-E683-D8A14F9D5466";
	setAttr ".ics" -type "componentList" 1 "vtx[249:250]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "A2BBF81A-0047-05E3-8B86-56861713C7FB";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[66]" -type "float3" 0 0 -0.013868778 ;
	setAttr ".tk[247]" -type "float3" 0 0 -0.013868778 ;
	setAttr ".tk[248]" -type "float3" 0 0 0.0073447018 ;
	setAttr ".tk[249]" -type "float3" 0 -0.085384108 -0.064070508 ;
	setAttr ".tk[250]" -type "float3" 0 -0.085383944 -0.064070433 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "0004308A-7341-DDDD-DCEF-8880278023C3";
	setAttr ".ics" -type "componentList" 2 "vtx[66]" "vtx[247:248]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "D90F1A47-D644-2A3A-46A5-8DB2E6F75E1F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[248:249]" -type "float3"  -2.3283064e-010 8.5681677e-008
		 -0.021213487 0 0 -0.076487526;
createNode polySplitVert -n "polySplitVert2";
	rename -uid "D1CCDD05-4E4F-355F-223B-1DB90CDB339B";
	setAttr ".ics" -type "componentList" 1 "vtx[53]";
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "028387AE-2947-18D9-01B3-A6B49918A77A";
	setAttr ".ics" -type "componentList" 2 "vtx[43]" "vtx[249:250]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "A459DFC7-2B4F-19E4-3D57-B7813D4D91F6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[53]" -type "float3" 0 0.035899159 -0.032767233 ;
	setAttr ".tk[248]" -type "float3" 0 0 0.0081549529 ;
	setAttr ".tk[249]" -type "float3" 0 0 -0.032767233 ;
	setAttr ".tk[250]" -type "float3" 0 0 -0.032767233 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "74BB72A9-A542-555D-89D4-EE8FFCE37B1E";
	setAttr ".ics" -type "componentList" 3 "vtx[44]" "vtx[53]" "vtx[248]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "0C8F9A88-494F-5706-4328-B59C0DDE9F34";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[43]" -type "float3" 0 0 -0.086869426 ;
	setAttr ".tk[53]" -type "float3" 0 -0.035899162 0.040922046 ;
	setAttr ".tk[249]" -type "float3" 0 0 -0.086869426 ;
createNode polySplitVert -n "polySplitVert3";
	rename -uid "A2493319-F747-D9A8-DFF0-99AC9F4D8927";
	setAttr ".ics" -type "componentList" 1 "vtx[40]";
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "F2C393ED-7847-E0BB-6B9E-1E95DA0BE229";
	setAttr ".ics" -type "componentList" 1 "vtx[250:251]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "52E4A791-6B4A-45B4-0FBD-32BC39B414FC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[249:251]" -type "float3"  0 -0.013404994 0 0 0.0094647408
		 -0.040007584 0 0.0094649168 -0.040007629;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "EFEF7FC5-D54B-51FB-53DA-3180FE0DA093";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[249]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "A8D5C933-CB41-A8C4-BF24-1391179BAAB4";
	setAttr ".uopa" yes;
	setAttr ".tk[249]" -type "float3"  0 0.013404846 0;
createNode polySplitVert -n "polySplitVert4";
	rename -uid "D1B534A0-3147-12FE-1CD8-5FBB27B91D04";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[20]";
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "67D77178-3D46-4E16-147C-30A07D47A4B2";
	setAttr ".ics" -type "componentList" 1 "vtx[253:254]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "B1107168-9D45-1CD8-6F4F-00AD8081F524";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[253:254]" -type "float3"  0 0.031124707 -0.036443867
		 0 0.031124517 -0.036444031;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "ABD9D28A-F544-0933-85D8-C1BCD6371AB8";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[254:255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "13577DBE-F04F-0082-E67F-22A08C98D9FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.017631143 6.8718686 1.9093276 ;
	setAttr ".rs" 1017683921;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.041726350784301758 6.8599233627319336 1.8696173429489136 ;
	setAttr ".cbx" -type "double3" 0.0064640641212463379 6.8838133811950684 1.9490379095077515 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "21BC6033-4748-F509-728A-FB9F117C60A5";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0 -0.0022759854 ;
	setAttr ".tk[249]" -type "float3" -0.073390856 0 -0.04806 ;
	setAttr ".tk[253]" -type "float3" -0.10129348 0 0 ;
createNode groupParts -n "groupParts6";
	rename -uid "B1050CB8-1445-4AFE-EB99-84A8FC4E8C5B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:278]";
	setAttr ".gi" 12;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "E07CC8F4-E642-0902-B57C-E6A1E38BBB3E";
	setAttr ".ics" -type "componentList" 2 "vtx[53]" "vtx[254]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "A5CE1D9C-AE43-A8C7-AB4A-4EB7B75E146E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[254:255]" -type "float3"  -3.7252903e-009 -0.19269986
		 0.054176271 0 -0.19308181 0.050765455;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "0F50A5C6-CA4C-65CC-AB4D-239783314C12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[535]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.017631145 6.6789775 1.9617984 ;
	setAttr ".rs" 1074825890;
	setAttr ".lt" -type "double3" -0.059897418088857707 -0.17983215033334338 -1.2628786905111156e-015 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.041726350784301758 6.6672234535217285 1.9203827381134033 ;
	setAttr ".cbx" -type "double3" 0.0064640603959560394 6.6907315254211426 2.0032141208648682 ;
createNode groupParts -n "groupParts7";
	rename -uid "9745FA0C-3441-2D1F-3C61-9B96A94EC123";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:279]";
	setAttr ".gi" 13;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "40C5B931-C948-65E9-9333-6E87A5FDC635";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "6285AB91-7348-11A8-00AD-90AE4742E282";
	setAttr ".uopa" yes;
	setAttr ".tk[255]" -type "float3"  0.015758252 -0.005821228 -0.0034844205;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "9DF0F67B-E74A-1105-D111-D5978C487BAA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[537]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.025510281 6.4891882 1.9875382 ;
	setAttr ".rs" 1570223650;
	setAttr ".lt" -type "double3" -0.068210173660996465 -0.17630590934742871 7.5633943552588789e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.057484611868858337 6.4745235443115234 1.9478647708892822 ;
	setAttr ".cbx" -type "double3" 0.006464049220085144 6.5038528442382812 2.0272116661071777 ;
createNode groupId -n "groupId8";
	rename -uid "EB5B019C-2A48-A10A-D0B6-92A2E721315A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "E61D86C2-404C-0C11-595A-CFAEE79BA348";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:280]";
createNode polyMergeVert -n "polyMergeVert24";
	rename -uid "3C22ADAD-8A41-581E-D2EF-1BB2024A616B";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak15";
	rename -uid "626443B0-9741-61BC-7301-C885B225F8AB";
	setAttr ".uopa" yes;
	setAttr ".tk[256]" -type "float3"  0.002669974 -0.0052084923 0.0058665276;
createNode polyMergeVert -n "polyMergeVert25";
	rename -uid "ADFA5A76-A14C-1420-B7B3-289226D8B71A";
	setAttr ".ics" -type "componentList" 3 "vtx[21]" "vtx[33]" "vtx[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "34581F7B-B64E-943E-831D-97A80C6FD22A";
	setAttr ".uopa" yes;
	setAttr ".tk[256]" -type "float3"  0.018428229 -0.077903092 -0.0057998896;
createNode polyTweak -n "polyTweak17";
	rename -uid "9ABD7B14-CD4E-6C7A-A097-1A82EFF6C010";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[21]" -type "float3" 0 0.021594588 -0.0060256524 ;
	setAttr ".tk[67]" -type "float3" 0.016242994 -0.036126185 0 ;
	setAttr ".tk[247]" -type "float3" -0.029642647 0.061953306 0.020960812 ;
	setAttr ".tk[253]" -type "float3" 0.070381679 0 -0.026025297 ;
	setAttr ".tk[254]" -type "float3" 0 -0.031121669 0 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "B32FC6BA-0242-ECD0-095B-2FA2852992AC";
	setAttr ".dc" -type "componentList" 1 "f[278:280]";
createNode polySplitRing -n "polySplitRing4";
	rename -uid "4ECB20DA-1341-66D9-79ED-90BB7E009F1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[413:414]" "e[416]" "e[418]" "e[420]" "e[422]" "e[424]" "e[426]" "e[428]" "e[430]" "e[432]" "e[434]" "e[436]" "e[438]" "e[440]" "e[442]" "e[444]" "e[446]" "e[448]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.29741784930229187;
	setAttr ".re" 413;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "9785473D-004C-0C27-B7A2-DC8D09E767B7";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[21]" -type "float3" 0 -0.014854887 0 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.093052313 ;
	setAttr ".tk[89]" -type "float3" 0 0.047446728 0 ;
	setAttr ".tk[247]" -type "float3" 0.054124288 -0.025071617 0 ;
	setAttr ".tk[248]" -type "float3" 0.037574306 0 0 ;
	setAttr ".tk[249]" -type "float3" 0.099350877 0 0 ;
	setAttr ".tk[253]" -type "float3" 0.011556629 -0.0089846365 0.068696976 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "4F303694-B54C-30B5-1E54-D7BB65F224A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[486:487]" "e[489]" "e[491]" "e[493]" "e[495]" "e[497]" "e[499]" "e[501]" "e[503]" "e[505]" "e[507]" "e[509]" "e[511]" "e[513]" "e[515]" "e[517]" "e[519]" "e[521]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.67166286706924438;
	setAttr ".dr" no;
	setAttr ".re" 486;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "1AF1DA9F-544D-DF44-9D0B-109D9CDDEABF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[486:487]" "e[489]" "e[491]" "e[493]" "e[495]" "e[497]" "e[499]" "e[501]" "e[503]" "e[505]" "e[507]" "e[509]" "e[511]" "e[513]" "e[515]" "e[517]" "e[519]" "e[521]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.6044844388961792;
	setAttr ".dr" no;
	setAttr ".re" 486;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	rename -uid "4BAADAC9-B345-1BA6-2425-23911CF7A62F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[254]" -type "float3" 0.0015926808 0.056772709 -0.016824484 ;
	setAttr ".tk[272]" -type "float3" 0.045530349 -0.022500515 -0.0026297569 ;
	setAttr ".tk[273]" -type "float3" 0.0011026859 0.034279346 -0.059544563 ;
	setAttr ".tk[291]" -type "float3" -0.039364457 -0.021084785 -0.0046058893 ;
createNode polySplitVert -n "polySplitVert5";
	rename -uid "47531675-CD4F-9A72-6B76-B0B9C3539320";
	setAttr ".ics" -type "componentList" 1 "vtx[26]";
createNode polyTweak -n "polyTweak20";
	rename -uid "D60F22AF-8C40-C420-6F98-0DB19003819C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[26]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".tk[72]" -type "float3" 0.0084247421 -0.010461057 0.037446141 ;
createNode polyMergeVert -n "polyMergeVert26";
	rename -uid "2036A8D5-FE4F-46CE-18E2-8089108C425A";
	setAttr ".ics" -type "componentList" 1 "vtx[312:313]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "22EB2C50-594A-117F-4E2D-5ABA81676492";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[26]" -type "float3" -0.0036317282 0 -0.0092390189 ;
	setAttr ".tk[311]" -type "float3" 0.0068079699 0.0034298885 0 ;
	setAttr ".tk[312]" -type "float3" 0 -0.00098131923 0.0076794624 ;
	setAttr ".tk[313]" -type "float3" 0 -0.00098148058 0.0076794345 ;
createNode polyMergeVert -n "polyMergeVert27";
	rename -uid "0BA10AE0-5B4B-99AE-3009-D4BDA567A6A5";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[311]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "44F42EBB-8945-4C8E-C983-C0AE0F6C66E4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[311:312]" -type "float3"  -0.010439694 -0.0034298897
		 -0.0092390776 0 -0.015689405 0;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "3D799508-ED41-BF6B-E9DF-13AC4FFF440E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[533:534]" "e[536]" "e[538]" "e[540]" "e[542]" "e[544]" "e[546]" "e[548]" "e[550]" "e[552]" "e[554]" "e[556]" "e[558]" "e[560]" "e[562]" "e[564]" "e[566]" "e[568]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50173419713973999;
	setAttr ".dr" no;
	setAttr ".re" 533;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak23";
	rename -uid "01266CAC-5044-87BA-0D50-CE9771DF0DE3";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[26]" -type "float3" -0.071426556 -0.0096920356 0.083273925 ;
	setAttr ".tk[247]" -type "float3" -0.056429062 0.036266327 0.02630794 ;
	setAttr ".tk[310]" -type "float3" -0.057171494 0.00040483475 0.036412597 ;
createNode polySplitVert -n "polySplitVert6";
	rename -uid "F39343AB-D84C-213A-DECA-F4AC4E6D0B18";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[48]";
createNode polyTweak -n "polyTweak24";
	rename -uid "42735E5F-4343-9A15-5A9A-B09516B9B58B";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[22]" -type "float3" -0.0066653215 0 0 ;
	setAttr ".tk[253]" -type "float3" 0 0 -0.079454079 ;
	setAttr ".tk[312]" -type "float3" 0.0013164878 0.015709877 -0.01346159 ;
createNode polyMergeVert -n "polyMergeVert28";
	rename -uid "4A6B2CD4-CB45-D1E8-F214-D09A267C5F08";
	setAttr ".ics" -type "componentList" 4 "vtx[22]" "vtx[48]" "vtx[331]" "vtx[334:336]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak25";
	rename -uid "1160A2C3-2F46-1027-E1E5-0BBCAF1246E1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[22]" -type "float3" 0 0.010019578 0 ;
	setAttr ".tk[331]" -type "float3" 0 0.010019779 0 ;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "45CA4406-A748-1045-69B2-B4A2291039DF";
	setAttr ".ics" -type "componentList" 1 "vtx[331:332]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "D33B5308-1546-130A-2CBF-60B96E3332C7";
	setAttr ".ics" -type "componentList" 2 "e[156]" "e[195]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "1D51614B-3F44-2910-236E-939C465F9177";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[22]" -type "float3" 0.081723675 -0.018726654 0.068009287 ;
	setAttr ".tk[67]" -type "float3" -0.031769779 0.041645959 0 ;
	setAttr ".tk[87]" -type "float3" -1.4901161e-008 -1.8626451e-009 5.5879354e-009 ;
	setAttr ".tk[88]" -type "float3" 2.2351742e-008 0 7.4505806e-009 ;
	setAttr ".tk[89]" -type "float3" -1.4901161e-008 3.4924597e-010 1.8626451e-009 ;
	setAttr ".tk[90]" -type "float3" 7.4505806e-009 2.7939677e-009 7.4505806e-009 ;
	setAttr ".tk[91]" -type "float3" -3.7252903e-009 0 7.4505806e-009 ;
	setAttr ".tk[247]" -type "float3" 0.031947434 0.012236245 0.079420507 ;
	setAttr ".tk[248]" -type "float3" -0.037574306 1.0244548e-007 0.12779152 ;
	setAttr ".tk[249]" -type "float3" -0.025960021 -0.0094647557 0.088067502 ;
	setAttr ".tk[253]" -type "float3" 0.019355174 -0.022140067 0.070950486 ;
	setAttr ".tk[330]" -type "float3" 0.040460184 0.01494451 0.023684263 ;
createNode polyMergeVert -n "polyMergeVert30";
	rename -uid "F29CB062-1E48-0A97-5CFA-E79DBC8F6B10";
	setAttr ".ics" -type "componentList" 13 "vtx[0:10]" "vtx[20:30]" "vtx[39:43]" "vtx[52:56]" "vtx[65:75]" "vtx[82:93]" "vtx[100:103]" "vtx[245:247]" "vtx[251:252]" "vtx[270:271]" "vtx[289:290]" "vtx[308:310]" "vtx[328:329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak27";
	rename -uid "9E6CA3C6-6D4C-367B-F265-6790A957848B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[66]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".tk[67]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".tk[84]" -type "float3" -0.0069471761 0 -0.048590444 ;
	setAttr ".tk[245]" -type "float3" 0 5.0291419e-008 6.146729e-008 ;
createNode createColorSet -n "createColorSet1";
	rename -uid "D71F9B2D-F84B-1131-8862-418A2A72F293";
	setAttr ".colos" -type "string" "SculptFreezeColorTemp";
	setAttr ".clam" no;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "6CBBFF17-AF4B-4BB7-D50D-4BB3DE76E159";
	setAttr ".ics" -type "componentList" 1 "f[94:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 7.0891685 2.0341661 ;
	setAttr ".rs" 2112972376;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65547990798950195 7.0526227951049805 1.6995178461074829 ;
	setAttr ".cbx" -type "double3" 0.023069113492965698 7.1257143020629883 2.3688144683837891 ;
createNode polyMergeVert -n "polyMergeVert31";
	rename -uid "63F7A39F-7844-D443-75C5-428EB2E134B9";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[242:244]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak28";
	rename -uid "26DFBD5B-464C-E5BF-A0EE-EDB7F49FFE81";
	setAttr ".uopa" yes;
	setAttr -s 323 ".tk";
	setAttr ".tk[11:176]" -type "float3"  -0.024141988 0 0.050111193 -0.024141988
		 0 0.050111193 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018954305 0 0.0079250233 0.013219122 0 0.050111193
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -4.4703484e-008 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -5.5879354e-009 0 -7.4505806e-009
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 -0.024141988 0 0.050111193 0 -0.026299573 0 0 -0.024985608 0 0 -0.020076513
		 0 0 -0.021016039 0 0 -0.028816836 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".tk[242:333]" -0.024141988 0 0.050111193 -0.024141988 0 0.050111193
		 -0.024141967 0 0.050111383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.024141988 2.9802322e-008 0.050111186 0 1.4901161e-008
		 -3.7252903e-009 0 -0.02629957 1.8626451e-009 -2.3283064e-010 -0.024985597 -1.8626451e-009
		 0 -0.020076495 -5.5879354e-009 -2.3283064e-010 -0.021016024 -1.8626451e-009 -4.6566129e-010
		 -0.028816821 -1.8626451e-009 0 2.2351742e-008 1.8626451e-009 -9.3132257e-010 1.4901161e-008
		 -3.7252903e-009 0 2.2351742e-008 -1.8626451e-009 9.3132257e-010 2.2351742e-008 -1.8626451e-009
		 -4.6566129e-010 1.4901161e-008 -1.8626451e-009 2.3283064e-010 7.4505806e-009 -1.8626451e-009
		 0 1.4901161e-008 -1.8626451e-009 -2.3283064e-010 7.4505806e-009 -1.8626451e-009 0
		 1.4901161e-008 -1.8626451e-009 9.3132257e-010 2.2351742e-008 -1.8626451e-009 0 2.2351742e-008
		 0 -9.3132257e-010 1.4901161e-008 -3.7252903e-009;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "C57EAE79-6A4C-48E6-1A34-0883D5354F37";
	setAttr ".ics" -type "componentList" 1 "f[94:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 7.0825191 2.0341661 ;
	setAttr ".rs" 1377118068;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65547990798950195 7.0393233299255371 1.6995178461074829 ;
	setAttr ".cbx" -type "double3" 0.023069113492965698 7.1257143020629883 2.3688144683837891 ;
createNode polyTweak -n "polyTweak29";
	rename -uid "7673C0E3-7D47-05E6-52B5-1094FBC4D741";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[11]" -type "float3" 0.01078435 -0.0043246355 -0.037877142 ;
	setAttr ".tk[12]" -type "float3" 0.01277839 -0.0043352703 -0.034841143 ;
	setAttr ".tk[29]" -type "float3" -0.026246412 0 -0.0082423231 ;
	setAttr ".tk[30]" -type "float3" -0.019058537 -0.0031400004 -0.046433046 ;
	setAttr ".tk[67]" -type "float3" 0 0.049503725 0 ;
	setAttr ".tk[69]" -type "float3" -0.036936611 0 0 ;
	setAttr ".tk[82]" -type "float3" 0.019958513 0 -0.049180847 ;
	setAttr ".tk[84]" -type "float3" -2.9802322e-008 0 -2.9802322e-008 ;
	setAttr ".tk[87]" -type "float3" -0.034769721 0 0.024249729 ;
	setAttr ".tk[312]" -type "float3" 0.019958572 3.7252903e-009 -0.049180891 ;
	setAttr ".tk[315]" -type "float3" -2.9802322e-008 0 -2.9802322e-008 ;
	setAttr ".tk[318]" -type "float3" -0.034769721 0 0.024249729 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "39B121CE-474C-3EE3-662B-C29BEFA23067";
	setAttr ".ics" -type "componentList" 1 "f[366:383]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 7.1319761 2.0235441 ;
	setAttr ".rs" 170142079;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65547990798950195 7.0393233299255371 1.6782734394073486 ;
	setAttr ".cbx" -type "double3" 0.023069113492965698 7.2246294021606445 2.3688144683837891 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "E10D37C3-3D43-17D5-9D24-B1B1B6B87323";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk[330:348]" -type "float3"  0 0.09891507 -0.021244446
		 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507
		 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446
		 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507
		 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446
		 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507 -0.021244446 0 0.09891507
		 -0.021244446;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "A4199219-AD45-B905-AB0B-CF8F46D318D1";
	setAttr ".ics" -type "componentList" 18 "f[384]" "f[386]" "f[388]" "f[390]" "f[392]" "f[394]" "f[396]" "f[398]" "f[400]" "f[402]" "f[404]" "f[406]" "f[408]" "f[410]" "f[412]" "f[414]" "f[416]" "f[418]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 7.0735188 2.0362298 ;
	setAttr ".rs" 1854053075;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.72139471769332886 7.0213227272033691 1.6365654468536377 ;
	setAttr ".cbx" -type "double3" 0.088983938097953796 7.1257143020629883 2.435894250869751 ;
createNode polyTweak -n "polyTweak31";
	rename -uid "4E88E62F-4C44-DFBC-E3FC-6DAF4A9709F4";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[349:384]" -type "float3"  0.060526319 -0.015416935 -0.027286842
		 0.038743801 -0.01719185 -0.050535418 0.038743801 0.0020255456 -0.054662798 0.060526319
		 0.0038004499 -0.031414244 0.020368814 -0.017310426 -0.059770271 0.020368814 0.0019069668
		 -0.063897654 2.6537719e-009 -0.017595284 -0.06295234 2.6537719e-009 0.001622091 -0.067079738
		 -0.02036879 -0.017874807 -0.059770204 -0.02036879 0.0013425974 -0.06389761 -0.045498867
		 -0.018000804 -0.045824111 -0.045498867 0.0012166072 -0.049951516 -0.062688746 -0.015416935
		 -0.018027354 -0.062688746 0.0038004499 -0.022154754 -0.065914825 -0.012064729 0.0020636863
		 -0.065914825 0.0071526468 -0.0020637366 -0.062688746 -0.0087124445 0.022154776 -0.062688746
		 0.01050495 0.018027356 -0.053326201 -0.0056883544 0.040279143 -0.053326201 0.013528995
		 0.03615173 -0.038743768 -0.0032884348 0.05466276 -0.038743768 0.015928969 0.050535347
		 -0.020368787 -0.0017475248 0.06389761 -0.020368787 0.017469846 0.059770189 7.9613143e-009
		 -0.0012166072 0.067079745 7.9613143e-009 0.018000804 0.062952325 0.020368803 -0.0017475248
		 0.06389761 0.020368803 0.017469846 0.059770189 0.038743772 -0.0032884348 0.05466276
		 0.038743772 0.015928969 0.050535347 0.053326201 -0.0056883544 0.040279143 0.053326201
		 0.013528995 0.03615173 0.062688738 -0.0087124445 0.022154726 0.062688738 0.01050495
		 0.018027307 0.065914825 -0.012064729 0.0020636863 0.065914825 0.0071526468 -0.0020637366;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "D87855A9-DA44-BA82-C329-4D81D4B1D58B";
	setAttr ".ics" -type "componentList" 1 "f[74:93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 6.1044202 2.1949286 ;
	setAttr ".rs" 537260146;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65547990798950195 6.0466241836547852 1.8602805137634277 ;
	setAttr ".cbx" -type "double3" 0.023069113492965698 6.1622161865234375 2.5295770168304443 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "3AD9CF7D-3F41-9A78-D572-4CA77B723332";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0.026493421 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.015411823 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.015160478 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.015572404 0 ;
	setAttr ".tk[11]" -type "float3" 0.007657812 0 0 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.01122964 ;
	setAttr ".tk[385]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[386]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[387]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[388]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[389]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[390]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[391]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[392]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[393]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[394]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[395]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[396]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[397]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[398]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[399]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[400]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[401]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[402]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[403]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[404]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[405]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[406]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[407]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[408]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[409]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[410]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[411]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[412]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[413]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[414]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[415]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[416]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[417]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[418]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[419]" -type "float3" 0 -0.089276887 0.021352131 ;
	setAttr ".tk[420]" -type "float3" 0 -0.089276887 0.021352131 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "FF9475A6-4543-346C-7658-3098EB12C531";
	setAttr ".ics" -type "componentList" 1 "f[456:475]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 6.0541043 2.2069468 ;
	setAttr ".rs" 1185358867;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65547990798950195 5.9459924697875977 1.8602805137634277 ;
	setAttr ".cbx" -type "double3" 0.023069113492965698 6.1622161865234375 2.5536129474639893 ;
createNode polyTweak -n "polyTweak33";
	rename -uid "892FB03B-C24A-50E8-55A8-4F8C580676F1";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[420:440]" -type "float3"  0 -0.10063185 0.024035895
		 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185
		 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895
		 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185
		 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895
		 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185
		 0.024035895 0 -0.10063185 0.024035895 0 -0.10063185 0.024035895;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "253D34F5-1043-7F88-2AFA-A5834314FBA5";
	setAttr ".ics" -type "componentList" 20 "f[476]" "f[478]" "f[480]" "f[482]" "f[484]" "f[486]" "f[488]" "f[490]" "f[492]" "f[494]" "f[496]" "f[498]" "f[500]" "f[502]" "f[504]" "f[506]" "f[508]" "f[510]" "f[512]" "f[514]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 6.1124806 2.1930037 ;
	setAttr ".rs" 666239223;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.70982956886291504 6.0454258918762207 1.8047467470169067 ;
	setAttr ".cbx" -type "double3" 0.077418789267539978 6.179534912109375 2.5812604427337646 ;
createNode polyTweak -n "polyTweak34";
	rename -uid "29489993-FA49-20E0-349A-0D9DC5543246";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[441:480]" -type "float3"  0.051689662 0.0056099654 -0.018491181
		 0.043969847 0.0029072661 -0.033435542 0.051689662 -0.010510607 -0.014640769 0.043969847
		 -0.013213314 -0.029585151 0.03194597 0.0011376262 -0.045295447 0.03194597 -0.014982958
		 -0.041445039 0.016794987 -0.0011982743 -0.052909993 0.016794987 -0.017318854 -0.049059592
		 6.6684485e-009 -0.00057068886 -0.055533774 6.6684485e-009 -0.016691266 -0.051683377
		 -0.016794974 -0.00095895585 -0.052909993 -0.016794974 -0.017079532 -0.049059592 -0.03194594
		 0.0011376262 -0.045295447 -0.03194594 -0.014982958 -0.041445039 -0.043969825 0.002079621
		 -0.033435542 -0.043969825 -0.014040959 -0.029585151 -0.051689614 0.0056099654 -0.018491181
		 -0.051689614 -0.010510607 -0.014640769 -0.054349672 0.0083740866 -0.0019251878 -0.054349672
		 -0.007746479 0.0019252234 -0.051689614 0.011138126 0.014640769 -0.051689614 -0.0049824556
		 0.018491181 -0.044882894 0.012938933 0.031544991 -0.044882894 -0.0031816433 0.035395402
		 -0.033766311 0.014916044 0.042092316 -0.033766311 -0.0012045376 0.045942716 -0.016794968
		 0.016881008 0.049059585 -0.016794968 0.00076042803 0.052909993 6.6684485e-009 0.017318854
		 0.051683377 6.6684485e-009 0.0011982743 0.055533789 0.016794978 0.016881008 0.049059585
		 0.016794978 0.00076042803 0.052909993 0.03194594 0.015610538 0.041445039 0.03194594
		 -0.00051002979 0.045295455 0.043969825 0.01363168 0.029585151 0.043969825 -0.002488896
		 0.033435553 0.051689614 0.011138126 0.014640769 0.051689614 -0.0049824556 0.018491181
		 0.054349672 0.0083740866 -0.0019251878 0.054349672 -0.007746479 0.0019252234;
createNode polyCube -n "polyCube2";
	rename -uid "C3FC9361-184A-50FB-3D07-A69360B5E949";
	setAttr ".sw" 5;
	setAttr ".sh" 3;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak35";
	rename -uid "E4E5C361-B248-3440-5106-0F90D7B0BDB7";
	setAttr ".uopa" yes;
	setAttr -s 98 ".tk";
	setAttr ".tk[0]" -type "float3" 0.22284517 0.39986923 -0.15873709 ;
	setAttr ".tk[1]" -type "float3" 0.13803391 0.39986923 -0.12816568 ;
	setAttr ".tk[2]" -type "float3" 0 0.39986923 -0.031062674 ;
	setAttr ".tk[3]" -type "float3" 0 0.39986923 -0.031062674 ;
	setAttr ".tk[4]" -type "float3" -0.079603091 0.39986923 -0.14122909 ;
	setAttr ".tk[5]" -type "float3" -0.16842866 0.39986923 -0.18219119 ;
	setAttr ".tk[6]" -type "float3" 0.22284517 0.21928312 -0.1923601 ;
	setAttr ".tk[7]" -type "float3" 0.13803391 0.21928312 -0.10375928 ;
	setAttr ".tk[8]" -type "float3" 0.02298064 0.21928312 0.027298685 ;
	setAttr ".tk[9]" -type "float3" -0.02298064 0.21928312 0.027298685 ;
	setAttr ".tk[10]" -type "float3" -0.079603091 0.21928312 -0.11682273 ;
	setAttr ".tk[11]" -type "float3" -0.16842866 0.21928312 -0.20875777 ;
	setAttr ".tk[12]" -type "float3" 0.22284517 0 -0.18570384 ;
	setAttr ".tk[13]" -type "float3" 0.13803391 0 -0.097103007 ;
	setAttr ".tk[14]" -type "float3" 0.02298064 0 0.033954971 ;
	setAttr ".tk[15]" -type "float3" -0.02298064 0 0.033954971 ;
	setAttr ".tk[16]" -type "float3" -0.079603091 0 -0.11016644 ;
	setAttr ".tk[17]" -type "float3" -0.16842866 0 -0.20210148 ;
	setAttr ".tk[18]" -type "float3" 0.22284517 0.060808048 -0.20089352 ;
	setAttr ".tk[19]" -type "float3" 0.11110464 -0.041799802 -0.17032211 ;
	setAttr ".tk[20]" -type "float3" 0 -0.077394024 -0.073219143 ;
	setAttr ".tk[21]" -type "float3" 0 -0.077394024 -0.073219143 ;
	setAttr ".tk[22]" -type "float3" -0.079603091 -0.075482197 -0.1833856 ;
	setAttr ".tk[23]" -type "float3" -0.16842866 0.052737467 -0.2243477 ;
	setAttr ".tk[24]" -type "float3" 0.13803391 0.068959817 -0.10375928 ;
	setAttr ".tk[25]" -type "float3" 0.023520401 0.068959817 -0.10375928 ;
	setAttr ".tk[26]" -type "float3" 0 -0.1805861 0.052722089 ;
	setAttr ".tk[27]" -type "float3" 0 -0.1805861 0.049565937 ;
	setAttr ".tk[28]" -type "float3" 0.0082954261 0.068959817 -0.091655694 ;
	setAttr ".tk[29]" -type "float3" -0.079603091 0.068959817 -0.11682273 ;
	setAttr ".tk[30]" -type "float3" 0 0.085821554 0.0062389653 ;
	setAttr ".tk[31]" -type "float3" -0.12366058 0.085821554 0.0062389653 ;
	setAttr ".tk[32]" -type "float3" 0 -0.16372438 0.0062389653 ;
	setAttr ".tk[33]" -type "float3" 0 -0.16372438 0.0062389653 ;
	setAttr ".tk[34]" -type "float3" 0.13646919 0.085821554 0.0062389653 ;
	setAttr ".tk[35]" -type "float3" 0 0.085821554 0.0062389653 ;
	setAttr ".tk[36]" -type "float3" 0 0.29552135 0 ;
	setAttr ".tk[37]" -type "float3" -0.12366058 0.29552135 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.045975447 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.045975447 0 ;
	setAttr ".tk[40]" -type "float3" 0.13646919 0.29552135 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.29552135 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.28596118 0.0031319 ;
	setAttr ".tk[43]" -type "float3" -0.12366058 0.28596118 0.0031319 ;
	setAttr ".tk[44]" -type "float3" 0 0.036415245 0.0031319 ;
	setAttr ".tk[45]" -type "float3" 0 0.036415245 0.0031319 ;
	setAttr ".tk[46]" -type "float3" 0.13646919 0.28596118 0.0031319 ;
	setAttr ".tk[47]" -type "float3" 0 0.28596118 0.0031319 ;
	setAttr ".tk[48]" -type "float3" 0.085683629 0.10388494 0.13515431 ;
	setAttr ".tk[49]" -type "float3" 0 0.10388494 0.065769896 ;
	setAttr ".tk[50]" -type "float3" 0 -0.14566098 0.065769896 ;
	setAttr ".tk[51]" -type "float3" 0 -0.14566098 0.065769896 ;
	setAttr ".tk[52]" -type "float3" 0 0.10388494 0.065769896 ;
	setAttr ".tk[53]" -type "float3" -0.080573998 0.10388494 0.12439779 ;
	setAttr ".tk[54]" -type "float3" 0.085683629 -0.10727605 0.087837011 ;
	setAttr ".tk[55]" -type "float3" 0 -0.10727605 0.018452592 ;
	setAttr ".tk[56]" -type "float3" 0 -0.10727605 0.018452592 ;
	setAttr ".tk[57]" -type "float3" 0 -0.10727605 0.018452592 ;
	setAttr ".tk[58]" -type "float3" 0 -0.10727605 0.018452592 ;
	setAttr ".tk[59]" -type "float3" -0.080573998 -0.10727605 0.077080458 ;
	setAttr ".tk[60]" -type "float3" 0.085683629 0 0.069384426 ;
	setAttr ".tk[65]" -type "float3" -0.080573998 0 0.058627885 ;
	setAttr ".tk[66]" -type "float3" 0.085683629 -0.030650299 0.066748336 ;
	setAttr ".tk[67]" -type "float3" 0 -0.030650299 -0.0026360846 ;
	setAttr ".tk[68]" -type "float3" 0 -0.030650299 -0.0026360846 ;
	setAttr ".tk[69]" -type "float3" 0 -0.030650299 -0.0026360846 ;
	setAttr ".tk[70]" -type "float3" 0 -0.030650299 -0.0026360846 ;
	setAttr ".tk[71]" -type "float3" -0.080573998 -0.030650299 0.05599181 ;
	setAttr ".tk[72]" -type "float3" 0 0.24508114 0.0044375248 ;
	setAttr ".tk[73]" -type "float3" 0 0.24508114 0.0044375248 ;
	setAttr ".tk[74]" -type "float3" 0 0.24508114 0.0044375248 ;
	setAttr ".tk[75]" -type "float3" 0 0.24508114 0.0044375248 ;
	setAttr ".tk[76]" -type "float3" 0 0.24508114 0.0044375248 ;
	setAttr ".tk[77]" -type "float3" 0 0.24508114 0.0044375248 ;
	setAttr ".tk[78]" -type "float3" 0 0.41276821 0.0022187624 ;
	setAttr ".tk[79]" -type "float3" 0 0.41276821 0.0022187624 ;
	setAttr ".tk[80]" -type "float3" 0 0.41276821 0.0022187624 ;
	setAttr ".tk[81]" -type "float3" 0 0.41276821 0.0022187624 ;
	setAttr ".tk[82]" -type "float3" 0 0.41276821 0.0022187624 ;
	setAttr ".tk[83]" -type "float3" 0 0.41276821 0.0022187624 ;
	setAttr ".tk[90]" -type "float3" 0.13803391 0.27087915 -0.09932176 ;
	setAttr ".tk[91]" -type "float3" 0.13803391 0.27087915 -0.09932176 ;
	setAttr ".tk[92]" -type "float3" 0 0.27087915 -0.0022187624 ;
	setAttr ".tk[93]" -type "float3" 0 0.27087915 -0.0022187624 ;
	setAttr ".tk[94]" -type "float3" -0.079603091 0.27087915 -0.1123852 ;
	setAttr ".tk[95]" -type "float3" -0.079603091 0.27087915 -0.1123852 ;
	setAttr ".tk[96]" -type "float3" 0 0.20638411 0.0022187624 ;
	setAttr ".tk[97]" -type "float3" 0 0.23218213 0 ;
	setAttr ".tk[99]" -type "float3" -0.079603091 0.13953969 -0.10572891 ;
	setAttr ".tk[100]" -type "float3" 0 0.11609104 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.12899005 0.0022187624 ;
	setAttr ".tk[103]" -type "float3" -0.079603091 0 -0.11016644 ;
	setAttr ".tk[104]" -type "float3" 0 0.20638411 0.0022187624 ;
	setAttr ".tk[105]" -type "float3" 0 0.23218213 0 ;
	setAttr ".tk[107]" -type "float3" 0.13803391 0.12603429 -0.092665471 ;
	setAttr ".tk[108]" -type "float3" 0 0.11609104 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.12899005 0.0022187624 ;
	setAttr ".tk[111]" -type "float3" 0.13803391 0 -0.097103007 ;
createNode polySplit -n "polySplit1";
	rename -uid "44BC1E39-6E4A-E8D8-B6CF-77A15B5EC0ED";
	setAttr -s 4 ".v[0:3]" -type "float3"  0.37343401 -0.457122 -0.41136599 
		0.29317001 -0.131005 0.29099199 -0.250875 -0.14552499 0.291789 -0.37315801 -0.45675701 
		-0.40273899;
	setAttr -s 21 ".e[0:20]"  0.26195899 59 0.68859202 0.72492498 0.64312297
		 0.78276801 79 0.75150198 0.64638698 0.75015402 0.72301197 75 0.267667 0.33840099
		 0.35525501 0.33167899 55 0.291852 0.23350599 0.261522 0.26195899;
	setAttr -s 21 ".d[0:20]"  -2147483498 0 -2147483584 -2147483579 -2147483574 -2147483569 
		1 -2147483474 -2147483475 -2147483476 -2147483477 2 -2147483573 -2147483578 -2147483583 -2147483588 3 -2147483501 
		-2147483500 -2147483499 -2147483498;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "83BB10A4-C34A-3482-11B8-9B8CED88591D";
	setAttr ".sh" 20;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "FD1C7C6E-0342-0AC9-4463-52AD0E252562";
	setAttr ".sh" 20;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "38FE8C5E-264D-6CAF-2DD0-45893F734218";
	setAttr ".ics" -type "componentList" 1 "f[380:399]";
	setAttr ".ix" -type "matrix" 3.6468301116683624e-017 -0.16423862731993141 -0 0 3.2447764335907165 7.2048510126670274e-016 0 0
		 0 -0 0.16423862731993141 0 -0.24122161319198443 8.74208083158282 3.2486408316480095 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7328806 8.9510012 1.4531345 ;
	setAttr ".rs" 480965187;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.4341289336379885 8.761213284019691 1.0048562972563739 ;
	setAttr ".cbx" -type "double3" 3.0316324027296124 9.1407888182724513 1.9014128187972479 ;
createNode polyTweak -n "polyTweak36";
	rename -uid "65D28B3E-5A42-1783-7184-14BF8C41B37D";
	setAttr ".uopa" yes;
	setAttr -s 422 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -1.4596864 0.088500172 -13.044758797
		 -1.51086962 0.10006221 -12.85749531 -1.54907787 0.108088 -12.71000004 -1.57057071
		 0.11179174 -12.61670399 -1.57324457 0.11081085 -12.58674145 -1.55683732 0.10524152
		 -12.62304974 -1.5229553 0.095628776 -12.72207165 -1.47491515 0.082913667 -12.87411404
		 -1.41741943 0.068340816 -13.064295769 -1.35609591 0.053336624 -13.27399731 -1.29694748
		 0.039369844 -13.48269176 -1.24576426 0.027807765 -13.66995907 -1.20755625 0.019782096
		 -13.81745625 -1.18606317 0.016078373 -13.9107523 -1.18338966 0.017059248 -13.94071484
		 -1.19979692 0.022628622 -13.90440655 -1.23367858 0.032241229 -13.80538082 -1.28171885
		 0.044956412 -13.65334034 -1.33921456 0.059529316 -13.46315861 -1.40053809 0.074533448
		 -13.25345516 -1.61210275 0.019883772 -7.5681982 -1.66328597 0.031445827 -7.38093281
		 -1.70149422 0.039471582 -7.2334342 -1.72298694 0.043175291 -7.14013958 -1.7256608
		 0.042194512 -7.11018085 -1.70925355 0.036625143 -7.14648819 -1.67537153 0.027012385
		 -7.24550962 -1.6273315 0.01429725 -7.39755011 -1.56983566 -0.00027564494 -7.58773041
		 -1.50851214 -0.015279797 -7.79743433 -1.44936395 -0.029246481 -8.0061311722 -1.39818048
		 -0.040808573 -8.19339466 -1.35997248 -0.048834294 -8.34089088 -1.33847952 -0.052538041
		 -8.43418598 -1.33580589 -0.051557213 -8.46414757 -1.35221303 -0.045987878 -8.42784023
		 -1.38609493 -0.036375154 -8.32881832 -1.43413508 -0.023659995 -8.17677784 -1.49163091
		 -0.0090871146 -7.98659468 -1.55295444 0.0059170499 -7.77689219 -1.76451898 -0.019139355
		 -3.4999423 -1.81570244 -0.0089472104 -3.3626163 -1.85391045 -0.0019910275 -3.24950814
		 -1.87540317 0.0010483311 -3.17169309 -1.87807703 -0.00012664957 -3.13678384 -1.86167002
		 -0.0054010162 -3.1481998 -1.82778788 -0.014258427 -3.20482397 -1.77974772 -0.02583185
		 -3.30111241 -1.72225189 -0.038988419 -3.42764044 -1.66092849 -0.052440263 -3.57202244
		 -1.60178006 -0.064870656 -3.72012496 -1.55059671 -0.075062774 -3.85745096 -1.51238871
		 -0.082018986 -3.9705584 -1.49089575 -0.085058331 -4.04837513 -1.48822212 -0.083883345
		 -4.083283424 -1.50462925 -0.078608997 -4.071866989 -1.53851116 -0.069751613 -4.015243053
		 -1.58655119 -0.058178179 -3.91895413 -1.64404714 -0.045021612 -3.79242587 -1.70537066
		 -0.031569768 -3.64804435 -3.010874271 -0.0020342222 -1.13598776 -3.031336546 0.00066656579
		 -1.11919904 -3.047155857 0.0024754202 -1.099006534 -3.056782961 0.0032152829 -1.077386975
		 -3.05927825 0.0028137271 -1.056456685 -3.054395676 0.0013100572 -1.038264036 -3.042611837
		 -0.0011485282 -1.024590492 -3.02508235 -0.0043213703 -1.016774178 -3.0035216808 -0.007897892
		 -1.015580297 -2.98004246 -0.011527996 -1.021125674 -2.95694137 -0.014856343 -1.032867193
		 -2.93647933 -0.017557127 -1.049656153 -2.92066002 -0.019365979 -1.069848776 -2.9110322
		 -0.020105848 -1.091467738 -2.90853763 -0.019704292 -1.11239851 -2.91342187 -0.018200621
		 -1.13059115 -2.92520404 -0.015742037 -1.14426446 -2.94273376 -0.012569195 -1.15208089
		 -2.96429467 -0.0089926757 -1.15327501 -2.98777318 -0.0053625721 -1.14772952 -2.45724654
		 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0
		 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0
		 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654
		 0 0 -2.45724654 0 0 -2.45724654 0 0 -2.45724654 0 0 -1.92595029 0 0 -1.92595029 0
		 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0
		 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029
		 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0 0 -1.92595029 0
		 0 -1.92595029 0 0 -1.92595029 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0
		 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368
		 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0
		 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0 -1.39465368 0 0
		 -1.39465368 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701
		 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0
		 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0
		 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.86335701 0 0 -0.23170793
		 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0
		 0;
	setAttr ".tk[166:331]" -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793
		 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0
		 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0 -0.23170793 0 0
		 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261
		 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991
		 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261
		 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991
		 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261
		 0 -0.38348991 0.22098261 0 -0.38348991 0.22098261 0 -0.38348991 0.35380676 -3.9764623e-018
		 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566
		 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676
		 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018
		 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566
		 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676
		 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018
		 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566
		 0.35380676 -3.9764623e-018 -0.76773566 0.35380676 -3.9764623e-018 -0.76773566 0.35380676
		 -3.9764623e-018 -0.76773566 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991 -0.044665623 0 -0.38348991
		 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522
		 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0
		 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0
		 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -0.61006522 0 0 -1.1954174 0 0 -1.1954174
		 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174
		 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174
		 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174 0 0 -1.1954174
		 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139
		 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139
		 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139 0 0 -1.7267139
		 0 0 -1.7267139 0 0 -1.7267139 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0
		 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015
		 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0
		 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0 -2.25801015 0 0
		 -2.25801015 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179
		 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179
		 0 0 -2.8557179 0 0;
	setAttr ".tk[332:421]" -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179
		 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.8557179 0 0 -2.78038836 -0.0063041323
		 -0.9006862 -2.78038836 -0.011991175 -0.87704116 -2.78038836 -0.01650444 -0.85827643
		 -2.78038836 -0.019402133 -0.84622866 -2.78038836 -0.020400608 -0.84207737 -2.78038836
		 -0.019402128 -0.84622866 -2.78038836 -0.016504437 -0.85827643 -2.78038836 -0.011991172
		 -0.87704116 -2.78038836 -0.0063041309 -0.9006862 -2.78038836 3.749546e-009 -0.92689675
		 -2.78038836 0.0063041374 -0.95310754 -2.78038836 0.011991177 -0.97675234 -2.78038836
		 0.01650444 -0.99551719 -2.78038836 0.019402133 -1.0075647831 -2.78038836 0.020400608
		 -1.011716127 -2.78038836 0.019402128 -1.0075647831 -2.78038836 0.016504437 -0.99551719
		 -2.78038836 0.011991176 -0.97675234 -2.78038836 0.0063041369 -0.95310754 -2.78038836
		 3.749546e-009 -0.92689675 -1.56393981 -0.012275949 -3.095567226 -1.56393981 -0.023350257
		 -2.98955083 -1.56393981 -0.032138869 -2.90541553 -1.023726463 -0.037781525 -2.85139704
		 -1.023726463 -0.039725821 -2.83278298 -1.023726463 -0.037781518 -2.85139704 -1.023726463
		 -0.032138869 -2.90541553 -1.023726463 -0.023350252 -2.98955083 -1.56393981 -0.012275943
		 -3.095567465 -1.56393981 1.0873402e-008 -3.21308804 -1.56393981 0.012275962 -3.33060861
		 -1.56393981 0.023350263 -3.43662572 -1.56393981 0.032138877 -3.52076054 -1.56393981
		 0.037781529 -3.5747788 -1.56393981 0.039725833 -3.59339309 -1.56393981 0.037781525
		 -3.5747788 -1.56393981 0.032138873 -3.52076054 -1.56393981 0.023350261 -3.43662548
		 -1.56393981 0.01227596 -3.33060884 -1.56393981 1.0873402e-008 -3.21308804 -1.42761374
		 -0.040616684 -7.9935112 -1.42761374 -0.054685906 -7.73596478 -1.42761374 -0.065851375
		 -7.5315752 -1.42761374 -0.073019907 -7.40035009 -1.42761374 -0.075490147 -7.35513258
		 -1.42761374 -0.073019907 -7.40035009 -1.42761374 -0.065851338 -7.5315752 -1.42761374
		 -0.054685861 -7.73596478 -1.42761374 -0.040616684 -7.9935112 -1.42761374 -0.025020704
		 -8.27900124 -1.42761374 -0.0094247488 -8.56449223 -1.42761374 0.0046444726 -8.8220377
		 -1.42761374 0.015809929 -9.026427269 -1.42761374 0.022978498 -9.15765285 -1.42761374
		 0.025448743 -9.20286942 -1.42761374 0.022978498 -9.15765285 -1.42761374 0.015809929
		 -9.026427269 -1.42761374 0.0046444726 -8.8220377 -1.42761374 -0.0094247488 -8.56449223
		 -1.42761374 -0.025020704 -8.27900124 -1.093829989 -0.054591425 -13.0054168701 -1.071593285
		 -0.069012098 -12.77527714 -1.05195713 -0.080756322 -12.61244774 -1.036843896 -0.088674434
		 -12.53287029 -1.027733207 -0.091991305 -12.54433537 -1.025517464 -0.090382211 -12.64571381
		 -1.030412078 -0.084004827 -12.82709217 -1.041938782 -0.073483333 -13.070709229 -1.058969855
		 -0.059847586 -13.3527174 -1.079837441 -0.044432405 -13.64551449 -1.10249901 -0.028746724
		 -13.92043781 -1.12473595 -0.014326015 -14.15057659 -1.14437211 -0.0025817945 -14.31340599
		 -1.1594851 0.0053362781 -14.39298344 -1.16859591 0.0086531388 -14.38151932 -1.17081177
		 0.007044103 -14.28013897 -1.1659168 0.00066670164 -14.098763466 -1.15438998 -0.0098548224
		 -13.85514641 -1.1373589 -0.023490585 -13.57313824 -1.11649179 -0.038905721 -13.28033924
		 -1.378317 0.063935056 -13.26372623 -1.098164558 -0.041669071 -13.46292686;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "37FC5B7B-8D40-4D10-83E9-BF899D1CEF39";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 3.6468301116683624e-017 -0.16423862731993141 -0 0 3.2447764335907165 7.2048510126670274e-016 0 0
		 0 -0 0.16423862731993141 0 -0.24122161319198443 8.74208083158282 3.2486408316480095 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.2276268 8.9809704 1.5199562 ;
	setAttr ".rs" 2060755761;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4338273861104476 8.8058311865239389 1.0171729099380515 ;
	setAttr ".cbx" -type "double3" -3.0214260012952181 9.156109479962522 2.0227394810075054 ;
createNode polyTweak -n "polyTweak37";
	rename -uid "32B644F4-4D4A-327C-EC18-7283D72467A7";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk";
	setAttr ".tk[380]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[381]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[382]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[383]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[384]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[385]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[386]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[387]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[388]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[389]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[390]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[391]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[392]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[393]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[394]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[395]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[396]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[397]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[398]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[399]" -type "float3" -0.16307929 -0.0062577915 1.0060511 ;
	setAttr ".tk[400]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[401]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[402]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[403]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[404]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[405]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[406]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[407]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[408]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[409]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[410]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[411]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[412]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[413]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[414]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[415]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[416]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[417]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[418]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[419]" -type "float3" -0.070406109 0.0072368355 0 ;
	setAttr ".tk[422]" -type "float3" 0.033172511 -0.0097742714 0.91960806 ;
	setAttr ".tk[423]" -type "float3" 0.0089000054 -0.012178481 0.91598147 ;
	setAttr ".tk[424]" -type "float3" 0.069738649 0.0024618078 0.054840811 ;
	setAttr ".tk[425]" -type "float3" 0.090210728 0.0049260911 0.063150771 ;
	setAttr ".tk[426]" -type "float3" -0.028904676 -0.014086494 0.91310328 ;
	setAttr ".tk[427]" -type "float3" 0.035289131 0.0004549165 0.044861004 ;
	setAttr ".tk[428]" -type "float3" -0.076542243 -0.015311481 0.9112553 ;
	setAttr ".tk[429]" -type "float3" -0.0097657144 -0.00089817942 0.034187302 ;
	setAttr ".tk[430]" -type "float3" -0.12934849 -0.015733609 0.9106186 ;
	setAttr ".tk[431]" -type "float3" -0.061015289 -0.0014649716 0.023864193 ;
	setAttr ".tk[432]" -type "float3" -0.18215477 -0.015311481 0.9112553 ;
	setAttr ".tk[433]" -type "float3" -0.11344215 -0.0011900038 0.014903707 ;
	setAttr ".tk[434]" -type "float3" -0.22979167 -0.014086494 0.91310328 ;
	setAttr ".tk[435]" -type "float3" -0.1619167 -0.00010020491 0.0081814919 ;
	setAttr ".tk[436]" -type "float3" -0.26759639 -0.012178481 0.91598147 ;
	setAttr ".tk[437]" -type "float3" -0.20169136 0.0016977515 0.0043561254 ;
	setAttr ".tk[438]" -type "float3" -0.29186946 -0.0097742714 0.91960806 ;
	setAttr ".tk[439]" -type "float3" -0.22887379 0.0040278803 0.003802577 ;
	setAttr ".tk[440]" -type "float3" -0.30023298 -0.0071091619 0.92362839 ;
	setAttr ".tk[441]" -type "float3" -0.24080375 0.0066621099 0.0065743122 ;
	setAttr ".tk[442]" -type "float3" -0.29186946 -0.0044440604 0.9276486 ;
	setAttr ".tk[443]" -type "float3" -0.23631236 0.0093425494 0.012400368 ;
	setAttr ".tk[444]" -type "float3" -0.26759639 -0.0020398425 0.93127543 ;
	setAttr ".tk[445]" -type "float3" -0.21584028 0.01180682 0.020710541 ;
	setAttr ".tk[446]" -type "float3" -0.22979167 -0.00013183214 0.93415344 ;
	setAttr ".tk[447]" -type "float3" -0.18138945 0.013813731 0.030690715 ;
	setAttr ".tk[448]" -type "float3" -0.18215477 0.0010931593 0.93600106 ;
	setAttr ".tk[449]" -type "float3" -0.13633594 0.015166812 0.041364178 ;
	setAttr ".tk[450]" -type "float3" -0.12934849 0.001515289 0.936638 ;
	setAttr ".tk[451]" -type "float3" -0.085086331 0.015733613 0.05168689 ;
	setAttr ".tk[452]" -type "float3" -0.076542243 0.0010931593 0.93600106 ;
	setAttr ".tk[453]" -type "float3" -0.032658175 0.015458645 0.060647435 ;
	setAttr ".tk[454]" -type "float3" -0.028904676 -0.00013183214 0.93415344 ;
	setAttr ".tk[455]" -type "float3" 0.015815098 0.014368854 0.067369707 ;
	setAttr ".tk[456]" -type "float3" 0.0089000054 -0.0020398425 0.93127543 ;
	setAttr ".tk[457]" -type "float3" 0.055589743 0.012570877 0.071194895 ;
	setAttr ".tk[458]" -type "float3" 0.033172511 -0.0044440604 0.9276486 ;
	setAttr ".tk[459]" -type "float3" 0.082772858 0.010240736 0.071748383 ;
	setAttr ".tk[460]" -type "float3" 0.041536681 -0.0071091619 0.92362839 ;
	setAttr ".tk[461]" -type "float3" 0.094702072 0.0076065208 0.068977065 ;
createNode polyTweak -n "polyTweak38";
	rename -uid "88A71DB4-674C-AB16-E42D-F7A8BD0C351E";
	setAttr ".uopa" yes;
	setAttr -s 320 ".tk";
	setAttr ".tk[0]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[1]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[2]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[3]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[4]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[5]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[6]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[7]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[8]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[9]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[10]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[11]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[12]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[13]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[14]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[15]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[16]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[17]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[18]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[19]" -type "float3" 0.019019987 -0.0038603649 -7.1054274e-015 ;
	setAttr ".tk[20]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[21]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[22]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[23]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[24]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[25]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[26]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[27]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[28]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[29]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[30]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[31]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[32]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[33]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[34]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[35]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[36]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[37]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[38]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[39]" -type "float3" -0.024866922 0.0042921286 1.4902519 ;
	setAttr ".tk[40]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[41]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[42]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[43]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[44]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[45]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[46]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[47]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[48]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[49]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[50]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[51]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[52]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[53]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[54]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[55]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[56]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[57]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[58]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[59]" -type "float3" -0.27610785 0 0.27880895 ;
	setAttr ".tk[60]" -type "float3" 0.18147416 -0.0076819165 0.007481263 ;
	setAttr ".tk[61]" -type "float3" 0.18147416 -0.0069594309 0.010798291 ;
	setAttr ".tk[62]" -type "float3" 0.18147416 -0.0064046136 0.013058324 ;
	setAttr ".tk[63]" -type "float3" 0.18147416 -0.0060717664 0.014040064 ;
	setAttr ".tk[64]" -type "float3" 0.18147416 -0.0059934757 0.013647597 ;
	setAttr ".tk[65]" -type "float3" 0.18147416 -0.0061774058 0.011918927 ;
	setAttr ".tk[66]" -type "float3" 0.18147416 -0.0066055492 0.0090237632 ;
	setAttr ".tk[67]" -type "float3" 0.18147416 -0.0072359955 0.0052452246 ;
	setAttr ".tk[68]" -type "float3" 0.18147416 -0.0080070356 0.00095321995 ;
	setAttr ".tk[69]" -type "float3" 0.18147416 -0.0088431928 -0.0034320522 ;
	setAttr ".tk[70]" -type "float3" 0.18147416 -0.0096626133 -0.0074813655 ;
	setAttr ".tk[71]" -type "float3" 0.18147416 -0.010385095 -0.010798438 ;
	setAttr ".tk[72]" -type "float3" 0.18147416 -0.010939917 -0.013058375 ;
	setAttr ".tk[73]" -type "float3" 0.18147416 -0.011272766 -0.014040057 ;
	setAttr ".tk[74]" -type "float3" 0.18147416 -0.011351055 -0.013647459 ;
	setAttr ".tk[75]" -type "float3" 0.18147416 -0.011167131 -0.011919026 ;
	setAttr ".tk[76]" -type "float3" 0.18147416 -0.01073899 -0.0090238554 ;
	setAttr ".tk[77]" -type "float3" 0.18147416 -0.010108542 -0.0052453456 ;
	setAttr ".tk[78]" -type "float3" 0.18147416 -0.0093375007 -0.00095334521 ;
	setAttr ".tk[79]" -type "float3" 0.18147416 -0.0085013397 0.0034319791 ;
	setAttr ".tk[160]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[161]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[162]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[163]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[164]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[165]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[166]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[167]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[168]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[169]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[170]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[171]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[172]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[173]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[174]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[175]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[176]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[177]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[178]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[179]" -type "float3" 0.18189694 0.029989248 -0.0025275929 ;
	setAttr ".tk[180]" -type "float3" 0.24860577 0.050782539 0 ;
	setAttr ".tk[181]" -type "float3" 0.24691832 0.050782539 0 ;
	setAttr ".tk[182]" -type "float3" 0.24335653 0.050782539 0 ;
	setAttr ".tk[183]" -type "float3" 0.23839472 0.050782539 0 ;
	setAttr ".tk[184]" -type "float3" 0.23635359 0.050782539 0 ;
	setAttr ".tk[185]" -type "float3" 0.23635359 0.050782539 0 ;
	setAttr ".tk[186]" -type "float3" 0.2415354 0.050782539 0 ;
	setAttr ".tk[187]" -type "float3" 0.24571627 0.050782539 0 ;
	setAttr ".tk[188]" -type "float3" 0.24818547 0.050782539 0 ;
	setAttr ".tk[189]" -type "float3" 0.24860577 0.050782539 0 ;
	setAttr ".tk[190]" -type "float3" 0.24691832 0.050782539 0 ;
	setAttr ".tk[191]" -type "float3" 0.24335653 0.050782539 0 ;
	setAttr ".tk[192]" -type "float3" 0.23839472 0.050782539 0 ;
	setAttr ".tk[193]" -type "float3" 0.23635359 0.050782539 0 ;
	setAttr ".tk[194]" -type "float3" 0.23635359 0.050782539 0 ;
	setAttr ".tk[195]" -type "float3" 0.23635359 0.050782539 0 ;
	setAttr ".tk[196]" -type "float3" 0.23635359 0.050782539 0 ;
	setAttr ".tk[197]" -type "float3" 0.2415354 0.050782539 0 ;
	setAttr ".tk[198]" -type "float3" 0.24571627 0.050782539 0 ;
	setAttr ".tk[199]" -type "float3" 0.24818547 0.050782539 0 ;
	setAttr ".tk[200]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[201]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[202]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[203]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[204]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[205]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[206]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[207]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[208]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[209]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[210]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[211]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[212]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[213]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[214]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[215]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[216]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[217]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[218]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[219]" -type "float3" 0.20593259 -2.3145043e-018 0 ;
	setAttr ".tk[220]" -type "float3" 0.51326925 -0.05873625 0 ;
	setAttr ".tk[221]" -type "float3" 0.51071995 -0.05873625 0 ;
	setAttr ".tk[222]" -type "float3" 0.50605893 -0.05873625 0 ;
	setAttr ".tk[223]" -type "float3" 0.49988657 -0.05873625 0 ;
	setAttr ".tk[224]" -type "float3" 0.49902669 -0.05873625 0 ;
	setAttr ".tk[225]" -type "float3" 0.50038826 -0.05873625 0 ;
	setAttr ".tk[226]" -type "float3" 0.50647146 -0.05873625 0 ;
	setAttr ".tk[227]" -type "float3" 0.51099175 -0.05873625 0 ;
	setAttr ".tk[228]" -type "float3" 0.51326925 -0.05873625 0 ;
	setAttr ".tk[229]" -type "float3" 0.51326925 -0.05873625 0 ;
	setAttr ".tk[230]" -type "float3" 0.51071995 -0.05873625 0 ;
	setAttr ".tk[231]" -type "float3" 0.50605845 -0.05873625 0 ;
	setAttr ".tk[232]" -type "float3" 0.49988657 -0.05873625 0 ;
	setAttr ".tk[233]" -type "float3" 0.49902669 -0.05873625 0 ;
	setAttr ".tk[234]" -type "float3" 0.49902669 -0.05873625 0 ;
	setAttr ".tk[235]" -type "float3" 0.49902669 -0.05873625 0 ;
	setAttr ".tk[236]" -type "float3" 0.50038826 -0.05873625 0 ;
	setAttr ".tk[237]" -type "float3" 0.50647146 -0.05873625 0 ;
	setAttr ".tk[238]" -type "float3" 0.51099175 -0.05873625 0 ;
	setAttr ".tk[239]" -type "float3" 0.51326925 -0.05873625 0 ;
	setAttr ".tk[240]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[241]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[242]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[243]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[244]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[245]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[246]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[247]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[248]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[249]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[250]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[251]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[252]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[253]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[254]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[255]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[256]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[257]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[258]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[259]" -type "float3" 0.20588535 -0.024227889 -0.07919573 ;
	setAttr ".tk[360]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[361]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[362]" -type "float3" -0.42163253 0 0 ;
	setAttr ".tk[363]" -type "float3" -0.88510901 0 -2.6645353e-015 ;
	setAttr ".tk[364]" -type "float3" -0.77945131 0 0 ;
	setAttr ".tk[365]" -type "float3" -0.8642568 -0.0051530474 0 ;
	setAttr ".tk[366]" -type "float3" -0.97258633 -0.0094269132 0.050218124 ;
	setAttr ".tk[367]" -type "float3" -1.0816143 -0.010644356 0.012109475 ;
	setAttr ".tk[368]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[369]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[370]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[371]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[372]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[373]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[374]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[375]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[376]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[377]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[378]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[379]" -type "float3" -0.53260821 0 0 ;
	setAttr ".tk[380]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[381]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[382]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[383]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[384]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[385]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[386]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[387]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[388]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[389]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[390]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[391]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[392]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[393]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[394]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[395]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[396]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[397]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[398]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[399]" -type "float3" 0.094518721 -0.0076505458 0.26517645 ;
	setAttr ".tk[400]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[401]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[402]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[403]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[404]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[405]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[406]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[407]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[408]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[409]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[410]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[411]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[412]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[413]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[414]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[415]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[416]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[417]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[418]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[419]" -type "float3" 0 0.0026527876 5.3290705e-015 ;
	setAttr ".tk[422]" -type "float3" 0.049992308 -0.0035945701 0.27493867 ;
	setAttr ".tk[423]" -type "float3" 0.041065887 -0.004478734 0.27360502 ;
	setAttr ".tk[424]" -type "float3" 0.063439682 0.0009053456 -0.043086369 ;
	setAttr ".tk[425]" -type "float3" 0.070968322 0.0018116091 -0.040030364 ;
	setAttr ".tk[426]" -type "float3" 0.02716296 -0.0051804231 0.27254653 ;
	setAttr ".tk[427]" -type "float3" 0.050770544 0.00016729841 -0.046756539 ;
	setAttr ".tk[428]" -type "float3" 0.0096438471 -0.0056309206 0.27186698 ;
	setAttr ".tk[429]" -type "float3" 0.034201439 -0.00033031258 -0.050681908 ;
	setAttr ".tk[430]" -type "float3" -0.0097761098 -0.0057861609 0.27163276 ;
	setAttr ".tk[431]" -type "float3" 0.015353948 -0.00053875492 -0.054478381 ;
	setAttr ".tk[432]" -type "float3" -0.029196067 -0.0056309206 0.27186698 ;
	setAttr ".tk[433]" -type "float3" -0.0039265794 -0.00043763372 -0.057773564 ;
	setAttr ".tk[434]" -type "float3" -0.046714768 -0.0051804231 0.27254653 ;
	setAttr ".tk[435]" -type "float3" -0.021753423 -3.6850808e-005 -0.060245696 ;
	setAttr ".tk[436]" -type "float3" -0.06061811 -0.004478734 0.27360502 ;
	setAttr ".tk[437]" -type "float3" -0.036380939 0.00062436314 -0.061652485 ;
	setAttr ".tk[438]" -type "float3" -0.069544531 -0.0035945701 0.27493867 ;
	setAttr ".tk[439]" -type "float3" -0.046377353 0.0014812868 -0.061856214 ;
	setAttr ".tk[440]" -type "float3" -0.072620198 -0.0026144513 0.27641723 ;
	setAttr ".tk[441]" -type "float3" -0.05076481 0.0024500452 -0.060836736 ;
	setAttr ".tk[442]" -type "float3" -0.069544531 -0.0016343388 0.27789563 ;
	setAttr ".tk[443]" -type "float3" -0.049112935 0.0034357943 -0.058694217 ;
	setAttr ".tk[444]" -type "float3" -0.06061811 -0.00075016904 0.27922946 ;
	setAttr ".tk[445]" -type "float3" -0.041584298 0.004342054 -0.055638108 ;
	setAttr ".tk[446]" -type "float3" -0.046714768 -4.8482612e-005 0.28028789 ;
	setAttr ".tk[447]" -type "float3" -0.028914541 0.005080102 -0.051967803 ;
	setAttr ".tk[448]" -type "float3" -0.029196067 0.00040201814 0.2809675 ;
	setAttr ".tk[449]" -type "float3" -0.012346055 0.0055777128 -0.04804254 ;
	setAttr ".tk[450]" -type "float3" -0.0097761098 0.00055725861 0.28120166 ;
	setAttr ".tk[451]" -type "float3" 0.0065016416 0.0057861609 -0.044246275 ;
	setAttr ".tk[452]" -type "float3" 0.0096438471 0.00040201814 0.2809675 ;
	setAttr ".tk[453]" -type "float3" 0.025782373 0.005685037 -0.040951002 ;
	setAttr ".tk[454]" -type "float3" 0.02716296 -4.8482612e-005 0.28028789 ;
	setAttr ".tk[455]" -type "float3" 0.043609012 0.0052842647 -0.038478855 ;
	setAttr ".tk[456]" -type "float3" 0.041065887 -0.00075016904 0.27922946 ;
	setAttr ".tk[457]" -type "float3" 0.058236323 0.0046230364 -0.037072111 ;
	setAttr ".tk[458]" -type "float3" 0.049992308 -0.0016343388 0.27789563 ;
	setAttr ".tk[459]" -type "float3" 0.068233348 0.0037661127 -0.036868427 ;
	setAttr ".tk[460]" -type "float3" 0.053068176 -0.0026144513 0.27641723 ;
	setAttr ".tk[461]" -type "float3" 0.072620198 0.002797358 -0.037887651 ;
	setAttr ".tk[462]" -type "float3" 0.24977505 0.0023431017 0.0021864362 ;
	setAttr ".tk[463]" -type "float3" 0.19875161 0.0053961673 -0.021976972 ;
	setAttr ".tk[464]" -type "float3" 0.15850544 0.013683346 1.4241682 ;
	setAttr ".tk[465]" -type "float3" 0.20952779 0.010630303 1.4483311 ;
	setAttr ".tk[466]" -type "float3" 0.13024338 0.0075154705 -0.041447036 ;
	setAttr ".tk[467]" -type "float3" 0.089997344 0.015802667 1.4046993 ;
	setAttr ".tk[468]" -type "float3" 0.050955862 0.0084934793 -0.054318864 ;
	setAttr ".tk[469]" -type "float3" 0.010709734 0.01678066 1.3918257 ;
	setAttr ".tk[470]" -type "float3" -0.031348538 0.0082344757 -0.059330825 ;
	setAttr ".tk[471]" -type "float3" -0.071596712 0.016521655 1.3868135 ;
	setAttr ".tk[472]" -type "float3" -0.10861433 0.0067638326 -0.055994082 ;
	setAttr ".tk[473]" -type "float3" -0.14886251 0.015051011 1.3901501 ;
	setAttr ".tk[474]" -type "float3" -0.17328072 0.0042254999 -0.044634886 ;
	setAttr ".tk[475]" -type "float3" -0.21352689 0.012512704 1.4015102 ;
	setAttr ".tk[476]" -type "float3" -0.21901256 0.00086794148 -0.026364721 ;
	setAttr ".tk[477]" -type "float3" -0.25926092 0.0091551216 1.4197805 ;
	setAttr ".tk[478]" -type "float3" -0.24133769 -0.0029801764 -0.002972763 ;
	setAttr ".tk[479]" -type "float3" -0.28158677 0.0053069559 1.4431738 ;
	setAttr ".tk[480]" -type "float3" -0.23806903 -0.0069422177 0.023252867 ;
	setAttr ".tk[481]" -type "float3" -0.27831614 0.001344966 1.4693991 ;
	setAttr ".tk[482]" -type "float3" -0.20952597 -0.010630303 0.049744204 ;
	setAttr ".tk[483]" -type "float3" -0.24977189 -0.0023430844 1.4958892 ;
	setAttr ".tk[484]" -type "float3" -0.15850359 -0.013683375 0.073906124 ;
	setAttr ".tk[485]" -type "float3" -0.19875163 -0.005396184 1.5200521 ;
	setAttr ".tk[486]" -type "float3" -0.089996271 -0.015802667 0.093376368 ;
	setAttr ".tk[487]" -type "float3" -0.13024232 -0.0075154705 1.5395215 ;
	setAttr ".tk[488]" -type "float3" -0.010708731 -0.01678066 0.10624731 ;
	setAttr ".tk[489]" -type "float3" -0.050954882 -0.0084934793 1.5523927 ;
	setAttr ".tk[490]" -type "float3" 0.071597725 -0.016521655 0.11125968 ;
	setAttr ".tk[491]" -type "float3" 0.031349558 -0.0082344757 1.5574069 ;
	setAttr ".tk[492]" -type "float3" 0.14886355 -0.015050984 0.10792322 ;
	setAttr ".tk[493]" -type "float3" 0.10861644 -0.0067638643 1.5540704 ;
	setAttr ".tk[494]" -type "float3" 0.21352796 -0.012512691 0.096564747 ;
	setAttr ".tk[495]" -type "float3" 0.17328174 -0.0042254999 1.5427103 ;
	setAttr ".tk[496]" -type "float3" 0.25926194 -0.0091551216 0.078294441 ;
	setAttr ".tk[497]" -type "float3" 0.21901365 -0.00086790894 1.5244398 ;
	setAttr ".tk[498]" -type "float3" 0.28158677 -0.0053069768 0.054901809 ;
	setAttr ".tk[499]" -type "float3" 0.24133874 0.0029802092 1.501047 ;
	setAttr ".tk[500]" -type "float3" 0.27831811 -0.001344966 0.028677009 ;
	setAttr ".tk[501]" -type "float3" 0.2380701 0.0069422177 1.4748216 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "0C1D6704-8641-3EBA-E2C8-22A9EC9D454F";
	setAttr ".dc" -type "componentList" 2 "f[181:185]" "f[201:205]";
createNode polyTweak -n "polyTweak39";
	rename -uid "D6A898F9-494F-31CB-7E9D-3F9EBE5F2416";
	setAttr ".uopa" yes;
	setAttr -s 341 ".tk";
	setAttr ".tk[71]" -type "float3" 0 -3.6408608e-005 -3.3033062e-005 ;
	setAttr ".tk[72]" -type "float3" 0 -0.0003402349 -0.00030869077 ;
	setAttr ".tk[73]" -type "float3" 0 -0.00071399187 -0.00064779568 ;
	setAttr ".tk[74]" -type "float3" 0 -0.00087784568 -0.0007964581 ;
	setAttr ".tk[75]" -type "float3" 0 -0.00071399187 -0.00064779568 ;
	setAttr ".tk[76]" -type "float3" 0 -0.0003402349 -0.00030869077 ;
	setAttr ".tk[77]" -type "float3" 0 -3.6408608e-005 -3.3033062e-005 ;
	setAttr ".tk[80]" -type "float3" 0 -0.00014107545 -0.00012799597 ;
	setAttr ".tk[88]" -type "float3" 0 -0.00014107545 -0.00012799597 ;
	setAttr ".tk[89]" -type "float3" 0 -0.00087784568 -0.0007964581 ;
	setAttr ".tk[90]" -type "float3" 0 -0.0023825895 -0.0021616928 ;
	setAttr ".tk[91]" -type "float3" 0 -0.00449285 -0.0040763058 ;
	setAttr ".tk[92]" -type "float3" 0 -0.0067574424 -0.0061309421 ;
	setAttr ".tk[93]" -type "float3" 0 -0.0085174022 -0.0077277296 ;
	setAttr ".tk[94]" -type "float3" 0 -0.0091830194 -0.0083316369 ;
	setAttr ".tk[95]" -type "float3" 0 -0.0085174022 -0.0077277296 ;
	setAttr ".tk[96]" -type "float3" 0 -0.0067574424 -0.0061309421 ;
	setAttr ".tk[97]" -type "float3" 0 -0.00449285 -0.0040763058 ;
	setAttr ".tk[98]" -type "float3" 0 -0.0023825895 -0.0021616928 ;
	setAttr ".tk[99]" -type "float3" 0 -0.00087784568 -0.0007964581 ;
	setAttr ".tk[100]" -type "float3" 0 -0.0022849459 -0.0020731022 ;
	setAttr ".tk[101]" -type "float3" 0 -0.0009375689 -0.00085064431 ;
	setAttr ".tk[102]" -type "float3" 0 -0.00031191792 -0.00028299916 ;
	setAttr ".tk[103]" -type "float3" 0 -9.3111667e-005 -8.4479019e-005 ;
	setAttr ".tk[104]" -type "float3" 0 -4.8216232e-005 -4.3745971e-005 ;
	setAttr ".tk[105]" -type "float3" 0 -9.3111667e-005 -8.4479019e-005 ;
	setAttr ".tk[106]" -type "float3" 0 -0.00031191792 -0.00028299916 ;
	setAttr ".tk[107]" -type "float3" 0 -0.0009375689 -0.00085064431 ;
	setAttr ".tk[108]" -type "float3" 0 -0.0022849459 -0.0020731022 ;
	setAttr ".tk[109]" -type "float3" 0 -0.0046228878 -0.0041942871 ;
	setAttr ".tk[110]" -type "float3" 0 -0.0079971924 -0.0072557507 ;
	setAttr ".tk[111]" -type "float3" 0 -0.012070764 -0.010951651 ;
	setAttr ".tk[112]" -type "float3" 0 -0.016092248 -0.014600293 ;
	setAttr ".tk[113]" -type "float3" 0 -0.019079411 -0.017310508 ;
	setAttr ".tk[114]" -type "float3" 0 -0.02018675 -0.018315179 ;
	setAttr ".tk[115]" -type "float3" 0 -0.019079411 -0.017310508 ;
	setAttr ".tk[116]" -type "float3" 0 -0.016092248 -0.014600293 ;
	setAttr ".tk[117]" -type "float3" 0 -0.012070764 -0.010951651 ;
	setAttr ".tk[118]" -type "float3" 0 -0.0079971924 -0.0072557507 ;
	setAttr ".tk[119]" -type "float3" 0 -0.0046228878 -0.0041942871 ;
	setAttr ".tk[120]" -type "float3" 0 -0.0030117165 -0.023759082 ;
	setAttr ".tk[121]" -type "float3" 0 -0.0011967559 -0.022112386 ;
	setAttr ".tk[122]" -type "float3" 0 -0.00026415463 -0.021266252 ;
	setAttr ".tk[123]" -type "float3" 0 0.00012489004 -0.020913277 ;
	setAttr ".tk[124]" -type "float3" 0 0.00022392205 -0.020823427 ;
	setAttr ".tk[125]" -type "float3" 0 0.00012489004 -0.020913277 ;
	setAttr ".tk[126]" -type "float3" 0 -0.00026415463 -0.021266252 ;
	setAttr ".tk[127]" -type "float3" 0 -0.0011967559 -0.022112386 ;
	setAttr ".tk[128]" -type "float3" 0 -0.0030117165 -0.023759082 ;
	setAttr ".tk[129]" -type "float3" 0 -0.0059882123 -0.026459618 ;
	setAttr ".tk[130]" -type "float3" 0 -0.010146662 -0.030232524 ;
	setAttr ".tk[131]" -type "float3" 0 -0.015062107 -0.035077721 ;
	setAttr ".tk[132]" -type "float3" 0 -0.01977703 -0.043346506 ;
	setAttr ".tk[133]" -type "float3" 0 -0.023210917 -0.05141497 ;
	setAttr ".tk[134]" -type "float3" 0 -0.024475951 -0.054573398 ;
	setAttr ".tk[135]" -type "float3" 0 -0.023220191 -0.051014394 ;
	setAttr ".tk[136]" -type "float3" 0 -0.019788388 -0.042855822 ;
	setAttr ".tk[137]" -type "float3" 0 -0.015065995 -0.034909781 ;
	setAttr ".tk[138]" -type "float3" 0 -0.010146662 -0.030232524 ;
	setAttr ".tk[139]" -type "float3" 0 -0.0059882123 -0.026459618 ;
	setAttr ".tk[140]" -type "float3" 0.0033435712 -0.0064077983 0.21513291 ;
	setAttr ".tk[141]" -type "float3" 0.0087101823 0.0089268051 0.22699581 ;
	setAttr ".tk[142]" -type "float3" 0.013224182 0.021843879 0.23603259 ;
	setAttr ".tk[143]" -type "float3" 0.016443701 0.031450421 0.24169578 ;
	setAttr ".tk[144]" -type "float3" 0.018053601 0.037080947 0.2436804 ;
	setAttr ".tk[145]" -type "float3" 0.017896287 0.038294427 0.24189202 ;
	setAttr ".tk[146]" -type "float3" 0.01598716 0.034909721 0.23644924 ;
	setAttr ".tk[147]" -type "float3" 0.0125131 0.027027925 0.22767584 ;
	setAttr ".tk[148]" -type "float3" 0.0078141699 0.01506823 0.21611106 ;
	setAttr ".tk[149]" -type "float3" 0.0023503359 -0.00012096072 0.19996119 ;
	setAttr ".tk[150]" -type "float3" -0.0033435663 -0.017261583 0.17777067 ;
	setAttr ".tk[151]" -type "float3" -0.0087101739 -0.034714062 0.15236875 ;
	setAttr ".tk[152]" -type "float3" -0.013224169 -0.050531615 0.12888414 ;
	setAttr ".tk[153]" -type "float3" -0.016443694 -0.062708132 0.11297388 ;
	setAttr ".tk[154]" -type "float3" -0.018053589 -0.06957151 0.10856268 ;
	setAttr ".tk[155]" -type "float3" -0.017896274 -0.070195302 0.11645016 ;
	setAttr ".tk[156]" -type "float3" -0.01598715 -0.06463179 0.13426542 ;
	setAttr ".tk[157]" -type "float3" -0.012513091 -0.053842634 0.15745321 ;
	setAttr ".tk[158]" -type "float3" -0.0078141633 -0.039381832 0.18088658 ;
	setAttr ".tk[159]" -type "float3" -0.0023503294 -0.023009382 0.20058431 ;
	setAttr ".tk[160]" -type "float3" 0.0041535576 -0.0088819405 0.44728342 ;
	setAttr ".tk[161]" -type "float3" 0.01130599 0.0082304999 0.46855354 ;
	setAttr ".tk[162]" -type "float3" 0.017351715 0.022910502 0.48274747 ;
	setAttr ".tk[163]" -type "float3" 0.021698928 0.034007922 0.49106923 ;
	setAttr ".tk[164]" -type "float3" 0.023922101 0.04061329 0.4944548 ;
	setAttr ".tk[165]" -type "float3" 0.02380361 0.042192966 0.4926751 ;
	setAttr ".tk[166]" -type "float3" 0.021355053 0.038564559 0.48564523 ;
	setAttr ".tk[167]" -type "float3" 0.016816117 0.030011535 0.47203419 ;
	setAttr ".tk[168]" -type "float3" 0.010631101 0.017115267 0.45039001 ;
	setAttr ".tk[169]" -type "float3" 0.003405442 0.00092802581 0.41985658 ;
	setAttr ".tk[170]" -type "float3" -0.0041535702 -0.017195126 0.38166684 ;
	setAttr ".tk[171]" -type "float3" -0.011306 -0.035565943 0.34009206 ;
	setAttr ".tk[172]" -type "float3" -0.01735172 -0.05226972 0.30225837 ;
	setAttr ".tk[173]" -type "float3" -0.021698933 -0.065361768 0.27614465 ;
	setAttr ".tk[174]" -type "float3" -0.023922104 -0.07318078 0.26764202 ;
	setAttr ".tk[175]" -type "float3" -0.023803616 -0.074704111 0.27838334 ;
	setAttr ".tk[176]" -type "float3" -0.021355063 -0.069792412 0.30538812 ;
	setAttr ".tk[177]" -type "float3" -0.01681613 -0.059196725 0.34237361 ;
	setAttr ".tk[178]" -type "float3" -0.010631113 -0.044334456 0.38199589 ;
	setAttr ".tk[179]" -type "float3" -0.0034054527 -0.026961138 0.41813573 ;
	setAttr ".tk[180]" -type "float3" 0.0039591407 -0.015064885 0.79469597 ;
	setAttr ".tk[181]" -type "float3" 0.010670181 0.00014155393 0.81986094 ;
	setAttr ".tk[182]" -type "float3" 0.01633675 0.013607102 0.83724344 ;
	setAttr ".tk[183]" -type "float3" 0.020404156 0.024007969 0.84751397 ;
	setAttr ".tk[184]" -type "float3" 0.022474267 0.030288981 0.85126829 ;
	setAttr ".tk[185]" -type "float3" 0.022344438 0.031822462 0.84869397 ;
	setAttr ".tk[186]" -type "float3" 0.020027379 0.028468918 0.83958471 ;
	setAttr ".tk[187]" -type "float3" 0.015749898 0.020600172 0.82295054 ;
	setAttr ".tk[188]" -type "float3" 0.0099307094 0.0090317875 0.79846233 ;
	setAttr ".tk[189]" -type "float3" 0.0031394328 -0.0050307554 0.76536041 ;
	setAttr ".tk[190]" -type "float3" -0.0039591533 -0.020319402 0.71781528 ;
	setAttr ".tk[191]" -type "float3" -0.01067019 -0.035293158 0.65823972 ;
	setAttr ".tk[192]" -type "float3" -0.016336756 -0.048619621 0.59802169 ;
	setAttr ".tk[193]" -type "float3" -0.02040416 -0.059067946 0.55340534 ;
	setAttr ".tk[194]" -type "float3" -0.02247427 -0.065648623 0.53869361 ;
	setAttr ".tk[195]" -type "float3" -0.022344442 -0.067645848 0.55850667 ;
	setAttr ".tk[196]" -type "float3" -0.020027384 -0.064708829 0.60495645 ;
	setAttr ".tk[197]" -type "float3" -0.015749907 -0.057002384 0.66313159 ;
	setAttr ".tk[198]" -type "float3" -0.0099307206 -0.045269959 0.71834368 ;
	setAttr ".tk[199]" -type "float3" -0.0031394446 -0.0307477 0.76156026 ;
	setAttr ".tk[200]" -type "float3" 0.0038057542 -0.023888227 1.1734935 ;
	setAttr ".tk[201]" -type "float3" 0.010174089 -0.009368673 1.2037437 ;
	setAttr ".tk[202]" -type "float3" 0.015546509 0.0036240963 1.2217221 ;
	setAttr ".tk[203]" -type "float3" 0.019397125 0.01367397 1.2319031 ;
	setAttr ".tk[204]" -type "float3" 0.021349022 0.019740764 1.2357268 ;
	setAttr ".tk[205]" -type "float3" 0.021211127 0.021215782 1.2334604 ;
	setAttr ".tk[206]" -type "float3" 0.018996933 0.017960019 1.2250922 ;
	setAttr ".tk[207]" -type "float3" 0.014923187 0.010379849 1.2076554 ;
	setAttr ".tk[208]" -type "float3" 0.0093886591 -0.00065152458 1.177189 ;
	setAttr ".tk[209]" -type "float3" 0.0029351006 -0.01391137 1.1305031 ;
	setAttr ".tk[210]" -type "float3" -0.0038057622 -0.027992597 1.0674539 ;
	setAttr ".tk[211]" -type "float3" -0.010174092 -0.041497327 0.99337107 ;
	setAttr ".tk[212]" -type "float3" -0.015546512 -0.05321731 0.92041409 ;
	setAttr ".tk[213]" -type "float3" -0.019397123 -0.062246859 0.86616176 ;
	setAttr ".tk[214]" -type "float3" -0.021349022 -0.067945093 0.8464185 ;
	setAttr ".tk[215]" -type "float3" -0.021211127 -0.06985759 0.86758161 ;
	setAttr ".tk[216]" -type "float3" -0.018996933 -0.067677215 0.92240047 ;
	setAttr ".tk[217]" -type "float3" -0.01492319 -0.061361857 0.99446857 ;
	setAttr ".tk[218]" -type "float3" -0.0093886638 -0.05130012 1.066818 ;
	setAttr ".tk[219]" -type "float3" -0.0029351073 -0.038376294 1.1280186 ;
	setAttr ".tk[220]" -type "float3" 0.0037858766 -0.031019328 1.4809345 ;
	setAttr ".tk[221]" -type "float3" 0.01011015 -0.016644411 1.5145026 ;
	setAttr ".tk[222]" -type "float3" 0.015444775 -0.0037817862 1.5355183 ;
	setAttr ".tk[223]" -type "float3" 0.019267557 0.0061939931 1.5469117 ;
	setAttr ".tk[224]" -type "float3" 0.021204298 0.012233602 1.5507134 ;
	setAttr ".tk[225]" -type "float3" 0.021065405 0.013712266 1.5480001 ;
	setAttr ".tk[226]" -type "float3" 0.01886449 0.010507967 1.538057 ;
	setAttr ".tk[227]" -type "float3" 0.014816989 0.0030103573 1.5185757 ;
	setAttr ".tk[228]" -type "float3" 0.0093190912 -0.0079429308 1.4869819 ;
	setAttr ".tk[229]" -type "float3" 0.0029089826 -0.021152962 1.4408939 ;
	setAttr ".tk[230]" -type "float3" -0.0037858798 -0.034994982 1.3811147 ;
	setAttr ".tk[231]" -type "float3" -0.010110154 -0.046389639 1.31417 ;
	setAttr ".tk[232]" -type "float3" -0.015444777 -0.05463355 1.2501738 ;
	setAttr ".tk[233]" -type "float3" -0.019267555 -0.060575008 1.2021356 ;
	setAttr ".tk[234]" -type "float3" -0.021204296 -0.065363951 1.1821877 ;
	setAttr ".tk[235]" -type "float3" -0.021065405 -0.069102079 1.1961256 ;
	setAttr ".tk[236]" -type "float3" -0.018864492 -0.070343837 1.240238 ;
	setAttr ".tk[237]" -type "float3" -0.014816994 -0.067086101 1.3031904 ;
	setAttr ".tk[238]" -type "float3" -0.0093190949 -0.058232345 1.3714036 ;
	setAttr ".tk[239]" -type "float3" -0.0029089935 -0.045379624 1.4329232 ;
	setAttr ".tk[240]" -type "float3" 0.0047290642 -0.028523276 1.9882511 ;
	setAttr ".tk[241]" -type "float3" 0.013231917 -0.011958289 2.0227904 ;
	setAttr ".tk[242]" -type "float3" 0.020439537 0.0035526135 2.0484045 ;
	setAttr ".tk[243]" -type "float3" 0.025646392 0.015544072 2.0643101 ;
	setAttr ".tk[244]" -type "float3" 0.0283428 0.022796517 2.0709255 ;
	setAttr ".tk[245]" -type "float3" 0.028264813 0.024578288 2.0685432 ;
	setAttr ".tk[246]" -type "float3" 0.025420077 0.020721866 2.0570989 ;
	setAttr ".tk[247]" -type "float3" 0.020087037 0.011745482 2.036334 ;
	setAttr ".tk[248]" -type "float3" 0.012787741 -0.00018423928 2.0070889 ;
	setAttr ".tk[249]" -type "float3" 0.0042366874 -0.012620892 1.9708028 ;
	setAttr ".tk[250]" -type "float3" -0.004729074 -0.023445409 1.9299755 ;
	setAttr ".tk[251]" -type "float3" -0.013231928 -0.031411339 1.8885206 ;
	setAttr ".tk[252]" -type "float3" -0.020439552 -0.036691941 1.8514036 ;
	setAttr ".tk[253]" -type "float3" -0.025646405 -0.040810116 1.8237057 ;
	setAttr ".tk[254]" -type "float3" -0.028342802 -0.0455392 1.8093523 ;
	setAttr ".tk[255]" -type "float3" -0.028264819 -0.051253594 1.811172 ;
	setAttr ".tk[256]" -type "float3" -0.025420086 -0.056208014 1.8296688 ;
	setAttr ".tk[257]" -type "float3" -0.020087041 -0.05758189 1.8620892 ;
	setAttr ".tk[258]" -type "float3" -0.01278775 -0.053307708 1.9032012 ;
	setAttr ".tk[259]" -type "float3" -0.0042367079 -0.043134145 1.9470993 ;
	setAttr ".tk[260]" -type "float3" 0.005549876 -0.04538874 2.5296454 ;
	setAttr ".tk[261]" -type "float3" 0.016083715 -0.029304076 2.5585117 ;
	setAttr ".tk[262]" -type "float3" 0.025043188 -0.01375545 2.5821588 ;
	setAttr ".tk[263]" -type "float3" 0.031551264 -0.0010205806 2.5984883 ;
	setAttr ".tk[264]" -type "float3" 0.034970853 0.0069829747 2.6061308 ;
	setAttr ".tk[265]" -type "float3" 0.034967292 0.0092818365 2.6048484 ;
	setAttr ".tk[266]" -type "float3" 0.031540852 0.0059127598 2.595365 ;
	setAttr ".tk[267]" -type "float3" 0.02502699 -0.0022617464 2.578449 ;
	setAttr ".tk[268]" -type "float3" 0.016063306 -0.013567564 2.555964 ;
	setAttr ".tk[269]" -type "float3" 0.005527243 -0.025988599 2.5294838 ;
	setAttr ".tk[270]" -type "float3" -0.0055498811 -0.037648741 2.5017433 ;
	setAttr ".tk[271]" -type "float3" -0.016083717 -0.047214091 2.4750891 ;
	setAttr ".tk[272]" -type "float3" -0.025043201 -0.05332702 2.4528623 ;
	setAttr ".tk[273]" -type "float3" -0.031551261 -0.057374414 2.4364476 ;
	setAttr ".tk[274]" -type "float3" -0.03497085 -0.061854865 2.4261444 ;
	setAttr ".tk[275]" -type "float3" -0.034967281 -0.067679726 2.4227583 ;
	setAttr ".tk[276]" -type "float3" -0.031540856 -0.073005155 2.4280279 ;
	setAttr ".tk[277]" -type "float3" -0.025026985 -0.074239649 2.4435775 ;
	setAttr ".tk[278]" -type "float3" -0.016063318 -0.069456801 2.4682925 ;
	setAttr ".tk[279]" -type "float3" -0.00552725 -0.059468776 2.4981983 ;
	setAttr ".tk[280]" -type "float3" 0.0064094565 -0.056332812 3.1797719 ;
	setAttr ".tk[281]" -type "float3" 0.019190364 -0.037429787 3.2080495 ;
	setAttr ".tk[282]" -type "float3" 0.030092796 -0.019942595 3.2322083 ;
	setAttr ".tk[283]" -type "float3" 0.038049523 -0.0060318457 3.2494774 ;
	setAttr ".tk[284]" -type "float3" 0.042281695 0.002675208 3.2579246 ;
	setAttr ".tk[285]" -type "float3" 0.042375039 0.0050863968 3.2565062 ;
	setAttr ".tk[286]" -type "float3" 0.03832043 0.00094337139 3.2453399 ;
	setAttr ".tk[287]" -type "float3" 0.030514741 -0.0090332218 3.2258043 ;
	setAttr ".tk[288]" -type "float3" 0.019722065 -0.023514111 3.2001326 ;
	setAttr ".tk[289]" -type "float3" 0.0069988323 -0.040207788 3.1716313 ;
	setAttr ".tk[290]" -type "float3" -0.0064094802 -0.055962194 3.1444662 ;
	setAttr ".tk[291]" -type "float3" -0.019190371 -0.068882599 3.1216176 ;
	setAttr ".tk[292]" -type "float3" -0.030092815 -0.07835649 3.1047285 ;
	setAttr ".tk[293]" -type "float3" -0.03623287 -0.084888652 3.0941539 ;
	setAttr ".tk[294]" -type "float3" -0.03661735 -0.089263536 3.0896366 ;
	setAttr ".tk[295]" -type "float3" -0.038072955 -0.093508989 3.0893915 ;
	setAttr ".tk[296]" -type "float3" -0.038320437 -0.096235812 3.0943248 ;
	setAttr ".tk[297]" -type "float3" -0.030514754 -0.094441727 3.1064358 ;
	setAttr ".tk[298]" -type "float3" -0.019722072 -0.087074243 3.1256545 ;
	setAttr ".tk[299]" -type "float3" -0.0069988519 -0.073914483 3.1509488 ;
	setAttr ".tk[300]" -type "float3" 0.024061242 -0.059557442 4.117557 ;
	setAttr ".tk[301]" -type "float3" 0.04988626 -0.036626495 4.151772 ;
	setAttr ".tk[302]" -type "float3" 0.070828125 -0.017414866 4.1706476 ;
	setAttr ".tk[303]" -type "float3" 0.08483693 -0.0042706169 4.1719131 ;
	setAttr ".tk[304]" -type "float3" 0.090541176 0.0012038782 4.1551619 ;
	setAttr ".tk[305]" -type "float3" 0.087382771 -0.0016320203 4.1219349 ;
	setAttr ".tk[306]" -type "float3" 0.075670496 -0.012376835 4.0756011 ;
	setAttr ".tk[307]" -type "float3" 0.056551274 -0.029773965 4.0208778 ;
	setAttr ".tk[308]" -type "float3" 0.03189645 -0.051693343 3.9635074 ;
	setAttr ".tk[309]" -type "float3" 0.0041192179 -0.075539559 3.9095213 ;
	setAttr ".tk[310]" -type "float3" -0.023524392 -0.098698914 3.8644512 ;
	setAttr ".tk[311]" -type "float3" -0.034712695 -0.11619189 3.8351724 ;
	setAttr ".tk[312]" -type "float3" -0.022198772 -0.1234782 3.827116 ;
	setAttr ".tk[313]" -type "float3" 0.0059353672 -0.12215425 3.8389766 ;
	setAttr ".tk[314]" -type "float3" 0.033459738 -0.11800586 3.8644593 ;
	setAttr ".tk[315]" -type "float3" 0.045060799 -0.1154309 3.8974493 ;
	setAttr ".tk[316]" -type "float3" 0.036189396 -0.11359514 3.9356997 ;
	setAttr ".tk[317]" -type "float3" 0.015898796 -0.10891639 3.9788854 ;
	setAttr ".tk[318]" -type "float3" 0.00030611223 -0.098604701 4.0257196 ;
	setAttr ".tk[319]" -type "float3" 0.0021743164 -0.081839845 4.0732837 ;
	setAttr ".tk[320]" -type "float3" 0.027738411 -0.057134207 5.0986862 ;
	setAttr ".tk[321]" -type "float3" 0.014222284 -0.025980908 5.202013 ;
	setAttr ".tk[322]" -type "float3" 0.0092398226 0.00052193203 5.2834024 ;
	setAttr ".tk[323]" -type "float3" 0.0068442528 0.018449849 5.3278265 ;
	setAttr ".tk[324]" -type "float3" 0.0049843397 0.024793418 5.3381333 ;
	setAttr ".tk[325]" -type "float3" 0.0010053921 0.01833793 5.3133898 ;
	setAttr ".tk[326]" -type "float3" -0.0059036491 4.1144202e-005 5.2557554 ;
	setAttr ".tk[327]" -type "float3" -0.016816579 -0.027426906 5.1609254 ;
	setAttr ".tk[328]" -type "float3" -0.024801137 -0.060242038 5.0494728 ;
	setAttr ".tk[329]" -type "float3" -0.024372103 -0.093904272 4.9345837 ;
	setAttr ".tk[330]" -type "float3" -0.014496794 -0.1238491 4.8136845 ;
	setAttr ".tk[331]" -type "float3" 0.012732927 -0.14537641 4.723392 ;
	setAttr ".tk[332]" -type "float3" 0.056566857 -0.15683919 4.6818285 ;
	setAttr ".tk[333]" -type "float3" 0.10896139 -0.16023929 4.6926746 ;
	setAttr ".tk[334]" -type "float3" 0.14494283 -0.16007906 4.6904812 ;
	setAttr ".tk[335]" -type "float3" 0.15057626 -0.15911309 4.662056 ;
	setAttr ".tk[336]" -type "float3" 0.13933659 -0.15316726 4.6858177 ;
	setAttr ".tk[337]" -type "float3" 0.11445893 -0.13943011 4.7589278 ;
	setAttr ".tk[338]" -type "float3" 0.083630487 -0.11739585 4.8693871 ;
	setAttr ".tk[339]" -type "float3" 0.051859148 -0.088937573 4.9847555 ;
	setAttr ".tk[340]" -type "float3" -0.11557659 -0.080038071 5.9476538 ;
	setAttr ".tk[341]" -type "float3" -0.1273078 -0.044901326 6.0570016 ;
	setAttr ".tk[342]" -type "float3" -0.13554657 -0.016840281 6.1430955 ;
	setAttr ".tk[343]" -type "float3" -0.14052039 9.2717237e-005 6.1960921 ;
	setAttr ".tk[344]" -type "float3" -0.14305444 0.0030128276 6.2095194 ;
	setAttr ".tk[345]" -type "float3" -0.14404926 -0.0083908904 6.1823058 ;
	setAttr ".tk[346]" -type "float3" -0.14404926 -0.032053944 6.1185312 ;
	setAttr ".tk[347]" -type "float3" -0.14305444 -0.064318992 6.0260816 ;
	setAttr ".tk[348]" -type "float3" -0.14020157 -0.10101993 5.9150262 ;
	setAttr ".tk[349]" -type "float3" -0.13537231 -0.13751963 5.7963872 ;
	setAttr ".tk[350]" -type "float3" -0.12703948 -0.17027812 5.6826339 ;
	setAttr ".tk[351]" -type "float3" -0.11522058 -0.19608243 5.5863523 ;
	setAttr ".tk[352]" -type "float3" -0.10079563 -0.21311046 5.5164385 ;
	setAttr ".tk[353]" -type "float3" -0.085875139 -0.22153179 5.4780145 ;
	setAttr ".tk[354]" -type "float3" -0.073415883 -0.22215931 5.4680901 ;
	setAttr ".tk[355]" -type "float3" -0.066337347 -0.21560353 5.4850421 ;
	setAttr ".tk[356]" -type "float3" -0.066437237 -0.20174293 5.5322199 ;
	setAttr ".tk[357]" -type "float3" -0.073691644 -0.18010385 5.609592 ;
	setAttr ".tk[358]" -type "float3" -0.086255535 -0.1511627 5.7112179 ;
	setAttr ".tk[359]" -type "float3" -0.10119896 -0.11694271 5.8279185 ;
	setAttr ".tk[360]" -type "float3" -0.088253483 -0.10092343 7.1415343 ;
	setAttr ".tk[361]" -type "float3" -0.079690449 -0.054367289 7.357461 ;
	setAttr ".tk[362]" -type "float3" -0.073586248 -0.017037081 7.5307846 ;
	setAttr ".tk[363]" -type "float3" -0.068557791 0.006798706 7.6461277 ;
	setAttr ".tk[364]" -type "float3" -0.066379465 0.013630374 7.6834149 ;
	setAttr ".tk[365]" -type "float3" -0.066379465 0.0024663256 7.6405249 ;
	setAttr ".tk[366]" -type "float3" -0.069001414 -0.024734721 7.5244465 ;
	setAttr ".tk[367]" -type "float3" -0.074684553 -0.063964643 7.3509054 ;
	setAttr ".tk[368]" -type "float3" -0.081893712 -0.10925212 7.1457624 ;
	setAttr ".tk[369]" -type "float3" -0.088253483 -0.15523219 6.9352193 ;
	setAttr ".tk[370]" -type "float3" -0.091476612 -0.19770573 6.7451463 ;
	setAttr ".tk[371]" -type "float3" -0.093640491 -0.23363294 6.5826082 ;
	setAttr ".tk[372]" -type "float3" -0.092757307 -0.25894108 6.4602261 ;
	setAttr ".tk[373]" -type "float3" -0.093640491 -0.27377507 6.3696332 ;
	setAttr ".tk[374]" -type "float3" -0.095146768 -0.27845836 6.3316693 ;
	setAttr ".tk[375]" -type "float3" -0.094834618 -0.27297798 6.3655267 ;
	setAttr ".tk[376]" -type "float3" -0.098511055 -0.25849932 6.4429851 ;
	setAttr ".tk[377]" -type "float3" -0.099898957 -0.23273808 6.5677953 ;
	setAttr ".tk[378]" -type "float3" -0.098511055 -0.19504033 6.7279806 ;
	setAttr ".tk[379]" -type "float3" -0.095765017 -0.15002979 6.9202185 ;
	setAttr ".tk[380]" -type "float3" -0.0074883522 -0.13729516 8.4941673 ;
	setAttr ".tk[381]" -type "float3" -0.0047390647 -0.091226526 8.7795486 ;
	setAttr ".tk[382]" -type "float3" -0.0016404289 -0.054341488 9.0191135 ;
	setAttr ".tk[383]" -type "float3" -0.00024109246 -0.030616542 9.1771193 ;
	setAttr ".tk[384]" -type "float3" 4.8254408e-020 -0.022959922 9.2277842 ;
	setAttr ".tk[385]" -type "float3" -1.7208457e-015 -0.032003339 9.1679726 ;
	setAttr ".tk[386]" -type "float3" -0.0005512177 -0.056611791 9.0077209 ;
	setAttr ".tk[387]" -type "float3" -0.0024456589 -0.093561575 8.7728424 ;
	setAttr ".tk[388]" -type "float3" -0.0044087158 -0.13904087 8.4953508 ;
	setAttr ".tk[389]" -type "float3" -0.0058542709 -0.18848081 8.2082376 ;
	setAttr ".tk[390]" -type "float3" -0.0064442381 -0.2358463 7.9269414 ;
	setAttr ".tk[391]" -type "float3" -0.0071834093 -0.2767373 7.6548929 ;
	setAttr ".tk[392]" -type "float3" -0.0092184898 -0.3079004 7.4182372 ;
	setAttr ".tk[393]" -type "float3" -0.01040097 -0.32704726 7.258131 ;
	setAttr ".tk[394]" -type "float3" -0.012395566 -0.33390227 7.1963038 ;
	setAttr ".tk[395]" -type "float3" -0.011673728 -0.32722813 7.2545557 ;
	setAttr ".tk[396]" -type "float3" -0.011374457 -0.30772662 7.4131641 ;
	setAttr ".tk[397]" -type "float3" -0.010142876 -0.27656719 7.6467786 ;
	setAttr ".tk[398]" -type "float3" -0.0097740544 -0.23560353 7.9174309 ;
	setAttr ".tk[399]" -type "float3" -0.009370055 -0.18753754 8.2003622 ;
	setAttr ".tk[400]" -type "float3" 6.2172489e-015 -0.26036254 9.7135286 ;
	setAttr ".tk[401]" -type "float3" 6.2172489e-015 -0.21735917 9.9816685 ;
	setAttr ".tk[402]" -type "float3" 3.1086245e-015 -0.18315971 10.186462 ;
	setAttr ".tk[403]" -type "float3" 1.5543122e-015 -0.16124463 10.315396 ;
	setAttr ".tk[404]" -type "float3" 6.953656e-025 -0.15363932 10.359268 ;
	setAttr ".tk[405]" -type "float3" -1.5543122e-015 -0.16093522 10.314366 ;
	setAttr ".tk[406]" -type "float3" -3.1086245e-015 -0.18283327 10.185621 ;
	setAttr ".tk[407]" -type "float3" -6.2172489e-015 -0.21735917 9.9816685 ;
	setAttr ".tk[408]" -type "float3" -6.2172489e-015 -0.26076126 9.7135525 ;
	setAttr ".tk[409]" -type "float3" -6.2172489e-015 -0.30831546 9.3978271 ;
	setAttr ".tk[410]" -type "float3" -6.2172489e-015 -0.35422361 9.0611467 ;
	setAttr ".tk[411]" -type "float3" -6.2172489e-015 -0.39523602 8.7336493 ;
	setAttr ".tk[412]" -type "float3" -3.1086245e-015 -0.42667529 8.4577417 ;
	setAttr ".tk[413]" -type "float3" -1.5543122e-015 -0.44621694 8.2732201 ;
	setAttr ".tk[414]" -type "float3" -5.5586537e-022 -0.45243248 8.2111359 ;
	setAttr ".tk[415]" -type "float3" 1.5543122e-015 -0.44594026 8.2751169 ;
	setAttr ".tk[416]" -type "float3" 3.1086245e-015 -0.42627963 8.4600563 ;
	setAttr ".tk[417]" -type "float3" 6.2172489e-015 -0.39464921 8.7362995 ;
	setAttr ".tk[418]" -type "float3" 6.2172489e-015 -0.35352632 9.0632334 ;
	setAttr ".tk[419]" -type "float3" 6.2172489e-015 -0.30765566 9.3987856 ;
	setAttr ".tk[421]" -type "float3" 0 -0.27697429 9.2987757 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "40E72584-7048-7A0D-EEBA-76AEBC173FAF";
	setAttr ".dc" -type "componentList" 1 "f[420:439]";
createNode polyUnite -n "polyUnite3";
	rename -uid "B8D45A3A-5940-439F-CEB1-BFB173C51E43";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId9";
	rename -uid "9922552E-6640-3D3D-F7EE-A5BC170B09C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "9BC87050-8F46-9C71-A89B-EAB8982E1D96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:509]";
createNode groupId -n "groupId10";
	rename -uid "49091F87-7E40-F151-9733-4CBD5B2B43C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "DBE86177-0441-5F5E-37D2-559F66F2E0FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "95246F4D-EF4E-82F4-EF30-F4A3E7E51922";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:419]";
createNode groupId -n "groupId12";
	rename -uid "8C9E7FDD-C04F-4506-E7FC-C8854219DCCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "6752321B-3F4F-6FDB-BF5D-26B9332B4203";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "A7A26D50-FC40-E08A-264C-D5BD8210D95E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:929]";
createNode polySplitRing -n "polySplitRing8";
	rename -uid "4D98031B-8A44-B654-9A9B-80819CD4C5BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[591:606]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47729513049125671;
	setAttr ".re" 593;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak40";
	rename -uid "AE5EF8A7-3E41-CEA4-DC86-8DB3636F2E35";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[899:902]" -type "float3"  9.3132257e-009 -1.1175871e-008
		 -6.9034286e-008 0.031455539 -0.02528882 0 0.036447003 9.3132257e-010 0 -0.0030296356
		 0.0041137012 -7.4505806e-009;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "F08DA9AA-3A43-B0D0-61E6-0598C92E3B4F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[575:590]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.5263441801071167;
	setAttr ".re" 577;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMergeVert -n "polyMergeVert32";
	rename -uid "123053F4-C34F-078B-F7F2-4C8888EDBD1D";
	setAttr ".ics" -type "componentList" 7 "vtx[120:121]" "vtx[137:144]" "vtx[154:228]" "vtx[232:235]" "vtx[237:243]" "vtx[878:917]" "vtx[919:950]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak41";
	rename -uid "890CFC76-B246-FA93-921E-C18F8832DE21";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[898]" -type "float3" 0.010182038 0.010273933 0.023547649 ;
	setAttr ".tk[899]" -type "float3" 0.028566927 0.021204948 0.034421444 ;
	setAttr ".tk[900]" -type "float3" 0.027662575 0.053106308 0.060460091 ;
	setAttr ".tk[901]" -type "float3" -0.014082327 0.0084514618 0.029386759 ;
	setAttr ".tk[903]" -type "float3" -0.039366126 0.0043287277 0.029339314 ;
	setAttr ".tk[904]" -type "float3" -0.088490069 0.019603729 0.060618162 ;
	setAttr ".tk[905]" -type "float3" -0.063746572 0.01262188 0.034421444 ;
	setAttr ".tk[906]" -type "float3" -0.046256185 0.0026960373 0.023517609 ;
	setAttr ".tk[907]" -type "float3" -0.035494924 -0.0078144073 0.029687643 ;
	setAttr ".tk[908]" -type "float3" -0.033640385 -0.01624012 0.052899122 ;
	setAttr ".tk[909]" -type "float3" -0.044425249 -0.017127991 0.091601849 ;
	setAttr ".tk[910]" -type "float3" 0.012633651 0.0082483292 0.062183857 ;
	setAttr ".tk[911]" -type "float3" 0.052762806 0.022605896 0.035732269 ;
	setAttr ".tk[912]" -type "float3" 0.0093705356 0.02848053 0.036774635 ;
	setAttr ".tk[913]" -type "float3" -0.034032702 0.022320747 0.035503626 ;
	setAttr ".tk[914]" -type "float3" -0.0073456019 0.0085306168 0.062141418 ;
	setAttr ".tk[915]" -type "float3" 0.033567086 -0.016320229 0.091297626 ;
	setAttr ".tk[916]" -type "float3" 0.0132007 -0.013216972 0.052671671 ;
	setAttr ".tk[917]" -type "float3" 0.0053189844 -0.0021877289 0.029603004 ;
createNode polyCube -n "polyCube3";
	rename -uid "4C9F7EDA-C744-0AEA-4C2F-DC9AE9547CC2";
	setAttr ".sw" 2;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "BF48DC95-1947-0FDC-A3AC-E1AD73ACC781";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:10]" "e[14:16]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0 4.3217515993752302 2.582684657410776 1;
	setAttr ".wt" 0.92198938131332397;
	setAttr ".dr" no;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "B89C4665-7D49-4DC5-CD46-5E9B0F271592";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0 4.3217515993752302 2.582684657410776 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.13457483 5.7272162 2.2846251 ;
	setAttr ".rs" 1770449871;
	setAttr ".lt" -type "double3" 0 0 0.56914135824633549 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.13457483416442384 5.5397542258840851 1.9361938811960302 ;
	setAttr ".cbx" -type "double3" -0.13457483416442384 5.9146786984668633 2.6330560892010597 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "EA219485-D944-2D78-2384-0C8EF3CFAE71";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0 4.3217515993752302 2.582684657410776 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.70371622 5.7272162 2.2846251 ;
	setAttr ".rs" 2020286967;
	setAttr ".lt" -type "double3" 0 0 0.2777963909772343 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.70371620487343201 5.539754407604689 1.9361939582717158 ;
	setAttr ".cbx" -type "double3" -0.70371620487343201 5.9146783350256538 2.633056127738902 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "B012A25C-CC45-8AEC-323D-B195F2A764FA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[40:41]" "e[43]" "e[45]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0 4.3217515993752302 2.582684657410776 1;
	setAttr ".wt" 0.52873122692108154;
	setAttr ".dr" no;
	setAttr ".re" 43;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "CBBC5320-2F42-DA61-260E-1ABFBF5B00C1";
	setAttr ".ics" -type "componentList" 2 "f[20]" "f[25]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0 4.3217515993752302 2.582684657410776 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.84261441 5.6082983 2.3098443 ;
	setAttr ".rs" 1671726605;
	setAttr ".lt" -type "double3" -2.2204460492503131e-016 -8.8817841970012523e-016 
		2.8321542971835729 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.9815125619517453 5.539754407604689 1.9866322097502316 ;
	setAttr ".cbx" -type "double3" -0.70371620487343201 5.6768424077592909 2.633056127738902 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "BCF51F28-3547-F02C-6082-86912575A868";
	setAttr ".ics" -type "componentList" 1 "f[74:93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31620538 6.0037885 2.2189648 ;
	setAttr ".rs" 607730005;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65547990798950195 5.9459924697875977 1.8843164443969727 ;
	setAttr ".cbx" -type "double3" 0.023069113492965698 6.06158447265625 2.5536129474639893 ;
createNode polyTweak -n "polyTweak42";
	rename -uid "60E2F313-A14E-6F98-3F72-53B3322B5143";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[481:520]" -type "float3"  0 0.11016127 -0.024147356
		 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127
		 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356
		 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127
		 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356
		 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127
		 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356
		 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127
		 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356
		 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127
		 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356
		 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127 -0.024147356 0 0.11016127
		 -0.024147356;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "CB09189D-254E-935B-A0EF-FFBD7C47AA28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[8:10]" "e[21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.83802473545074463;
	setAttr ".dr" no;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak43";
	rename -uid "1C4239F6-8F4E-0F70-2149-54B6499181FC";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[1]" -type "float3" -3.7252903e-009 -1.3211654e-014 0 ;
	setAttr ".tk[2]" -type "float3" 3.7252903e-009 -1.3211654e-014 0 ;
	setAttr ".tk[5]" -type "float3" -0.14261268 -0.031612836 -0.031619377 ;
	setAttr ".tk[6]" -type "float3" 3.7252903e-009 1.3211654e-014 0 ;
	setAttr ".tk[8]" -type "float3" -0.14261268 -0.031612836 -0.031619377 ;
	setAttr ".tk[20]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[21]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[22]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[23]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[24]" -type "float3" 0.15536952 -0.026789645 -0.026795195 ;
	setAttr ".tk[25]" -type "float3" 0.15536952 -0.026789645 -0.026795195 ;
	setAttr ".tk[32]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[33]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[34]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
	setAttr ".tk[35]" -type "float3" 0 7.4505806e-009 -7.4505806e-009 ;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "7162B3D0-614C-4D71-80B6-698F94E0E927";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[55:56]" "e[58]" "e[60]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.17026285827159882;
	setAttr ".re" 55;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "F1F1E373-3F4B-FE93-130E-7FAF3C6CF115";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[8:10]" "e[73]" "e[75]" "e[77]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.69309693574905396;
	setAttr ".dr" no;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "CFA9E0E6-FE43-C486-FF36-4D968C655384";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[8:10]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.54617530107498169;
	setAttr ".dr" no;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "22270C3D-D24F-4B5A-989B-14AF61107F91";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[8:10]" "e[109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.33902791142463684;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "A200F7D0-2446-0414-11C4-99BD54DAE11F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[80:81]" "e[83]" "e[85]" "e[87]" "e[89]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.31689742207527161;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "4C26595F-7A44-61D4-5DE9-158E245C67DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[128:129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.45519921183586121;
	setAttr ".re" 128;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "1E34BD94-E642-060A-8567-8582C17618B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]";
	setAttr ".ix" -type "matrix" 0.26914966832884768 0 -0 0 -0 3.0487658345874546 -0.64655771151650632 0
		 0 0.13708836359581056 0.6464238409129851 0 0.10917022993418546 4.4198773448065181 2.582684657410776 1;
	setAttr ".wt" 0.69252908229827881;
	setAttr ".dr" no;
	setAttr ".re" 140;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyUnite -n "polyUnite4";
	rename -uid "D99D79EE-CF4A-0230-54A8-5B87FB1A5386";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId14";
	rename -uid "CC435709-B54D-A838-1B54-ACB0796F29F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "F084AE5B-F041-795A-FFA5-37906C9CDA0A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode groupId -n "groupId15";
	rename -uid "823DC457-184D-3AB3-87FA-A3B25D594BA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "5D6E740E-F943-AF5B-903C-66A5DA8E664E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "78D50322-9740-F3A0-9A9C-D7BC62A1E1B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:657]";
createNode polyCube -n "polyCube4";
	rename -uid "CDA59758-634D-C80C-4E97-3B9C181B506B";
	setAttr ".sw" 2;
	setAttr ".sd" 4;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "0793AF42-9542-F72B-954C-7B84D143BB00";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[1]" "e[3]" "e[5]" "e[7]" "e[9]" "e[11]" "e[13]" "e[15]" "e[17]" "e[19]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.92832297086715698;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "AE9DFF11-FB4D-FE69-47D0-1DA341352E34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.12662258744239807;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "158F18F3-D24A-0562-E914-A88A49C7F39A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:34]" "e[38:40]" "e[58]" "e[62]" "e[80]" "e[84]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.60733127593994141;
	setAttr ".re" 33;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "D9DD4360-1B4F-F899-D480-548F53728E38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[23:25]" "e[47:49]" "e[68]" "e[72]" "e[90]" "e[94]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.29354658722877502;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "C0F2B448-4544-6CEE-5DDC-668C4207DB6A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[26:28]" "e[44:46]" "e[66]" "e[74]" "e[88]" "e[95]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.12656784057617188;
	setAttr ".re" 74;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "81A1F612-A645-353A-63F9-6FBA583B4C41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[44:46]" "e[66]" "e[88]" "e[136:137]" "e[139]" "e[141]" "e[153]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.90076851844787598;
	setAttr ".dr" no;
	setAttr ".re" 136;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "4155EAC1-B14C-6FE0-F2FE-19A6AE0EDA0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[29:31]" "e[41:43]" "e[64]" "e[75]" "e[78]" "e[86]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".wt" 0.92074620723724365;
	setAttr ".dr" no;
	setAttr ".re" 75;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "709DF91F-1D44-94F4-8217-509C972A4A4F";
	setAttr ".ics" -type "componentList" 20 "f[261]" "f[264]" "f[272]" "f[280]" "f[288]" "f[296]" "f[311]" "f[314]" "f[329]" "f[332]" "f[347]" "f[350]" "f[365]" "f[368]" "f[383]" "f[386]" "f[401]" "f[404]" "f[419]" "f[422]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34052885 2.9565165 -4.081759 ;
	setAttr ".rs" 1549719372;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.84052884578704834 2.3314371109008789 -4.445439338684082 ;
	setAttr ".cbx" -type "double3" 0.15947115421295166 3.5815961360931396 -3.7180788516998291 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "5069C9C7-CD42-0450-51A2-71BDD1F4F837";
	setAttr ".ics" -type "componentList" 15 "f[2:4]" "f[6]" "f[8]" "f[28]" "f[35:37]" "f[46]" "f[48:49]" "f[56:58]" "f[61]" "f[70]" "f[77]" "f[80]" "f[87]" "f[90]" "f[97]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.36392081 2.8112442 -5.104845 ;
	setAttr ".rs" 1528127219;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5869994682921869 2.8112441721846881 -6.1888032654797636 ;
	setAttr ".cbx" -type "double3" 1.859157863664838 2.8112441721846881 -4.0208868584702477 ;
createNode polyTweak -n "polyTweak44";
	rename -uid "AC33001D-5D48-9CBA-9AA7-A7AB1FB5F125";
	setAttr ".uopa" yes;
	setAttr -s 64 ".tk";
	setAttr ".tk[30]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.042919464 ;
	setAttr ".tk[51]" -type "float3" -0.025450798 0 -0.042919464 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.042919464 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.042919464 ;
	setAttr ".tk[54]" -type "float3" -0.025450798 0 -0.042919464 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.042919464 ;
	setAttr ".tk[56]" -type "float3" 0.017768586 0 -0.042919464 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.042919464 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.042919464 ;
	setAttr ".tk[59]" -type "float3" 0.017768586 0 -0.042919464 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.040935665 ;
	setAttr ".tk[61]" -type "float3" 0.017768586 0 0.040935665 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.040935665 ;
	setAttr ".tk[63]" -type "float3" -0.025450798 0 0.040935665 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.040935665 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.040935665 ;
	setAttr ".tk[66]" -type "float3" -0.025450798 0 0.040935665 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.040935665 ;
	setAttr ".tk[68]" -type "float3" 0.017768586 0 0.040935665 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.040935665 ;
	setAttr ".tk[70]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.025450798 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.017768586 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.017768586 0 0.02849951 ;
	setAttr ".tk[81]" -type "float3" 0 0 0.02849951 ;
	setAttr ".tk[82]" -type "float3" -0.025450798 0 0.02849951 ;
	setAttr ".tk[83]" -type "float3" 0 0 0.02849951 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.02849951 ;
	setAttr ".tk[85]" -type "float3" -0.025450798 0 0.02849951 ;
	setAttr ".tk[86]" -type "float3" 0 0 0.02849951 ;
	setAttr ".tk[87]" -type "float3" 0.017768586 0 0.02849951 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.02849951 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.02849951 ;
	setAttr ".tk[90]" -type "float3" 0.017768586 0 0.02919637 ;
	setAttr ".tk[91]" -type "float3" 0 0 0.02919637 ;
	setAttr ".tk[92]" -type "float3" -0.025450798 0 0.02919637 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.02919637 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.02919637 ;
	setAttr ".tk[95]" -type "float3" -0.025450798 0 0.02919637 ;
	setAttr ".tk[96]" -type "float3" 0 0 0.02919637 ;
	setAttr ".tk[97]" -type "float3" 0.017768586 0 0.02919637 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.02919637 ;
	setAttr ".tk[99]" -type "float3" 0 0 0.02919637 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "5BC94DD9-C54F-8458-84F4-AC9CD1F95716";
	setAttr ".ics" -type "componentList" 4 "f[5]" "f[47]" "f[78:79]" "f[88:89]";
	setAttr ".ix" -type "matrix" 4.4461573319570249 0 0 0 0 0.33646213375136086 0 0 0 0 2.1679164070095154 0
		 -0.36392080231367441 2.6430131053090076 -5.1048450619750056 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31992477 2.811244 -5.1048446 ;
	setAttr ".rs" 2006403735;
	setAttr ".lt" -type "double3" 0 2.1788998729778525e-017 0.098128926560206775 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4186656720106638 2.8112440117470401 -5.646823646855835 ;
	setAttr ".cbx" -type "double3" 1.7788161433682115 2.8112440117470401 -4.5628659602226271 ;
createNode polyTweak -n "polyTweak45";
	rename -uid "130585AB-AA4C-CF95-6045-B9B354C7332B";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk[100:143]" -type "float3"  0 0.509817 0 0 0.509817 0
		 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817
		 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0
		 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817
		 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0
		 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817
		 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0 0.509817 0 0
		 0.509817 0 0 0.509817 0 0 0.509817 0;
createNode polyPipe -n "polyPipe1";
	rename -uid "1978126B-6548-4AA2-BE81-A38EEB71D6DD";
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe2";
	rename -uid "BC5890D5-7843-E804-DC90-FDBE808AF4A3";
	setAttr ".sc" 0;
createNode polyCylinder -n "polyCylinder5";
	rename -uid "9B992F0E-5F41-F38A-958F-EEBDFB976124";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyUnite -n "polyUnite5";
	rename -uid "827CA09B-E048-0E8C-5512-EA9FB72D6586";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId17";
	rename -uid "E5C04CBA-934D-DED4-E706-3AA7BAE558A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "913BC478-CC4E-D162-0ABE-B2B449B0D9A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "A3223D98-B64B-9347-8508-4C9B501E7150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "CDA5F771-C84A-C31D-C9A7-BE929AB3EAA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "6916E138-8C4D-8C4F-3BC3-69A4AE089716";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "0EB0686F-C84D-4146-CD3F-84B08B23A822";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "4BFB27EB-9341-079A-8558-E4B360EF5C20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "9C8B9BAC-FE4A-846A-570B-79A6C343ACE8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "34FF4BC1-0C43-7B27-E745-38A5160A4468";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "2FFBFA4F-5A48-F9B4-D001-3AA41B43C592";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "B8B0DCFC-BD4A-590C-67B0-AD875A83C5C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "A6CA6B80-C44A-2264-32E7-C2914B0D86E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "C4751584-6546-9E95-DC62-25A9610B7B84";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "6BA3B472-EE49-40C9-4D82-2EAFB0644E99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:359]";
createNode polyUnite -n "polyUnite6";
	rename -uid "7B72D457-1C47-36CF-F71B-F2BB300224EF";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId30";
	rename -uid "CFE14BA5-C64C-4CF3-2A29-5A8CD92679E3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "5BBCE4B0-FE4C-FE49-0982-CD87D36E89AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId31";
	rename -uid "EFCAAC69-324E-EBD0-8330-0DB9467FF89C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "0F725F5A-DF44-C6AC-A2B0-7E84F2851CC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "01005890-8447-9344-FDC2-9B932EA947B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "686AA69A-0948-1CD1-6D3C-F1829DFB0C66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "B072F754-5F47-A268-6A6D-AAA0284C414E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "F4709BC3-C840-B65A-7D41-1F9D7D70F7AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "B833411A-B246-3274-2298-97AF7C286A1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "A39F39AB-1D44-0F28-BD17-2BA3E7D44C89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "93B77893-D34C-9886-04E1-8394702BB35C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "494C40A5-544F-D14A-DBA4-45B020D8DC13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "9BAF72F1-B64D-12E9-B23B-80955969EEB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "920B60AC-8740-68B2-0787-E3911996BEC1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "ADF1905F-AF45-45EC-66D4-E2BB51B30A54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:359]";
createNode groupId -n "groupId43";
	rename -uid "F849F91A-6F46-F559-4865-C0A894626B6E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "1E358A89-A647-50FC-2F9D-61A996DF1E11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId44";
	rename -uid "F2123925-0340-F964-9A44-CBA9B2B152EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "98728573-BA4F-5DAC-D8C7-CEB381A75E4E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "D54AAD58-F848-A6EA-17B0-149E92CA8B45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId46";
	rename -uid "F7B8CECE-804D-BE96-64B9-8FA6951E1CF8";
	setAttr ".ihi" 0;
createNode polyCylinder -n "TWheel03:polyCylinder1";
	rename -uid "6D90CBBA-7649-E028-7313-259BF2DD7A96";
	setAttr ".r" 8.062;
	setAttr ".sc" 8;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "TWheel03:polyExtrudeFace1";
	rename -uid "D59A835A-6846-B619-821E-1E87C8438AD1";
	setAttr ".ics" -type "componentList" 3 "f[18]" "f[280:299]" "f[320:339]";
	setAttr ".ix" -type "matrix" 4.445913838668158 0 0 0 0 1.123080724070074e-016 0.5057905930428972 0
		 0 -4.445913838668158 9.8719118183780053e-016 0 0 6.2239269433136712 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0599884e-006 6.2239285 0 ;
	setAttr ".rs" 1759218182;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.9607417670892691 -2.7368137637871381 -2.9674587495128129 ;
	setAttr ".cbx" -type "double3" 8.9607396471123497 15.184670830379861 2.9674587495128146 ;
createNode polyTweak -n "TWheel03:polyTweak1";
	rename -uid "860F76E4-EE4B-71D3-8AA8-E3ACC44BCCD1";
	setAttr ".uopa" yes;
	setAttr -s 322 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102
		 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0
		 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0
		 -4.86697102 0 0 -4.86697102 0 0 -4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0;
	setAttr ".tk[166:321]" 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102 0 0 4.86697102
		 0 0 -4.86697102 0 0 4.86697102 0;
createNode polyExtrudeFace -n "TWheel03:polyExtrudeFace2";
	rename -uid "DFA19B39-B944-103E-BF15-7E802815048A";
	setAttr ".ics" -type "componentList" 1 "f[320:339]";
	setAttr ".ix" -type "matrix" 4.445913838668158 0 0 0 0 1.123080724070074e-016 0.5057905930428972 0
		 0 -4.445913838668158 9.8719118183780053e-016 0 0 6.2239269433136712 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.2999422e-007 6.223928 8.4364138 ;
	setAttr ".rs" 86939107;
	setAttr ".lt" -type "double3" 0 1.7763568394002505e-015 2.5239383380416704 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.4803708835446345 1.7435565897632683 8.4364135968912599 ;
	setAttr ".cbx" -type "double3" 4.4803698235561749 10.704298886846768 8.4364135968912635 ;
createNode polyTweak -n "TWheel03:polyTweak2";
	rename -uid "57D643F0-DD43-3BE2-5CCB-44976C221808";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk[301:345]" -type "float3"  0 10.81268597 1.110223e-016
		 0 10.81268597 2.7313882e-016 0 10.81268597 2.7313882e-016 0 10.81268597 0 0 10.81268597
		 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 1.110223e-016 0 10.81268597 0 0 10.81268597
		 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 4.4408921e-016 0 10.81268597 0 0
		 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597
		 0 0 10.81268597 0 0 10.81268597 1.110223e-016 0 10.81268597 2.7313882e-016 0 10.81268597
		 2.7313882e-016 0 10.81268597 0 0 10.81268597 1.110223e-016 0 10.81268597 0 0 10.81268597
		 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 4.4408921e-016
		 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0
		 10.81268597 0 0 10.81268597 0 0 10.81268597 0 0 10.81268597 1.110223e-016 0 10.81268597
		 2.7313882e-016 0 10.81268597 2.7313882e-016 0 10.81268597 2.7313882e-016;
createNode polySplitRing -n "TWheel03:polySplitRing1";
	rename -uid "7142179E-1949-E0F0-E8F7-5FA502E6CD24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[440:459]";
	setAttr ".ix" -type "matrix" 4.445913838668158 0 0 0 0 1.123080724070074e-016 0.5057905930428972 0
		 0 -4.445913838668158 9.8719118183780053e-016 0 0 6.2239269433136712 0 1;
	setAttr ".wt" 0.76626276969909668;
	setAttr ".dr" no;
	setAttr ".re" 446;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "TWheel03:polyTweak3";
	rename -uid "17CECD5B-3F44-CCAD-2E83-12ABDA4A2DB5";
	setAttr ".uopa" yes;
	setAttr -s 161 ".tk";
	setAttr ".tk[140]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[141]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[142]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[143]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[144]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[145]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[146]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[147]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[148]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[149]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[150]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[151]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[152]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[153]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[154]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[155]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[156]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[157]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[158]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[159]" -type "float3" 0 -3.2852483 0 ;
	setAttr ".tk[160]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[161]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[162]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[163]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[164]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[165]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[166]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[167]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[168]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[169]" -type "float3" 0 10.588348 1.8448335e-016 ;
	setAttr ".tk[170]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[171]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[172]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[173]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[174]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[175]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[176]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[177]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[178]" -type "float3" 0 10.588348 0 ;
	setAttr ".tk[179]" -type "float3" 0 10.588348 1.8448335e-016 ;
	setAttr ".tk[180]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[181]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[182]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[183]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[184]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[185]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[186]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[187]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[188]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[189]" -type "float3" 0 7.3031006 1.8448335e-016 ;
	setAttr ".tk[190]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[191]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[192]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[193]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[194]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[195]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[196]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[197]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[198]" -type "float3" 0 7.3031006 0 ;
	setAttr ".tk[199]" -type "float3" 0 7.3031006 1.8448335e-016 ;
	setAttr ".tk[240]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[241]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[242]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[243]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[244]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[245]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[246]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[247]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[248]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[249]" -type "float3" 0 6.4973164 1.6412849e-016 ;
	setAttr ".tk[250]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[251]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[252]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[253]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[254]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[255]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[256]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[257]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[258]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[259]" -type "float3" 0 6.4973164 1.6412849e-016 ;
	setAttr ".tk[260]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[261]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[262]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[263]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[264]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[265]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[266]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[267]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[268]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[269]" -type "float3" 0 6.4973164 1.6412849e-016 ;
	setAttr ".tk[270]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[271]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[272]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[273]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[274]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[275]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[276]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[277]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[278]" -type "float3" 0 6.4973164 0 ;
	setAttr ".tk[279]" -type "float3" 0 6.4973164 1.6412849e-016 ;
	setAttr ".tk[305]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[306]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[307]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[308]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[309]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[310]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[311]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[312]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[313]" -type "float3" 0 -3.3444202 0 ;
	setAttr ".tk[314]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[315]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[316]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[317]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[318]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[319]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[320]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[321]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[322]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[323]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
	setAttr ".tk[324]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
	setAttr ".tk[325]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[326]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[327]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[328]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[329]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[330]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[331]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[332]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[333]" -type "float3" 0 -3.3444202 0 ;
	setAttr ".tk[334]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[335]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[336]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[337]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[338]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[339]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[340]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[341]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[342]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[343]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
	setAttr ".tk[344]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
	setAttr ".tk[345]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[346]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[347]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
	setAttr ".tk[348]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[349]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[350]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[351]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[352]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[353]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[354]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[355]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
	setAttr ".tk[356]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[357]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[358]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[359]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[360]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[361]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[362]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[363]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[364]" -type "float3" 0 -3.3444202 -2.220446e-016 ;
	setAttr ".tk[365]" -type "float3" 0 -3.3444202 -2.8425737e-016 ;
createNode polySplitRing -n "TWheel03:polySplitRing2";
	rename -uid "895A0E33-0E4B-59B4-D35F-C6931B65A17C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[440:459]";
	setAttr ".ix" -type "matrix" 4.445913838668158 0 0 0 0 1.123080724070074e-016 0.5057905930428972 0
		 0 -4.445913838668158 9.8719118183780053e-016 0 0 6.2239269433136712 0 1;
	setAttr ".wt" 0.4715060293674469;
	setAttr ".re" 446;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "TWheel03:polyExtrudeFace3";
	rename -uid "CDB18AD0-C341-DC0F-FFC3-C794C1F95CBF";
	setAttr ".ics" -type "componentList" 1 "f[404:423]";
	setAttr ".ix" -type "matrix" 4.445913838668158 0 0 0 0 1.123080724070074e-016 0.5057905930428972 0
		 0 -4.445913838668158 9.8719118183780053e-016 0 0 6.2239269433136712 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.2399538e-006 6.2239332 1.792874 ;
	setAttr ".rs" 333676228;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.842967068357076 -29.619035885089566 -2.8827373684524513 ;
	setAttr ".cbx" -type "double3" 35.842958588449399 42.066902491578432 6.4684852461240956 ;
createNode polyTweak -n "TWheel03:polyTweak4";
	rename -uid "D61575E3-124F-BA3A-66FA-CE997EA116EF";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[366:405]" -type "float3"  -2.9802322e-008 2.31897688
		 2.9802322e-008 2.9802322e-008 2.31897688 0 0 2.31897688 -5.9604645e-008 2.9802322e-008
		 2.31897688 0 -2.9802322e-008 2.31897688 2.9802322e-008 0 2.31897688 2.9802322e-008
		 0 2.31897688 1.4901161e-008 0 2.31897688 0 0 2.31897688 1.4901161e-008 2.9802322e-008
		 2.31897688 -2.9802322e-008 2.9802322e-008 2.31897688 -5.9604645e-008 -1.4901161e-008
		 2.31897688 0 7.1054274e-015 2.31897688 5.9604645e-008 2.9802322e-008 2.31897688 5.9604645e-008
		 -2.9802322e-008 2.31897688 -5.9604645e-008 -1.4901161e-007 2.31897688 -2.9802322e-008
		 0 2.31897688 2.9802322e-008 0 2.31897688 0 0 2.31897688 1.4901161e-008 -2.9802322e-008
		 2.31897688 -2.9802322e-008 -2.9802322e-008 -5.79918814 2.9802322e-008 2.9802322e-008
		 -5.79918814 0 0 -5.79918814 -5.9604645e-008 2.9802322e-008 -5.79918814 0 -2.9802322e-008
		 -5.79918814 2.9802322e-008 0 -5.79918814 2.9802322e-008 0 -5.79918814 1.4901161e-008
		 0 -5.79918814 0 0 -5.79918814 1.4901161e-008 -8.9406967e-008 -5.79918814 -2.9802322e-008
		 2.9802322e-008 -5.79918814 -5.9604645e-008 -1.4901161e-008 -5.79918814 0 7.1054274e-015
		 -5.79918814 5.9604645e-008 1.4901161e-008 -5.79918814 5.9604645e-008 -2.9802322e-008
		 -5.79918814 -5.9604645e-008 -1.4901161e-007 -5.79918814 -2.9802322e-008 0 -5.79918814
		 2.9802322e-008 0 -5.79918814 0 0 -5.79918814 2.9802322e-008 8.9406967e-008 -5.79918814
		 -2.9802322e-008;
createNode polyTorus -n "TWheel03:polyTorus2";
	rename -uid "864C93A8-5B48-34E5-04E8-10B88524F639";
	setAttr ".r" 5.0039174246844542;
	setAttr ".sr" 1.1;
createNode polyExtrudeFace -n "TWheel03:polyExtrudeFace4";
	rename -uid "5E85B586-A548-2DA8-154B-7A8E30B2030E";
	setAttr ".ics" -type "componentList" 1 "f[384:403]";
	setAttr ".ix" -type "matrix" 4.445913838668158 0 0 0 0 1.9221439134075179e-016 0.86565666121745644 0
		 0 -4.445913838668158 9.8719118183780053e-016 0 0 6.2239269433136712 5.4905014233173226 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.2399538e-006 6.2239332 18.148211 ;
	setAttr ".rs" 1414264283;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.842967068357076 -29.619035885089566 17.562857669961399 ;
	setAttr ".cbx" -type "double3" 35.842958588449399 42.066902491578432 18.733563332465508 ;
createNode polyTweak -n "TWheel03:polyTweak5";
	rename -uid "E196643E-0D48-243E-6EED-B0B90C4B1A5D";
	setAttr ".uopa" yes;
	setAttr -s 184 ".tk";
	setAttr ".tk[160]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[161]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[162]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[163]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[164]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[165]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[166]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[167]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[168]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[169]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[170]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[171]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[172]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[173]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[174]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[175]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[176]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[177]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[178]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[179]" -type "float3" 0 -1.1570342 0 ;
	setAttr ".tk[200]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[201]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[202]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[203]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[204]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[205]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[206]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[207]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[208]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[209]" -type "float3" 0 4.4442315 1.9214169e-016 ;
	setAttr ".tk[210]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[211]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[212]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[213]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[214]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[215]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[216]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[217]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[218]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[219]" -type "float3" 0 4.4442315 1.9214169e-016 ;
	setAttr ".tk[220]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[221]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[222]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[223]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[224]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[225]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[226]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[227]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[228]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[229]" -type "float3" 0 4.4442315 1.9214169e-016 ;
	setAttr ".tk[230]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[231]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[232]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[233]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[234]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[235]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[236]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[237]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[238]" -type "float3" 0 4.4442315 0 ;
	setAttr ".tk[239]" -type "float3" 0 4.4442315 1.9214169e-016 ;
	setAttr ".tk[240]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[241]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[242]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[243]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[244]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[245]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[246]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[247]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[248]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[249]" -type "float3" 0 1.5211719 6.5766259e-017 ;
	setAttr ".tk[250]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[251]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[252]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[253]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[254]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[255]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[256]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[257]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[258]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[259]" -type "float3" 0 1.5211719 6.5766259e-017 ;
	setAttr ".tk[260]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[261]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[262]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[263]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[264]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[265]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[266]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[267]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[268]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[269]" -type "float3" 0 1.5211719 6.5766259e-017 ;
	setAttr ".tk[270]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[271]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[272]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[273]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[274]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[275]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[276]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[277]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[278]" -type "float3" 0 1.5211719 0 ;
	setAttr ".tk[279]" -type "float3" 0 1.5211719 6.5766259e-017 ;
	setAttr ".tk[280]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[281]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[282]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[283]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[284]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[285]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[286]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[287]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[288]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[289]" -type "float3" 0 5.0700979 2.1920036e-016 ;
	setAttr ".tk[290]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[291]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[292]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[293]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[294]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[295]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[296]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[297]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[298]" -type "float3" 0 5.0700979 0 ;
	setAttr ".tk[299]" -type "float3" 0 5.0700979 2.1920036e-016 ;
	setAttr ".tk[301]" -type "float3" 0 -10.828864 -1.110223e-016 ;
	setAttr ".tk[302]" -type "float3" 0 -10.828864 -4.6817438e-016 ;
	setAttr ".tk[303]" -type "float3" 0 -10.828864 -4.6817438e-016 ;
	setAttr ".tk[304]" -type "float3" 0 -10.828864 0 ;
	setAttr ".tk[366]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[367]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[368]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[369]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[370]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[371]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[372]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[373]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[374]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[375]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[376]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[377]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[378]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[379]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[380]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[381]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[382]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[383]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[384]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[385]" -type "float3" 0 1.1570342 0 ;
	setAttr ".tk[406]" -type "float3" 0.26058882 2.3727386 0.35866988 ;
	setAttr ".tk[407]" -type "float3" 0.13699968 2.3727386 0.42164159 ;
	setAttr ".tk[408]" -type "float3" 0.26058882 -2.3727386 0.35866988 ;
	setAttr ".tk[409]" -type "float3" 0.13699968 -2.3727386 0.42164159 ;
	setAttr ".tk[410]" -type "float3" -5.2443845e-008 2.3727386 0.44334024 ;
	setAttr ".tk[411]" -type "float3" -5.2443845e-008 -2.3727386 0.44334024 ;
	setAttr ".tk[412]" -type "float3" -0.13699971 2.3727386 0.42164159 ;
	setAttr ".tk[413]" -type "float3" -0.13699971 -2.3727386 0.42164159 ;
	setAttr ".tk[414]" -type "float3" -0.26058897 2.3727386 0.35867 ;
	setAttr ".tk[415]" -type "float3" -0.26058897 -2.3727386 0.35867 ;
	setAttr ".tk[416]" -type "float3" -0.35867006 2.3727386 0.26058888 ;
	setAttr ".tk[417]" -type "float3" -0.35867006 -2.3727386 0.26058888 ;
	setAttr ".tk[418]" -type "float3" -0.42164195 2.3727386 0.13699968 ;
	setAttr ".tk[419]" -type "float3" -0.42164195 -2.3727386 0.13699968 ;
	setAttr ".tk[420]" -type "float3" -0.44334018 2.3727386 -7.8665749e-008 ;
	setAttr ".tk[421]" -type "float3" -0.44334018 -2.3727386 -7.8665749e-008 ;
	setAttr ".tk[422]" -type "float3" -0.42164153 2.3727386 -0.13699973 ;
	setAttr ".tk[423]" -type "float3" -0.42164153 -2.3727386 -0.13699973 ;
	setAttr ".tk[424]" -type "float3" -0.35866988 2.3727386 -0.26058891 ;
	setAttr ".tk[425]" -type "float3" -0.35866988 -2.3727386 -0.26058891 ;
	setAttr ".tk[426]" -type "float3" -0.26058882 2.3727386 -0.35866988 ;
	setAttr ".tk[427]" -type "float3" -0.26058882 -2.3727386 -0.35866988 ;
	setAttr ".tk[428]" -type "float3" -0.13699971 2.3727386 -0.42164159 ;
	setAttr ".tk[429]" -type "float3" -0.13699971 -2.3727386 -0.42164159 ;
	setAttr ".tk[430]" -type "float3" -3.9231274e-008 2.3727386 -0.44334024 ;
	setAttr ".tk[431]" -type "float3" -3.9231274e-008 -2.3727386 -0.44334024 ;
	setAttr ".tk[432]" -type "float3" 0.13699968 2.3727386 -0.42164159 ;
	setAttr ".tk[433]" -type "float3" 0.13699967 -2.3727386 -0.42164159 ;
	setAttr ".tk[434]" -type "float3" 0.260589 2.3727386 -0.35866994 ;
	setAttr ".tk[435]" -type "float3" 0.260589 -2.3727386 -0.35866994 ;
	setAttr ".tk[436]" -type "float3" 0.35866982 2.3727386 -0.26058891 ;
	setAttr ".tk[437]" -type "float3" 0.35866982 -2.3727386 -0.26058891 ;
	setAttr ".tk[438]" -type "float3" 0.42164159 2.3727386 -0.13699965 ;
	setAttr ".tk[439]" -type "float3" 0.42164153 -2.3727386 -0.13699965 ;
	setAttr ".tk[440]" -type "float3" 0.44334018 2.3727386 -7.8665749e-008 ;
	setAttr ".tk[441]" -type "float3" 0.44334018 -2.3727386 -7.8665749e-008 ;
	setAttr ".tk[442]" -type "float3" 0.42164159 2.3727386 0.13699962 ;
	setAttr ".tk[443]" -type "float3" 0.42164153 -2.3727386 0.13699962 ;
	setAttr ".tk[444]" -type "float3" 0.35866988 2.3727386 0.26058888 ;
	setAttr ".tk[445]" -type "float3" 0.35866988 -2.3727386 0.26058888 ;
createNode polyUnite -n "polyUnite8";
	rename -uid "BFC247B5-0E46-2EAC-B27B-9A8495C9A57D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "TWheel03:groupId1";
	rename -uid "84ED76C3-8E41-DB6C-D382-9FA5FA1AEF20";
	setAttr ".ihi" 0;
createNode groupParts -n "TWheel03:groupParts1";
	rename -uid "5816853F-F14E-1BC2-285B-E29BC7C7234D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "TWheel03:groupId2";
	rename -uid "F4435B36-6447-2CA0-2A5F-A49340EF17D8";
	setAttr ".ihi" 0;
createNode groupId -n "TWheel03:groupId3";
	rename -uid "C556642F-924E-CDBC-DFEF-59A8C4BD4455";
	setAttr ".ihi" 0;
createNode groupParts -n "TWheel03:groupParts2";
	rename -uid "8EB312C5-D544-BB3F-B8BB-C09867406FA2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:503]";
createNode groupId -n "TWheel03:groupId4";
	rename -uid "80DA1D9D-9B45-DEFB-B942-8BB0F3181CB3";
	setAttr ".ihi" 0;
createNode groupId -n "TWheel03:groupId5";
	rename -uid "DCF515BC-1F49-CE71-45BF-EBB5A590DBC2";
	setAttr ".ihi" 0;
createNode groupParts -n "TWheel03:groupParts3";
	rename -uid "2F11115B-CC49-2112-CFB6-1EB029E93762";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:903]";
createNode groupId -n "groupId47";
	rename -uid "093E0090-AC42-4A89-B8E2-F4B82EB9A866";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "5567C39C-7047-4640-2650-7C889CF6E6D8";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "5235934B-C648-4919-362C-D782C9C92963";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId49";
	rename -uid "5F2940C9-154C-CB6C-B177-1CA8CC516AA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "EA7D1EB7-6E40-C232-ACB0-298910621EFF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId50";
	rename -uid "DA9DDCA8-1241-03F0-F4BA-ABAE17A01650";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "EAC3CFB4-6549-F510-5A03-0F835727580F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:503]";
createNode polySplitRing -n "polySplitRing27";
	rename -uid "F1F7FAB4-C44C-76C0-75D1-6BBD12E18FB3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[792]" "e[795]" "e[800]" "e[805]" "e[810]" "e[815]" "e[820]" "e[825]" "e[830]" "e[835]" "e[840]" "e[845]" "e[850]" "e[855]" "e[860]" "e[865]" "e[870]" "e[875]" "e[880]" "e[885]";
	setAttr ".ix" -type "matrix" 0.0014468809682501437 0 -0.03510185248658898 0 0 0.035131659689324919 0 0
		 0.03510185248658898 0 0.0014468809682501437 0 0.91534367609609157 3.0841533295374961 9.4450852956197409 1;
	setAttr ".wt" 0.51104861497879028;
	setAttr ".re" 880;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "C6E0943C-504D-1C6E-0EC7-99B655CA0564";
	setAttr ".dc" -type "componentList" 23 "f[0:159]" "f[300:319]" "f[340:343]" "f[404:424]" "f[426]" "f[428]" "f[430]" "f[432]" "f[434]" "f[436]" "f[438]" "f[440]" "f[442]" "f[444]" "f[446]" "f[448]" "f[450]" "f[452]" "f[454]" "f[456]" "f[458]" "f[460]" "f[462]";
createNode groupId -n "groupId51";
	rename -uid "2084B592-C04E-2BB7-DB1E-DAA4A6E6C621";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite9";
	rename -uid "9F4A694F-F946-9838-EA9B-05AF6388D98E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId52";
	rename -uid "70F1B3C6-8D45-EB3C-194D-6EB35D38B950";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "0F14719E-0348-2E8E-DF1E-51BA29E33916";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:599]";
createNode polyMergeVert -n "polyMergeVert33";
	rename -uid "4FF535C8-9043-23B2-53F4-4988B0EF2BF1";
	setAttr ".ics" -type "componentList" 2 "vtx[281:300]" "vtx[582:601]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert34";
	rename -uid "29D7BEA2-1247-5F2D-4485-0CB70780FFAD";
	setAttr ".ics" -type "componentList" 2 "vtx[281:300]" "vtx[582:601]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyUnite -n "polyUnite10";
	rename -uid "DA4E0D53-7248-2E8E-B03D-45BE280D725E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId53";
	rename -uid "C65D0267-2542-460A-6F57-9F8837A50F3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "9C9D7AF9-D54D-05FC-9397-329B981562BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:999]";
createNode polyUnite -n "polyUnite11";
	rename -uid "103B4118-9542-68EF-4288-C9982EFB9CD5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "TWheel03:groupId6";
	rename -uid "11495378-EE42-7863-EFE5-C1991BA342B2";
	setAttr ".ihi" 0;
createNode groupParts -n "TWheel03:groupParts4";
	rename -uid "04447762-534D-EDDE-34AA-6088E6408A10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1807]";
createNode polyUnite -n "polyUnite12";
	rename -uid "B8B5C5E7-7848-4CAF-054A-F2B2C30AD27B";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId54";
	rename -uid "F6A30C88-A749-C0E2-1595-3CAF434C2C0F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "8B2771C6-1E4A-5CBD-F1C8-D69A8BC0A952";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:125]";
createNode groupId -n "groupId55";
	rename -uid "BCE5A3E4-DD42-3A82-7970-929F6B72A212";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "77480CB8-1640-C604-A90C-309B59A70787";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "01DC4DC5-7E43-5165-902D-F2A52E2686C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId57";
	rename -uid "2994DA91-6D46-F987-B272-97962F1E02A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "05CF1C26-944D-5872-73DA-68893B603919";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "40BB6936-2745-2885-8DA8-7F9A008EBF60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4751]";
createNode polyReduce -n "polyReduce1";
	rename -uid "28DC529C-40FD-202F-EF83-0298532526A6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 30;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode lambert -n "seat";
	rename -uid "520DDAEF-4E8F-CD29-0E14-45A73702F013";
	setAttr ".c" -type "float3" 0.14139999 0.1247 0.1247 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "4FB468EC-41B4-FF9D-EE53-95ACF1E67762";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7DEBF101-4E93-3BC3-3801-769B68599B3E";
createNode groupParts -n "groupParts26";
	rename -uid "98E20BA5-4FE4-02E2-510E-7D95A58EC017";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[694:695]" "f[1465]" "f[1485]" "f[1991]";
	setAttr ".irc" -type "componentList" 5 "f[0:693]" "f[696:1464]" "f[1466:1484]" "f[1486:1990]" "f[1992:3322]";
createNode groupId -n "groupId59";
	rename -uid "72766075-4D4C-AABE-D456-74B0538717FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "20BC07B9-4B78-5D09-46C8-AF9010F86BBD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[730:733]" "f[1178:1303]";
createNode lambert -n "tires";
	rename -uid "A0B4DC55-4392-EE92-1267-9EAB6E671070";
	setAttr ".c" -type "float3" 0.1539 0.1539 0.1539 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "CD073EC4-4B12-457E-DB25-35A35B2D1479";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B3D3D36F-4DE1-A5F9-C2A0-E19907E9ADD1";
createNode groupId -n "groupId60";
	rename -uid "FBF5E8A1-4BC7-0AD2-A14C-ACAA36D94CA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "42A03B4B-4AE3-4F9F-6B4A-9098865FBD2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[1464]" "f[1466:1484]" "f[1486:1623]" "f[1980:1990]" "f[1992:2099]" "f[3043:3322]";
createNode lambert -n "rims";
	rename -uid "75D246FF-4100-3028-FF8E-F89BF9A1F0AB";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "E957B42E-4858-F5DA-729E-A1826D72E441";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "F57C3E15-4A50-A3F6-5DF6-AE982F061C05";
createNode groupId -n "groupId61";
	rename -uid "3C4AB79F-4987-C962-555C-1192074EE4BA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "444E0223-4F54-EC99-4607-42A2DFF63BF0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1624:1979]" "f[2100:3042]";
createNode lambert -n "handles";
	rename -uid "6C5F0E36-4062-7828-9FE4-FB865F3D024A";
	setAttr ".c" -type "float3" 0.052299999 0.052299999 0.052299999 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "49E19AFF-493E-6698-6458-488C9D056221";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "52A7E40E-44E4-C668-838D-41AA29D8A1C6";
createNode groupId -n "groupId62";
	rename -uid "53724CE7-44F1-BEFB-C8F1-4C9A5B1B2C05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "88228E92-4315-1D35-AC9E-1F8CD0A1B5E9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:19]" "f[255:390]";
createNode lambert -n "handlebars";
	rename -uid "39FCDC7F-4217-EB03-79E9-9C82834CC083";
	setAttr ".c" -type "float3" 0.93379998 0 0 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "0FC6AB71-461C-BD8F-8A55-B2A255FCB048";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "EC99F6C6-41C7-CA2F-01F9-69AAF220D1B1";
createNode groupId -n "groupId63";
	rename -uid "D0866AEB-46A7-D18B-8E8F-24BF719C4606";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "D0634C28-4387-2D47-9DBC-ACA43D1F2034";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[20:254]" "f[391:529]";
	setAttr ".irc" -type "componentList" 40 "f[311]" "f[313]" "f[315]" "f[317]" "f[319]" "f[321]" "f[323]" "f[325]" "f[327]" "f[329]" "f[331]" "f[333]" "f[335]" "f[337]" "f[339]" "f[341]" "f[343]" "f[345]" "f[347]" "f[349]" "f[352]" "f[354]" "f[356]" "f[358]" "f[360]" "f[362]" "f[364]" "f[366]" "f[368]" "f[370]" "f[372]" "f[374]" "f[376]" "f[378]" "f[380]" "f[382]" "f[384]" "f[386]" "f[388]" "f[390]";
createNode lambert -n "frame";
	rename -uid "1AD68563-49C9-7AA5-2CC0-64838E0D802A";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "46E3D253-4397-4654-DAD2-77B3FA204348";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "CF91C4BB-4D18-8456-192A-168B87E0CDF6";
createNode groupId -n "groupId64";
	rename -uid "BC4F1B81-4C8D-D0C1-AFDA-8CAF1617DA9C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "7DEE124B-46AB-A81F-46AD-89AF7B10003A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[530:693]" "f[696:703]" "f[720:729]" "f[734:909]" "f[1118:1177]";
	setAttr ".irc" -type "componentList" 3 "f[2013:2014]" "f[2033:2035]" "f[2054:2055]";
createNode lambert -n "lambert8";
	rename -uid "51728180-4369-31FE-CAB1-44A2C9775F48";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "A1BBE104-4728-C8EF-D244-598FF0E2DD75";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "AD7B8F0D-4C33-3857-F674-EAA93209CD7F";
createNode groupId -n "groupId65";
	rename -uid "D5F55285-419C-055A-C172-7FAB541EB127";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "50B6367F-47CC-DD41-DEA7-2B94083C138B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[704:719]" "f[910:1117]";
createNode lambert -n "step";
	rename -uid "A1766C24-4B36-B039-2A18-2BA38D7DFA8B";
	setAttr ".c" -type "float3" 1 0.0722 0 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "19F37810-4743-2F6C-DF2A-07A9FB1D234D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "5C3AEFA9-4952-3CAA-58D4-AFB1E2500574";
createNode groupId -n "groupId66";
	rename -uid "34E9D5E2-4653-B602-AF1D-3C8786E6450F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "33DA8B69-46AF-32ED-A96A-B0B34AE6FEB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1304:1463]";
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
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 64 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 64 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "deleteComponent2.og" "pCylinder2Shape.i";
connectAttr "groupId5.id" "pCylinder2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder2Shape.iog.og[0].gco";
connectAttr "groupId6.id" "pCylinderShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[1].gco";
connectAttr "groupParts4.og" "pCylinderShape2.i";
connectAttr "groupId7.id" "pCylinderShape2.ciog.cog[1].cgid";
connectAttr "polyExtrudeFace13.out" "pCylinder4Shape.i";
connectAttr "groupId8.id" "pCylinder4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder4Shape.iog.og[0].gco";
connectAttr "groupParts23.og" "pCubeShape2.i";
connectAttr "groupId54.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId55.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCylinderShape3.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[2].gco";
connectAttr "groupParts9.og" "pCylinderShape3.i";
connectAttr "groupId10.id" "pCylinderShape3.ciog.cog[2].cgid";
connectAttr "groupId11.id" "pCylinderShape4.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[2].gco";
connectAttr "groupParts10.og" "pCylinderShape4.i";
connectAttr "groupId12.id" "pCylinderShape4.ciog.cog[2].cgid";
connectAttr "polyMergeVert32.out" "pCylinder7Shape.i";
connectAttr "groupId13.id" "pCylinder7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder7Shape.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts12.og" "pCubeShape3.i";
connectAttr "groupId15.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace14.out" "pCube4Shape.i";
connectAttr "groupId16.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "groupParts24.og" "pCubeShape4.i";
connectAttr "groupId56.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId57.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId43.id" "pPipeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts17.og" "pPipeShape1.i";
connectAttr "groupId44.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupId45.id" "pPipeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape2.iog.og[0].gco";
connectAttr "groupParts18.og" "pPipeShape2.i";
connectAttr "groupId46.id" "pPipeShape2.ciog.cog[0].cgid";
connectAttr "groupId30.id" "pCylinderShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "groupParts15.og" "pCylinderShape5.i";
connectAttr "groupId31.id" "pCylinderShape5.ciog.cog[0].cgid";
connectAttr "groupId40.id" "pCylinderShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape9.iog.og[0].gco";
connectAttr "groupId41.id" "pCylinderShape9.ciog.cog[0].cgid";
connectAttr "groupId34.id" "pCylinderShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape10.iog.og[0].gco";
connectAttr "groupId35.id" "pCylinderShape10.ciog.cog[0].cgid";
connectAttr "groupId32.id" "pCylinderShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape11.iog.og[0].gco";
connectAttr "groupId33.id" "pCylinderShape11.ciog.cog[0].cgid";
connectAttr "groupId36.id" "pCylinderShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape12.iog.og[0].gco";
connectAttr "groupId37.id" "pCylinderShape12.ciog.cog[0].cgid";
connectAttr "groupId38.id" "pCylinderShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape13.iog.og[0].gco";
connectAttr "groupId39.id" "pCylinderShape13.ciog.cog[0].cgid";
connectAttr "groupId17.id" "pCylinderShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape14.iog.og[0].gco";
connectAttr "groupId18.id" "pCylinderShape14.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCylinderShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape15.iog.og[0].gco";
connectAttr "groupId20.id" "pCylinderShape15.ciog.cog[0].cgid";
connectAttr "groupId21.id" "pCylinderShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape16.iog.og[0].gco";
connectAttr "groupId22.id" "pCylinderShape16.ciog.cog[0].cgid";
connectAttr "groupId23.id" "pCylinderShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape17.iog.og[0].gco";
connectAttr "groupId24.id" "pCylinderShape17.ciog.cog[0].cgid";
connectAttr "groupId25.id" "pCylinderShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape18.iog.og[0].gco";
connectAttr "groupId26.id" "pCylinderShape18.ciog.cog[0].cgid";
connectAttr "groupId27.id" "pCylinderShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape19.iog.og[0].gco";
connectAttr "groupId28.id" "pCylinderShape19.ciog.cog[0].cgid";
connectAttr "groupParts14.og" "pCylinder20Shape.i";
connectAttr "groupId29.id" "pCylinder20Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder20Shape.iog.og[0].gco";
connectAttr "groupParts16.og" "pCylinder21Shape.i";
connectAttr "groupId42.id" "pCylinder21Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder21Shape.iog.og[0].gco";
connectAttr "TWheel03:groupParts2.og" "TWheel03:pCylinderShape1.i";
connectAttr "TWheel03:groupId3.id" "TWheel03:pCylinderShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "TWheel03:pCylinderShape1.iog.og[1].gco";
connectAttr "TWheel03:groupId4.id" "TWheel03:pCylinderShape1.ciog.cog[1].cgid";
connectAttr "TWheel03:groupParts1.og" "TWheel03:pTorusShape2.i";
connectAttr "TWheel03:groupId1.id" "TWheel03:pTorusShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "TWheel03:pTorusShape2.iog.og[1].gco";
connectAttr "TWheel03:groupId2.id" "TWheel03:pTorusShape2.ciog.cog[1].cgid";
connectAttr "TWheel03:groupParts3.og" "TWheel03:pTorus2Shape.i";
connectAttr "TWheel03:groupId5.id" "TWheel03:pTorus2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "TWheel03:pTorus2Shape.iog.og[0].gco";
connectAttr "groupId47.id" "pTorus2Shape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorus2Shape3.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape1.i";
connectAttr "groupId49.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "deleteComponent6.og" "polySurfaceShape2.i";
connectAttr "groupId50.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId48.id" "pTorus2Shape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorus2Shape4.iog.og[0].gco";
connectAttr "groupId51.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polyMergeVert34.out" "|polySurface2|transform29|polySurface2Shape.i"
		;
connectAttr "groupId52.id" "|polySurface2|transform29|polySurface2Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface2|transform29|polySurface2Shape.iog.og[0].gco"
		;
connectAttr "groupParts22.og" "|polySurface4|transform30|polySurface2Shape.i";
connectAttr "groupId53.id" "|polySurface4|transform30|polySurface2Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface4|transform30|polySurface2Shape.iog.og[0].gco"
		;
connectAttr "TWheel03:groupParts4.og" "TWheel03:pTorus3Shape.i";
connectAttr "TWheel03:groupId6.id" "TWheel03:pTorus3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "TWheel03:pTorus3Shape.iog.og[0].gco";
connectAttr "groupParts34.og" "pCylinder22Shape.i";
connectAttr "groupId58.id" "pCylinder22Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder22Shape.iog.og[0].gco";
connectAttr "groupId59.id" "pCylinder22Shape.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCylinder22Shape.iog.og[1].gco";
connectAttr "groupId60.id" "pCylinder22Shape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "pCylinder22Shape.iog.og[2].gco";
connectAttr "groupId61.id" "pCylinder22Shape.iog.og[3].gid";
connectAttr "lambert4SG.mwc" "pCylinder22Shape.iog.og[3].gco";
connectAttr "groupId62.id" "pCylinder22Shape.iog.og[4].gid";
connectAttr "lambert5SG.mwc" "pCylinder22Shape.iog.og[4].gco";
connectAttr "groupId63.id" "pCylinder22Shape.iog.og[5].gid";
connectAttr "lambert6SG.mwc" "pCylinder22Shape.iog.og[5].gco";
connectAttr "groupId64.id" "pCylinder22Shape.iog.og[6].gid";
connectAttr "lambert7SG.mwc" "pCylinder22Shape.iog.og[6].gco";
connectAttr "groupId65.id" "pCylinder22Shape.iog.og[7].gid";
connectAttr "lambert8SG.mwc" "pCylinder22Shape.iog.og[7].gco";
connectAttr "groupId66.id" "pCylinder22Shape.iog.og[8].gid";
connectAttr "lambert9SG.mwc" "pCylinder22Shape.iog.og[8].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "polyCylinder1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySplitRing3.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyCylinder2.out" "deleteComponent1.ig";
connectAttr "groupParts3.og" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent2.ig";
connectAttr "pCylinderShape2.o" "polyUnite2.ip[0]";
connectAttr "pCylinder2Shape.o" "polyUnite2.ip[1]";
connectAttr "pCylinderShape2.wm" "polyUnite2.im[0]";
connectAttr "pCylinder2Shape.wm" "polyUnite2.im[1]";
connectAttr "deleteComponent1.og" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "polyTweak3.out" "polyMergeVert1.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert1.mp";
connectAttr "groupParts5.og" "polyTweak3.ip";
connectAttr "polyMergeVert1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyMergeVert2.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert13.mp";
connectAttr "polyTweak4.out" "polySplitVert1.ip";
connectAttr "polyMergeVert13.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert14.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert14.mp";
connectAttr "polySplitVert1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert15.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert14.out" "polyTweak6.ip";
connectAttr "polyMergeVert15.out" "polySplitVert2.ip";
connectAttr "polyTweak7.out" "polyMergeVert16.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert16.mp";
connectAttr "polySplitVert2.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert17.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert16.out" "polyTweak8.ip";
connectAttr "polyMergeVert17.out" "polySplitVert3.ip";
connectAttr "polyTweak9.out" "polyMergeVert18.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert18.mp";
connectAttr "polySplitVert3.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert19.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert18.out" "polyTweak10.ip";
connectAttr "polyMergeVert19.out" "polySplitVert4.ip";
connectAttr "polyTweak11.out" "polyMergeVert20.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert20.mp";
connectAttr "polySplitVert4.out" "polyTweak11.ip";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert21.mp";
connectAttr "polyTweak12.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyMergeVert21.out" "polyTweak12.ip";
connectAttr "polyExtrudeEdge1.out" "groupParts6.ig";
connectAttr "polyTweak13.out" "polyMergeVert22.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert22.mp";
connectAttr "groupParts6.og" "polyTweak13.ip";
connectAttr "polyMergeVert22.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "groupParts7.ig";
connectAttr "polyTweak14.out" "polyMergeVert23.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert23.mp";
connectAttr "groupParts7.og" "polyTweak14.ip";
connectAttr "polyMergeVert23.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "polyTweak15.out" "polyMergeVert24.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert24.mp";
connectAttr "groupParts8.og" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert25.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert24.out" "polyTweak16.ip";
connectAttr "polyMergeVert25.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "deleteComponent3.ig";
connectAttr "polyTweak18.out" "polySplitRing4.ip";
connectAttr "pCylinder4Shape.wm" "polySplitRing4.mp";
connectAttr "deleteComponent3.og" "polyTweak18.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCylinder4Shape.wm" "polySplitRing5.mp";
connectAttr "polyTweak19.out" "polySplitRing6.ip";
connectAttr "pCylinder4Shape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitVert5.ip";
connectAttr "polySplitRing6.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert26.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert26.mp";
connectAttr "polySplitVert5.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyMergeVert27.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert26.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polySplitRing7.ip";
connectAttr "pCylinder4Shape.wm" "polySplitRing7.mp";
connectAttr "polyMergeVert27.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polySplitVert6.ip";
connectAttr "polySplitRing7.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyMergeVert28.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert28.mp";
connectAttr "polySplitVert6.out" "polyTweak25.ip";
connectAttr "polyMergeVert28.out" "polyMergeVert29.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert29.mp";
connectAttr "polyTweak26.out" "polyDelEdge2.ip";
connectAttr "polyMergeVert29.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyMergeVert30.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert30.mp";
connectAttr "polyDelEdge2.out" "polyTweak27.ip";
connectAttr "polyMergeVert30.out" "createColorSet1.ig";
connectAttr "createColorSet1.og" "polyExtrudeFace1.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak28.out" "polyMergeVert31.ip";
connectAttr "pCylinder4Shape.wm" "polyMergeVert31.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace2.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polyMergeVert31.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace3.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace4.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace5.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace6.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace7.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak34.ip";
connectAttr "polyCube2.out" "polyTweak35.ip";
connectAttr "polyTweak35.out" "polySplit1.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace8.mp";
connectAttr "polyCylinder3.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace9.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak37.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak38.ip";
connectAttr "polyTweak38.out" "deleteComponent4.ig";
connectAttr "polyCylinder4.out" "polyTweak39.ip";
connectAttr "polyTweak39.out" "deleteComponent5.ig";
connectAttr "pCylinderShape3.o" "polyUnite3.ip[0]";
connectAttr "pCylinderShape4.o" "polyUnite3.ip[1]";
connectAttr "pCylinderShape3.wm" "polyUnite3.im[0]";
connectAttr "pCylinderShape4.wm" "polyUnite3.im[1]";
connectAttr "deleteComponent4.og" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "deleteComponent5.og" "groupParts10.ig";
connectAttr "groupId11.id" "groupParts10.gi";
connectAttr "polyUnite3.out" "groupParts11.ig";
connectAttr "groupId13.id" "groupParts11.gi";
connectAttr "polyTweak40.out" "polySplitRing8.ip";
connectAttr "pCylinder7Shape.wm" "polySplitRing8.mp";
connectAttr "groupParts11.og" "polyTweak40.ip";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCylinder7Shape.wm" "polySplitRing9.mp";
connectAttr "polyTweak41.out" "polyMergeVert32.ip";
connectAttr "pCylinder7Shape.wm" "polyMergeVert32.mp";
connectAttr "polySplitRing9.out" "polyTweak41.ip";
connectAttr "polyCube3.out" "polySplitRing10.ip";
connectAttr "pCubeShape3.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polySplitRing11.ip";
connectAttr "pCubeShape3.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak42.out" "polyExtrudeFace13.ip";
connectAttr "pCylinder4Shape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polySplitRing12.ip";
connectAttr "pCubeShape3.wm" "polySplitRing12.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak43.ip";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape3.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape3.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape3.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape3.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape3.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape3.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCubeShape3.wm" "polySplitRing19.mp";
connectAttr "pCubeShape3.o" "polyUnite4.ip[0]";
connectAttr "pCylinder4Shape.o" "polyUnite4.ip[1]";
connectAttr "pCubeShape3.wm" "polyUnite4.im[0]";
connectAttr "pCylinder4Shape.wm" "polyUnite4.im[1]";
connectAttr "polySplitRing19.out" "groupParts12.ig";
connectAttr "groupId14.id" "groupParts12.gi";
connectAttr "polyUnite4.out" "groupParts13.ig";
connectAttr "groupId16.id" "groupParts13.gi";
connectAttr "polyCube4.out" "polySplitRing20.ip";
connectAttr "pCubeShape4.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCubeShape4.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape4.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pCubeShape4.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCubeShape4.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "pCubeShape4.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "pCubeShape4.wm" "polySplitRing26.mp";
connectAttr "groupParts13.og" "polyExtrudeFace14.ip";
connectAttr "pCube4Shape.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak44.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace15.mp";
connectAttr "polySplitRing26.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak45.ip";
connectAttr "pCylinderShape14.o" "polyUnite5.ip[0]";
connectAttr "pCylinderShape15.o" "polyUnite5.ip[1]";
connectAttr "pCylinderShape16.o" "polyUnite5.ip[2]";
connectAttr "pCylinderShape17.o" "polyUnite5.ip[3]";
connectAttr "pCylinderShape18.o" "polyUnite5.ip[4]";
connectAttr "pCylinderShape19.o" "polyUnite5.ip[5]";
connectAttr "pCylinderShape14.wm" "polyUnite5.im[0]";
connectAttr "pCylinderShape15.wm" "polyUnite5.im[1]";
connectAttr "pCylinderShape16.wm" "polyUnite5.im[2]";
connectAttr "pCylinderShape17.wm" "polyUnite5.im[3]";
connectAttr "pCylinderShape18.wm" "polyUnite5.im[4]";
connectAttr "pCylinderShape19.wm" "polyUnite5.im[5]";
connectAttr "polyUnite5.out" "groupParts14.ig";
connectAttr "groupId29.id" "groupParts14.gi";
connectAttr "pCylinderShape5.o" "polyUnite6.ip[0]";
connectAttr "pCylinderShape11.o" "polyUnite6.ip[1]";
connectAttr "pCylinderShape10.o" "polyUnite6.ip[2]";
connectAttr "pCylinderShape12.o" "polyUnite6.ip[3]";
connectAttr "pCylinderShape13.o" "polyUnite6.ip[4]";
connectAttr "pCylinderShape9.o" "polyUnite6.ip[5]";
connectAttr "pCylinderShape5.wm" "polyUnite6.im[0]";
connectAttr "pCylinderShape11.wm" "polyUnite6.im[1]";
connectAttr "pCylinderShape10.wm" "polyUnite6.im[2]";
connectAttr "pCylinderShape12.wm" "polyUnite6.im[3]";
connectAttr "pCylinderShape13.wm" "polyUnite6.im[4]";
connectAttr "pCylinderShape9.wm" "polyUnite6.im[5]";
connectAttr "polyCylinder5.out" "groupParts15.ig";
connectAttr "groupId30.id" "groupParts15.gi";
connectAttr "polyUnite6.out" "groupParts16.ig";
connectAttr "groupId42.id" "groupParts16.gi";
connectAttr "polyPipe1.out" "groupParts17.ig";
connectAttr "groupId43.id" "groupParts17.gi";
connectAttr "polyPipe2.out" "groupParts18.ig";
connectAttr "groupId45.id" "groupParts18.gi";
connectAttr "TWheel03:polyTweak1.out" "TWheel03:polyExtrudeFace1.ip";
connectAttr "TWheel03:pCylinderShape1.wm" "TWheel03:polyExtrudeFace1.mp";
connectAttr "TWheel03:polyCylinder1.out" "TWheel03:polyTweak1.ip";
connectAttr "TWheel03:polyTweak2.out" "TWheel03:polyExtrudeFace2.ip";
connectAttr "TWheel03:pCylinderShape1.wm" "TWheel03:polyExtrudeFace2.mp";
connectAttr "TWheel03:polyExtrudeFace1.out" "TWheel03:polyTweak2.ip";
connectAttr "TWheel03:polyTweak3.out" "TWheel03:polySplitRing1.ip";
connectAttr "TWheel03:pCylinderShape1.wm" "TWheel03:polySplitRing1.mp";
connectAttr "TWheel03:polyExtrudeFace2.out" "TWheel03:polyTweak3.ip";
connectAttr "TWheel03:polySplitRing1.out" "TWheel03:polySplitRing2.ip";
connectAttr "TWheel03:pCylinderShape1.wm" "TWheel03:polySplitRing2.mp";
connectAttr "TWheel03:polyTweak4.out" "TWheel03:polyExtrudeFace3.ip";
connectAttr "TWheel03:pCylinderShape1.wm" "TWheel03:polyExtrudeFace3.mp";
connectAttr "TWheel03:polySplitRing2.out" "TWheel03:polyTweak4.ip";
connectAttr "TWheel03:polyTweak5.out" "TWheel03:polyExtrudeFace4.ip";
connectAttr "TWheel03:pCylinderShape1.wm" "TWheel03:polyExtrudeFace4.mp";
connectAttr "TWheel03:polyExtrudeFace3.out" "TWheel03:polyTweak5.ip";
connectAttr "TWheel03:pTorusShape2.o" "polyUnite8.ip[0]";
connectAttr "TWheel03:pCylinderShape1.o" "polyUnite8.ip[1]";
connectAttr "TWheel03:pTorusShape2.wm" "polyUnite8.im[0]";
connectAttr "TWheel03:pCylinderShape1.wm" "polyUnite8.im[1]";
connectAttr "TWheel03:polyTorus2.out" "TWheel03:groupParts1.ig";
connectAttr "TWheel03:groupId1.id" "TWheel03:groupParts1.gi";
connectAttr "TWheel03:polyExtrudeFace4.out" "TWheel03:groupParts2.ig";
connectAttr "TWheel03:groupId3.id" "TWheel03:groupParts2.gi";
connectAttr "polyUnite8.out" "TWheel03:groupParts3.ig";
connectAttr "TWheel03:groupId5.id" "TWheel03:groupParts3.gi";
connectAttr "pTorus2Shape4.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts19.ig";
connectAttr "groupId49.id" "groupParts19.gi";
connectAttr "polySeparate1.out[1]" "groupParts20.ig";
connectAttr "groupId50.id" "groupParts20.gi";
connectAttr "groupParts20.og" "polySplitRing27.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing27.mp";
connectAttr "polySplitRing27.out" "deleteComponent6.ig";
connectAttr "polySurfaceShape2.o" "polyUnite9.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite9.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite9.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite9.im[1]";
connectAttr "polyUnite9.out" "groupParts21.ig";
connectAttr "groupId52.id" "groupParts21.gi";
connectAttr "groupParts21.og" "polyMergeVert33.ip";
connectAttr "|polySurface2|transform29|polySurface2Shape.wm" "polyMergeVert33.mp"
		;
connectAttr "polyMergeVert33.out" "polyMergeVert34.ip";
connectAttr "|polySurface2|transform29|polySurface2Shape.wm" "polyMergeVert34.mp"
		;
connectAttr "|polySurface2|transform29|polySurface2Shape.o" "polyUnite10.ip[0]";
connectAttr "polySurfaceShape1.o" "polyUnite10.ip[1]";
connectAttr "|polySurface2|transform29|polySurface2Shape.wm" "polyUnite10.im[0]"
		;
connectAttr "polySurfaceShape1.wm" "polyUnite10.im[1]";
connectAttr "polyUnite10.out" "groupParts22.ig";
connectAttr "groupId53.id" "groupParts22.gi";
connectAttr "TWheel03:pTorus2Shape.o" "polyUnite11.ip[0]";
connectAttr "pTorus2Shape3.o" "polyUnite11.ip[1]";
connectAttr "TWheel03:pTorus2Shape.wm" "polyUnite11.im[0]";
connectAttr "pTorus2Shape3.wm" "polyUnite11.im[1]";
connectAttr "polyUnite11.out" "TWheel03:groupParts4.ig";
connectAttr "TWheel03:groupId6.id" "TWheel03:groupParts4.gi";
connectAttr "pCylinder7Shape.o" "polyUnite12.ip[0]";
connectAttr "pCube4Shape.o" "polyUnite12.ip[1]";
connectAttr "pCubeShape2.o" "polyUnite12.ip[2]";
connectAttr "pCubeShape4.o" "polyUnite12.ip[3]";
connectAttr "TWheel03:pTorus3Shape.o" "polyUnite12.ip[4]";
connectAttr "|polySurface4|transform30|polySurface2Shape.o" "polyUnite12.ip[5]";
connectAttr "pCylinder7Shape.wm" "polyUnite12.im[0]";
connectAttr "pCube4Shape.wm" "polyUnite12.im[1]";
connectAttr "pCubeShape2.wm" "polyUnite12.im[2]";
connectAttr "pCubeShape4.wm" "polyUnite12.im[3]";
connectAttr "TWheel03:pTorus3Shape.wm" "polyUnite12.im[4]";
connectAttr "|polySurface4|transform30|polySurface2Shape.wm" "polyUnite12.im[5]"
		;
connectAttr "polySplit1.out" "groupParts23.ig";
connectAttr "groupId54.id" "groupParts23.gi";
connectAttr "polyExtrudeFace16.out" "groupParts24.ig";
connectAttr "groupId56.id" "groupParts24.gi";
connectAttr "polyUnite12.out" "groupParts25.ig";
connectAttr "groupId58.id" "groupParts25.gi";
connectAttr "groupParts25.og" "polyReduce1.ip";
connectAttr "seat.oc" "lambert2SG.ss";
connectAttr "groupId59.msg" "lambert2SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "seat.msg" "materialInfo1.m";
connectAttr "polyReduce1.out" "groupParts26.ig";
connectAttr "groupId58.id" "groupParts26.gi";
connectAttr "groupParts26.og" "groupParts27.ig";
connectAttr "groupId59.id" "groupParts27.gi";
connectAttr "tires.oc" "lambert3SG.ss";
connectAttr "groupId60.msg" "lambert3SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "tires.msg" "materialInfo2.m";
connectAttr "groupParts27.og" "groupParts28.ig";
connectAttr "groupId60.id" "groupParts28.gi";
connectAttr "rims.oc" "lambert4SG.ss";
connectAttr "groupId61.msg" "lambert4SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[3]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "rims.msg" "materialInfo3.m";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId61.id" "groupParts29.gi";
connectAttr "handles.oc" "lambert5SG.ss";
connectAttr "groupId62.msg" "lambert5SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[4]" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "handles.msg" "materialInfo4.m";
connectAttr "groupParts29.og" "groupParts30.ig";
connectAttr "groupId62.id" "groupParts30.gi";
connectAttr "handlebars.oc" "lambert6SG.ss";
connectAttr "groupId63.msg" "lambert6SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[5]" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "handlebars.msg" "materialInfo5.m";
connectAttr "groupParts30.og" "groupParts31.ig";
connectAttr "groupId63.id" "groupParts31.gi";
connectAttr "frame.oc" "lambert7SG.ss";
connectAttr "groupId64.msg" "lambert7SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[6]" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "frame.msg" "materialInfo6.m";
connectAttr "groupParts31.og" "groupParts32.ig";
connectAttr "groupId64.id" "groupParts32.gi";
connectAttr "lambert8.oc" "lambert8SG.ss";
connectAttr "groupId65.msg" "lambert8SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[7]" "lambert8SG.dsm" -na;
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "lambert8.msg" "materialInfo7.m";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId65.id" "groupParts33.gi";
connectAttr "step.oc" "lambert9SG.ss";
connectAttr "groupId66.msg" "lambert9SG.gn" -na;
connectAttr "pCylinder22Shape.iog.og[8]" "lambert9SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo8.sg";
connectAttr "step.msg" "materialInfo8.m";
connectAttr "groupParts33.og" "groupParts34.ig";
connectAttr "groupId66.id" "groupParts34.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "seat.msg" ":defaultShaderList1.s" -na;
connectAttr "tires.msg" ":defaultShaderList1.s" -na;
connectAttr "rims.msg" ":defaultShaderList1.s" -na;
connectAttr "handles.msg" ":defaultShaderList1.s" -na;
connectAttr "handlebars.msg" ":defaultShaderList1.s" -na;
connectAttr "frame.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "step.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape15.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape17.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape18.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape19.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder20Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape12.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder21Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "TWheel03:pTorusShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "TWheel03:pTorusShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "TWheel03:pCylinderShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "TWheel03:pCylinderShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "TWheel03:pTorus2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorus2Shape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorus2Shape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface2|transform29|polySurface2Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface4|transform30|polySurface2Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "TWheel03:pTorus3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder22Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "TWheel03:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "TWheel03:groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "TWheel03:groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "TWheel03:groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "TWheel03:groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "TWheel03:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
// End of Trike008SeparatedMaterials.ma
