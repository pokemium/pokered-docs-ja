; Format: (size 2 bytes)
; 00: target map ID
; 01: which dungeon warp in the source map was used
DungeonWarpList:
	db SEAFOAM_ISLANDS_B1F,$01
	db SEAFOAM_ISLANDS_B1F,$02
	db SEAFOAM_ISLANDS_B2F,$01
	db SEAFOAM_ISLANDS_B2F,$02
	db SEAFOAM_ISLANDS_B3F,$01
	db SEAFOAM_ISLANDS_B3F,$02
	db SEAFOAM_ISLANDS_B4F,$01
	db SEAFOAM_ISLANDS_B4F,$02
	db VICTORY_ROAD_2F,$02
	db POKEMON_MANSION_1F,$01
	db POKEMON_MANSION_1F,$02
	db POKEMON_MANSION_2F,$03
	db $FF

DungeonWarpData:
	FLYWARP_DATA SEAFOAM_ISLANDS_B1F_WIDTH,7,18
	FLYWARP_DATA SEAFOAM_ISLANDS_B1F_WIDTH,7,23
	FLYWARP_DATA SEAFOAM_ISLANDS_B2F_WIDTH,7,19
	FLYWARP_DATA SEAFOAM_ISLANDS_B2F_WIDTH,7,22
	FLYWARP_DATA SEAFOAM_ISLANDS_B3F_WIDTH,7,18
	FLYWARP_DATA SEAFOAM_ISLANDS_B3F_WIDTH,7,19
	FLYWARP_DATA SEAFOAM_ISLANDS_B4F_WIDTH,14,4
	FLYWARP_DATA SEAFOAM_ISLANDS_B4F_WIDTH,14,5
	FLYWARP_DATA VICTORY_ROAD_2F_WIDTH,16,22
	FLYWARP_DATA POKEMON_MANSION_1F_WIDTH,14,16
	FLYWARP_DATA POKEMON_MANSION_1F_WIDTH,14,16
	FLYWARP_DATA POKEMON_MANSION_2F_WIDTH,14,18

; 特殊なワープ(special warp)一覧  

; Format:
;	db マップID  
;	FLYWARP_DATA [Map Width][Y-pos][X-pos]  
;	db タイルセットID  
FirstMapSpec:
	db REDS_HOUSE_2F
	FLYWARP_DATA REDS_HOUSE_2F_WIDTH,6,3
	db REDS_HOUSE_2

TradeCenterSpec1:
	db TRADE_CENTER
	FLYWARP_DATA TRADE_CENTER_WIDTH,4,3
	db CLUB

TradeCenterSpec2:
	db TRADE_CENTER
	FLYWARP_DATA TRADE_CENTER_WIDTH,4,6
	db CLUB

ColosseumSpec1:
	db COLOSSEUM
	FLYWARP_DATA COLOSSEUM_WIDTH,4,3
	db CLUB

ColosseumSpec2:
	db COLOSSEUM
	FLYWARP_DATA COLOSSEUM_WIDTH,4,6
	db CLUB

; fly warp

FlyWarpDataPtr:
	db PALLET_TOWN, 0
	dw PalletTownFlyWarp
	db VIRIDIAN_CITY, 0
	dw ViridianCityFlyWarp
	db PEWTER_CITY, 0
	dw PewterCityFlyWarp
	db CERULEAN_CITY, 0
	dw CeruleanCityFlyWarp
	db LAVENDER_TOWN, 0
	dw LavenderTownFlyWarp
	db VERMILION_CITY, 0
	dw VermilionCityFlyWarp
	db CELADON_CITY, 0
	dw CeladonCityFlyWarp
	db FUCHSIA_CITY, 0
	dw FuchsiaCityFlyWarp
	db CINNABAR_ISLAND, 0
	dw CinnabarIslandFlyWarp
	db INDIGO_PLATEAU, 0
	dw IndigoPlateauFlyWarp
	db SAFFRON_CITY, 0
	dw SaffronCityFlyWarp
	db ROUTE_4, 0
	dw Route4FlyWarp
	db ROUTE_10, 0
	dw Route10FlyWarp

; Original Format:
;   [Event Displacement][Y-block][X-block][Y-sub_block][X-sub_block]
; Macro Format:
;   FLYWARP_DATA [Map Width][Y-pos][X-pos]
PalletTownFlyWarp:
	FLYWARP_DATA PALLET_TOWN_WIDTH,      6,  5
ViridianCityFlyWarp:
	FLYWARP_DATA VIRIDIAN_CITY_WIDTH,   26, 23
PewterCityFlyWarp:
	FLYWARP_DATA PEWTER_CITY_WIDTH,     26, 13
CeruleanCityFlyWarp:
	FLYWARP_DATA CERULEAN_CITY_WIDTH,   18, 19
LavenderTownFlyWarp:
	FLYWARP_DATA LAVENDER_TOWN_WIDTH,    6,  3
VermilionCityFlyWarp:
	FLYWARP_DATA VERMILION_CITY_WIDTH,   4, 11
CeladonCityFlyWarp:
	FLYWARP_DATA CELADON_CITY_WIDTH,    10, 41
FuchsiaCityFlyWarp:
	FLYWARP_DATA FUCHSIA_CITY_WIDTH,    28, 19
CinnabarIslandFlyWarp:
	FLYWARP_DATA CINNABAR_ISLAND_WIDTH, 12, 11
IndigoPlateauFlyWarp:
	FLYWARP_DATA INDIGO_PLATEAU_WIDTH,   6,  9
SaffronCityFlyWarp:
	FLYWARP_DATA SAFFRON_CITY_WIDTH,    30,  9
Route4FlyWarp:
	FLYWARP_DATA ROUTE_4_WIDTH,          6, 11
Route10FlyWarp:
	FLYWARP_DATA ROUTE_10_WIDTH,        20, 11
