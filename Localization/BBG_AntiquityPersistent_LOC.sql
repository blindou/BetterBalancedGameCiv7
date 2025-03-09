-- --========================================================================================================================
-- -- Benjamin Franklin 
-- --========================================================================================================================
-- UPDATE LocalizedText
-- SET Text = '<Text>[LIST][LI][B]+1 [icon:YIELD_SCIENCE] Science [/B]per Age on [B]Production Buildings [/B]in Cities.[LI][B]+1 [icon:YIELD_SCIENCE] Science [/B]per Age from active [B]Endeavors [/B]you started or supported.[LI]Can have two [B]Endeavors [/B] of the same type active at a time.[/LIST]</Text>'
-- WHERE Tag = 'LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION';
-- --========================================================================================================================
-- --========================================================================================================================

--========================================================================================================================	
-- Machiavelli
-- REMOVED - +3 influence a turn on the palace
-- +25 / +50 gold when Diplomatic Action are accepted or declined  (from +50 / +100)
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]+3 [icon:YIELD_DIPLOMACY] Influence [/B]per Age.[LI]Gains [B]25 [icon:YIELD_GOLD] Gold [/B]per Age when your [B]Diplomatic Action [/B]proposals are [B]accepted[/B], or [B]50 [icon:YIELD_GOLD] Gold [/B]when they are [B]rejected[/B].[LI]Ignores [B]Relationship [/B]requirements for declaring [B]Formal Wars[/B].[LI]Can [B]Levy Troops [/B]from [B]City-States [/B]you are not Suzerain of.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_MACHIAVELLI_ABILITY_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '+3 [icon:YIELD_DIPLOMACY] Influence per Age. Gains 25 [icon:YIELD_GOLD] Gold per Age when your Diplomatic Action proposals are accepted, or 50 [icon:YIELD_GOLD] Gold when they are rejected. Ignores Relationship requirements for declaring Formal Wars. Can Levy Troops from City-States you are not Suzerain of.'
    WHERE Tag = 'LOC_LEADER_MACHIAVELLI_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Tecumseh
-- +2 food / +2 production per CS you are Suz of (from +1 food / +1 production)
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
-- +1 culture / +1 gold from imported resources (from +1 culture)
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+1 [icon:YIELD_CULTURE] Culture and +1 [icon:YIELD_GOLD] Gold for every imported Resource. +15% [icon:YIELD_PRODUCTION] Production towards constructing Buildings and Wonders in Cities adjacent to Navigable Rivers.'
    WHERE Tag = 'LOC_LEADER_HATSHEPSUT_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]+1 [icon:YIELD_CULTURE] Culture and +1 [icon:YIELD_GOLD] Gold [/B]for every imported [B]Resource[/B].[LI][B]+15% [icon:YIELD_PRODUCTION] Production [/B]towards constructing [B]Buildings [/B]and [B]Wonders [/B]in [B]Cities [/B]adjacent to [B]Navigable Rivers[/B].[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_HATSHEPSUT_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Isabella
-- Remove bonus gold from discovering natural wonders
-- Greatly increased spawn bias towards natural wonders	
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = '+100% tile yields from Natural Wonders. +50% [icon:YIELD_GOLD] Gold towards purchasing Naval Units. -1 [icon:YIELD_GOLD] Gold maintenance for Naval Units.'
    WHERE Tag = 'LOC_LEADER_ISABELLA_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI][B]+100% tile yields [/B]from [B]Natural Wonders[/B].[LI][B]+50% [icon:YIELD_GOLD] Gold [/B]towards purchasing [B]Naval Units[/B].[LI][B]-1 [icon:YIELD_GOLD] Gold [/B]maintenance for [B]Naval Units[/B].[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_ISABELLA_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Pachacuti 
-- +1 Food / +1 Production for buildings adjacent to mountains
--========================================================================================================================
    UPDATE LocalizedText
    SET Text = 'All Buildings receive a +1 [icon:YIELD_FOOD] Food Adjacency and +1 [icon:YIELD_PRODUCTION] Production Adjacency for Mountains. Specialists adjacent to Mountains pay no [icon:YIELD_HAPPINESS] Happiness maintenance.'
    WHERE Tag = 'LOC_LEADER_PACHACUTI_DESCRIPTION';   
    UPDATE LocalizedText
    SET Text = '[LIST][LI]All Buildings receive a [B]+1 [icon:YIELD_FOOD] Food Adjacency[/B] and [B]+1 [icon:YIELD_PRODUCTION] Production Adjacency[/B] for [B]Mountains[/B].[LI][B]Specialists [/B]adjacent to [B]Mountains [/B]pay no [icon:YIELD_HAPPINESS] [B]Happiness [/B]maintenance.[/LIST]'
    WHERE Tag = 'LOC_TRAIT_LEADER_PACHACUTI_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================	
-- Frederick’s  
-- Free units have +5 combat strength
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
-- +5 combat strength for siege class units
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
-- Add new tradition usable in exploration and modern (after playing egypt in antiquity) for +2 prod to navigable rivers
-- ========================================================================================================================
	INSERT OR REPLACE INTO LocalizedText
		(Tag,				Language,	Text)
	VALUES	('LOC_NILE_LEGACY_DESCRIPTION', 'en_US',	'+2[icon:YIELD_PRODUCTION] Production on Navigable Rivers.');

	INSERT OR REPLACE INTO LocalizedText
		(Tag,				Language,	Text)
	VALUES	('LOC_NILE_LEGACY_NAME',	'en_US',	'Nile Legacy');
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
    SET Text = "Scout's Search and Lookout abilities gain +2 sight."
    WHERE Tag = 'LOC_MEMENTO_FOUNDATION_IMAGO_MUNDI_FUNCTIONAL_DESCRIPTION';

    UPDATE LocalizedText 
    SET Text = 'If you have 3 or more Unique Buildings and Improvements, they each provide +1 [ICON_Culture] Culture and +1 [ICON_Gold] Gold.'
    WHERE Tag = 'LOC_MEMENTO_CHALCEDONY_SEAL_FUNCTIONAL_DESCRIPTION';

    UPDATE LocalizedText 
    SET Text = '+1 Movement and Sight for Merchants and Settlers.'
    WHERE Tag = 'LOC_MEMENTO_BATTUTA_MERCHANTS_SADDLE_FUNCTIONAL_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================