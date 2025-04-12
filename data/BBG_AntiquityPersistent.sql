--========================================================================================================================
-- Off Fresh Cities now gain +3 Happiness
--========================================================================================================================
	UPDATE UnhappinessEffects
	SET	Amount = 2
	WHERE ID = 'StandardCityNoFreshWater' and CategoryText = 'LOC_UNHAPPINESS_EFFECT_CITY_NO_FRESH_WATER_CATEGORY';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Napoleon Emperor
-- +16 gold for every unfriendly leader (from +8)
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 16
	WHERE ModifierId = 'NAPOLEON_MOD_GOLD_BONUS_UNFRIENDLY' and name = 'Amount';	
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Pachacuti
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
--========================================================================================================================
	DELETE FROM TraitModifiers
	where ModifierId = 'HATSHEPSUT_MOD_CULTURE_FROM_RESOURCES' and TraitType = 'TRAIT_LEADER_HATSHEPSUT_ABILITY';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Xerses, King of Kings
-- +50 culture / + 50 gold when capturing settlement (from +100 culture / +100 gold)
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 50
	WHERE ModifierId = 'XERXES_MOD_CULTURE_ON_CAPTURE_SETTLEMENT' and name = 'Amount';	
	UPDATE ModifierArguments
	SET	Value = 50
	WHERE ModifierId = 'XERXES_MOD_GOLD_ON_CAPTURE_SETTLEMENT' and name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Frederick
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
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 2000
	WHERE LeaderType = 'LEADER_ISABELLA';
--========================================================================================================================

--========================================================================================================================	
-- Ibn
--========================================================================================================================
	delete from TraitModifiers
	WHERE ModifierId = 'IBN_BATTUTA_MOD_WILDCARD_ATTRIBUTE' and TraitType = 'TRAIT_LEADER_IBN_BATTUTA_ABILITY';
--========================================================================================================================

--========================================================================================================================	
-- Simon
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 2
	WHERE ModifierId = 'BOLIVAR_MOD_WAR_SUPPORT_DEF' and name = 'Amount';	

	UPDATE ModifierArguments
	SET	Value = 2
	WHERE ModifierId = 'BOLIVAR_MOD_WAR_SUPPORT_AGGRO' and name = 'Amount';	
--========================================================================================================================

--========================================================================================================================	
-- Xerxes 
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 'YIELD_GOLD'
	WHERE ModifierId = 'XERXES_ALT_MOD_UNIQUE_IMPROVEMENT_YIELD' and name = 'YieldType';	
--========================================================================================================================

--========================================================================================================================
--========================================================================================================================	
-- War Support
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
--========================================================================================================================	
	UPDATE ModifierArguments 
	SET Value = '50'
	WHERE ModifierId = 'MEMENTO_FOUNDATION_LYDIAN_LION_MODIFIER' and name = 'Amount';

	-- Update Bifocals influence from 50 to 15
	UPDATE ModifierArguments 
	SET Value = '15'
	WHERE ModifierId = 'MEMENTO_BENJAMIN_FRANKLIN_BIFOCALS_MODIFIER' and name = 'Amount';

	-- Shisa Necklace down to 50 influence (From 100)
	UPDATE ModifierArguments 
	SET Value = 50
	WHERE ModifierId IN (
		'MEMENTO_FOUNDATION_SHISA_NECKLACE_MODIFIER'
	) and name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Persia
--========================================================================================================================\
    UPDATE Constructible_YieldChanges
	SET	YieldChange = 3
	WHERE ConstructibleType = 'IMPROVEMENT_PAIRIDAEZA' and YieldType = 'YIELD_GOLD';
--========================================================================================================================
--========================================================================================================================