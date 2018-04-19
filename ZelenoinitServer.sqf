/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 54 Vehicles
private _vehicles = [
["Land_Sign_WarningMilitaryArea_F", [2557.4, 5038.49, 195.326], [-0.520675, 0.853755, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [2558.58, 5041.63, 196.849], [-0.569462, 0.822017, 0], [0, 0, 1], false],
["Land_PortableLight_double_F", [2557.81, 5037.28, 195.084], [-0.981926, 0.189265, 0], [0, 0, 1], true],
["Flag_UNO_F", [2553.98, 5039.37, 197.977], [-0.456413, -0.889768, 0], [0, 0, 1], false],
["Land_Vez", [2566.1, 5049.79, 197.695], [0.999494, -0.0317927, 0], [0, 0, 1], true],
["Fort_RazorWire", [2562.42, 5041.99, 194.755], [-0.543927, 0.839133, 0], [0, 0, 1], true],
["Land_BagBunker_Tower_F", [2541.49, 5034.23, 196.2], [-0.824861, -0.565335, 0], [0, 0, 1], true],
["Land_Sign_WarningMilitaryArea_F", [2549.12, 5032.77, 195.322], [-0.520675, 0.853755, 0], [0, 0, 1], false],
["Fort_RazorWire", [2568.45, 5046.34, 194.755], [-0.543927, 0.839133, 0], [0, 0, 1], true],
["Land_Vez", [2554.86, 5085.86, 197.695], [0.999598, 0.0283658, 0], [0, 0, 1], true],
["Land_PortableLight_double_F", [2549.8, 5032.21, 195.083], [0.0758919, 0.997116, 0], [0, 0, 1], true],
["Land_Vez", [2501.4, 5027.79, 197.695], [-0.268058, -0.963403, 0], [0, 0, 1], true],
["Exile_Sign_Office", [2552.9, 5052.14, 195.368], [0.824372, 0.566049, 0], [0, 0, 1], true],
["Exile_Sign_TraderCity", [2518.52, 4979.02, 195.733], [0.932657, 0.360764, 0], [0, 0, 1], false],
["Exile_Sign_WasteDump", [2528.78, 5049.99, 195.041], [-0.61054, -0.791985, 0], [0, 0, 1], true],
["Exile_Sign_AircraftCustoms", [2494.34, 5061.39, 194.944], [-0.978652, 0.205525, 0], [0, 0, 1], true],
["Exile_Sign_Aircraft", [2495.26, 5048.54, 194.971], [-0.927883, -0.372872, 0], [0, 0, 1], true],
["Land_ClutterCutter_large_F", [2495.61, 5059.01, 193.93], [0, 0.999996, 0.00265199], [-0.0266548, -0.00265105, 0.999641], true],
["Land_tent_west", [2511.32, 5087.78, 195.563], [0.834073, 0.551595, -0.00813617], [0.00800059, 0.00265196, 0.999964], true],
["Exile_Locker", [2535.39, 5040.14, 193.99], [-0.803752, -0.594965, 0], [0, 0, 1], true],
["Exile_Sign_Locker", [2536.34, 5038.46, 195.031], [-0.833969, -0.551811, 0], [0, 0, 1], true],
["Exile_Locker", [2517.2, 5047.39, 193.997], [0.813876, 0.581034, -0.0021584], [0.00265199, 0, 0.999996], true],
["Exile_Sign_Locker", [2518.64, 5045.31, 195.035], [0.535322, 0.844648, 0], [0, 0, 1], true],
["Exile_Sign_VehicleCustoms", [2547.07, 5087.31, 196.033], [0.824292, 0.566165, 0], [0, 0, 1], true],
["Exile_Sign_Vehicles", [2542.75, 5100.35, 195.041], [0.848464, 0.529253, 0], [0, 0, 1], true],
["Exile_Sign_Armory", [2510.28, 5084.21, 195.069], [-0.53762, 0.843187, 0], [0, 0, 1], true],
["Exile_Sign_Equipment", [2544.21, 5071.46, 195.041], [0.747786, 0.66394, 0], [0, 0, 1], true],
["Exile_Sign_Food", [2546.82, 5068.08, 195.041], [0.806283, 0.591531, 0], [0, 0, 1], true],
["Exile_Sign_Hardware", [2542, 5037.75, 195.512], [0.540015, -0.841655, 0], [0, 0, 1], true],
["Exile_Sign_SpecialOperations", [2514.41, 5086.91, 195.041], [-0.54733, 0.836917, 0], [0, 0, 1], true],
["UralWreck", [2509.69, 5075.23, 195.226], [-0.999967, 0.00118881, 0.00800656], [0.00799344, -0.0106637, 0.999911], true],
["Land_CampingTable_white_F", [2508.43, 5087.74, 194.737], [-0.807662, 0.589626, 0.00489828], [0.00800059, 0.00265196, 0.999964], true],
["Land_CampingTable_white_F", [2511.77, 5089.85, 194.704], [0.0035492, 0.99999, -0.00268042], [0.00800059, 0.00265196, 0.999964], true],
["Land_WoodenCounter_01_F", [2541.83, 5068.63, 194.476], [0.827852, 0.560946, 0], [0, 0, 1], true],
["Land_WoodenCounter_01_F", [2544.16, 5065.17, 194.476], [0.755045, 0.655672, 0], [0, 0, 1], true],
["Land_StallWater_F", [2543.82, 5071.09, 194.411], [0.866935, 0.498422, 0], [0, 0, 1], true],
["Land_PaperBox_01_open_water_F", [2546.68, 5065.74, 194.631], [0.966135, -0.258036, 0], [0, 0, 1], true],
["Land_PaperBox_01_small_closed_brown_IDAP_F", [2544.65, 5064.56, 195.167], [0.378633, 0.925547, 0], [0, 0, 1], true],
["Land_FoodSacks_01_cargo_white_idap_F", [2545.63, 5070.23, 194.519], [-0.524705, -0.851284, 0], [0, 0, 1], true],
["Land_FoodSacks_01_small_white_idap_F", [2542.55, 5065.8, 194.216], [0.995671, 0.0929511, 0], [0, 0, 1], true],
["Land_EmergencyBlanket_01_stack_F", [2542.04, 5067.01, 194.204], [0.676996, 0.735987, 0], [0, 0, 1], true],
["Land_WaterBottle_01_empty_F", [2544.63, 5064.21, 195.091], [0, 1, 0], [0, 0, 1], true],
["Land_WaterBottle_01_empty_F", [2544.24, 5064.78, 195.091], [0, 1, 0], [0, 0, 1], true],
["Land_EmergencyBlanket_02_stack_F", [2542.29, 5067.9, 195.058], [0.991975, 0.126435, 0], [0, 0, 1], true],
["Land_PaperBox_01_small_destroyed_brown_F", [2540.5, 5069.16, 194.22], [-0.883272, -0.46886, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2550.55, 5052.87, 197.498], [-0.816672, -0.577102, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2535.56, 5048.44, 197.498], [0.745326, 0.666701, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2513.17, 5032.13, 197.496], [0.885906, -0.463865, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2494.47, 5079.38, 197.615], [0.549872, -0.835249, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2546.34, 5096.99, 197.498], [-0.993651, -0.112506, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2524.49, 5051.63, 197.498], [-0.0486666, 0.998815, 0], [0, 0, 1], false],
["Land_PowLines_WoodL", [2492.03, 5048.06, 197.344], [0.866587, 0.499027, 0], [0, 0, 1], true],
["Land_PowLines_WoodL", [2513.02, 5092.81, 197.515], [0.909516, -0.41567, 0], [0, 0, 1], true],
["Land_PortableLight_double_F", [2546.9, 5070.48, 195.084], [0.850448, 0.526059, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 181 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["ca\misc\datsun01t.p3d", [2556.9, 5013.46, 194.684], [-0.235056, -0.971919, -0.0110731], [0.00800059, -0.0133266, 0.999879]],
["ca\misc\ural_wrecked.p3d", [2527.79, 5048.55, 195.188], [-0.76069, 0.649116, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbagebags_f.p3d", [2530.84, 5049.65, 194.438], [-0.998932, -0.0461948, 0], [0, 0, 1]],
["a3\structures_f_argo\civilian\garbage\garbagebarrel_01_english_f.p3d", [2530.93, 5047.76, 194.614], [0.690557, -0.723278, 0], [0, 0, 1]],
["a3\props_f_exp\civilian\garbage\garbageheap_04_f.p3d", [2527.95, 5051.28, 194.512], [-0.49758, -0.867418, 0], [0, 0, 1]],
["a3\structures_f\mil\cargo\cargo_patrol_v2_ruins_f.p3d", [2522.88, 5044.64, 196.481], [-0.567015, 0.823708, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [2526.5, 5046.56, 194.739], [-0.827194, -0.561912, -0.00219376], [-0.00265204, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2558.52, 5041.67, 195.21], [-0.557749, 0.830009, 0], [0, 0, 1]],
["ca\misc_e\jezek_kov_ep1.p3d", [2555.64, 5036.73, 194.551], [-0.796247, -0.604971, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2557.42, 5036.36, 194.386], [-0.374589, 0.927191, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2554.65, 5038.29, 194.702], [-0.808788, 0.588101, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2556.74, 5037.95, 194.702], [0.856696, 0.515822, 0], [0, 0, 1]],
["ca\wheeled\hmmwv_wrecked.p3d", [2543.29, 5073.93, 194.907], [0.877483, -0.479609, 0], [0, 0, 1]],
["a3\data_f\krater.p3d", [2540.85, 5075.03, 194], [-0.900212, -0.435453, 0], [0, 0, 1]],
["chr\chernarusredux_chz\chz_avtobus.p3d", [2533.15, 5006.64, 195.505], [-0.815906, -0.578184, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_hunter_f.p3d", [2568.19, 5009.67, 195.688], [-0.0825251, -0.996423, -0.0181619], [0.00533751, -0.0186657, 0.999812]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2558.08, 5039.24, 194.703], [0.16568, 0.98618, 0], [0, 0, 1]],
["ca\misc_e\jezek_kov_ep1.p3d", [2558.89, 5037.65, 194.551], [-0.796247, -0.604971, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2553.62, 5040.01, 194.386], [0.990696, 0.136091, 0], [0, 0, 1]],
["a3\data_f\krater.p3d", [2556.84, 5013.65, 193.934], [0, 0.999911, 0.013327], [0.00800059, -0.0133266, 0.999879]],
["a3\structures_f\wrecks\wreck_truck_f.p3d", [2560.72, 5003.92, 195.024], [0.468078, -0.883483, -0.0189869], [0.00533751, -0.018659, 0.999812]],
["a3\structures_f\wrecks\wreck_car2_f.p3d", [2510.48, 5027.13, 194.838], [-0.528792, -0.84875, 0.00140236], [0.00265199, 0, 0.999996]],
["a3\structures_f\wrecks\wreck_offroad2_f.p3d", [2553.29, 5043.83, 194.915], [0.309003, -0.951061, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [2522.43, 5048.4, 194.731], [0.565604, -0.824677, 0], [0, 0, 1]],
["ca\buildings2\misc_cargo\misc_cargo1b.p3d", [2519.9, 5049.16, 195.259], [0.824896, 0.565281, -0.00218762], [0.00265199, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2523.29, 5051.05, 194.701], [0.938716, -0.344689, 0.00157542], [-0.00265204, -0.00265198, 0.999993]],
["a3\structures_f\mil\helipads\helipadcircle_f.p3d", [2503.78, 5052.86, 194.014], [0.514123, -0.857712, 0.00273852], [-0.0053265, 0, 0.999986]],
["ca\misc\datsun01t.p3d", [2530.49, 5016.61, 194.743], [-0.952027, -0.306013, 0], [0, 0, 1]],
["chr\chernarusredux_chz\chz_avtobus2.p3d", [2542.65, 5013.49, 195.446], [-0.711785, -0.702387, 0.00379141], [0.00532655, 0, 0.999986]],
["chr\chernarusredux_chz\chz_avtobus.p3d", [2535.35, 5026.77, 195.505], [-0.825308, 0.564683, 0], [0, 0, 1]],
["a3\structures_f_epb\items\luggage\luggageheap_05_f.p3d", [2568.69, 5031.82, 194.41], [0, 0.999996, 0.00265199], [0, -0.00265199, 0.999996]],
["chr\chernarusredux_chz\chz_avtobus2.p3d", [2575.64, 5037.09, 195.457], [0.897171, 0.441684, 0], [0, 0, 1]],
["ca\misc\uaz_wrecked.p3d", [2564.81, 5029.58, 194.838], [0.774025, 0.633153, 0.00167912], [0, -0.00265199, 0.999996]],
["chr\chernarusredux_chz\chz_avtobus2.p3d", [2585.19, 5052.13, 195.453], [0.95222, 0.305404, -0.00252529], [0.00265199, 0, 0.999996]],
["ca\wheeled\skodovka_wrecked.p3d", [2572.19, 5046.06, 194.583], [0.655134, 0.755513, 0], [0, 0, 1]],
["a3\data_f\krater.p3d", [2532.71, 5017.61, 193.99], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epb\items\luggage\luggageheap_03_f.p3d", [2536.31, 5023.84, 194.5], [0.981856, 0.18963, 0], [0, 0, 1]],
["a3\structures_f_epb\items\luggage\luggageheap_04_f.p3d", [2537.38, 5010.58, 194.49], [0.498528, -0.866874, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2565.68, 5046.51, 195.21], [-0.557749, 0.830009, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2567.66, 5052, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2562.92, 5058.6, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2558.05, 5065.54, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2553.19, 5072.41, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2545.56, 5032.54, 195.2], [-0.557749, 0.830009, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2541.82, 5029.77, 195.2], [-0.557749, 0.830009, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2536.46, 5031.85, 195.2], [-0.834546, -0.550939, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2531.47, 5039.06, 195.2], [-0.834546, -0.550939, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [2546.03, 5037.63, 194.731], [-0.824983, -0.565158, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2549.71, 5031.54, 194.382], [-0.560719, 0.828006, 0.000708808], [-0.00265204, -0.00265198, 0.999993]],
["ca\misc_e\jezek_kov_ep1.p3d", [2547.3, 5031.41, 194.541], [-0.796247, -0.604971, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2549.81, 5033.52, 194.702], [0.165679, 0.98618, 0.00043939], [-0.00265204, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2548.46, 5032.37, 194.698], [0.901713, 0.432322, 0.00353791], [-0.00265204, -0.00265198, 0.999993]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2555.83, 5019.31, 194.37], [0.104619, 0.994509, 0.00265973], [0, -0.0026744, 0.999996]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2561.7, 5023.35, 194.374], [-0.829891, 0.557922, 0.00221947], [0.0026744, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2561.47, 5025.19, 194.692], [-0.931612, -0.363456, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2560.46, 5023.85, 194.692], [-0.535657, 0.844435, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2552.12, 5020.18, 194.373], [0.425684, 0.904869, 0.00241999], [0, -0.0026744, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2554.13, 5021.11, 194.692], [-0.450008, -0.893021, -0.00238831], [0, -0.0026744, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2552.46, 5021.28, 194.692], [0.78994, -0.613185, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2555.64, 5020.57, 194.69], [-0.887184, 0.461413, 0.00123401], [0, -0.0026744, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2550.46, 5076.21, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2551.23, 5080.83, 195.21], [-0.557749, 0.830009, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2555.52, 5083.83, 195.21], [-0.557749, 0.830009, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2555.46, 5089.52, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2550.56, 5096.51, 195.21], [0.827861, 0.560933, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2546.32, 5103.68, 195.21], [-0.911318, -0.411704, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2542.65, 5110.89, 195.2], [-0.911318, -0.411704, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2535.4, 5125.25, 195.33], [0.902668, 0.430275, -0.0073349], [0.0106641, -0.00532624, 0.999929]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2587.56, 5048.45, 194.04], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2575.62, 5044.59, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2569.83, 5036.73, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2561.85, 5036.4, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2554.35, 5029.88, 194.043], [0, 0.999996, 0.00265199], [0, -0.00265199, 0.999996]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2558.77, 5024.61, 194.04], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2549.4, 5025.78, 194.04], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2543, 5022.88, 194.04], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2539.27, 5016.15, 194.04], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2552.7, 5033.83, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2550.3, 5038.57, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2559.33, 5019.97, 194.033], [0, 0.999986, 0.00532655], [0, -0.00532655, 0.999986]],
["ca\misc_e\jezek_kov_ep1.p3d", [2550.08, 5035.07, 194.551], [-0.796247, -0.604971, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2525.67, 5041.44, 195.205], [-0.557747, 0.830009, -0.00147918], [-0.00265204, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2509.9, 5030.58, 195.207], [-0.557747, 0.830009, 0.00147915], [0.00265199, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2503.38, 5026.1, 195.21], [-0.557749, 0.830009, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2497.9, 5028.37, 195.21], [-0.834546, -0.550939, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2493.14, 5035.16, 195.152], [-0.8344, -0.550978, -0.0141014], [-0.0186628, 0.00267396, 0.999822]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2562.76, 5015, 193.979], [0, 0.999911, 0.0133313], [0.00532655, -0.0133311, 0.999897]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2564.7, 5006.35, 193.825], [0, 0.999826, 0.018666], [0.00533751, -0.0186657, 0.999812]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2541.55, 5026.7, 194.692], [-0.468718, 0.883348, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2544.19, 5024.12, 194.692], [-0.819305, 0.573358, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2542.74, 5025.28, 194.692], [-0.73898, 0.673728, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2532.56, 5010.8, 194.029], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2526.15, 5010.16, 194.029], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2520.5, 5037.44, 194.376], [-0.560721, 0.828005, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2517.76, 5036.84, 194.382], [-0.214098, -0.976812, 0.000567789], [0.00265199, 0, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2532.57, 5046.29, 195.207], [-0.557749, 0.830006, 0.00220118], [0, -0.00265199, 0.999996]],
["ca\misc_e\misc_cargo2a_ep1.p3d", [2494.76, 5039.83, 196.489], [-0.987291, 0.158134, -0.0158001], [-0.0160014, 0, 0.999872]],
["ca\buildings2\misc_cargo\misc_cargo1b.p3d", [2494.03, 5044.83, 197.785], [-0.200451, 0.979667, -0.00847793], [-0.0293202, 0.0026509, 0.999567]],
["ca\misc_e\misc_cargomarket1a_ep1.p3d", [2493.52, 5045.27, 195.109], [-0.0709224, -0.997482, 0.000565016], [-0.0293202, 0.0026509, 0.999567]],
["ca\misc_acr\container\misc_cargo_cont_small_acr.p3d", [2495.97, 5042.73, 195.238], [-0.477829, 0.878381, -0.0112684], [-0.0186628, 0.00267396, 0.999822]],
["a3\structures_f\wrecks\wreck_truck_dropside_f.p3d", [2547.26, 5082.45, 195.174], [0.631423, 0.775438, 0], [0, 0, 1]],
["ca\buildings\repair_center.p3d", [2547.97, 5089.64, 196.522], [-0.575207, 0.818008, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_cardismantled_f.p3d", [2544.66, 5096.29, 194.884], [0.0708646, 0.997486, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_heli_attack_02_f.p3d", [2536.33, 5115.81, 196.807], [0.218519, 0.975783, 0.00982688], [0.00265199, -0.010664, 0.99994]],
["a3\data_f\particleeffects\craterlong\craterlong.p3d", [2536.96, 5113.85, 194.066], [-0.341357, -0.939933, -0.00158742], [0.00265199, -0.00265198, 0.999993]],
["ca\misc3\camonet_east.p3d", [2524.17, 5100.09, 196.114], [-0.442188, 0.896922, 0], [0, 0, 1]],
["a3\structures_f_heli\ind\cargo\cargo10_yellow_f.p3d", [2518.71, 5097.53, 195.466], [-0.862602, 0.505883, -0.00095404], [-0.00267442, -0.00267439, 0.999993]],
["ca\buildings2\misc_cargo\misc_cargo1b.p3d", [2522.47, 5103.04, 197.28], [0.923541, 0.3835, 0], [0, 0, 1]],
["ca\buildings2\misc_cargo\misc_cargo1d.p3d", [2520.48, 5102.12, 195.398], [0.431648, 0.902042, 0], [0, 0, 1]],
["ca\buildings2\misc_cargo\misc_cargo1c.p3d", [2525.97, 5103.12, 195.398], [0.978874, -0.204465, 0], [0, 0, 1]],
["ca\buildings2\misc_cargo\misc_cargo1d.p3d", [2534.58, 5038.77, 195.258], [0.559763, -0.828652, 0], [0, 0, 1]],
["ca\buildings2\misc_cargo\misc_cargo1b.p3d", [2533.6, 5043.77, 195.262], [0.808033, 0.589133, -0.0021429], [0.00265199, 0, 0.999996]],
["a3\structures_f_heli\ind\cargo\cargo10_yellow_f.p3d", [2532.6, 5042.03, 197.92], [-0.992445, -0.122662, 0.00260925], [0.0026291, 0, 0.999997]],
["ca\misc2\samsite\powgen_big.p3d", [2549.16, 5054.77, 195.525], [0.894427, 0.447214, 0], [0, 0, 1]],
["a3\structures_f\mil\cargo\medevac_house_v1_ruins_f.p3d", [2492, 5076.07, 194.7], [-0.557065, 0.830469, 0], [0, 0, 1]],
["a3\structures_f\mil\cargo\cargo_house_v2_ruins_f.p3d", [2498.45, 5080.35, 194.771], [-0.573638, 0.819109, 0], [0, 0, 1]],
["a3\structures_f_epb\items\luggage\luggageheap_04_f.p3d", [2553.81, 5053.2, 194.827], [-0.59357, 0.804783, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2488.25, 5042.13, 194.94], [-0.833113, -0.551312, -0.0444661], [-0.0585655, 0.00798716, 0.998252]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2483.36, 5049.16, 194.54], [-0.832229, -0.551103, -0.0606656], [-0.0744588, 0.002667, 0.997221]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2478.9, 5056.59, 194.426], [0.90586, 0.42144, 0.0424851], [-0.0319811, -0.0319647, 0.998977]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2474.95, 5064.35, 194.621], [0.905693, 0.418361, 0.0685185], [-0.0373127, -0.0823313, 0.995906]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2470.75, 5071.99, 195.254], [0.881889, 0.470295, 0.0330941], [-0.0133361, -0.0452827, 0.998885]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2466.52, 5079.12, 195.334], [0.881967, 0.47131, 0.00126048], [0, -0.0026744, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2462.23, 5086.36, 195.29], [0.881353, 0.471129, 0.0354129], [-0.0373063, -0.00532284, 0.99929]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2458.76, 5093.97, 195.089], [-0.951621, -0.279513, -0.127631], [-0.132164, -0.00265094, 0.991224]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2456.53, 5102.05, 194.797], [0.96239, 0.239457, 0.128318], [-0.132164, 0, 0.991228]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2454.48, 5110.45, 194.706], [0.972346, 0.199307, 0.121739], [-0.113922, -0.0502731, 0.992217]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2456.27, 5115.95, 195.266], [0.251499, -0.967656, -0.0197683], [-0.0239912, -0.0266513, 0.999357]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2464.5, 5118.08, 195.34], [0.227183, -0.973852, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2472.58, 5120.21, 195.34], [0.227183, -0.973852, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2480.75, 5122.25, 195.34], [0.227183, -0.973852, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2488.61, 5123.85, 195.275], [0.138258, -0.989257, 0.0474856], [0, 0.047946, 0.99885]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2496.49, 5125.17, 195.111], [0.138175, -0.98608, 0.0924822], [0.0346489, 0.0981336, 0.99457]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2505, 5126.89, 194.977], [0.138162, -0.983361, 0.117949], [-0.0373063, 0.113839, 0.992799]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2513.26, 5128.25, 194.963], [0.138257, -0.986747, 0.0849407], [-0.00533768, 0.0850208, 0.996365]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2521.65, 5129.43, 195.036], [0.138117, -0.989473, 0.0432065], [-0.0452868, 0.0372696, 0.998279]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [2529.87, 5129.91, 195.329], [0.0996922, 0.995018, 0.00079691], [-0.00799344, 0, 0.999968]],
["a3\structures_f\mil\helipads\helipadcircle_f.p3d", [2516.3, 5060.45, 194], [0.514131, -0.857712, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2515.01, 4980.77, 194.376], [0.999906, 0.0137321, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2516.39, 4981.36, 194.692], [-0.134045, -0.990975, 0], [0, 0, 1]],
["ca\misc_e\jezek_kov_ep1.p3d", [2515.98, 4982.96, 194.541], [-0.0681528, 0.997675, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2516.61, 4979.6, 194.692], [0.73307, -0.680153, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2518.31, 4975.88, 194.691], [0.970203, -0.242289, -0.00129058], [0, -0.00532655, 0.999986]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [2517.27, 4977.31, 194.692], [0.36049, -0.932763, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2516.53, 4976.08, 194.375], [0.877616, 0.479358, 0.00255336], [0, -0.00532655, 0.999986]],
["ca\misc_e\jezek_kov_ep1.p3d", [2515.78, 4978.4, 194.541], [-0.0681528, 0.997675, 0], [0, 0, 1]],
["ca\misc3\camonet_east.p3d", [2490.73, 5055.21, 195.561], [-0.99959, -0.0286411, 0], [0, 0, 1]],
["a3\structures_f\system\cluttercutter_large_f.p3d", [2490.93, 5056.11, 193.793], [0, 0.999996, 0.00265199], [-0.0319849, -0.00265063, 0.999485]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2492.61, 5050.84, 194.242], [0.757999, -0.651738, 0.0259826], [-0.0319811, 0.00265069, 0.999485]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2493.39, 5053.53, 194.258], [-0.994388, -0.100977, -0.031554], [-0.0319849, 0.00265069, 0.999485]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2493.37, 5059.2, 194.256], [-0.961365, -0.273753, -0.0289256], [-0.0293202, -0.00265085, 0.999567]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [2493.08, 5056.42, 194.246], [0.860583, -0.508684, 0.0252433], [-0.0293202, 0, 0.99957]],
["a3\structures_f\wrecks\wreck_hunter_f.p3d", [2542.81, 5103.09, 195.871], [-0.503605, 0.863934, 0], [0, 0, 1]],
["a3\data_f\particleeffects\craterlong\craterlong.p3d", [2538.73, 5119.66, 194.104], [-0.341338, -0.939919, -0.00638347], [0.0106641, -0.0106635, 0.999886]],
["ca\buildings2\misc_cargo\misc_cargo1b.p3d", [2506.4, 5084.29, 195.33], [-0.494605, 0.869118, -0.000672109], [0.00800059, 0.00532633, 0.999954]],
["a3\structures_f_heli\ind\cargo\cargo10_yellow_f.p3d", [2506.08, 5084.98, 198.016], [-0.872185, -0.489083, 0.00958345], [0.00800059, 0.00532633, 0.999954]],
["a3\supplies_f_heli\cargonets\cargonet_01_barrels_f.p3d", [2509.9, 5082.64, 194.566], [-0.832718, 0.553638, 0.00815338], [0.0133313, 0.00532603, 0.999897]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [2514.41, 5091.22, 194.844], [0.737395, -0.675458, 0.00230218], [-0.0080009, -0.00532638, 0.999954]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [2515.48, 5089.68, 194.844], [0, 0.999986, 0.00532655], [-0.0080009, -0.00532638, 0.999954]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [2489.71, 5053.4, 194.571], [-0.634013, -0.772277, -0.0402023], [-0.0665191, 0.0026685, 0.997782]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [2489.55, 5051.54, 194.567], [-0.139914, 0.990091, -0.0119756], [-0.0665191, 0.0026685, 0.997782]],
["a3\supplies_f_heli\cargonets\cargonet_01_barrels_f.p3d", [2489.05, 5058.02, 194.235], [0.290649, -0.956682, 0.0168182], [-0.0665191, -0.00266848, 0.997782]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2540.43, 5042.24, 194.04], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2549.02, 5048.21, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2542.32, 5051.23, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2544.15, 5059.63, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2533.03, 5055.54, 194.045], [0, 1, 0], [0.00265199, 0, 0.999996]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2535.21, 5066.51, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2527.62, 5073.31, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2535.73, 5058.2, 194.042], [0, 1, 0], [-0.00265204, 0, 0.999996]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2538.82, 5095.9, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2538.54, 5088.91, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2542.5, 5082.64, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2498.45, 5055.98, 194.031], [0, 0.999996, 0.00265199], [-0.0080009, -0.00265191, 0.999964]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2498.99, 5051.06, 194.038], [0, 1, 0], [-0.0053265, 0, 0.999986]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2506.21, 5046.29, 194.067], [0, 1, 0], [0.0026744, 0, 0.999996]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2516.37, 5060.21, 194.05], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2508.5, 5066.71, 194.051], [0, 0.999996, 0.00265199], [0, -0.00265199, 0.999996]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2511.09, 5082.22, 194.072], [0, 0.999986, -0.0053265], [0.0133313, 0.00532603, 0.999897]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2517.38, 5084, 194.049], [0, 0.999996, -0.00265204], [0.00265199, 0.00265203, 0.999993]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [2497.76, 5073.47, 194.089], [0, 0.999911, 0.013327], [-0.0053265, -0.0133268, 0.999897]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;