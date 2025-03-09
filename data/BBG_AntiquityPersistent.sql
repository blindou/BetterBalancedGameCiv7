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
-- Machiavelli
-- REMOVED - +3 influence a turn on the palace
-- +25 gold when Diplomatic Action are accepted or declined  (from +50 / +100)
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 25
	WHERE ModifierId = 'MACHIAVELLI_MOD_GOLD_ACTION_ACCEPT' and name = 'Amount';	
	UPDATE ModifierArguments
	SET	Value = 50
	WHERE ModifierId = 'MACHIAVELLI_MOD_GOLD_ACTION_REJECT' and name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Pachacuti
-- Increased Spawn Bias towards Mountains
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 100
	WHERE LeaderType = 'LEADER_PACHACUTI' and TerrainType = 'TERRAIN_MOUNTAIN';
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
-- Remove bonus gold from discovering natural wonders
-- Reduce bonus yield to 75% on natural wonder tiles (from 100%)
-- Greatly increased spawn bias towards natural wonders	
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 2000
	WHERE LeaderType = 'LEADER_ISABELLA';

	DELETE FROM TraitModifiers
	where ModifierId = 'ISABELLA_MOD_NATURAL_WONDER_DISCOVERY' and TraitType = 'TRAIT_LEADER_ISABELLA_ABILITY';

	UPDATE ModifierArguments
	SET	Value = 75
	WHERE ModifierId = 'ISABELLA_MOD_DOUBLE_NATURAL_WONDERS_ABILITY' and name = 'Percent';
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
-- Diplomacy
-- Steal Technology Diplomatic action now costs 60 influence (from 40)
--========================================================================================================================	
	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 150, InfCostUnfriendly = 150, InfCostNeutral = 150, InfCostFriendly = 150, InfCostHelpful = 150
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_TECH';
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
--========================================================================================================================
--========================================================================================================================
