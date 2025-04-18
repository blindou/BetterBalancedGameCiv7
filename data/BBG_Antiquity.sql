--========================================================================================================================
-- Egypt
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 100
	WHERE CivilizationType = 'CIVILIZATION_EGYPT' and TerrainType = 'TERRAIN_NAVIGABLE_RIVER';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- khmer
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = -2
	WHERE ModifierId = 'MOD_CHAKRAVARTI_CITY_HAPPINESS_PENALTY' and name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Mauryan
--========================================================================================================================
	UPDATE Unit_Costs
	SET	Cost = 50
	WHERE UnitType = 'UNIT_NAGARIKA' and YieldType = 'YIELD_PRODUCTION';
	UPDATE Units
	SET	CostProgressionParam1 = 20
	WHERE UnitType = 'UNIT_NAGARIKA';

	UPDATE Units
	SET	BaseMoves = 3
	WHERE UnitType = 'UNIT_PURABHETTARAH';
	UPDATE Units
	SET	BaseMoves = 3
	WHERE UnitType = 'UNIT_PURABHETTARAH_2';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Mississippian
--========================================================================================================================
	UPDATE Unit_Stats
	SET	RangedCombat = 12
	WHERE UnitType = 'UNIT_BURNING_ARROW';
	UPDATE Unit_Stats
	SET	RangedCombat = 17
	WHERE UnitType = 'UNIT_BURNING_ARROW_2';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Persia
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 5
	WHERE ModifierId = 'HAMARANA_COUNCIL_MOD_COMBAT_ATTACK';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Diplomacy
--========================================================================================================================	
	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 120, InfCostUnfriendly = 120, InfCostNeutral = 120, InfCostFriendly = 120, InfCostHelpful = 120
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_TECH';

	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 120, InfCostUnfriendly = 120, InfCostNeutral = 120, InfCostFriendly = 120, InfCostHelpful = 120
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_CIVIC';
--========================================================================================================================

--========================================================================================================================
-- Spawn Bias
--========================================================================================================================\
	-- First, delete all existing bias entries for these civilizations
	-- StartBiasBiomes
	DELETE FROM StartBiasBiomes 
	WHERE CivilizationType IN (
		'CIVILIZATION_EGYPT', 'CIVILIZATION_GREECE', 'CIVILIZATION_HAN', 
		'CIVILIZATION_KHMER', 'CIVILIZATION_MAYA', 'CIVILIZATION_PERSIA', 
		'CIVILIZATION_ROME', 'CIVILIZATION_AKSUM', 'CIVILIZATION_MAURYA',
		'CIVILIZATION_MISSISSIPPIAN', 'CIVILIZATION_CARTHAGE'
	);

	-- StartBiasTerrains
	DELETE FROM StartBiasTerrains 
	WHERE CivilizationType IN (
		'CIVILIZATION_EGYPT', 'CIVILIZATION_GREECE', 'CIVILIZATION_HAN', 
		'CIVILIZATION_KHMER', 'CIVILIZATION_MAYA', 'CIVILIZATION_PERSIA', 
		'CIVILIZATION_ROME', 'CIVILIZATION_AKSUM', 'CIVILIZATION_MAURYA',
		'CIVILIZATION_MISSISSIPPIAN', 'CIVILIZATION_CARTHAGE'
	);

	-- StartBiasFeatureClasses
	DELETE FROM StartBiasFeatureClasses 
	WHERE CivilizationType IN (
		'CIVILIZATION_EGYPT', 'CIVILIZATION_GREECE', 'CIVILIZATION_HAN', 
		'CIVILIZATION_KHMER', 'CIVILIZATION_MAYA', 'CIVILIZATION_PERSIA', 
		'CIVILIZATION_ROME', 'CIVILIZATION_AKSUM', 'CIVILIZATION_MAURYA',
		'CIVILIZATION_MISSISSIPPIAN', 'CIVILIZATION_CARTHAGE'
	);

	-- StartBiasRivers
	DELETE FROM StartBiasRivers 
	WHERE CivilizationType IN (
		'CIVILIZATION_EGYPT', 'CIVILIZATION_GREECE', 'CIVILIZATION_HAN', 
		'CIVILIZATION_KHMER', 'CIVILIZATION_MAYA', 'CIVILIZATION_PERSIA', 
		'CIVILIZATION_ROME', 'CIVILIZATION_AKSUM', 'CIVILIZATION_MAURYA',
		'CIVILIZATION_MISSISSIPPIAN', 'CIVILIZATION_CARTHAGE'
	);

	-- StartBiasAdjacentToCoasts
	DELETE FROM StartBiasAdjacentToCoasts 
	WHERE CivilizationType IN (
		'CIVILIZATION_EGYPT', 'CIVILIZATION_GREECE', 'CIVILIZATION_HAN', 
		'CIVILIZATION_KHMER', 'CIVILIZATION_MAYA', 'CIVILIZATION_PERSIA', 
		'CIVILIZATION_ROME', 'CIVILIZATION_AKSUM', 'CIVILIZATION_MAURYA',
		'CIVILIZATION_MISSISSIPPIAN', 'CIVILIZATION_CARTHAGE'
	);

	-- Now add the new biases based on the provided specifications
	-- T1: 150 - T2: 75 - T3: 25 - T4: 10

	-- Aksum: T1 coastal
	INSERT INTO StartBiasAdjacentToCoasts (CivilizationType, Score)
	VALUES ('CIVILIZATION_AKSUM', 150);

	-- Egypt: T1 nav river
	INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Score)
	VALUES ('CIVILIZATION_EGYPT', 'TERRAIN_NAVIGABLE_RIVER', 150);

	-- Egypt: T4 nav river
	INSERT INTO StartBiasBiomes (CivilizationType, BiomeType, Score)
	VALUES ('CIVILIZATION_EGYPT', 'BIOME_DESERT', 10);

	-- Greece: T2 rough terrain
	INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Score)
	VALUES ('CIVILIZATION_GREECE', 'TERRAIN_HILL', 75);

	-- Han: T4 Grasslands
	INSERT INTO StartBiasBiomes (CivilizationType, BiomeType, Score)
	VALUES ('CIVILIZATION_HAN', 'BIOME_GRASSLAND', 10);

	-- Khmer: T1 Floodplain
	INSERT INTO StartBiasFeatureClasses (CivilizationType, FeatureClassType, Score)
	VALUES ('CIVILIZATION_KHMER', 'FEATURE_CLASS_FLOODPLAIN', 150);

	-- Maurya: T4 Vegetation
	INSERT INTO StartBiasFeatureClasses (CivilizationType, FeatureClassType, Score)
	VALUES ('CIVILIZATION_MAURYA', 'FEATURE_CLASS_VEGETATED', 75);

	-- Maya: T2 Vegetation + T3 Tropical
	INSERT INTO StartBiasFeatureClasses (CivilizationType, FeatureClassType, Score)
	VALUES ('CIVILIZATION_MAYA', 'FEATURE_CLASS_VEGETATED', 75);

	INSERT INTO StartBiasBiomes (CivilizationType, BiomeType, Score)
	VALUES ('CIVILIZATION_MAYA', 'BIOME_TROPICAL', 25);

	-- Mississippia: T3 River Bias + T4 Grasslands Bias
	INSERT INTO StartBiasRivers (CivilizationType, Score)
	VALUES ('CIVILIZATION_MISSISSIPPIAN', 25);

	INSERT INTO StartBiasBiomes (CivilizationType, BiomeType, Score)
	VALUES ('CIVILIZATION_MISSISSIPPIAN', 'BIOME_GRASSLAND', 10);

	-- Persia: T4 Desert
	INSERT INTO StartBiasBiomes (CivilizationType, BiomeType, Score)
	VALUES ('CIVILIZATION_PERSIA', 'BIOME_DESERT', 10);

	-- Rome: T4 Grasslands
	INSERT INTO StartBiasBiomes (CivilizationType, BiomeType, Score)
	VALUES ('CIVILIZATION_ROME', 'BIOME_GRASSLAND', 10);

	-- Carthage: T1 coastal
	INSERT INTO StartBiasAdjacentToCoasts (CivilizationType, Score)
	VALUES ('CIVILIZATION_CARTHAGE', 150);
--========================================================================================================================
--========================================================================================================================