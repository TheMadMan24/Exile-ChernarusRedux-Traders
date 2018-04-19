/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 11 NPCs
private _npcs = [
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_07", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [2557.99, 5055.21, 194.328], [-0.51846, -0.855102, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "GreekHead_A3_09", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [2529.44, 5051.21, 194.001], [0.495372, 0.868681, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_20", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [2492.04, 5052.24, 193.834], [0.99989, -0.0148419, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_15", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [2492.09, 5058.05, 193.833], [0.977626, -0.210352, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "GreekHead_A3_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [2545.26, 5082.31, 194.001], [0.905228, -0.424927, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [2543.74, 5098, 194.001], [-0.279662, -0.960099, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_16", [[],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [2511.79, 5090.48, 194.293], [0.0356169, -0.999366, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "Sturrock", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [2542.66, 5069.23, 194.001], [-0.772069, -0.635539, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_04", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [2545.74, 5066.16, 194.001], [-0.265694, -0.964058, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_10", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],[],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [2538.98, 5035.45, 193.991], [-0.543098, 0.839669, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [[],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],[],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [2507.84, 5088.05, 194.331], [0.89899, -0.43797, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;