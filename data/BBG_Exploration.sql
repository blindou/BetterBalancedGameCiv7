--========================================================================================================================	
-- Diplomacy
-- Steal Technology Diplomatic action now costs 120 influence (from 80)
-- Steal Civic Diplomatic action now costs 120 influence (from 80)
--========================================================================================================================	
	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 240, InfCostUnfriendly = 240, InfCostNeutral = 240, InfCostFriendly = 240, InfCostHelpful = 240
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_TECH';

	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 240, InfCostUnfriendly = 240, InfCostNeutral = 240, InfCostFriendly = 240, InfCostHelpful = 240
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_CIVIC';
--========================================================================================================================

--========================================================================================================================
-- Abasid
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 25
	WHERE ModifierId = 'MOD_ROUND_CITY_BUILDING_PRODUCTION' and name = 'Percent';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Spain
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 25
	WHERE ModifierId = 'TRAIT_MOD_CITY_PROJECT_CAPITAL_HEMISPHERE' and name = 'Percent';
	UPDATE ModifierArguments
	SET	Value = 50
	WHERE ModifierId = 'TRAIT_MOD_CITY_PROJECT_NOT_CAPITAL_HEMISPHERE' and name = 'Percent';

	UPDATE Unit_Stats
	SET	Combat = 40
	WHERE UnitType = 'UNIT_TERCIO';
	UPDATE Unit_Stats
	SET	Combat = 45
	WHERE UnitType = 'UNIT_TERCIO_2';
	UPDATE Unit_Stats
	SET	Combat = 50
	WHERE UnitType = 'UNIT_TERCIO_3';
	UPDATE ModifierArguments
	SET	Value = 4
	WHERE ModifierId = 'TERCIO_ADJACENT_COMBAT_MODIFIER' and name = 'Amount';
	
	DELETE FROM ProgressionTreeNodeUnlocks
	WHERE ProgressionTreeNodeType = 'NODE_CIVIC_EX_SPAIN_NEW_WORLD_RICHES' and TargetType = 'MOD_NEW_WORLD_RICHES_FOREIGN_CITIES_PRODUCTION_FOOD';
	DELETE FROM ProgressionTreeNodeUnlocks
	WHERE ProgressionTreeNodeType = 'NODE_CIVIC_EX_SPAIN_COUNCIL_OF_THE_INDIES' and TargetType = 'MOD_COUNCIL_OF_THE_INDIES_TREASURE_FLEET_MOVEMENT';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Hawaii
--========================================================================================================================
	DELETE FROM TraitModifiers
	where ModifierId = 'TRAIT_MOD_HAPPINESS_WAREHOUSE' and TraitType = 'TRAIT_HAWAII_ABILITY';
	DELETE FROM ProgressionTreeNodeUnlocks
	WHERE ProgressionTreeNodeType = 'NODE_CIVIC_EX_HAWAII_MANA' and TargetType = 'MOD_MANA_CULTURE_DISASTERS';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Inca
--========================================================================================================================
	Update Warehouse_YieldChanges
	set YieldChange = 3
	where id = 'ApusMountainProduction';
	DELETE FROM TraitModifiers
	where ModifierId = 'TRAIT_MOD_APUS_MOUNTAIN_FOOD' and TraitType = 'TRAIT_INCA_ABILITY';
	DELETE FROM Constructible_ValidTerrains
	where ConstructibleType = 'IMPROVEMENT_TERRACE_FARM' and TerrainType = 'TERRAIN_HILL';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Songhai
--========================================================================================================================
	DELETE FROM TraitModifiers
	where ModifierId = 'TRAIT_MOD_NAVIGABLE_RIVER_RESOURCE_CAP' and TraitType = 'TRAIT_SONGHAI_ABILITY';
	Update ModifierArguments
	set value = 'MOD_HI_KOI_RIVER_COMBAT_ATTACH_BBG'
	where ModifierId = 'MOD_HI_KOI_RIVER_COMBAT' and name = 'ModifierId';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Resources
--========================================================================================================================	
	UPDATE ModifierArguments
	SET	Value = 6
	WHERE ModifierId = 'MOD_MANGOS_CITY_FLAT_FOOD' and name = 'Amount';
	UPDATE ModifierArguments
	SET	Value = 6
	WHERE ModifierId = 'MOD_MANGOS_CITY_FLAT_CULTURE' and name = 'Amount';
	DELETE FROM ModifierMetadatas
	where ModifierId = 'MOD_RUBIES_HOMELAND_TOWN_GOLD' and String = 'RESOURCE_RUBIES';
	DELETE FROM ModifierMetadatas
	where ModifierId = 'MOD_RUBIES_DISTANT_LAND_TOWN_GOLD' and String = 'RESOURCE_RUBIES';
	DELETE FROM ModifierMetadatas
	where ModifierId = 'MOD_COCOA_HOMELAND_TOWN_HAPPINESS' and String = 'RESOURCE_COCOA';
	DELETE FROM ModifierMetadatas
	where ModifierId = 'MOD_COCOA_DISTANT_LAND_TOWN_HAPPINESS' and String = 'RESOURCE_COCOA';
--========================================================================================================================

--========================================================================================================================	
-- Legacy Paths
--========================================================================================================================	
	UPDATE AgeProgressionMilestones
	SET	RequiredPathPoints = 15
	WHERE AgeProgressionMilestoneType = 'EXPLORATION_ECONOMIC_MILESTONE_2' and LegacyPathType = 'LEGACY_PATH_EXPLORATION_ECONOMIC';
	UPDATE AgeProgressionMilestones
	SET	RequiredPathPoints = 20
	WHERE AgeProgressionMilestoneType = 'EXPLORATION_ECONOMIC_MILESTONE_3' and LegacyPathType = 'LEGACY_PATH_EXPLORATION_ECONOMIC';

	delete from ProgressionTreeNodeUnlocks
	where ProgressionTreeNodeType = 'NODE_TECH_EX_SHIPBUILDING' and TargetType = 'MOD_TECH_EX_SPAWN_TREASURE_FLEETS_DUMMY' and UnlockDepth = 1;
	UPDATE RequirementArguments
	SET	value = 'NODE_TECH_EX_FEUDALISM'
	WHERE name = 'ProgressionTreeNodeType' and RequirementId = 'TRAIT_TREASURE_TECH_PREREQ_SUBJECT_REQUIREMENTS_1' and value = 'NODE_TECH_EX_SHIPBUILDING';
--========================================================================================================================
