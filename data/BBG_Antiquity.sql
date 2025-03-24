--========================================================================================================================
-- Egypt
-- Improved Spawn Bias for Navigable Rivers
--========================================================================================================================
	UPDATE StartBiasTerrains
	SET	Score = 100
	WHERE CivilizationType = 'CIVILIZATION_EGYPT' and TerrainType = 'TERRAIN_NAVIGABLE_RIVER';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Mauryan
-- Nagarika base cost 50 production and 20 progression cost (from 60 and 30)
-- Purabhettarah base movement 3 (from 2)
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
-- Maya
-- UB Uwaybil K’uh +5% production for city when completing a tech (from +15%)
-- UB K’uh Nah no longer gains +2 science if placed on vegetation
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 5
	WHERE ModifierId = 'MOD_MAYA_UWAYBIL_KUH_PRODUCTION_ON_TECH_COMPLETED' and name = 'PercentCost';
    
	UPDATE ModifierArguments
	SET	Value = 1
	WHERE ModifierId = 'MOD_KUH_NAH_VEGETATED_SCIENCE' and name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Mississippian
-- Burning Arrow ranged combat 12 @ lvl 1 / 17 @ lvl 2 (from 15 / 20)
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
-- Leader Trait +5 combat strength on attack (From +3) 
-- UI Pairidaeza +3 gold +1 culture (from +1 gold +1 culture) 
--========================================================================================================================
	UPDATE ModifierArguments
	SET	Value = 5
	WHERE ModifierId = 'HAMARANA_COUNCIL_MOD_COMBAT_ATTACK';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Diplomacy
-- Steal Technology Diplomatic action now costs 60 influence (from 40)
--========================================================================================================================	
	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 120, InfCostUnfriendly = 120, InfCostNeutral = 120, InfCostFriendly = 120, InfCostHelpful = 120
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_TECH';
--========================================================================================================================