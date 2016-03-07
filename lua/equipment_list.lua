-- #textdomain "wesnoth-Bad_Moon_Rising"
local _ = wesnoth.textdomain "wesnoth-Bad_Moon_Rising"
local equipment_list = {}
local the_list = {}
--local the_filter = {}
local list_usage = {}
equipment_list.the_list = the_list
--equipment_list.the_filter = the_filter
equipment_list.list_by_name = {}
equipment_list.list_usage = list_usage

table.insert(list_usage, {
    types = {
    "Ukian Runner", "Ukian Courrier", "Ukian Commando", "Orcish Slinger", "Orcish Hunter", "Orcish Stalker", "Orcish Drifter", "Orcish Wanderer", "Orcish Vagrant", "Orcish Vagrant2", "Orcish Traveler", "Ukian Seeress", "Ukian Witch", 
    "Ukian Regular", "Ukian Veteran", "Ukian Signalman", "Ukian Subcommander", "Ukian Commander", "Ukian Flareman", "Ukian Officer", "Belleros", "Belleros_Officer", "Orcish Serf", "Orcish Foreman", 
    "Orcish Overseer", "Orcish Fireline", "Orcish Firebreather", "Orcish Grunt", "Orcish Warrior", "Orcish Warrior2", "Orcish Warlord", "Ukian Archer", "Ukian Hawkeye", "Ukian Deadeye", "Orcish Archer", "Orcish Crossbowman", 
    "Orcish Slurbow", "Orcish Rider", "Orcish Cavalry", "Orcish Destrier", "Orcish Raider", "Orcish Terror",
    "Orcish Cleverman", "Orcish RimeRunner", "Orcish SnowWalker", "Orcish IceStalker", "Great Orc", "Orcish Juggernaught",
    "Spearman", "Swordsman", "Pikeman" ,"Javelineer", "Royal Guard", "Halberdier", "General", "Thug",
    "Horseman", "Lancer", "Knight", "Paladin", "Grand Knight", "Cavalryman", "Dragoon", "Cavalier",
    "Heavy Infantryman","Shock Trooper","Iron Mauler",
    "Revenant", "Draug", "Death Knight",
    "Bowman", "Longbowman", "Master Bowman",
    "Thief","Rogue","Assassin",
    "Red Mage", "Arch Mage", "Silver Mage", "Great Mage", 
    "Northern Soldier", "Northern Fighter", "Northern Ranger", "Northern Elite",
    "Royal Spotter", "Royal Herdsman", "Royal Rider", "Royal Thrower", "Royal FireKnight",
    "Phantom Cloak", "Phantom Shadow", "Phantom Master", "Phantom Rider", "Phantom Horseman", "Phantom Dullohan", "Phantom Slayer", "Phantom Spearman", 
    "Phantom Soldier", "Phantom Officer", "Phantom Knight", "Phantom Queen", "Phantom King",
    "Primevalist Fighter", "Primevalist Fanatic", "Primevalist Shield", "Primevalist Shield_High", "Primevalist Leader",
    "Primevalist Follower", "Primevalist Monk", "Primevalist Celebrant", "Primevalist Prior",
    "Carusoe", "Carusoe2", "Bad Raenna", "Raenna", "Dark Messiah", "Huric", "Hrala"
    },
    usage = "all"
})
table.insert(list_usage, {
    types = {"Orcish Serf", "Orcish Foreman", "Orcish Slinger", "Orcish Hunter", "Orcish Stalker", "Orcish Drifter", "Orcish Wanderer", "Orcish Vagrant", "Orcish Traveler",  
    "Orcish Overseer", "Orcish Fireline", "Orcish Firebreather", "Orcish Grunt", "Orcish Warrior", "Orcish Warlord", "Orcish Archer", "Orcish Crossbowman", "Orcish Raider", "Orcish Terror", 
    "Orcish Cleverman", "Orcish RimeRunner", "Great Orc", "Orcish Juggernaught",
    "Orcish Slurbow", "Orcish Rider", "Orcish Cavalry", "Orcish Destrier", "Hrala"},
    usage = "orcish"
})
table.insert(list_usage, {
    types = {"Ukian Runner", "Ukian Courrier", "Ukian Commando", "Orcish Slinger", "Orcish Hunter", "Orcish Stalker", "Orcish Drifter", "Orcish Wanderer", "Orcish Vagrant", "Orcish Traveler", "Ukian Seeress", "Ukian Witch", 
    "Orcish Cleverman", "Orcish RimeRunner", "Orcish SnowWalker", "Orcish IceStalker",
    "Red Mage", "Arch Mage", "Silver Mage", "Great Mage", "Dark Messiah",
    "Phantom Cloak", "Phantom Shadow", "Phantom Master","Phantom Widow","Phantom Midnight","Phantom White","Phantom Banshee",
    "Primevalist Follower", "Primevalist Monk", "Primevalist Celebrant", "Primevalist Prior",
    "Ukian Archer", "Ukian Hawkeye", "Ukian Deadeye", "Raenna", "Bad Raenna", "Orcish Archer", "Orcish Crossbowman", "Orcish Slurbow", "Hrala"},
    usage = "amulet"
})
table.insert(list_usage, {
    types = {"Ukian Regular", "Ukian Veteran", "Ukian Signalman", "Ukian Subcommander", "Ukian Commander", "Ukian Flareman", "Ukian Officer", "Belleros", "Belleros_Officer", "Orcish Serf", "Orcish Foreman", 
    "Primevalist Fighter", "Primevalist Fanatic", "Primevalist Shield", "Primevalist Shield_High", "Primevalist Leader",
    "Ukian Courrier", "Ukian Commando", "Orcish Slinger", "Orcish Hunter", "Orcish Stalker", "Orcish Traveler", "Orcish Overseer", "Orcish Fireline", "Orcish Firebreather", "Orcish Grunt", "Orcish Warrior", "Orcish Warlord", 
    "Spearman", "Swordsman", "Pikeman" ,"Javelineer", "Royal Guard", "Halberdier", "General",
    "Horseman", "Lancer", "Knight", "Paladin", "Grand Knight", "Cavalryman", "Dragoon", "Cavalier",
    "Bowman", "Longbowman", "Master Bowman",
    "Orcish SnowWalker", "Orcish IceStalker", "Great Orc", "Orcish Raider", "Orcish Terror",
    "Northern Soldier", "Northern Fighter", "Northern Ranger", "Northern Elite",
    "Primevalist Fighter", "Primevalist Fanatic", "Primevalist Shield", "Primevalist Shield_High", "Primevalist Leader",
    "Ukian Hawkeye", "Ukian Deadeye", "Raenna", "Orcish Archer", "Orcish Crossbowman", "Orcish Slurbow", "Orcish Rider", "Orcish Cavalry", "Orcish Destrier",
    "Carusoe", "Carusoe2", "Bad Raenna", "Raenna", "Dark Messiah", "Huric"
    },
    usage = "light_armor"
})
table.insert(list_usage, {
    types = {"Ukian Veteran", "Ukian Signalman", "Ukian Subcommander", "Ukian Commander", "Ukian Flareman", "Ukian Officer", "Belleros", "Belleros_Officer", "Orcish Foreman", 
    "Northern Soldier", "Northern Fighter", "Northern Ranger", "Northern Elite",
    "Horseman", "Lancer", "Knight", "Paladin", "Grand Knight", "Cavalryman", "Dragoon", "Cavalier",
    "Orcish Overseer", "Orcish Fireline", "Orcish Firebreather", "Orcish Warrior", "Orcish Warlord", "Orcish Rider", "Orcish Cavalry", "Orcish Destrier",
    "Orcish SnowWalker", "Orcish IceStalker", "Great Orc",
    "Heavy Infantryman","Shock Trooper","Iron Mauler",
    "Royal Guard", "Halberdier","Huric"},
    usage = "heavy_armor"
})
table.insert(list_usage, {
    types = {"Ukian Regular", "Ukian Veteran", "Ukian Subcommander", "Ukian Commander", "Ukian Officer", "Belleros", "Belleros_Officer", 
    "Orcish Foreman", "Orcish Overseer", "Huric", "Orcish Juggernaught", 
    "Cavalryman", "Dragoon", "Cavalier",
    "Revenant", "Draug",
    "Phantom Spearman", "Phantom Soldier", "Phantom Officer"},
    usage = "shield"
})
table.insert(list_usage, {
    types = {"Ukian Archer", "Ukian Hawkeye", "Ukian Deadeye", "Raenna", "Orcish Archer", "Orcish Crossbowman", "Orcish Slurbow", "Bowman", "Longbowman", "Master Bowman"},
    usage = "bow"
})
table.insert(list_usage, {
    types = {"Ukian Subcommander", "Ukian Commander", "Ukian Officer", "Belleros", "Belleros_Officer", "Orcish Grunt", "Orcish Warrior", "Orcish Warlord", "Ukian Hawkeye", "Ukian Deadeye", "Raenna", "Orcish Crossbowman", 
    "Primevalist Fighter", "Primevalist Fanatic", "Primevalist Shield", "Primevalist Shield_High", "Primevalist Leader",
    "Orcish Slurbow", "Orcish Rider", "Orcish Cavalry", "Orcish Destrier", "Great Orc",
    "Northern Soldier", "Northern Fighter", "Northern Ranger", "Northern Elite",
    "Carusoe", "Carusoe2", "Bad Raenna", "Huric"},
    usage = "sword"
})
table.insert(list_usage, {
    types = {"Ukian Signalman", "Ukian Flareman", "Orcish Serf", "Orcish Foreman", 
    "Orcish Overseer", "Orcish Fireline", "Orcish Firebreather", "Great Orc"},
    usage = "axe"
})
table.insert(list_usage, {
    types = {"Ukian Regular", "Ukian Veteran", "Ukian Runner", "Ukian Courrier", "Ukian Commando",
    "Spearman", "Javelineer", "Pikeman", "Halberdier", 
    "Carusoe", "Carusoe2", 
    "Orcish SnowWalker", "Orcish IceStalker"},
    usage = "spear"
})
table.insert(list_usage, {
    types = {"Ukian Dog", "Ukian Harrier", "Ukian War Hound", "Ukian Attack Dog", "Wolf Rider", "Goblin Knight", "Goblin Pillager", "Direwolf Rider", "Hunting_Hound"},
    usage = "dog"
})
table.insert(list_usage, {
    types = {"Phantom Cloak", "Phantom Shadow", "Phantom Master", "Phantom Rider", "Phantom Horseman", "Phantom Dullohan", "Phantom Slayer", "Phantom Spearman", "Phantom Soldier", "Phantom Officer", "Phantom Knight", "Phantom Queen", "Phantom King"},
    usage = "despair"
})


local regenerate_effect = {"effect", { apply_to = "new_ability",  {"abilities", { { "regenerate", { value=8, id= "regenerates", name= _ "regenerates", female_name= _ "female^regenerates", description= _ "The unit will heal itself 8 HP per turn. If it is poisoned, it will remove the poison instead of healing.", affect_self="yes", poison= "cured" }}}}}}
local regenerate_neg_effect = {"effect", {apply_to = "remove_ability", {"abilities", {{"regenerate", { id = "regenerates"}}}}}}

local skirmisher_effect = {"effect", { apply_to = "new_ability",  {"abilities", { { "skirmisher", { id= "skirmisher", name= _ "skirmisher", female_name= _ "female^skirmisher", description= _ "This unit is skilled in moving past enemies quickly, and ignores all enemy Zones of Control.", affect_self="yes"}}}}}}
local skirmisher_neg_effect = {"effect", {apply_to = "remove_ability", {"abilities", {{"skirmisher", { id = "skirmisher"}}}}}}

local unpoison_effect = {"effect", { apply_to = "new_ability",  {"abilities", { { "heals", { id= "curing", name= _ "cures", female_name= _ "female^cures", description= _ "A curer can cure a unit of poison.", affect_enemies = "yes", affect_allies = "yes", affect_self="yes", poison = "cured", {"affect_adjacent", { adjacent = "n,ne,se,s,sw,nw" }} }}}}}}
local unpoison_neg_effect = {"effect", {apply_to = "remove_ability", {"abilities", {{"heals", { id = "curing"}}}}}}

local unpoison_effect2 = {"effect", { apply_to = "new_ability",  {"abilities", { { "heals", { id= "lesser_curing", name= _ "self-cures", female_name= _ "female^self-cures", description= _ "A self-curer can cure a self of poison.", affect_enemies = "no", affect_allies = "no", affect_self="yes", poison = "cured"  }}}}}}
local unpoison_neg_effect2 = {"effect", {apply_to = "remove_ability", {"abilities", {{"heals", { id = "lesser_curing"}}}}}}

local shadow_effect = {"effect", { apply_to = "new_ability", {"abilities", { { "hides", { id="nightstalk", name= _ "nightstalk", female_name= _ "female^nightstalk", description= _ "The unit becomes invisible during night. Enemy units cannot see this unit at night, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.", 
	name_inactive= _ "nightstalk", female_name_inactive= _ "female^nightstalk", description_inactive= _ "The unit becomes invisible during night.  Enemy units cannot see this unit at night, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.", affect_self="yes", {"filter", {{ "filter_location", {time_of_day="chaotic"}}}} }}}}}}
local shadow_neg_effect = {"effect", {apply_to = "remove_ability", {"abilities", {{"hides", { id = "nightstalk"}}}}}}
	
                                
                
--[[ 
there are 8 positions (used to be nine): 1. head, 2. shield, 3. ring, 4. cloak. 5. amulet, 6. torso, 7. greaves(old) + foot-> foot, 8. weapon
(for dogs only: 1. neck)

]]--

------------ helmets--------------
table.insert(the_list, {
	eq_effect = { name = "cap_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -2}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "1"}} 
	            },
	-- this is kind of stupid, but I don't know how else to do it
	neg_eq_effect = { name = "n_cap_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 2}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "-1"}} 
	            },
        name = _ "Padded Cap",
	id = "cap_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a very basic covering for the head. While it offers only minimal protection, it is not cumbersome, and almost anyone can use it. Bonus: + 2 impact resistance, + 1 HP",
        image = "icons/helmet_leather_cap.png",
        icon = "items/leather_cap.png",
	cost = 25,
	usage = "all",
	position = "head"
	
})
table.insert(the_list, {
	eq_effect = { name = "fur_hat", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {cold = -6}}}} 
	            },
	neg_eq_effect = { name = "n_fur_hat", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {cold = 6}}}}
	            },
        name = _ "Fur Hat",
	id = "fur_hat",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a warm fur hat. While it offers only minimal protection, it is not cumbersome, and almost anyone can use it. Bonus: + 6 cold resistance",
        image = "icons/fur_hat.png",
        icon = "items/fur_hat.png",
	cost = 30,
	usage = "all",
	position = "head"
	
})
table.insert(the_list, {
	eq_effect = { name = "light_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -5}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "2"}} 
	            },
	neg_eq_effect = { name = "n_light_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 5}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "-2"}} 
	            },
        name = _ "Light Helmet",
	id = "light_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a very basic, inexpensive helmet, but it still provides some layer of steel to cover the scalp.  Bonus: + 5 impact resistance, + 2 HP",
        image = "icons/helmet_conical.png",
        icon = "items/helmet3.png~CS(-20,-10,0)",
	cost = 45,
	usage = "light_armor",
	position = "head"
	
})
table.insert(the_list, {
	eq_effect = { name = "steel_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -10}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "4"}} },
	neg_eq_effect = { name = "n_steel_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 10}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "-4"}} },
        name = _ "Steel Helmet",
	id = "steel_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a well-made, open-faced helmet.  It provides no protection for the face or neck, but the scalp is well protected. Bonus: + 10 impact resistance, + 4 HP",
        image = "icons/helmet_shiny.png",
        icon = "items/helmet3.png",
	cost = 80,
	usage = "light_armor",
	position = "head"
})
table.insert(the_list, {
	eq_effect = { name = "chain_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -8, blade = -3}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "5"}} },
	neg_eq_effect = { name = "n_chain_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 8, blade = 3}}}}, 
	              {"effect", { apply_to = "hitpoints", increase_total = "-5"}} },
        name = _ "Chain Coif",
	id = "chain_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a chain-mail hood, it provides protection for the scalp and neck.  Bonus: + 8 impact resistance, +3 blade resistance, + 4 HP",
        image = "icons/helmet_chain-coif.png",
        icon = "items/coif.png",
	cost = 95,
	usage = "light_armor",
	position = "head"
})
table.insert(the_list, {
	eq_effect = { name = "crest_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -12, blade = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "6"}} },
	neg_eq_effect = { name = "n_crested_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 12, blade = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-6"}} },
        name = _ "Crested Helmet",
	id = "crested_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a standard issue helmet for the professional warrior class of Weldyn.  It provides protection for the neck, and some minimal protection for the eyes.  Bonus: + 12 impact resistance, + 5 blade resistance, + 6 HP",
        image = "icons/helmet_crested.png",
        icon = "items/helmet1.png~CS(10,10,10)",
	cost = 120,
	usage = "heavy_armor",
	position = "head"

})
table.insert(the_list, {
	eq_effect = { name = "bascinet_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -15, blade = -10, pierce = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "8"}} },
	neg_eq_effect = { name = "n_bascinet_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 15, blade = 10, pierce = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-8"}} },
        name = _ "Bascinet",
	id = "bascinet_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is the helmet worn by nobles and kings, as well as their trusted guards.  It provides complete protection for the head and face.  Bonus: + 15 impact resistance, + 10 blade resistance, + 5 pierce resistance, + 8 HP",
        image = "icons/helmet_bascinet.png",
        icon = "items/helmet1.png",
	cost = 155,
	usage = "heavy_armor",
	position = "head"
})
table.insert(the_list, {
	eq_effect = { name = "great_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -20, blade = -15, pierce = -15}}}}, {"effect", { apply_to = "hitpoints", increase_total = "10"}} },
	neg_eq_effect = { name = "n_great_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 20, blade = 15, pierce = 15}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-10"}} },
        name = _ "Great Helm",
	id = "great_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is an older design of helmet used, still used by some kings and knights.  It is sturdier, but more restricting than the bascinet, so while stronger against blunt-force trauma, it offers less protection against attacks to the neck.  Bonus: + 20 impact resistance, + 5 blade resistance, + 5 pierce resistance, + 10 HP",
        image = "icons/helmet_great.png",
        icon = "items/helmet2.png~CS(-20,-20,0)",
	cost = 160,
	usage = "heavy_armor",
	position = "head"
})
table.insert(the_list, {
	eq_effect = { name = "frog_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -30, blade = -20, pierce = -15, fire = 20}}}}, {"effect", { apply_to = "hitpoints", increase_total = "12"}} },
	neg_eq_effect = { name = "n_frog_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 30, blade = 20, pierce = 15, fire = -20}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-12"}} },
        name = _ "Trooper Helmet",
	id = "frog_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This is a heavy helmet that is sometimes used by elite fighters.  It offers superior protection for the head and neck, but it is heavy, restricting, and stuffy, making the wearer more vulnerable to heat-stroke.  Effect: + 30 impact resistance, + 20 blade resistance, + 15 pierce resistance, + 10 HP; -20 fire resistance",
        image = "icons/helmet_frogmouth.png",
        icon = "items/helmet4.png",
	cost = 200,
	usage = "heavy_armor",
	position = "head"
})
table.insert(the_list, {
	eq_effect = { name = "ancient_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -25, blade = -10, arcane = -5, fire = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "12"}} },
	neg_eq_effect = { name = "n_ancient_helmet", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 25, blade = 10, arcane = 5, fire = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-12"}} },
        name = _ "Ancient Helmet",
	id = "ancient_helmet",
        tooltip = _ "all helmets offer impact resistance",
        text = _ "This heavy, ancient helmet is not for everyone.  It provides excellent protection for the head, but the neck is often exposed to slim blades or arrows.  Aside from its obvious benefits and shortcomings, there is something about this object, that is difficult to describe to one not holding it.  Bonus: + 25 impact resistance, + 10 blade resistance, + 12 HP",
        image = "icons/helmet_corinthian.png",
        icon = "items/helmet2.png~CS(10,-10,-20)",
	cost = 235,
	usage = "heavy_armor",
	position = "head"
})
------------------shields-----------------------------
table.insert(the_list, {
	eq_effect = { name = "rusty_targ", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -5, blade = -5, arcane = 10, fire = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "2"}} },
	neg_eq_effect = { name = "n_rusty_targ", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 5, blade = 5, arcane = -10, fire = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-2"}} },
        name = _ "Ancient Targ",
	id = "rusty_targ",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This ancient shield is of a type that can frequently be found in the northlands.  It's not clear who made them, but all scavengers find them useful.  Bonus: + 5 impact resistance, + 5 blade resistance, -10 arcane resistance, + 5 fire resistance, + 2 HP",
        image = "icons/rusty_targ.png",
        icon = "items/buckler.png~CS(-30,-10,-10)",
	cost = 15,
	usage = "shield",
	position = "shield"
})
table.insert(the_list, {
	eq_effect = { name = "wooden_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -5, blade = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "2"}} },
	neg_eq_effect = { name = "n_wooden_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 5, blade = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-2"}} },
        name = _ "Wooden Shield",
	id = "wooden_shield",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This is a basic wooden shield.  Nothing fancy but still provides some protection.  Bonus: + 5 impact resistance, + 5 blade resistance, + 2 HP",
        image = "icons/shield_wooden.png",
        icon = "items/shield-targ.png~CS(30,10,-10)",
	cost = 20,
	usage = "shield",
	position = "shield"
})
table.insert(the_list, {
	eq_effect = { name = "orc_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -5, blade = -5, pierce = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "3"}} },
	neg_eq_effect = { name = "n_orc_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 5, blade = 5, pierce = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-3"}} },
        name = _ "Orcish Shield",
	id = "orc_shield",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This shield is made from bronze and wood, crudely made but still effective.  Bonus: + 5 impact resistance, + 5 blade resistance, + 5 pierce resistance, + 3 HP",
        image = "icons/orc_roundshield.png",
        icon = "items/buckler.png~CS(20,-10,-10)",
	cost = 25,
	usage = "shield",
	position = "shield"
})
table.insert(the_list, {
	eq_effect = { name = "silver_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -5, blade = -5, arcane = -10, fire = -10}}}}, {"effect", { apply_to = "hitpoints", increase_total = "5"}} },
	neg_eq_effect = { name = "n_silver_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 5, blade = 5, arcane = 10, fire = 10}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-5"}} },
        name = _ "Silver Shield",
	id = "silver_shield",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This is shiny shield is small but sturdy and has a brilliant aura.  Bonus: + 5 impact resistance, + 5 blade resistance, +10 arcane resistance, + 10 fire resistance, + 5 HP",
        image = "icons/silver_buckler.png",
        icon = "items/buckler.png~CS(20,40,60)",
	cost = 90,
	usage = "shield",
	position = "shield"
})
table.insert(the_list, {
	eq_effect = { name = "iron_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -10, blade = -10, pierce = -10, fire = -5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "7"}} },
	neg_eq_effect = { name = "n_iron_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 10, blade = 10, pierce = 10, fire = 5}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-7"}} },
        name = _ "Iron Shield",
	id = "iron_shield",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This is a heavy iron shield, not for everyone..  Bonus: + 10 impact resistance, + 10 blade resistance, + 10 pierce, + 5 fire resistance, + 7 HP",
        image = "icons/shield_steel.png~CS(-10,-30,-10)",
        icon = "items/shield-iron.png",
	cost = 70,
	usage = "shield",
	position = "shield"
})
table.insert(the_list, {
	eq_effect = { name = "door_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -25, blade = -20, pierce = -30, fire = -10}}}}, {"effect", { apply_to = "movement", increase = "-1"}}, {"effect", { apply_to = "hitpoints", increase_total = "10"}} },
	neg_eq_effect = { name = "n_door_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 25, blade = 20, pierce = 30, fire = 10}}}}, {"effect", { apply_to = "movement", increase = "1"}}, {"effect", { apply_to = "hitpoints", increase_total = "-10"}} },
        name = _ "Door Shield",
	id = "door_shield",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This is a very heavy, tall, rectangular shield that offers superior protection, but is quite awkward to carry.  Bonus: + 25 impact resistance, + 20 blade resistance, + 30 pierce, + 10 fire resistance; + 10 HP.  Penalty: -1 Movepoints",
        image = "icons/shield_steel.png~CS(-10,-30,-10)",
        icon = "items/shield-door.png",
	cost = 150,
	usage = "shield",
	position = "shield"
})
table.insert(the_list, {
	eq_effect = { name = "mirror_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = -5, pierce = -10, fire = -50}}}}, {"effect", { apply_to = "hitpoints", increase_total = "7"}} },
	neg_eq_effect = { name = "n_mirror_shield", {"effect", { apply_to = "resistance", replace = "no", {"resistance", {impact = 5, pierce = 10, fire = 50}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-7"}} },
        name = _ "Mirror Shield",
	id = "mirror_shield",
        tooltip = _ "all shields offer impact resistance",
        text = _ "This shield deflects the damaging energy of fire attacks. It also tends to make pierce attacks slide off harmlessly.  Bonus: + 5 impact resistance, + 10 pierce, + 50 fire resistance, + 7 HP",
        image = "icons/shield_polished.png~GS()",
        icon = "misc/reflector-shield.png",
	cost = 270,
	usage = "shield",
	position = "shield"
})
----------------- cloaks -------------------------------
table.insert(the_list, {
	eq_effect = { name = "fur_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -5}}}} },
	neg_eq_effect = {  name = "n_fur_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 5}}}} },
        name = _ "Fur Cloak",
        id = "fur_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This animal fur cloak keeps out the snow and rain, and provides some insulation against the cold winds.  Bonus: + 5 cold resistance",
        image = "icons/cloak_leather_brown.png",
        icon = "items/cloak-green.png~CS(10,-30,-10)",
	cost = 30,
	usage = "all",
	position = "cloak"
})
table.insert(the_list, {
	eq_effect = { name = "elf_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -5, pierce = -8}}}} },
	neg_eq_effect = { name = "n_elf_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 5, pierce = 8}}}} },
        name = _ "Elven Cloak",
        id = "elf_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This cloak is a thin, dark leather.  The woodland elves wear this because it is a cost-effective protection against the cold, as well as the slight piercings of the thorns and bramble.  Bonus: +5 cold resistance, +8 pierce resistance",
        image = "icons/cloak_leather_brown.png~CS(-20,15,-30)",
        icon = "items/cloak-green.png",
	cost = 38,
	usage = "all",
	position = "cloak"
	
})
table.insert(the_list, {
	eq_effect = { name = "orc_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -10, pierce = -5, impact = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_orc_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 10, pierce = 5, impact = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Orcish Cloak",
        id = "orc_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This is a great-cloak worn by the wiser or powerful orcs.  The orcs have refused to divulge the source of the hide, but although it is crude, the hide is thick, and the fur is nearly impenetrable to claws or thorns.  It is quite a treasure for anyone who must live in the frozen north.  Bonus: +10 cold resistance, +5 pierce and impact resistance, +2 HP",
        image = "icons/cloak_orc.png",
        icon = "items/cloak-green.png~CS(30,-60,-40)",
	cost = 45,
	usage = "all",
	position = "cloak"
	
})
table.insert(the_list, {
	eq_effect = { name = "silver_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -10, fire = -15, pierce = -5, blade = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_silver_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 10, fire = 15, pierce = 5, blade = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Silver Cloak",
        id = "silver_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This cloak is of a material that is far beyond anything Weldyn, Knalga, or Wesmere can produce.  It is metallic, yet very light, and seems to whisk away the hot or cold.  Bonus: +10 cold resistance, +15 fire resistance, +5 pierce resistance, +5 blade resistance, +2 HP",
        image = "icons/cloak_silver.png",
        icon = "items/cloak-green.png~GS()",
	cost = 145,
	usage = "all",
	position = "cloak"
	
})
table.insert(the_list, {
	eq_effect = { name = "ancient_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -5}}}} , {"effect", { apply_to = "movement", increase = "1"}}},
	neg_eq_effect = { name = "n_ancient_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 5}}}} , {"effect", { apply_to = "movement", increase = "-1"}}},
        name = _ "Ancient Cloak",
        id = "ancient_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This cloak is of a material that is far beyond anything Weldyn, Knalga, or Wesmere can produce.  It is some very light material, air seems to glide right over it.  Bonus: +5 cold resistance, + 1 Movement",
        image = "icons/cloak_leather_brown.png~CS(10,-45,35)",
        icon = "items/cloak-green.png~CS(30,-60,30)",
	cost = 135,
	usage = "all",
	position = "cloak"
	
})
table.insert(the_list, {
	eq_effect = { name = "death_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -10, arcane = 20}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-10"}}, shadow_effect},
	neg_eq_effect = { name = "n_death_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 10, arcane = -20}}}} , {"effect", { apply_to = "hitpoints", increase_total = "10"}}, shadow_neg_effect},
--	eq_effect = { name = "death_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -10, arcane = 20}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-10"}}, shadow_effect},
--	neg_eq_effect = { name = "n_death_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 10, arcane = -20}}}} , {"effect", { apply_to = "hitpoints", increase_total = "10"}}, shadow_neg_effect},
        name = _ "Death Cloak",
        id = "death_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This fetid black cloak looks like something pulled out of the ground.  There is something unworldly about it, a sinister power.  Bonus: +10 cold resistance; nightstalk ability.  Penalty: -10 HP; -20 arcane resistance",
        image = "icons/cloak_black.png~CS(10,15,-5)",
        icon = "items/cloak-green.png~CS(-60,-60,-60)",
	cost = 45,
	usage = "all",
	position = "cloak"
	
})
table.insert(the_list, {
	eq_effect = { name = "black_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -50}}}} , {"effect", { apply_to = "hitpoints", increase_total = "5"}}, shadow_effect},
	neg_eq_effect = { name = "n_black_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 50}}}} , {"effect", { apply_to = "hitpoints", increase_total = "5"}}, shadow_neg_effect},
        name = _ "Black Cloak",
        id = "black_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "There is something unworldly about this inky black, a sinister power.  It is like holding a shadow.  Attempts to wear it usually meet with frustration, however, because it is not meant for the living.  Bonus: +50 cold resistance; nightstalk ability; +5 HP",
        image = "icons/cloak_black.png",
        icon = "items/cloak-green.png~CS(-80,-80,-10)",
	cost = 65,
	usage = "despair",
	position = "cloak"
	
})
table.insert(the_list, {
	eq_effect = { name = "mage_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = -5, fire = -5, arcane = -5, pierce = -5, blade = -5}}}} , {"effect", { apply_to = "attack", range = "ranged", increase_damage = "1"}}},
	neg_eq_effect = { name = "n_mage_cloak", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {cold = 5, fire = 5, arcane = 5, pierce = 5, blade = 5}}}} , {"effect", { apply_to = "attack", range = "ranged", increase_damage = "-1"}}},
        name = _ "Mage Cloak",
        id = "mage_cloak",
        tooltip = _ "all cloaks provide some cold resistance",
        text = _ "This cloak was brought up from the South, it is fine threads with fine gold wires interwoven into strange symbols that have some meaning to the Mages, but almost no one in the frozen North can understand them. Bonus: +5 cold, fire, arcane, blade, and pierce resistance, + 1 ranged damage",
        image = "icons/cloak_red.png",
        icon = "items/cloak-green.png~CS(80,-60,-30)",
	cost = 265,
	usage = "amulet",
	position = "cloak"
	
})
------- rings ----------------------
table.insert(the_list, {
	eq_effect = { name = "stone_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -3, fire = -3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "1"}}},
	neg_eq_effect = { name = "stone_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 3, fire = 3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-1"}}},
        name = _ "Stone Ring",
        id = "stone_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This crude ring has familiar runes carved into the inner surface.  It's quite likely that this offers very little protection, but every little bit helps.  Bonus: +3 arcane resistance, +3 fire resistance, +1 HP",
        image = "icons/stone_ring.png",
        icon = "items/ring-white.png",
	cost = 38,
	usage = "amulet",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "steel_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -10, fire = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_steel_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 10, fire = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Steel Ring",
        id = "steel_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This steel ring has been blessed by the local mystic or holyman or priest, or whatever you wish to call them.  Many would be skeptical that there is any merit in that, but over time, it has been shown that the blessing does make a difference.  Bonus: +10 arcane resistance, +5 fire resistance, +2 HP",
        image = "icons/ring_gold.png~GS()",
        icon = "items/ring-silver.png",
	cost = 45,
	usage = "amulet",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "gold_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -15, fire = -10, cold = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "3"}}},
	neg_eq_effect = { name = "n_gold_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 15, fire = 10, cold = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-3"}}},
        name = _ "Gold Ring",
        id = "gold_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This gold ring is quite common amongst those who can afford it.  No one would claim that the runes are nonsense.  Bonus: +15 arcane resistance, +10 fire resistance, +5 cold resistance, +3 HP",
        image = "icons/ring_gold.png",
        icon = "items/ring-gold.png",
	cost = 95,
	usage = "amulet",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "dark_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {fire = -15, cold = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_dark_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {fire = 15, cold = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Dark Ring",
        id = "dark_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This dark ring is made from some dark metal that cannot be polished to a bright luster, and it is always cold to the touch.  Bonus: +15 fire resistance, +5 cold resistance, +2 HP",
        image = "icons/ring_dark.png",
        icon = "items/ring-black.png~CS(5,-5,0)",
	cost = 55,
	usage = "amulet",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "crystal_ring", {"effect", { apply_to = "hitpoints", increase_total = "2"}}, unpoison_effect
	},
	neg_eq_effect = { name = "n_crystal_ring", {"effect", { apply_to = "hitpoints", increase_total = "-2"}}, unpoison_neg_effect
	},
        name = _"Crystal Ring",
        id = "crystal_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This ring has a clear gemstone that shines with an inner light.  Bonus: Cures poison on self and all adjacent, +2 HP",
        image = "icons/jewelry_ring_prismatic.png",
        icon = "items/ring-silver.png",
	cost = 145,
	usage = "amulet",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "skull_ring", {"effect", { apply_to = "hitpoints", increase_total = "-5"}}, {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 10, fire = -15, cold = -50}}}},
		{"effect", { apply_to = "status", add = "unpoisonable"}}, {"effect", {apply_to = "status", add = "undrainable"}}, 
		{"effect", {apply_to = "status", add = "unplagueable"}}, {"effect", {apply_to = "status", add = "unhealable"}}, 
		{"effect", {apply_to = "status", add = "not_living"}},
		{"effect", {apply_to = "image_mod", replace = "~CS(-15,-10,-5)"}}
	},
	neg_eq_effect = { name = "n_skull_ring", {"effect", { apply_to = "hitpoints", increase_total = "5"}}, {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -10, fire = 15, cold = 50}}}},
		{"effect", { apply_to = "status", remove = "unpoisonable"}}, {"effect", {apply_to = "status", remove = "undrainable"}}, 
		{"effect", {apply_to = "status", remove = "unplagueable"}}, {"effect", {apply_to = "status", remove = "unhealable"}}, 
		{"effect", {apply_to = "status", remove = "not_living"}},
		{"effect", {apply_to = "image_mod", replace = ""}}
	},
        name = _ "Skull Ring",
        id = "skull_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This ring has a sinister-looking skull affixed to a dark metal base.  It's not clear that this is something you really want to wear.  Effects: Grants upoinsonable, unplagueable, undrainable, yet unhealable status; 10 percent arcane weakness; 15 percent fire and 50 percent cold resistance, -5 HP",
        image = "icons/skull_ring.png",
        icon = "items/ring-black.png",
	cost = 15,
	usage = "all",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "ancient_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -5, fire = -5, cold = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "3"}}, regenerate_effect
--	{"effect", { apply_to = "new_ability",  {"abilities", { { "regenerate", { value=8, id= "regenerates", name= _ "regenerates", female_name= _ "female^regenerates", description= _ "The unit will heal itself 8 HP per turn. If it is poisoned, it will remove the poison instead of healing.", affect_self="yes", poison= "cured" }}}}}}
	},
	neg_eq_effect = { name = "n_ancient_ring", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 5, fire = 5, cold = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-3"}}, regenerate_neg_effect
--	{"effect", {apply_to = "remove_ability", {"abilities", {{"regenerate", { id = "regenerates"}}}}}}
	},
        name = _ "Ancient Ring",
        id = "ancient_ring",
        tooltip = _ "rings usually provide protection against the non-physical attacks",
        text = _ "This ancient ring has some sort of power that has kept it from rusting away over the ages.  Bonus: +5 arcane resistance, +5 fire resistance, +5 cold resistance, Regeneration Ability",
        image = "icons/ring_gold.png~CS(10,-20,-60)",
        icon = "items/ring-brown.png",
	cost = 195,
	usage = "amulet",
	position = "ring"
	
})
-- not really rings, but ...
table.insert(the_list, {
	eq_effect = { name = "leather_gloves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -3, fire = -3, cold = -3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "1"}}},
	neg_eq_effect = { name = "n_leather_gloves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 3, fire = 3, cold = 3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-1"}}},
        name = _ "Leather Gloves",
        id = "leather_gloves",
        tooltip = _ "protection for the hands",
        text = _ "These fine leather gloves provide some protection from the elements and minor cuts, without being too cumbersome.  Bonus: +3 blade, +3 cold, +3 fire resistances;  +1 hitpoints.",
        image = "icons/gloves.png",
        icon = "items/gloves.png",
	cost = 35,
	usage = "all",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "bronze_gloves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -5, blade = -5, fire = -3, cold = -3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_bronze_gloves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 5, blade = 5, fire = 3, cold = 3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Bronze Gauntlets",
        id = "bronze_gloves",
        tooltip = _ "protection for the hands",
        text = _ "These crude gauntlets are leather gloves with overlapping bronze plates on the knuckles and back.  They are simple but effective, considering how important your hands are.  Bonus: +5 blade, +5 impact, +3 cold, +3 fire resistances;  +2 hitpoints.",
        image = "icons/gauntlets-bronze.png",
        icon = "items/gauntlets1.png",
	cost = 65,
	usage = "light_armor",
	position = "ring"
	
})
table.insert(the_list, {
	eq_effect = { name = "steel_gloves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -7, impact = -6, fire = -5, cold = -3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "4"}}},
	neg_eq_effect = { name = "n_steel_gloves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 7, impact = 6, fire = 5, cold = 3}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-4"}}},
        name = _ "Steel Gauntlets",
        id = "steel_gloves",
        tooltip = _ "protection for the hands",
        text = _ "These gauntlets provide full metal protection for the hands and wrist, but they do interfere with normal movement, so they are not for everyone.  Bonus: +7 blade, +6 impact, +3 cold, +5 fire resistances;  +4 hitpoints.",
        image = "icons/gauntlets.png",
        icon = "items/gauntlets2.png",
	cost = 110,
	usage = "heavy_armor",
	position = "ring"
	
})
------------------------amulets-------------------------
table.insert(the_list, {
	eq_effect = { name = "tooth_charm", {"effect", { apply_to = "hitpoints", increase_total = "5"}}},
	neg_eq_effect = { name = "n_tooth_charm", {"effect", { apply_to = "hitpoints", increase_total = "-5"}}},
        name = _ "Fang Charm",
        id = "fang_charm",
        tooltip = _ "amulets can have special effects",
        text = _ "This fang of some large beast is believed by many to grant the wearer extra strength and vitality.  The effect is most likely psychological, but maybe it is real.  Anyone can use it.  Bonus: +5 hitpoints",
        image = "icons/fang_charm.png",
        icon = "items/fang_charm.png",
	cost = 75,
	usage = "all",
	position = "amulet"
	
})
table.insert(the_list, {
	eq_effect = { name = "vitality_charm", {"effect", { apply_to = "hitpoints", increase_total = "3"}}, regenerate_effect
--	{"effect", { apply_to = "new_ability",  {"abilities", { { "regenerate", { value=8, id= "regenerates", name= _ "regenerates", female_name= _ "female^regenerates", description= _ "The unit will heal itself 8 HP per turn. If it is poisoned, it will remove the poison instead of healing.", affect_self="yes", poison= "cured" }}}}}}
	},
	neg_eq_effect = { name = "n_vitality_charm", {"effect", { apply_to = "hitpoints", increase_total = "-3"}}, regenerate_neg_effect
--	{"effect", {apply_to = "remove_ability", {"abilities", {{"regenerate", { id = "regenerates"}}}}}}
	},
        name = _ "Vitality Charm",
        id = "vitality_charm",
        tooltip = _ "amulets can have special effects",
        text = _ "This odd amulet gives off a pleasant warmth, and seems to promote healing.  Bonus: Regeneration ability",
        image = "icons/jewelry_necklace_amber.png~CS(-10,-10,10)",
        icon = "misc/shock-charm.png",
	cost = 165,
	usage = "amulet",
	position = "amulet"
	
})
table.insert(the_list, {
	eq_effect = { name = "thief_charm", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -15, fire = -10, cold = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "3"}}, skirmisher_effect
--	{"effect", { apply_to = "new_ability",  {"abilities", { { "skirmisher", { id= "skirmisher", name= _ "skirmisher", female_name= _ "female^skirmisher", description= _ "This unit is skilled in moving past enemies quickly, and ignores all enemy Zones of Control.", affect_self="yes"}}}}}}
	},
	neg_eq_effect = { name = "n_thief_charm", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 15, fire = 10, cold = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-3"}}, skirmisher_neg_effect
--	{"effect", {apply_to = "remove_ability", {"abilities", {{"skirmisher", { id = "skirmisher"}}}}}}
	},
        name = _ "Thief Charm",
        id = "thief_charm",
        tooltip = _ "amulets can have special effects",
        text = _ "This amulet clouds the mind of those around the bearer, allowing the bearer to skirt around them.  Bonus: Skirmisher ability",
        image = "icons/jewelry_necklace_amber.png~CS(-30,-30,-10)",
        icon = "misc/dark-charm.png",
	cost = 145,
	usage = "amulet",
	position = "amulet"
	
})
table.insert(the_list, {
	eq_effect = { name = "herb_bag", {"effect", { apply_to = "hitpoints", increase_total = "1"}}, unpoison_effect2
	},
	neg_eq_effect = { name = "n_herb_bag", {"effect", { apply_to = "hitpoints", increase_total = "-1"}}, unpoison_neg_effect2
	},
        name = _ "Herb Bag",
        id = "herb_bag",
        tooltip = _ "amulets can have special effects",
        text = _ "This bag of herbs has an antidote to most venoms and poisons encountered in the area.  Bonus: Cures poison on self, +1 HP",
        image = "icons/herb-bag.png",
        icon = "items/flower4.png",
	cost = 75,
	usage = "amulet",
	position = "amulet"
	
})
table.insert(the_list, {
	eq_effect = { name = "ice_charm", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {fire = -50}}}} , {"effect", { apply_to = "hitpoints", increase_total = "1"}}},
	neg_eq_effect = { name = "n_ice_charm", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {fire = 50}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-1"}}},
        name = _ "Ice Charm",
        id = "ice_charm",
        tooltip = _ "amulets can have special effects",
        text = _ "This odd amulet is cold to the touch, absorbing heat.  Should come in handy against fire blasts. Bonus: +50 fire resistance",
        image = "icons/jewelry_necklace_amber.png~CS(-30,-20,40)",
        icon = "misc/charm.png",
	cost = 125,
	usage = "amulet",
	position = "amulet"
	
})
table.insert(the_list, {
	eq_effect = { name = "thunder_amulet", {"effect", { apply_to = "attack", range = "ranged", increase_attacks = 1}}},
	neg_eq_effect = { name = "n_thunder_amulet", {"effect", { apply_to = "attack", range = "ranged", increase_attacks = -1}}},
        name = _ "Thunder Amulet",
        id = "thunder_amulet",
        tooltip = _ "amulets can have special effects",
        text = _ "This amulet gives an extra ranged strike",
        image = "icons/necklace1.png~CS(-20,-30,40)",
        icon = "items/ankh-necklace.png~CS(20,-20,60)",
	cost = 155,
	usage = "amulet",
	position = "amulet"
	
})
table.insert(the_list, {
	eq_effect = { name = "holy_charm", {"effect", { apply_to = "attack", range = "melee", type = "blade", set_type = "arcane"}}},
	neg_eq_effect = { name = "n_holy_charm", {"effect", { apply_to = "attack", range = "melee", type = "arcane", set_type = "blade"}}},
        name = _ "Holy Charm",
        id = "holy_charm",
        tooltip = _ "amulets can have special effects",
        text = _ "This amulet makes blades have arcane damage type",
        image = "icons/ankh_necklace.png~GS()",
        icon = "items/ankh-necklace.png",
	cost = 105,
	usage = "all",
	position = "amulet"
	
})
--------- armor ---------------
table.insert(the_list, {
	eq_effect = { name = "elven_tunic", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -2, blade = -2, pierce = -2, arcane = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "elven_tunic", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 2, blade = 2, pierce = 2, arcane = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Elven Tunic",
        id = "elven_tunic",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "The elves are better weavers than the humans, dwarves, or orcs.  Their tunics are not the simple cotton of the men, nor the woven hair of the orcs, it is something superior, and try as they might, the other races have failed to reverse-engineer the elven fabric.  Bonus: +2 impact resistance, +2 blade resistance, +2 pierce resistance, +5 arcane resistance, +2 HP",
        image = "icons/tunic_elven.png",
        icon = "items/tunic.png",
	cost = 30,
	usage = "all",
	position = "torso"	
})
table.insert(the_list, {
	eq_effect = { name = "leather_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -5, blade = -5, pierce = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_leather_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 5, blade = 5, pierce = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Leather Armor",
        id = "leather_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "This is the most basic of combat gear, but it is well worth its minimal expense.  Bonus: +5 impact resistance, +5 blade resistance, +5 pierce resistance, +2 HP",
        image = "icons/armor_leather.png",
        icon = "items/armor-leather.png",
	cost = 35,
	usage = "light_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "scale_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -8, blade = -10, pierce = -8}}}} , {"effect", { apply_to = "hitpoints", increase_total = "3"}}},
	neg_eq_effect = { name = "n_scale_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 8, blade = 10, pierce = 8}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-3"}}},
        name = _ "Scale Armor",
        id = "scale_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "The leather cuirass has been fitted with thin, overlapping metal shingles. It is not chain-mail, but it is a cost-effective improvement over simple leather.   Bonus: +8 impact resistance, +10 blade resistance, +8 pierce resistance, +3 HP",
        image = "icons/cuirass_leather_studded.png",
        icon = "items/armor.png",
	cost = 55,
	usage = "light_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "chain_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -10, blade = -14, pierce = -8}}}} , {"effect", { apply_to = "hitpoints", increase_total = "4"}}},
	neg_eq_effect = { name = "n_chain_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 10, blade = 14, pierce = 8}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-4"}}},
        name = _ "Chainmail Tunic",
        id = "chain_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "A tunic of interlocking chainlinks.  It is effective against blade slashes, but less effective against piercing attacks.   Bonus: +10 impact resistance, +14 blade resistance, +8 pierce resistance, +4 HP",
        image = "icons/armor-chain.png",
        icon = "items/armor-chain.png",
	cost = 76,
	usage = "light_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "bronze_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -10, blade = -15, pierce = -10}}}} , {"effect", { apply_to = "hitpoints", increase_total = "5"}}},
	neg_eq_effect = { name = "n_bronze_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 10, blade = 15, pierce = 10}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-5"}}},
        name = _ "Bronze Armor",
        id = "bronze_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "Bronze is more easily produced and shaped than iron or steel.  Despite being made from the cheaper metal, this cuirass is better than leather or hide, and is frequently used by orcs.   Bonus: +10 impact resistance, +15 blade resistance, +10 pierce resistance, +5 HP",
        image = "icons/cuirass_muscled.png~CS(-5,0,-25)",
        icon = "items/armor-iron.png~CS(10,-30,-50)",
	cost = 85,
	usage = "heavy_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "iron_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -15, blade = -15, pierce = -15}}}} , {"effect", { apply_to = "hitpoints", increase_total = "8"}}},
	neg_eq_effect = { name = "n_iron_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 15, blade = 15, pierce = 15}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-8"}}},
        name = _ "Iron Armor",
        id = "iron_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "Sturdy iron has been formed into a protective cuirass.  This is not the best armor available, but it has a good balance between cost and effectiveness, and for that reason it is a favourite of brigands and orcish warriors.   Bonus: +15 impact resistance, +15 blade resistance, +15 pierce resistance, +8 HP",
        image = "icons/cuirass_muscled.png~CS(-5,-35,-10)",
        icon = "items/armor-iron.png",
	cost = 155,
	usage = "heavy_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "breastplate", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -20, blade = -15, pierce = -15}}}} , {"effect", { apply_to = "hitpoints", increase_total = "12"}}},
	neg_eq_effect = { name = "n_breastplate", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 20, blade = 15, pierce = 15}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-12"}}},
        name = _ "Breastplate",
        id = "breastplate",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "This is the best armor for those who need mobility.  It is expensive steel, and leaves plenty of weak-points, but offers good protection against a spear or axe to the chest.   Bonus: +20 impact resistance, +15 blade resistance, +15 pierce resistance, +15 HP",
        image = "icons/breastplate.png",
        icon = "items/breastplate.png",
	cost = 195,
	usage = "heavy_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "steel_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -20, blade = -25, pierce = -20}}}} , {"effect", { apply_to = "hitpoints", increase_total = "15"}}},
	neg_eq_effect = { name = "n_steel_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 20, blade = 25, pierce = 20}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-15"}}},
        name = _ "Steel Armor",
        id = "steel_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "This is the armor of professional fighters.  It is expensive, but offers good protection against all physical strikes.   Bonus: +20 impact resistance, +25 blade resistance, +20 pierce resistance, +11 HP",
        image = "icons/steel_armor.png",
        icon = "items/armor-iron.png~CS(10,15,20)",
	cost = 245,
	usage = "heavy_armor",
	position = "torso"	
	
})
table.insert(the_list, {
	eq_effect = { name = "aegis_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -40, blade = -65, pierce = -40}}}} , {"effect", { apply_to = "hitpoints", increase_total = "15"}}},
	neg_eq_effect = { name = "n_aegis_armor", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 40, blade = 65, pierce = 40}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-15"}}},
        name = _ "Aegis Armor",
        id = "aegis_armor",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "This armor bears a complicated crest of unfamiliar design.  The material of construction appears quite tough, yet it is very light.  Bonus: +40 impact resistance, +65 blade resistance, +40 pierce resistance, +11 HP",
        image = "icons/steel_armor.png~CS(25,25,30)",
        icon = "misc/aegis-armor.png",
	cost = 495,
	usage = "light_armor",
	position = "torso"	
	
})
--------------------------greaves------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "leather_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -4, pierce = -2}}}} , {"effect", { apply_to = "hitpoints", increase_total = "1"}}},
	neg_eq_effect = { name = "n_leather_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 4, pierce = 2}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-1"}}},
        name = _ "Leather Leggings",
        id = "leather_greaves",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "These simple leather coverings offer some small protection to a large and frequently targetted area of the body, without much hinderance, so almost anyone can use them.  Bonus: +4 blade resistance, +2 pierce resistance, +1 HP",
        image = "icons/greaves_leather.png",
        icon = "items/greaves-leather.png",
	cost = 21,
	usage = "all",
	position = "foot"	
	
})
table.insert(the_list, {
	eq_effect = { name = "serpent_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -2}}}} , {"effect", { apply_to = "movement_costs", replace = "no",{"movement_costs", {shallow_water = -1, swamp_water = -1}}}}, {"effect", { apply_to = "hitpoints", increase_total = "1"}} },
	neg_eq_effect = { name = "n_serpent_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 2}}}} ,  {"effect", { apply_to = "movement_costs", replace = "no",{"movement_costs", {shallow_water = 1, swamp_water = 1}}}}, {"effect", { apply_to = "hitpoints", increase_total = "-1"}} },
        name = _ "Sea-Serpent Skins",
        id = "serpent_greaves",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "Slick, scaled skin of sea-snakes have been fashioned into a sort of greaves that allow the wearer to pass walk through water without the usual drag.  Bonus: +2 blade resistance, -1 swamp and shallow water movement cost, +1 HP",
        image = "icons/greaves_serpent.png",
        icon = "items/greaves-serpent.png",
	cost = 125,
	usage = "all",
	position = "foot"	
	
})
table.insert(the_list, {
	eq_effect = { name = "brass_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = -3, blade = -6, pierce = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "2"}}},
	neg_eq_effect = { name = "n_brass_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {impact = 3, blade = 6, pierce = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-2"}}},
        name = _ "Bronze Greaves",
        id = "brass_greaves",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "Easily crafted and not particularly heavy, these leg-guards can be worn by anyone with some physical strength without being a hinderance.  Bonus: +3 impact, +6 blade, +5 pierce resistances; +2 HP",
        image = "icons/greaves_brass.png",
        icon = "items/greaves-brass.png",
	cost = 35,
	usage = "light_armor",
	position = "foot"	
	
})
table.insert(the_list, {
	eq_effect = { name = "steel_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -4, pierce = -2}}}} , {"effect", { apply_to = "hitpoints", increase_total = "1"}}},
	neg_eq_effect = { name = "n_steel_greaves", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 4, pierce = 2}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-1"}}},
        name = _ "Steel Greaves",
        id = "steel_greaves",
        tooltip = _ "armor offers broad protection to physical attacks",
        text = _ "The steel leg protection offered is substantial, but is does come at a price, so that only those capable of using heavy armor can use them.  Bonus: +8 impact, +10 blade, +8 pierce resistances; +5 HP",
        image = "icons/greaves.png",
        icon = "items/greaves-steel.png",
	cost = 80,
	usage = "heavy_armor",
	position = "foot"	
	
})
--------------------------boots------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "boot_cleats", {"effect", { apply_to = "movement_costs", replace = "no",{"movement_costs", {mountains = -1}}}} },
	neg_eq_effect = { name = "n_boot_cleats", {"effect", { apply_to = "movement_costs", replace = "no",{"movement_costs", {mountains = 1}}}} },
        name = _ "Boot Cleat",
        id = "boot_cleat",
        tooltip = _ "Footwear usually affects movement",
        text = _ "These cleats allow you to better keep your footing on steep terrain, you won't have to worry about the ice or pebbles so much.  Reduces mountains movement costs by 1.",
        image = "icons/circlet_winged.png",
        icon = "misc/boots.png~CS(20,10,30)",
	cost = 95,
	usage = "all",
	position = "foot"	
	
})
table.insert(the_list, {
	eq_effect = { name = "leather_boots", {"effect", { apply_to = "movement_costs", replace = "no",{"movement_costs", {forest = -1}}}} },
	neg_eq_effect = { name = "n_leather_boots", {"effect", { apply_to = "movement_costs", replace = "no",{"movement_costs", {forest = 1}}}} },
        name = _ "Fine Leather Boots",
        id = "leather_boots",
        tooltip = _ "Footwear usually affects movement",
        text = _ "These fine boots offer the same protection as your standard clodhopper, but they are much more flexible and light.  Reduces forest movement costs by 1.",
        image = "icons/boots_elven.png",
        icon = "misc/boots.png",
	cost = 125,
	usage = "all",
	position = "foot"	
	
})
----------------------------axes-------------------------------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "steel_axe", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "2"}} },
	neg_eq_effect = { name = "n_steel_axe", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "-2"}} },
        name = _ "Steel Edge",
        id = "steel_axe",
        tooltip = _ "Supplements for the axe attacks",
        text = _ "This axe blade is made with imported steel, it holds its edge much better than the cheap iron things most of you use.  Increases axe damage by 2",
        image = "attacks/axe.png~CS(-10,0,10)",
        icon = "items/axe.png",
	cost = 130,
	usage = "axe",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "ancient_axe", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "4"}}, {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = -15}}}}  },
	neg_eq_effect = { name = "n_ancient_axe", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "-4"}}, {"effect", { apply_to = "resistance", replace = "no",{"resistance", {arcane = 15}}}}  },
        name = _ "Ancient Edge",
        id = "ancient_axe",
        tooltip = _ "Supplements for the axe attacks",
        text = _ "This axe blade is made with some alloy of a forgotten technology.  Increases axe damage by 4, increase arcane defense 15 percent",
        image = "attacks/axe.png~CS(10,-30,20)",
        icon = "items/axe.png~CS(10,-30,20)",
	cost = 330,
	usage = "axe",
	position = "weapon"	
	
})


----------------------------sword-------------------------------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "steel_blade", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "2"}} },
	neg_eq_effect = { name = "n_steel_blade", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "-2"}} },
        name = _ "Steel Blade",
        id = "steel_blade",
        tooltip = _ "Supplements for the sword attacks",
        text = _ "This fine blade is made with imported steel, it holds its edge much better than the cheap iron things most of you use.  Increases sword damage by 2",
        image = "attacks/sword-steel.png",
        icon = "items/sword.png",
	cost = 130,
	usage = "sword",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "silver_sword", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "2"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_accuracy = "5"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_parry = "5"}} },
	neg_eq_effect = { name = "n_silver_sword", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "-2"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_accuracy = "-5"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_parry = "-5"}} },
        name = _ "Silver Sword",
        id = "silver_sword",
        tooltip = _ "Supplements for the sword attacks",
        text = _ "This blade surely isn't really made of silver, but it is very shiny.  It is also very sharp.  Increases damage by 2.  Increases accuracy and parry by 5 percent",
        image = "attacks/scimitar.png~GS()",
        icon = "items/sword3.png",
	cost = 200,
	usage = "sword",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "ice_gem", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "3"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_type = "cold"}} },
	neg_eq_effect = { name = "n_ice_gem", {"effect", { apply_to = "attack", range = "melee", type = "cold", increase_damage = "-3"}}, {"effect", { apply_to = "attack", range = "melee", type = "cold", set_type = "blade"}} },
        name = _ "Ice Inlay",
        id = "ice_gem",
        tooltip = _ "Supplements for the sword attacks",
        text = _ "This blue gem can be fit to the hilt of a sword, increasing damage by 3 and changes attack type to cold.",
        image = "icons/jewelry_necklace_amber.png~CS(-45,-5,80)",
        icon = "items/ball-blue.png",
	cost = 210,
	usage = "sword",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "ice_blade", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "7"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_type = "cold"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_icon="misc/ice_blade.png"}} },
	neg_eq_effect = { name = "n_ice_blade", {"effect", { apply_to = "attack", range = "melee", type = "cold", increase_damage = "-7"}}, {"effect", { apply_to = "attack", range = "melee", type = "cold", set_type = "blade"}}, {"effect", { apply_to = "attack", range = "melee", type = "cold", set_icon="attacks/sword-human.png"}} },
        name = _ "Ice Blade",
        id = "ice_blade",
        tooltip = _ "Supplements for the sword attacks",
        text = _ "This frosty blade is strangely cold, just seems to suck the heat out of whatever it touches.  Increases sword damage by 7, changes attack type to cold.",
        image = "misc/ice_blade.png",
        icon = "items/sword6.png",
	cost = 400,
	usage = "sword",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "revanche_blade", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "7"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_type = "fire"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_icon="attacks/sword-flaming.png"}} },
	neg_eq_effect = { name = "n_revanche_blade", {"effect", { apply_to = "attack", range = "melee", type = "fire", increase_damage = "-7"}}, {"effect", { apply_to = "attack", range = "melee", type = "fire", set_type = "blade"}}, {"effect", { apply_to = "attack", range = "melee", type = "fire", set_icon="attacks/sword-human.png"}} },
        name = _ "Revanche Blade",
        id = "revanche_blade",
        tooltip = _ "Supplements for the sword attacks",
        text = "_ This blade is a manifestation of the desire for revenge.  Increases sword damage by 7, changes attack type to fire.",
        image = "attacks/sword-flaming.png",
        icon = "items/flame-sword.png",
	cost = 400,
	usage = "sword",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "dark_blade", {"effect", { apply_to = "attack", range = "melee", type = "blade", increase_damage = "7"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_type = "arcane"}}, {"effect", { apply_to = "attack", range = "melee", type = "blade", set_icon="attacks/baneblade.png"}} },
	neg_eq_effect = { name = "n_dark_blade", {"effect", { apply_to = "attack", range = "melee", type = "arcane", increase_damage = "-7"}}, {"effect", { apply_to = "attack", range = "melee", type = "arcane", set_type = "blade"}}, {"effect", { apply_to = "attack", range = "melee", type = "arcane", set_icon="attacks/sword-human.png"}} },
        name = _ "Dark Blade",
        id = "dark_blade",
        tooltip = _ "Supplements for the sword attacks",
        text = _ "This sinister-looking blade is made from some dark material and does not really seem to be of this world.  Increases sword damage by 7, changes attack type to arcane.",
        image = "attacks/baneblade.png",
        icon = "items/sword-dark.png",
	cost = 400,
	usage = "sword",
	position = "weapon"	
	
})
----------------------------spears-------------------------------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "steel_spear", {"effect", { apply_to = "attack", name = "spear", increase_damage = "2"}} },
	neg_eq_effect = { name = "n_steel_spear", {"effect", { apply_to = "attack", name = "spear", increase_damage = "-2"}} },
        name = _ "Steelpoint Spear",
        id = "steel_spear",
        tooltip = _ "Supplements for the spear attacks",
        text = _ "These fine steel spearheads can deliver a more deadly punch than the brittle iron or stone points usually used.  Increases spear damage by 2",
        image = "attacks/pike.png",
        icon = "items/spear1.png",
	cost = 105,
	usage = "spear",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "royal_spear", {"effect", { apply_to = "attack", name = "spear", increase_damage = "3"}} },
	neg_eq_effect = { name = "n_royal_spear", {"effect", { apply_to = "attack", name = "spear", increase_damage = "-3"}} },
        name = _ "Royal Spear",
        id = "royal_spear",
        tooltip = _ "Supplements for the spear attacks",
        text = _ "A shiny, well-balanced pike.  Increases spear damage by 3",
        image = "attacks/pike.png~CS(-5,0,8)",
        icon = "items/spear3.png",
	cost = 215,
	usage = "spear",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "dragon_spear", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {fire = -5, cold = -5}}}} , {"effect", { apply_to = "attack", name = "spear", increase_damage = "4"}} },
	neg_eq_effect = { name = "n_dragon_spear", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {fire = 5, impact = 5}}}} , {"effect", { apply_to = "attack", name = "spear", increase_damage = "-4"}} },
        name = _ "Dragon Spear",
        id = "dragon_spear",
        tooltip = _ "Supplements for the spear attacks",
        text = _ "The spearhead is made of some sort of bone, and the shaft has a scale-like pattern which makes this odd spear seem fragile, but it is light and sturdy.  Increases spear damage by 4; increases fire and cold resistance by 5 percent.",
        image = "attacks/pike.png~CS(-20,10,-5)",
        icon = "items/spear4.png",
	cost = 365,
	usage = "spear",
	position = "weapon"	
	
})
----------------------------bows-------------------------------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "steel_arrows", {"effect", { apply_to = "attack", name = "bow", increase_damage = "2"}} },
	neg_eq_effect = { name = "n_steel_arrows", {"effect", { apply_to = "attack", name = "bow", increase_damage = "-2"}} },
        name = _ "Steel Arrows",
        id = "steel_arrows",
        tooltip = _ "Supplements for the bow attacks",
        text = _ "These fine steel arrowheads can deliver a more deadly punch than those brittle iron things you usually use.  Increases bow damage by 2",
        image = "attacks/bow-short-reinforced.png",
        icon = "items/bow.png",
	cost = 125,
	usage = "bow",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "silver_arrows", {"effect", { apply_to = "attack", name = "bow", increase_accuracy = "10"}} },
	neg_eq_effect = { name = "n_silver_arrows", {"effect", { apply_to = "attack", name = "bow", increase_accuracy = "-10"}} },
        name = _ "Silver Arrows",
        id = "silver_arrows",
        tooltip = _ "Supplements for the bow attacks",
        text = "These sleek silver arrows are perfectly balanced, much better than the usual crude things used by humans and orcs.  Increases bow accuracy by 10",
        image = "attacks/bow-short-reinforced.png~GS()",
        icon = "items/bow.png~CS(20,30,30)",
	cost = 160,
	usage = "bow",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "starburst_arrows", {"effect", { apply_to = "new_attack", name = "starburst", description = "starburst", range = "ranged", type = "arcane", damage = 13, number = 3}} },
	neg_eq_effect = { name = "n_starburst_arrows", {"effect", { apply_to = "remove_attacks", name = "starburst"}} },
        name = _ "Starburst Arrows",
        id = "starburst_arrows",
        tooltip = _ "Supplements for the bow attacks",
        text = _ "The soft metal of these arrowheads is impregnated with a shards of a very rare crystal, causing them to explode upon impact, with an otherworldly flame.  Grants a new arcane attack.",
        image = "attacks/bow-short-reinforced.png~BLIT(halo/elven/ice-halo1.png~CROP(0,0,47,49),11,9)",
        icon = "items/bow-crystal.png",
	cost = 255,
	usage = "bow",
	position = "weapon"	
	
})
-----------------------------daggers--------------------------------------------------------------
table.insert(the_list, {
	eq_effect = { name = "small_dagger", {"effect", { apply_to = "new_attack", name = "small_dagger", description = "small dagger", range = "melee", type = "blade", damage = 4, number = 3, icon = "attacks/dagger-curved.png"}} },
	neg_eq_effect = { name = "n_small_dagger", {"effect", { apply_to = "remove_attacks", name = "small_dagger"}} },
        name = _ "Small Dagger",
        id = "small_dagger",
        tooltip = _ "Weapon for anyone to use",
        text = _ "A small, but effective weapon that can be used by almost anyone with a free hand.  Grants a new blade attack.",
        image = "attacks/dagger-curved.png",
        icon = "items/dagger.png",
	cost = 25,
	usage = "all",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "orc_dagger", {"effect", { apply_to = "new_attack", name = "orc_dagger", description = "orcish dagger", range = "melee", type = "blade", damage = 6, number = 2, icon = "attacks/dagger-orcish.png"}} },
	neg_eq_effect = { name = "n_orc_dagger", {"effect", { apply_to = "remove_attacks", name = "orc_dagger"}} },
        name = _ "Orcish Dagger",
        id = "orc_dagger",
        tooltip = _ "Weapon for anyone to use",
        text = _ "A crude, but vicious weapon that can be used by almost anyone with a free hand.  Grants a new blade attack.",
        image = "attacks/dagger-orcish.png",
        icon = "items/dagger~CS(-10,0,-20).png",
	cost = 30,
	usage = "all",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "silver_dagger", {"effect", { apply_to = "new_attack", name = "silver_dagger", description = "small dagger", range = "melee", type = "blade", damage = 4, number = 4, icon = "attacks/dagger-human.png"}} },
	neg_eq_effect = { name = "n_silver_dagger", {"effect", { apply_to = "remove_attacks", name = "silver_dagger"}} },
        name = _ "Silver Dagger",
        id = "silver_dagger",
        tooltip = _ "Weapon for anyone to use",
        text = _ "A small, shiny dagger that seems to float through the air.  It can be used by almost anyone with a free hand.  Grants a new blade attack.",
        image = "attacks/dagger-human.png~CS(5,5,5)",
        icon = "items/silver_dagger.png",
	cost = 125,
	usage = "all",
	position = "weapon"	
	
})
table.insert(the_list, {
	eq_effect = { name = "poison_dagger", {"effect", { apply_to = "new_attack", name = "poison_dagger", description = "posion dagger", range = "melee", type = "blade", damage = 3, number = 2, icon = "attacks/dagger-undead.png",
							{"specials", {{"poison", {id="poison", name= _ "poison", 
							description= _ "This attack poisons living targets. Poisoned units lose 8 HP every turn until they are cured or are reduced to 1 HP. Poison can not, of itself, kill a unit."
							}}}}
									}} },
	neg_eq_effect = { name = "n_poison_dagger", {"effect", { apply_to = "remove_attacks", name = "poison_dagger"}} },
        name = _ "Poison Dagger",
        id = "poison_dagger",
        tooltip = _ "Weapon for anyone to use",
        text = _ "A small blade with a channel for poison to flow from a reserviour in the handle.  Grants a new blade attack, with poison special",
        image = "attacks/dagger-undead.png",
        icon = "items/poison_dagger.png",
	cost = 125,
	usage = "all",
	position = "weapon"	
	
})
-------------------------------for-dogs-----------------------------
table.insert(the_list, {
	eq_effect = { name = "leather_collar", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -10}}}} , {"effect", { apply_to = "hitpoints", increase_total = "4"}}},
	neg_eq_effect = { name = "n_leather_collar", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 10}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-4"}}},
        name = _ "Leather Collar",
        id = "leather_collar",
        tooltip = _ "collars can protect a canine's neck",
        text = _ "This collar gives some additional protection to the neck of a dog or wolf, without encumbering the animal.   Bonus: +10 blade resistance, +4 HP",
        image = "icons/collar.png",
        icon = "items/collar.png",
	cost = 24,
	usage = "dog",
	position = "neck"	
	
})
table.insert(the_list, {
	eq_effect = { name = "studded_collar", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = -15, impact = -5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "7"}}},
	neg_eq_effect = { name = "n_studded_collar", {"effect", { apply_to = "resistance", replace = "no",{"resistance", {blade = 15, impact = 5}}}} , {"effect", { apply_to = "hitpoints", increase_total = "-7"}}},
        name = _ "Studded Collar",
        id = "studded_collar",
        tooltip = _ "collars can protect a canine's neck",
        text = _ "This collar has metal studs in the leather, that gives more protection to the neck of a dog or wolf than leather alone, and still does not encumber the animal.   Bonus: +10 blade resistance, +7 HP",
        image = "icons/collar2.png",
        icon = "items/collar2.png",
	cost = 46,
	usage = "dog",
	position = "neck"	
	
})



-----------------------------------------------------------------------------------------------

-- to catalogue everything...  To Do.  Done?

for k,v in pairs(equipment_list.the_list) do
        if(equipment_list.list_by_name[v.name] ~= nil) then
                        error("duplicate names in equipment_list: " .. v.name)
        end
        equipment_list.list_by_name[v.name] = v
end
                                        
return equipment_list

