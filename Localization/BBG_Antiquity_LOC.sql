--========================================================================================================================
-- Egypt
-- Improved Spawn Bias for Navigable Rivers
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+2 Resource Capacity in Settlements on Coast or Navigable Rivers.'
    WHERE Tag = 'LOC_MOD_PERIPLUS_OF_THE_ERYTHRAEAN_SEA_RESOURCE_CAP_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Maya
-- Civ Civic Calendar Round +5% science or culture from finishing techs or civics (from +10%)
-- UB Uwaybil K’uh +5% production for city when completing a tech (from +15%)
-- UB K’uh Nah no longer gains +2 science if placed on vegetation
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'After researching a Technology, gain[icon:YIELD_CULTURE] Culture equal to 5% of its cost.'
    WHERE Tag = 'LOC_MOD_CALENDAR_ROUND_CULTURE_FOR_TECH_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = 'After studying a Civic, gain[icon:YIELD_SCIENCE] Science equal to 5% of its cost.'
    WHERE Tag = 'LOC_MOD_CALENDAR_ROUND_SCIENCE_FOR_CIVIC_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = "Maya Unique Quarter. Created by constructing the Jalaw and K'uh Nah in the same District. Every time you research a Technology, this Settlement gains[icon:YIELD_PRODUCTION] Production equal to 5% of its cost."
    WHERE Tag = 'LOC_QUARTER_UWAYBIL_KUH_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "Every time you research a Technology, this Settlement gains[icon:YIELD_PRODUCTION] Production equal to 5% of its cost."
    WHERE Tag = 'LOC_QUARTER_UWAYBIL_KUH_TOOLTIP';

    UPDATE LocalizedText
    SET Text = "+3[icon:YIELD_SCIENCE] Science. +1[icon:YIELD_SCIENCE] Science Adjacency for Wonders. Mayan Unique Science Building. Ageless."
    WHERE Tag = 'LOC_BUILDING_KUH_NAH_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "Mayan Unique Science Building. Ageless."
    WHERE Tag = 'LOC_BUILDING_KUH_NAH_TOOLTIP';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Mississippian
-- Civ Social Policy Shell-Tempered Pottery Buildings receive +.5 gold adjacency from resources (from +1 gold)
-- CHANGE IS NOW MOVED TO BBG_AntiquityPersistent_LOC.sql
--========================================================================================================================
--    UPDATE LocalizedText
--    SET Text = "All Buildings receive a +.5[icon:YIELD_GOLD] Gold Adjacency for Resources."
--    WHERE Tag = 'LOC_TRADITION_SHELL_TEMPERED_POTTERY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Persia
-- Leader Trait +5 combat strength on attack (From +3) 
-- UI Pairidaeza +3 gold +1 culture (from +1 gold +1 culture) 
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+1[icon:YIELD_CULTURE] Culture and +3[icon:YIELD_GOLD] Gold. Persian Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Cannot be placed adjacent to another Pairidaeza."
    WHERE Tag = 'LOC_IMPROVEMENT_PAIRIDAEZA_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================