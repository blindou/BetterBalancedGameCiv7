--========================================================================================================================
-- Egypt
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+2 Resource Capacity in Settlements on Coast or Navigable Rivers.'
    WHERE Tag = 'LOC_MOD_PERIPLUS_OF_THE_ERYTHRAEAN_SEA_RESOURCE_CAP_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = 'Egyptian Unique Quarter. Created by constructing the Mastaba and Mortuary Temple in the same District. Grants 100[icon:YIELD_GOLD] Gold (on Standard Speed) when any Wonder is completed in this Settlement. +25% production towards wonders in this city.'
    WHERE Tag = 'LOC_QUARTER_NECROPOLIS_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = 'Grants 100[icon:YIELD_GOLD] Gold (on Standard Speed) when any Wonder is completed in this Settlement. +25% production towards wonders in this city.'
    WHERE Tag = 'LOC_QUARTER_NECROPOLIS_TOOLTIP';

    INSERT OR REPLACE INTO LocalizedText 
        (Language, Tag, Text) VALUES
        ('en_US', 'LOC_ABILITY_EGYPT_FRIENDLY_TERRITORY_COMBAT_STRENGTH_NAME_BBG', 'Friendly Territory Combat Stregnth'),
        ('en_US', 'LOC_ABILITY_EGYPT_FRIENDLY_TERRITORY_COMBAT_STRENGTH_DESCRIPTION_BBG', '+3 combat strength in friendly territory.');
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Khmer
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+50% Growth Rate in the Capital. -2[icon:YIELD_HAPPINESS] Happiness in every other City.'
    WHERE Tag = 'LOC_MOD_CHAKRAVARTI_CAPITAL_GROWTH_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Persia
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+1[icon:YIELD_CULTURE] Culture and +3[icon:YIELD_GOLD] Gold. Persian Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Cannot be placed adjacent to another Pairidaeza."
    WHERE Tag = 'LOC_IMPROVEMENT_PAIRIDAEZA_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Rome
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+{2_Amount} Combat Strength for every Tradition in the Government."
    WHERE Tag = 'LOC_ABILITY_LEGION_DESCRIPTION';
    
    UPDATE LocalizedText
    SET Text = "+{2_Amount} from Traditions"
    WHERE Tag = 'LOC_ABILITY_LEGION_PREVIEW';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Resources
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+3[icon:YIELD_FOOD] Food, +3[icon:YIELD_CULTURE] Culture"
    WHERE Tag = 'LOC_ANT_RESOURCE_MANGOS_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+2[icon:YIELD_HAPPINESS] Happiness and +1[icon:YIELD_SCIENCE] Science to Capital, +4[icon:YIELD_HAPPINESS] Happiness and +2[icon:YIELD_SCIENCE] Science to any other City"
    WHERE Tag = 'LOC_ANT_RESOURCE_PEARLS_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+3[icon:YIELD_FOOD] Food and +1[icon:YIELD_PRODUCTION] Production"
    WHERE Tag = 'LOC_ANT_RESOURCE_FISH_TOOLTIP';
--========================================================================================================================
--========================================================================================================================
