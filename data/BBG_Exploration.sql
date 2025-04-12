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