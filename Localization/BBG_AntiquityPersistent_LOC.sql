--========================================================================================================================	
-- Tecumseh
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]+2 [icon:YIELD_FOOD] Food [/B]and [icon:YIELD_PRODUCTION] [B]Production [/B]per Age in [B]Settlements [/B]for every [B]City-State [/B]you are [B]Suzerain [/B]of.[LI][B]+1 Combat Strength [/B]for all Units for every [B]City-State [/B]you are [B]Suzerain [/B]of.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_TECUMSEH_ABILITY_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '+2 [icon:YIELD_FOOD] Food and [icon:YIELD_PRODUCTION] Production per Age in Settlements for every City-State you are Suzerain of. +1 Combat Strength for all Units for every City-State you are Suzerain of.'
    WHERE Tag = 'LOC_LEADER_TECUMSEH_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Hatshepsut
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+1 [icon:YIELD_CULTURE] Culture and +1 [icon:YIELD_GOLD] Gold for every imported Resource. +15% [icon:YIELD_PRODUCTION] Production towards constructing Buildings and Wonders in Cities adjacent to Navigable Rivers. Resources adjacent to rivers receive +1 [icon:YIELD_GOLD] Gold and [icon:YIELD_CULTURE] Culture.'
    WHERE Tag = 'LOC_LEADER_HATSHEPSUT_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]+1 [icon:YIELD_CULTURE] Culture and +1 [icon:YIELD_GOLD] Gold [/B]for every imported [B]Resource[/B].[LI][B]+15% [icon:YIELD_PRODUCTION] Production [/B]towards constructing [B]Buildings [/B]and [B]Wonders [/B]in [B]Cities [/B]adjacent to [B]Navigable Rivers[/B]. [LI]Resources adjacent to rivers receive +1 [icon:YIELD_GOLD] Gold and [icon:YIELD_CULTURE] Culture.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_HATSHEPSUT_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Pachacuti 
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'All Buildings receive a +1 [icon:YIELD_FOOD] Food Adjacency for Mountains. Quarters receive +1 [icon:YIELD_SCIENCE] and +1 [icon:YIELD_GOLD] if adjacent to a mountain. Specialists adjacent to Mountains pay no [icon:YIELD_HAPPINESS] Happiness maintenance.'
    WHERE Tag = 'LOC_LEADER_PACHACUTI_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI]All Buildings receive a [B]+1 [icon:YIELD_FOOD] Food Adjacency[/B] for [B]Mountains[/B]. Quarters receive [B]+1 [icon:YIELD_SCIENCE] Science[/B] and [B]+1 [icon:YIELD_GOLD] Gold[/B] if adjacent to a mountain. [LI][B]Specialists [/B]adjacent to [B]Mountains [/B]pay no [icon:YIELD_HAPPINESS] [B]Happiness [/B]maintenance.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_PACHACUTI_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Frederick’s
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'Army Commanders start with the Merit Commendation, granting them +1 Command Radius. Gain an Infantry Unit with +5 combat strength when you construct a Science Building.'
    WHERE Tag = 'LOC_LEADER_FRIEDRICH_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]Army Commanders [/B]start with the [B]Merit Commendation[/B], granting them [B]+1 Command Radius[/B].[LI]Gain an [B]Infantry Unit [/B]with [B]+5 combat strength[/B] when you construct a [B]Science Building[/B].[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_FRIEDRICH_ABILITY_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = 'Gain a Great Work when you capture a Settlement for the first time. Gain an Infantry Unit with +5 combat strength when you construct a Culture Building.'
    WHERE Tag = 'LOC_LEADER_FRIEDRICH_ALT_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI]Gain a [B]Great Work [/B]when you capture a Settlement for the first time.[LI]Gain an [B]Infantry Unit[/B] with [B]+5 combat strength[/B] when you construct a [B]Culture Building[/B].[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_FRIEDRICH_ALT_ABILITY_DESCRIPTION';

    INSERT OR REPLACE INTO LocalizedText 
        (Language, Tag, Text) VALUES
        ('en_US', 'LOC_ABILITY_FRIEDRICH_CULTURAL_INFANTRY_NAME', 'Cultural Infantry Training'),
        ('en_US', 'LOC_ABILITY_FRIEDRICH_CULTURAL_INFANTRY_DESCRIPTION', '+5 Combat Strength for infantry units trained through science buildings.');
    INSERT OR REPLACE INTO LocalizedText 
        (Language, Tag, Text) VALUES
        ('en_US', 'LOC_ABILITY_FRIEDRICH_SCIENCE_INFANTRY_NAME', 'Cultural Infantry Training'),
        ('en_US', 'LOC_ABILITY_FRIEDRICH_SCIENCE_INFANTRY_DESCRIPTION', '+5 Combat Strength for infantry units trained through science buildings.');
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Napoleon, Revolutionary  
--========================================================================================================================
    UPDATE LocalizedText 
    SET Text = Text || ' +5 Combat Strength for Siege units.'
    WHERE Tag = 'LOC_LEADER_NAPOLEON_ALT_DESCRIPTION';

    UPDATE LocalizedText 
    SET Text = Text || ' +5 Combat Strength for Siege units.'
    WHERE Tag = 'LOC_TRAIT_LEADER_NAPOLEON_ALT_ABILITY_DESCRIPTION';

    INSERT OR REPLACE INTO LocalizedText 
        (Language, Tag, Text) VALUES
        ('en_US', 'LOC_TRAIT_LEADER_NAPOLEON_ALT_SIEGE_COMBAT_STR', '+5 Combat Strength for Siege units.');
--========================================================================================================================
--========================================================================================================================

-- ========================================================================================================================	
-- Egypt
-- ========================================================================================================================
	INSERT OR REPLACE INTO LocalizedText
		(Tag,				Language,	Text)
	VALUES	('LOC_NILE_LEGACY_DESCRIPTION', 'en_US',	'+2[icon:YIELD_PRODUCTION] Production on Navigable Rivers.');

	INSERT OR REPLACE INTO LocalizedText
		(Tag,				Language,	Text)
	VALUES	('LOC_NILE_LEGACY_NAME',	'en_US',	'Nile Legacy');

    UPDATE LocalizedText
    SET Text = 'Land units receive +3 combat strength in friendly territory.'
    WHERE Tag = 'LOC_TRADITION_RICHES_OF_THE_DUAT_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '+3 combat strength in friendly territory.'
    WHERE Tag = 'LOC_ABILITY_EGYPT_COMBAT_PREVIEW';
    
    UPDATE LocalizedText
    SET Text = 'Egyptian Unique Quarter. Created by constructing the Mastaba and Mortuary Temple in the same District. Grants 100[icon:YIELD_GOLD] Gold (on Standard Speed) when any Wonder is completed in this Settlement. +25% wonder production.'
    WHERE Tag = 'LOC_QUARTER_NECROPOLIS_DESCRIPTION';
    
    UPDATE LocalizedText
    SET Text = 'Grants 100[icon:YIELD_GOLD] Gold (on Standard Speed) when any Wonder is completed in this Settlement. +25% wonder production.'
    WHERE Tag = 'LOC_QUARTER_NECROPOLIS_TOOLTIP';
--========================================================================================================================

-- ========================================================================================================================	
-- Ibn
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+2 Wildcard Attribute Points.'
    WHERE Tag = 'LOC_IBN_BATTUTA_MOD_EX_WILDCARD_ATTRIBUTE_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '+2 Wildcard Attribute Points.'
    WHERE Tag = 'LOC_IBN_BATTUTA_MOD_MO_WILDCARD_ATTRIBUTE_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = 'Gains 2 Wildcard Attribute Points after the first Civic in every Age. +1 Sight for all Units. Gain a unique Endeavor called Trade Maps that allows you to gradually see other Leaders claimed territory.'
    WHERE Tag = 'LOC_LEADER_IBN_BATTUTA_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '[LIST][LI]Gains [B]2 Wildcard Attribute Points [/B]after the first [B]Civic [/B]in every Age [LI][B]+1 Sight [/B]for all Units.[LI]Gain a unique [B]Endeavor [/B]called [B]Trade Maps [/B]that allows you to gradually see other Leaders [B]claimed territory[/B].[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_IBN_BATTUTA_ABILITY_DESCRIPTION';
--========================================================================================================================

-- ========================================================================================================================	
-- Jose
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'When gaining rewards from a Narrative Event, gain an additional 20 [icon:YIELD_CULTURE] Culture and [icon:YIELD_GOLD] Gold per Age. Has additional Narrative Events. +50% Celebration duration. +50% [icon:YIELD_HAPPINESS] Happiness towards Celebrations. +1 to all stats in settlements during a celebration, scaling with game age.'
    WHERE Tag = 'LOC_LEADER_JOSE_RIZAL_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '[LIST][LI]When gaining rewards from a [B]Narrative Event[/B], gain an additional [B]20 [icon:YIELD_CULTURE] Culture [/B]and [icon:YIELD_GOLD] [B]Gold [/B]per Age.[LI]Has additional [B]Narrative Events[/B].[LI][B]+50% Celebration [/B]duration.[LI][B]+50% [icon:YIELD_HAPPINESS] Happiness [/B]towards [B]Celebrations[/B]. [LI][B]+1[/B] to all stats in settlements during a [B]celebration[/B], [B]scaling[/B] with game age.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_JOSE_RIZAL_ABILITY_DESCRIPTION';
--========================================================================================================================

-- ========================================================================================================================	
-- Aksum
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+25%[icon:YIELD_GOLD] Gold in Cities adjacent to Coast.'
    WHERE Tag = 'LOC_TRADITION_THRONE_OF_MY_FATHERS_DESCRIPTION';
--========================================================================================================================

-- ========================================================================================================================	
-- Simon
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'Gain 2 free Support on your wars. When you conquer a Settlement for the first time it can purchase 1 Constructible for free. Unrest does not prevent Purchasing. Cavalry Units receive +1 movement.'
    WHERE Tag = 'LOC_LEADER_BOLIVAR_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '[LIST][LI]Gain [b]2 free Support[/b] on your wars. [LI]When you conquer a Settlement for the first time the Settlement can [b]purchase 1 Constructible for free[/b]. [LI]Unrest does not prevent Purchasing. [LI]Cavalry Units receive +1 movement.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_BOLIVAR_ABILITY_DESCRIPTION';
--========================================================================================================================

-- ========================================================================================================================	
-- Xerxes
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+3 Combat Strength for Units that are attacking in neutral or enemy territory. Gain 50 [icon:YIELD_CULTURE] Culture and [icon:YIELD_GOLD] Gold per Age when you capture a Settlement for the first time. +10% [icon:YIELD_GOLD] Gold in all Settlements. This is doubled in Settlements not founded by you. +1 Settlement Limit per Age.'
    WHERE Tag = 'LOC_LEADER_XERXES_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]+3 Combat Strength [/B]for Units that are [B]attacking [/B]in neutral or enemy territory.[LI]Gain [B]50 [icon:YIELD_CULTURE] Culture [/B]and [icon:YIELD_GOLD] [B]Gold [/B]per Age when you capture a Settlement for the first time.[LI][B]+10% [icon:YIELD_GOLD] Gold [/B]in all Settlements. This is [B]doubled [/B]in Settlements not founded by you.[LI][B]+1 Settlement Limit [/B]per Age.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_XERXES_ABILITY_DESCRIPTION';
--========================================================================================================================

-- ========================================================================================================================	
-- Khmer
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+100%[icon:YIELD_FOOD] Food and[icon:YIELD_HAPPINESS] Happiness towards maintaining Specialists. +1 [icon:YIELD_PRODUCTION] Production from Specialists.'
    WHERE Tag = 'LOC_TRADITION_KAMBU_MERA_DESCRIPTION';
--========================================================================================================================

-- ========================================================================================================================	
-- Khmer
-- ========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'Gain a unique Sanction called Continental System that reduces the Trade Route limit of the targeted Leader to all other Leaders by 1. Causes a massive Relationship penalty, and costs more to reject. +16 [icon:YIELD_GOLD] Gold per Age for every Leader you are Unfriendly or Hostile with. Can reject Endeavors for free.'
    WHERE Tag = 'LOC_LEADER_NAPOLEON_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '[LIST][LI]Gain a unique [B]Sanction [/B]called [B]Continental System [/B]that reduces the [B]Trade Route [/B]limit of the targeted Leader to [B]all other Leaders [/B]by [B]1[/B]. Causes a massive Relationship penalty, and costs more to reject.[LI][B]+16 [icon:YIELD_GOLD] Gold [/B]per Age for every [B]Leader [/B]you are [B]Unfriendly [/B]or [B]Hostile [/B]with.[LI]Can reject [B]Endeavors [/B]for [B]free[/B].[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_NAPOLEON_ABILITY_DESCRIPTION';
--========================================================================================================================

--========================================================================================================================
-- Carthage
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+100% [icon:YIELD_GOLD] Gold towards purchasing Buildings on Coast or Navigable Rivers.'
    WHERE Tag = 'LOC_TRADITION_GAULOS_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '+100% [icon:YIELD_GOLD] Gold towards purchasing Naval Units. -1 [icon:YIELD_GOLD] Gold maintenance for Naval Units.'
    WHERE Tag = 'LOC_TRADITION_QUINQUEREME_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = '+100% [icon:YIELD_GOLD] Gold from Mining Towns. +100% [icon:YIELD_FOOD] Food from Fishing or Farming Towns.'
    WHERE Tag = 'LOC_TRADITION_SUFFETES_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Mementos
--========================================================================================================================	
    UPDATE LocalizedText 
    SET Text = 'Grant +50 [ICON_Gold] Gold per Era at the start of each Era.'
    WHERE Tag = 'LOC_MEMENTO_FOUNDATION_LYDIAN_LION_FUNCTIONAL_DESCRIPTION';

    UPDATE LocalizedText 
    SET Text = 'Gain +15 [ICON_Influence] Influence whenever you complete a Technology or Civic Mastery.'
    WHERE Tag = 'LOC_MEMENTO_BENJAMIN_FRANKLIN_BIFOCALS_FUNCTIONAL_DESCRIPTION';

    UPDATE LocalizedText 
    SET Text = 'Gain 50[icon:YIELD_DIPLOMACY] Influence when you become Suzerain of a City-State.'
    WHERE Tag = 'LOC_MEMENTO_FOUNDATION_SHISA_NECKLACE_FUNCTIONAL_DESCRIPTION';

    UPDATE LocalizedText 
    SET Text = '+0.5 Combat Strength for all Units for every City-State you are Suzerain of.'
    WHERE Tag = 'LOC_MEMENTO_TECUMSEH_WARCLUB_FUNCTIONAL_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Greece
--========================================================================================================================
    INSERT OR REPLACE INTO LocalizedText 
        (Language, Tag, Text) VALUES
        ('en_US', 'LOC_ABILITY_HOPLITE_VS_CAVALRY_PREVIEW', '+3 combat str vs Cav.');

    UPDATE LocalizedText
    SET Text = "Greek Unique Quarter. Created by constructing the Odeon and Parthenon in the same District. +5[icon:YIELD_GOLD] Gold on the Parthenon for each City-State you are Suzerain of."
    WHERE Tag = 'LOC_QUARTER_ACROPOLIS_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "+5[icon:YIELD_GOLD] Gold on the Parthenon for each City-State you are Suzerain of."
    WHERE Tag = 'LOC_QUARTER_ACROPOLIS_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+5[icon:YIELD_CULTURE] Culture for each City-State you are Suzerain of."
    WHERE Tag = 'LOC_MOD_SYMMACHIA_CULTURE_PER_FRIENDLY_INDEPENDENT_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Abasid
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+25% Production towards constructing Buildings in Cities with at least 8 Urban Population."
    WHERE Tag = 'LOC_MOD_ROUND_CITY_BUILDING_PRODUCTION_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Majaphit
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+33%[icon:YIELD_PRODUCTION] Production towards Overbuilding."
    WHERE Tag = 'LOC_MOD_WAYANG_OVERBUILD_PRODUCTION_DESCRIPTION';    
    UPDATE LocalizedText
    SET Text = "+100%[icon:YIELD_FOOD] Food towards maintaining Specialists."
    WHERE Tag = 'LOC_TRADITION_NEGARAKERTAGAMA_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Spain
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+25% [icon:YIELD_GOLD] Gold towards converting a Town to a City, or +50% in Distant Lands."
    WHERE Tag = 'LOC_CIVILIZATION_SPAIN_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "[LIST][LI][B]+25% [icon:YIELD_GOLD] Gold [/B]towards [B]converting [/B]a Town to a City, or [B]+50% [/B]in [B]Distant Lands[/B].[LI][B]+30% [icon:YIELD_PRODUCTION] Production [/B]towards constructing [B]El Escorial[/B].[/LIST]"
    WHERE Tag = 'LOC_TRAIT_SPAIN_ABILITY_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "+10%[icon:YIELD_FOOD] Food, [icon:YIELD_PRODUCTION] Production, and [icon:YIELD_GOLD] Gold in Settlements in Distant Lands."
    WHERE Tag = 'LOC_MOD_NEW_WORLD_RICHES_FOREIGN_CITIES_PRODUCTION_FOOD_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "+1 movement to all naval units including treasure fleets."
    WHERE Tag = 'LOC_MOD_COUNCIL_OF_THE_INDIES_TREASURE_FLEET_MOVEMENT_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "Adjacent Units receive +4 Combat Strength against Cavalry Units (bonus is only applied once)."
    WHERE Tag = 'LOC_ABILITY_TERCIO_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Hawaii
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "Gain 25 [icon:YIELD_CULTURE] Culture each time a Settlement expands to Marine Terrain. +1[icon:YIELD_PRODUCTION] Production and +1[icon:YIELD_HAPPINESS] Happiness on [B]Fishing Boats."
    WHERE Tag = 'LOC_CIVILIZATION_HAWAII_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "[LIST][LI]Gain [B]25 [icon:YIELD_CULTURE] Culture [/B]each time a Settlement expands to [B]Marine Terrain[/B].[LI][B]+1[icon:YIELD_PRODUCTION] Production and +1[icon:YIELD_HAPPINESS] Happiness[/B] on [B]Fishing Boats.[/B][LI][B]+30% [icon:YIELD_PRODUCTION] Production [/B]towards constructing [B]Hale o Keawe[/B].[/LIST]"
    WHERE Tag = 'LOC_TRAIT_HAWAII_ABILITY_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = "Adjacent Farms and Fishing Boats receive +1[icon:YIELD_CULTURE] Culture. Hawaiian Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Must be placed on an existing Improvement on Grassland or Tropical."
    WHERE Tag = 'LOC_IMPROVEMENT_LO_I_KALO_TOOLTIP';
    UPDATE LocalizedText
    SET Text = "+3[icon:YIELD_FOOD] Food and +2[icon:YIELD_PRODUCTION] Production. Adjacent Farms and Fishing Boats receive +1[icon:YIELD_CULTURE] Culture. Hawaiian Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Must be placed on an existing Improvement on Grassland or Tropical."
    WHERE Tag = 'LOC_IMPROVEMENT_LO_I_KALO_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = "+4[icon:YIELD_PRODUCTION] and +4[icon:YIELD_CULTURE] Culture for every time a Storm, Flood, or Volcanic Eruption has provided Fertility this Age."
    WHERE Tag = 'LOC_MOD_MANA_CULTURE_DISASTERS_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Inca
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+6[icon:YIELD_FOOD] Food. Incan Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Must be placed on an existing Improvement adjacent to a Mountain."
    WHERE Tag = 'LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "Incan Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Must be placed on an existing Improvement adjacent to a Mountain."
    WHERE Tag = 'LOC_IMPROVEMENT_TERRACE_FARM_TOOLTIP';

    UPDATE LocalizedText
    SET Text = "Can work Mountain Terrain. +3[icon:YIELD_PRODUCTION] Production on Mountain Terrain."
    WHERE Tag = 'LOC_CIVILIZATION_INCA_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "[LIST][LI]Can work [B]Mountain Terrain[/B].[LI][B]+3 [icon:YIELD_PRODUCTION] Production [/B]on [B]Mountain Terrain[/B].[LI][B]+30% [icon:YIELD_PRODUCTION] Production [/B]towards constructing [B]Machu Pikchu[/B].[/LIST]"
    WHERE Tag = 'LOC_TRAIT_INCA_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Trung
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "Gain 3 free Levels on your first Army Commander. +20% Commander experience. +1 science per age per army commander level. +3 combat strength in vegetated terrain."
    WHERE Tag = 'LOC_LEADER_TRUNG_TRAC_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "[LIST][LI]Gain [B]3 free Levels [/B]on your first [B]Army Commander[/B].[LI][B]+20% [/B]Commander experience.[LI][B]+1 science[/B] per age per army commander level. [LI][B]+3 combat strength[/B] in vegetated terrain.[/LIST]"
    WHERE Tag = 'LOC_TRAIT_LEADER_TRUNG_TRAC_ABILITY_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = "+3 Combat Strength in vegetated terrain"
    WHERE Tag = 'LOC_VEGETATED_COMBAT_STRENGTH_BBG';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Songhai
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = "+2 Resource Capacity in Cities and your Trade Ships cannot be Plundered on Navigable Rivers."
    WHERE Tag = 'LOC_CIVILIZATION_SONGHAI_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "[LIST][LI][B]+2 Resource Capacity[/B] in [B]Cities[/B] and your [B]Trade Ships [/B]cannot be [B]Plundered[/B] on [B]Navigable Rivers[/B].[LI][B]+30% [icon:YIELD_PRODUCTION] Production [/B]towards constructing the [B]Tomb of Askia[/B].[/LIST]"
    WHERE Tag = 'LOC_TRAIT_SONGHAI_ABILITY_DESCRIPTION';

    UPDATE LocalizedText
    SET Text = "Combat Units receive +5 Combat Strength on Navigable Rivers or Coastal tiles."
    WHERE Tag = 'LOC_MOD_HI_KOI_RIVER_COMBAT_DESCRIPTION';
    UPDATE LocalizedText
    SET Text = "+2 Movement to all Units on Navigable Rivers and Coast."
    WHERE Tag = 'LOC_TRADITION_ISA_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================