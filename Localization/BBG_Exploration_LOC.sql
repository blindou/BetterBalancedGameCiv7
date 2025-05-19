
--========================================================================================================================
-- Resources
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+6[icon:YIELD_FOOD] Food, +6[icon:YIELD_CULTURE] Culture"
    WHERE Tag = 'LOC_ANT_RESOURCE_MANGOS_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+3[icon:YIELD_HAPPINESS] Happiness and +2[icon:YIELD_SCIENCE] Science to Capital, +6[icon:YIELD_HAPPINESS] Happiness and +3[icon:YIELD_SCIENCE] Science to any other City"
    WHERE Tag = 'LOC_ANT_RESOURCE_PEARLS_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+5[icon:YIELD_FOOD] Food. +2[icon:YIELD_PRODUCTION] Production"
    WHERE Tag = 'LOC_ANT_RESOURCE_FISH_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+1[icon:YIELD_GOLD] Gold in settlements, doubled in Homelands"
    WHERE Tag = 'LOC_ANT_RESOURCE_RUBIES_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+1[icon:YIELD_HAPPINESS] Happiness in settlements, doubled in Homelands"
    WHERE Tag = 'LOC_EXP_RESOURCE_COCOA_TOOLTIP';
--========================================================================================================================
--========================================================================================================================
