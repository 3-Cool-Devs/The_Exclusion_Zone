//Maya ASCII 2017 scene
//Name: Flashlight.ma
//Last modified: Wed, Apr 18, 2018 08:19:06 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "2C13159A-4282-6FAB-D21A-66B48520EE46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.5445607754578248 8.8221642827376741 14.220212741478713 ;
	setAttr ".r" -type "double3" -15.938352729620105 -0.99999999999998546 2.4851868508880358e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "77627DB9-4138-6136-7C8B-ACB738464E1E";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.790977539805425;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.7927755056321262 4.7605185272294275 3.7360191340596316e-007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CFBCA4B6-41EC-363A-EABB-578A9B59CF26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CF0ADD72-4254-C376-5532-51BCF8F5F089";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.354686993313077;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "8B23266D-48F4-7E01-4E94-66BBC8F780BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1322993793964691 4.5754605814660039 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E81D11AD-402E-D42D-5DA1-BB9287C534D2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 24.356618741517956;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A2EC6891-48F6-D550-BB11-5786B14FFD60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5B5AD836-436B-344B-17E5-9383A0E51355";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "2D98F351-42A0-4096-76C2-0BA31008764A";
	setAttr ".t" -type "double3" 0 4 -12 ;
	setAttr ".s" -type "double3" 2.6607059189422664 2.6607059189422664 2.6607059189422664 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "89503FF4-4E07-4C21-C766-C5A5F13A1E9F";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "C:/Users/Connor/Desktop/t3wb-inova-t3-flashlight-si.jpg";
	setAttr ".cov" -type "short2" 600 600 ;
	setAttr ".dlc" no;
	setAttr ".w" 6;
	setAttr ".h" 6;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "left";
	rename -uid "4249FA24-4FEF-12D4-FA0F-8EA125C9DD97";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "86D3B6C4-4EB7-7AC9-A3E5-2E99CD3E8590";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "EB8523D5-4D58-552C-F127-829DD75BA315";
	setAttr ".t" -type "double3" -6.0435547835823202 4.7605170331396494 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1.5666666857210205 1.7555555800026554 1.567 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "E85AE533-40D8-8E26-3C72-FB9FD3AE0634";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "back";
	rename -uid "76FB3EF6-4E1D-3E44-0CCB-9BAAD19EF52B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "3AB1E895-484E-50CC-558D-4F85328F844A";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "477B6723-4A2E-B8DF-7557-719D77DB3EDF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6FF6B7B0-420E-86A9-355E-6BAE17FB5CAC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8588F89D-4DDD-373C-A4C1-3F92F34D551F";
createNode displayLayerManager -n "layerManager";
	rename -uid "F90915EC-441B-2EA9-18D4-4CA534FF66D2";
createNode displayLayer -n "defaultLayer";
	rename -uid "B51E50B2-416F-0077-A533-B09901A6C7E8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8BBE5380-4333-6C5E-391A-408DF0B38FA2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CEE355D5-4028-95FE-8226-BD8798315307";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "307CAA4E-4A65-78AC-520B-2B806DF4F292";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 791\n                -height 328\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 791\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 790\n                -height 327\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 327\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1588\n                -height 700\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1588\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 790\n                -height 328\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1588\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1588\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "385874EC-4F77-B0AA-1532-81BCB65A7AA0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "C380F21D-4448-B8C2-C62C-4E948DEEF108";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit1";
	rename -uid "71A26A7C-4D7B-FFFA-3BE4-C5B6E8563B0F";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483608 -2147483607 -2147483606 -2147483605 -2147483604 -2147483603 
		-2147483602 -2147483601 -2147483600 -2147483599 -2147483598 -2147483597 -2147483596 -2147483595 -2147483594 -2147483593 -2147483592 -2147483591 
		-2147483590 -2147483589 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "F101F3AC-4F31-4636-027E-E390B333A89F";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483608 -2147483607 -2147483606 -2147483605 -2147483604 -2147483603 
		-2147483602 -2147483601 -2147483600 -2147483599 -2147483598 -2147483597 -2147483596 -2147483595 -2147483594 -2147483593 -2147483592 -2147483591 
		-2147483590 -2147483589 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "6F39DD0E-4B27-FA4A-0648-97B78A088FE6";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483548 -2147483529 -2147483530 -2147483531 -2147483532 -2147483533 
		-2147483534 -2147483535 -2147483536 -2147483537 -2147483538 -2147483539 -2147483540 -2147483541 -2147483542 -2147483543 -2147483544 -2147483545 
		-2147483546 -2147483547 -2147483548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "C48B0743-472E-8441-F209-10A248D9337F";
	setAttr ".dc" -type "componentList" 1 "f[20:39]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "64654EC7-4D7F-346C-9653-44BEF6EB2DF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9817967 4.7605166 -2.8020145e-007 ;
	setAttr ".rs" 45856;
	setAttr ".lt" -type "double3" -8.3266726846886741e-016 7.7023311722446755 1.29 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9817966545291585 3.5094268549309704 -1.2513567259907723 ;
	setAttr ".cbx" -type "double3" -2.9817966545291577 6.011606837825882 1.251356165587902 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "C1C7F252-439F-27FB-24D2-BEAE4DAC5440";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk";
	setAttr ".tk[0]" -type "float3" -0.19157353 -0.74403942 0.062245946 ;
	setAttr ".tk[1]" -type "float3" -0.16296226 -0.74403942 0.11839885 ;
	setAttr ".tk[2]" -type "float3" -0.11839897 -0.74403942 0.16296193 ;
	setAttr ".tk[3]" -type "float3" -0.062246013 -0.74403942 0.19157347 ;
	setAttr ".tk[4]" -type "float3" -2.4012564e-008 -0.74403942 0.20143203 ;
	setAttr ".tk[5]" -type "float3" 0.062245954 -0.74403942 0.19157349 ;
	setAttr ".tk[6]" -type "float3" 0.11839879 -0.74403942 0.16296192 ;
	setAttr ".tk[7]" -type "float3" 0.16296192 -0.74403942 0.11839874 ;
	setAttr ".tk[8]" -type "float3" 0.19157346 -0.74403942 0.062245931 ;
	setAttr ".tk[9]" -type "float3" 0.20143203 -0.74403942 -3.6018864e-008 ;
	setAttr ".tk[10]" -type "float3" 0.19157346 -0.74403942 -0.062246013 ;
	setAttr ".tk[11]" -type "float3" 0.16296192 -0.74403942 -0.11839894 ;
	setAttr ".tk[12]" -type "float3" 0.11839874 -0.74403942 -0.16296193 ;
	setAttr ".tk[13]" -type "float3" 0.062245931 -0.74403942 -0.19157347 ;
	setAttr ".tk[14]" -type "float3" -1.8009432e-008 -0.74403942 -0.20143203 ;
	setAttr ".tk[15]" -type "float3" -0.062245954 -0.74403942 -0.19157349 ;
	setAttr ".tk[16]" -type "float3" -0.11839879 -0.74403942 -0.16296193 ;
	setAttr ".tk[17]" -type "float3" -0.16296192 -0.74403942 -0.11839891 ;
	setAttr ".tk[18]" -type "float3" -0.19157346 -0.74403942 -0.062246006 ;
	setAttr ".tk[19]" -type "float3" -0.20143203 -0.74403942 -3.6018864e-008 ;
	setAttr ".tk[41]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[42]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[43]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[44]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[45]" -type "float3" 5.7622524e-016 -0.037388928 0 ;
	setAttr ".tk[46]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[47]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[48]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[49]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[50]" -type "float3" 6.6613381e-016 -0.037388928 0 ;
	setAttr ".tk[51]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[52]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[53]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[54]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[55]" -type "float3" 5.7622524e-016 -0.037388928 0 ;
	setAttr ".tk[56]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[57]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[58]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[59]" -type "float3" 5.5511151e-016 -0.037388928 0 ;
	setAttr ".tk[60]" -type "float3" 8.8817842e-016 -0.037388928 0 ;
	setAttr ".tk[61]" -type "float3" 7.4505806e-009 -0.15703358 -5.5879354e-009 ;
	setAttr ".tk[62]" -type "float3" -7.4505806e-009 -0.15703358 -3.7252903e-009 ;
	setAttr ".tk[63]" -type "float3" 0 -0.15703358 -7.4505806e-009 ;
	setAttr ".tk[64]" -type "float3" -3.7252903e-009 -0.15703358 7.4505806e-009 ;
	setAttr ".tk[65]" -type "float3" 3.9072462e-017 -0.15703358 -1.4901161e-008 ;
	setAttr ".tk[66]" -type "float3" 0 -0.15703358 1.4901161e-008 ;
	setAttr ".tk[67]" -type "float3" -3.7252903e-009 -0.15703358 -7.4505806e-009 ;
	setAttr ".tk[68]" -type "float3" -7.4505806e-009 -0.15703358 0 ;
	setAttr ".tk[69]" -type "float3" 7.4505806e-009 -0.15703358 0 ;
	setAttr ".tk[70]" -type "float3" -7.4505806e-009 -0.15703358 0 ;
	setAttr ".tk[71]" -type "float3" 7.4505806e-009 -0.15703358 -3.7252903e-009 ;
	setAttr ".tk[72]" -type "float3" -1.1175871e-008 -0.15703358 3.7252903e-009 ;
	setAttr ".tk[73]" -type "float3" 0 -0.15703358 7.4505806e-009 ;
	setAttr ".tk[74]" -type "float3" -1.8626451e-009 -0.15703358 -7.4505806e-009 ;
	setAttr ".tk[75]" -type "float3" 3.9072492e-017 -0.15703358 1.4901161e-008 ;
	setAttr ".tk[76]" -type "float3" -1.8626451e-009 -0.15703358 -1.4901161e-008 ;
	setAttr ".tk[77]" -type "float3" 3.7252903e-009 -0.15703358 1.8626451e-008 ;
	setAttr ".tk[78]" -type "float3" 7.4505806e-009 -0.15703358 3.7252903e-009 ;
	setAttr ".tk[79]" -type "float3" -7.4505806e-009 -0.15703358 -1.8626451e-009 ;
	setAttr ".tk[80]" -type "float3" 7.4505806e-009 -0.15703358 0 ;
createNode polySplit -n "polySplit4";
	rename -uid "16A9249C-46D5-1910-FE3C-F7AE0C8FC0F9";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483577 -2147483576 -2147483575 -2147483574 -2147483573 -2147483572 
		-2147483571 -2147483570 -2147483569 -2147483588 -2147483587 -2147483586 -2147483585 -2147483584 -2147483583 -2147483582 -2147483581 -2147483580 
		-2147483579 -2147483578 -2147483577;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "8632A63F-4F50-FF33-90C4-34B2B237267C";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483588 -2147483587 -2147483586 -2147483585 -2147483584 -2147483583 
		-2147483582 -2147483581 -2147483580 -2147483579 -2147483578 -2147483577 -2147483576 -2147483575 -2147483574 -2147483573 -2147483572 -2147483571 
		-2147483570 -2147483569 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "AB22FF8B-4F4D-59C7-EC4D-9A8392C01FC9";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483588 -2147483587 -2147483586 -2147483585 -2147483584 -2147483583 
		-2147483582 -2147483581 -2147483580 -2147483579 -2147483578 -2147483577 -2147483576 -2147483575 -2147483574 -2147483573 -2147483572 -2147483571 
		-2147483570 -2147483569 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "276E697C-4B3A-1A7A-F25D-81A55D7222AE";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483588 -2147483587 -2147483586 -2147483585 -2147483584 -2147483583 
		-2147483582 -2147483581 -2147483580 -2147483579 -2147483578 -2147483577 -2147483576 -2147483575 -2147483574 -2147483573 -2147483572 -2147483571 
		-2147483570 -2147483569 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "7246A992-49DA-DBC4-9580-E29FBA5D7B7D";
	setAttr ".dc" -type "componentList" 2 "f[20:39]" "f[120:179]";
createNode polySplit -n "polySplit8";
	rename -uid "0A9BB1E1-4035-BA0F-5B84-B1B840202FAC";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483448 -2147483411 -2147483413 -2147483415 -2147483417 -2147483419 
		-2147483421 -2147483423 -2147483425 -2147483427 -2147483429 -2147483431 -2147483433 -2147483435 -2147483437 -2147483439 -2147483441 -2147483443 
		-2147483445 -2147483447 -2147483448;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "F06A68FF-46D4-FDB0-5680-6C8C5075098D";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483448 -2147483411 -2147483413 -2147483415 -2147483417 -2147483419 
		-2147483421 -2147483423 -2147483425 -2147483427 -2147483429 -2147483431 -2147483433 -2147483435 -2147483437 -2147483439 -2147483441 -2147483443 
		-2147483445 -2147483447 -2147483448;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "398FCDAD-4FF9-12BC-A78E-A4BDD78E0973";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483448 -2147483411 -2147483413 -2147483415 -2147483417 -2147483419 
		-2147483421 -2147483423 -2147483425 -2147483427 -2147483429 -2147483431 -2147483433 -2147483435 -2147483437 -2147483439 -2147483441 -2147483443 
		-2147483445 -2147483447 -2147483448;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "B921EBA8-4D5A-A052-9997-FE8AF58B05D3";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483448 -2147483411 -2147483413 -2147483415 -2147483417 -2147483419 
		-2147483421 -2147483423 -2147483425 -2147483427 -2147483429 -2147483431 -2147483433 -2147483435 -2147483437 -2147483439 -2147483441 -2147483443 
		-2147483445 -2147483447 -2147483448;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "E1BBF2EE-4166-8385-8977-E99465DCC873";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[240:259]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.7991104 4.7605166 -2.8020145e-007 ;
	setAttr ".rs" 37485;
	setAttr ".lt" -type "double3" 2.7008103339043919e-015 2.6112905186411017e-015 -1.9343153162082158 ;
	setAttr ".ls" -type "double3" -15.286808748879809 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7991103635849761 3.2917666417537479 -1.4690632472038267 ;
	setAttr ".cbx" -type "double3" -7.7991103635849752 6.2292666774806609 1.4690626868009566 ;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "95C0BDDE-4A11-9B11-39E1-9D9F3CFCB2F2";
	setAttr ".ics" -type "componentList" 19 "e[422]" "e[424]" "e[426]" "e[428]" "e[430]" "e[432]" "e[434]" "e[436]" "e[438]" "e[440]" "e[442]" "e[444]" "e[446]" "e[448]" "e[450]" "e[452]" "e[454]" "e[456]" "e[458:459]";
createNode polySplit -n "polySplit12";
	rename -uid "80C0226F-4746-1387-040B-6C8AA54C7336";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483190 -2147483210;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "2B6BC1A2-465B-270D-A699-148F775FA50D";
	setAttr -s 3 ".e[0:2]"  1 0.50000501 1;
	setAttr -s 3 ".d[0:2]"  -2147483200 -2147483188 -2147483220;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "677F0B1E-4699-CE96-725C-E1935248AE38";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483222 -2147483188 -2147483202;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "800E529C-4A4A-7D32-AC3F-B1855909A9B9";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483204 -2147483187 -2147483224;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "671F332D-4FD6-4B7B-960B-9B90167AAF69";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483206 -2147483182 -2147483226;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "53F021F3-48F9-9897-A663-23A66F007F13";
	setAttr -s 3 ".e[0:2]"  1 1 0;
	setAttr -s 3 ".d[0:2]"  -2147483208 -2147483180 -2147483226;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "86F6CE2D-4976-C6C2-7920-CB82B2D93097";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483212 -2147483187 -2147483192;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "90C670D4-4E6E-1C81-12B2-8992B07AC453";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483214 -2147483176 -2147483194;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "F0F542F2-4145-854E-0295-7AA6EE529F47";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483216 -2147483174 -2147483196;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "E96F2358-4B00-6C35-AD37-05B6DB930E89";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483218 -2147483172 -2147483198;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "8C8C12A6-4837-8497-0E4A-9BABD2DBBE55";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483488 -2147483487 -2147483486 -2147483485 -2147483484 -2147483483 
		-2147483482 -2147483481 -2147483480 -2147483479 -2147483478 -2147483477 -2147483476 -2147483475 -2147483474 -2147483473 -2147483472 -2147483471 
		-2147483470 -2147483469 -2147483488;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "9A3D1CC6-41ED-B4AD-A733-9A9E0812E3A8";
	setAttr ".ics" -type "componentList" 1 "f[60:79]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.5469851 4.7605166 -2.8020145e-007 ;
	setAttr ".rs" 49006;
	setAttr ".lt" -type "double3" 0 5.0653925498522767e-016 -0.12662820516147111 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.5588880108079648 3.1938499738961839 -1.5670007472038268 ;
	setAttr ".cbx" -type "double3" -7.5350820544306663 6.3271833453382254 1.5670001868009567 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "4C052CF1-4A70-D1E0-5F6C-52B4F274E4B5";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[80]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[81]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[82]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[83]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[84]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[85]" -type "float3" 4.9960036e-016 0.3496041 0 ;
	setAttr ".tk[86]" -type "float3" 4.7993527e-016 0.3496041 0 ;
	setAttr ".tk[87]" -type "float3" 4.9960036e-016 0.3496041 0 ;
	setAttr ".tk[88]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[89]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[90]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[91]" -type "float3" 6.6613381e-016 0.3496041 0 ;
	setAttr ".tk[92]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[93]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[94]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[95]" -type "float3" 4.9960036e-016 0.3496041 0 ;
	setAttr ".tk[96]" -type "float3" 4.7993527e-016 0.3496041 0 ;
	setAttr ".tk[97]" -type "float3" 4.9960036e-016 0.3496041 0 ;
	setAttr ".tk[98]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[99]" -type "float3" 5.5511151e-016 0.3496041 0 ;
	setAttr ".tk[241]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[242]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[243]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[244]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[245]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[246]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[247]" -type "float3" 5.387651e-016 0.11316448 0 ;
	setAttr ".tk[248]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[249]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[250]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[251]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[252]" -type "float3" 4.4408921e-016 0.11316448 0 ;
	setAttr ".tk[253]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[254]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[255]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[256]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[257]" -type "float3" 5.387651e-016 0.11316448 0 ;
	setAttr ".tk[258]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[259]" -type "float3" 5.5511151e-016 0.11316448 0 ;
	setAttr ".tk[260]" -type "float3" 5.5511151e-016 0.11316448 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "D889BDBD-4422-2ACE-E6B2-3CACCE61DCEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218:219]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.8277512 4.7605176 2.335012e-007 ;
	setAttr ".rs" 61465;
	setAttr ".lt" -type "double3" 5.0306980803327406e-017 2.6999335895346674 9.7274618915399458e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.8277501341437992 3.4782985215401121 -1.2822366987466811 ;
	setAttr ".cbx" -type "double3" 4.8277526454862008 6.0427362917840721 1.282237165749073 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "47A860BF-4D01-E360-7F42-46BDC284449E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[602]" "e[604]" "e[606]" "e[608]" "e[610]" "e[612]" "e[614]" "e[616]" "e[618]" "e[620]" "e[622]" "e[624]" "e[626]" "e[628]" "e[630]" "e[632]" "e[634]" "e[636]" "e[638:639]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.5276647 4.7605186 3.7360192e-007 ;
	setAttr ".rs" 37156;
	setAttr ".lt" -type "double3" -1.3322676295501878e-015 0.42915334775451303 -0.91566175693697549 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.5276633767824359 3.4678059025338137 -1.2926541211009026 ;
	setAttr ".cbx" -type "double3" 7.5276658881248375 6.0532311519250399 1.2926548683047294 ;
createNode polySplit -n "polySplit23";
	rename -uid "2170051A-49AE-95A1-9E93-188A4C049356";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483408 -2147483407 -2147483406 -2147483405 -2147483404 -2147483403 
		-2147483402 -2147483401 -2147483400 -2147483399 -2147483398 -2147483397 -2147483396 -2147483395 -2147483394 -2147483393 -2147483392 -2147483391 
		-2147483390 -2147483389 -2147483408;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2DC0B3E0-43FE-760F-FCAA-7AA7E186C284";
	setAttr ".ics" -type "componentList" 1 "f[80:99]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.6427679 4.7605176 2.335012e-007 ;
	setAttr ".rs" 49600;
	setAttr ".lt" -type "double3" -9.9204498782423656e-016 -2.1510571102112408e-016 
		-0.098170037870203286 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.5984428079186097 3.4782985215401121 -1.2822366987466811 ;
	setAttr ".cbx" -type "double3" 4.6870931946918537 6.0427362917840721 1.282237165749073 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "0AA610E6-493C-094F-62A3-82B5107EF31D";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[100]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[101]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[102]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[103]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[104]" -type "float3" 5.4698656e-016 0.080122426 0 ;
	setAttr ".tk[105]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[106]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[107]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[108]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[109]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[110]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[111]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[112]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[113]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[114]" -type "float3" 5.4698656e-016 0.080122426 0 ;
	setAttr ".tk[115]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[116]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[117]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[118]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[119]" -type "float3" 5.5511151e-016 0.080122426 0 ;
	setAttr ".tk[341]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[342]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[343]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[344]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[345]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[346]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[347]" -type "float3" 2.442131e-016 -0.98150057 0 ;
	setAttr ".tk[348]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[349]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[350]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[351]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[352]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[353]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[354]" -type "float3" 0 -0.98150057 0 ;
	setAttr ".tk[355]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[356]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[357]" -type "float3" 2.442131e-016 -0.98150057 0 ;
	setAttr ".tk[358]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[359]" -type "float3" 5.5511151e-017 -0.98150057 0 ;
	setAttr ".tk[360]" -type "float3" 0 -0.98150057 0 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "332EAF87-46B5-161E-05A3-3FA12AA45EA5";
	setAttr ".ics" -type "componentList" 3 "e[260:279]" "e[300:319]" "e[340:359]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit24";
	rename -uid "D2B0E207-4449-DB60-6A6E-059ACB9C7310";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483408 -2147483407 -2147483406 -2147483405 -2147483404 -2147483403 
		-2147483402 -2147483401 -2147483400 -2147483399 -2147483398 -2147483397 -2147483396 -2147483395 -2147483394 -2147483393 -2147483392 -2147483391 
		-2147483390 -2147483389 -2147483408;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "6B76A96F-4DFF-3741-C40F-98ADF8845948";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482968 -2147482949 -2147482950 -2147482951 -2147482952 -2147482953 
		-2147482954 -2147482955 -2147482956 -2147482957 -2147482958 -2147482959 -2147482960 -2147482961 -2147482962 -2147482963 -2147482964 -2147482965 
		-2147482966 -2147482967 -2147482968;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "288E82B4-41C5-E1EE-D153-82AE8F2A93B0";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482928 -2147482927 -2147482926 -2147482925 -2147482924 -2147482923 
		-2147482922 -2147482921 -2147482920 -2147482919 -2147482918 -2147482917 -2147482916 -2147482915 -2147482914 -2147482913 -2147482912 -2147482911 
		-2147482910 -2147482909 -2147482928;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "8A4FBADF-447F-4499-FB96-A082E76A15F4";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482888 -2147482887 -2147482886 -2147482885 -2147482884 -2147482883 
		-2147482882 -2147482881 -2147482880 -2147482879 -2147482878 -2147482877 -2147482876 -2147482875 -2147482874 -2147482873 -2147482872 -2147482871 
		-2147482870 -2147482869 -2147482888;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "DDA7C0EB-40B4-2783-7065-C3B264742784";
	setAttr ".ics" -type "componentList" 3 "e[700:719]" "e[740:759]" "e[780:799]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit28";
	rename -uid "7AA2CFE6-4342-E915-1839-42B58FDE5AFA";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482988 -2147482969 -2147482970 -2147482971 -2147482972 -2147482973 
		-2147482974 -2147482975 -2147482976 -2147482977 -2147482978 -2147482979 -2147482980 -2147482981 -2147482982 -2147482983 -2147482984 -2147482985 
		-2147482986 -2147482987 -2147482988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit29";
	rename -uid "4CEFFE9A-40B5-1994-6955-7B968CA7E057";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482928 -2147482909 -2147482910 -2147482911 -2147482912 -2147482913 
		-2147482914 -2147482915 -2147482916 -2147482917 -2147482918 -2147482919 -2147482920 -2147482921 -2147482922 -2147482923 -2147482924 -2147482925 
		-2147482926 -2147482927 -2147482928;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "AE11766F-4F31-684F-39D8-3B8C5D2E528B";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482988 -2147482969 -2147482970 -2147482971 -2147482972 -2147482973 
		-2147482974 -2147482975 -2147482976 -2147482977 -2147482978 -2147482979 -2147482980 -2147482981 -2147482982 -2147482983 -2147482984 -2147482985 
		-2147482986 -2147482987 -2147482988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "F45A86BC-43E1-3483-967D-28B2A96D42AA";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482848 -2147482829 -2147482830 -2147482831 -2147482832 -2147482833 
		-2147482834 -2147482835 -2147482836 -2147482837 -2147482838 -2147482839 -2147482840 -2147482841 -2147482842 -2147482843 -2147482844 -2147482845 
		-2147482846 -2147482847 -2147482848;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "9F43CFD0-4E17-FBDB-1F95-93A0AE5B7A24";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482928 -2147482927 -2147482926 -2147482925 -2147482924 -2147482923 
		-2147482922 -2147482921 -2147482920 -2147482919 -2147482918 -2147482917 -2147482916 -2147482915 -2147482914 -2147482913 -2147482912 -2147482911 
		-2147482910 -2147482909 -2147482928;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "5F7F5EC3-4FE2-7092-7C67-FA90149C8014";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482888 -2147482887 -2147482886 -2147482885 -2147482884 -2147482883 
		-2147482882 -2147482881 -2147482880 -2147482879 -2147482878 -2147482877 -2147482876 -2147482875 -2147482874 -2147482873 -2147482872 -2147482871 
		-2147482870 -2147482869 -2147482888;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "F6E36EFB-4387-C9A2-8EE4-BEBDDDDC5A13";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482988 -2147482969 -2147482970 -2147482971 -2147482972 -2147482973 
		-2147482974 -2147482975 -2147482976 -2147482977 -2147482978 -2147482979 -2147482980 -2147482981 -2147482982 -2147482983 -2147482984 -2147482985 
		-2147482986 -2147482987 -2147482988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit35";
	rename -uid "7194EB28-4F80-8BB4-4874-2FA910945937";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482988 -2147482969 -2147482970 -2147482971 -2147482972 -2147482973 
		-2147482974 -2147482975 -2147482976 -2147482977 -2147482978 -2147482979 -2147482980 -2147482981 -2147482982 -2147482983 -2147482984 -2147482985 
		-2147482986 -2147482987 -2147482988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit36";
	rename -uid "7005C550-4BEF-BD9E-1C1F-628C4971095C";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482688 -2147482669 -2147482670 -2147482671 -2147482672 -2147482673 
		-2147482674 -2147482675 -2147482676 -2147482677 -2147482678 -2147482679 -2147482680 -2147482681 -2147482682 -2147482683 -2147482684 -2147482685 
		-2147482686 -2147482687 -2147482688;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit37";
	rename -uid "084D5283-4F28-67B3-24E6-F0B711666CC1";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482848 -2147482847 -2147482846 -2147482845 -2147482844 -2147482843 
		-2147482842 -2147482841 -2147482840 -2147482839 -2147482838 -2147482837 -2147482836 -2147482835 -2147482834 -2147482833 -2147482832 -2147482831 
		-2147482830 -2147482829 -2147482848;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "6D176839-415C-7223-4F94-2A998C3F8509";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482808 -2147482807 -2147482806 -2147482805 -2147482804 -2147482803 
		-2147482802 -2147482801 -2147482800 -2147482799 -2147482798 -2147482797 -2147482796 -2147482795 -2147482794 -2147482793 -2147482792 -2147482791 
		-2147482790 -2147482789 -2147482808;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit39";
	rename -uid "1FE14CE6-49C6-EC53-96DB-4ABBC4426820";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482928 -2147482927 -2147482926 -2147482925 -2147482924 -2147482923 
		-2147482922 -2147482921 -2147482920 -2147482919 -2147482918 -2147482917 -2147482916 -2147482915 -2147482914 -2147482913 -2147482912 -2147482911 
		-2147482910 -2147482909 -2147482928;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit40";
	rename -uid "6C0BA995-4EC8-2D82-76DD-AE89EE7507E1";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482768 -2147482749 -2147482750 -2147482751 -2147482752 -2147482753 
		-2147482754 -2147482755 -2147482756 -2147482757 -2147482758 -2147482759 -2147482760 -2147482761 -2147482762 -2147482763 -2147482764 -2147482765 
		-2147482766 -2147482767 -2147482768;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit41";
	rename -uid "19FE7D9D-405D-3985-72FF-EBA671B13C1B";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482888 -2147482869 -2147482870 -2147482871 -2147482872 -2147482873 
		-2147482874 -2147482875 -2147482876 -2147482877 -2147482878 -2147482879 -2147482880 -2147482881 -2147482882 -2147482883 -2147482884 -2147482885 
		-2147482886 -2147482887 -2147482888;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit42";
	rename -uid "5C703817-46CA-3200-39C5-5784AEB14299";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147482728 -2147482727 -2147482726 -2147482725 -2147482724 -2147482723 
		-2147482722 -2147482721 -2147482720 -2147482719 -2147482718 -2147482717 -2147482716 -2147482715 -2147482714 -2147482713 -2147482712 -2147482711 
		-2147482710 -2147482709 -2147482728;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	rename -uid "8AF4E0D4-4A51-E831-C79D-35AFC20093F4";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483350 -2147483410 -2147483610 -2147483307 -2147483277 -2147483279 
		-2147483487 -2147483530 -2147483490 -2147483630 -2147483407 -2147482627 -2147482667 -2147482570 -2147482827 -2147482547 -2147482770 -2147482490 
		-2147482907 -2147482467 -2147482747 -2147482410 -2147482850 -2147482387 -2147482690 -2147482330 -2147482930 -2147483107 -2147482994 -2147482992 
		-2147483430 -2147483150 -2147483110;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit44";
	rename -uid "7D44A144-41D1-FF91-1A5E-F8B5E0B153D5";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483349 -2147483409 -2147483609 -2147483308 -2147483282 -2147483286 
		-2147483488 -2147483529 -2147483489 -2147483629 -2147483408 -2147482628 -2147482668 -2147482569 -2147482828 -2147482548 -2147482769 -2147482489 
		-2147482908 -2147482468 -2147482748 -2147482409 -2147482849 -2147482388 -2147482689 -2147482329 -2147482929 -2147483108 -2147482990 -2147482989 
		-2147483429 -2147483149 -2147483109;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit45";
	rename -uid "2C139D2C-45CA-F440-8B74-0BB78D9AC946";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483352 -2147483411 -2147483611 -2147483306 -2147483272 -2147483274 
		-2147483486 -2147483531 -2147483491 -2147483631 -2147483406 -2147482626 -2147482666 -2147482571 -2147482826 -2147482546 -2147482771 -2147482491 
		-2147482906 -2147482466 -2147482746 -2147482411 -2147482851 -2147482386 -2147482691 -2147482331 -2147482931 -2147483106 -2147482999 -2147482997 
		-2147483432 -2147483152 -2147483112;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit46";
	rename -uid "452BFC32-416F-F3DB-DFC4-159F6C5A7997";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483354 -2147483412 -2147483612 -2147483305 -2147483267 -2147483269 
		-2147483485 -2147483532 -2147483492 -2147483632 -2147483405 -2147482625 -2147482665 -2147482572 -2147482825 -2147482545 -2147482772 -2147482492 
		-2147482905 -2147482465 -2147482745 -2147482412 -2147482852 -2147482385 -2147482692 -2147482332 -2147482932 -2147483105 -2147483004 -2147483002 
		-2147483434 -2147483154 -2147483114;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit47";
	rename -uid "11B0DB1C-4C4A-53E2-C453-25B7B650B402";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483356 -2147483413 -2147483613 -2147483304 -2147483262 -2147483264 
		-2147483484 -2147483533 -2147483493 -2147483633 -2147483404 -2147482624 -2147482664 -2147482573 -2147482824 -2147482544 -2147482773 -2147482493 
		-2147482904 -2147482464 -2147482744 -2147482413 -2147482853 -2147482384 -2147482693 -2147482333 -2147482933 -2147483104 -2147483009 -2147483007 
		-2147483436 -2147483156 -2147483116;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit48";
	rename -uid "9E33BDBD-45D8-13F2-2C84-C6A2267E0EBE";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483358 -2147483414 -2147483614 -2147483303 -2147483257 -2147483259 
		-2147483483 -2147483534 -2147483494 -2147483634 -2147483403 -2147482623 -2147482663 -2147482574 -2147482823 -2147482543 -2147482774 -2147482494 
		-2147482903 -2147482463 -2147482743 -2147482414 -2147482854 -2147482383 -2147482694 -2147482334 -2147482934 -2147483103 -2147483014 -2147483012 
		-2147483438 -2147483158 -2147483118;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit49";
	rename -uid "68FA6535-471D-D360-A45B-B8B0D0A0E2A5";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483360 -2147483415 -2147483615 -2147483302 -2147483252 -2147483254 
		-2147483482 -2147483535 -2147483495 -2147483635 -2147483402 -2147482622 -2147482662 -2147482575 -2147482822 -2147482542 -2147482775 -2147482495 
		-2147482902 -2147482462 -2147482742 -2147482415 -2147482855 -2147482382 -2147482695 -2147482335 -2147482935 -2147483102 -2147483019 -2147483017 
		-2147483440 -2147483160 -2147483120;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit50";
	rename -uid "76AD14DD-4024-1E1D-1E4B-EBA7F40971F9";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483362 -2147483416 -2147483616 -2147483301 -2147483247 -2147483249 
		-2147483481 -2147483536 -2147483496 -2147483636 -2147483401 -2147482621 -2147482661 -2147482576 -2147482821 -2147482541 -2147482776 -2147482496 
		-2147482901 -2147482461 -2147482741 -2147482416 -2147482856 -2147482381 -2147482696 -2147482336 -2147482936 -2147483101 -2147483024 -2147483022 
		-2147483442 -2147483162 -2147483122;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit51";
	rename -uid "651DC889-4A49-69E8-4FD9-5AA4C45BA409";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483364 -2147483417 -2147483617 -2147483300 -2147483242 -2147483244 
		-2147483480 -2147483537 -2147483497 -2147483637 -2147483400 -2147482620 -2147482660 -2147482577 -2147482820 -2147482540 -2147482777 -2147482497 
		-2147482900 -2147482460 -2147482740 -2147482417 -2147482857 -2147482380 -2147482697 -2147482337 -2147482937 -2147483100 -2147483029 -2147483027 
		-2147483444 -2147483164 -2147483124;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit52";
	rename -uid "CFA66715-448B-E115-F7FD-1A91A266E7B5";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483366 -2147483418 -2147483618 -2147483299 -2147483237 -2147483239 
		-2147483479 -2147483538 -2147483498 -2147483638 -2147483399 -2147482619 -2147482659 -2147482578 -2147482819 -2147482539 -2147482778 -2147482498 
		-2147482899 -2147482459 -2147482739 -2147482418 -2147482858 -2147482379 -2147482698 -2147482338 -2147482938 -2147483099 -2147483034 -2147483032 
		-2147483446 -2147483166 -2147483126;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit53";
	rename -uid "A3994943-4EA4-AAEE-74E2-DFBA35EEA22B";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483368 -2147483419 -2147483619 -2147483298 -2147483232 -2147483234 
		-2147483478 -2147483539 -2147483499 -2147483639 -2147483398 -2147482618 -2147482658 -2147482579 -2147482818 -2147482538 -2147482779 -2147482499 
		-2147482898 -2147482458 -2147482738 -2147482419 -2147482859 -2147482378 -2147482699 -2147482339 -2147482939 -2147483098 -2147483039 -2147483037 
		-2147483448 -2147483168 -2147483128;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit54";
	rename -uid "CFD52851-41DC-36F8-F2EC-97809D7DF06A";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483370 -2147483420 -2147483620 -2147483297 -2147483227 -2147483229 
		-2147483477 -2147483540 -2147483500 -2147483640 -2147483397 -2147482617 -2147482657 -2147482580 -2147482817 -2147482537 -2147482780 -2147482500 
		-2147482897 -2147482457 -2147482737 -2147482420 -2147482860 -2147482377 -2147482700 -2147482340 -2147482940 -2147483097 -2147483044 -2147483042 
		-2147483450 -2147483170 -2147483130;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit55";
	rename -uid "0797A603-4275-EEAE-1502-59AFFE3E2F1B";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483372 -2147483421 -2147483621 -2147483296 -2147483222 -2147483224 
		-2147483476 -2147483541 -2147483501 -2147483641 -2147483396 -2147482616 -2147482656 -2147482581 -2147482816 -2147482536 -2147482781 -2147482501 
		-2147482896 -2147482456 -2147482736 -2147482421 -2147482861 -2147482376 -2147482701 -2147482341 -2147482941 -2147483096 -2147483049 -2147483047 
		-2147483452 -2147483172 -2147483132;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit56";
	rename -uid "C2DE246D-404C-8B6C-0B47-128E5A36130B";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483374 -2147483422 -2147483622 -2147483295 -2147483217 -2147483219 
		-2147483475 -2147483542 -2147483502 -2147483642 -2147483395 -2147482615 -2147482655 -2147482582 -2147482815 -2147482535 -2147482782 -2147482502 
		-2147482895 -2147482455 -2147482735 -2147482422 -2147482862 -2147482375 -2147482702 -2147482342 -2147482942 -2147483095 -2147483054 -2147483052 
		-2147483454 -2147483174 -2147483134;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit57";
	rename -uid "0E194485-466C-E5EE-0C18-709EFB4815E8";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483376 -2147483423 -2147483623 -2147483294 -2147483212 -2147483214 
		-2147483474 -2147483543 -2147483503 -2147483643 -2147483394 -2147482614 -2147482654 -2147482583 -2147482814 -2147482534 -2147482783 -2147482503 
		-2147482894 -2147482454 -2147482734 -2147482423 -2147482863 -2147482374 -2147482703 -2147482343 -2147482943 -2147483094 -2147483059 -2147483057 
		-2147483456 -2147483176 -2147483136;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit58";
	rename -uid "8E885AA1-4816-084F-6A74-53B628147E58";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483378 -2147483424 -2147483624 -2147483293 -2147483207 -2147483209 
		-2147483473 -2147483544 -2147483504 -2147483644 -2147483393 -2147482613 -2147482653 -2147482584 -2147482813 -2147482533 -2147482784 -2147482504 
		-2147482893 -2147482453 -2147482733 -2147482424 -2147482864 -2147482373 -2147482704 -2147482344 -2147482944 -2147483093 -2147483064 -2147483062 
		-2147483458 -2147483178 -2147483138;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit59";
	rename -uid "825F9DBE-40C7-0B63-7BDF-43B131A8852D";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483380 -2147483425 -2147483625 -2147483292 -2147483202 -2147483204 
		-2147483472 -2147483545 -2147483505 -2147483645 -2147483392 -2147482612 -2147482652 -2147482585 -2147482812 -2147482532 -2147482785 -2147482505 
		-2147482892 -2147482452 -2147482732 -2147482425 -2147482865 -2147482372 -2147482705 -2147482345 -2147482945 -2147483092 -2147483069 -2147483067 
		-2147483460 -2147483180 -2147483140;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit60";
	rename -uid "9AD1154F-4965-AAE8-DC9E-FE95617D011C";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483382 -2147483426 -2147483626 -2147483291 -2147483197 -2147483199 
		-2147483471 -2147483546 -2147483506 -2147483646 -2147483391 -2147482611 -2147482651 -2147482586 -2147482811 -2147482531 -2147482786 -2147482506 
		-2147482891 -2147482451 -2147482731 -2147482426 -2147482866 -2147482371 -2147482706 -2147482346 -2147482946 -2147483091 -2147483074 -2147483072 
		-2147483462 -2147483182 -2147483142;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit61";
	rename -uid "5F66F474-4BD6-6282-DC9A-F19757A49688";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483384 -2147483427 -2147483627 -2147483290 -2147483192 -2147483194 
		-2147483470 -2147483547 -2147483507 -2147483647 -2147483390 -2147482610 -2147482650 -2147482587 -2147482810 -2147482530 -2147482787 -2147482507 
		-2147482890 -2147482450 -2147482730 -2147482427 -2147482867 -2147482370 -2147482707 -2147482347 -2147482947 -2147483090 -2147483079 -2147483077 
		-2147483464 -2147483184 -2147483144;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit62";
	rename -uid "71F02EB4-4A27-672C-A331-C7BA2C6A23A7";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483386 -2147483428 -2147483628 -2147483289 -2147483189 -2147483190 
		-2147483469 -2147483548 -2147483508 -2147483648 -2147483389 -2147482609 -2147482649 -2147482588 -2147482809 -2147482529 -2147482788 -2147482508 
		-2147482889 -2147482449 -2147482729 -2147482428 -2147482868 -2147482369 -2147482708 -2147482348 -2147482948 -2147483089 -2147483086 -2147483082 
		-2147483466 -2147483186 -2147483146;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit63";
	rename -uid "C175153E-4A92-B5C3-DB01-8F8F80EADAAC";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482988 -2147482220 -2147482969 -2147482285 -2147482970 -2147482155 
		-2147482971 -2147482090 -2147482972 -2147482025 -2147482973 -2147481960 -2147482974 -2147481895 -2147482975 -2147481830 -2147482976 -2147481765 
		-2147482977 -2147481700 -2147482978 -2147481635 -2147482979 -2147481570 -2147482980 -2147481505 -2147482981 -2147481440 -2147482982 -2147481375 
		-2147482983 -2147481310 -2147482984 -2147481245 -2147482985 -2147481180 -2147482986 -2147481115 -2147482987 -2147481050 -2147482988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit64";
	rename -uid "2CAD4D9E-4598-5DB6-EBAB-69853F1B5B0C";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482648 -2147482219 -2147482647 -2147482284 -2147482646 -2147482154 
		-2147482645 -2147482089 -2147482644 -2147482024 -2147482643 -2147481959 -2147482642 -2147481894 -2147482641 -2147481829 -2147482640 -2147481764 
		-2147482639 -2147481699 -2147482638 -2147481634 -2147482637 -2147481569 -2147482636 -2147481504 -2147482635 -2147481439 -2147482634 -2147481374 
		-2147482633 -2147481309 -2147482632 -2147481244 -2147482631 -2147481179 -2147482630 -2147481114 -2147482629 -2147481049 -2147482648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit65";
	rename -uid "B3FA5715-45D1-613E-13AC-E0BFAD586629";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482688 -2147482218 -2147482687 -2147482283 -2147482686 -2147482153 
		-2147482685 -2147482088 -2147482684 -2147482023 -2147482683 -2147481958 -2147482682 -2147481893 -2147482681 -2147481828 -2147482680 -2147481763 
		-2147482679 -2147481698 -2147482678 -2147481633 -2147482677 -2147481568 -2147482676 -2147481503 -2147482675 -2147481438 -2147482674 -2147481373 
		-2147482673 -2147481308 -2147482672 -2147481243 -2147482671 -2147481178 -2147482670 -2147481113 -2147482669 -2147481048 -2147482688;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit66";
	rename -uid "E624C629-4C47-7977-5D15-33BCBDE5B3FA";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482608 -2147482217 -2147482589 -2147482282 -2147482590 -2147482152 
		-2147482591 -2147482087 -2147482592 -2147482022 -2147482593 -2147481957 -2147482594 -2147481892 -2147482595 -2147481827 -2147482596 -2147481762 
		-2147482597 -2147481697 -2147482598 -2147481632 -2147482599 -2147481567 -2147482600 -2147481502 -2147482601 -2147481437 -2147482602 -2147481372 
		-2147482603 -2147481307 -2147482604 -2147481242 -2147482605 -2147481177 -2147482606 -2147481112 -2147482607 -2147481047 -2147482608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit67";
	rename -uid "B0900B8F-444E-C295-8B43-D0A02A495C73";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482848 -2147482216 -2147482847 -2147482281 -2147482846 -2147482151 
		-2147482845 -2147482086 -2147482844 -2147482021 -2147482843 -2147481956 -2147482842 -2147481891 -2147482841 -2147481826 -2147482840 -2147481761 
		-2147482839 -2147481696 -2147482838 -2147481631 -2147482837 -2147481566 -2147482836 -2147481501 -2147482835 -2147481436 -2147482834 -2147481371 
		-2147482833 -2147481306 -2147482832 -2147481241 -2147482831 -2147481176 -2147482830 -2147481111 -2147482829 -2147481046 -2147482848;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit68";
	rename -uid "C4241B6F-4C9F-23DE-AA48-6FB54AE8A45B";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482568 -2147482215 -2147482567 -2147482280 -2147482566 -2147482150 
		-2147482565 -2147482085 -2147482564 -2147482020 -2147482563 -2147481955 -2147482562 -2147481890 -2147482561 -2147481825 -2147482560 -2147481760 
		-2147482559 -2147481695 -2147482558 -2147481630 -2147482557 -2147481565 -2147482556 -2147481500 -2147482555 -2147481435 -2147482554 -2147481370 
		-2147482553 -2147481305 -2147482552 -2147481240 -2147482551 -2147481175 -2147482550 -2147481110 -2147482549 -2147481045 -2147482568;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit69";
	rename -uid "ED97E46C-4AF5-5F55-AC67-8280125658FD";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482808 -2147482214 -2147482789 -2147482279 -2147482790 -2147482149 
		-2147482791 -2147482084 -2147482792 -2147482019 -2147482793 -2147481954 -2147482794 -2147481889 -2147482795 -2147481824 -2147482796 -2147481759 
		-2147482797 -2147481694 -2147482798 -2147481629 -2147482799 -2147481564 -2147482800 -2147481499 -2147482801 -2147481434 -2147482802 -2147481369 
		-2147482803 -2147481304 -2147482804 -2147481239 -2147482805 -2147481174 -2147482806 -2147481109 -2147482807 -2147481044 -2147482808;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit70";
	rename -uid "B0E423A3-41CA-726E-455B-BE981474F776";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482528 -2147482213 -2147482509 -2147482278 -2147482510 -2147482148 
		-2147482511 -2147482083 -2147482512 -2147482018 -2147482513 -2147481953 -2147482514 -2147481888 -2147482515 -2147481823 -2147482516 -2147481758 
		-2147482517 -2147481693 -2147482518 -2147481628 -2147482519 -2147481563 -2147482520 -2147481498 -2147482521 -2147481433 -2147482522 -2147481368 
		-2147482523 -2147481303 -2147482524 -2147481238 -2147482525 -2147481173 -2147482526 -2147481108 -2147482527 -2147481043 -2147482528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit71";
	rename -uid "1E363EE2-41AB-C0C2-D538-FAB72F99A2CE";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482928 -2147482212 -2147482927 -2147482277 -2147482926 -2147482147 
		-2147482925 -2147482082 -2147482924 -2147482017 -2147482923 -2147481952 -2147482922 -2147481887 -2147482921 -2147481822 -2147482920 -2147481757 
		-2147482919 -2147481692 -2147482918 -2147481627 -2147482917 -2147481562 -2147482916 -2147481497 -2147482915 -2147481432 -2147482914 -2147481367 
		-2147482913 -2147481302 -2147482912 -2147481237 -2147482911 -2147481172 -2147482910 -2147481107 -2147482909 -2147481042 -2147482928;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit72";
	rename -uid "C558BE14-471D-CA70-A309-3EB272BA6F23";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482488 -2147482211 -2147482487 -2147482276 -2147482486 -2147482146 
		-2147482485 -2147482081 -2147482484 -2147482016 -2147482483 -2147481951 -2147482482 -2147481886 -2147482481 -2147481821 -2147482480 -2147481756 
		-2147482479 -2147481691 -2147482478 -2147481626 -2147482477 -2147481561 -2147482476 -2147481496 -2147482475 -2147481431 -2147482474 -2147481366 
		-2147482473 -2147481301 -2147482472 -2147481236 -2147482471 -2147481171 -2147482470 -2147481106 -2147482469 -2147481041 -2147482488;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit73";
	rename -uid "9756FC9D-4FA0-2984-5243-D7BFCBAC5943";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482768 -2147482210 -2147482767 -2147482275 -2147482766 -2147482145 
		-2147482765 -2147482080 -2147482764 -2147482015 -2147482763 -2147481950 -2147482762 -2147481885 -2147482761 -2147481820 -2147482760 -2147481755 
		-2147482759 -2147481690 -2147482758 -2147481625 -2147482757 -2147481560 -2147482756 -2147481495 -2147482755 -2147481430 -2147482754 -2147481365 
		-2147482753 -2147481300 -2147482752 -2147481235 -2147482751 -2147481170 -2147482750 -2147481105 -2147482749 -2147481040 -2147482768;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit74";
	rename -uid "BCE8DA4C-4548-8978-19E3-BFB50A5D73DF";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482448 -2147482209 -2147482429 -2147482274 -2147482430 -2147482144 
		-2147482431 -2147482079 -2147482432 -2147482014 -2147482433 -2147481949 -2147482434 -2147481884 -2147482435 -2147481819 -2147482436 -2147481754 
		-2147482437 -2147481689 -2147482438 -2147481624 -2147482439 -2147481559 -2147482440 -2147481494 -2147482441 -2147481429 -2147482442 -2147481364 
		-2147482443 -2147481299 -2147482444 -2147481234 -2147482445 -2147481169 -2147482446 -2147481104 -2147482447 -2147481039 -2147482448;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit75";
	rename -uid "47380500-485B-986A-32C5-AFA36B61E437";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482888 -2147482208 -2147482869 -2147482273 -2147482870 -2147482143 
		-2147482871 -2147482078 -2147482872 -2147482013 -2147482873 -2147481948 -2147482874 -2147481883 -2147482875 -2147481818 -2147482876 -2147481753 
		-2147482877 -2147481688 -2147482878 -2147481623 -2147482879 -2147481558 -2147482880 -2147481493 -2147482881 -2147481428 -2147482882 -2147481363 
		-2147482883 -2147481298 -2147482884 -2147481233 -2147482885 -2147481168 -2147482886 -2147481103 -2147482887 -2147481038 -2147482888;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit76";
	rename -uid "66142EED-4000-C92B-2A1B-18B5BBE0CC84";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482408 -2147482207 -2147482407 -2147482272 -2147482406 -2147482142 
		-2147482405 -2147482077 -2147482404 -2147482012 -2147482403 -2147481947 -2147482402 -2147481882 -2147482401 -2147481817 -2147482400 -2147481752 
		-2147482399 -2147481687 -2147482398 -2147481622 -2147482397 -2147481557 -2147482396 -2147481492 -2147482395 -2147481427 -2147482394 -2147481362 
		-2147482393 -2147481297 -2147482392 -2147481232 -2147482391 -2147481167 -2147482390 -2147481102 -2147482389 -2147481037 -2147482408;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit77";
	rename -uid "8484D34F-439B-6D10-61E5-29962BD2D30D";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482728 -2147482206 -2147482709 -2147482271 -2147482710 -2147482141 
		-2147482711 -2147482076 -2147482712 -2147482011 -2147482713 -2147481946 -2147482714 -2147481881 -2147482715 -2147481816 -2147482716 -2147481751 
		-2147482717 -2147481686 -2147482718 -2147481621 -2147482719 -2147481556 -2147482720 -2147481491 -2147482721 -2147481426 -2147482722 -2147481361 
		-2147482723 -2147481296 -2147482724 -2147481231 -2147482725 -2147481166 -2147482726 -2147481101 -2147482727 -2147481036 -2147482728;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit78";
	rename -uid "71CC3CD3-46F7-25C2-D7D2-8581CA5B91E5";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482988 -2147482220 -2147482969 -2147482285 -2147482970 -2147482155 
		-2147482971 -2147482090 -2147482972 -2147482025 -2147482973 -2147481960 -2147482974 -2147481895 -2147482975 -2147481830 -2147482976 -2147481765 
		-2147482977 -2147481700 -2147482978 -2147481635 -2147482979 -2147481570 -2147482980 -2147481505 -2147482981 -2147481440 -2147482982 -2147481375 
		-2147482983 -2147481310 -2147482984 -2147481245 -2147482985 -2147481180 -2147482986 -2147481115 -2147482987 -2147481050 -2147482988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit79";
	rename -uid "3F39C2A4-4938-CD96-FCD4-22B8A8A45EF3";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147479908 -2147479869 -2147479870 -2147479871 -2147479872 -2147479873 
		-2147479874 -2147479875 -2147479876 -2147479877 -2147479878 -2147479879 -2147479880 -2147479881 -2147479882 -2147479883 -2147479884 -2147479885 
		-2147479886 -2147479887 -2147479888 -2147479889 -2147479890 -2147479891 -2147479892 -2147479893 -2147479894 -2147479895 -2147479896 -2147479897 
		-2147479898 -2147479899 -2147479900 -2147479901 -2147479902 -2147479903 -2147479904 -2147479905 -2147479906 -2147479907 -2147479908;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit80";
	rename -uid "7AEA8DC1-4CB3-8AE7-0748-E6BFDE8565A1";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482728 -2147482206 -2147482709 -2147482271 -2147482710 -2147482141 
		-2147482711 -2147482076 -2147482712 -2147482011 -2147482713 -2147481946 -2147482714 -2147481881 -2147482715 -2147481816 -2147482716 -2147481751 
		-2147482717 -2147481686 -2147482718 -2147481621 -2147482719 -2147481556 -2147482720 -2147481491 -2147482721 -2147481426 -2147482722 -2147481361 
		-2147482723 -2147481296 -2147482724 -2147481231 -2147482725 -2147481166 -2147482726 -2147481101 -2147482727 -2147481036 -2147482728;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit81";
	rename -uid "540E0B63-476C-84EB-DEA5-3ABE2B893BA5";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147479988 -2147479949 -2147479950 -2147479951 -2147479952 -2147479953 
		-2147479954 -2147479955 -2147479956 -2147479957 -2147479958 -2147479959 -2147479960 -2147479961 -2147479962 -2147479963 -2147479964 -2147479965 
		-2147479966 -2147479967 -2147479968 -2147479969 -2147479970 -2147479971 -2147479972 -2147479973 -2147479974 -2147479975 -2147479976 -2147479977 
		-2147479978 -2147479979 -2147479980 -2147479981 -2147479982 -2147479983 -2147479984 -2147479985 -2147479986 -2147479987 -2147479988;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit82";
	rename -uid "43A1BEFD-4883-3FF5-C465-3496A806BC31";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482408 -2147482207 -2147482407 -2147482272 -2147482406 -2147482142 
		-2147482405 -2147482077 -2147482404 -2147482012 -2147482403 -2147481947 -2147482402 -2147481882 -2147482401 -2147481817 -2147482400 -2147481752 
		-2147482399 -2147481687 -2147482398 -2147481622 -2147482397 -2147481557 -2147482396 -2147481492 -2147482395 -2147481427 -2147482394 -2147481362 
		-2147482393 -2147481297 -2147482392 -2147481232 -2147482391 -2147481167 -2147482390 -2147481102 -2147482389 -2147481037 -2147482408;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit83";
	rename -uid "994A76AE-4D42-17B5-9D2E-0B953D469175";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480068 -2147480029 -2147480030 -2147480031 -2147480032 -2147480033 
		-2147480034 -2147480035 -2147480036 -2147480037 -2147480038 -2147480039 -2147480040 -2147480041 -2147480042 -2147480043 -2147480044 -2147480045 
		-2147480046 -2147480047 -2147480048 -2147480049 -2147480050 -2147480051 -2147480052 -2147480053 -2147480054 -2147480055 -2147480056 -2147480057 
		-2147480058 -2147480059 -2147480060 -2147480061 -2147480062 -2147480063 -2147480064 -2147480065 -2147480066 -2147480067 -2147480068;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit84";
	rename -uid "78F82D00-48D9-58AF-46FF-44955BD956A3";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482888 -2147482208 -2147482869 -2147482273 -2147482870 -2147482143 
		-2147482871 -2147482078 -2147482872 -2147482013 -2147482873 -2147481948 -2147482874 -2147481883 -2147482875 -2147481818 -2147482876 -2147481753 
		-2147482877 -2147481688 -2147482878 -2147481623 -2147482879 -2147481558 -2147482880 -2147481493 -2147482881 -2147481428 -2147482882 -2147481363 
		-2147482883 -2147481298 -2147482884 -2147481233 -2147482885 -2147481168 -2147482886 -2147481103 -2147482887 -2147481038 -2147482888;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit85";
	rename -uid "8328026F-420D-3AB4-F9CD-CB861BD76493";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480148 -2147480109 -2147480110 -2147480111 -2147480112 -2147480113 
		-2147480114 -2147480115 -2147480116 -2147480117 -2147480118 -2147480119 -2147480120 -2147480121 -2147480122 -2147480123 -2147480124 -2147480125 
		-2147480126 -2147480127 -2147480128 -2147480129 -2147480130 -2147480131 -2147480132 -2147480133 -2147480134 -2147480135 -2147480136 -2147480137 
		-2147480138 -2147480139 -2147480140 -2147480141 -2147480142 -2147480143 -2147480144 -2147480145 -2147480146 -2147480147 -2147480148;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit86";
	rename -uid "34F4729B-48D6-9CCE-00F5-8C807C28FDF6";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482448 -2147482209 -2147482429 -2147482274 -2147482430 -2147482144 
		-2147482431 -2147482079 -2147482432 -2147482014 -2147482433 -2147481949 -2147482434 -2147481884 -2147482435 -2147481819 -2147482436 -2147481754 
		-2147482437 -2147481689 -2147482438 -2147481624 -2147482439 -2147481559 -2147482440 -2147481494 -2147482441 -2147481429 -2147482442 -2147481364 
		-2147482443 -2147481299 -2147482444 -2147481234 -2147482445 -2147481169 -2147482446 -2147481104 -2147482447 -2147481039 -2147482448;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit87";
	rename -uid "A75C49EF-4563-7A0C-C42E-2B9A28B708E2";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480228 -2147480189 -2147480190 -2147480191 -2147480192 -2147480193 
		-2147480194 -2147480195 -2147480196 -2147480197 -2147480198 -2147480199 -2147480200 -2147480201 -2147480202 -2147480203 -2147480204 -2147480205 
		-2147480206 -2147480207 -2147480208 -2147480209 -2147480210 -2147480211 -2147480212 -2147480213 -2147480214 -2147480215 -2147480216 -2147480217 
		-2147480218 -2147480219 -2147480220 -2147480221 -2147480222 -2147480223 -2147480224 -2147480225 -2147480226 -2147480227 -2147480228;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit88";
	rename -uid "AD9C9430-4C6B-C122-BA26-EA92B8E51918";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482768 -2147482210 -2147482767 -2147482275 -2147482766 -2147482145 
		-2147482765 -2147482080 -2147482764 -2147482015 -2147482763 -2147481950 -2147482762 -2147481885 -2147482761 -2147481820 -2147482760 -2147481755 
		-2147482759 -2147481690 -2147482758 -2147481625 -2147482757 -2147481560 -2147482756 -2147481495 -2147482755 -2147481430 -2147482754 -2147481365 
		-2147482753 -2147481300 -2147482752 -2147481235 -2147482751 -2147481170 -2147482750 -2147481105 -2147482749 -2147481040 -2147482768;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit89";
	rename -uid "A0ADA03C-4C4C-85C2-6337-A4B8E4B7E52A";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480308 -2147480269 -2147480270 -2147480271 -2147480272 -2147480273 
		-2147480274 -2147480275 -2147480276 -2147480277 -2147480278 -2147480279 -2147480280 -2147480281 -2147480282 -2147480283 -2147480284 -2147480285 
		-2147480286 -2147480287 -2147480288 -2147480289 -2147480290 -2147480291 -2147480292 -2147480293 -2147480294 -2147480295 -2147480296 -2147480297 
		-2147480298 -2147480299 -2147480300 -2147480301 -2147480302 -2147480303 -2147480304 -2147480305 -2147480306 -2147480307 -2147480308;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit90";
	rename -uid "A2625C53-4421-F4D6-0CF7-0CB8594909A3";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482488 -2147482211 -2147482487 -2147482276 -2147482486 -2147482146 
		-2147482485 -2147482081 -2147482484 -2147482016 -2147482483 -2147481951 -2147482482 -2147481886 -2147482481 -2147481821 -2147482480 -2147481756 
		-2147482479 -2147481691 -2147482478 -2147481626 -2147482477 -2147481561 -2147482476 -2147481496 -2147482475 -2147481431 -2147482474 -2147481366 
		-2147482473 -2147481301 -2147482472 -2147481236 -2147482471 -2147481171 -2147482470 -2147481106 -2147482469 -2147481041 -2147482488;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit91";
	rename -uid "F0A81E3A-49D6-0BF3-124F-4682D03C7440";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480388 -2147480349 -2147480350 -2147480351 -2147480352 -2147480353 
		-2147480354 -2147480355 -2147480356 -2147480357 -2147480358 -2147480359 -2147480360 -2147480361 -2147480362 -2147480363 -2147480364 -2147480365 
		-2147480366 -2147480367 -2147480368 -2147480369 -2147480370 -2147480371 -2147480372 -2147480373 -2147480374 -2147480375 -2147480376 -2147480377 
		-2147480378 -2147480379 -2147480380 -2147480381 -2147480382 -2147480383 -2147480384 -2147480385 -2147480386 -2147480387 -2147480388;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit92";
	rename -uid "2AC5FC25-46FC-4432-E045-80AA8A4B04F1";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482928 -2147482212 -2147482927 -2147482277 -2147482926 -2147482147 
		-2147482925 -2147482082 -2147482924 -2147482017 -2147482923 -2147481952 -2147482922 -2147481887 -2147482921 -2147481822 -2147482920 -2147481757 
		-2147482919 -2147481692 -2147482918 -2147481627 -2147482917 -2147481562 -2147482916 -2147481497 -2147482915 -2147481432 -2147482914 -2147481367 
		-2147482913 -2147481302 -2147482912 -2147481237 -2147482911 -2147481172 -2147482910 -2147481107 -2147482909 -2147481042 -2147482928;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit93";
	rename -uid "ACDF6AD4-47C2-3BED-6B40-1C9EE9413CB1";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480468 -2147480429 -2147480430 -2147480431 -2147480432 -2147480433 
		-2147480434 -2147480435 -2147480436 -2147480437 -2147480438 -2147480439 -2147480440 -2147480441 -2147480442 -2147480443 -2147480444 -2147480445 
		-2147480446 -2147480447 -2147480448 -2147480449 -2147480450 -2147480451 -2147480452 -2147480453 -2147480454 -2147480455 -2147480456 -2147480457 
		-2147480458 -2147480459 -2147480460 -2147480461 -2147480462 -2147480463 -2147480464 -2147480465 -2147480466 -2147480467 -2147480468;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit94";
	rename -uid "F73D437D-457A-B4EE-1715-FEA70058261C";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482528 -2147482213 -2147482509 -2147482278 -2147482510 -2147482148 
		-2147482511 -2147482083 -2147482512 -2147482018 -2147482513 -2147481953 -2147482514 -2147481888 -2147482515 -2147481823 -2147482516 -2147481758 
		-2147482517 -2147481693 -2147482518 -2147481628 -2147482519 -2147481563 -2147482520 -2147481498 -2147482521 -2147481433 -2147482522 -2147481368 
		-2147482523 -2147481303 -2147482524 -2147481238 -2147482525 -2147481173 -2147482526 -2147481108 -2147482527 -2147481043 -2147482528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit95";
	rename -uid "AECAF1ED-4037-B007-23CD-AB97E34B5ABB";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480548 -2147480509 -2147480510 -2147480511 -2147480512 -2147480513 
		-2147480514 -2147480515 -2147480516 -2147480517 -2147480518 -2147480519 -2147480520 -2147480521 -2147480522 -2147480523 -2147480524 -2147480525 
		-2147480526 -2147480527 -2147480528 -2147480529 -2147480530 -2147480531 -2147480532 -2147480533 -2147480534 -2147480535 -2147480536 -2147480537 
		-2147480538 -2147480539 -2147480540 -2147480541 -2147480542 -2147480543 -2147480544 -2147480545 -2147480546 -2147480547 -2147480548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit96";
	rename -uid "147C2123-4D73-116C-EF32-5881D9DB0B16";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482808 -2147482214 -2147482789 -2147482279 -2147482790 -2147482149 
		-2147482791 -2147482084 -2147482792 -2147482019 -2147482793 -2147481954 -2147482794 -2147481889 -2147482795 -2147481824 -2147482796 -2147481759 
		-2147482797 -2147481694 -2147482798 -2147481629 -2147482799 -2147481564 -2147482800 -2147481499 -2147482801 -2147481434 -2147482802 -2147481369 
		-2147482803 -2147481304 -2147482804 -2147481239 -2147482805 -2147481174 -2147482806 -2147481109 -2147482807 -2147481044 -2147482808;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit97";
	rename -uid "E7CB3E20-4461-8767-1EE1-A48919801821";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480628 -2147480589 -2147480590 -2147480591 -2147480592 -2147480593 
		-2147480594 -2147480595 -2147480596 -2147480597 -2147480598 -2147480599 -2147480600 -2147480601 -2147480602 -2147480603 -2147480604 -2147480605 
		-2147480606 -2147480607 -2147480608 -2147480609 -2147480610 -2147480611 -2147480612 -2147480613 -2147480614 -2147480615 -2147480616 -2147480617 
		-2147480618 -2147480619 -2147480620 -2147480621 -2147480622 -2147480623 -2147480624 -2147480625 -2147480626 -2147480627 -2147480628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit98";
	rename -uid "4CDD0E7F-4358-D4C1-49C8-B585DD6899B6";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482568 -2147482215 -2147482567 -2147482280 -2147482566 -2147482150 
		-2147482565 -2147482085 -2147482564 -2147482020 -2147482563 -2147481955 -2147482562 -2147481890 -2147482561 -2147481825 -2147482560 -2147481760 
		-2147482559 -2147481695 -2147482558 -2147481630 -2147482557 -2147481565 -2147482556 -2147481500 -2147482555 -2147481435 -2147482554 -2147481370 
		-2147482553 -2147481305 -2147482552 -2147481240 -2147482551 -2147481175 -2147482550 -2147481110 -2147482549 -2147481045 -2147482568;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit99";
	rename -uid "8819E2F2-41DE-E5B7-9B0E-7681FD0845F6";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480708 -2147480669 -2147480670 -2147480671 -2147480672 -2147480673 
		-2147480674 -2147480675 -2147480676 -2147480677 -2147480678 -2147480679 -2147480680 -2147480681 -2147480682 -2147480683 -2147480684 -2147480685 
		-2147480686 -2147480687 -2147480688 -2147480689 -2147480690 -2147480691 -2147480692 -2147480693 -2147480694 -2147480695 -2147480696 -2147480697 
		-2147480698 -2147480699 -2147480700 -2147480701 -2147480702 -2147480703 -2147480704 -2147480705 -2147480706 -2147480707 -2147480708;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit100";
	rename -uid "2C649EDE-43BA-3CC7-937B-B5BAC7F1D7AA";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482848 -2147482216 -2147482847 -2147482281 -2147482846 -2147482151 
		-2147482845 -2147482086 -2147482844 -2147482021 -2147482843 -2147481956 -2147482842 -2147481891 -2147482841 -2147481826 -2147482840 -2147481761 
		-2147482839 -2147481696 -2147482838 -2147481631 -2147482837 -2147481566 -2147482836 -2147481501 -2147482835 -2147481436 -2147482834 -2147481371 
		-2147482833 -2147481306 -2147482832 -2147481241 -2147482831 -2147481176 -2147482830 -2147481111 -2147482829 -2147481046 -2147482848;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit101";
	rename -uid "CB3EFBD5-4A3A-BCF3-D3C8-CE9E7B5F1828";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480788 -2147480749 -2147480750 -2147480751 -2147480752 -2147480753 
		-2147480754 -2147480755 -2147480756 -2147480757 -2147480758 -2147480759 -2147480760 -2147480761 -2147480762 -2147480763 -2147480764 -2147480765 
		-2147480766 -2147480767 -2147480768 -2147480769 -2147480770 -2147480771 -2147480772 -2147480773 -2147480774 -2147480775 -2147480776 -2147480777 
		-2147480778 -2147480779 -2147480780 -2147480781 -2147480782 -2147480783 -2147480784 -2147480785 -2147480786 -2147480787 -2147480788;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit102";
	rename -uid "E68160D1-41FA-6E6B-3596-81BF8AFD7322";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482608 -2147482217 -2147482589 -2147482282 -2147482590 -2147482152 
		-2147482591 -2147482087 -2147482592 -2147482022 -2147482593 -2147481957 -2147482594 -2147481892 -2147482595 -2147481827 -2147482596 -2147481762 
		-2147482597 -2147481697 -2147482598 -2147481632 -2147482599 -2147481567 -2147482600 -2147481502 -2147482601 -2147481437 -2147482602 -2147481372 
		-2147482603 -2147481307 -2147482604 -2147481242 -2147482605 -2147481177 -2147482606 -2147481112 -2147482607 -2147481047 -2147482608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit103";
	rename -uid "8B8F17C8-4E21-7B47-EF75-0E8F6936E29F";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480868 -2147480829 -2147480830 -2147480831 -2147480832 -2147480833 
		-2147480834 -2147480835 -2147480836 -2147480837 -2147480838 -2147480839 -2147480840 -2147480841 -2147480842 -2147480843 -2147480844 -2147480845 
		-2147480846 -2147480847 -2147480848 -2147480849 -2147480850 -2147480851 -2147480852 -2147480853 -2147480854 -2147480855 -2147480856 -2147480857 
		-2147480858 -2147480859 -2147480860 -2147480861 -2147480862 -2147480863 -2147480864 -2147480865 -2147480866 -2147480867 -2147480868;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit104";
	rename -uid "AB232606-4DCB-6D57-25D4-0A971C5CA890";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482688 -2147482218 -2147482687 -2147482283 -2147482686 -2147482153 
		-2147482685 -2147482088 -2147482684 -2147482023 -2147482683 -2147481958 -2147482682 -2147481893 -2147482681 -2147481828 -2147482680 -2147481763 
		-2147482679 -2147481698 -2147482678 -2147481633 -2147482677 -2147481568 -2147482676 -2147481503 -2147482675 -2147481438 -2147482674 -2147481373 
		-2147482673 -2147481308 -2147482672 -2147481243 -2147482671 -2147481178 -2147482670 -2147481113 -2147482669 -2147481048 -2147482688;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit105";
	rename -uid "2B3DBDEB-4116-0CA4-3BBD-9B95DED7F430";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147480948 -2147480909 -2147480910 -2147480911 -2147480912 -2147480913 
		-2147480914 -2147480915 -2147480916 -2147480917 -2147480918 -2147480919 -2147480920 -2147480921 -2147480922 -2147480923 -2147480924 -2147480925 
		-2147480926 -2147480927 -2147480928 -2147480929 -2147480930 -2147480931 -2147480932 -2147480933 -2147480934 -2147480935 -2147480936 -2147480937 
		-2147480938 -2147480939 -2147480940 -2147480941 -2147480942 -2147480943 -2147480944 -2147480945 -2147480946 -2147480947 -2147480948;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit106";
	rename -uid "6E0BF801-473D-84C4-0BBB-3A825E20B459";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147482648 -2147482219 -2147482647 -2147482284 -2147482646 -2147482154 
		-2147482645 -2147482089 -2147482644 -2147482024 -2147482643 -2147481959 -2147482642 -2147481894 -2147482641 -2147481829 -2147482640 -2147481764 
		-2147482639 -2147481699 -2147482638 -2147481634 -2147482637 -2147481569 -2147482636 -2147481504 -2147482635 -2147481439 -2147482634 -2147481374 
		-2147482633 -2147481309 -2147482632 -2147481244 -2147482631 -2147481179 -2147482630 -2147481114 -2147482629 -2147481049 -2147482648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit107";
	rename -uid "AD800C54-4A90-FF85-DA78-F38D4CA0F4DE";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147481028 -2147480989 -2147480990 -2147480991 -2147480992 -2147480993 
		-2147480994 -2147480995 -2147480996 -2147480997 -2147480998 -2147480999 -2147481000 -2147481001 -2147481002 -2147481003 -2147481004 -2147481005 
		-2147481006 -2147481007 -2147481008 -2147481009 -2147481010 -2147481011 -2147481012 -2147481013 -2147481014 -2147481015 -2147481016 -2147481017 
		-2147481018 -2147481019 -2147481020 -2147481021 -2147481022 -2147481023 -2147481024 -2147481025 -2147481026 -2147481027 -2147481028;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "E2F83397-4A93-F8A2-134E-79B005886428";
	setAttr ".ics" -type "componentList" 361 "f[280]" "f[283]" "f[286]" "f[289]" "f[291]" "f[294]" "f[297]" "f[360:379]" "f[382]" "f[385]" "f[388]" "f[390]" "f[393]" "f[396]" "f[399:440]" "f[443]" "f[446]" "f[449]" "f[451]" "f[454]" "f[457]" "f[462]" "f[465]" "f[468]" "f[470]" "f[473]" "f[476]" "f[479:559]" "f[562]" "f[565]" "f[568]" "f[570]" "f[573]" "f[576]" "f[579:580]" "f[583]" "f[586]" "f[589]" "f[591]" "f[594]" "f[597]" "f[602]" "f[605]" "f[608]" "f[610]" "f[613]" "f[616]" "f[619:620]" "f[623]" "f[626]" "f[629]" "f[631]" "f[634]" "f[637]" "f[670:684]" "f[702:708]" "f[734:740]" "f[766:772]" "f[798:812]" "f[830:836]" "f[862:868]" "f[894:908]" "f[926:932]" "f[958:964]" "f[990:1004]" "f[1022:1028]" "f[1054:1068]" "f[1086:1092]" "f[1118:1124]" "f[1150:1164]" "f[1182:1188]" "f[1214:1220]" "f[1246:1260]" "f[1278:1284]" "f[1300]" "f[1303]" "f[1306]" "f[1309]" "f[1312]" "f[1315]" "f[1318]" "f[1321:1322]" "f[1325]" "f[1328]" "f[1331]" "f[1334]" "f[1337]" "f[1340]" "f[1343]" "f[1346]" "f[1349]" "f[1352]" "f[1355]" "f[1358]" "f[1361:1362]" "f[1365]" "f[1368]" "f[1371]" "f[1374]" "f[1377]" "f[1380]" "f[1383]" "f[1386]" "f[1389]" "f[1392]" "f[1395]" "f[1398]" "f[1401:1402]" "f[1405]" "f[1408]" "f[1411]" "f[1414]" "f[1417]" "f[1420]" "f[1423]" "f[1426]" "f[1429]" "f[1432]" "f[1435]" "f[1438]" "f[1441:1442]" "f[1445]" "f[1448]" "f[1451]" "f[1454]" "f[1457]" "f[1460]" "f[1463]" "f[1466]" "f[1469]" "f[1472]" "f[1475]" "f[1478]" "f[1481:1482]" "f[1485]" "f[1488]" "f[1491]" "f[1494]" "f[1497]" "f[1500]" "f[1503]" "f[1506]" "f[1509]" "f[1512]" "f[1515]" "f[1518]" "f[1521:1522]" "f[1525]" "f[1528]" "f[1531]" "f[1534]" "f[1537]" "f[1540]" "f[1543]" "f[1546]" "f[1549]" "f[1552]" "f[1555]" "f[1558]" "f[1561:1562]" "f[1565]" "f[1568]" "f[1571]" "f[1574]" "f[1577]" "f[1580]" "f[1583]" "f[1586]" "f[1589]" "f[1592]" "f[1595]" "f[1598]" "f[1601:1602]" "f[1605]" "f[1608]" "f[1611]" "f[1614]" "f[1617]" "f[1620:1980]" "f[1983]" "f[1986]" "f[1989]" "f[1992]" "f[1995]" "f[1998]" "f[2001:2002]" "f[2005]" "f[2008]" "f[2011]" "f[2014]" "f[2017]" "f[2020:2060]" "f[2063]" "f[2066]" "f[2069]" "f[2072]" "f[2075]" "f[2078]" "f[2081:2082]" "f[2085]" "f[2088]" "f[2091]" "f[2094]" "f[2097]" "f[2100:2140]" "f[2143]" "f[2146]" "f[2149]" "f[2152]" "f[2155]" "f[2158]" "f[2161:2162]" "f[2165]" "f[2168]" "f[2171]" "f[2174]" "f[2177]" "f[2180:2220]" "f[2223]" "f[2226]" "f[2229]" "f[2232]" "f[2235]" "f[2238]" "f[2241:2242]" "f[2245]" "f[2248]" "f[2251]" "f[2254]" "f[2257]" "f[2260:2300]" "f[2303]" "f[2306]" "f[2309]" "f[2312]" "f[2315]" "f[2318]" "f[2321:2322]" "f[2325]" "f[2328]" "f[2331]" "f[2334]" "f[2337]" "f[2340:2380]" "f[2383]" "f[2386]" "f[2389]" "f[2392]" "f[2395]" "f[2398]" "f[2401:2402]" "f[2405]" "f[2408]" "f[2411]" "f[2414]" "f[2417]" "f[2420:2460]" "f[2463]" "f[2466]" "f[2469]" "f[2472]" "f[2475]" "f[2478]" "f[2481:2482]" "f[2485]" "f[2488]" "f[2491]" "f[2494]" "f[2497]" "f[2500:2579]" "f[2582]" "f[2585]" "f[2588]" "f[2591]" "f[2594]" "f[2597:2598]" "f[2601]" "f[2604]" "f[2607]" "f[2610]" "f[2613]" "f[2616]" "f[2619:2659]" "f[2662]" "f[2665]" "f[2668]" "f[2671]" "f[2674]" "f[2677:2678]" "f[2681]" "f[2684]" "f[2687]" "f[2690]" "f[2693]" "f[2696]" "f[2699:2739]" "f[2742]" "f[2745]" "f[2748]" "f[2751]" "f[2754]" "f[2757:2758]" "f[2761]" "f[2764]" "f[2767]" "f[2770]" "f[2773]" "f[2776]" "f[2779:2819]" "f[2822]" "f[2825]" "f[2828]" "f[2831]" "f[2834]" "f[2837:2838]" "f[2841]" "f[2844]" "f[2847]" "f[2850]" "f[2853]" "f[2856]" "f[2859:2899]" "f[2902]" "f[2905]" "f[2908]" "f[2911]" "f[2914]" "f[2917:2918]" "f[2921]" "f[2924]" "f[2927]" "f[2930]" "f[2933]" "f[2936]" "f[2939:2979]" "f[2982]" "f[2985]" "f[2988]" "f[2991]" "f[2994]" "f[2997:2998]" "f[3001]" "f[3004]" "f[3007]" "f[3010]" "f[3013]" "f[3016]" "f[3019:3059]" "f[3062]" "f[3065]" "f[3068]" "f[3071]" "f[3074]" "f[3077:3078]" "f[3081]" "f[3084]" "f[3087]" "f[3090]" "f[3093]" "f[3096]" "f[3099]";
	setAttr ".ix" -type "matrix" 3.4786988528013219e-016 1.5666666857210205 0 0 -1.7555555800026554 3.8981164518562382e-016 0 0
		 0 0 1.5669999999999999 0 -6.0435547835823202 4.7605170331396494 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.62296456 4.7605171 4.670024e-008 ;
	setAttr ".rs" 59218;
	setAttr ".lt" -type "double3" -5.5743915885163309e-016 1.231653667943533e-016 -0.069068718412985952 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4936998886777402 3.4886719868864113 -1.2719458340406418 ;
	setAttr ".cbx" -type "double3" 3.7396290015052047 6.0323623595347167 1.27194592744112 ;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "7ADD3341-4A57-FA7C-49BF-2089E6E9E24B";
	setAttr ".ics" -type "componentList" 21 "e[680:699]" "e[1073]" "e[1124]" "e[1181]" "e[1232]" "e[1281]" "e[1338]" "e[1389]" "e[1438]" "e[1495]" "e[1546]" "e[1595]" "e[1646]" "e[1695]" "e[1752]" "e[1803]" "e[1852]" "e[1909]" "e[1960]" "e[2009]" "e[2066]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "D5BD000C-4BC7-EBE3-5E87-B79DCF06BD32";
	setAttr ".uopa" yes;
	setAttr -s 280 ".tk";
	setAttr ".tk[100]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[101]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[102]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[103]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[104]" -type "float3" -6.4034966e-016 0.15663697 0 ;
	setAttr ".tk[105]" -type "float3" -5.5511151e-016 0.15663697 0 ;
	setAttr ".tk[106]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[107]" -type "float3" -5.5511151e-016 0.15663697 0 ;
	setAttr ".tk[108]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[109]" -type "float3" -5.5511151e-016 0.15663697 0 ;
	setAttr ".tk[110]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[111]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[112]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[113]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[114]" -type "float3" -6.4034966e-016 0.15663697 0 ;
	setAttr ".tk[115]" -type "float3" -5.5511151e-016 0.15663697 0 ;
	setAttr ".tk[116]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[117]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[118]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[119]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[241]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[242]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[243]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[244]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[245]" -type "float3" -6.4035098e-016 0.44360352 0 ;
	setAttr ".tk[246]" -type "float3" -5.5511151e-016 0.44360352 0 ;
	setAttr ".tk[247]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[248]" -type "float3" -5.5511151e-016 0.44360352 0 ;
	setAttr ".tk[249]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[250]" -type "float3" -5.5511151e-016 0.44360352 0 ;
	setAttr ".tk[251]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[252]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[253]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[254]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[255]" -type "float3" -6.4035098e-016 0.44360352 0 ;
	setAttr ".tk[256]" -type "float3" -5.5511151e-016 0.44360352 0 ;
	setAttr ".tk[257]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[258]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[259]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[260]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[261]" -type "float3" -6.1062266e-016 0.48731244 0 ;
	setAttr ".tk[262]" -type "float3" -6.1062266e-016 0.48731184 0 ;
	setAttr ".tk[263]" -type "float3" -6.1062266e-016 0.48731118 0 ;
	setAttr ".tk[264]" -type "float3" -5.8286709e-016 0.48731053 0 ;
	setAttr ".tk[265]" -type "float3" -6.4035098e-016 0.48731053 0 ;
	setAttr ".tk[266]" -type "float3" -5.8286709e-016 0.48731095 0 ;
	setAttr ".tk[267]" -type "float3" -6.1062266e-016 0.48731118 0 ;
	setAttr ".tk[268]" -type "float3" -6.1062266e-016 0.48731208 0 ;
	setAttr ".tk[269]" -type "float3" -6.1062266e-016 0.48731244 0 ;
	setAttr ".tk[270]" -type "float3" -6.1062266e-016 0.48731303 0 ;
	setAttr ".tk[271]" -type "float3" -6.1062266e-016 0.48731244 0 ;
	setAttr ".tk[272]" -type "float3" -6.1062266e-016 0.48731184 0 ;
	setAttr ".tk[273]" -type "float3" -6.1062266e-016 0.48731118 0 ;
	setAttr ".tk[274]" -type "float3" -5.8286709e-016 0.48731053 0 ;
	setAttr ".tk[275]" -type "float3" -6.4035098e-016 0.48731053 0 ;
	setAttr ".tk[276]" -type "float3" -5.8286709e-016 0.48731095 0 ;
	setAttr ".tk[277]" -type "float3" -6.1062266e-016 0.48731118 0 ;
	setAttr ".tk[278]" -type "float3" -6.1062266e-016 0.4873119 0 ;
	setAttr ".tk[279]" -type "float3" -6.1062266e-016 0.48731244 0 ;
	setAttr ".tk[280]" -type "float3" -6.1062266e-016 0.48731267 0 ;
	setAttr ".tk[281]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[282]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[283]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[284]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[285]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[286]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[287]" -type "float3" -6.4034966e-016 0.1476813 0 ;
	setAttr ".tk[288]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[289]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[290]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[291]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[292]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[293]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[294]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[295]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[296]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[297]" -type "float3" -6.4034966e-016 0.1476813 0 ;
	setAttr ".tk[298]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[299]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[300]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[301]" -type "float3" -5.5511151e-016 0.14853549 0 ;
	setAttr ".tk[302]" -type "float3" -5.5511151e-016 0.14853704 0 ;
	setAttr ".tk[303]" -type "float3" -5.5511151e-016 0.15749274 0 ;
	setAttr ".tk[304]" -type "float3" -5.5511151e-016 0.15749116 0 ;
	setAttr ".tk[305]" -type "float3" -5.5511151e-016 0.1485337 0 ;
	setAttr ".tk[306]" -type "float3" -5.5511151e-016 0.15748911 0 ;
	setAttr ".tk[307]" -type "float3" -6.1062266e-016 0.14853215 0 ;
	setAttr ".tk[308]" -type "float3" -6.1062266e-016 0.15748762 0 ;
	setAttr ".tk[309]" -type "float3" -6.4034966e-016 0.14853147 0 ;
	setAttr ".tk[310]" -type "float3" -6.4034966e-016 0.15748726 0 ;
	setAttr ".tk[311]" -type "float3" -6.1062266e-016 0.14853215 0 ;
	setAttr ".tk[312]" -type "float3" -6.1062266e-016 0.15748776 0 ;
	setAttr ".tk[313]" -type "float3" -5.5511151e-016 0.1485337 0 ;
	setAttr ".tk[314]" -type "float3" -5.5511151e-016 0.15748911 0 ;
	setAttr ".tk[315]" -type "float3" -5.5511151e-016 0.14853549 0 ;
	setAttr ".tk[316]" -type "float3" -5.5511151e-016 0.1574914 0 ;
	setAttr ".tk[317]" -type "float3" -5.5511151e-016 0.14853704 0 ;
	setAttr ".tk[318]" -type "float3" -5.5511151e-016 0.15749274 0 ;
	setAttr ".tk[319]" -type "float3" -5.5511151e-016 0.14853773 0 ;
	setAttr ".tk[320]" -type "float3" -5.5511151e-016 0.15749337 0 ;
	setAttr ".tk[321]" -type "float3" -5.5511151e-016 0.14853704 0 ;
	setAttr ".tk[322]" -type "float3" -5.5511151e-016 0.1574925 0 ;
	setAttr ".tk[323]" -type "float3" -5.5511151e-016 0.14853549 0 ;
	setAttr ".tk[324]" -type "float3" -5.5511151e-016 0.15749116 0 ;
	setAttr ".tk[325]" -type "float3" -5.5511151e-016 0.1485337 0 ;
	setAttr ".tk[326]" -type "float3" -5.5511151e-016 0.15748911 0 ;
	setAttr ".tk[327]" -type "float3" -6.1062266e-016 0.14853215 0 ;
	setAttr ".tk[328]" -type "float3" -6.1062266e-016 0.15748762 0 ;
	setAttr ".tk[329]" -type "float3" -6.4034976e-016 0.14853147 0 ;
	setAttr ".tk[330]" -type "float3" -6.4034976e-016 0.15748726 0 ;
	setAttr ".tk[331]" -type "float3" -6.1062266e-016 0.14853215 0 ;
	setAttr ".tk[332]" -type "float3" -6.1062266e-016 0.15748776 0 ;
	setAttr ".tk[333]" -type "float3" -5.5511151e-016 0.1485337 0 ;
	setAttr ".tk[334]" -type "float3" -5.5511151e-016 0.15748911 0 ;
	setAttr ".tk[335]" -type "float3" -5.5511151e-016 0.14853549 0 ;
	setAttr ".tk[336]" -type "float3" -5.5511151e-016 0.15749116 0 ;
	setAttr ".tk[337]" -type "float3" -5.5511151e-016 0.14853704 0 ;
	setAttr ".tk[338]" -type "float3" -5.5511151e-016 0.15749274 0 ;
	setAttr ".tk[339]" -type "float3" -5.5511151e-016 0.14853773 0 ;
	setAttr ".tk[340]" -type "float3" -5.5511151e-016 0.15749319 0 ;
	setAttr ".tk[341]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[342]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[343]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[344]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[345]" -type "float3" -6.4034966e-016 0.10290228 0 ;
	setAttr ".tk[346]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[347]" -type "float3" -5.5511162e-016 0.10290228 0 ;
	setAttr ".tk[348]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[349]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[350]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[351]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[352]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[353]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[354]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[355]" -type "float3" -6.4034966e-016 0.10290228 0 ;
	setAttr ".tk[356]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[357]" -type "float3" -5.5511162e-016 0.10290228 0 ;
	setAttr ".tk[358]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[359]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[360]" -type "float3" -5.5511151e-016 0.10290228 0 ;
	setAttr ".tk[673]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[674]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[675]" -type "float3" -5.5511151e-016 0.14853737 0 ;
	setAttr ".tk[676]" -type "float3" -5.5511151e-016 0.15749292 0 ;
	setAttr ".tk[677]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[678]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[679]" -type "float3" -6.1062266e-016 0.48731261 0 ;
	setAttr ".tk[706]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[707]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[708]" -type "float3" -5.5511151e-016 0.14853737 0 ;
	setAttr ".tk[709]" -type "float3" -5.5511151e-016 0.15749292 0 ;
	setAttr ".tk[710]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[711]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[712]" -type "float3" -6.1062266e-016 0.48731261 0 ;
	setAttr ".tk[739]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[740]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[741]" -type "float3" -5.5511151e-016 0.14853632 0 ;
	setAttr ".tk[742]" -type "float3" -5.5511151e-016 0.157492 0 ;
	setAttr ".tk[743]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[744]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[745]" -type "float3" -6.1062266e-016 0.4873122 0 ;
	setAttr ".tk[772]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[773]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[774]" -type "float3" -5.5511151e-016 0.14853457 0 ;
	setAttr ".tk[775]" -type "float3" -5.5511151e-016 0.15749015 0 ;
	setAttr ".tk[776]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[777]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[778]" -type "float3" -6.1062266e-016 0.4873116 0 ;
	setAttr ".tk[805]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[806]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[807]" -type "float3" -5.5511151e-016 0.14853299 0 ;
	setAttr ".tk[808]" -type "float3" -5.5511151e-016 0.15748845 0 ;
	setAttr ".tk[809]" -type "float3" -5.5511151e-016 0.15663691 0 ;
	setAttr ".tk[810]" -type "float3" -5.5511151e-016 0.44360346 0 ;
	setAttr ".tk[811]" -type "float3" -5.8286709e-016 0.48731107 0 ;
	setAttr ".tk[838]" -type "float3" -6.1062266e-016 0.10290138 0 ;
	setAttr ".tk[839]" -type "float3" -6.1062266e-016 0.1476813 0 ;
	setAttr ".tk[840]" -type "float3" -5.8286709e-016 0.14853179 0 ;
	setAttr ".tk[841]" -type "float3" -5.8286709e-016 0.15748762 0 ;
	setAttr ".tk[842]" -type "float3" -6.1062266e-016 0.15663697 0 ;
	setAttr ".tk[843]" -type "float3" -6.1062266e-016 0.44360352 0 ;
	setAttr ".tk[844]" -type "float3" -6.1756156e-016 0.48731077 0 ;
	setAttr ".tk[871]" -type "float3" -6.1062266e-016 0.10290138 0 ;
	setAttr ".tk[872]" -type "float3" -6.1062266e-016 0.1476813 0 ;
	setAttr ".tk[873]" -type "float3" -5.8286709e-016 0.14853179 0 ;
	setAttr ".tk[874]" -type "float3" -5.8286709e-016 0.15748744 0 ;
	setAttr ".tk[875]" -type "float3" -6.1062266e-016 0.15663691 0 ;
	setAttr ".tk[876]" -type "float3" -6.1062266e-016 0.44360346 0 ;
	setAttr ".tk[877]" -type "float3" -6.1756156e-016 0.48731053 0 ;
	setAttr ".tk[904]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[905]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[906]" -type "float3" -5.5511151e-016 0.14853299 0 ;
	setAttr ".tk[907]" -type "float3" -5.5511151e-016 0.15748845 0 ;
	setAttr ".tk[908]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[909]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[910]" -type "float3" -5.8286709e-016 0.48731089 0 ;
	setAttr ".tk[937]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[938]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[939]" -type "float3" -5.5511151e-016 0.14853457 0 ;
	setAttr ".tk[940]" -type "float3" -5.5511151e-016 0.15749015 0 ;
	setAttr ".tk[941]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[942]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[943]" -type "float3" -6.1062266e-016 0.4873116 0 ;
	setAttr ".tk[970]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[971]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[972]" -type "float3" -5.5511151e-016 0.14853632 0 ;
	setAttr ".tk[973]" -type "float3" -5.5511151e-016 0.15749185 0 ;
	setAttr ".tk[974]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[975]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[976]" -type "float3" -6.1062266e-016 0.4873122 0 ;
	setAttr ".tk[1003]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1004]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1005]" -type "float3" -5.5511151e-016 0.14853737 0 ;
	setAttr ".tk[1006]" -type "float3" -5.5511151e-016 0.15749292 0 ;
	setAttr ".tk[1007]" -type "float3" -5.5511151e-016 0.15663691 0 ;
	setAttr ".tk[1008]" -type "float3" -5.5511151e-016 0.44360334 0 ;
	setAttr ".tk[1009]" -type "float3" -6.1062266e-016 0.48731267 0 ;
	setAttr ".tk[1036]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1037]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1038]" -type "float3" -5.5511151e-016 0.14853737 0 ;
	setAttr ".tk[1039]" -type "float3" -5.5511151e-016 0.15749301 0 ;
	setAttr ".tk[1040]" -type "float3" -5.5511151e-016 0.15663691 0 ;
	setAttr ".tk[1041]" -type "float3" -5.5511151e-016 0.44360334 0 ;
	setAttr ".tk[1042]" -type "float3" -6.1062266e-016 0.48731267 0 ;
	setAttr ".tk[1069]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1070]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1071]" -type "float3" -5.5511151e-016 0.14853632 0 ;
	setAttr ".tk[1072]" -type "float3" -5.5511151e-016 0.15749209 0 ;
	setAttr ".tk[1073]" -type "float3" -5.5511151e-016 0.15663691 0 ;
	setAttr ".tk[1074]" -type "float3" -5.5511151e-016 0.44360346 0 ;
	setAttr ".tk[1075]" -type "float3" -6.1062266e-016 0.48731244 0 ;
	setAttr ".tk[1102]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1103]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1104]" -type "float3" -5.5511151e-016 0.14853457 0 ;
	setAttr ".tk[1105]" -type "float3" -5.5511151e-016 0.15749024 0 ;
	setAttr ".tk[1106]" -type "float3" -5.5511151e-016 0.15663691 0 ;
	setAttr ".tk[1107]" -type "float3" -5.5511151e-016 0.44360346 0 ;
	setAttr ".tk[1108]" -type "float3" -6.1062266e-016 0.48731172 0 ;
	setAttr ".tk[1135]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1136]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1137]" -type "float3" -5.5511151e-016 0.14853299 0 ;
	setAttr ".tk[1138]" -type "float3" -5.5511151e-016 0.15748845 0 ;
	setAttr ".tk[1139]" -type "float3" -5.5511151e-016 0.15663691 0 ;
	setAttr ".tk[1140]" -type "float3" -5.5511151e-016 0.44360346 0 ;
	setAttr ".tk[1141]" -type "float3" -5.8286709e-016 0.48731107 0 ;
	setAttr ".tk[1168]" -type "float3" -6.1062266e-016 0.10290138 0 ;
	setAttr ".tk[1169]" -type "float3" -6.1062266e-016 0.1476813 0 ;
	setAttr ".tk[1170]" -type "float3" -5.8286709e-016 0.14853179 0 ;
	setAttr ".tk[1171]" -type "float3" -5.8286709e-016 0.15748762 0 ;
	setAttr ".tk[1172]" -type "float3" -6.1062266e-016 0.15663697 0 ;
	setAttr ".tk[1173]" -type "float3" -6.1062266e-016 0.44360352 0 ;
	setAttr ".tk[1174]" -type "float3" -6.1756156e-016 0.48731077 0 ;
	setAttr ".tk[1201]" -type "float3" -6.1062266e-016 0.10290138 0 ;
	setAttr ".tk[1202]" -type "float3" -6.1062266e-016 0.1476813 0 ;
	setAttr ".tk[1203]" -type "float3" -5.8286709e-016 0.14853179 0 ;
	setAttr ".tk[1204]" -type "float3" -5.8286709e-016 0.15748744 0 ;
	setAttr ".tk[1205]" -type "float3" -6.1062266e-016 0.15663691 0 ;
	setAttr ".tk[1206]" -type "float3" -6.1062266e-016 0.44360346 0 ;
	setAttr ".tk[1207]" -type "float3" -6.1756156e-016 0.48731053 0 ;
	setAttr ".tk[1234]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1235]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1236]" -type "float3" -5.5511151e-016 0.14853299 0 ;
	setAttr ".tk[1237]" -type "float3" -5.5511151e-016 0.15748845 0 ;
	setAttr ".tk[1238]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[1239]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[1240]" -type "float3" -5.8286709e-016 0.48731089 0 ;
	setAttr ".tk[1267]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1268]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1269]" -type "float3" -5.5511151e-016 0.14853457 0 ;
	setAttr ".tk[1270]" -type "float3" -5.5511151e-016 0.15749015 0 ;
	setAttr ".tk[1271]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[1272]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[1273]" -type "float3" -6.1062266e-016 0.4873116 0 ;
	setAttr ".tk[1300]" -type "float3" -5.5511151e-016 0.10290138 0 ;
	setAttr ".tk[1301]" -type "float3" -5.5511151e-016 0.1476813 0 ;
	setAttr ".tk[1302]" -type "float3" -5.5511151e-016 0.14853632 0 ;
	setAttr ".tk[1303]" -type "float3" -5.5511151e-016 0.157492 0 ;
	setAttr ".tk[1304]" -type "float3" -5.5511151e-016 0.15663682 0 ;
	setAttr ".tk[1305]" -type "float3" -5.5511151e-016 0.4436031 0 ;
	setAttr ".tk[1306]" -type "float3" -6.1062266e-016 0.4873122 0 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "188B881B-43FB-3B67-57A1-138698AE422E";
	setAttr ".uopa" yes;
	setAttr -s 283 ".tk";
	setAttr ".tk[100]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[101]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[102]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[103]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[104]" -type "float3" -1.2251042e-015 0.14545958 0 ;
	setAttr ".tk[105]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[106]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[107]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[108]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[109]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[110]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[111]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[112]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[113]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[114]" -type "float3" -1.2251042e-015 0.14545958 0 ;
	setAttr ".tk[115]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[116]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[117]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[118]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[119]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[241]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[242]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[243]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[244]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[245]" -type "float3" -1.2251027e-015 0.65744638 0 ;
	setAttr ".tk[246]" -type "float3" -1.110223e-015 0.65744638 0 ;
	setAttr ".tk[247]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[248]" -type "float3" -1.110223e-015 0.65744638 0 ;
	setAttr ".tk[249]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[250]" -type "float3" -1.110223e-015 0.65744638 0 ;
	setAttr ".tk[251]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[252]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[253]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[254]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[255]" -type "float3" -1.2251027e-015 0.65744638 0 ;
	setAttr ".tk[256]" -type "float3" -1.110223e-015 0.65744638 0 ;
	setAttr ".tk[257]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[258]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[259]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[260]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[261]" -type "float3" -1.1934898e-015 0.73542917 0 ;
	setAttr ".tk[262]" -type "float3" -1.1934898e-015 0.73542792 0 ;
	setAttr ".tk[263]" -type "float3" -1.1934898e-015 0.73542655 0 ;
	setAttr ".tk[264]" -type "float3" -1.1379786e-015 0.73542571 0 ;
	setAttr ".tk[265]" -type "float3" -1.2251027e-015 0.73542571 0 ;
	setAttr ".tk[266]" -type "float3" -1.1379786e-015 0.73542637 0 ;
	setAttr ".tk[267]" -type "float3" -1.1934898e-015 0.73542655 0 ;
	setAttr ".tk[268]" -type "float3" -1.1934898e-015 0.73542839 0 ;
	setAttr ".tk[269]" -type "float3" -1.1934898e-015 0.73542917 0 ;
	setAttr ".tk[270]" -type "float3" -1.1934898e-015 0.73542988 0 ;
	setAttr ".tk[271]" -type "float3" -1.1934898e-015 0.73542917 0 ;
	setAttr ".tk[272]" -type "float3" -1.1934898e-015 0.73542792 0 ;
	setAttr ".tk[273]" -type "float3" -1.1934898e-015 0.73542655 0 ;
	setAttr ".tk[274]" -type "float3" -1.1379786e-015 0.73542571 0 ;
	setAttr ".tk[275]" -type "float3" -1.2251027e-015 0.73542571 0 ;
	setAttr ".tk[276]" -type "float3" -1.1379786e-015 0.73542637 0 ;
	setAttr ".tk[277]" -type "float3" -1.1934898e-015 0.73542655 0 ;
	setAttr ".tk[278]" -type "float3" -1.1934898e-015 0.73542815 0 ;
	setAttr ".tk[279]" -type "float3" -1.1934898e-015 0.73542917 0 ;
	setAttr ".tk[280]" -type "float3" -1.1934898e-015 0.73542929 0 ;
	setAttr ".tk[281]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[282]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[283]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[284]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[285]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[286]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[287]" -type "float3" -1.2251042e-015 0.12948148 0 ;
	setAttr ".tk[288]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[289]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[290]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[291]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[292]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[293]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[294]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[295]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[296]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[297]" -type "float3" -1.2251042e-015 0.12948148 0 ;
	setAttr ".tk[298]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[299]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[300]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[301]" -type "float3" -1.110223e-015 0.13100539 0 ;
	setAttr ".tk[302]" -type "float3" -1.110223e-015 0.13100816 0 ;
	setAttr ".tk[303]" -type "float3" -1.110223e-015 0.14698654 0 ;
	setAttr ".tk[304]" -type "float3" -1.110223e-015 0.14698347 0 ;
	setAttr ".tk[305]" -type "float3" -1.110223e-015 0.13100229 0 ;
	setAttr ".tk[306]" -type "float3" -1.110223e-015 0.14697984 0 ;
	setAttr ".tk[307]" -type "float3" -1.1934898e-015 0.13099949 0 ;
	setAttr ".tk[308]" -type "float3" -1.1934898e-015 0.14697725 0 ;
	setAttr ".tk[309]" -type "float3" -1.2251042e-015 0.13099824 0 ;
	setAttr ".tk[310]" -type "float3" -1.2251042e-015 0.14697659 0 ;
	setAttr ".tk[311]" -type "float3" -1.1934898e-015 0.13099949 0 ;
	setAttr ".tk[312]" -type "float3" -1.1934898e-015 0.14697742 0 ;
	setAttr ".tk[313]" -type "float3" -1.110223e-015 0.13100229 0 ;
	setAttr ".tk[314]" -type "float3" -1.110223e-015 0.14697984 0 ;
	setAttr ".tk[315]" -type "float3" -1.110223e-015 0.13100539 0 ;
	setAttr ".tk[316]" -type "float3" -1.110223e-015 0.14698401 0 ;
	setAttr ".tk[317]" -type "float3" -1.110223e-015 0.13100816 0 ;
	setAttr ".tk[318]" -type "float3" -1.110223e-015 0.14698654 0 ;
	setAttr ".tk[319]" -type "float3" -1.110223e-015 0.13100938 0 ;
	setAttr ".tk[320]" -type "float3" -1.110223e-015 0.14698738 0 ;
	setAttr ".tk[321]" -type "float3" -1.110223e-015 0.13100816 0 ;
	setAttr ".tk[322]" -type "float3" -1.110223e-015 0.14698595 0 ;
	setAttr ".tk[323]" -type "float3" -1.110223e-015 0.13100539 0 ;
	setAttr ".tk[324]" -type "float3" -1.110223e-015 0.14698347 0 ;
	setAttr ".tk[325]" -type "float3" -1.110223e-015 0.13100229 0 ;
	setAttr ".tk[326]" -type "float3" -1.110223e-015 0.14697984 0 ;
	setAttr ".tk[327]" -type "float3" -1.1934898e-015 0.13099949 0 ;
	setAttr ".tk[328]" -type "float3" -1.1934898e-015 0.14697725 0 ;
	setAttr ".tk[329]" -type "float3" -1.2251042e-015 0.13099824 0 ;
	setAttr ".tk[330]" -type "float3" -1.2251042e-015 0.14697659 0 ;
	setAttr ".tk[331]" -type "float3" -1.1934898e-015 0.13099949 0 ;
	setAttr ".tk[332]" -type "float3" -1.1934898e-015 0.14697742 0 ;
	setAttr ".tk[333]" -type "float3" -1.110223e-015 0.13100229 0 ;
	setAttr ".tk[334]" -type "float3" -1.110223e-015 0.14697984 0 ;
	setAttr ".tk[335]" -type "float3" -1.110223e-015 0.13100539 0 ;
	setAttr ".tk[336]" -type "float3" -1.110223e-015 0.14698347 0 ;
	setAttr ".tk[337]" -type "float3" -1.110223e-015 0.13100816 0 ;
	setAttr ".tk[338]" -type "float3" -1.110223e-015 0.14698654 0 ;
	setAttr ".tk[339]" -type "float3" -1.110223e-015 0.13100938 0 ;
	setAttr ".tk[340]" -type "float3" -1.110223e-015 0.14698717 0 ;
	setAttr ".tk[607]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[608]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[609]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[610]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[611]" -type "float3" -1.2251042e-015 -0.0018795645 0 ;
	setAttr ".tk[612]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[613]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[614]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[615]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[616]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[617]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[618]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[619]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[620]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[621]" -type "float3" -1.2251042e-015 -0.0018795645 0 ;
	setAttr ".tk[622]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[623]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[624]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[625]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[626]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[652]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[653]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[654]" -type "float3" -1.110223e-015 0.13100885 0 ;
	setAttr ".tk[655]" -type "float3" -1.110223e-015 0.14698663 0 ;
	setAttr ".tk[656]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[657]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[658]" -type "float3" -1.1934898e-015 0.73542917 0 ;
	setAttr ".tk[684]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[685]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[686]" -type "float3" -1.110223e-015 0.13100885 0 ;
	setAttr ".tk[687]" -type "float3" -1.110223e-015 0.14698663 0 ;
	setAttr ".tk[688]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[689]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[690]" -type "float3" -1.1934898e-015 0.73542917 0 ;
	setAttr ".tk[716]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[717]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[718]" -type "float3" -1.110223e-015 0.13100703 0 ;
	setAttr ".tk[719]" -type "float3" -1.110223e-015 0.14698502 0 ;
	setAttr ".tk[720]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[721]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[722]" -type "float3" -1.1934898e-015 0.73542857 0 ;
	setAttr ".tk[748]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[749]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[750]" -type "float3" -1.110223e-015 0.13100375 0 ;
	setAttr ".tk[751]" -type "float3" -1.110223e-015 0.14698172 0 ;
	setAttr ".tk[752]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[753]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[754]" -type "float3" -1.1934898e-015 0.7354272 0 ;
	setAttr ".tk[780]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[781]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[782]" -type "float3" -1.110223e-015 0.13100092 0 ;
	setAttr ".tk[783]" -type "float3" -1.110223e-015 0.14697874 0 ;
	setAttr ".tk[784]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[785]" -type "float3" -1.110223e-015 0.65744621 0 ;
	setAttr ".tk[786]" -type "float3" -1.1379786e-015 0.73542655 0 ;
	setAttr ".tk[812]" -type "float3" -1.1934898e-015 -0.0018795645 0 ;
	setAttr ".tk[813]" -type "float3" -1.1934898e-015 0.12948148 0 ;
	setAttr ".tk[814]" -type "float3" -1.1379786e-015 0.13099875 0 ;
	setAttr ".tk[815]" -type "float3" -1.1379786e-015 0.14697725 0 ;
	setAttr ".tk[816]" -type "float3" -1.1934898e-015 0.14545958 0 ;
	setAttr ".tk[817]" -type "float3" -1.1934898e-015 0.65744638 0 ;
	setAttr ".tk[818]" -type "float3" -1.2212453e-015 0.73542613 0 ;
	setAttr ".tk[844]" -type "float3" -1.1934898e-015 -0.0018795645 0 ;
	setAttr ".tk[845]" -type "float3" -1.1934898e-015 0.12948148 0 ;
	setAttr ".tk[846]" -type "float3" -1.1379786e-015 0.13099875 0 ;
	setAttr ".tk[847]" -type "float3" -1.1379786e-015 0.14697692 0 ;
	setAttr ".tk[848]" -type "float3" -1.1934898e-015 0.14545958 0 ;
	setAttr ".tk[849]" -type "float3" -1.1934898e-015 0.65744621 0 ;
	setAttr ".tk[850]" -type "float3" -1.2212453e-015 0.73542571 0 ;
	setAttr ".tk[876]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[877]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[878]" -type "float3" -1.110223e-015 0.13100092 0 ;
	setAttr ".tk[879]" -type "float3" -1.110223e-015 0.14697874 0 ;
	setAttr ".tk[880]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[881]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[882]" -type "float3" -1.1379786e-015 0.73542619 0 ;
	setAttr ".tk[908]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[909]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[910]" -type "float3" -1.110223e-015 0.13100375 0 ;
	setAttr ".tk[911]" -type "float3" -1.110223e-015 0.14698172 0 ;
	setAttr ".tk[912]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[913]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[914]" -type "float3" -1.1934898e-015 0.7354272 0 ;
	setAttr ".tk[940]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[941]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[942]" -type "float3" -1.110223e-015 0.13100703 0 ;
	setAttr ".tk[943]" -type "float3" -1.110223e-015 0.14698485 0 ;
	setAttr ".tk[944]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[945]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[946]" -type "float3" -1.1934898e-015 0.73542857 0 ;
	setAttr ".tk[972]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[973]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[974]" -type "float3" -1.110223e-015 0.13100885 0 ;
	setAttr ".tk[975]" -type "float3" -1.110223e-015 0.14698663 0 ;
	setAttr ".tk[976]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[977]" -type "float3" -1.110223e-015 0.65744603 0 ;
	setAttr ".tk[978]" -type "float3" -1.1934898e-015 0.73542929 0 ;
	setAttr ".tk[1004]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1005]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1006]" -type "float3" -1.110223e-015 0.13100885 0 ;
	setAttr ".tk[1007]" -type "float3" -1.110223e-015 0.14698684 0 ;
	setAttr ".tk[1008]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[1009]" -type "float3" -1.110223e-015 0.65744603 0 ;
	setAttr ".tk[1010]" -type "float3" -1.1934898e-015 0.73542929 0 ;
	setAttr ".tk[1036]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1037]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1038]" -type "float3" -1.110223e-015 0.13100703 0 ;
	setAttr ".tk[1039]" -type "float3" -1.110223e-015 0.1469852 0 ;
	setAttr ".tk[1040]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[1041]" -type "float3" -1.110223e-015 0.65744621 0 ;
	setAttr ".tk[1042]" -type "float3" -1.1934898e-015 0.73542899 0 ;
	setAttr ".tk[1068]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1069]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1070]" -type "float3" -1.110223e-015 0.13100375 0 ;
	setAttr ".tk[1071]" -type "float3" -1.110223e-015 0.14698187 0 ;
	setAttr ".tk[1072]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[1073]" -type "float3" -1.110223e-015 0.65744621 0 ;
	setAttr ".tk[1074]" -type "float3" -1.1934898e-015 0.73542774 0 ;
	setAttr ".tk[1100]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1101]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1102]" -type "float3" -1.110223e-015 0.13100092 0 ;
	setAttr ".tk[1103]" -type "float3" -1.110223e-015 0.14697874 0 ;
	setAttr ".tk[1104]" -type "float3" -1.110223e-015 0.14545958 0 ;
	setAttr ".tk[1105]" -type "float3" -1.110223e-015 0.65744621 0 ;
	setAttr ".tk[1106]" -type "float3" -1.1379786e-015 0.73542655 0 ;
	setAttr ".tk[1132]" -type "float3" -1.1934898e-015 -0.0018795645 0 ;
	setAttr ".tk[1133]" -type "float3" -1.1934898e-015 0.12948148 0 ;
	setAttr ".tk[1134]" -type "float3" -1.1379786e-015 0.13099875 0 ;
	setAttr ".tk[1135]" -type "float3" -1.1379786e-015 0.14697725 0 ;
	setAttr ".tk[1136]" -type "float3" -1.1934898e-015 0.14545958 0 ;
	setAttr ".tk[1137]" -type "float3" -1.1934898e-015 0.65744638 0 ;
	setAttr ".tk[1138]" -type "float3" -1.2212453e-015 0.73542613 0 ;
	setAttr ".tk[1164]" -type "float3" -1.1934898e-015 -0.0018795645 0 ;
	setAttr ".tk[1165]" -type "float3" -1.1934898e-015 0.12948148 0 ;
	setAttr ".tk[1166]" -type "float3" -1.1379786e-015 0.13099875 0 ;
	setAttr ".tk[1167]" -type "float3" -1.1379786e-015 0.14697692 0 ;
	setAttr ".tk[1168]" -type "float3" -1.1934898e-015 0.14545958 0 ;
	setAttr ".tk[1169]" -type "float3" -1.1934898e-015 0.65744621 0 ;
	setAttr ".tk[1170]" -type "float3" -1.2212453e-015 0.73542571 0 ;
	setAttr ".tk[1196]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1197]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1198]" -type "float3" -1.110223e-015 0.13100092 0 ;
	setAttr ".tk[1199]" -type "float3" -1.110223e-015 0.14697874 0 ;
	setAttr ".tk[1200]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[1201]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[1202]" -type "float3" -1.1379786e-015 0.73542619 0 ;
	setAttr ".tk[1228]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1229]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1230]" -type "float3" -1.110223e-015 0.13100375 0 ;
	setAttr ".tk[1231]" -type "float3" -1.110223e-015 0.14698172 0 ;
	setAttr ".tk[1232]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[1233]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[1234]" -type "float3" -1.1934898e-015 0.7354272 0 ;
	setAttr ".tk[1260]" -type "float3" -1.110223e-015 -0.0018795645 0 ;
	setAttr ".tk[1261]" -type "float3" -1.110223e-015 0.12948148 0 ;
	setAttr ".tk[1262]" -type "float3" -1.110223e-015 0.13100703 0 ;
	setAttr ".tk[1263]" -type "float3" -1.110223e-015 0.14698502 0 ;
	setAttr ".tk[1264]" -type "float3" -1.110223e-015 0.14545946 0 ;
	setAttr ".tk[1265]" -type "float3" -1.110223e-015 0.65744567 0 ;
	setAttr ".tk[1266]" -type "float3" -1.1934898e-015 0.73542857 0 ;
createNode polySplit -n "polySplit108";
	rename -uid "77308A26-4ABC-2D3C-2697-8FA85D34AC1C";
	setAttr -s 41 ".e[0:40]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 41 ".d[0:40]"  -2147483188 -2147482539 -2147483151 -2147482588 -2147483153 -2147482484 
		-2147483155 -2147482435 -2147483157 -2147482388 -2147483159 -2147482333 -2147483161 -2147482284 -2147483163 -2147482237 -2147483165 -2147482182 
		-2147483167 -2147482133 -2147483169 -2147482086 -2147483171 -2147482037 -2147483173 -2147481990 -2147483175 -2147481935 -2147483177 -2147481886 
		-2147483179 -2147481839 -2147483181 -2147481784 -2147483183 -2147481735 -2147483185 -2147481688 -2147483187 -2147481633 -2147483188;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
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
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":perspShape.msg" "imagePlaneShape1.ltc";
connectAttr "polySplit108.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "deleteComponent1.ig";
connectAttr "polyTweak1.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent1.og" "polyTweak1.ip";
connectAttr "polyExtrudeEdge1.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit22.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyExtrudeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge4.out" "polySplit23.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplit23.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace2.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polySplit35.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polySplit40.ip";
connectAttr "polySplit40.out" "polySplit41.ip";
connectAttr "polySplit41.out" "polySplit42.ip";
connectAttr "polySplit42.out" "polySplit43.ip";
connectAttr "polySplit43.out" "polySplit44.ip";
connectAttr "polySplit44.out" "polySplit45.ip";
connectAttr "polySplit45.out" "polySplit46.ip";
connectAttr "polySplit46.out" "polySplit47.ip";
connectAttr "polySplit47.out" "polySplit48.ip";
connectAttr "polySplit48.out" "polySplit49.ip";
connectAttr "polySplit49.out" "polySplit50.ip";
connectAttr "polySplit50.out" "polySplit51.ip";
connectAttr "polySplit51.out" "polySplit52.ip";
connectAttr "polySplit52.out" "polySplit53.ip";
connectAttr "polySplit53.out" "polySplit54.ip";
connectAttr "polySplit54.out" "polySplit55.ip";
connectAttr "polySplit55.out" "polySplit56.ip";
connectAttr "polySplit56.out" "polySplit57.ip";
connectAttr "polySplit57.out" "polySplit58.ip";
connectAttr "polySplit58.out" "polySplit59.ip";
connectAttr "polySplit59.out" "polySplit60.ip";
connectAttr "polySplit60.out" "polySplit61.ip";
connectAttr "polySplit61.out" "polySplit62.ip";
connectAttr "polySplit62.out" "polySplit63.ip";
connectAttr "polySplit63.out" "polySplit64.ip";
connectAttr "polySplit64.out" "polySplit65.ip";
connectAttr "polySplit65.out" "polySplit66.ip";
connectAttr "polySplit66.out" "polySplit67.ip";
connectAttr "polySplit67.out" "polySplit68.ip";
connectAttr "polySplit68.out" "polySplit69.ip";
connectAttr "polySplit69.out" "polySplit70.ip";
connectAttr "polySplit70.out" "polySplit71.ip";
connectAttr "polySplit71.out" "polySplit72.ip";
connectAttr "polySplit72.out" "polySplit73.ip";
connectAttr "polySplit73.out" "polySplit74.ip";
connectAttr "polySplit74.out" "polySplit75.ip";
connectAttr "polySplit75.out" "polySplit76.ip";
connectAttr "polySplit76.out" "polySplit77.ip";
connectAttr "polySplit77.out" "polySplit78.ip";
connectAttr "polySplit78.out" "polySplit79.ip";
connectAttr "polySplit79.out" "polySplit80.ip";
connectAttr "polySplit80.out" "polySplit81.ip";
connectAttr "polySplit81.out" "polySplit82.ip";
connectAttr "polySplit82.out" "polySplit83.ip";
connectAttr "polySplit83.out" "polySplit84.ip";
connectAttr "polySplit84.out" "polySplit85.ip";
connectAttr "polySplit85.out" "polySplit86.ip";
connectAttr "polySplit86.out" "polySplit87.ip";
connectAttr "polySplit87.out" "polySplit88.ip";
connectAttr "polySplit88.out" "polySplit89.ip";
connectAttr "polySplit89.out" "polySplit90.ip";
connectAttr "polySplit90.out" "polySplit91.ip";
connectAttr "polySplit91.out" "polySplit92.ip";
connectAttr "polySplit92.out" "polySplit93.ip";
connectAttr "polySplit93.out" "polySplit94.ip";
connectAttr "polySplit94.out" "polySplit95.ip";
connectAttr "polySplit95.out" "polySplit96.ip";
connectAttr "polySplit96.out" "polySplit97.ip";
connectAttr "polySplit97.out" "polySplit98.ip";
connectAttr "polySplit98.out" "polySplit99.ip";
connectAttr "polySplit99.out" "polySplit100.ip";
connectAttr "polySplit100.out" "polySplit101.ip";
connectAttr "polySplit101.out" "polySplit102.ip";
connectAttr "polySplit102.out" "polySplit103.ip";
connectAttr "polySplit103.out" "polySplit104.ip";
connectAttr "polySplit104.out" "polySplit105.ip";
connectAttr "polySplit105.out" "polySplit106.ip";
connectAttr "polySplit106.out" "polySplit107.ip";
connectAttr "polySplit107.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak4.out" "polyDelEdge3.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyDelEdge3.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit108.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Flashlight.ma
