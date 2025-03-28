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