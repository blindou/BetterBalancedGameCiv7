--========================================================================================================================	
-- Diplomacy
-- Steal Technology Diplomatic action now costs 160 influence (from 120)
-- Steal Civic Diplomatic action now costs 160 influence (from 120)
--========================================================================================================================	
	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 320, InfCostUnfriendly = 320, InfCostNeutral = 320, InfCostFriendly = 320, InfCostHelpful = 320
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_TECH';

	UPDATE DiplomaticActionInfluenceCosts
	SET	InfCostHostile = 320, InfCostUnfriendly = 320, InfCostNeutral = 320, InfCostFriendly = 320, InfCostHelpful = 320
	WHERE DiplomacyActionType = 'DIPLOMACY_ACTION_ESPIONAGE_STEAL_CIVIC';
--========================================================================================================================