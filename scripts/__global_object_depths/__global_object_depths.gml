function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -999999; // objBattleController
	global.__objectDepths[1] = -1000001; // objBattleMsg
	global.__objectDepths[2] = 0; // objTurnMaster
	global.__objectDepths[3] = 0; // objStatusMaster
	global.__objectDepths[4] = 0; // objPassiveMaster
	global.__objectDepths[5] = 0; // objEnStatusMaster
	global.__objectDepths[6] = 0; // objBattleKiller
	global.__objectDepths[7] = -999999; // objTargetSelector
	global.__objectDepths[8] = -999999; // objPlayerSelector
	global.__objectDepths[9] = -1000001; // objSMAAAASH
	global.__objectDepths[10] = -1000000; // objHealthBar
	global.__objectDepths[11] = -1000001; // objHealthBarRed
	global.__objectDepths[12] = -1000; // objEnemyAilmentFade
	global.__objectDepths[13] = -1000; // objEnemyGeneralFade
	global.__objectDepths[14] = -10000001; // objMortalDamage
	global.__objectDepths[15] = -10000001; // objFadeToWhite
	global.__objectDepths[16] = 0; // objMiss
	global.__objectDepths[17] = 0; // objBattleBackground
	global.__objectDepths[18] = -1000; // objHitEffect
	global.__objectDepths[19] = -1000000; // objAilmentsBubble
	global.__objectDepths[20] = -1000001; // objSkillsMenu
	global.__objectDepths[21] = -1000001; // objBattleInv
	global.__objectDepths[22] = 0; // objGuard_p
	global.__objectDepths[23] = 0; // objInspect_p
	global.__objectDepths[24] = -2; // objCustomDamage
	global.__objectDepths[25] = -10000; // objItemLifeup
	global.__objectDepths[26] = -10000; // objItemLifeupAll
	global.__objectDepths[27] = -10000; // objItemPPUp
	global.__objectDepths[28] = -10000; // objItemPPUpAll
	global.__objectDepths[29] = -10000; // objItemHealing
	global.__objectDepths[30] = 0; // objAttack_p
	global.__objectDepths[31] = 0; // objCustomBashPlayer
	global.__objectDepths[32] = -2; // objDamage
	global.__objectDepths[33] = -2; // objDamageStrange
	global.__objectDepths[34] = -10000; // objPKFreeze
	global.__objectDepths[35] = -1000001; // objFreezeFx
	global.__objectDepths[36] = -10000; // objPKFire
	global.__objectDepths[37] = -1000001; // objFireFx
	global.__objectDepths[38] = -10000; // objPKThunder
	global.__objectDepths[39] = -1000001; // objThunderFx
	global.__objectDepths[40] = -10000; // objPKFlash
	global.__objectDepths[41] = -1000001; // objFlashFx
	global.__objectDepths[42] = -10000; // objBrainshock
	global.__objectDepths[43] = -1000001; // objBrainshockFx
	global.__objectDepths[44] = -10000; // objHypnosis
	global.__objectDepths[45] = -1000001; // objHypnosisFx
	global.__objectDepths[46] = -10000; // objParalysis
	global.__objectDepths[47] = -1000001; // objParalysisFx
	global.__objectDepths[48] = -10000; // objMagnet
	global.__objectDepths[49] = -1000001; // objMagnetFx
	global.__objectDepths[50] = -1000001; // objStatDown
	global.__objectDepths[51] = -1000001; // objStatUp
	global.__objectDepths[52] = -1000001; // objStatDownFx
	global.__objectDepths[53] = -10000; // objShield
	global.__objectDepths[54] = -1000001; // objShieldFx
	global.__objectDepths[55] = -10000; // objLifeup
	global.__objectDepths[56] = -10000; // objHealing
	global.__objectDepths[57] = -1000001; // objDemand
	global.__objectDepths[58] = 0; // objEnAttack
	global.__objectDepths[59] = 0; // objEnCustomBash
	global.__objectDepths[60] = -10000; // objEnFreeze
	global.__objectDepths[61] = 0; // objEnFreezeDamage
	global.__objectDepths[62] = -10000; // objEnFire
	global.__objectDepths[63] = 0; // objEnFireDamage
	global.__objectDepths[64] = -10000; // objEnThunder
	global.__objectDepths[65] = 0; // objEnThunderDamage
	global.__objectDepths[66] = -10000; // objEnFlash
	global.__objectDepths[67] = 0; // objEnFlashDamage
	global.__objectDepths[68] = -10000; // objEnBrainshock
	global.__objectDepths[69] = 0; // objEnBrainshockDamage
	global.__objectDepths[70] = -10000; // objEnHypnosis
	global.__objectDepths[71] = 0; // objEnHypnosisDamage
	global.__objectDepths[72] = -10000; // objEnParalysis
	global.__objectDepths[73] = 0; // objEnParalysisDamage
	global.__objectDepths[74] = -10000; // objEnMagnet
	global.__objectDepths[75] = 0; // objEnMagnetDamage
	global.__objectDepths[76] = -10000; // objEnStatDown
	global.__objectDepths[77] = -10000; // objEnStatUp
	global.__objectDepths[78] = 0; // objEnStatDownDamage
	global.__objectDepths[79] = 0; // objEnOffenseDefenseDown
	global.__objectDepths[80] = 0; // objEnStatUpDamage
	global.__objectDepths[81] = -10000; // objEnShield
	global.__objectDepths[82] = 0; // objEnShieldDamage
	global.__objectDepths[83] = -10000; // objEnLifeup
	global.__objectDepths[84] = -10000; // objEnHealing
	global.__objectDepths[85] = 0; // parLastAction
	global.__objectDepths[86] = -10000; // objExplodeOnDefeat
	global.__objectDepths[87] = 0; // objExplosionDamage
	global.__objectDepths[88] = -1000000; // objEnGuardSuperAttack
	global.__objectDepths[89] = 0; // objEnDisableCommand
	global.__objectDepths[90] = -10000; // objEnWakeUp
	global.__objectDepths[91] = -1000000; // objEnWakeUpDamage
	global.__objectDepths[92] = 0; // objCallForHelp
	global.__objectDepths[93] = -2; // objEnCustomDamage
	global.__objectDepths[94] = 0; // objEnMessage
	global.__objectDepths[95] = 0; // objEnGuard
	global.__objectDepths[96] = 0; // objVarDamage
	global.__objectDepths[97] = -1000001; // objEnStatDownGFX
	global.__objectDepths[98] = 0; // objAllyMsg
	global.__objectDepths[99] = 0; // objEnPar
	global.__objectDepths[100] = 0; // objEnTemplate
	global.__objectDepths[101] = 0; // objEnBasic
	global.__objectDepths[102] = 0; // objEnBasicTough
	global.__objectDepths[103] = 0; // objEnBasicTough2
	global.__objectDepths[104] = 0; // objEnBasicTough3
	global.__objectDepths[105] = 0; // objEnBoss
	global.__objectDepths[106] = 0; // objInBattleNPC
	global.__objectDepths[107] = 0; // objInBattleNpcTemplate
	global.__objectDepths[108] = -11110; // objBattleBgEditor
	global.__objectDepths[109] = -1410065407; // objDebug
	global.__objectDepths[110] = -10000020; // objPersistent
	global.__objectDepths[111] = -10000000; // objInGameMenu
	global.__objectDepths[112] = -10000000; // objMapDisplay
	global.__objectDepths[113] = -1; // objMenu
	global.__objectDepths[114] = -1; // objControls
	global.__objectDepths[115] = -999999999; // objPause
	global.__objectDepths[116] = -10000001; // obj_inv
	global.__objectDepths[117] = -10000001; // objStorage
	global.__objectDepths[118] = -10000001; // objEqp
	global.__objectDepths[119] = -10000002; // objInvUseMenu
	global.__objectDepths[120] = -10000001; // objStatsMenu
	global.__objectDepths[121] = -10000001; // objShop
	global.__objectDepths[122] = -10000001; // objATMDisplay
	global.__objectDepths[123] = -10000001; // objSkillsMenuOw
	global.__objectDepths[124] = 0; // objNaming
	global.__objectDepths[125] = 0; // objNewGame
	global.__objectDepths[126] = 0; // objFlavorSelector
	global.__objectDepths[127] = 0; // objFlavorSelectorOld
	global.__objectDepths[128] = 0; // objSplash
	global.__objectDepths[129] = 0; // objSoundTest
	global.__objectDepths[130] = 0; // parNpc
	global.__objectDepths[131] = 0; // parWall
	global.__objectDepths[132] = 0; // parFoe
	global.__objectDepths[133] = 0; // parDoor
	global.__objectDepths[134] = 0; // parDeactivator
	global.__objectDepths[135] = 0; // parCamera
	global.__objectDepths[136] = -10000000; // objOvermind
	global.__objectDepths[137] = -100000001; // objBattleSwirl
	global.__objectDepths[138] = -100000001; // objLevelUpper
	global.__objectDepths[139] = -1410065407; // objFadeOut
	global.__objectDepths[140] = -1410065407; // objFadeOutBattle
	global.__objectDepths[141] = 0; // objOwEnemyBlink
	global.__objectDepths[142] = -388626433; // objTextBox
	global.__objectDepths[143] = -388626433; // objQuestion
	global.__objectDepths[144] = -27644723; // objCutsceneBorder
	global.__objectDepths[145] = 0; // objPartyCharacter
	global.__objectDepths[146] = 0; // objCutsceneDummy
	global.__objectDepths[147] = -999999998; // objRainDarkness
	global.__objectDepths[148] = -100000; // objShortFlash
	global.__objectDepths[149] = 0; // objButterflyGet
	global.__objectDepths[150] = -10000000; // objButterflyEffect
	global.__objectDepths[151] = -10000000; // objGoodNight
	global.__objectDepths[152] = -999999999; // objGameOverDoor
	global.__objectDepths[153] = -10000; // objShinySpotFlyAway
	global.__objectDepths[154] = 0; // objFourArrows
	global.__objectDepths[155] = -1000000; // objIntroText
	global.__objectDepths[156] = -900000; // objCustomFadeInOut
	global.__objectDepths[157] = 0; // objTitleCard
	global.__objectDepths[158] = 500000; // objMirrorEffect
	global.__objectDepths[159] = 200000000; // objParallax
	global.__objectDepths[160] = 0; // objBubbleSurprised
	global.__objectDepths[161] = 0; // objPunchFx
	global.__objectDepths[162] = -10000; // objSweat
	global.__objectDepths[163] = -1000; // objPoof
	global.__objectDepths[164] = -111111111; // objSpotlight
	global.__objectDepths[165] = 0; // objRoadblock2
	global.__objectDepths[166] = 0; // objPurpleSmoke
	global.__objectDepths[167] = 0; // objPlayer
	global.__objectDepths[168] = -10000000; // objPresent
	global.__objectDepths[169] = 0; // objATM
	global.__objectDepths[170] = 0; // objButterfly
	global.__objectDepths[171] = 0; // objShinySpot
	global.__objectDepths[172] = 0; // objInstantRevitalizingMachine
	global.__objectDepths[173] = -9999999; // objRain
	global.__objectDepths[174] = -9999999; // objSnow
	global.__objectDepths[175] = -100000001; // objBlackSnow
	global.__objectDepths[176] = 0; // objTestGirl
	global.__objectDepths[177] = 0; // objDialogTextGirl
	global.__objectDepths[178] = 0; // objStorageGirl
	global.__objectDepths[179] = 0; // objShopGirl
	global.__objectDepths[180] = 0; // objNPCExtender
	global.__objectDepths[181] = -1000000; // msgGeneric
	global.__objectDepths[182] = -1000000; // msgRandom
	global.__objectDepths[183] = 0; // msgQuestionBox
	global.__objectDepths[184] = -1000000; // msgGenericAntsFlag
	global.__objectDepths[185] = -1000000; // msgSetFlag
	global.__objectDepths[186] = 0; // msgAnts
	global.__objectDepths[187] = -1000000; // objShopGeneric
	global.__objectDepths[188] = 0; // objStorageSpawn
	global.__objectDepths[189] = 0; // objOwEnemyTemplate
	global.__objectDepths[190] = 0; // objOwBasic
	global.__objectDepths[191] = 0; // objOwTough
	global.__objectDepths[192] = 0; // objOwTough2
	global.__objectDepths[193] = 0; // objOwTough3
	global.__objectDepths[194] = -1000000; // objOwBoss
	global.__objectDepths[195] = -999999999; // objWall
	global.__objectDepths[196] = -999999999; // objWallDiag
	global.__objectDepths[197] = -999999999; // objWallDiag2
	global.__objectDepths[198] = -999999999; // objWallDiag3
	global.__objectDepths[199] = -999999999; // objWallDiag4
	global.__objectDepths[200] = -999999999; // objDoor
	global.__objectDepths[201] = -1000000; // objSolidDoor
	global.__objectDepths[202] = -1000000; // objSolidDoorMsg
	global.__objectDepths[203] = -99999; // objWater
	global.__objectDepths[204] = -99999; // objHotSpring
	global.__objectDepths[205] = -999999999; // objLadder
	global.__objectDepths[206] = 0; // objStairs
	global.__objectDepths[207] = 0; // objStairs2


	global.__objectNames[0] = "objBattleController";
	global.__objectNames[1] = "objBattleMsg";
	global.__objectNames[2] = "objTurnMaster";
	global.__objectNames[3] = "objStatusMaster";
	global.__objectNames[4] = "objPassiveMaster";
	global.__objectNames[5] = "objEnStatusMaster";
	global.__objectNames[6] = "objBattleKiller";
	global.__objectNames[7] = "objTargetSelector";
	global.__objectNames[8] = "objPlayerSelector";
	global.__objectNames[9] = "objSMAAAASH";
	global.__objectNames[10] = "objHealthBar";
	global.__objectNames[11] = "objHealthBarRed";
	global.__objectNames[12] = "objEnemyAilmentFade";
	global.__objectNames[13] = "objEnemyGeneralFade";
	global.__objectNames[14] = "objMortalDamage";
	global.__objectNames[15] = "objFadeToWhite";
	global.__objectNames[16] = "objMiss";
	global.__objectNames[17] = "objBattleBackground";
	global.__objectNames[18] = "objHitEffect";
	global.__objectNames[19] = "objAilmentsBubble";
	global.__objectNames[20] = "objSkillsMenu";
	global.__objectNames[21] = "objBattleInv";
	global.__objectNames[22] = "objGuard_p";
	global.__objectNames[23] = "objInspect_p";
	global.__objectNames[24] = "objCustomDamage";
	global.__objectNames[25] = "objItemLifeup";
	global.__objectNames[26] = "objItemLifeupAll";
	global.__objectNames[27] = "objItemPPUp";
	global.__objectNames[28] = "objItemPPUpAll";
	global.__objectNames[29] = "objItemHealing";
	global.__objectNames[30] = "objAttack_p";
	global.__objectNames[31] = "objCustomBashPlayer";
	global.__objectNames[32] = "objDamage";
	global.__objectNames[33] = "objDamageStrange";
	global.__objectNames[34] = "objPKFreeze";
	global.__objectNames[35] = "objFreezeFx";
	global.__objectNames[36] = "objPKFire";
	global.__objectNames[37] = "objFireFx";
	global.__objectNames[38] = "objPKThunder";
	global.__objectNames[39] = "objThunderFx";
	global.__objectNames[40] = "objPKFlash";
	global.__objectNames[41] = "objFlashFx";
	global.__objectNames[42] = "objBrainshock";
	global.__objectNames[43] = "objBrainshockFx";
	global.__objectNames[44] = "objHypnosis";
	global.__objectNames[45] = "objHypnosisFx";
	global.__objectNames[46] = "objParalysis";
	global.__objectNames[47] = "objParalysisFx";
	global.__objectNames[48] = "objMagnet";
	global.__objectNames[49] = "objMagnetFx";
	global.__objectNames[50] = "objStatDown";
	global.__objectNames[51] = "objStatUp";
	global.__objectNames[52] = "objStatDownFx";
	global.__objectNames[53] = "objShield";
	global.__objectNames[54] = "objShieldFx";
	global.__objectNames[55] = "objLifeup";
	global.__objectNames[56] = "objHealing";
	global.__objectNames[57] = "objDemand";
	global.__objectNames[58] = "objEnAttack";
	global.__objectNames[59] = "objEnCustomBash";
	global.__objectNames[60] = "objEnFreeze";
	global.__objectNames[61] = "objEnFreezeDamage";
	global.__objectNames[62] = "objEnFire";
	global.__objectNames[63] = "objEnFireDamage";
	global.__objectNames[64] = "objEnThunder";
	global.__objectNames[65] = "objEnThunderDamage";
	global.__objectNames[66] = "objEnFlash";
	global.__objectNames[67] = "objEnFlashDamage";
	global.__objectNames[68] = "objEnBrainshock";
	global.__objectNames[69] = "objEnBrainshockDamage";
	global.__objectNames[70] = "objEnHypnosis";
	global.__objectNames[71] = "objEnHypnosisDamage";
	global.__objectNames[72] = "objEnParalysis";
	global.__objectNames[73] = "objEnParalysisDamage";
	global.__objectNames[74] = "objEnMagnet";
	global.__objectNames[75] = "objEnMagnetDamage";
	global.__objectNames[76] = "objEnStatDown";
	global.__objectNames[77] = "objEnStatUp";
	global.__objectNames[78] = "objEnStatDownDamage";
	global.__objectNames[79] = "objEnOffenseDefenseDown";
	global.__objectNames[80] = "objEnStatUpDamage";
	global.__objectNames[81] = "objEnShield";
	global.__objectNames[82] = "objEnShieldDamage";
	global.__objectNames[83] = "objEnLifeup";
	global.__objectNames[84] = "objEnHealing";
	global.__objectNames[85] = "parLastAction";
	global.__objectNames[86] = "objExplodeOnDefeat";
	global.__objectNames[87] = "objExplosionDamage";
	global.__objectNames[88] = "objEnGuardSuperAttack";
	global.__objectNames[89] = "objEnDisableCommand";
	global.__objectNames[90] = "objEnWakeUp";
	global.__objectNames[91] = "objEnWakeUpDamage";
	global.__objectNames[92] = "objCallForHelp";
	global.__objectNames[93] = "objEnCustomDamage";
	global.__objectNames[94] = "objEnMessage";
	global.__objectNames[95] = "objEnGuard";
	global.__objectNames[96] = "objVarDamage";
	global.__objectNames[97] = "objEnStatDownGFX";
	global.__objectNames[98] = "objAllyMsg";
	global.__objectNames[99] = "objEnPar";
	global.__objectNames[100] = "objEnTemplate";
	global.__objectNames[101] = "objEnBasic";
	global.__objectNames[102] = "objEnBasicTough";
	global.__objectNames[103] = "objEnBasicTough2";
	global.__objectNames[104] = "objEnBasicTough3";
	global.__objectNames[105] = "objEnBoss";
	global.__objectNames[106] = "objInBattleNPC";
	global.__objectNames[107] = "objInBattleNpcTemplate";
	global.__objectNames[108] = "objBattleBgEditor";
	global.__objectNames[109] = "objDebug";
	global.__objectNames[110] = "objPersistent";
	global.__objectNames[111] = "objInGameMenu";
	global.__objectNames[112] = "objMapDisplay";
	global.__objectNames[113] = "objMenu";
	global.__objectNames[114] = "objControls";
	global.__objectNames[115] = "objPause";
	global.__objectNames[116] = "obj_inv";
	global.__objectNames[117] = "objStorage";
	global.__objectNames[118] = "objEqp";
	global.__objectNames[119] = "objInvUseMenu";
	global.__objectNames[120] = "objStatsMenu";
	global.__objectNames[121] = "objShop";
	global.__objectNames[122] = "objATMDisplay";
	global.__objectNames[123] = "objSkillsMenuOw";
	global.__objectNames[124] = "objNaming";
	global.__objectNames[125] = "objNewGame";
	global.__objectNames[126] = "objFlavorSelector";
	global.__objectNames[127] = "objFlavorSelectorOld";
	global.__objectNames[128] = "objSplash";
	global.__objectNames[129] = "objSoundTest";
	global.__objectNames[130] = "parNpc";
	global.__objectNames[131] = "parWall";
	global.__objectNames[132] = "parFoe";
	global.__objectNames[133] = "parDoor";
	global.__objectNames[134] = "parDeactivator";
	global.__objectNames[135] = "parCamera";
	global.__objectNames[136] = "objOvermind";
	global.__objectNames[137] = "objBattleSwirl";
	global.__objectNames[138] = "objLevelUpper";
	global.__objectNames[139] = "objFadeOut";
	global.__objectNames[140] = "objFadeOutBattle";
	global.__objectNames[141] = "objOwEnemyBlink";
	global.__objectNames[142] = "objTextBox";
	global.__objectNames[143] = "objQuestion";
	global.__objectNames[144] = "objCutsceneBorder";
	global.__objectNames[145] = "objPartyCharacter";
	global.__objectNames[146] = "objCutsceneDummy";
	global.__objectNames[147] = "objRainDarkness";
	global.__objectNames[148] = "objShortFlash";
	global.__objectNames[149] = "objButterflyGet";
	global.__objectNames[150] = "objButterflyEffect";
	global.__objectNames[151] = "objGoodNight";
	global.__objectNames[152] = "objGameOverDoor";
	global.__objectNames[153] = "objShinySpotFlyAway";
	global.__objectNames[154] = "objFourArrows";
	global.__objectNames[155] = "objIntroText";
	global.__objectNames[156] = "objCustomFadeInOut";
	global.__objectNames[157] = "objTitleCard";
	global.__objectNames[158] = "objMirrorEffect";
	global.__objectNames[159] = "objParallax";
	global.__objectNames[160] = "objBubbleSurprised";
	global.__objectNames[161] = "objPunchFx";
	global.__objectNames[162] = "objSweat";
	global.__objectNames[163] = "objPoof";
	global.__objectNames[164] = "objSpotlight";
	global.__objectNames[165] = "objRoadblock2";
	global.__objectNames[166] = "objPurpleSmoke";
	global.__objectNames[167] = "objPlayer";
	global.__objectNames[168] = "objPresent";
	global.__objectNames[169] = "objATM";
	global.__objectNames[170] = "objButterfly";
	global.__objectNames[171] = "objShinySpot";
	global.__objectNames[172] = "objInstantRevitalizingMachine";
	global.__objectNames[173] = "objRain";
	global.__objectNames[174] = "objSnow";
	global.__objectNames[175] = "objBlackSnow";
	global.__objectNames[176] = "objTestGirl";
	global.__objectNames[177] = "objDialogTextGirl";
	global.__objectNames[178] = "objStorageGirl";
	global.__objectNames[179] = "objShopGirl";
	global.__objectNames[180] = "objNPCExtender";
	global.__objectNames[181] = "msgGeneric";
	global.__objectNames[182] = "msgRandom";
	global.__objectNames[183] = "msgQuestionBox";
	global.__objectNames[184] = "msgGenericAntsFlag";
	global.__objectNames[185] = "msgSetFlag";
	global.__objectNames[186] = "msgAnts";
	global.__objectNames[187] = "objShopGeneric";
	global.__objectNames[188] = "objStorageSpawn";
	global.__objectNames[189] = "objOwEnemyTemplate";
	global.__objectNames[190] = "objOwBasic";
	global.__objectNames[191] = "objOwTough";
	global.__objectNames[192] = "objOwTough2";
	global.__objectNames[193] = "objOwTough3";
	global.__objectNames[194] = "objOwBoss";
	global.__objectNames[195] = "objWall";
	global.__objectNames[196] = "objWallDiag";
	global.__objectNames[197] = "objWallDiag2";
	global.__objectNames[198] = "objWallDiag3";
	global.__objectNames[199] = "objWallDiag4";
	global.__objectNames[200] = "objDoor";
	global.__objectNames[201] = "objSolidDoor";
	global.__objectNames[202] = "objSolidDoorMsg";
	global.__objectNames[203] = "objWater";
	global.__objectNames[204] = "objHotSpring";
	global.__objectNames[205] = "objLadder";
	global.__objectNames[206] = "objStairs";
	global.__objectNames[207] = "objStairs2";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}