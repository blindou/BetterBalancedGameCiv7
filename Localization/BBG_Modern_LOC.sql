
--========================================================================================================================
-- Resources
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+6[icon:YIELD_FOOD] Food, +6[icon:YIELD_CULTURE] Culture"
    WHERE Tag = 'LOC_ANT_RESOURCE_MANGOS_TOOLTIP';     
    UPDATE LocalizedText
    SET Text = "+6[icon:YIELD_HAPPINESS] Happiness and +3[icon:YIELD_SCIENCE] Science to Capital, +3[icon:YIELD_HAPPINESS] Happiness and +4[icon:YIELD_SCIENCE] Science to any other City"
    WHERE Tag = 'LOC_ANT_RESOURCE_PEARLS_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+6[icon:YIELD_FOOD] Food in Settlements with a Port, +3[icon:YIELD_FOOD] Food to any other Settlement. +3[icon:YIELD_PRODUCTION] production."
    WHERE Tag = 'LOC_ANT_RESOURCE_FISH_TOOLTIP';
--========================================================================================================================
--========================================================================================================================
