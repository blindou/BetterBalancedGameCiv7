--========================================================================================================================
-- Off Fresh Cities now gain +3 Happiness
--========================================================================================================================
	UPDATE UnhappinessEffects
	SET	Amount = 2
	WHERE ID = 'StandardCityNoFreshWater' and CategoryText = 'LOC_UNHAPPINESS_EFFECT_CITY_NO_FRESH_WATER_CATEGORY';
--========================================================================================================================
--========================================================================================================================

-- --========================================================================================================================
-- -- Benjamin Franklin 
-- -- REMOVED - 50% production towards production buildings
-- --========================================================================================================================
-- 	delete from TraitModifiers
-- 	WHERE ModifierId = 'FRANKLIN_MOD_PRODUCTION_BUILDING_RATE' and TraitType = 'TRAIT_LEADER_BENJAMIN_FRANKLIN_ABILITY';
-- --========================================================================================================================
-- --========================================================================================================================

--========================================================================================================================	
-- Pachacuti
-- Increased Spawn Bias towards Mountains
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 100
	WHERE LeaderType = 'LEADER_PACHACUTI' and TerrainType = 'TERRAIN_MOUNTAIN';
	INSERT INTO TraitModifiers
        (TraitType,                    ModifierId)
    VALUES    ('TRAIT_LEADER_PACHACUTI_ABILITY',        'PACHACUTI_MOD_QUARTERS_MOUNTAINS_BBG');
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Tecumseh
-- +2 food / +2 production per CS you are Suz of (from +1 food / +1 production)
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 2
	WHERE ModifierId = 'TECUMSEH_MOD_SUZERAIN_FOOD' and name = 'Amount';	
	UPDATE ModifierArguments
	SET	Value = 2
	WHERE ModifierId = 'TECUMSEH_MOD_SUZERAIN_PRODUCTION' and name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Hatshepsut
-- +1 culture / +1 gold from imported resources (from +1 culture)
--========================================================================================================================
	DELETE FROM TraitModifiers
	where ModifierId = 'HATSHEPSUT_MOD_CULTURE_FROM_RESOURCES' and TraitType = 'TRAIT_LEADER_HATSHEPSUT_ABILITY';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Frederick
-- +2 food / +2 production per CS you are Suz of (from +1 food / +1 production)
--========================================================================================================================
	DELETE FROM TraitModifiers 
	WHERE TraitType = 'TRAIT_LEADER_FRIEDRICH_ABILITY' 
	AND ModifierId = 'FRIEDRICH_MOD_INFANTRY_TECH';
	INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES ('TRAIT_LEADER_FRIEDRICH_ABILITY', 'FRIEDRICH_MOD_INFANTRY_SCIENCE_BBG');

	DELETE FROM TraitModifiers 
	WHERE TraitType = 'TRAIT_LEADER_FRIEDRICH_ALT_ABILITY' 
	AND ModifierId = 'FRIEDRICH_ALT_MOD_INFANTRY_CIVIC';
	INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES ('TRAIT_LEADER_FRIEDRICH_ALT_ABILITY', 'FRIEDRICH_ALT_MOD_INFANTRY_CIVIC_BBG');
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Isabella
-- Receive 150g when discovering a natural wonder (From 300)
-- Greatly increased spawn bias towards natural wonders	
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 2000
	WHERE LeaderType = 'LEADER_ISABELLA';

	UPDATE ModifierArguments
	SET	Value = 150
	WHERE ModifierId = 'ISABELLA_MOD_NATURAL_WONDER_DISCOVERY' and name = 'Amount';		
	UPDATE ModifierArguments
	SET	Value = 150
	WHERE ModifierId = 'ISABELLA_MOD_NATURAL_WONDER_DISCOVERY' and name = 'DistantLandBonus';	
--========================================================================================================================

--========================================================================================================================
--========================================================================================================================	
-- War Support
-- Cities receive -1 happiness per negative war support (from -3) 
--========================================================================================================================	
	UPDATE WarWearinessEffects
	SET	YieldReductionPerLevel = 1
	WHERE WarWearinessType = 'WAR_WEARINESS_FOUNDED_SELF';

	UPDATE WarWearinessEffects
	SET	YieldReductionPerLevel = 1
	WHERE WarWearinessType = 'WAR_WEARINESS_FOUNDED_OTHER';

	UPDATE WarWearinessEffects
	SET	YieldReductionPerLevel = 1
	WHERE WarWearinessType = 'WAR_WEARINESS_FOUNDED_WAR_OPPONENT';
--========================================================================================================================

--========================================================================================================================


--========================================================================================================================	
-- Egypt
-- Add new tradition usable in exploration and modern (after playing egypt in antiquity) for +2 prod to navigable rivers
--========================================================================================================================
	INSERT INTO Types
		(Type,					Kind)
	VALUES	('NODE_CIVIC_AQ_EGYPT_NILE_LEGACY',	'KIND_TREE_NODE');

	INSERT INTO TYPEQUOTES
		(Type,					Quote,					QuoteAuthor,					QuoteAudio)
	VALUES	('NODE_CIVIC_AQ_EGYPT_NILE_LEGACY',	'LOC_CIVIC_AQ_EGYPT_NILE_LEGACY_QUOTE',	'LOC_CIVIC_AQ_EGYPT_NILE_LEGACY_QUOTE_AUTHOR',	'');

--	INSERT INTO ProgressionTreeNodes
--		(ProgressionTreeNodeType,		ProgressionTree,	Cost,	Name,					IconString)
--	VALUES	('NODE_CIVIC_AQ_EGYPT_NILE_LEGACY',	'TREE_CIVICS_AQ_EGYPT',	'9999',	'NODE_CIVIC_AQ_EGYPT_NILE_LEGACY_NAME',	'cult_egypt');

--	INSERT INTO ProgressionTreeNodeUnlocks
--		(ProgressionTreeNodeType,		TargetKind,		TargetType,			UnlockDepth)
--	VALUES	('NODE_CIVIC_AQ_EGYPT_NILE_LEGACY',	'KIND_TRADITION',	'TRADITION_NILE_LEGACY',	'1');

	INSERT INTO Types
		(Type,				Kind)
	VALUES	('TRADITION_NILE_LEGACY',	'KIND_TRADITION');

	INSERT INTO TRADITIONS
		(TraditionType,			Name,			Description,			TraitType,	AgeType)
	VALUES	('TRADITION_NILE_LEGACY',	'LOC_NILE_LEGACY_NAME',	'LOC_NILE_LEGACY_DESCRIPTION',	'TRAIT_EGYPT',	'AGE_ANTIQUITY');

	INSERT INTO TraditionModifiers
		(TraditionType,			ModifierId)
	VALUES	('TRADITION_NILE_LEGACY',	'NILE_LEGACY_MOD_PROD_BBG');

	INSERT INTO ModifierStrings
		(ModifierId,			Context,	Text)
	VALUES	('NILE_LEGACY_MOD_PROD_BBG',	'Description',	'LOC_TRADITION_NILE_LEGACY_DESCRIPTION');

	INSERT INTO Warehouse_YieldChanges
		(ID,						Age,			YieldType,		YieldChange,	NavigableRiverInCity)
	VALUES	('EgyptNileLegacyNavigableRiverProduction',	'AGE_ANTIQUITY',	'YIELD_PRODUCTION',	'2',		'TRUE');
--========================================================================================================================

--========================================================================================================================	
-- Mementos
-- Update Lydian Coin gold per age from 100 to 50
--========================================================================================================================	
	UPDATE ModifierArguments 
	SET Value = '50'
	WHERE ModifierId = 'MEMENTO_FOUNDATION_LYDIAN_LION_MODIFIER' and name = 'Amount';

	-- Update Bifocals influence from 50 to 15
	UPDATE ModifierArguments 
	SET Value = '15'
	WHERE ModifierId = 'MEMENTO_BENJAMIN_FRANKLIN_BIFOCALS_MODIFIER' and name = 'Amount';

	-- -- Update Imago Mundi sight bonus from +3 to +2
	UPDATE UnitAbilities 
	SET AbilityValue = '1'
	WHERE UnitAbilityType = 'ABILITY_SCOUT_RANGE_INCREASE';

	-- Update Chalcedony Seal yields from +3 to +1
	UPDATE ModifierArguments 
	SET Value = '1'
	WHERE ModifierId IN (
		'MEMENTO_XERXES_ACHAEMENID_CHALCEDONY_SEAL_MODIFIER_1',
		'MEMENTO_XERXES_ACHAEMENID_CHALCEDONY_SEAL_MODIFIER_2'
	) and name = 'Amount';

	-- Remove scouts from Merchants Saddle
	DELETE FROM ModifierArguments 
	WHERE ModifierId IN (
		'MEMENTO_BATTUTA_MERCHANTS_SADDLE_MODIFIER_1',
		'MEMENTO_BATTUTA_MERCHANTS_SADDLE_MODIFIER_4'
	);

	-- Shisa Necklace down to 50 influence (From 100)
	UPDATE ModifierArguments 
	SET Value = 50
	WHERE ModifierId IN (
		'MEMENTO_FOUNDATION_SHISA_NECKLACE_MODIFIER'
	) and name = 'Amount';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================	
-- Tradition changes
--========================================================================================================================
--========================================================================================================================
-- Mississippian
-- Civ Social Policy Shell-Tempered Pottery Buildings receive +.5 gold adjacency from resources (from +1 gold)
-- CHANGE MOVED HERE AS THE UNNERFED VERSION BECAME AVAILABLE AFTER ANTIQUITY TRANSITION
--========================================================================================================================
--	UPDATE Adjacency_YieldChanges
--	SET	YieldChange = 0.5
--	WHERE ID = 'ShellTemperedPotteryWildcardResourceGold';



--========================================================================================================================
-- Persia
-- UI Pairidaeza +3 gold +1 culture (from +1 gold +1 culture) 
--========================================================================================================================\
    UPDATE Constructible_YieldChanges
	SET	YieldChange = 3
	WHERE ConstructibleType = 'IMPROVEMENT_PAIRIDAEZA' and YieldType = 'YIELD_GOLD';
--========================================================================================================================
--========================================================================================================================